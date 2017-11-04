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
$ docker pull ros@sha256:7a5e2f36da37a41c84bba65bb309baf716a1f27447a0ce2eca7edcb100894c80
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `ros:indigo` - linux; amd64

```console
$ docker pull ros@sha256:101fabdba169f57537291a2ed5e5963ad1d06e5f0c437e845dc3d404a6654dd3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **270.0 MB (270038987 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:04351380b7abe608413f693b046ce722cfe26254c2ee1a6e46937929efe3915a`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 13 Sep 2017 23:26:20 GMT
ADD file:8f997234193c2f587ac17bb4a8db2657103d2924813edb281eec7ba9883a2806 in / 
# Wed, 13 Sep 2017 23:26:21 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 13 Sep 2017 23:26:21 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 23:26:22 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 13 Sep 2017 23:26:22 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 13 Sep 2017 23:26:23 GMT
CMD ["/bin/bash"]
# Sat, 04 Nov 2017 06:56:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 06:56:59 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 04 Nov 2017 06:57:00 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu trusty main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 04 Nov 2017 06:57:32 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 06:57:33 GMT
ENV LANG=C.UTF-8
# Sat, 04 Nov 2017 06:57:34 GMT
ENV LC_ALL=C.UTF-8
# Sat, 04 Nov 2017 06:57:44 GMT
RUN rosdep init     && rosdep update
# Sat, 04 Nov 2017 06:57:44 GMT
ENV ROS_DISTRO=indigo
# Sat, 04 Nov 2017 06:59:10 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-core=1.1.5-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 06:59:11 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Sat, 04 Nov 2017 06:59:11 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 04 Nov 2017 06:59:11 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 06:59:40 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-base=1.1.5-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:bae382666908fd87a3a3646d7eb7176fa42226027d3256cac38ee0b79bdb0491`  
		Last Modified: Wed, 13 Sep 2017 22:04:42 GMT  
		Size: 67.1 MB (67114903 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29ede3c02ff200fff7454ce59e1c3bb62f538847cefd5b8541e088ad22c42879`  
		Last Modified: Wed, 13 Sep 2017 23:27:09 GMT  
		Size: 72.6 KB (72648 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da4e69f33106a3131ce07d9ed4403593a7698be6dabd6cabd2c9c228599c8ce0`  
		Last Modified: Wed, 13 Sep 2017 23:27:09 GMT  
		Size: 364.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d43e5f5d27feb983909350fa3a008ebfb66436e172337cd543db358f5a01f1c`  
		Last Modified: Wed, 13 Sep 2017 23:27:09 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0de1abb17d6e07bcf1b68dc5c75acf0386405905ed735efe65a5235f29e756d`  
		Last Modified: Wed, 13 Sep 2017 23:27:09 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:179523842643e397252c3dbae32d4031598b7d0bb5f5776a90b9442fc29a602c`  
		Last Modified: Sat, 04 Nov 2017 07:56:01 GMT  
		Size: 16.5 MB (16499989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9af98a42d3dc9da9b7a845a36f1448610cf2f7a8570b4b98e7497ce51ac5dfc0`  
		Last Modified: Sat, 04 Nov 2017 07:55:47 GMT  
		Size: 13.1 KB (13082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee071ca7e9efe87b83f2da6239d51dc1df4f15cd3e869897d98faf0cfa88a9be`  
		Last Modified: Sat, 04 Nov 2017 07:55:44 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6cda969081fd561fb83ff7442a40fa48d4509cab2dc6daf112e0c9732c6c4b55`  
		Last Modified: Sat, 04 Nov 2017 07:56:06 GMT  
		Size: 31.7 MB (31683201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f08d4445bdc94b1285488233370b4c60ce248466c817d5e8c2687e58d5a9bf43`  
		Last Modified: Sat, 04 Nov 2017 07:55:45 GMT  
		Size: 766.6 KB (766561 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbb48138cc5735d97798996c8406fe02693c8ccbd075be61f182f05dd6515d5c`  
		Last Modified: Sat, 04 Nov 2017 07:56:37 GMT  
		Size: 149.9 MB (149910655 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d8cb359bddd8503d6ec2cba4c033de1c7fc5e2c55b0e657aa6f40e30345988c`  
		Last Modified: Sat, 04 Nov 2017 07:55:45 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94b19276b4fb85d6c71935e6f206a3067eab852a133d3afb582f3f192ef89a4f`  
		Last Modified: Sat, 04 Nov 2017 07:56:54 GMT  
		Size: 4.0 MB (3976151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:indigo-perception`

```console
$ docker pull ros@sha256:c2868d974bd3a019c1a8d6c385789d11d80ac3d2fdff29bb7ae04741ee33b2c7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `ros:indigo-perception` - linux; amd64

```console
$ docker pull ros@sha256:4bfc6dafe2ee68ef686719ca7f23ef5393707272c2991362b7635f89e760173c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **534.7 MB (534709582 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee72fe65eb219c1f6f4910579b0c650d3a6899ad1c044f68705994177040b1d4`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 13 Sep 2017 23:26:20 GMT
ADD file:8f997234193c2f587ac17bb4a8db2657103d2924813edb281eec7ba9883a2806 in / 
# Wed, 13 Sep 2017 23:26:21 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 13 Sep 2017 23:26:21 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 23:26:22 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 13 Sep 2017 23:26:22 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 13 Sep 2017 23:26:23 GMT
CMD ["/bin/bash"]
# Sat, 04 Nov 2017 06:56:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 06:56:59 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 04 Nov 2017 06:57:00 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu trusty main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 04 Nov 2017 06:57:32 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 06:57:33 GMT
ENV LANG=C.UTF-8
# Sat, 04 Nov 2017 06:57:34 GMT
ENV LC_ALL=C.UTF-8
# Sat, 04 Nov 2017 06:57:44 GMT
RUN rosdep init     && rosdep update
# Sat, 04 Nov 2017 06:57:44 GMT
ENV ROS_DISTRO=indigo
# Sat, 04 Nov 2017 06:59:10 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-core=1.1.5-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 06:59:11 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Sat, 04 Nov 2017 06:59:11 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 04 Nov 2017 06:59:11 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 06:59:40 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-base=1.1.5-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 07:03:57 GMT
RUN apt-get update && apt-get install -y     ros-indigo-perception=1.1.5-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:bae382666908fd87a3a3646d7eb7176fa42226027d3256cac38ee0b79bdb0491`  
		Last Modified: Wed, 13 Sep 2017 22:04:42 GMT  
		Size: 67.1 MB (67114903 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29ede3c02ff200fff7454ce59e1c3bb62f538847cefd5b8541e088ad22c42879`  
		Last Modified: Wed, 13 Sep 2017 23:27:09 GMT  
		Size: 72.6 KB (72648 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da4e69f33106a3131ce07d9ed4403593a7698be6dabd6cabd2c9c228599c8ce0`  
		Last Modified: Wed, 13 Sep 2017 23:27:09 GMT  
		Size: 364.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d43e5f5d27feb983909350fa3a008ebfb66436e172337cd543db358f5a01f1c`  
		Last Modified: Wed, 13 Sep 2017 23:27:09 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0de1abb17d6e07bcf1b68dc5c75acf0386405905ed735efe65a5235f29e756d`  
		Last Modified: Wed, 13 Sep 2017 23:27:09 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:179523842643e397252c3dbae32d4031598b7d0bb5f5776a90b9442fc29a602c`  
		Last Modified: Sat, 04 Nov 2017 07:56:01 GMT  
		Size: 16.5 MB (16499989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9af98a42d3dc9da9b7a845a36f1448610cf2f7a8570b4b98e7497ce51ac5dfc0`  
		Last Modified: Sat, 04 Nov 2017 07:55:47 GMT  
		Size: 13.1 KB (13082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee071ca7e9efe87b83f2da6239d51dc1df4f15cd3e869897d98faf0cfa88a9be`  
		Last Modified: Sat, 04 Nov 2017 07:55:44 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6cda969081fd561fb83ff7442a40fa48d4509cab2dc6daf112e0c9732c6c4b55`  
		Last Modified: Sat, 04 Nov 2017 07:56:06 GMT  
		Size: 31.7 MB (31683201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f08d4445bdc94b1285488233370b4c60ce248466c817d5e8c2687e58d5a9bf43`  
		Last Modified: Sat, 04 Nov 2017 07:55:45 GMT  
		Size: 766.6 KB (766561 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbb48138cc5735d97798996c8406fe02693c8ccbd075be61f182f05dd6515d5c`  
		Last Modified: Sat, 04 Nov 2017 07:56:37 GMT  
		Size: 149.9 MB (149910655 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d8cb359bddd8503d6ec2cba4c033de1c7fc5e2c55b0e657aa6f40e30345988c`  
		Last Modified: Sat, 04 Nov 2017 07:55:45 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94b19276b4fb85d6c71935e6f206a3067eab852a133d3afb582f3f192ef89a4f`  
		Last Modified: Sat, 04 Nov 2017 07:56:54 GMT  
		Size: 4.0 MB (3976151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab1f0c6ff63b10689aab22d47d72ff1b4dd6fd44e1138b87d1a08a4a5699e4a0`  
		Last Modified: Sat, 04 Nov 2017 07:59:22 GMT  
		Size: 264.7 MB (264670595 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:indigo-perception-trusty`

```console
$ docker pull ros@sha256:c2868d974bd3a019c1a8d6c385789d11d80ac3d2fdff29bb7ae04741ee33b2c7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `ros:indigo-perception-trusty` - linux; amd64

```console
$ docker pull ros@sha256:4bfc6dafe2ee68ef686719ca7f23ef5393707272c2991362b7635f89e760173c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **534.7 MB (534709582 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee72fe65eb219c1f6f4910579b0c650d3a6899ad1c044f68705994177040b1d4`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 13 Sep 2017 23:26:20 GMT
ADD file:8f997234193c2f587ac17bb4a8db2657103d2924813edb281eec7ba9883a2806 in / 
# Wed, 13 Sep 2017 23:26:21 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 13 Sep 2017 23:26:21 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 23:26:22 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 13 Sep 2017 23:26:22 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 13 Sep 2017 23:26:23 GMT
CMD ["/bin/bash"]
# Sat, 04 Nov 2017 06:56:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 06:56:59 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 04 Nov 2017 06:57:00 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu trusty main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 04 Nov 2017 06:57:32 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 06:57:33 GMT
ENV LANG=C.UTF-8
# Sat, 04 Nov 2017 06:57:34 GMT
ENV LC_ALL=C.UTF-8
# Sat, 04 Nov 2017 06:57:44 GMT
RUN rosdep init     && rosdep update
# Sat, 04 Nov 2017 06:57:44 GMT
ENV ROS_DISTRO=indigo
# Sat, 04 Nov 2017 06:59:10 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-core=1.1.5-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 06:59:11 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Sat, 04 Nov 2017 06:59:11 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 04 Nov 2017 06:59:11 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 06:59:40 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-base=1.1.5-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 07:03:57 GMT
RUN apt-get update && apt-get install -y     ros-indigo-perception=1.1.5-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:bae382666908fd87a3a3646d7eb7176fa42226027d3256cac38ee0b79bdb0491`  
		Last Modified: Wed, 13 Sep 2017 22:04:42 GMT  
		Size: 67.1 MB (67114903 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29ede3c02ff200fff7454ce59e1c3bb62f538847cefd5b8541e088ad22c42879`  
		Last Modified: Wed, 13 Sep 2017 23:27:09 GMT  
		Size: 72.6 KB (72648 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da4e69f33106a3131ce07d9ed4403593a7698be6dabd6cabd2c9c228599c8ce0`  
		Last Modified: Wed, 13 Sep 2017 23:27:09 GMT  
		Size: 364.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d43e5f5d27feb983909350fa3a008ebfb66436e172337cd543db358f5a01f1c`  
		Last Modified: Wed, 13 Sep 2017 23:27:09 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0de1abb17d6e07bcf1b68dc5c75acf0386405905ed735efe65a5235f29e756d`  
		Last Modified: Wed, 13 Sep 2017 23:27:09 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:179523842643e397252c3dbae32d4031598b7d0bb5f5776a90b9442fc29a602c`  
		Last Modified: Sat, 04 Nov 2017 07:56:01 GMT  
		Size: 16.5 MB (16499989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9af98a42d3dc9da9b7a845a36f1448610cf2f7a8570b4b98e7497ce51ac5dfc0`  
		Last Modified: Sat, 04 Nov 2017 07:55:47 GMT  
		Size: 13.1 KB (13082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee071ca7e9efe87b83f2da6239d51dc1df4f15cd3e869897d98faf0cfa88a9be`  
		Last Modified: Sat, 04 Nov 2017 07:55:44 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6cda969081fd561fb83ff7442a40fa48d4509cab2dc6daf112e0c9732c6c4b55`  
		Last Modified: Sat, 04 Nov 2017 07:56:06 GMT  
		Size: 31.7 MB (31683201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f08d4445bdc94b1285488233370b4c60ce248466c817d5e8c2687e58d5a9bf43`  
		Last Modified: Sat, 04 Nov 2017 07:55:45 GMT  
		Size: 766.6 KB (766561 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbb48138cc5735d97798996c8406fe02693c8ccbd075be61f182f05dd6515d5c`  
		Last Modified: Sat, 04 Nov 2017 07:56:37 GMT  
		Size: 149.9 MB (149910655 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d8cb359bddd8503d6ec2cba4c033de1c7fc5e2c55b0e657aa6f40e30345988c`  
		Last Modified: Sat, 04 Nov 2017 07:55:45 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94b19276b4fb85d6c71935e6f206a3067eab852a133d3afb582f3f192ef89a4f`  
		Last Modified: Sat, 04 Nov 2017 07:56:54 GMT  
		Size: 4.0 MB (3976151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab1f0c6ff63b10689aab22d47d72ff1b4dd6fd44e1138b87d1a08a4a5699e4a0`  
		Last Modified: Sat, 04 Nov 2017 07:59:22 GMT  
		Size: 264.7 MB (264670595 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:indigo-robot`

```console
$ docker pull ros@sha256:4c9009e339bc5d127b91d550df9f7dbb4c846f433f9ff643841356b233c72247
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `ros:indigo-robot` - linux; amd64

```console
$ docker pull ros@sha256:215eb75eedc3283c220a76e25f263a6d4f97a96a7bde5b2dfd4cb51fa2ac9d1b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **331.3 MB (331321856 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:efe0c15f1bc93e4199ad35abefd5e45d21167f1b6bcfd3a8c8871e6ec7387d40`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 13 Sep 2017 23:26:20 GMT
ADD file:8f997234193c2f587ac17bb4a8db2657103d2924813edb281eec7ba9883a2806 in / 
# Wed, 13 Sep 2017 23:26:21 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 13 Sep 2017 23:26:21 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 23:26:22 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 13 Sep 2017 23:26:22 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 13 Sep 2017 23:26:23 GMT
CMD ["/bin/bash"]
# Sat, 04 Nov 2017 06:56:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 06:56:59 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 04 Nov 2017 06:57:00 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu trusty main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 04 Nov 2017 06:57:32 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 06:57:33 GMT
ENV LANG=C.UTF-8
# Sat, 04 Nov 2017 06:57:34 GMT
ENV LC_ALL=C.UTF-8
# Sat, 04 Nov 2017 06:57:44 GMT
RUN rosdep init     && rosdep update
# Sat, 04 Nov 2017 06:57:44 GMT
ENV ROS_DISTRO=indigo
# Sat, 04 Nov 2017 06:59:10 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-core=1.1.5-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 06:59:11 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Sat, 04 Nov 2017 06:59:11 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 04 Nov 2017 06:59:11 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 06:59:40 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-base=1.1.5-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 07:00:38 GMT
RUN apt-get update && apt-get install -y     ros-indigo-robot=1.1.5-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:bae382666908fd87a3a3646d7eb7176fa42226027d3256cac38ee0b79bdb0491`  
		Last Modified: Wed, 13 Sep 2017 22:04:42 GMT  
		Size: 67.1 MB (67114903 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29ede3c02ff200fff7454ce59e1c3bb62f538847cefd5b8541e088ad22c42879`  
		Last Modified: Wed, 13 Sep 2017 23:27:09 GMT  
		Size: 72.6 KB (72648 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da4e69f33106a3131ce07d9ed4403593a7698be6dabd6cabd2c9c228599c8ce0`  
		Last Modified: Wed, 13 Sep 2017 23:27:09 GMT  
		Size: 364.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d43e5f5d27feb983909350fa3a008ebfb66436e172337cd543db358f5a01f1c`  
		Last Modified: Wed, 13 Sep 2017 23:27:09 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0de1abb17d6e07bcf1b68dc5c75acf0386405905ed735efe65a5235f29e756d`  
		Last Modified: Wed, 13 Sep 2017 23:27:09 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:179523842643e397252c3dbae32d4031598b7d0bb5f5776a90b9442fc29a602c`  
		Last Modified: Sat, 04 Nov 2017 07:56:01 GMT  
		Size: 16.5 MB (16499989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9af98a42d3dc9da9b7a845a36f1448610cf2f7a8570b4b98e7497ce51ac5dfc0`  
		Last Modified: Sat, 04 Nov 2017 07:55:47 GMT  
		Size: 13.1 KB (13082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee071ca7e9efe87b83f2da6239d51dc1df4f15cd3e869897d98faf0cfa88a9be`  
		Last Modified: Sat, 04 Nov 2017 07:55:44 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6cda969081fd561fb83ff7442a40fa48d4509cab2dc6daf112e0c9732c6c4b55`  
		Last Modified: Sat, 04 Nov 2017 07:56:06 GMT  
		Size: 31.7 MB (31683201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f08d4445bdc94b1285488233370b4c60ce248466c817d5e8c2687e58d5a9bf43`  
		Last Modified: Sat, 04 Nov 2017 07:55:45 GMT  
		Size: 766.6 KB (766561 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbb48138cc5735d97798996c8406fe02693c8ccbd075be61f182f05dd6515d5c`  
		Last Modified: Sat, 04 Nov 2017 07:56:37 GMT  
		Size: 149.9 MB (149910655 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d8cb359bddd8503d6ec2cba4c033de1c7fc5e2c55b0e657aa6f40e30345988c`  
		Last Modified: Sat, 04 Nov 2017 07:55:45 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94b19276b4fb85d6c71935e6f206a3067eab852a133d3afb582f3f192ef89a4f`  
		Last Modified: Sat, 04 Nov 2017 07:56:54 GMT  
		Size: 4.0 MB (3976151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffa658af3fa857221cb36c92228bf646bce473d060cbb40fe39464964a8711be`  
		Last Modified: Sat, 04 Nov 2017 07:57:39 GMT  
		Size: 61.3 MB (61282869 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:indigo-robot-trusty`

```console
$ docker pull ros@sha256:4c9009e339bc5d127b91d550df9f7dbb4c846f433f9ff643841356b233c72247
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `ros:indigo-robot-trusty` - linux; amd64

```console
$ docker pull ros@sha256:215eb75eedc3283c220a76e25f263a6d4f97a96a7bde5b2dfd4cb51fa2ac9d1b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **331.3 MB (331321856 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:efe0c15f1bc93e4199ad35abefd5e45d21167f1b6bcfd3a8c8871e6ec7387d40`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 13 Sep 2017 23:26:20 GMT
ADD file:8f997234193c2f587ac17bb4a8db2657103d2924813edb281eec7ba9883a2806 in / 
# Wed, 13 Sep 2017 23:26:21 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 13 Sep 2017 23:26:21 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 23:26:22 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 13 Sep 2017 23:26:22 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 13 Sep 2017 23:26:23 GMT
CMD ["/bin/bash"]
# Sat, 04 Nov 2017 06:56:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 06:56:59 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 04 Nov 2017 06:57:00 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu trusty main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 04 Nov 2017 06:57:32 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 06:57:33 GMT
ENV LANG=C.UTF-8
# Sat, 04 Nov 2017 06:57:34 GMT
ENV LC_ALL=C.UTF-8
# Sat, 04 Nov 2017 06:57:44 GMT
RUN rosdep init     && rosdep update
# Sat, 04 Nov 2017 06:57:44 GMT
ENV ROS_DISTRO=indigo
# Sat, 04 Nov 2017 06:59:10 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-core=1.1.5-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 06:59:11 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Sat, 04 Nov 2017 06:59:11 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 04 Nov 2017 06:59:11 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 06:59:40 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-base=1.1.5-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 07:00:38 GMT
RUN apt-get update && apt-get install -y     ros-indigo-robot=1.1.5-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:bae382666908fd87a3a3646d7eb7176fa42226027d3256cac38ee0b79bdb0491`  
		Last Modified: Wed, 13 Sep 2017 22:04:42 GMT  
		Size: 67.1 MB (67114903 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29ede3c02ff200fff7454ce59e1c3bb62f538847cefd5b8541e088ad22c42879`  
		Last Modified: Wed, 13 Sep 2017 23:27:09 GMT  
		Size: 72.6 KB (72648 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da4e69f33106a3131ce07d9ed4403593a7698be6dabd6cabd2c9c228599c8ce0`  
		Last Modified: Wed, 13 Sep 2017 23:27:09 GMT  
		Size: 364.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d43e5f5d27feb983909350fa3a008ebfb66436e172337cd543db358f5a01f1c`  
		Last Modified: Wed, 13 Sep 2017 23:27:09 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0de1abb17d6e07bcf1b68dc5c75acf0386405905ed735efe65a5235f29e756d`  
		Last Modified: Wed, 13 Sep 2017 23:27:09 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:179523842643e397252c3dbae32d4031598b7d0bb5f5776a90b9442fc29a602c`  
		Last Modified: Sat, 04 Nov 2017 07:56:01 GMT  
		Size: 16.5 MB (16499989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9af98a42d3dc9da9b7a845a36f1448610cf2f7a8570b4b98e7497ce51ac5dfc0`  
		Last Modified: Sat, 04 Nov 2017 07:55:47 GMT  
		Size: 13.1 KB (13082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee071ca7e9efe87b83f2da6239d51dc1df4f15cd3e869897d98faf0cfa88a9be`  
		Last Modified: Sat, 04 Nov 2017 07:55:44 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6cda969081fd561fb83ff7442a40fa48d4509cab2dc6daf112e0c9732c6c4b55`  
		Last Modified: Sat, 04 Nov 2017 07:56:06 GMT  
		Size: 31.7 MB (31683201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f08d4445bdc94b1285488233370b4c60ce248466c817d5e8c2687e58d5a9bf43`  
		Last Modified: Sat, 04 Nov 2017 07:55:45 GMT  
		Size: 766.6 KB (766561 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbb48138cc5735d97798996c8406fe02693c8ccbd075be61f182f05dd6515d5c`  
		Last Modified: Sat, 04 Nov 2017 07:56:37 GMT  
		Size: 149.9 MB (149910655 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d8cb359bddd8503d6ec2cba4c033de1c7fc5e2c55b0e657aa6f40e30345988c`  
		Last Modified: Sat, 04 Nov 2017 07:55:45 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94b19276b4fb85d6c71935e6f206a3067eab852a133d3afb582f3f192ef89a4f`  
		Last Modified: Sat, 04 Nov 2017 07:56:54 GMT  
		Size: 4.0 MB (3976151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffa658af3fa857221cb36c92228bf646bce473d060cbb40fe39464964a8711be`  
		Last Modified: Sat, 04 Nov 2017 07:57:39 GMT  
		Size: 61.3 MB (61282869 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:indigo-ros-base`

```console
$ docker pull ros@sha256:7a5e2f36da37a41c84bba65bb309baf716a1f27447a0ce2eca7edcb100894c80
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `ros:indigo-ros-base` - linux; amd64

```console
$ docker pull ros@sha256:101fabdba169f57537291a2ed5e5963ad1d06e5f0c437e845dc3d404a6654dd3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **270.0 MB (270038987 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:04351380b7abe608413f693b046ce722cfe26254c2ee1a6e46937929efe3915a`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 13 Sep 2017 23:26:20 GMT
ADD file:8f997234193c2f587ac17bb4a8db2657103d2924813edb281eec7ba9883a2806 in / 
# Wed, 13 Sep 2017 23:26:21 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 13 Sep 2017 23:26:21 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 23:26:22 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 13 Sep 2017 23:26:22 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 13 Sep 2017 23:26:23 GMT
CMD ["/bin/bash"]
# Sat, 04 Nov 2017 06:56:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 06:56:59 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 04 Nov 2017 06:57:00 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu trusty main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 04 Nov 2017 06:57:32 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 06:57:33 GMT
ENV LANG=C.UTF-8
# Sat, 04 Nov 2017 06:57:34 GMT
ENV LC_ALL=C.UTF-8
# Sat, 04 Nov 2017 06:57:44 GMT
RUN rosdep init     && rosdep update
# Sat, 04 Nov 2017 06:57:44 GMT
ENV ROS_DISTRO=indigo
# Sat, 04 Nov 2017 06:59:10 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-core=1.1.5-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 06:59:11 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Sat, 04 Nov 2017 06:59:11 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 04 Nov 2017 06:59:11 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 06:59:40 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-base=1.1.5-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:bae382666908fd87a3a3646d7eb7176fa42226027d3256cac38ee0b79bdb0491`  
		Last Modified: Wed, 13 Sep 2017 22:04:42 GMT  
		Size: 67.1 MB (67114903 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29ede3c02ff200fff7454ce59e1c3bb62f538847cefd5b8541e088ad22c42879`  
		Last Modified: Wed, 13 Sep 2017 23:27:09 GMT  
		Size: 72.6 KB (72648 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da4e69f33106a3131ce07d9ed4403593a7698be6dabd6cabd2c9c228599c8ce0`  
		Last Modified: Wed, 13 Sep 2017 23:27:09 GMT  
		Size: 364.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d43e5f5d27feb983909350fa3a008ebfb66436e172337cd543db358f5a01f1c`  
		Last Modified: Wed, 13 Sep 2017 23:27:09 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0de1abb17d6e07bcf1b68dc5c75acf0386405905ed735efe65a5235f29e756d`  
		Last Modified: Wed, 13 Sep 2017 23:27:09 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:179523842643e397252c3dbae32d4031598b7d0bb5f5776a90b9442fc29a602c`  
		Last Modified: Sat, 04 Nov 2017 07:56:01 GMT  
		Size: 16.5 MB (16499989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9af98a42d3dc9da9b7a845a36f1448610cf2f7a8570b4b98e7497ce51ac5dfc0`  
		Last Modified: Sat, 04 Nov 2017 07:55:47 GMT  
		Size: 13.1 KB (13082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee071ca7e9efe87b83f2da6239d51dc1df4f15cd3e869897d98faf0cfa88a9be`  
		Last Modified: Sat, 04 Nov 2017 07:55:44 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6cda969081fd561fb83ff7442a40fa48d4509cab2dc6daf112e0c9732c6c4b55`  
		Last Modified: Sat, 04 Nov 2017 07:56:06 GMT  
		Size: 31.7 MB (31683201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f08d4445bdc94b1285488233370b4c60ce248466c817d5e8c2687e58d5a9bf43`  
		Last Modified: Sat, 04 Nov 2017 07:55:45 GMT  
		Size: 766.6 KB (766561 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbb48138cc5735d97798996c8406fe02693c8ccbd075be61f182f05dd6515d5c`  
		Last Modified: Sat, 04 Nov 2017 07:56:37 GMT  
		Size: 149.9 MB (149910655 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d8cb359bddd8503d6ec2cba4c033de1c7fc5e2c55b0e657aa6f40e30345988c`  
		Last Modified: Sat, 04 Nov 2017 07:55:45 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94b19276b4fb85d6c71935e6f206a3067eab852a133d3afb582f3f192ef89a4f`  
		Last Modified: Sat, 04 Nov 2017 07:56:54 GMT  
		Size: 4.0 MB (3976151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:indigo-ros-base-trusty`

```console
$ docker pull ros@sha256:7a5e2f36da37a41c84bba65bb309baf716a1f27447a0ce2eca7edcb100894c80
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `ros:indigo-ros-base-trusty` - linux; amd64

```console
$ docker pull ros@sha256:101fabdba169f57537291a2ed5e5963ad1d06e5f0c437e845dc3d404a6654dd3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **270.0 MB (270038987 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:04351380b7abe608413f693b046ce722cfe26254c2ee1a6e46937929efe3915a`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 13 Sep 2017 23:26:20 GMT
ADD file:8f997234193c2f587ac17bb4a8db2657103d2924813edb281eec7ba9883a2806 in / 
# Wed, 13 Sep 2017 23:26:21 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 13 Sep 2017 23:26:21 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 23:26:22 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 13 Sep 2017 23:26:22 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 13 Sep 2017 23:26:23 GMT
CMD ["/bin/bash"]
# Sat, 04 Nov 2017 06:56:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 06:56:59 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 04 Nov 2017 06:57:00 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu trusty main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 04 Nov 2017 06:57:32 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 06:57:33 GMT
ENV LANG=C.UTF-8
# Sat, 04 Nov 2017 06:57:34 GMT
ENV LC_ALL=C.UTF-8
# Sat, 04 Nov 2017 06:57:44 GMT
RUN rosdep init     && rosdep update
# Sat, 04 Nov 2017 06:57:44 GMT
ENV ROS_DISTRO=indigo
# Sat, 04 Nov 2017 06:59:10 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-core=1.1.5-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 06:59:11 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Sat, 04 Nov 2017 06:59:11 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 04 Nov 2017 06:59:11 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 06:59:40 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-base=1.1.5-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:bae382666908fd87a3a3646d7eb7176fa42226027d3256cac38ee0b79bdb0491`  
		Last Modified: Wed, 13 Sep 2017 22:04:42 GMT  
		Size: 67.1 MB (67114903 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29ede3c02ff200fff7454ce59e1c3bb62f538847cefd5b8541e088ad22c42879`  
		Last Modified: Wed, 13 Sep 2017 23:27:09 GMT  
		Size: 72.6 KB (72648 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da4e69f33106a3131ce07d9ed4403593a7698be6dabd6cabd2c9c228599c8ce0`  
		Last Modified: Wed, 13 Sep 2017 23:27:09 GMT  
		Size: 364.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d43e5f5d27feb983909350fa3a008ebfb66436e172337cd543db358f5a01f1c`  
		Last Modified: Wed, 13 Sep 2017 23:27:09 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0de1abb17d6e07bcf1b68dc5c75acf0386405905ed735efe65a5235f29e756d`  
		Last Modified: Wed, 13 Sep 2017 23:27:09 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:179523842643e397252c3dbae32d4031598b7d0bb5f5776a90b9442fc29a602c`  
		Last Modified: Sat, 04 Nov 2017 07:56:01 GMT  
		Size: 16.5 MB (16499989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9af98a42d3dc9da9b7a845a36f1448610cf2f7a8570b4b98e7497ce51ac5dfc0`  
		Last Modified: Sat, 04 Nov 2017 07:55:47 GMT  
		Size: 13.1 KB (13082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee071ca7e9efe87b83f2da6239d51dc1df4f15cd3e869897d98faf0cfa88a9be`  
		Last Modified: Sat, 04 Nov 2017 07:55:44 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6cda969081fd561fb83ff7442a40fa48d4509cab2dc6daf112e0c9732c6c4b55`  
		Last Modified: Sat, 04 Nov 2017 07:56:06 GMT  
		Size: 31.7 MB (31683201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f08d4445bdc94b1285488233370b4c60ce248466c817d5e8c2687e58d5a9bf43`  
		Last Modified: Sat, 04 Nov 2017 07:55:45 GMT  
		Size: 766.6 KB (766561 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbb48138cc5735d97798996c8406fe02693c8ccbd075be61f182f05dd6515d5c`  
		Last Modified: Sat, 04 Nov 2017 07:56:37 GMT  
		Size: 149.9 MB (149910655 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d8cb359bddd8503d6ec2cba4c033de1c7fc5e2c55b0e657aa6f40e30345988c`  
		Last Modified: Sat, 04 Nov 2017 07:55:45 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94b19276b4fb85d6c71935e6f206a3067eab852a133d3afb582f3f192ef89a4f`  
		Last Modified: Sat, 04 Nov 2017 07:56:54 GMT  
		Size: 4.0 MB (3976151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:indigo-ros-core`

```console
$ docker pull ros@sha256:66f29e2423f8a23460f5f1697440ed05cd90864d98fc4e30eef38876a6927ccf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `ros:indigo-ros-core` - linux; amd64

```console
$ docker pull ros@sha256:8f5e0c03e357046d4998c1a2bd21896faffbfdbeb2fe9a108f2c91f94c7cb059
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **266.1 MB (266062836 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7ba8f128994d6f99c9fabbf3636bff5accace01900e4be8a805ea2264d8f6df7`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 13 Sep 2017 23:26:20 GMT
ADD file:8f997234193c2f587ac17bb4a8db2657103d2924813edb281eec7ba9883a2806 in / 
# Wed, 13 Sep 2017 23:26:21 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 13 Sep 2017 23:26:21 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 23:26:22 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 13 Sep 2017 23:26:22 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 13 Sep 2017 23:26:23 GMT
CMD ["/bin/bash"]
# Sat, 04 Nov 2017 06:56:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 06:56:59 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 04 Nov 2017 06:57:00 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu trusty main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 04 Nov 2017 06:57:32 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 06:57:33 GMT
ENV LANG=C.UTF-8
# Sat, 04 Nov 2017 06:57:34 GMT
ENV LC_ALL=C.UTF-8
# Sat, 04 Nov 2017 06:57:44 GMT
RUN rosdep init     && rosdep update
# Sat, 04 Nov 2017 06:57:44 GMT
ENV ROS_DISTRO=indigo
# Sat, 04 Nov 2017 06:59:10 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-core=1.1.5-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 06:59:11 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Sat, 04 Nov 2017 06:59:11 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 04 Nov 2017 06:59:11 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:bae382666908fd87a3a3646d7eb7176fa42226027d3256cac38ee0b79bdb0491`  
		Last Modified: Wed, 13 Sep 2017 22:04:42 GMT  
		Size: 67.1 MB (67114903 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29ede3c02ff200fff7454ce59e1c3bb62f538847cefd5b8541e088ad22c42879`  
		Last Modified: Wed, 13 Sep 2017 23:27:09 GMT  
		Size: 72.6 KB (72648 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da4e69f33106a3131ce07d9ed4403593a7698be6dabd6cabd2c9c228599c8ce0`  
		Last Modified: Wed, 13 Sep 2017 23:27:09 GMT  
		Size: 364.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d43e5f5d27feb983909350fa3a008ebfb66436e172337cd543db358f5a01f1c`  
		Last Modified: Wed, 13 Sep 2017 23:27:09 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0de1abb17d6e07bcf1b68dc5c75acf0386405905ed735efe65a5235f29e756d`  
		Last Modified: Wed, 13 Sep 2017 23:27:09 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:179523842643e397252c3dbae32d4031598b7d0bb5f5776a90b9442fc29a602c`  
		Last Modified: Sat, 04 Nov 2017 07:56:01 GMT  
		Size: 16.5 MB (16499989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9af98a42d3dc9da9b7a845a36f1448610cf2f7a8570b4b98e7497ce51ac5dfc0`  
		Last Modified: Sat, 04 Nov 2017 07:55:47 GMT  
		Size: 13.1 KB (13082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee071ca7e9efe87b83f2da6239d51dc1df4f15cd3e869897d98faf0cfa88a9be`  
		Last Modified: Sat, 04 Nov 2017 07:55:44 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6cda969081fd561fb83ff7442a40fa48d4509cab2dc6daf112e0c9732c6c4b55`  
		Last Modified: Sat, 04 Nov 2017 07:56:06 GMT  
		Size: 31.7 MB (31683201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f08d4445bdc94b1285488233370b4c60ce248466c817d5e8c2687e58d5a9bf43`  
		Last Modified: Sat, 04 Nov 2017 07:55:45 GMT  
		Size: 766.6 KB (766561 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbb48138cc5735d97798996c8406fe02693c8ccbd075be61f182f05dd6515d5c`  
		Last Modified: Sat, 04 Nov 2017 07:56:37 GMT  
		Size: 149.9 MB (149910655 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d8cb359bddd8503d6ec2cba4c033de1c7fc5e2c55b0e657aa6f40e30345988c`  
		Last Modified: Sat, 04 Nov 2017 07:55:45 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:indigo-ros-core-trusty`

```console
$ docker pull ros@sha256:66f29e2423f8a23460f5f1697440ed05cd90864d98fc4e30eef38876a6927ccf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `ros:indigo-ros-core-trusty` - linux; amd64

```console
$ docker pull ros@sha256:8f5e0c03e357046d4998c1a2bd21896faffbfdbeb2fe9a108f2c91f94c7cb059
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **266.1 MB (266062836 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7ba8f128994d6f99c9fabbf3636bff5accace01900e4be8a805ea2264d8f6df7`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 13 Sep 2017 23:26:20 GMT
ADD file:8f997234193c2f587ac17bb4a8db2657103d2924813edb281eec7ba9883a2806 in / 
# Wed, 13 Sep 2017 23:26:21 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 13 Sep 2017 23:26:21 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 23:26:22 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 13 Sep 2017 23:26:22 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 13 Sep 2017 23:26:23 GMT
CMD ["/bin/bash"]
# Sat, 04 Nov 2017 06:56:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 06:56:59 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 04 Nov 2017 06:57:00 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu trusty main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 04 Nov 2017 06:57:32 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 06:57:33 GMT
ENV LANG=C.UTF-8
# Sat, 04 Nov 2017 06:57:34 GMT
ENV LC_ALL=C.UTF-8
# Sat, 04 Nov 2017 06:57:44 GMT
RUN rosdep init     && rosdep update
# Sat, 04 Nov 2017 06:57:44 GMT
ENV ROS_DISTRO=indigo
# Sat, 04 Nov 2017 06:59:10 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-core=1.1.5-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 06:59:11 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Sat, 04 Nov 2017 06:59:11 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 04 Nov 2017 06:59:11 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:bae382666908fd87a3a3646d7eb7176fa42226027d3256cac38ee0b79bdb0491`  
		Last Modified: Wed, 13 Sep 2017 22:04:42 GMT  
		Size: 67.1 MB (67114903 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29ede3c02ff200fff7454ce59e1c3bb62f538847cefd5b8541e088ad22c42879`  
		Last Modified: Wed, 13 Sep 2017 23:27:09 GMT  
		Size: 72.6 KB (72648 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da4e69f33106a3131ce07d9ed4403593a7698be6dabd6cabd2c9c228599c8ce0`  
		Last Modified: Wed, 13 Sep 2017 23:27:09 GMT  
		Size: 364.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d43e5f5d27feb983909350fa3a008ebfb66436e172337cd543db358f5a01f1c`  
		Last Modified: Wed, 13 Sep 2017 23:27:09 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0de1abb17d6e07bcf1b68dc5c75acf0386405905ed735efe65a5235f29e756d`  
		Last Modified: Wed, 13 Sep 2017 23:27:09 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:179523842643e397252c3dbae32d4031598b7d0bb5f5776a90b9442fc29a602c`  
		Last Modified: Sat, 04 Nov 2017 07:56:01 GMT  
		Size: 16.5 MB (16499989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9af98a42d3dc9da9b7a845a36f1448610cf2f7a8570b4b98e7497ce51ac5dfc0`  
		Last Modified: Sat, 04 Nov 2017 07:55:47 GMT  
		Size: 13.1 KB (13082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee071ca7e9efe87b83f2da6239d51dc1df4f15cd3e869897d98faf0cfa88a9be`  
		Last Modified: Sat, 04 Nov 2017 07:55:44 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6cda969081fd561fb83ff7442a40fa48d4509cab2dc6daf112e0c9732c6c4b55`  
		Last Modified: Sat, 04 Nov 2017 07:56:06 GMT  
		Size: 31.7 MB (31683201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f08d4445bdc94b1285488233370b4c60ce248466c817d5e8c2687e58d5a9bf43`  
		Last Modified: Sat, 04 Nov 2017 07:55:45 GMT  
		Size: 766.6 KB (766561 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbb48138cc5735d97798996c8406fe02693c8ccbd075be61f182f05dd6515d5c`  
		Last Modified: Sat, 04 Nov 2017 07:56:37 GMT  
		Size: 149.9 MB (149910655 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d8cb359bddd8503d6ec2cba4c033de1c7fc5e2c55b0e657aa6f40e30345988c`  
		Last Modified: Sat, 04 Nov 2017 07:55:45 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:jade`

```console
$ docker pull ros@sha256:0049bc4bd08d2d10516584ebede25fc9ffa5b6002693765afacce7be740a0db3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `ros:jade` - linux; amd64

```console
$ docker pull ros@sha256:4c6766a6d3e94795d5a3052026a67281083d4c6031d05d43d4ed78a8ec11d278
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **270.2 MB (270194648 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dd974ec37997c28ad9ab80b4b0b834b932d9c0053b68b6b49abfb2a09c3eeb87`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 13 Sep 2017 23:26:20 GMT
ADD file:8f997234193c2f587ac17bb4a8db2657103d2924813edb281eec7ba9883a2806 in / 
# Wed, 13 Sep 2017 23:26:21 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 13 Sep 2017 23:26:21 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 23:26:22 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 13 Sep 2017 23:26:22 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 13 Sep 2017 23:26:23 GMT
CMD ["/bin/bash"]
# Sat, 04 Nov 2017 06:56:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 06:56:59 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 04 Nov 2017 06:57:00 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu trusty main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 04 Nov 2017 06:57:32 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 06:57:33 GMT
ENV LANG=C.UTF-8
# Sat, 04 Nov 2017 06:57:34 GMT
ENV LC_ALL=C.UTF-8
# Sat, 04 Nov 2017 06:57:44 GMT
RUN rosdep init     && rosdep update
# Sat, 04 Nov 2017 07:04:35 GMT
ENV ROS_DISTRO=jade
# Sat, 04 Nov 2017 07:06:15 GMT
RUN apt-get update && apt-get install -y     ros-jade-ros-core=1.2.1-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 07:06:16 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Sat, 04 Nov 2017 07:06:16 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 04 Nov 2017 07:06:16 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 07:06:49 GMT
RUN apt-get update && apt-get install -y     ros-jade-ros-base=1.2.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:bae382666908fd87a3a3646d7eb7176fa42226027d3256cac38ee0b79bdb0491`  
		Last Modified: Wed, 13 Sep 2017 22:04:42 GMT  
		Size: 67.1 MB (67114903 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29ede3c02ff200fff7454ce59e1c3bb62f538847cefd5b8541e088ad22c42879`  
		Last Modified: Wed, 13 Sep 2017 23:27:09 GMT  
		Size: 72.6 KB (72648 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da4e69f33106a3131ce07d9ed4403593a7698be6dabd6cabd2c9c228599c8ce0`  
		Last Modified: Wed, 13 Sep 2017 23:27:09 GMT  
		Size: 364.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d43e5f5d27feb983909350fa3a008ebfb66436e172337cd543db358f5a01f1c`  
		Last Modified: Wed, 13 Sep 2017 23:27:09 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0de1abb17d6e07bcf1b68dc5c75acf0386405905ed735efe65a5235f29e756d`  
		Last Modified: Wed, 13 Sep 2017 23:27:09 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:179523842643e397252c3dbae32d4031598b7d0bb5f5776a90b9442fc29a602c`  
		Last Modified: Sat, 04 Nov 2017 07:56:01 GMT  
		Size: 16.5 MB (16499989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9af98a42d3dc9da9b7a845a36f1448610cf2f7a8570b4b98e7497ce51ac5dfc0`  
		Last Modified: Sat, 04 Nov 2017 07:55:47 GMT  
		Size: 13.1 KB (13082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee071ca7e9efe87b83f2da6239d51dc1df4f15cd3e869897d98faf0cfa88a9be`  
		Last Modified: Sat, 04 Nov 2017 07:55:44 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6cda969081fd561fb83ff7442a40fa48d4509cab2dc6daf112e0c9732c6c4b55`  
		Last Modified: Sat, 04 Nov 2017 07:56:06 GMT  
		Size: 31.7 MB (31683201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f08d4445bdc94b1285488233370b4c60ce248466c817d5e8c2687e58d5a9bf43`  
		Last Modified: Sat, 04 Nov 2017 07:55:45 GMT  
		Size: 766.6 KB (766561 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db6f04407dc92b31f745e30b84d4fe53ad7c3dba9b2b1dd50fa1c0959b830f0f`  
		Last Modified: Sat, 04 Nov 2017 08:00:32 GMT  
		Size: 150.0 MB (150046304 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02990601040b876a238e9283e91e118c9d28f599f767a97bab3d5e6e149189ae`  
		Last Modified: Sat, 04 Nov 2017 07:59:39 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e71b0aa2a7d582c0e87382e95069667e256efc0295286c0608a79a2a861a281`  
		Last Modified: Sat, 04 Nov 2017 08:00:56 GMT  
		Size: 4.0 MB (3996163 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:jade-perception`

```console
$ docker pull ros@sha256:b5494071eac62d9c516ee77b4c28b9cd8abd781ef25b56d2bf9100cbe9b7bd8d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `ros:jade-perception` - linux; amd64

```console
$ docker pull ros@sha256:924c51154e99750ce7d8c3e0aeb89858ebe6d09ca3a8ef5638fd8c3ab790ec68
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **533.7 MB (533682625 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:61627f7601704db643eba5e93db2df16e4a19374d9f34779fa9576cc35fe63b7`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 13 Sep 2017 23:26:20 GMT
ADD file:8f997234193c2f587ac17bb4a8db2657103d2924813edb281eec7ba9883a2806 in / 
# Wed, 13 Sep 2017 23:26:21 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 13 Sep 2017 23:26:21 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 23:26:22 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 13 Sep 2017 23:26:22 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 13 Sep 2017 23:26:23 GMT
CMD ["/bin/bash"]
# Sat, 04 Nov 2017 06:56:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 06:56:59 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 04 Nov 2017 06:57:00 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu trusty main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 04 Nov 2017 06:57:32 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 06:57:33 GMT
ENV LANG=C.UTF-8
# Sat, 04 Nov 2017 06:57:34 GMT
ENV LC_ALL=C.UTF-8
# Sat, 04 Nov 2017 06:57:44 GMT
RUN rosdep init     && rosdep update
# Sat, 04 Nov 2017 07:04:35 GMT
ENV ROS_DISTRO=jade
# Sat, 04 Nov 2017 07:06:15 GMT
RUN apt-get update && apt-get install -y     ros-jade-ros-core=1.2.1-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 07:06:16 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Sat, 04 Nov 2017 07:06:16 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 04 Nov 2017 07:06:16 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 07:06:49 GMT
RUN apt-get update && apt-get install -y     ros-jade-ros-base=1.2.1-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 07:10:55 GMT
RUN apt-get update && apt-get install -y     ros-jade-perception=1.2.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:bae382666908fd87a3a3646d7eb7176fa42226027d3256cac38ee0b79bdb0491`  
		Last Modified: Wed, 13 Sep 2017 22:04:42 GMT  
		Size: 67.1 MB (67114903 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29ede3c02ff200fff7454ce59e1c3bb62f538847cefd5b8541e088ad22c42879`  
		Last Modified: Wed, 13 Sep 2017 23:27:09 GMT  
		Size: 72.6 KB (72648 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da4e69f33106a3131ce07d9ed4403593a7698be6dabd6cabd2c9c228599c8ce0`  
		Last Modified: Wed, 13 Sep 2017 23:27:09 GMT  
		Size: 364.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d43e5f5d27feb983909350fa3a008ebfb66436e172337cd543db358f5a01f1c`  
		Last Modified: Wed, 13 Sep 2017 23:27:09 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0de1abb17d6e07bcf1b68dc5c75acf0386405905ed735efe65a5235f29e756d`  
		Last Modified: Wed, 13 Sep 2017 23:27:09 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:179523842643e397252c3dbae32d4031598b7d0bb5f5776a90b9442fc29a602c`  
		Last Modified: Sat, 04 Nov 2017 07:56:01 GMT  
		Size: 16.5 MB (16499989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9af98a42d3dc9da9b7a845a36f1448610cf2f7a8570b4b98e7497ce51ac5dfc0`  
		Last Modified: Sat, 04 Nov 2017 07:55:47 GMT  
		Size: 13.1 KB (13082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee071ca7e9efe87b83f2da6239d51dc1df4f15cd3e869897d98faf0cfa88a9be`  
		Last Modified: Sat, 04 Nov 2017 07:55:44 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6cda969081fd561fb83ff7442a40fa48d4509cab2dc6daf112e0c9732c6c4b55`  
		Last Modified: Sat, 04 Nov 2017 07:56:06 GMT  
		Size: 31.7 MB (31683201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f08d4445bdc94b1285488233370b4c60ce248466c817d5e8c2687e58d5a9bf43`  
		Last Modified: Sat, 04 Nov 2017 07:55:45 GMT  
		Size: 766.6 KB (766561 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db6f04407dc92b31f745e30b84d4fe53ad7c3dba9b2b1dd50fa1c0959b830f0f`  
		Last Modified: Sat, 04 Nov 2017 08:00:32 GMT  
		Size: 150.0 MB (150046304 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02990601040b876a238e9283e91e118c9d28f599f767a97bab3d5e6e149189ae`  
		Last Modified: Sat, 04 Nov 2017 07:59:39 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e71b0aa2a7d582c0e87382e95069667e256efc0295286c0608a79a2a861a281`  
		Last Modified: Sat, 04 Nov 2017 08:00:56 GMT  
		Size: 4.0 MB (3996163 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcbd081e61ecbb6615451370cb4986896045f379e52f88cae5135c33fe6fda6d`  
		Last Modified: Sat, 04 Nov 2017 08:03:24 GMT  
		Size: 263.5 MB (263487977 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:jade-perception-trusty`

```console
$ docker pull ros@sha256:b5494071eac62d9c516ee77b4c28b9cd8abd781ef25b56d2bf9100cbe9b7bd8d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `ros:jade-perception-trusty` - linux; amd64

```console
$ docker pull ros@sha256:924c51154e99750ce7d8c3e0aeb89858ebe6d09ca3a8ef5638fd8c3ab790ec68
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **533.7 MB (533682625 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:61627f7601704db643eba5e93db2df16e4a19374d9f34779fa9576cc35fe63b7`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 13 Sep 2017 23:26:20 GMT
ADD file:8f997234193c2f587ac17bb4a8db2657103d2924813edb281eec7ba9883a2806 in / 
# Wed, 13 Sep 2017 23:26:21 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 13 Sep 2017 23:26:21 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 23:26:22 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 13 Sep 2017 23:26:22 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 13 Sep 2017 23:26:23 GMT
CMD ["/bin/bash"]
# Sat, 04 Nov 2017 06:56:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 06:56:59 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 04 Nov 2017 06:57:00 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu trusty main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 04 Nov 2017 06:57:32 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 06:57:33 GMT
ENV LANG=C.UTF-8
# Sat, 04 Nov 2017 06:57:34 GMT
ENV LC_ALL=C.UTF-8
# Sat, 04 Nov 2017 06:57:44 GMT
RUN rosdep init     && rosdep update
# Sat, 04 Nov 2017 07:04:35 GMT
ENV ROS_DISTRO=jade
# Sat, 04 Nov 2017 07:06:15 GMT
RUN apt-get update && apt-get install -y     ros-jade-ros-core=1.2.1-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 07:06:16 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Sat, 04 Nov 2017 07:06:16 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 04 Nov 2017 07:06:16 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 07:06:49 GMT
RUN apt-get update && apt-get install -y     ros-jade-ros-base=1.2.1-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 07:10:55 GMT
RUN apt-get update && apt-get install -y     ros-jade-perception=1.2.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:bae382666908fd87a3a3646d7eb7176fa42226027d3256cac38ee0b79bdb0491`  
		Last Modified: Wed, 13 Sep 2017 22:04:42 GMT  
		Size: 67.1 MB (67114903 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29ede3c02ff200fff7454ce59e1c3bb62f538847cefd5b8541e088ad22c42879`  
		Last Modified: Wed, 13 Sep 2017 23:27:09 GMT  
		Size: 72.6 KB (72648 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da4e69f33106a3131ce07d9ed4403593a7698be6dabd6cabd2c9c228599c8ce0`  
		Last Modified: Wed, 13 Sep 2017 23:27:09 GMT  
		Size: 364.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d43e5f5d27feb983909350fa3a008ebfb66436e172337cd543db358f5a01f1c`  
		Last Modified: Wed, 13 Sep 2017 23:27:09 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0de1abb17d6e07bcf1b68dc5c75acf0386405905ed735efe65a5235f29e756d`  
		Last Modified: Wed, 13 Sep 2017 23:27:09 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:179523842643e397252c3dbae32d4031598b7d0bb5f5776a90b9442fc29a602c`  
		Last Modified: Sat, 04 Nov 2017 07:56:01 GMT  
		Size: 16.5 MB (16499989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9af98a42d3dc9da9b7a845a36f1448610cf2f7a8570b4b98e7497ce51ac5dfc0`  
		Last Modified: Sat, 04 Nov 2017 07:55:47 GMT  
		Size: 13.1 KB (13082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee071ca7e9efe87b83f2da6239d51dc1df4f15cd3e869897d98faf0cfa88a9be`  
		Last Modified: Sat, 04 Nov 2017 07:55:44 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6cda969081fd561fb83ff7442a40fa48d4509cab2dc6daf112e0c9732c6c4b55`  
		Last Modified: Sat, 04 Nov 2017 07:56:06 GMT  
		Size: 31.7 MB (31683201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f08d4445bdc94b1285488233370b4c60ce248466c817d5e8c2687e58d5a9bf43`  
		Last Modified: Sat, 04 Nov 2017 07:55:45 GMT  
		Size: 766.6 KB (766561 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db6f04407dc92b31f745e30b84d4fe53ad7c3dba9b2b1dd50fa1c0959b830f0f`  
		Last Modified: Sat, 04 Nov 2017 08:00:32 GMT  
		Size: 150.0 MB (150046304 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02990601040b876a238e9283e91e118c9d28f599f767a97bab3d5e6e149189ae`  
		Last Modified: Sat, 04 Nov 2017 07:59:39 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e71b0aa2a7d582c0e87382e95069667e256efc0295286c0608a79a2a861a281`  
		Last Modified: Sat, 04 Nov 2017 08:00:56 GMT  
		Size: 4.0 MB (3996163 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcbd081e61ecbb6615451370cb4986896045f379e52f88cae5135c33fe6fda6d`  
		Last Modified: Sat, 04 Nov 2017 08:03:24 GMT  
		Size: 263.5 MB (263487977 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:jade-robot`

```console
$ docker pull ros@sha256:79e24553471fef0d7d5b212bfbe19536bef3577c1be4c50c120f3b16dffaa8e5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `ros:jade-robot` - linux; amd64

```console
$ docker pull ros@sha256:a385073d40051680dfc6f96b0ad1f8a9a18d94e2020646f2b1bc4ec0c1de0b43
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **331.5 MB (331506494 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:28f5831a7b21d4222420057f47ea7413152e9978dfb736929350491c53a79dfd`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 13 Sep 2017 23:26:20 GMT
ADD file:8f997234193c2f587ac17bb4a8db2657103d2924813edb281eec7ba9883a2806 in / 
# Wed, 13 Sep 2017 23:26:21 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 13 Sep 2017 23:26:21 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 23:26:22 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 13 Sep 2017 23:26:22 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 13 Sep 2017 23:26:23 GMT
CMD ["/bin/bash"]
# Sat, 04 Nov 2017 06:56:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 06:56:59 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 04 Nov 2017 06:57:00 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu trusty main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 04 Nov 2017 06:57:32 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 06:57:33 GMT
ENV LANG=C.UTF-8
# Sat, 04 Nov 2017 06:57:34 GMT
ENV LC_ALL=C.UTF-8
# Sat, 04 Nov 2017 06:57:44 GMT
RUN rosdep init     && rosdep update
# Sat, 04 Nov 2017 07:04:35 GMT
ENV ROS_DISTRO=jade
# Sat, 04 Nov 2017 07:06:15 GMT
RUN apt-get update && apt-get install -y     ros-jade-ros-core=1.2.1-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 07:06:16 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Sat, 04 Nov 2017 07:06:16 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 04 Nov 2017 07:06:16 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 07:06:49 GMT
RUN apt-get update && apt-get install -y     ros-jade-ros-base=1.2.1-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 07:07:34 GMT
RUN apt-get update && apt-get install -y     ros-jade-robot=1.2.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:bae382666908fd87a3a3646d7eb7176fa42226027d3256cac38ee0b79bdb0491`  
		Last Modified: Wed, 13 Sep 2017 22:04:42 GMT  
		Size: 67.1 MB (67114903 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29ede3c02ff200fff7454ce59e1c3bb62f538847cefd5b8541e088ad22c42879`  
		Last Modified: Wed, 13 Sep 2017 23:27:09 GMT  
		Size: 72.6 KB (72648 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da4e69f33106a3131ce07d9ed4403593a7698be6dabd6cabd2c9c228599c8ce0`  
		Last Modified: Wed, 13 Sep 2017 23:27:09 GMT  
		Size: 364.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d43e5f5d27feb983909350fa3a008ebfb66436e172337cd543db358f5a01f1c`  
		Last Modified: Wed, 13 Sep 2017 23:27:09 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0de1abb17d6e07bcf1b68dc5c75acf0386405905ed735efe65a5235f29e756d`  
		Last Modified: Wed, 13 Sep 2017 23:27:09 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:179523842643e397252c3dbae32d4031598b7d0bb5f5776a90b9442fc29a602c`  
		Last Modified: Sat, 04 Nov 2017 07:56:01 GMT  
		Size: 16.5 MB (16499989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9af98a42d3dc9da9b7a845a36f1448610cf2f7a8570b4b98e7497ce51ac5dfc0`  
		Last Modified: Sat, 04 Nov 2017 07:55:47 GMT  
		Size: 13.1 KB (13082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee071ca7e9efe87b83f2da6239d51dc1df4f15cd3e869897d98faf0cfa88a9be`  
		Last Modified: Sat, 04 Nov 2017 07:55:44 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6cda969081fd561fb83ff7442a40fa48d4509cab2dc6daf112e0c9732c6c4b55`  
		Last Modified: Sat, 04 Nov 2017 07:56:06 GMT  
		Size: 31.7 MB (31683201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f08d4445bdc94b1285488233370b4c60ce248466c817d5e8c2687e58d5a9bf43`  
		Last Modified: Sat, 04 Nov 2017 07:55:45 GMT  
		Size: 766.6 KB (766561 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db6f04407dc92b31f745e30b84d4fe53ad7c3dba9b2b1dd50fa1c0959b830f0f`  
		Last Modified: Sat, 04 Nov 2017 08:00:32 GMT  
		Size: 150.0 MB (150046304 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02990601040b876a238e9283e91e118c9d28f599f767a97bab3d5e6e149189ae`  
		Last Modified: Sat, 04 Nov 2017 07:59:39 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e71b0aa2a7d582c0e87382e95069667e256efc0295286c0608a79a2a861a281`  
		Last Modified: Sat, 04 Nov 2017 08:00:56 GMT  
		Size: 4.0 MB (3996163 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a43ed830020a9ecd297c5c59db21ab4254079d4e4f25ca671061c9ec0e5b76fc`  
		Last Modified: Sat, 04 Nov 2017 08:01:34 GMT  
		Size: 61.3 MB (61311846 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:jade-robot-trusty`

```console
$ docker pull ros@sha256:79e24553471fef0d7d5b212bfbe19536bef3577c1be4c50c120f3b16dffaa8e5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `ros:jade-robot-trusty` - linux; amd64

```console
$ docker pull ros@sha256:a385073d40051680dfc6f96b0ad1f8a9a18d94e2020646f2b1bc4ec0c1de0b43
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **331.5 MB (331506494 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:28f5831a7b21d4222420057f47ea7413152e9978dfb736929350491c53a79dfd`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 13 Sep 2017 23:26:20 GMT
ADD file:8f997234193c2f587ac17bb4a8db2657103d2924813edb281eec7ba9883a2806 in / 
# Wed, 13 Sep 2017 23:26:21 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 13 Sep 2017 23:26:21 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 23:26:22 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 13 Sep 2017 23:26:22 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 13 Sep 2017 23:26:23 GMT
CMD ["/bin/bash"]
# Sat, 04 Nov 2017 06:56:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 06:56:59 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 04 Nov 2017 06:57:00 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu trusty main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 04 Nov 2017 06:57:32 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 06:57:33 GMT
ENV LANG=C.UTF-8
# Sat, 04 Nov 2017 06:57:34 GMT
ENV LC_ALL=C.UTF-8
# Sat, 04 Nov 2017 06:57:44 GMT
RUN rosdep init     && rosdep update
# Sat, 04 Nov 2017 07:04:35 GMT
ENV ROS_DISTRO=jade
# Sat, 04 Nov 2017 07:06:15 GMT
RUN apt-get update && apt-get install -y     ros-jade-ros-core=1.2.1-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 07:06:16 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Sat, 04 Nov 2017 07:06:16 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 04 Nov 2017 07:06:16 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 07:06:49 GMT
RUN apt-get update && apt-get install -y     ros-jade-ros-base=1.2.1-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 07:07:34 GMT
RUN apt-get update && apt-get install -y     ros-jade-robot=1.2.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:bae382666908fd87a3a3646d7eb7176fa42226027d3256cac38ee0b79bdb0491`  
		Last Modified: Wed, 13 Sep 2017 22:04:42 GMT  
		Size: 67.1 MB (67114903 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29ede3c02ff200fff7454ce59e1c3bb62f538847cefd5b8541e088ad22c42879`  
		Last Modified: Wed, 13 Sep 2017 23:27:09 GMT  
		Size: 72.6 KB (72648 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da4e69f33106a3131ce07d9ed4403593a7698be6dabd6cabd2c9c228599c8ce0`  
		Last Modified: Wed, 13 Sep 2017 23:27:09 GMT  
		Size: 364.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d43e5f5d27feb983909350fa3a008ebfb66436e172337cd543db358f5a01f1c`  
		Last Modified: Wed, 13 Sep 2017 23:27:09 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0de1abb17d6e07bcf1b68dc5c75acf0386405905ed735efe65a5235f29e756d`  
		Last Modified: Wed, 13 Sep 2017 23:27:09 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:179523842643e397252c3dbae32d4031598b7d0bb5f5776a90b9442fc29a602c`  
		Last Modified: Sat, 04 Nov 2017 07:56:01 GMT  
		Size: 16.5 MB (16499989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9af98a42d3dc9da9b7a845a36f1448610cf2f7a8570b4b98e7497ce51ac5dfc0`  
		Last Modified: Sat, 04 Nov 2017 07:55:47 GMT  
		Size: 13.1 KB (13082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee071ca7e9efe87b83f2da6239d51dc1df4f15cd3e869897d98faf0cfa88a9be`  
		Last Modified: Sat, 04 Nov 2017 07:55:44 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6cda969081fd561fb83ff7442a40fa48d4509cab2dc6daf112e0c9732c6c4b55`  
		Last Modified: Sat, 04 Nov 2017 07:56:06 GMT  
		Size: 31.7 MB (31683201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f08d4445bdc94b1285488233370b4c60ce248466c817d5e8c2687e58d5a9bf43`  
		Last Modified: Sat, 04 Nov 2017 07:55:45 GMT  
		Size: 766.6 KB (766561 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db6f04407dc92b31f745e30b84d4fe53ad7c3dba9b2b1dd50fa1c0959b830f0f`  
		Last Modified: Sat, 04 Nov 2017 08:00:32 GMT  
		Size: 150.0 MB (150046304 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02990601040b876a238e9283e91e118c9d28f599f767a97bab3d5e6e149189ae`  
		Last Modified: Sat, 04 Nov 2017 07:59:39 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e71b0aa2a7d582c0e87382e95069667e256efc0295286c0608a79a2a861a281`  
		Last Modified: Sat, 04 Nov 2017 08:00:56 GMT  
		Size: 4.0 MB (3996163 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a43ed830020a9ecd297c5c59db21ab4254079d4e4f25ca671061c9ec0e5b76fc`  
		Last Modified: Sat, 04 Nov 2017 08:01:34 GMT  
		Size: 61.3 MB (61311846 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:jade-ros-base`

```console
$ docker pull ros@sha256:0049bc4bd08d2d10516584ebede25fc9ffa5b6002693765afacce7be740a0db3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `ros:jade-ros-base` - linux; amd64

```console
$ docker pull ros@sha256:4c6766a6d3e94795d5a3052026a67281083d4c6031d05d43d4ed78a8ec11d278
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **270.2 MB (270194648 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dd974ec37997c28ad9ab80b4b0b834b932d9c0053b68b6b49abfb2a09c3eeb87`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 13 Sep 2017 23:26:20 GMT
ADD file:8f997234193c2f587ac17bb4a8db2657103d2924813edb281eec7ba9883a2806 in / 
# Wed, 13 Sep 2017 23:26:21 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 13 Sep 2017 23:26:21 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 23:26:22 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 13 Sep 2017 23:26:22 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 13 Sep 2017 23:26:23 GMT
CMD ["/bin/bash"]
# Sat, 04 Nov 2017 06:56:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 06:56:59 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 04 Nov 2017 06:57:00 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu trusty main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 04 Nov 2017 06:57:32 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 06:57:33 GMT
ENV LANG=C.UTF-8
# Sat, 04 Nov 2017 06:57:34 GMT
ENV LC_ALL=C.UTF-8
# Sat, 04 Nov 2017 06:57:44 GMT
RUN rosdep init     && rosdep update
# Sat, 04 Nov 2017 07:04:35 GMT
ENV ROS_DISTRO=jade
# Sat, 04 Nov 2017 07:06:15 GMT
RUN apt-get update && apt-get install -y     ros-jade-ros-core=1.2.1-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 07:06:16 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Sat, 04 Nov 2017 07:06:16 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 04 Nov 2017 07:06:16 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 07:06:49 GMT
RUN apt-get update && apt-get install -y     ros-jade-ros-base=1.2.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:bae382666908fd87a3a3646d7eb7176fa42226027d3256cac38ee0b79bdb0491`  
		Last Modified: Wed, 13 Sep 2017 22:04:42 GMT  
		Size: 67.1 MB (67114903 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29ede3c02ff200fff7454ce59e1c3bb62f538847cefd5b8541e088ad22c42879`  
		Last Modified: Wed, 13 Sep 2017 23:27:09 GMT  
		Size: 72.6 KB (72648 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da4e69f33106a3131ce07d9ed4403593a7698be6dabd6cabd2c9c228599c8ce0`  
		Last Modified: Wed, 13 Sep 2017 23:27:09 GMT  
		Size: 364.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d43e5f5d27feb983909350fa3a008ebfb66436e172337cd543db358f5a01f1c`  
		Last Modified: Wed, 13 Sep 2017 23:27:09 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0de1abb17d6e07bcf1b68dc5c75acf0386405905ed735efe65a5235f29e756d`  
		Last Modified: Wed, 13 Sep 2017 23:27:09 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:179523842643e397252c3dbae32d4031598b7d0bb5f5776a90b9442fc29a602c`  
		Last Modified: Sat, 04 Nov 2017 07:56:01 GMT  
		Size: 16.5 MB (16499989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9af98a42d3dc9da9b7a845a36f1448610cf2f7a8570b4b98e7497ce51ac5dfc0`  
		Last Modified: Sat, 04 Nov 2017 07:55:47 GMT  
		Size: 13.1 KB (13082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee071ca7e9efe87b83f2da6239d51dc1df4f15cd3e869897d98faf0cfa88a9be`  
		Last Modified: Sat, 04 Nov 2017 07:55:44 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6cda969081fd561fb83ff7442a40fa48d4509cab2dc6daf112e0c9732c6c4b55`  
		Last Modified: Sat, 04 Nov 2017 07:56:06 GMT  
		Size: 31.7 MB (31683201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f08d4445bdc94b1285488233370b4c60ce248466c817d5e8c2687e58d5a9bf43`  
		Last Modified: Sat, 04 Nov 2017 07:55:45 GMT  
		Size: 766.6 KB (766561 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db6f04407dc92b31f745e30b84d4fe53ad7c3dba9b2b1dd50fa1c0959b830f0f`  
		Last Modified: Sat, 04 Nov 2017 08:00:32 GMT  
		Size: 150.0 MB (150046304 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02990601040b876a238e9283e91e118c9d28f599f767a97bab3d5e6e149189ae`  
		Last Modified: Sat, 04 Nov 2017 07:59:39 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e71b0aa2a7d582c0e87382e95069667e256efc0295286c0608a79a2a861a281`  
		Last Modified: Sat, 04 Nov 2017 08:00:56 GMT  
		Size: 4.0 MB (3996163 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:jade-ros-base-trusty`

```console
$ docker pull ros@sha256:0049bc4bd08d2d10516584ebede25fc9ffa5b6002693765afacce7be740a0db3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `ros:jade-ros-base-trusty` - linux; amd64

```console
$ docker pull ros@sha256:4c6766a6d3e94795d5a3052026a67281083d4c6031d05d43d4ed78a8ec11d278
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **270.2 MB (270194648 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dd974ec37997c28ad9ab80b4b0b834b932d9c0053b68b6b49abfb2a09c3eeb87`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 13 Sep 2017 23:26:20 GMT
ADD file:8f997234193c2f587ac17bb4a8db2657103d2924813edb281eec7ba9883a2806 in / 
# Wed, 13 Sep 2017 23:26:21 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 13 Sep 2017 23:26:21 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 23:26:22 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 13 Sep 2017 23:26:22 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 13 Sep 2017 23:26:23 GMT
CMD ["/bin/bash"]
# Sat, 04 Nov 2017 06:56:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 06:56:59 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 04 Nov 2017 06:57:00 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu trusty main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 04 Nov 2017 06:57:32 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 06:57:33 GMT
ENV LANG=C.UTF-8
# Sat, 04 Nov 2017 06:57:34 GMT
ENV LC_ALL=C.UTF-8
# Sat, 04 Nov 2017 06:57:44 GMT
RUN rosdep init     && rosdep update
# Sat, 04 Nov 2017 07:04:35 GMT
ENV ROS_DISTRO=jade
# Sat, 04 Nov 2017 07:06:15 GMT
RUN apt-get update && apt-get install -y     ros-jade-ros-core=1.2.1-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 07:06:16 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Sat, 04 Nov 2017 07:06:16 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 04 Nov 2017 07:06:16 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 07:06:49 GMT
RUN apt-get update && apt-get install -y     ros-jade-ros-base=1.2.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:bae382666908fd87a3a3646d7eb7176fa42226027d3256cac38ee0b79bdb0491`  
		Last Modified: Wed, 13 Sep 2017 22:04:42 GMT  
		Size: 67.1 MB (67114903 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29ede3c02ff200fff7454ce59e1c3bb62f538847cefd5b8541e088ad22c42879`  
		Last Modified: Wed, 13 Sep 2017 23:27:09 GMT  
		Size: 72.6 KB (72648 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da4e69f33106a3131ce07d9ed4403593a7698be6dabd6cabd2c9c228599c8ce0`  
		Last Modified: Wed, 13 Sep 2017 23:27:09 GMT  
		Size: 364.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d43e5f5d27feb983909350fa3a008ebfb66436e172337cd543db358f5a01f1c`  
		Last Modified: Wed, 13 Sep 2017 23:27:09 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0de1abb17d6e07bcf1b68dc5c75acf0386405905ed735efe65a5235f29e756d`  
		Last Modified: Wed, 13 Sep 2017 23:27:09 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:179523842643e397252c3dbae32d4031598b7d0bb5f5776a90b9442fc29a602c`  
		Last Modified: Sat, 04 Nov 2017 07:56:01 GMT  
		Size: 16.5 MB (16499989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9af98a42d3dc9da9b7a845a36f1448610cf2f7a8570b4b98e7497ce51ac5dfc0`  
		Last Modified: Sat, 04 Nov 2017 07:55:47 GMT  
		Size: 13.1 KB (13082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee071ca7e9efe87b83f2da6239d51dc1df4f15cd3e869897d98faf0cfa88a9be`  
		Last Modified: Sat, 04 Nov 2017 07:55:44 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6cda969081fd561fb83ff7442a40fa48d4509cab2dc6daf112e0c9732c6c4b55`  
		Last Modified: Sat, 04 Nov 2017 07:56:06 GMT  
		Size: 31.7 MB (31683201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f08d4445bdc94b1285488233370b4c60ce248466c817d5e8c2687e58d5a9bf43`  
		Last Modified: Sat, 04 Nov 2017 07:55:45 GMT  
		Size: 766.6 KB (766561 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db6f04407dc92b31f745e30b84d4fe53ad7c3dba9b2b1dd50fa1c0959b830f0f`  
		Last Modified: Sat, 04 Nov 2017 08:00:32 GMT  
		Size: 150.0 MB (150046304 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02990601040b876a238e9283e91e118c9d28f599f767a97bab3d5e6e149189ae`  
		Last Modified: Sat, 04 Nov 2017 07:59:39 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e71b0aa2a7d582c0e87382e95069667e256efc0295286c0608a79a2a861a281`  
		Last Modified: Sat, 04 Nov 2017 08:00:56 GMT  
		Size: 4.0 MB (3996163 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:jade-ros-core`

```console
$ docker pull ros@sha256:a26dfd270c715cd2bb000469097592cfea4a171a9caa5e38c21bfa67e33256fc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `ros:jade-ros-core` - linux; amd64

```console
$ docker pull ros@sha256:bb98602c1215f7aad4859b5db4a59c5739e65dee1705d0760371d12a1c363bca
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **266.2 MB (266198485 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aca7f317703e0ee2a7a26a4074adeb2f952e21d3f8066e0f359fb8b193cbb72c`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 13 Sep 2017 23:26:20 GMT
ADD file:8f997234193c2f587ac17bb4a8db2657103d2924813edb281eec7ba9883a2806 in / 
# Wed, 13 Sep 2017 23:26:21 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 13 Sep 2017 23:26:21 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 23:26:22 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 13 Sep 2017 23:26:22 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 13 Sep 2017 23:26:23 GMT
CMD ["/bin/bash"]
# Sat, 04 Nov 2017 06:56:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 06:56:59 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 04 Nov 2017 06:57:00 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu trusty main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 04 Nov 2017 06:57:32 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 06:57:33 GMT
ENV LANG=C.UTF-8
# Sat, 04 Nov 2017 06:57:34 GMT
ENV LC_ALL=C.UTF-8
# Sat, 04 Nov 2017 06:57:44 GMT
RUN rosdep init     && rosdep update
# Sat, 04 Nov 2017 07:04:35 GMT
ENV ROS_DISTRO=jade
# Sat, 04 Nov 2017 07:06:15 GMT
RUN apt-get update && apt-get install -y     ros-jade-ros-core=1.2.1-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 07:06:16 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Sat, 04 Nov 2017 07:06:16 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 04 Nov 2017 07:06:16 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:bae382666908fd87a3a3646d7eb7176fa42226027d3256cac38ee0b79bdb0491`  
		Last Modified: Wed, 13 Sep 2017 22:04:42 GMT  
		Size: 67.1 MB (67114903 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29ede3c02ff200fff7454ce59e1c3bb62f538847cefd5b8541e088ad22c42879`  
		Last Modified: Wed, 13 Sep 2017 23:27:09 GMT  
		Size: 72.6 KB (72648 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da4e69f33106a3131ce07d9ed4403593a7698be6dabd6cabd2c9c228599c8ce0`  
		Last Modified: Wed, 13 Sep 2017 23:27:09 GMT  
		Size: 364.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d43e5f5d27feb983909350fa3a008ebfb66436e172337cd543db358f5a01f1c`  
		Last Modified: Wed, 13 Sep 2017 23:27:09 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0de1abb17d6e07bcf1b68dc5c75acf0386405905ed735efe65a5235f29e756d`  
		Last Modified: Wed, 13 Sep 2017 23:27:09 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:179523842643e397252c3dbae32d4031598b7d0bb5f5776a90b9442fc29a602c`  
		Last Modified: Sat, 04 Nov 2017 07:56:01 GMT  
		Size: 16.5 MB (16499989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9af98a42d3dc9da9b7a845a36f1448610cf2f7a8570b4b98e7497ce51ac5dfc0`  
		Last Modified: Sat, 04 Nov 2017 07:55:47 GMT  
		Size: 13.1 KB (13082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee071ca7e9efe87b83f2da6239d51dc1df4f15cd3e869897d98faf0cfa88a9be`  
		Last Modified: Sat, 04 Nov 2017 07:55:44 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6cda969081fd561fb83ff7442a40fa48d4509cab2dc6daf112e0c9732c6c4b55`  
		Last Modified: Sat, 04 Nov 2017 07:56:06 GMT  
		Size: 31.7 MB (31683201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f08d4445bdc94b1285488233370b4c60ce248466c817d5e8c2687e58d5a9bf43`  
		Last Modified: Sat, 04 Nov 2017 07:55:45 GMT  
		Size: 766.6 KB (766561 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db6f04407dc92b31f745e30b84d4fe53ad7c3dba9b2b1dd50fa1c0959b830f0f`  
		Last Modified: Sat, 04 Nov 2017 08:00:32 GMT  
		Size: 150.0 MB (150046304 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02990601040b876a238e9283e91e118c9d28f599f767a97bab3d5e6e149189ae`  
		Last Modified: Sat, 04 Nov 2017 07:59:39 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:jade-ros-core-trusty`

```console
$ docker pull ros@sha256:a26dfd270c715cd2bb000469097592cfea4a171a9caa5e38c21bfa67e33256fc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `ros:jade-ros-core-trusty` - linux; amd64

```console
$ docker pull ros@sha256:bb98602c1215f7aad4859b5db4a59c5739e65dee1705d0760371d12a1c363bca
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **266.2 MB (266198485 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aca7f317703e0ee2a7a26a4074adeb2f952e21d3f8066e0f359fb8b193cbb72c`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 13 Sep 2017 23:26:20 GMT
ADD file:8f997234193c2f587ac17bb4a8db2657103d2924813edb281eec7ba9883a2806 in / 
# Wed, 13 Sep 2017 23:26:21 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 13 Sep 2017 23:26:21 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 23:26:22 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 13 Sep 2017 23:26:22 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 13 Sep 2017 23:26:23 GMT
CMD ["/bin/bash"]
# Sat, 04 Nov 2017 06:56:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 06:56:59 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 04 Nov 2017 06:57:00 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu trusty main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 04 Nov 2017 06:57:32 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 06:57:33 GMT
ENV LANG=C.UTF-8
# Sat, 04 Nov 2017 06:57:34 GMT
ENV LC_ALL=C.UTF-8
# Sat, 04 Nov 2017 06:57:44 GMT
RUN rosdep init     && rosdep update
# Sat, 04 Nov 2017 07:04:35 GMT
ENV ROS_DISTRO=jade
# Sat, 04 Nov 2017 07:06:15 GMT
RUN apt-get update && apt-get install -y     ros-jade-ros-core=1.2.1-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 07:06:16 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Sat, 04 Nov 2017 07:06:16 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 04 Nov 2017 07:06:16 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:bae382666908fd87a3a3646d7eb7176fa42226027d3256cac38ee0b79bdb0491`  
		Last Modified: Wed, 13 Sep 2017 22:04:42 GMT  
		Size: 67.1 MB (67114903 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29ede3c02ff200fff7454ce59e1c3bb62f538847cefd5b8541e088ad22c42879`  
		Last Modified: Wed, 13 Sep 2017 23:27:09 GMT  
		Size: 72.6 KB (72648 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da4e69f33106a3131ce07d9ed4403593a7698be6dabd6cabd2c9c228599c8ce0`  
		Last Modified: Wed, 13 Sep 2017 23:27:09 GMT  
		Size: 364.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d43e5f5d27feb983909350fa3a008ebfb66436e172337cd543db358f5a01f1c`  
		Last Modified: Wed, 13 Sep 2017 23:27:09 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0de1abb17d6e07bcf1b68dc5c75acf0386405905ed735efe65a5235f29e756d`  
		Last Modified: Wed, 13 Sep 2017 23:27:09 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:179523842643e397252c3dbae32d4031598b7d0bb5f5776a90b9442fc29a602c`  
		Last Modified: Sat, 04 Nov 2017 07:56:01 GMT  
		Size: 16.5 MB (16499989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9af98a42d3dc9da9b7a845a36f1448610cf2f7a8570b4b98e7497ce51ac5dfc0`  
		Last Modified: Sat, 04 Nov 2017 07:55:47 GMT  
		Size: 13.1 KB (13082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee071ca7e9efe87b83f2da6239d51dc1df4f15cd3e869897d98faf0cfa88a9be`  
		Last Modified: Sat, 04 Nov 2017 07:55:44 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6cda969081fd561fb83ff7442a40fa48d4509cab2dc6daf112e0c9732c6c4b55`  
		Last Modified: Sat, 04 Nov 2017 07:56:06 GMT  
		Size: 31.7 MB (31683201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f08d4445bdc94b1285488233370b4c60ce248466c817d5e8c2687e58d5a9bf43`  
		Last Modified: Sat, 04 Nov 2017 07:55:45 GMT  
		Size: 766.6 KB (766561 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db6f04407dc92b31f745e30b84d4fe53ad7c3dba9b2b1dd50fa1c0959b830f0f`  
		Last Modified: Sat, 04 Nov 2017 08:00:32 GMT  
		Size: 150.0 MB (150046304 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02990601040b876a238e9283e91e118c9d28f599f767a97bab3d5e6e149189ae`  
		Last Modified: Sat, 04 Nov 2017 07:59:39 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:kinetic`

```console
$ docker pull ros@sha256:668574289056cbd372987afad62095b452e045cb31d65f78bd37882ac5a07af7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:kinetic` - linux; amd64

```console
$ docker pull ros@sha256:c80b033d67afe125bfe70b7c77b2a482980c0b2ba18fe4f6e659b83890a19a84
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **307.5 MB (307480989 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:302b715dab3c1b72ab09a08250180a9c38a6593621f6500f59cba7d442e8e123`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 10 Oct 2017 20:59:02 GMT
ADD file:5b334adf9d9a2256add2a801b49d4b23c93b0973ec22bb798973d571c948f102 in / 
# Tue, 10 Oct 2017 20:59:02 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 10 Oct 2017 20:59:03 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 20:59:04 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 10 Oct 2017 20:59:04 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 10 Oct 2017 20:59:05 GMT
CMD ["/bin/bash"]
# Sat, 04 Nov 2017 07:12:14 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 07:12:15 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 04 Nov 2017 07:12:16 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 04 Nov 2017 07:12:56 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 07:12:57 GMT
ENV LANG=C.UTF-8
# Sat, 04 Nov 2017 07:12:57 GMT
ENV LC_ALL=C.UTF-8
# Sat, 04 Nov 2017 07:13:15 GMT
RUN rosdep init     && rosdep update
# Sat, 04 Nov 2017 07:13:16 GMT
ENV ROS_DISTRO=kinetic
# Sat, 04 Nov 2017 07:14:56 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 07:14:57 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Sat, 04 Nov 2017 07:14:58 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 04 Nov 2017 07:14:58 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 07:15:27 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:ae79f251470513c2a0ec750117a81f2d58a50727901ca416efecf297b8a03913`  
		Last Modified: Fri, 06 Oct 2017 13:04:44 GMT  
		Size: 47.6 MB (47617129 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ad56d5fc14905886c560200ab69f905b5c5287eaf12f8f761a7ab54f7a61c1b`  
		Last Modified: Tue, 10 Oct 2017 21:00:10 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:170e558760e8b2e484a022b7d7272cf284fc4e1936ba7a0a671fc586440ad272`  
		Last Modified: Tue, 10 Oct 2017 21:00:10 GMT  
		Size: 618.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:395460e233f5bdcd910d618a3b615e0d881e09ad27d58f3065eef53ecae6a808`  
		Last Modified: Tue, 10 Oct 2017 21:00:10 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f01dc62e444044e3ce494269837ef0aedb80fef69c679416137f17812d2eb9c`  
		Last Modified: Tue, 10 Oct 2017 21:00:10 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e3204a200f68200aa306b9f7be4fbfc14ff2f445cc0684830dba2d3f62a3ef6`  
		Last Modified: Sat, 04 Nov 2017 08:03:44 GMT  
		Size: 5.4 MB (5362103 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb487289e44f75e32d15f3ec5c13ac4dc6edd76d2c9d80fe9cf2584b4fc63f15`  
		Last Modified: Sat, 04 Nov 2017 08:03:42 GMT  
		Size: 13.1 KB (13082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b0e83c3ea6c0a5b6670174d23e0dfa9fd811ee86a12d3df4e5388e4e358d9eb`  
		Last Modified: Sat, 04 Nov 2017 08:03:40 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9dc8b2534c2217471ca02fbc18444a32ebf3fae1db3d711b6f4fadd96bece45d`  
		Last Modified: Sat, 04 Nov 2017 08:04:09 GMT  
		Size: 55.5 MB (55498654 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19bb8c21845fd7cb0e6e034a39fbd9ad9f4251ec8f63eb997ec07247bd6e2955`  
		Last Modified: Sat, 04 Nov 2017 08:03:40 GMT  
		Size: 766.3 KB (766309 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04907208ced2bdddd4b38424de02f20bbae1620cbf2581387c16b6629d56dd6b`  
		Last Modified: Sat, 04 Nov 2017 08:04:44 GMT  
		Size: 193.3 MB (193305391 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:219f41b55655ed7b30c57b87a748ec92d2c87b6c03ab933fa54fb932dc990c0e`  
		Last Modified: Sat, 04 Nov 2017 08:03:40 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d3ca84eff49bd01c7084e3d49769bca7efb48904668a0de0f033e7bf5ab9b36`  
		Last Modified: Sat, 04 Nov 2017 08:05:03 GMT  
		Size: 4.9 MB (4915414 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic` - linux; arm variant v7

```console
$ docker pull ros@sha256:7eae34ce6b55c710554bfd4127c9f022c1264f77f0e1290e2b798e3f53184bf8
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **267.7 MB (267651193 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fdfb5ad7615a3d9bb992a7588728cc294da89168d5aa17deadaa80d89ef97050`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 11 Oct 2017 12:51:12 GMT
ADD file:b8b49b959bf907b482bdc24c3c6f159f7aed1a3fb73e8efa669b12800635d25f in / 
# Wed, 11 Oct 2017 12:51:13 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 11 Oct 2017 12:51:14 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 12:51:14 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 11 Oct 2017 12:51:15 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 11 Oct 2017 12:51:15 GMT
CMD ["/bin/bash"]
# Wed, 11 Oct 2017 13:08:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 13:08:35 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 11 Oct 2017 13:08:39 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 11 Oct 2017 13:09:23 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 13:09:27 GMT
ENV LANG=C.UTF-8
# Wed, 11 Oct 2017 13:09:27 GMT
ENV LC_ALL=C.UTF-8
# Wed, 11 Oct 2017 13:09:51 GMT
RUN rosdep init     && rosdep update
# Wed, 11 Oct 2017 13:09:51 GMT
ENV ROS_DISTRO=kinetic
# Wed, 11 Oct 2017 13:11:04 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 13:11:06 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Wed, 11 Oct 2017 13:11:06 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 11 Oct 2017 13:11:07 GMT
CMD ["bash"]
# Wed, 11 Oct 2017 13:11:39 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:26e5736d414450f12f7c066ff59a208e9ea9311407c91de898505d1adbf01527`  
		Last Modified: Wed, 11 Oct 2017 12:52:25 GMT  
		Size: 42.4 MB (42444579 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3b2d7804592854a106e4cb6a8decdc17f84ce86673c5331ae4be08f6ddf9667`  
		Last Modified: Wed, 11 Oct 2017 12:52:14 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1e6e6dfa0c41d49186e1ef4cf4409826020371a07bc3a6b5509bb23e7004701`  
		Last Modified: Wed, 11 Oct 2017 12:52:15 GMT  
		Size: 614.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8b298e101bd87bb479bd9d268470b3060526668473413ad16a992f5a70b9b69`  
		Last Modified: Wed, 11 Oct 2017 12:52:14 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5da5730e907c71f6dad2a93757f203cea7518145a8d979508503cb906926d549`  
		Last Modified: Wed, 11 Oct 2017 12:52:14 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d09fc16d09d114946c081433e97aa0ce1f0885b00ae8d90b146d5359a8216fe6`  
		Last Modified: Wed, 11 Oct 2017 13:22:25 GMT  
		Size: 4.6 MB (4613971 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c4838a49db06950f36a6a93c8e2cb59919afaa2b80cc8762c8c4eb24e74719f`  
		Last Modified: Wed, 11 Oct 2017 13:22:24 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:079f3b787a6e9a31ec800dda6c1dc7d81bc91726e4474210d6cbdffa6238816d`  
		Last Modified: Wed, 11 Oct 2017 13:22:22 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c661b84e7cbabc46a583c3613c95c982378c0be5a2a8ae7e572bd7578b816d0`  
		Last Modified: Wed, 11 Oct 2017 13:22:41 GMT  
		Size: 50.7 MB (50654517 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f475e2bfcce8aa8c733d291239817e99fe1eda5cabadd03cb3eb94f08f6603ca`  
		Last Modified: Wed, 11 Oct 2017 13:22:23 GMT  
		Size: 760.4 KB (760364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7b6ac49be3f812f73bf4b011ac7bdcca37d8723456bd4602b81cab4da90c79b`  
		Last Modified: Wed, 11 Oct 2017 13:23:12 GMT  
		Size: 164.7 MB (164689507 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3811c4529d480a164d6b1e539f1d419839a3db766229b4a0e5eabcef8ca46ffd`  
		Last Modified: Wed, 11 Oct 2017 13:22:23 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87135cc8a0f4f770058f0b7b6148800fa00164faf1d62ff91e35c6ca4352ef19`  
		Last Modified: Wed, 11 Oct 2017 13:23:30 GMT  
		Size: 4.5 MB (4472274 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:2b503323c77021d84dfd19bba8ba759cb1cadf533c24880858e45bae42af4a28
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **280.0 MB (280042141 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:60303c1fa5784ec5121865ff3926e8deba40e42a8b6a91c501230be9e825cb21`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 11 Oct 2017 14:01:45 GMT
ADD file:17aebc392b3cf207dbe2809abd34b9eec60c3a0e8b39dcd04f8f29a863e966b3 in / 
# Wed, 11 Oct 2017 14:01:47 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 11 Oct 2017 14:01:49 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 14:01:50 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 11 Oct 2017 14:01:52 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 11 Oct 2017 14:01:52 GMT
CMD ["/bin/bash"]
# Wed, 11 Oct 2017 14:21:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 14:22:01 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 11 Oct 2017 14:22:11 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 11 Oct 2017 14:24:25 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 14:24:33 GMT
ENV LANG=C.UTF-8
# Wed, 11 Oct 2017 14:24:34 GMT
ENV LC_ALL=C.UTF-8
# Wed, 11 Oct 2017 14:25:14 GMT
RUN rosdep init     && rosdep update
# Wed, 11 Oct 2017 14:25:21 GMT
ENV ROS_DISTRO=kinetic
# Wed, 11 Oct 2017 14:38:32 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 14:38:36 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Wed, 11 Oct 2017 14:38:45 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 11 Oct 2017 14:38:46 GMT
CMD ["bash"]
# Wed, 11 Oct 2017 14:39:55 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:aac43d4d6c83c61c78a7814ef7d2e02dc6c2f52dc110ff181aea144991711636`  
		Last Modified: Fri, 06 Oct 2017 22:13:46 GMT  
		Size: 43.4 MB (43426326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eed65d92515dfacf9a35d3301bc4847f1057d240f9ab3c442b573bdbb8452791`  
		Last Modified: Wed, 11 Oct 2017 14:03:45 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2de5574dca5eb5a1b9351c990c0865bbe18370da61e7169a539ba80bbdb058b2`  
		Last Modified: Wed, 11 Oct 2017 14:03:44 GMT  
		Size: 617.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5a76e352cce541b89ec31a527e09d2185c9427315f118b56573f79eb31b4c2b`  
		Last Modified: Wed, 11 Oct 2017 14:03:45 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2aceaacecb77ef3360c013ffcd305eecd6cf17a32bd143a72ca0b86b74721ba`  
		Last Modified: Wed, 11 Oct 2017 14:03:45 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df2b464ff94260bae09f2719a99368cdaf4e91cb4ac7f8292454419def5b6bb2`  
		Last Modified: Wed, 11 Oct 2017 15:42:12 GMT  
		Size: 4.8 MB (4819150 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:317f3f12586aa0432e4b41b4e01e1e59b1132bbf0cb8d0a8bec39998598cfc19`  
		Last Modified: Wed, 11 Oct 2017 15:42:04 GMT  
		Size: 13.1 KB (13087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d485a4030132f2b8618b2c1e9adeb0f3512ff862a371cbffb828825cd90b712`  
		Last Modified: Wed, 11 Oct 2017 15:42:02 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebe5f4f3df9287919c1ddc687c131a9235d6053e50879ffbdd2307364fe2784c`  
		Last Modified: Wed, 11 Oct 2017 15:43:00 GMT  
		Size: 52.3 MB (52342563 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:624ab9416f2027ffb47c0f23bc9805307660d34dc41b41bace605c5ee21025e3`  
		Last Modified: Wed, 11 Oct 2017 15:42:03 GMT  
		Size: 760.2 KB (760212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee34836a9ef73b7f0ac44bb3febcd37e3297ed71278f88766d54dd36697393f9`  
		Last Modified: Wed, 11 Oct 2017 15:43:51 GMT  
		Size: 173.9 MB (173908949 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b52cac267b67146f0bc3668dba08f98f3cbe6c14049ecf73fd639745f79378e1`  
		Last Modified: Wed, 11 Oct 2017 15:42:01 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a0eec5946a348abb10b86e745543a65458459d0455074b1bd9f84fc94087481`  
		Last Modified: Wed, 11 Oct 2017 15:44:22 GMT  
		Size: 4.8 MB (4768946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:kinetic-perception`

```console
$ docker pull ros@sha256:777c6a29a3f6f2e1048a402c82c38585fa4bce4934d908198dda566edca5f4da
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:kinetic-perception` - linux; amd64

```console
$ docker pull ros@sha256:6caaa91a3451f68e32be6ecc24d77aa03ea8d84a9559eb95261ec1993a56988a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **695.4 MB (695411574 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cdf86a78878a8b4ba3e3b80b85ef3969844218d1ebc461c6b59657974136afcf`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 10 Oct 2017 20:59:02 GMT
ADD file:5b334adf9d9a2256add2a801b49d4b23c93b0973ec22bb798973d571c948f102 in / 
# Tue, 10 Oct 2017 20:59:02 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 10 Oct 2017 20:59:03 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 20:59:04 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 10 Oct 2017 20:59:04 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 10 Oct 2017 20:59:05 GMT
CMD ["/bin/bash"]
# Sat, 04 Nov 2017 07:12:14 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 07:12:15 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 04 Nov 2017 07:12:16 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 04 Nov 2017 07:12:56 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 07:12:57 GMT
ENV LANG=C.UTF-8
# Sat, 04 Nov 2017 07:12:57 GMT
ENV LC_ALL=C.UTF-8
# Sat, 04 Nov 2017 07:13:15 GMT
RUN rosdep init     && rosdep update
# Sat, 04 Nov 2017 07:13:16 GMT
ENV ROS_DISTRO=kinetic
# Sat, 04 Nov 2017 07:14:56 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 07:14:57 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Sat, 04 Nov 2017 07:14:58 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 04 Nov 2017 07:14:58 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 07:15:27 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 07:20:25 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-perception=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:ae79f251470513c2a0ec750117a81f2d58a50727901ca416efecf297b8a03913`  
		Last Modified: Fri, 06 Oct 2017 13:04:44 GMT  
		Size: 47.6 MB (47617129 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ad56d5fc14905886c560200ab69f905b5c5287eaf12f8f761a7ab54f7a61c1b`  
		Last Modified: Tue, 10 Oct 2017 21:00:10 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:170e558760e8b2e484a022b7d7272cf284fc4e1936ba7a0a671fc586440ad272`  
		Last Modified: Tue, 10 Oct 2017 21:00:10 GMT  
		Size: 618.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:395460e233f5bdcd910d618a3b615e0d881e09ad27d58f3065eef53ecae6a808`  
		Last Modified: Tue, 10 Oct 2017 21:00:10 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f01dc62e444044e3ce494269837ef0aedb80fef69c679416137f17812d2eb9c`  
		Last Modified: Tue, 10 Oct 2017 21:00:10 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e3204a200f68200aa306b9f7be4fbfc14ff2f445cc0684830dba2d3f62a3ef6`  
		Last Modified: Sat, 04 Nov 2017 08:03:44 GMT  
		Size: 5.4 MB (5362103 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb487289e44f75e32d15f3ec5c13ac4dc6edd76d2c9d80fe9cf2584b4fc63f15`  
		Last Modified: Sat, 04 Nov 2017 08:03:42 GMT  
		Size: 13.1 KB (13082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b0e83c3ea6c0a5b6670174d23e0dfa9fd811ee86a12d3df4e5388e4e358d9eb`  
		Last Modified: Sat, 04 Nov 2017 08:03:40 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9dc8b2534c2217471ca02fbc18444a32ebf3fae1db3d711b6f4fadd96bece45d`  
		Last Modified: Sat, 04 Nov 2017 08:04:09 GMT  
		Size: 55.5 MB (55498654 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19bb8c21845fd7cb0e6e034a39fbd9ad9f4251ec8f63eb997ec07247bd6e2955`  
		Last Modified: Sat, 04 Nov 2017 08:03:40 GMT  
		Size: 766.3 KB (766309 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04907208ced2bdddd4b38424de02f20bbae1620cbf2581387c16b6629d56dd6b`  
		Last Modified: Sat, 04 Nov 2017 08:04:44 GMT  
		Size: 193.3 MB (193305391 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:219f41b55655ed7b30c57b87a748ec92d2c87b6c03ab933fa54fb932dc990c0e`  
		Last Modified: Sat, 04 Nov 2017 08:03:40 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d3ca84eff49bd01c7084e3d49769bca7efb48904668a0de0f033e7bf5ab9b36`  
		Last Modified: Sat, 04 Nov 2017 08:05:03 GMT  
		Size: 4.9 MB (4915414 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:855b9aaee9e499be3cae2855dc3f21f4f92dfc8a67c6d9b5a8589b09fab35481`  
		Last Modified: Sat, 04 Nov 2017 08:08:27 GMT  
		Size: 387.9 MB (387930585 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic-perception` - linux; arm variant v7

```console
$ docker pull ros@sha256:630be5435f344784abd282f7a76cfaa1f4a4055143bbcf947eecd38b18cdfbf6
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **604.8 MB (604840316 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7c1e2f9cbb6b8f8726135fe54d8e8954a8c4a01f8b413c3546b05f0bacd09ef0`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 11 Oct 2017 12:51:12 GMT
ADD file:b8b49b959bf907b482bdc24c3c6f159f7aed1a3fb73e8efa669b12800635d25f in / 
# Wed, 11 Oct 2017 12:51:13 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 11 Oct 2017 12:51:14 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 12:51:14 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 11 Oct 2017 12:51:15 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 11 Oct 2017 12:51:15 GMT
CMD ["/bin/bash"]
# Wed, 11 Oct 2017 13:08:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 13:08:35 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 11 Oct 2017 13:08:39 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 11 Oct 2017 13:09:23 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 13:09:27 GMT
ENV LANG=C.UTF-8
# Wed, 11 Oct 2017 13:09:27 GMT
ENV LC_ALL=C.UTF-8
# Wed, 11 Oct 2017 13:09:51 GMT
RUN rosdep init     && rosdep update
# Wed, 11 Oct 2017 13:09:51 GMT
ENV ROS_DISTRO=kinetic
# Wed, 11 Oct 2017 13:11:04 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 13:11:06 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Wed, 11 Oct 2017 13:11:06 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 11 Oct 2017 13:11:07 GMT
CMD ["bash"]
# Wed, 11 Oct 2017 13:11:39 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 13:15:58 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-perception=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:26e5736d414450f12f7c066ff59a208e9ea9311407c91de898505d1adbf01527`  
		Last Modified: Wed, 11 Oct 2017 12:52:25 GMT  
		Size: 42.4 MB (42444579 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3b2d7804592854a106e4cb6a8decdc17f84ce86673c5331ae4be08f6ddf9667`  
		Last Modified: Wed, 11 Oct 2017 12:52:14 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1e6e6dfa0c41d49186e1ef4cf4409826020371a07bc3a6b5509bb23e7004701`  
		Last Modified: Wed, 11 Oct 2017 12:52:15 GMT  
		Size: 614.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8b298e101bd87bb479bd9d268470b3060526668473413ad16a992f5a70b9b69`  
		Last Modified: Wed, 11 Oct 2017 12:52:14 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5da5730e907c71f6dad2a93757f203cea7518145a8d979508503cb906926d549`  
		Last Modified: Wed, 11 Oct 2017 12:52:14 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d09fc16d09d114946c081433e97aa0ce1f0885b00ae8d90b146d5359a8216fe6`  
		Last Modified: Wed, 11 Oct 2017 13:22:25 GMT  
		Size: 4.6 MB (4613971 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c4838a49db06950f36a6a93c8e2cb59919afaa2b80cc8762c8c4eb24e74719f`  
		Last Modified: Wed, 11 Oct 2017 13:22:24 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:079f3b787a6e9a31ec800dda6c1dc7d81bc91726e4474210d6cbdffa6238816d`  
		Last Modified: Wed, 11 Oct 2017 13:22:22 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c661b84e7cbabc46a583c3613c95c982378c0be5a2a8ae7e572bd7578b816d0`  
		Last Modified: Wed, 11 Oct 2017 13:22:41 GMT  
		Size: 50.7 MB (50654517 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f475e2bfcce8aa8c733d291239817e99fe1eda5cabadd03cb3eb94f08f6603ca`  
		Last Modified: Wed, 11 Oct 2017 13:22:23 GMT  
		Size: 760.4 KB (760364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7b6ac49be3f812f73bf4b011ac7bdcca37d8723456bd4602b81cab4da90c79b`  
		Last Modified: Wed, 11 Oct 2017 13:23:12 GMT  
		Size: 164.7 MB (164689507 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3811c4529d480a164d6b1e539f1d419839a3db766229b4a0e5eabcef8ca46ffd`  
		Last Modified: Wed, 11 Oct 2017 13:22:23 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87135cc8a0f4f770058f0b7b6148800fa00164faf1d62ff91e35c6ca4352ef19`  
		Last Modified: Wed, 11 Oct 2017 13:23:30 GMT  
		Size: 4.5 MB (4472274 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eaa6e687cc6f10213fb6ac19c84e42cbd7f87a89c1ac63e003307b955a8a416b`  
		Last Modified: Wed, 11 Oct 2017 13:26:15 GMT  
		Size: 337.2 MB (337189123 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic-perception` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:1b433e8195bdad444763e46fc4bdb9ec66a6558a75bd61ac4d3a2a4c63bd1602
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **631.2 MB (631206522 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:189beadc42fb136995638939c9fcecdf429ec3157ed85c0fd809b0253a476bc1`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 11 Oct 2017 14:01:45 GMT
ADD file:17aebc392b3cf207dbe2809abd34b9eec60c3a0e8b39dcd04f8f29a863e966b3 in / 
# Wed, 11 Oct 2017 14:01:47 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 11 Oct 2017 14:01:49 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 14:01:50 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 11 Oct 2017 14:01:52 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 11 Oct 2017 14:01:52 GMT
CMD ["/bin/bash"]
# Wed, 11 Oct 2017 14:21:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 14:22:01 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 11 Oct 2017 14:22:11 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 11 Oct 2017 14:24:25 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 14:24:33 GMT
ENV LANG=C.UTF-8
# Wed, 11 Oct 2017 14:24:34 GMT
ENV LC_ALL=C.UTF-8
# Wed, 11 Oct 2017 14:25:14 GMT
RUN rosdep init     && rosdep update
# Wed, 11 Oct 2017 14:25:21 GMT
ENV ROS_DISTRO=kinetic
# Wed, 11 Oct 2017 14:38:32 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 14:38:36 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Wed, 11 Oct 2017 14:38:45 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 11 Oct 2017 14:38:46 GMT
CMD ["bash"]
# Wed, 11 Oct 2017 14:39:55 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 15:08:01 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-perception=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:aac43d4d6c83c61c78a7814ef7d2e02dc6c2f52dc110ff181aea144991711636`  
		Last Modified: Fri, 06 Oct 2017 22:13:46 GMT  
		Size: 43.4 MB (43426326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eed65d92515dfacf9a35d3301bc4847f1057d240f9ab3c442b573bdbb8452791`  
		Last Modified: Wed, 11 Oct 2017 14:03:45 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2de5574dca5eb5a1b9351c990c0865bbe18370da61e7169a539ba80bbdb058b2`  
		Last Modified: Wed, 11 Oct 2017 14:03:44 GMT  
		Size: 617.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5a76e352cce541b89ec31a527e09d2185c9427315f118b56573f79eb31b4c2b`  
		Last Modified: Wed, 11 Oct 2017 14:03:45 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2aceaacecb77ef3360c013ffcd305eecd6cf17a32bd143a72ca0b86b74721ba`  
		Last Modified: Wed, 11 Oct 2017 14:03:45 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df2b464ff94260bae09f2719a99368cdaf4e91cb4ac7f8292454419def5b6bb2`  
		Last Modified: Wed, 11 Oct 2017 15:42:12 GMT  
		Size: 4.8 MB (4819150 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:317f3f12586aa0432e4b41b4e01e1e59b1132bbf0cb8d0a8bec39998598cfc19`  
		Last Modified: Wed, 11 Oct 2017 15:42:04 GMT  
		Size: 13.1 KB (13087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d485a4030132f2b8618b2c1e9adeb0f3512ff862a371cbffb828825cd90b712`  
		Last Modified: Wed, 11 Oct 2017 15:42:02 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebe5f4f3df9287919c1ddc687c131a9235d6053e50879ffbdd2307364fe2784c`  
		Last Modified: Wed, 11 Oct 2017 15:43:00 GMT  
		Size: 52.3 MB (52342563 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:624ab9416f2027ffb47c0f23bc9805307660d34dc41b41bace605c5ee21025e3`  
		Last Modified: Wed, 11 Oct 2017 15:42:03 GMT  
		Size: 760.2 KB (760212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee34836a9ef73b7f0ac44bb3febcd37e3297ed71278f88766d54dd36697393f9`  
		Last Modified: Wed, 11 Oct 2017 15:43:51 GMT  
		Size: 173.9 MB (173908949 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b52cac267b67146f0bc3668dba08f98f3cbe6c14049ecf73fd639745f79378e1`  
		Last Modified: Wed, 11 Oct 2017 15:42:01 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a0eec5946a348abb10b86e745543a65458459d0455074b1bd9f84fc94087481`  
		Last Modified: Wed, 11 Oct 2017 15:44:22 GMT  
		Size: 4.8 MB (4768946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a426d8aa05561708cbe55d62473f76f2a352cb784a7240c8243c06cd04b3f935`  
		Last Modified: Wed, 11 Oct 2017 15:48:51 GMT  
		Size: 351.2 MB (351164381 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:kinetic-perception-jessie`

```console
$ docker pull ros@sha256:f9a0696edb86ed631036d536c13a0db74f26689baa5c4b9b83cbc42ed9b4bb70
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `ros:kinetic-perception-jessie` - linux; amd64

```console
$ docker pull ros@sha256:20f74809c9bd077ec753685e818c09c8dbd243653cffbac8f92441f58160391a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **579.4 MB (579428920 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:296a82eeba06b53b4fd631e83142e706edfb8b6e1bb52ef1a250aa4e0c8e851c`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 04 Nov 2017 05:21:35 GMT
ADD file:55b071e2cfc3ea2f4bbf048d7d676e3c06a77a9a98d63f7af291f3decb495ec8 in / 
# Sat, 04 Nov 2017 05:21:36 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 07:21:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 07:21:55 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 04 Nov 2017 07:21:56 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu jessie main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 04 Nov 2017 07:22:28 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 07:22:28 GMT
ENV LANG=C.UTF-8
# Sat, 04 Nov 2017 07:22:28 GMT
ENV LC_ALL=C.UTF-8
# Sat, 04 Nov 2017 07:22:38 GMT
RUN rosdep init     && rosdep update
# Sat, 04 Nov 2017 07:22:38 GMT
ENV ROS_DISTRO=kinetic
# Sat, 04 Nov 2017 07:24:33 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 07:24:35 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Sat, 04 Nov 2017 07:24:35 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 04 Nov 2017 07:24:35 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 07:25:11 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 07:29:42 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-perception=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:85b1f47fba49da65256f07c8790542a3880e9216f9c491965040f35ce2c6ca7a`  
		Last Modified: Mon, 09 Oct 2017 21:36:40 GMT  
		Size: 52.6 MB (52595124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3c0ae9a636a926e9bd468eb854e794ba7d7b9b5b83450a93d83f09b4d81a439`  
		Last Modified: Sat, 04 Nov 2017 08:09:05 GMT  
		Size: 33.8 MB (33762049 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b43dfed508eccd10a2cd98e1b7f0547c458f6090d31410d246d1e29733d66564`  
		Last Modified: Sat, 04 Nov 2017 08:08:48 GMT  
		Size: 1.4 KB (1426 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d33652d70832942c4dbfb9d842ccb32134497a71976008b4d0a40440264174b`  
		Last Modified: Sat, 04 Nov 2017 08:08:45 GMT  
		Size: 220.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:843b632622dfe4f0a078e1b7c9184f911928f51a68db654b081ff7d52d3a9095`  
		Last Modified: Sat, 04 Nov 2017 08:09:14 GMT  
		Size: 46.3 MB (46339112 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9beac456cab26649fc8c2c467dc1ce22187c499c5d26fede98f11b69d5646938`  
		Last Modified: Sat, 04 Nov 2017 08:08:46 GMT  
		Size: 766.3 KB (766309 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0febbfa2b96b1b3b4fb2125075b30ad0b66cf6cbd6bba652300b5f6adbb6e9b`  
		Last Modified: Sat, 04 Nov 2017 08:09:53 GMT  
		Size: 157.2 MB (157219096 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:891bf73adf927e962949e8319d2bea0d98db8cb88d68be9b60e8cccdabbe0442`  
		Last Modified: Sat, 04 Nov 2017 08:08:45 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f18a60295cf9ed6ef58f6639b2aff479fc44179c17e8b8e140e7f7fe9db5d594`  
		Last Modified: Sat, 04 Nov 2017 08:10:08 GMT  
		Size: 5.2 MB (5226253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4ebf16b0b17a91d9f07de9408218499fbff96a0fdfb364ba1a20349ffb722f3`  
		Last Modified: Sat, 04 Nov 2017 08:11:50 GMT  
		Size: 283.5 MB (283519137 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic-perception-jessie` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:aeea70a016853a6276f87ab441538ff2bf1daf2ac13770bea575a45984944ae8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **502.6 MB (502635497 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:82768816db3736b1b86df9d40c3464f1b29c53f55d5e447a1d476027cdefe03b`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:43:13 GMT
ADD file:1661271485aa5a1ca074498b8ca025f41e547bf2b33335b108d9aaa06717b2a5 in / 
# Mon, 09 Oct 2017 21:43:14 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 05:24:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 05:24:16 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 10 Oct 2017 05:24:18 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu jessie main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 10 Oct 2017 05:31:15 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 05:31:17 GMT
ENV LANG=C.UTF-8
# Tue, 10 Oct 2017 05:31:19 GMT
ENV LC_ALL=C.UTF-8
# Tue, 10 Oct 2017 05:32:03 GMT
RUN rosdep init     && rosdep update
# Tue, 10 Oct 2017 05:32:04 GMT
ENV ROS_DISTRO=kinetic
# Tue, 10 Oct 2017 05:42:01 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 05:42:16 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 10 Oct 2017 05:42:17 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 10 Oct 2017 05:42:18 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 05:43:49 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 06:07:18 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-perception=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:abcff42ba939437677463734d9b81de5e60df7354c734ee3ddd879c0d3d5d595`  
		Last Modified: Mon, 09 Oct 2017 21:52:08 GMT  
		Size: 49.9 MB (49929310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed53a0e32c1b2f2a67dbfad8623465e456ea2dcfd2f437519bc410ba7d4309e7`  
		Last Modified: Tue, 10 Oct 2017 06:56:43 GMT  
		Size: 32.1 MB (32144208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32418b9644e3e3bcaebd80cae720123c7e69300df6492f406d36fda986848f2d`  
		Last Modified: Tue, 10 Oct 2017 06:55:25 GMT  
		Size: 1.4 KB (1425 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7403be4847b73b2ed977eb3b1033568eacb60aa9311c46238dbfb252c36367e`  
		Last Modified: Tue, 10 Oct 2017 06:55:22 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42f8bc7346a1b1e5d6a0bfbf912f05b222f94ae8f5ad53459637940ed752bea3`  
		Last Modified: Tue, 10 Oct 2017 06:57:20 GMT  
		Size: 44.0 MB (44036516 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4aff210063002397f556b1e2a11a12603b996412e81c112d3005a186efe7b08`  
		Last Modified: Tue, 10 Oct 2017 06:55:25 GMT  
		Size: 760.2 KB (760214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92cd439c8e2df7fe2a14848eef1e8c2be800dcd3c23ed558ff192485b939579f`  
		Last Modified: Tue, 10 Oct 2017 06:58:10 GMT  
		Size: 130.5 MB (130498440 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50f3779df0d71b7db3d8c37939d122589ca167bb9dd80dafb6a03e63e4727c1a`  
		Last Modified: Tue, 10 Oct 2017 06:55:22 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f79e7f4a6b40c3fef37db2f055f377162d11accecb2d6269c91c41657f241b33`  
		Last Modified: Tue, 10 Oct 2017 06:58:51 GMT  
		Size: 5.1 MB (5062708 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:993f5e4b7ae8cd039dec643241f616896558c728d13bcec7cfa5804a3a1289ce`  
		Last Modified: Tue, 10 Oct 2017 07:01:05 GMT  
		Size: 240.2 MB (240202255 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:kinetic-perception-xenial`

```console
$ docker pull ros@sha256:777c6a29a3f6f2e1048a402c82c38585fa4bce4934d908198dda566edca5f4da
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:kinetic-perception-xenial` - linux; amd64

```console
$ docker pull ros@sha256:6caaa91a3451f68e32be6ecc24d77aa03ea8d84a9559eb95261ec1993a56988a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **695.4 MB (695411574 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cdf86a78878a8b4ba3e3b80b85ef3969844218d1ebc461c6b59657974136afcf`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 10 Oct 2017 20:59:02 GMT
ADD file:5b334adf9d9a2256add2a801b49d4b23c93b0973ec22bb798973d571c948f102 in / 
# Tue, 10 Oct 2017 20:59:02 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 10 Oct 2017 20:59:03 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 20:59:04 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 10 Oct 2017 20:59:04 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 10 Oct 2017 20:59:05 GMT
CMD ["/bin/bash"]
# Sat, 04 Nov 2017 07:12:14 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 07:12:15 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 04 Nov 2017 07:12:16 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 04 Nov 2017 07:12:56 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 07:12:57 GMT
ENV LANG=C.UTF-8
# Sat, 04 Nov 2017 07:12:57 GMT
ENV LC_ALL=C.UTF-8
# Sat, 04 Nov 2017 07:13:15 GMT
RUN rosdep init     && rosdep update
# Sat, 04 Nov 2017 07:13:16 GMT
ENV ROS_DISTRO=kinetic
# Sat, 04 Nov 2017 07:14:56 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 07:14:57 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Sat, 04 Nov 2017 07:14:58 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 04 Nov 2017 07:14:58 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 07:15:27 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 07:20:25 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-perception=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:ae79f251470513c2a0ec750117a81f2d58a50727901ca416efecf297b8a03913`  
		Last Modified: Fri, 06 Oct 2017 13:04:44 GMT  
		Size: 47.6 MB (47617129 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ad56d5fc14905886c560200ab69f905b5c5287eaf12f8f761a7ab54f7a61c1b`  
		Last Modified: Tue, 10 Oct 2017 21:00:10 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:170e558760e8b2e484a022b7d7272cf284fc4e1936ba7a0a671fc586440ad272`  
		Last Modified: Tue, 10 Oct 2017 21:00:10 GMT  
		Size: 618.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:395460e233f5bdcd910d618a3b615e0d881e09ad27d58f3065eef53ecae6a808`  
		Last Modified: Tue, 10 Oct 2017 21:00:10 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f01dc62e444044e3ce494269837ef0aedb80fef69c679416137f17812d2eb9c`  
		Last Modified: Tue, 10 Oct 2017 21:00:10 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e3204a200f68200aa306b9f7be4fbfc14ff2f445cc0684830dba2d3f62a3ef6`  
		Last Modified: Sat, 04 Nov 2017 08:03:44 GMT  
		Size: 5.4 MB (5362103 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb487289e44f75e32d15f3ec5c13ac4dc6edd76d2c9d80fe9cf2584b4fc63f15`  
		Last Modified: Sat, 04 Nov 2017 08:03:42 GMT  
		Size: 13.1 KB (13082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b0e83c3ea6c0a5b6670174d23e0dfa9fd811ee86a12d3df4e5388e4e358d9eb`  
		Last Modified: Sat, 04 Nov 2017 08:03:40 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9dc8b2534c2217471ca02fbc18444a32ebf3fae1db3d711b6f4fadd96bece45d`  
		Last Modified: Sat, 04 Nov 2017 08:04:09 GMT  
		Size: 55.5 MB (55498654 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19bb8c21845fd7cb0e6e034a39fbd9ad9f4251ec8f63eb997ec07247bd6e2955`  
		Last Modified: Sat, 04 Nov 2017 08:03:40 GMT  
		Size: 766.3 KB (766309 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04907208ced2bdddd4b38424de02f20bbae1620cbf2581387c16b6629d56dd6b`  
		Last Modified: Sat, 04 Nov 2017 08:04:44 GMT  
		Size: 193.3 MB (193305391 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:219f41b55655ed7b30c57b87a748ec92d2c87b6c03ab933fa54fb932dc990c0e`  
		Last Modified: Sat, 04 Nov 2017 08:03:40 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d3ca84eff49bd01c7084e3d49769bca7efb48904668a0de0f033e7bf5ab9b36`  
		Last Modified: Sat, 04 Nov 2017 08:05:03 GMT  
		Size: 4.9 MB (4915414 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:855b9aaee9e499be3cae2855dc3f21f4f92dfc8a67c6d9b5a8589b09fab35481`  
		Last Modified: Sat, 04 Nov 2017 08:08:27 GMT  
		Size: 387.9 MB (387930585 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic-perception-xenial` - linux; arm variant v7

```console
$ docker pull ros@sha256:630be5435f344784abd282f7a76cfaa1f4a4055143bbcf947eecd38b18cdfbf6
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **604.8 MB (604840316 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7c1e2f9cbb6b8f8726135fe54d8e8954a8c4a01f8b413c3546b05f0bacd09ef0`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 11 Oct 2017 12:51:12 GMT
ADD file:b8b49b959bf907b482bdc24c3c6f159f7aed1a3fb73e8efa669b12800635d25f in / 
# Wed, 11 Oct 2017 12:51:13 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 11 Oct 2017 12:51:14 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 12:51:14 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 11 Oct 2017 12:51:15 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 11 Oct 2017 12:51:15 GMT
CMD ["/bin/bash"]
# Wed, 11 Oct 2017 13:08:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 13:08:35 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 11 Oct 2017 13:08:39 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 11 Oct 2017 13:09:23 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 13:09:27 GMT
ENV LANG=C.UTF-8
# Wed, 11 Oct 2017 13:09:27 GMT
ENV LC_ALL=C.UTF-8
# Wed, 11 Oct 2017 13:09:51 GMT
RUN rosdep init     && rosdep update
# Wed, 11 Oct 2017 13:09:51 GMT
ENV ROS_DISTRO=kinetic
# Wed, 11 Oct 2017 13:11:04 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 13:11:06 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Wed, 11 Oct 2017 13:11:06 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 11 Oct 2017 13:11:07 GMT
CMD ["bash"]
# Wed, 11 Oct 2017 13:11:39 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 13:15:58 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-perception=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:26e5736d414450f12f7c066ff59a208e9ea9311407c91de898505d1adbf01527`  
		Last Modified: Wed, 11 Oct 2017 12:52:25 GMT  
		Size: 42.4 MB (42444579 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3b2d7804592854a106e4cb6a8decdc17f84ce86673c5331ae4be08f6ddf9667`  
		Last Modified: Wed, 11 Oct 2017 12:52:14 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1e6e6dfa0c41d49186e1ef4cf4409826020371a07bc3a6b5509bb23e7004701`  
		Last Modified: Wed, 11 Oct 2017 12:52:15 GMT  
		Size: 614.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8b298e101bd87bb479bd9d268470b3060526668473413ad16a992f5a70b9b69`  
		Last Modified: Wed, 11 Oct 2017 12:52:14 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5da5730e907c71f6dad2a93757f203cea7518145a8d979508503cb906926d549`  
		Last Modified: Wed, 11 Oct 2017 12:52:14 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d09fc16d09d114946c081433e97aa0ce1f0885b00ae8d90b146d5359a8216fe6`  
		Last Modified: Wed, 11 Oct 2017 13:22:25 GMT  
		Size: 4.6 MB (4613971 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c4838a49db06950f36a6a93c8e2cb59919afaa2b80cc8762c8c4eb24e74719f`  
		Last Modified: Wed, 11 Oct 2017 13:22:24 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:079f3b787a6e9a31ec800dda6c1dc7d81bc91726e4474210d6cbdffa6238816d`  
		Last Modified: Wed, 11 Oct 2017 13:22:22 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c661b84e7cbabc46a583c3613c95c982378c0be5a2a8ae7e572bd7578b816d0`  
		Last Modified: Wed, 11 Oct 2017 13:22:41 GMT  
		Size: 50.7 MB (50654517 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f475e2bfcce8aa8c733d291239817e99fe1eda5cabadd03cb3eb94f08f6603ca`  
		Last Modified: Wed, 11 Oct 2017 13:22:23 GMT  
		Size: 760.4 KB (760364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7b6ac49be3f812f73bf4b011ac7bdcca37d8723456bd4602b81cab4da90c79b`  
		Last Modified: Wed, 11 Oct 2017 13:23:12 GMT  
		Size: 164.7 MB (164689507 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3811c4529d480a164d6b1e539f1d419839a3db766229b4a0e5eabcef8ca46ffd`  
		Last Modified: Wed, 11 Oct 2017 13:22:23 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87135cc8a0f4f770058f0b7b6148800fa00164faf1d62ff91e35c6ca4352ef19`  
		Last Modified: Wed, 11 Oct 2017 13:23:30 GMT  
		Size: 4.5 MB (4472274 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eaa6e687cc6f10213fb6ac19c84e42cbd7f87a89c1ac63e003307b955a8a416b`  
		Last Modified: Wed, 11 Oct 2017 13:26:15 GMT  
		Size: 337.2 MB (337189123 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic-perception-xenial` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:1b433e8195bdad444763e46fc4bdb9ec66a6558a75bd61ac4d3a2a4c63bd1602
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **631.2 MB (631206522 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:189beadc42fb136995638939c9fcecdf429ec3157ed85c0fd809b0253a476bc1`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 11 Oct 2017 14:01:45 GMT
ADD file:17aebc392b3cf207dbe2809abd34b9eec60c3a0e8b39dcd04f8f29a863e966b3 in / 
# Wed, 11 Oct 2017 14:01:47 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 11 Oct 2017 14:01:49 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 14:01:50 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 11 Oct 2017 14:01:52 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 11 Oct 2017 14:01:52 GMT
CMD ["/bin/bash"]
# Wed, 11 Oct 2017 14:21:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 14:22:01 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 11 Oct 2017 14:22:11 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 11 Oct 2017 14:24:25 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 14:24:33 GMT
ENV LANG=C.UTF-8
# Wed, 11 Oct 2017 14:24:34 GMT
ENV LC_ALL=C.UTF-8
# Wed, 11 Oct 2017 14:25:14 GMT
RUN rosdep init     && rosdep update
# Wed, 11 Oct 2017 14:25:21 GMT
ENV ROS_DISTRO=kinetic
# Wed, 11 Oct 2017 14:38:32 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 14:38:36 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Wed, 11 Oct 2017 14:38:45 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 11 Oct 2017 14:38:46 GMT
CMD ["bash"]
# Wed, 11 Oct 2017 14:39:55 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 15:08:01 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-perception=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:aac43d4d6c83c61c78a7814ef7d2e02dc6c2f52dc110ff181aea144991711636`  
		Last Modified: Fri, 06 Oct 2017 22:13:46 GMT  
		Size: 43.4 MB (43426326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eed65d92515dfacf9a35d3301bc4847f1057d240f9ab3c442b573bdbb8452791`  
		Last Modified: Wed, 11 Oct 2017 14:03:45 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2de5574dca5eb5a1b9351c990c0865bbe18370da61e7169a539ba80bbdb058b2`  
		Last Modified: Wed, 11 Oct 2017 14:03:44 GMT  
		Size: 617.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5a76e352cce541b89ec31a527e09d2185c9427315f118b56573f79eb31b4c2b`  
		Last Modified: Wed, 11 Oct 2017 14:03:45 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2aceaacecb77ef3360c013ffcd305eecd6cf17a32bd143a72ca0b86b74721ba`  
		Last Modified: Wed, 11 Oct 2017 14:03:45 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df2b464ff94260bae09f2719a99368cdaf4e91cb4ac7f8292454419def5b6bb2`  
		Last Modified: Wed, 11 Oct 2017 15:42:12 GMT  
		Size: 4.8 MB (4819150 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:317f3f12586aa0432e4b41b4e01e1e59b1132bbf0cb8d0a8bec39998598cfc19`  
		Last Modified: Wed, 11 Oct 2017 15:42:04 GMT  
		Size: 13.1 KB (13087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d485a4030132f2b8618b2c1e9adeb0f3512ff862a371cbffb828825cd90b712`  
		Last Modified: Wed, 11 Oct 2017 15:42:02 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebe5f4f3df9287919c1ddc687c131a9235d6053e50879ffbdd2307364fe2784c`  
		Last Modified: Wed, 11 Oct 2017 15:43:00 GMT  
		Size: 52.3 MB (52342563 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:624ab9416f2027ffb47c0f23bc9805307660d34dc41b41bace605c5ee21025e3`  
		Last Modified: Wed, 11 Oct 2017 15:42:03 GMT  
		Size: 760.2 KB (760212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee34836a9ef73b7f0ac44bb3febcd37e3297ed71278f88766d54dd36697393f9`  
		Last Modified: Wed, 11 Oct 2017 15:43:51 GMT  
		Size: 173.9 MB (173908949 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b52cac267b67146f0bc3668dba08f98f3cbe6c14049ecf73fd639745f79378e1`  
		Last Modified: Wed, 11 Oct 2017 15:42:01 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a0eec5946a348abb10b86e745543a65458459d0455074b1bd9f84fc94087481`  
		Last Modified: Wed, 11 Oct 2017 15:44:22 GMT  
		Size: 4.8 MB (4768946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a426d8aa05561708cbe55d62473f76f2a352cb784a7240c8243c06cd04b3f935`  
		Last Modified: Wed, 11 Oct 2017 15:48:51 GMT  
		Size: 351.2 MB (351164381 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:kinetic-robot`

```console
$ docker pull ros@sha256:3b24b265948e8c563822941dbd81cc06652beb88ed69ee98d2de0f95c044b67f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:kinetic-robot` - linux; amd64

```console
$ docker pull ros@sha256:c8b34459f714eded9b4d92fa36d3d4d9bf6df5338083430e5b51c44c6c06205d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **446.8 MB (446814012 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7400e05a1a39cbe1dbeacbc5d7ac5bdafeb744d67932e5c373e4d4284e5cbc23`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 10 Oct 2017 20:59:02 GMT
ADD file:5b334adf9d9a2256add2a801b49d4b23c93b0973ec22bb798973d571c948f102 in / 
# Tue, 10 Oct 2017 20:59:02 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 10 Oct 2017 20:59:03 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 20:59:04 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 10 Oct 2017 20:59:04 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 10 Oct 2017 20:59:05 GMT
CMD ["/bin/bash"]
# Sat, 04 Nov 2017 07:12:14 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 07:12:15 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 04 Nov 2017 07:12:16 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 04 Nov 2017 07:12:56 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 07:12:57 GMT
ENV LANG=C.UTF-8
# Sat, 04 Nov 2017 07:12:57 GMT
ENV LC_ALL=C.UTF-8
# Sat, 04 Nov 2017 07:13:15 GMT
RUN rosdep init     && rosdep update
# Sat, 04 Nov 2017 07:13:16 GMT
ENV ROS_DISTRO=kinetic
# Sat, 04 Nov 2017 07:14:56 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 07:14:57 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Sat, 04 Nov 2017 07:14:58 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 04 Nov 2017 07:14:58 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 07:15:27 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 07:17:07 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-robot=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:ae79f251470513c2a0ec750117a81f2d58a50727901ca416efecf297b8a03913`  
		Last Modified: Fri, 06 Oct 2017 13:04:44 GMT  
		Size: 47.6 MB (47617129 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ad56d5fc14905886c560200ab69f905b5c5287eaf12f8f761a7ab54f7a61c1b`  
		Last Modified: Tue, 10 Oct 2017 21:00:10 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:170e558760e8b2e484a022b7d7272cf284fc4e1936ba7a0a671fc586440ad272`  
		Last Modified: Tue, 10 Oct 2017 21:00:10 GMT  
		Size: 618.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:395460e233f5bdcd910d618a3b615e0d881e09ad27d58f3065eef53ecae6a808`  
		Last Modified: Tue, 10 Oct 2017 21:00:10 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f01dc62e444044e3ce494269837ef0aedb80fef69c679416137f17812d2eb9c`  
		Last Modified: Tue, 10 Oct 2017 21:00:10 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e3204a200f68200aa306b9f7be4fbfc14ff2f445cc0684830dba2d3f62a3ef6`  
		Last Modified: Sat, 04 Nov 2017 08:03:44 GMT  
		Size: 5.4 MB (5362103 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb487289e44f75e32d15f3ec5c13ac4dc6edd76d2c9d80fe9cf2584b4fc63f15`  
		Last Modified: Sat, 04 Nov 2017 08:03:42 GMT  
		Size: 13.1 KB (13082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b0e83c3ea6c0a5b6670174d23e0dfa9fd811ee86a12d3df4e5388e4e358d9eb`  
		Last Modified: Sat, 04 Nov 2017 08:03:40 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9dc8b2534c2217471ca02fbc18444a32ebf3fae1db3d711b6f4fadd96bece45d`  
		Last Modified: Sat, 04 Nov 2017 08:04:09 GMT  
		Size: 55.5 MB (55498654 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19bb8c21845fd7cb0e6e034a39fbd9ad9f4251ec8f63eb997ec07247bd6e2955`  
		Last Modified: Sat, 04 Nov 2017 08:03:40 GMT  
		Size: 766.3 KB (766309 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04907208ced2bdddd4b38424de02f20bbae1620cbf2581387c16b6629d56dd6b`  
		Last Modified: Sat, 04 Nov 2017 08:04:44 GMT  
		Size: 193.3 MB (193305391 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:219f41b55655ed7b30c57b87a748ec92d2c87b6c03ab933fa54fb932dc990c0e`  
		Last Modified: Sat, 04 Nov 2017 08:03:40 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d3ca84eff49bd01c7084e3d49769bca7efb48904668a0de0f033e7bf5ab9b36`  
		Last Modified: Sat, 04 Nov 2017 08:05:03 GMT  
		Size: 4.9 MB (4915414 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d69f6b1abe8c26e55e8388ebf26d8ed9adc368933859239e805a9ce90717959`  
		Last Modified: Sat, 04 Nov 2017 08:06:15 GMT  
		Size: 139.3 MB (139333023 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic-robot` - linux; arm variant v7

```console
$ docker pull ros@sha256:df121277676c6a035b0906d183e9cabdcad58e0b71e556efd234c6c5efb74624
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **389.3 MB (389306741 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8c1ada52fa4185a7e7f66dd2ae17f5a4df1d3956356b05031efc261c953da968`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 11 Oct 2017 12:51:12 GMT
ADD file:b8b49b959bf907b482bdc24c3c6f159f7aed1a3fb73e8efa669b12800635d25f in / 
# Wed, 11 Oct 2017 12:51:13 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 11 Oct 2017 12:51:14 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 12:51:14 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 11 Oct 2017 12:51:15 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 11 Oct 2017 12:51:15 GMT
CMD ["/bin/bash"]
# Wed, 11 Oct 2017 13:08:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 13:08:35 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 11 Oct 2017 13:08:39 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 11 Oct 2017 13:09:23 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 13:09:27 GMT
ENV LANG=C.UTF-8
# Wed, 11 Oct 2017 13:09:27 GMT
ENV LC_ALL=C.UTF-8
# Wed, 11 Oct 2017 13:09:51 GMT
RUN rosdep init     && rosdep update
# Wed, 11 Oct 2017 13:09:51 GMT
ENV ROS_DISTRO=kinetic
# Wed, 11 Oct 2017 13:11:04 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 13:11:06 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Wed, 11 Oct 2017 13:11:06 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 11 Oct 2017 13:11:07 GMT
CMD ["bash"]
# Wed, 11 Oct 2017 13:11:39 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 13:12:55 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-robot=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:26e5736d414450f12f7c066ff59a208e9ea9311407c91de898505d1adbf01527`  
		Last Modified: Wed, 11 Oct 2017 12:52:25 GMT  
		Size: 42.4 MB (42444579 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3b2d7804592854a106e4cb6a8decdc17f84ce86673c5331ae4be08f6ddf9667`  
		Last Modified: Wed, 11 Oct 2017 12:52:14 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1e6e6dfa0c41d49186e1ef4cf4409826020371a07bc3a6b5509bb23e7004701`  
		Last Modified: Wed, 11 Oct 2017 12:52:15 GMT  
		Size: 614.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8b298e101bd87bb479bd9d268470b3060526668473413ad16a992f5a70b9b69`  
		Last Modified: Wed, 11 Oct 2017 12:52:14 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5da5730e907c71f6dad2a93757f203cea7518145a8d979508503cb906926d549`  
		Last Modified: Wed, 11 Oct 2017 12:52:14 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d09fc16d09d114946c081433e97aa0ce1f0885b00ae8d90b146d5359a8216fe6`  
		Last Modified: Wed, 11 Oct 2017 13:22:25 GMT  
		Size: 4.6 MB (4613971 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c4838a49db06950f36a6a93c8e2cb59919afaa2b80cc8762c8c4eb24e74719f`  
		Last Modified: Wed, 11 Oct 2017 13:22:24 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:079f3b787a6e9a31ec800dda6c1dc7d81bc91726e4474210d6cbdffa6238816d`  
		Last Modified: Wed, 11 Oct 2017 13:22:22 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c661b84e7cbabc46a583c3613c95c982378c0be5a2a8ae7e572bd7578b816d0`  
		Last Modified: Wed, 11 Oct 2017 13:22:41 GMT  
		Size: 50.7 MB (50654517 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f475e2bfcce8aa8c733d291239817e99fe1eda5cabadd03cb3eb94f08f6603ca`  
		Last Modified: Wed, 11 Oct 2017 13:22:23 GMT  
		Size: 760.4 KB (760364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7b6ac49be3f812f73bf4b011ac7bdcca37d8723456bd4602b81cab4da90c79b`  
		Last Modified: Wed, 11 Oct 2017 13:23:12 GMT  
		Size: 164.7 MB (164689507 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3811c4529d480a164d6b1e539f1d419839a3db766229b4a0e5eabcef8ca46ffd`  
		Last Modified: Wed, 11 Oct 2017 13:22:23 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87135cc8a0f4f770058f0b7b6148800fa00164faf1d62ff91e35c6ca4352ef19`  
		Last Modified: Wed, 11 Oct 2017 13:23:30 GMT  
		Size: 4.5 MB (4472274 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:676b5d2b82c50fe46b0d86a23499dbe6cdf8266b63c9450c762833d2b1c27cf9`  
		Last Modified: Wed, 11 Oct 2017 13:24:30 GMT  
		Size: 121.7 MB (121655548 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic-robot` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:beed036ab5ea2e10d925258ec1ad8cbd4605ff2eb891b9d67388251f9a244462
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **405.7 MB (405749714 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9c8d43832f7e605cc10cbdd3404c0f53e2b35a78bfe21818ebfbe69bd9162a84`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 11 Oct 2017 14:01:45 GMT
ADD file:17aebc392b3cf207dbe2809abd34b9eec60c3a0e8b39dcd04f8f29a863e966b3 in / 
# Wed, 11 Oct 2017 14:01:47 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 11 Oct 2017 14:01:49 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 14:01:50 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 11 Oct 2017 14:01:52 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 11 Oct 2017 14:01:52 GMT
CMD ["/bin/bash"]
# Wed, 11 Oct 2017 14:21:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 14:22:01 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 11 Oct 2017 14:22:11 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 11 Oct 2017 14:24:25 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 14:24:33 GMT
ENV LANG=C.UTF-8
# Wed, 11 Oct 2017 14:24:34 GMT
ENV LC_ALL=C.UTF-8
# Wed, 11 Oct 2017 14:25:14 GMT
RUN rosdep init     && rosdep update
# Wed, 11 Oct 2017 14:25:21 GMT
ENV ROS_DISTRO=kinetic
# Wed, 11 Oct 2017 14:38:32 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 14:38:36 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Wed, 11 Oct 2017 14:38:45 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 11 Oct 2017 14:38:46 GMT
CMD ["bash"]
# Wed, 11 Oct 2017 14:39:55 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 14:52:01 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-robot=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:aac43d4d6c83c61c78a7814ef7d2e02dc6c2f52dc110ff181aea144991711636`  
		Last Modified: Fri, 06 Oct 2017 22:13:46 GMT  
		Size: 43.4 MB (43426326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eed65d92515dfacf9a35d3301bc4847f1057d240f9ab3c442b573bdbb8452791`  
		Last Modified: Wed, 11 Oct 2017 14:03:45 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2de5574dca5eb5a1b9351c990c0865bbe18370da61e7169a539ba80bbdb058b2`  
		Last Modified: Wed, 11 Oct 2017 14:03:44 GMT  
		Size: 617.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5a76e352cce541b89ec31a527e09d2185c9427315f118b56573f79eb31b4c2b`  
		Last Modified: Wed, 11 Oct 2017 14:03:45 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2aceaacecb77ef3360c013ffcd305eecd6cf17a32bd143a72ca0b86b74721ba`  
		Last Modified: Wed, 11 Oct 2017 14:03:45 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df2b464ff94260bae09f2719a99368cdaf4e91cb4ac7f8292454419def5b6bb2`  
		Last Modified: Wed, 11 Oct 2017 15:42:12 GMT  
		Size: 4.8 MB (4819150 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:317f3f12586aa0432e4b41b4e01e1e59b1132bbf0cb8d0a8bec39998598cfc19`  
		Last Modified: Wed, 11 Oct 2017 15:42:04 GMT  
		Size: 13.1 KB (13087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d485a4030132f2b8618b2c1e9adeb0f3512ff862a371cbffb828825cd90b712`  
		Last Modified: Wed, 11 Oct 2017 15:42:02 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebe5f4f3df9287919c1ddc687c131a9235d6053e50879ffbdd2307364fe2784c`  
		Last Modified: Wed, 11 Oct 2017 15:43:00 GMT  
		Size: 52.3 MB (52342563 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:624ab9416f2027ffb47c0f23bc9805307660d34dc41b41bace605c5ee21025e3`  
		Last Modified: Wed, 11 Oct 2017 15:42:03 GMT  
		Size: 760.2 KB (760212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee34836a9ef73b7f0ac44bb3febcd37e3297ed71278f88766d54dd36697393f9`  
		Last Modified: Wed, 11 Oct 2017 15:43:51 GMT  
		Size: 173.9 MB (173908949 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b52cac267b67146f0bc3668dba08f98f3cbe6c14049ecf73fd639745f79378e1`  
		Last Modified: Wed, 11 Oct 2017 15:42:01 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a0eec5946a348abb10b86e745543a65458459d0455074b1bd9f84fc94087481`  
		Last Modified: Wed, 11 Oct 2017 15:44:22 GMT  
		Size: 4.8 MB (4768946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d40f427c62b342e3cf70774e8a44a468e407aaf9eaefc258dbe454f52783f6b`  
		Last Modified: Wed, 11 Oct 2017 15:46:14 GMT  
		Size: 125.7 MB (125707573 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:kinetic-robot-jessie`

```console
$ docker pull ros@sha256:0d111e2f616084c3edf3a52476c262bc74d6466dc3d3be26bffbd81bc05eb4c7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `ros:kinetic-robot-jessie` - linux; amd64

```console
$ docker pull ros@sha256:b529b20341b4a674ce6914ccd6a238bb3cb6f7400f1c30c49dad2e0e5bd48a2d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **377.8 MB (377835594 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:76148ea2ead4e2c8dfc07b7cdd2c7b5d225054f181c4dc96572143da2e47171a`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 04 Nov 2017 05:21:35 GMT
ADD file:55b071e2cfc3ea2f4bbf048d7d676e3c06a77a9a98d63f7af291f3decb495ec8 in / 
# Sat, 04 Nov 2017 05:21:36 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 07:21:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 07:21:55 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 04 Nov 2017 07:21:56 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu jessie main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 04 Nov 2017 07:22:28 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 07:22:28 GMT
ENV LANG=C.UTF-8
# Sat, 04 Nov 2017 07:22:28 GMT
ENV LC_ALL=C.UTF-8
# Sat, 04 Nov 2017 07:22:38 GMT
RUN rosdep init     && rosdep update
# Sat, 04 Nov 2017 07:22:38 GMT
ENV ROS_DISTRO=kinetic
# Sat, 04 Nov 2017 07:24:33 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 07:24:35 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Sat, 04 Nov 2017 07:24:35 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 04 Nov 2017 07:24:35 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 07:25:11 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 07:26:19 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-robot=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:85b1f47fba49da65256f07c8790542a3880e9216f9c491965040f35ce2c6ca7a`  
		Last Modified: Mon, 09 Oct 2017 21:36:40 GMT  
		Size: 52.6 MB (52595124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3c0ae9a636a926e9bd468eb854e794ba7d7b9b5b83450a93d83f09b4d81a439`  
		Last Modified: Sat, 04 Nov 2017 08:09:05 GMT  
		Size: 33.8 MB (33762049 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b43dfed508eccd10a2cd98e1b7f0547c458f6090d31410d246d1e29733d66564`  
		Last Modified: Sat, 04 Nov 2017 08:08:48 GMT  
		Size: 1.4 KB (1426 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d33652d70832942c4dbfb9d842ccb32134497a71976008b4d0a40440264174b`  
		Last Modified: Sat, 04 Nov 2017 08:08:45 GMT  
		Size: 220.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:843b632622dfe4f0a078e1b7c9184f911928f51a68db654b081ff7d52d3a9095`  
		Last Modified: Sat, 04 Nov 2017 08:09:14 GMT  
		Size: 46.3 MB (46339112 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9beac456cab26649fc8c2c467dc1ce22187c499c5d26fede98f11b69d5646938`  
		Last Modified: Sat, 04 Nov 2017 08:08:46 GMT  
		Size: 766.3 KB (766309 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0febbfa2b96b1b3b4fb2125075b30ad0b66cf6cbd6bba652300b5f6adbb6e9b`  
		Last Modified: Sat, 04 Nov 2017 08:09:53 GMT  
		Size: 157.2 MB (157219096 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:891bf73adf927e962949e8319d2bea0d98db8cb88d68be9b60e8cccdabbe0442`  
		Last Modified: Sat, 04 Nov 2017 08:08:45 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f18a60295cf9ed6ef58f6639b2aff479fc44179c17e8b8e140e7f7fe9db5d594`  
		Last Modified: Sat, 04 Nov 2017 08:10:08 GMT  
		Size: 5.2 MB (5226253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1b0b3c59ea44eebbab81c23854853152b44013fc4760db63fe6864c5787e9c1`  
		Last Modified: Sat, 04 Nov 2017 08:10:43 GMT  
		Size: 81.9 MB (81925811 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic-robot-jessie` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:2faa9707586a2b668be8c1a30536b599d33ec20cbc8ebde54b8a9671880effbd
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **327.3 MB (327304432 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6b102cd92b1b9a05b80e02c26348a2e883f5e92465ff2bf56a36687e25c1012e`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:43:13 GMT
ADD file:1661271485aa5a1ca074498b8ca025f41e547bf2b33335b108d9aaa06717b2a5 in / 
# Mon, 09 Oct 2017 21:43:14 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 05:24:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 05:24:16 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 10 Oct 2017 05:24:18 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu jessie main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 10 Oct 2017 05:31:15 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 05:31:17 GMT
ENV LANG=C.UTF-8
# Tue, 10 Oct 2017 05:31:19 GMT
ENV LC_ALL=C.UTF-8
# Tue, 10 Oct 2017 05:32:03 GMT
RUN rosdep init     && rosdep update
# Tue, 10 Oct 2017 05:32:04 GMT
ENV ROS_DISTRO=kinetic
# Tue, 10 Oct 2017 05:42:01 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 05:42:16 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 10 Oct 2017 05:42:17 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 10 Oct 2017 05:42:18 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 05:43:49 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 05:50:48 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-robot=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:abcff42ba939437677463734d9b81de5e60df7354c734ee3ddd879c0d3d5d595`  
		Last Modified: Mon, 09 Oct 2017 21:52:08 GMT  
		Size: 49.9 MB (49929310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed53a0e32c1b2f2a67dbfad8623465e456ea2dcfd2f437519bc410ba7d4309e7`  
		Last Modified: Tue, 10 Oct 2017 06:56:43 GMT  
		Size: 32.1 MB (32144208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32418b9644e3e3bcaebd80cae720123c7e69300df6492f406d36fda986848f2d`  
		Last Modified: Tue, 10 Oct 2017 06:55:25 GMT  
		Size: 1.4 KB (1425 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7403be4847b73b2ed977eb3b1033568eacb60aa9311c46238dbfb252c36367e`  
		Last Modified: Tue, 10 Oct 2017 06:55:22 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42f8bc7346a1b1e5d6a0bfbf912f05b222f94ae8f5ad53459637940ed752bea3`  
		Last Modified: Tue, 10 Oct 2017 06:57:20 GMT  
		Size: 44.0 MB (44036516 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4aff210063002397f556b1e2a11a12603b996412e81c112d3005a186efe7b08`  
		Last Modified: Tue, 10 Oct 2017 06:55:25 GMT  
		Size: 760.2 KB (760214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92cd439c8e2df7fe2a14848eef1e8c2be800dcd3c23ed558ff192485b939579f`  
		Last Modified: Tue, 10 Oct 2017 06:58:10 GMT  
		Size: 130.5 MB (130498440 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50f3779df0d71b7db3d8c37939d122589ca167bb9dd80dafb6a03e63e4727c1a`  
		Last Modified: Tue, 10 Oct 2017 06:55:22 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f79e7f4a6b40c3fef37db2f055f377162d11accecb2d6269c91c41657f241b33`  
		Last Modified: Tue, 10 Oct 2017 06:58:51 GMT  
		Size: 5.1 MB (5062708 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29f45091a1817e9f4797836f2e28a76408756eadb10f8bd3f173cefc78f40637`  
		Last Modified: Tue, 10 Oct 2017 06:59:30 GMT  
		Size: 64.9 MB (64871190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:kinetic-robot-xenial`

```console
$ docker pull ros@sha256:3b24b265948e8c563822941dbd81cc06652beb88ed69ee98d2de0f95c044b67f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:kinetic-robot-xenial` - linux; amd64

```console
$ docker pull ros@sha256:c8b34459f714eded9b4d92fa36d3d4d9bf6df5338083430e5b51c44c6c06205d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **446.8 MB (446814012 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7400e05a1a39cbe1dbeacbc5d7ac5bdafeb744d67932e5c373e4d4284e5cbc23`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 10 Oct 2017 20:59:02 GMT
ADD file:5b334adf9d9a2256add2a801b49d4b23c93b0973ec22bb798973d571c948f102 in / 
# Tue, 10 Oct 2017 20:59:02 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 10 Oct 2017 20:59:03 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 20:59:04 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 10 Oct 2017 20:59:04 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 10 Oct 2017 20:59:05 GMT
CMD ["/bin/bash"]
# Sat, 04 Nov 2017 07:12:14 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 07:12:15 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 04 Nov 2017 07:12:16 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 04 Nov 2017 07:12:56 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 07:12:57 GMT
ENV LANG=C.UTF-8
# Sat, 04 Nov 2017 07:12:57 GMT
ENV LC_ALL=C.UTF-8
# Sat, 04 Nov 2017 07:13:15 GMT
RUN rosdep init     && rosdep update
# Sat, 04 Nov 2017 07:13:16 GMT
ENV ROS_DISTRO=kinetic
# Sat, 04 Nov 2017 07:14:56 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 07:14:57 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Sat, 04 Nov 2017 07:14:58 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 04 Nov 2017 07:14:58 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 07:15:27 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 07:17:07 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-robot=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:ae79f251470513c2a0ec750117a81f2d58a50727901ca416efecf297b8a03913`  
		Last Modified: Fri, 06 Oct 2017 13:04:44 GMT  
		Size: 47.6 MB (47617129 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ad56d5fc14905886c560200ab69f905b5c5287eaf12f8f761a7ab54f7a61c1b`  
		Last Modified: Tue, 10 Oct 2017 21:00:10 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:170e558760e8b2e484a022b7d7272cf284fc4e1936ba7a0a671fc586440ad272`  
		Last Modified: Tue, 10 Oct 2017 21:00:10 GMT  
		Size: 618.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:395460e233f5bdcd910d618a3b615e0d881e09ad27d58f3065eef53ecae6a808`  
		Last Modified: Tue, 10 Oct 2017 21:00:10 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f01dc62e444044e3ce494269837ef0aedb80fef69c679416137f17812d2eb9c`  
		Last Modified: Tue, 10 Oct 2017 21:00:10 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e3204a200f68200aa306b9f7be4fbfc14ff2f445cc0684830dba2d3f62a3ef6`  
		Last Modified: Sat, 04 Nov 2017 08:03:44 GMT  
		Size: 5.4 MB (5362103 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb487289e44f75e32d15f3ec5c13ac4dc6edd76d2c9d80fe9cf2584b4fc63f15`  
		Last Modified: Sat, 04 Nov 2017 08:03:42 GMT  
		Size: 13.1 KB (13082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b0e83c3ea6c0a5b6670174d23e0dfa9fd811ee86a12d3df4e5388e4e358d9eb`  
		Last Modified: Sat, 04 Nov 2017 08:03:40 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9dc8b2534c2217471ca02fbc18444a32ebf3fae1db3d711b6f4fadd96bece45d`  
		Last Modified: Sat, 04 Nov 2017 08:04:09 GMT  
		Size: 55.5 MB (55498654 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19bb8c21845fd7cb0e6e034a39fbd9ad9f4251ec8f63eb997ec07247bd6e2955`  
		Last Modified: Sat, 04 Nov 2017 08:03:40 GMT  
		Size: 766.3 KB (766309 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04907208ced2bdddd4b38424de02f20bbae1620cbf2581387c16b6629d56dd6b`  
		Last Modified: Sat, 04 Nov 2017 08:04:44 GMT  
		Size: 193.3 MB (193305391 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:219f41b55655ed7b30c57b87a748ec92d2c87b6c03ab933fa54fb932dc990c0e`  
		Last Modified: Sat, 04 Nov 2017 08:03:40 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d3ca84eff49bd01c7084e3d49769bca7efb48904668a0de0f033e7bf5ab9b36`  
		Last Modified: Sat, 04 Nov 2017 08:05:03 GMT  
		Size: 4.9 MB (4915414 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d69f6b1abe8c26e55e8388ebf26d8ed9adc368933859239e805a9ce90717959`  
		Last Modified: Sat, 04 Nov 2017 08:06:15 GMT  
		Size: 139.3 MB (139333023 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic-robot-xenial` - linux; arm variant v7

```console
$ docker pull ros@sha256:df121277676c6a035b0906d183e9cabdcad58e0b71e556efd234c6c5efb74624
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **389.3 MB (389306741 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8c1ada52fa4185a7e7f66dd2ae17f5a4df1d3956356b05031efc261c953da968`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 11 Oct 2017 12:51:12 GMT
ADD file:b8b49b959bf907b482bdc24c3c6f159f7aed1a3fb73e8efa669b12800635d25f in / 
# Wed, 11 Oct 2017 12:51:13 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 11 Oct 2017 12:51:14 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 12:51:14 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 11 Oct 2017 12:51:15 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 11 Oct 2017 12:51:15 GMT
CMD ["/bin/bash"]
# Wed, 11 Oct 2017 13:08:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 13:08:35 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 11 Oct 2017 13:08:39 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 11 Oct 2017 13:09:23 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 13:09:27 GMT
ENV LANG=C.UTF-8
# Wed, 11 Oct 2017 13:09:27 GMT
ENV LC_ALL=C.UTF-8
# Wed, 11 Oct 2017 13:09:51 GMT
RUN rosdep init     && rosdep update
# Wed, 11 Oct 2017 13:09:51 GMT
ENV ROS_DISTRO=kinetic
# Wed, 11 Oct 2017 13:11:04 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 13:11:06 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Wed, 11 Oct 2017 13:11:06 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 11 Oct 2017 13:11:07 GMT
CMD ["bash"]
# Wed, 11 Oct 2017 13:11:39 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 13:12:55 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-robot=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:26e5736d414450f12f7c066ff59a208e9ea9311407c91de898505d1adbf01527`  
		Last Modified: Wed, 11 Oct 2017 12:52:25 GMT  
		Size: 42.4 MB (42444579 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3b2d7804592854a106e4cb6a8decdc17f84ce86673c5331ae4be08f6ddf9667`  
		Last Modified: Wed, 11 Oct 2017 12:52:14 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1e6e6dfa0c41d49186e1ef4cf4409826020371a07bc3a6b5509bb23e7004701`  
		Last Modified: Wed, 11 Oct 2017 12:52:15 GMT  
		Size: 614.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8b298e101bd87bb479bd9d268470b3060526668473413ad16a992f5a70b9b69`  
		Last Modified: Wed, 11 Oct 2017 12:52:14 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5da5730e907c71f6dad2a93757f203cea7518145a8d979508503cb906926d549`  
		Last Modified: Wed, 11 Oct 2017 12:52:14 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d09fc16d09d114946c081433e97aa0ce1f0885b00ae8d90b146d5359a8216fe6`  
		Last Modified: Wed, 11 Oct 2017 13:22:25 GMT  
		Size: 4.6 MB (4613971 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c4838a49db06950f36a6a93c8e2cb59919afaa2b80cc8762c8c4eb24e74719f`  
		Last Modified: Wed, 11 Oct 2017 13:22:24 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:079f3b787a6e9a31ec800dda6c1dc7d81bc91726e4474210d6cbdffa6238816d`  
		Last Modified: Wed, 11 Oct 2017 13:22:22 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c661b84e7cbabc46a583c3613c95c982378c0be5a2a8ae7e572bd7578b816d0`  
		Last Modified: Wed, 11 Oct 2017 13:22:41 GMT  
		Size: 50.7 MB (50654517 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f475e2bfcce8aa8c733d291239817e99fe1eda5cabadd03cb3eb94f08f6603ca`  
		Last Modified: Wed, 11 Oct 2017 13:22:23 GMT  
		Size: 760.4 KB (760364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7b6ac49be3f812f73bf4b011ac7bdcca37d8723456bd4602b81cab4da90c79b`  
		Last Modified: Wed, 11 Oct 2017 13:23:12 GMT  
		Size: 164.7 MB (164689507 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3811c4529d480a164d6b1e539f1d419839a3db766229b4a0e5eabcef8ca46ffd`  
		Last Modified: Wed, 11 Oct 2017 13:22:23 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87135cc8a0f4f770058f0b7b6148800fa00164faf1d62ff91e35c6ca4352ef19`  
		Last Modified: Wed, 11 Oct 2017 13:23:30 GMT  
		Size: 4.5 MB (4472274 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:676b5d2b82c50fe46b0d86a23499dbe6cdf8266b63c9450c762833d2b1c27cf9`  
		Last Modified: Wed, 11 Oct 2017 13:24:30 GMT  
		Size: 121.7 MB (121655548 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic-robot-xenial` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:beed036ab5ea2e10d925258ec1ad8cbd4605ff2eb891b9d67388251f9a244462
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **405.7 MB (405749714 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9c8d43832f7e605cc10cbdd3404c0f53e2b35a78bfe21818ebfbe69bd9162a84`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 11 Oct 2017 14:01:45 GMT
ADD file:17aebc392b3cf207dbe2809abd34b9eec60c3a0e8b39dcd04f8f29a863e966b3 in / 
# Wed, 11 Oct 2017 14:01:47 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 11 Oct 2017 14:01:49 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 14:01:50 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 11 Oct 2017 14:01:52 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 11 Oct 2017 14:01:52 GMT
CMD ["/bin/bash"]
# Wed, 11 Oct 2017 14:21:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 14:22:01 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 11 Oct 2017 14:22:11 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 11 Oct 2017 14:24:25 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 14:24:33 GMT
ENV LANG=C.UTF-8
# Wed, 11 Oct 2017 14:24:34 GMT
ENV LC_ALL=C.UTF-8
# Wed, 11 Oct 2017 14:25:14 GMT
RUN rosdep init     && rosdep update
# Wed, 11 Oct 2017 14:25:21 GMT
ENV ROS_DISTRO=kinetic
# Wed, 11 Oct 2017 14:38:32 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 14:38:36 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Wed, 11 Oct 2017 14:38:45 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 11 Oct 2017 14:38:46 GMT
CMD ["bash"]
# Wed, 11 Oct 2017 14:39:55 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 14:52:01 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-robot=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:aac43d4d6c83c61c78a7814ef7d2e02dc6c2f52dc110ff181aea144991711636`  
		Last Modified: Fri, 06 Oct 2017 22:13:46 GMT  
		Size: 43.4 MB (43426326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eed65d92515dfacf9a35d3301bc4847f1057d240f9ab3c442b573bdbb8452791`  
		Last Modified: Wed, 11 Oct 2017 14:03:45 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2de5574dca5eb5a1b9351c990c0865bbe18370da61e7169a539ba80bbdb058b2`  
		Last Modified: Wed, 11 Oct 2017 14:03:44 GMT  
		Size: 617.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5a76e352cce541b89ec31a527e09d2185c9427315f118b56573f79eb31b4c2b`  
		Last Modified: Wed, 11 Oct 2017 14:03:45 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2aceaacecb77ef3360c013ffcd305eecd6cf17a32bd143a72ca0b86b74721ba`  
		Last Modified: Wed, 11 Oct 2017 14:03:45 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df2b464ff94260bae09f2719a99368cdaf4e91cb4ac7f8292454419def5b6bb2`  
		Last Modified: Wed, 11 Oct 2017 15:42:12 GMT  
		Size: 4.8 MB (4819150 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:317f3f12586aa0432e4b41b4e01e1e59b1132bbf0cb8d0a8bec39998598cfc19`  
		Last Modified: Wed, 11 Oct 2017 15:42:04 GMT  
		Size: 13.1 KB (13087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d485a4030132f2b8618b2c1e9adeb0f3512ff862a371cbffb828825cd90b712`  
		Last Modified: Wed, 11 Oct 2017 15:42:02 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebe5f4f3df9287919c1ddc687c131a9235d6053e50879ffbdd2307364fe2784c`  
		Last Modified: Wed, 11 Oct 2017 15:43:00 GMT  
		Size: 52.3 MB (52342563 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:624ab9416f2027ffb47c0f23bc9805307660d34dc41b41bace605c5ee21025e3`  
		Last Modified: Wed, 11 Oct 2017 15:42:03 GMT  
		Size: 760.2 KB (760212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee34836a9ef73b7f0ac44bb3febcd37e3297ed71278f88766d54dd36697393f9`  
		Last Modified: Wed, 11 Oct 2017 15:43:51 GMT  
		Size: 173.9 MB (173908949 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b52cac267b67146f0bc3668dba08f98f3cbe6c14049ecf73fd639745f79378e1`  
		Last Modified: Wed, 11 Oct 2017 15:42:01 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a0eec5946a348abb10b86e745543a65458459d0455074b1bd9f84fc94087481`  
		Last Modified: Wed, 11 Oct 2017 15:44:22 GMT  
		Size: 4.8 MB (4768946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d40f427c62b342e3cf70774e8a44a468e407aaf9eaefc258dbe454f52783f6b`  
		Last Modified: Wed, 11 Oct 2017 15:46:14 GMT  
		Size: 125.7 MB (125707573 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:kinetic-ros-base`

```console
$ docker pull ros@sha256:668574289056cbd372987afad62095b452e045cb31d65f78bd37882ac5a07af7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:kinetic-ros-base` - linux; amd64

```console
$ docker pull ros@sha256:c80b033d67afe125bfe70b7c77b2a482980c0b2ba18fe4f6e659b83890a19a84
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **307.5 MB (307480989 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:302b715dab3c1b72ab09a08250180a9c38a6593621f6500f59cba7d442e8e123`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 10 Oct 2017 20:59:02 GMT
ADD file:5b334adf9d9a2256add2a801b49d4b23c93b0973ec22bb798973d571c948f102 in / 
# Tue, 10 Oct 2017 20:59:02 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 10 Oct 2017 20:59:03 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 20:59:04 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 10 Oct 2017 20:59:04 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 10 Oct 2017 20:59:05 GMT
CMD ["/bin/bash"]
# Sat, 04 Nov 2017 07:12:14 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 07:12:15 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 04 Nov 2017 07:12:16 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 04 Nov 2017 07:12:56 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 07:12:57 GMT
ENV LANG=C.UTF-8
# Sat, 04 Nov 2017 07:12:57 GMT
ENV LC_ALL=C.UTF-8
# Sat, 04 Nov 2017 07:13:15 GMT
RUN rosdep init     && rosdep update
# Sat, 04 Nov 2017 07:13:16 GMT
ENV ROS_DISTRO=kinetic
# Sat, 04 Nov 2017 07:14:56 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 07:14:57 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Sat, 04 Nov 2017 07:14:58 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 04 Nov 2017 07:14:58 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 07:15:27 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:ae79f251470513c2a0ec750117a81f2d58a50727901ca416efecf297b8a03913`  
		Last Modified: Fri, 06 Oct 2017 13:04:44 GMT  
		Size: 47.6 MB (47617129 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ad56d5fc14905886c560200ab69f905b5c5287eaf12f8f761a7ab54f7a61c1b`  
		Last Modified: Tue, 10 Oct 2017 21:00:10 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:170e558760e8b2e484a022b7d7272cf284fc4e1936ba7a0a671fc586440ad272`  
		Last Modified: Tue, 10 Oct 2017 21:00:10 GMT  
		Size: 618.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:395460e233f5bdcd910d618a3b615e0d881e09ad27d58f3065eef53ecae6a808`  
		Last Modified: Tue, 10 Oct 2017 21:00:10 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f01dc62e444044e3ce494269837ef0aedb80fef69c679416137f17812d2eb9c`  
		Last Modified: Tue, 10 Oct 2017 21:00:10 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e3204a200f68200aa306b9f7be4fbfc14ff2f445cc0684830dba2d3f62a3ef6`  
		Last Modified: Sat, 04 Nov 2017 08:03:44 GMT  
		Size: 5.4 MB (5362103 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb487289e44f75e32d15f3ec5c13ac4dc6edd76d2c9d80fe9cf2584b4fc63f15`  
		Last Modified: Sat, 04 Nov 2017 08:03:42 GMT  
		Size: 13.1 KB (13082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b0e83c3ea6c0a5b6670174d23e0dfa9fd811ee86a12d3df4e5388e4e358d9eb`  
		Last Modified: Sat, 04 Nov 2017 08:03:40 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9dc8b2534c2217471ca02fbc18444a32ebf3fae1db3d711b6f4fadd96bece45d`  
		Last Modified: Sat, 04 Nov 2017 08:04:09 GMT  
		Size: 55.5 MB (55498654 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19bb8c21845fd7cb0e6e034a39fbd9ad9f4251ec8f63eb997ec07247bd6e2955`  
		Last Modified: Sat, 04 Nov 2017 08:03:40 GMT  
		Size: 766.3 KB (766309 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04907208ced2bdddd4b38424de02f20bbae1620cbf2581387c16b6629d56dd6b`  
		Last Modified: Sat, 04 Nov 2017 08:04:44 GMT  
		Size: 193.3 MB (193305391 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:219f41b55655ed7b30c57b87a748ec92d2c87b6c03ab933fa54fb932dc990c0e`  
		Last Modified: Sat, 04 Nov 2017 08:03:40 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d3ca84eff49bd01c7084e3d49769bca7efb48904668a0de0f033e7bf5ab9b36`  
		Last Modified: Sat, 04 Nov 2017 08:05:03 GMT  
		Size: 4.9 MB (4915414 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic-ros-base` - linux; arm variant v7

```console
$ docker pull ros@sha256:7eae34ce6b55c710554bfd4127c9f022c1264f77f0e1290e2b798e3f53184bf8
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **267.7 MB (267651193 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fdfb5ad7615a3d9bb992a7588728cc294da89168d5aa17deadaa80d89ef97050`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 11 Oct 2017 12:51:12 GMT
ADD file:b8b49b959bf907b482bdc24c3c6f159f7aed1a3fb73e8efa669b12800635d25f in / 
# Wed, 11 Oct 2017 12:51:13 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 11 Oct 2017 12:51:14 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 12:51:14 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 11 Oct 2017 12:51:15 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 11 Oct 2017 12:51:15 GMT
CMD ["/bin/bash"]
# Wed, 11 Oct 2017 13:08:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 13:08:35 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 11 Oct 2017 13:08:39 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 11 Oct 2017 13:09:23 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 13:09:27 GMT
ENV LANG=C.UTF-8
# Wed, 11 Oct 2017 13:09:27 GMT
ENV LC_ALL=C.UTF-8
# Wed, 11 Oct 2017 13:09:51 GMT
RUN rosdep init     && rosdep update
# Wed, 11 Oct 2017 13:09:51 GMT
ENV ROS_DISTRO=kinetic
# Wed, 11 Oct 2017 13:11:04 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 13:11:06 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Wed, 11 Oct 2017 13:11:06 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 11 Oct 2017 13:11:07 GMT
CMD ["bash"]
# Wed, 11 Oct 2017 13:11:39 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:26e5736d414450f12f7c066ff59a208e9ea9311407c91de898505d1adbf01527`  
		Last Modified: Wed, 11 Oct 2017 12:52:25 GMT  
		Size: 42.4 MB (42444579 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3b2d7804592854a106e4cb6a8decdc17f84ce86673c5331ae4be08f6ddf9667`  
		Last Modified: Wed, 11 Oct 2017 12:52:14 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1e6e6dfa0c41d49186e1ef4cf4409826020371a07bc3a6b5509bb23e7004701`  
		Last Modified: Wed, 11 Oct 2017 12:52:15 GMT  
		Size: 614.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8b298e101bd87bb479bd9d268470b3060526668473413ad16a992f5a70b9b69`  
		Last Modified: Wed, 11 Oct 2017 12:52:14 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5da5730e907c71f6dad2a93757f203cea7518145a8d979508503cb906926d549`  
		Last Modified: Wed, 11 Oct 2017 12:52:14 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d09fc16d09d114946c081433e97aa0ce1f0885b00ae8d90b146d5359a8216fe6`  
		Last Modified: Wed, 11 Oct 2017 13:22:25 GMT  
		Size: 4.6 MB (4613971 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c4838a49db06950f36a6a93c8e2cb59919afaa2b80cc8762c8c4eb24e74719f`  
		Last Modified: Wed, 11 Oct 2017 13:22:24 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:079f3b787a6e9a31ec800dda6c1dc7d81bc91726e4474210d6cbdffa6238816d`  
		Last Modified: Wed, 11 Oct 2017 13:22:22 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c661b84e7cbabc46a583c3613c95c982378c0be5a2a8ae7e572bd7578b816d0`  
		Last Modified: Wed, 11 Oct 2017 13:22:41 GMT  
		Size: 50.7 MB (50654517 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f475e2bfcce8aa8c733d291239817e99fe1eda5cabadd03cb3eb94f08f6603ca`  
		Last Modified: Wed, 11 Oct 2017 13:22:23 GMT  
		Size: 760.4 KB (760364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7b6ac49be3f812f73bf4b011ac7bdcca37d8723456bd4602b81cab4da90c79b`  
		Last Modified: Wed, 11 Oct 2017 13:23:12 GMT  
		Size: 164.7 MB (164689507 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3811c4529d480a164d6b1e539f1d419839a3db766229b4a0e5eabcef8ca46ffd`  
		Last Modified: Wed, 11 Oct 2017 13:22:23 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87135cc8a0f4f770058f0b7b6148800fa00164faf1d62ff91e35c6ca4352ef19`  
		Last Modified: Wed, 11 Oct 2017 13:23:30 GMT  
		Size: 4.5 MB (4472274 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic-ros-base` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:2b503323c77021d84dfd19bba8ba759cb1cadf533c24880858e45bae42af4a28
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **280.0 MB (280042141 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:60303c1fa5784ec5121865ff3926e8deba40e42a8b6a91c501230be9e825cb21`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 11 Oct 2017 14:01:45 GMT
ADD file:17aebc392b3cf207dbe2809abd34b9eec60c3a0e8b39dcd04f8f29a863e966b3 in / 
# Wed, 11 Oct 2017 14:01:47 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 11 Oct 2017 14:01:49 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 14:01:50 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 11 Oct 2017 14:01:52 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 11 Oct 2017 14:01:52 GMT
CMD ["/bin/bash"]
# Wed, 11 Oct 2017 14:21:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 14:22:01 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 11 Oct 2017 14:22:11 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 11 Oct 2017 14:24:25 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 14:24:33 GMT
ENV LANG=C.UTF-8
# Wed, 11 Oct 2017 14:24:34 GMT
ENV LC_ALL=C.UTF-8
# Wed, 11 Oct 2017 14:25:14 GMT
RUN rosdep init     && rosdep update
# Wed, 11 Oct 2017 14:25:21 GMT
ENV ROS_DISTRO=kinetic
# Wed, 11 Oct 2017 14:38:32 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 14:38:36 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Wed, 11 Oct 2017 14:38:45 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 11 Oct 2017 14:38:46 GMT
CMD ["bash"]
# Wed, 11 Oct 2017 14:39:55 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:aac43d4d6c83c61c78a7814ef7d2e02dc6c2f52dc110ff181aea144991711636`  
		Last Modified: Fri, 06 Oct 2017 22:13:46 GMT  
		Size: 43.4 MB (43426326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eed65d92515dfacf9a35d3301bc4847f1057d240f9ab3c442b573bdbb8452791`  
		Last Modified: Wed, 11 Oct 2017 14:03:45 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2de5574dca5eb5a1b9351c990c0865bbe18370da61e7169a539ba80bbdb058b2`  
		Last Modified: Wed, 11 Oct 2017 14:03:44 GMT  
		Size: 617.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5a76e352cce541b89ec31a527e09d2185c9427315f118b56573f79eb31b4c2b`  
		Last Modified: Wed, 11 Oct 2017 14:03:45 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2aceaacecb77ef3360c013ffcd305eecd6cf17a32bd143a72ca0b86b74721ba`  
		Last Modified: Wed, 11 Oct 2017 14:03:45 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df2b464ff94260bae09f2719a99368cdaf4e91cb4ac7f8292454419def5b6bb2`  
		Last Modified: Wed, 11 Oct 2017 15:42:12 GMT  
		Size: 4.8 MB (4819150 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:317f3f12586aa0432e4b41b4e01e1e59b1132bbf0cb8d0a8bec39998598cfc19`  
		Last Modified: Wed, 11 Oct 2017 15:42:04 GMT  
		Size: 13.1 KB (13087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d485a4030132f2b8618b2c1e9adeb0f3512ff862a371cbffb828825cd90b712`  
		Last Modified: Wed, 11 Oct 2017 15:42:02 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebe5f4f3df9287919c1ddc687c131a9235d6053e50879ffbdd2307364fe2784c`  
		Last Modified: Wed, 11 Oct 2017 15:43:00 GMT  
		Size: 52.3 MB (52342563 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:624ab9416f2027ffb47c0f23bc9805307660d34dc41b41bace605c5ee21025e3`  
		Last Modified: Wed, 11 Oct 2017 15:42:03 GMT  
		Size: 760.2 KB (760212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee34836a9ef73b7f0ac44bb3febcd37e3297ed71278f88766d54dd36697393f9`  
		Last Modified: Wed, 11 Oct 2017 15:43:51 GMT  
		Size: 173.9 MB (173908949 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b52cac267b67146f0bc3668dba08f98f3cbe6c14049ecf73fd639745f79378e1`  
		Last Modified: Wed, 11 Oct 2017 15:42:01 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a0eec5946a348abb10b86e745543a65458459d0455074b1bd9f84fc94087481`  
		Last Modified: Wed, 11 Oct 2017 15:44:22 GMT  
		Size: 4.8 MB (4768946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:kinetic-ros-base-jessie`

```console
$ docker pull ros@sha256:2624e0b3edcc23b26c06b9934d1b987f39a744c3258e521721fc09355aab75a1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `ros:kinetic-ros-base-jessie` - linux; amd64

```console
$ docker pull ros@sha256:1f4d4a40aa7f3a95def333435e039db66bb0fcdf408249a1dd3340759320db66
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **295.9 MB (295909783 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c0d3d1654bc26209133549e8752bee6a0ed0c9a5b3b247a8e8c6bbeca32e3828`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 04 Nov 2017 05:21:35 GMT
ADD file:55b071e2cfc3ea2f4bbf048d7d676e3c06a77a9a98d63f7af291f3decb495ec8 in / 
# Sat, 04 Nov 2017 05:21:36 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 07:21:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 07:21:55 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 04 Nov 2017 07:21:56 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu jessie main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 04 Nov 2017 07:22:28 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 07:22:28 GMT
ENV LANG=C.UTF-8
# Sat, 04 Nov 2017 07:22:28 GMT
ENV LC_ALL=C.UTF-8
# Sat, 04 Nov 2017 07:22:38 GMT
RUN rosdep init     && rosdep update
# Sat, 04 Nov 2017 07:22:38 GMT
ENV ROS_DISTRO=kinetic
# Sat, 04 Nov 2017 07:24:33 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 07:24:35 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Sat, 04 Nov 2017 07:24:35 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 04 Nov 2017 07:24:35 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 07:25:11 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:85b1f47fba49da65256f07c8790542a3880e9216f9c491965040f35ce2c6ca7a`  
		Last Modified: Mon, 09 Oct 2017 21:36:40 GMT  
		Size: 52.6 MB (52595124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3c0ae9a636a926e9bd468eb854e794ba7d7b9b5b83450a93d83f09b4d81a439`  
		Last Modified: Sat, 04 Nov 2017 08:09:05 GMT  
		Size: 33.8 MB (33762049 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b43dfed508eccd10a2cd98e1b7f0547c458f6090d31410d246d1e29733d66564`  
		Last Modified: Sat, 04 Nov 2017 08:08:48 GMT  
		Size: 1.4 KB (1426 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d33652d70832942c4dbfb9d842ccb32134497a71976008b4d0a40440264174b`  
		Last Modified: Sat, 04 Nov 2017 08:08:45 GMT  
		Size: 220.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:843b632622dfe4f0a078e1b7c9184f911928f51a68db654b081ff7d52d3a9095`  
		Last Modified: Sat, 04 Nov 2017 08:09:14 GMT  
		Size: 46.3 MB (46339112 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9beac456cab26649fc8c2c467dc1ce22187c499c5d26fede98f11b69d5646938`  
		Last Modified: Sat, 04 Nov 2017 08:08:46 GMT  
		Size: 766.3 KB (766309 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0febbfa2b96b1b3b4fb2125075b30ad0b66cf6cbd6bba652300b5f6adbb6e9b`  
		Last Modified: Sat, 04 Nov 2017 08:09:53 GMT  
		Size: 157.2 MB (157219096 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:891bf73adf927e962949e8319d2bea0d98db8cb88d68be9b60e8cccdabbe0442`  
		Last Modified: Sat, 04 Nov 2017 08:08:45 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f18a60295cf9ed6ef58f6639b2aff479fc44179c17e8b8e140e7f7fe9db5d594`  
		Last Modified: Sat, 04 Nov 2017 08:10:08 GMT  
		Size: 5.2 MB (5226253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic-ros-base-jessie` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:1212f2d3432ae36eef1353a1dcb75647139c49f01a23901fc56c90eb8bef908f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **262.4 MB (262433242 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2bb97fc56d7f9fd0b14d56af12677c8213585c99f90d4921582c20c89cf54bde`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:43:13 GMT
ADD file:1661271485aa5a1ca074498b8ca025f41e547bf2b33335b108d9aaa06717b2a5 in / 
# Mon, 09 Oct 2017 21:43:14 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 05:24:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 05:24:16 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 10 Oct 2017 05:24:18 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu jessie main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 10 Oct 2017 05:31:15 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 05:31:17 GMT
ENV LANG=C.UTF-8
# Tue, 10 Oct 2017 05:31:19 GMT
ENV LC_ALL=C.UTF-8
# Tue, 10 Oct 2017 05:32:03 GMT
RUN rosdep init     && rosdep update
# Tue, 10 Oct 2017 05:32:04 GMT
ENV ROS_DISTRO=kinetic
# Tue, 10 Oct 2017 05:42:01 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 05:42:16 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 10 Oct 2017 05:42:17 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 10 Oct 2017 05:42:18 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 05:43:49 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:abcff42ba939437677463734d9b81de5e60df7354c734ee3ddd879c0d3d5d595`  
		Last Modified: Mon, 09 Oct 2017 21:52:08 GMT  
		Size: 49.9 MB (49929310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed53a0e32c1b2f2a67dbfad8623465e456ea2dcfd2f437519bc410ba7d4309e7`  
		Last Modified: Tue, 10 Oct 2017 06:56:43 GMT  
		Size: 32.1 MB (32144208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32418b9644e3e3bcaebd80cae720123c7e69300df6492f406d36fda986848f2d`  
		Last Modified: Tue, 10 Oct 2017 06:55:25 GMT  
		Size: 1.4 KB (1425 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7403be4847b73b2ed977eb3b1033568eacb60aa9311c46238dbfb252c36367e`  
		Last Modified: Tue, 10 Oct 2017 06:55:22 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42f8bc7346a1b1e5d6a0bfbf912f05b222f94ae8f5ad53459637940ed752bea3`  
		Last Modified: Tue, 10 Oct 2017 06:57:20 GMT  
		Size: 44.0 MB (44036516 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4aff210063002397f556b1e2a11a12603b996412e81c112d3005a186efe7b08`  
		Last Modified: Tue, 10 Oct 2017 06:55:25 GMT  
		Size: 760.2 KB (760214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92cd439c8e2df7fe2a14848eef1e8c2be800dcd3c23ed558ff192485b939579f`  
		Last Modified: Tue, 10 Oct 2017 06:58:10 GMT  
		Size: 130.5 MB (130498440 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50f3779df0d71b7db3d8c37939d122589ca167bb9dd80dafb6a03e63e4727c1a`  
		Last Modified: Tue, 10 Oct 2017 06:55:22 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f79e7f4a6b40c3fef37db2f055f377162d11accecb2d6269c91c41657f241b33`  
		Last Modified: Tue, 10 Oct 2017 06:58:51 GMT  
		Size: 5.1 MB (5062708 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:kinetic-ros-base-xenial`

```console
$ docker pull ros@sha256:668574289056cbd372987afad62095b452e045cb31d65f78bd37882ac5a07af7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:kinetic-ros-base-xenial` - linux; amd64

```console
$ docker pull ros@sha256:c80b033d67afe125bfe70b7c77b2a482980c0b2ba18fe4f6e659b83890a19a84
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **307.5 MB (307480989 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:302b715dab3c1b72ab09a08250180a9c38a6593621f6500f59cba7d442e8e123`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 10 Oct 2017 20:59:02 GMT
ADD file:5b334adf9d9a2256add2a801b49d4b23c93b0973ec22bb798973d571c948f102 in / 
# Tue, 10 Oct 2017 20:59:02 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 10 Oct 2017 20:59:03 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 20:59:04 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 10 Oct 2017 20:59:04 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 10 Oct 2017 20:59:05 GMT
CMD ["/bin/bash"]
# Sat, 04 Nov 2017 07:12:14 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 07:12:15 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 04 Nov 2017 07:12:16 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 04 Nov 2017 07:12:56 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 07:12:57 GMT
ENV LANG=C.UTF-8
# Sat, 04 Nov 2017 07:12:57 GMT
ENV LC_ALL=C.UTF-8
# Sat, 04 Nov 2017 07:13:15 GMT
RUN rosdep init     && rosdep update
# Sat, 04 Nov 2017 07:13:16 GMT
ENV ROS_DISTRO=kinetic
# Sat, 04 Nov 2017 07:14:56 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 07:14:57 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Sat, 04 Nov 2017 07:14:58 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 04 Nov 2017 07:14:58 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 07:15:27 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:ae79f251470513c2a0ec750117a81f2d58a50727901ca416efecf297b8a03913`  
		Last Modified: Fri, 06 Oct 2017 13:04:44 GMT  
		Size: 47.6 MB (47617129 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ad56d5fc14905886c560200ab69f905b5c5287eaf12f8f761a7ab54f7a61c1b`  
		Last Modified: Tue, 10 Oct 2017 21:00:10 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:170e558760e8b2e484a022b7d7272cf284fc4e1936ba7a0a671fc586440ad272`  
		Last Modified: Tue, 10 Oct 2017 21:00:10 GMT  
		Size: 618.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:395460e233f5bdcd910d618a3b615e0d881e09ad27d58f3065eef53ecae6a808`  
		Last Modified: Tue, 10 Oct 2017 21:00:10 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f01dc62e444044e3ce494269837ef0aedb80fef69c679416137f17812d2eb9c`  
		Last Modified: Tue, 10 Oct 2017 21:00:10 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e3204a200f68200aa306b9f7be4fbfc14ff2f445cc0684830dba2d3f62a3ef6`  
		Last Modified: Sat, 04 Nov 2017 08:03:44 GMT  
		Size: 5.4 MB (5362103 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb487289e44f75e32d15f3ec5c13ac4dc6edd76d2c9d80fe9cf2584b4fc63f15`  
		Last Modified: Sat, 04 Nov 2017 08:03:42 GMT  
		Size: 13.1 KB (13082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b0e83c3ea6c0a5b6670174d23e0dfa9fd811ee86a12d3df4e5388e4e358d9eb`  
		Last Modified: Sat, 04 Nov 2017 08:03:40 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9dc8b2534c2217471ca02fbc18444a32ebf3fae1db3d711b6f4fadd96bece45d`  
		Last Modified: Sat, 04 Nov 2017 08:04:09 GMT  
		Size: 55.5 MB (55498654 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19bb8c21845fd7cb0e6e034a39fbd9ad9f4251ec8f63eb997ec07247bd6e2955`  
		Last Modified: Sat, 04 Nov 2017 08:03:40 GMT  
		Size: 766.3 KB (766309 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04907208ced2bdddd4b38424de02f20bbae1620cbf2581387c16b6629d56dd6b`  
		Last Modified: Sat, 04 Nov 2017 08:04:44 GMT  
		Size: 193.3 MB (193305391 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:219f41b55655ed7b30c57b87a748ec92d2c87b6c03ab933fa54fb932dc990c0e`  
		Last Modified: Sat, 04 Nov 2017 08:03:40 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d3ca84eff49bd01c7084e3d49769bca7efb48904668a0de0f033e7bf5ab9b36`  
		Last Modified: Sat, 04 Nov 2017 08:05:03 GMT  
		Size: 4.9 MB (4915414 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic-ros-base-xenial` - linux; arm variant v7

```console
$ docker pull ros@sha256:7eae34ce6b55c710554bfd4127c9f022c1264f77f0e1290e2b798e3f53184bf8
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **267.7 MB (267651193 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fdfb5ad7615a3d9bb992a7588728cc294da89168d5aa17deadaa80d89ef97050`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 11 Oct 2017 12:51:12 GMT
ADD file:b8b49b959bf907b482bdc24c3c6f159f7aed1a3fb73e8efa669b12800635d25f in / 
# Wed, 11 Oct 2017 12:51:13 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 11 Oct 2017 12:51:14 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 12:51:14 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 11 Oct 2017 12:51:15 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 11 Oct 2017 12:51:15 GMT
CMD ["/bin/bash"]
# Wed, 11 Oct 2017 13:08:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 13:08:35 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 11 Oct 2017 13:08:39 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 11 Oct 2017 13:09:23 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 13:09:27 GMT
ENV LANG=C.UTF-8
# Wed, 11 Oct 2017 13:09:27 GMT
ENV LC_ALL=C.UTF-8
# Wed, 11 Oct 2017 13:09:51 GMT
RUN rosdep init     && rosdep update
# Wed, 11 Oct 2017 13:09:51 GMT
ENV ROS_DISTRO=kinetic
# Wed, 11 Oct 2017 13:11:04 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 13:11:06 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Wed, 11 Oct 2017 13:11:06 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 11 Oct 2017 13:11:07 GMT
CMD ["bash"]
# Wed, 11 Oct 2017 13:11:39 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:26e5736d414450f12f7c066ff59a208e9ea9311407c91de898505d1adbf01527`  
		Last Modified: Wed, 11 Oct 2017 12:52:25 GMT  
		Size: 42.4 MB (42444579 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3b2d7804592854a106e4cb6a8decdc17f84ce86673c5331ae4be08f6ddf9667`  
		Last Modified: Wed, 11 Oct 2017 12:52:14 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1e6e6dfa0c41d49186e1ef4cf4409826020371a07bc3a6b5509bb23e7004701`  
		Last Modified: Wed, 11 Oct 2017 12:52:15 GMT  
		Size: 614.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8b298e101bd87bb479bd9d268470b3060526668473413ad16a992f5a70b9b69`  
		Last Modified: Wed, 11 Oct 2017 12:52:14 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5da5730e907c71f6dad2a93757f203cea7518145a8d979508503cb906926d549`  
		Last Modified: Wed, 11 Oct 2017 12:52:14 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d09fc16d09d114946c081433e97aa0ce1f0885b00ae8d90b146d5359a8216fe6`  
		Last Modified: Wed, 11 Oct 2017 13:22:25 GMT  
		Size: 4.6 MB (4613971 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c4838a49db06950f36a6a93c8e2cb59919afaa2b80cc8762c8c4eb24e74719f`  
		Last Modified: Wed, 11 Oct 2017 13:22:24 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:079f3b787a6e9a31ec800dda6c1dc7d81bc91726e4474210d6cbdffa6238816d`  
		Last Modified: Wed, 11 Oct 2017 13:22:22 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c661b84e7cbabc46a583c3613c95c982378c0be5a2a8ae7e572bd7578b816d0`  
		Last Modified: Wed, 11 Oct 2017 13:22:41 GMT  
		Size: 50.7 MB (50654517 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f475e2bfcce8aa8c733d291239817e99fe1eda5cabadd03cb3eb94f08f6603ca`  
		Last Modified: Wed, 11 Oct 2017 13:22:23 GMT  
		Size: 760.4 KB (760364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7b6ac49be3f812f73bf4b011ac7bdcca37d8723456bd4602b81cab4da90c79b`  
		Last Modified: Wed, 11 Oct 2017 13:23:12 GMT  
		Size: 164.7 MB (164689507 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3811c4529d480a164d6b1e539f1d419839a3db766229b4a0e5eabcef8ca46ffd`  
		Last Modified: Wed, 11 Oct 2017 13:22:23 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87135cc8a0f4f770058f0b7b6148800fa00164faf1d62ff91e35c6ca4352ef19`  
		Last Modified: Wed, 11 Oct 2017 13:23:30 GMT  
		Size: 4.5 MB (4472274 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic-ros-base-xenial` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:2b503323c77021d84dfd19bba8ba759cb1cadf533c24880858e45bae42af4a28
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **280.0 MB (280042141 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:60303c1fa5784ec5121865ff3926e8deba40e42a8b6a91c501230be9e825cb21`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 11 Oct 2017 14:01:45 GMT
ADD file:17aebc392b3cf207dbe2809abd34b9eec60c3a0e8b39dcd04f8f29a863e966b3 in / 
# Wed, 11 Oct 2017 14:01:47 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 11 Oct 2017 14:01:49 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 14:01:50 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 11 Oct 2017 14:01:52 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 11 Oct 2017 14:01:52 GMT
CMD ["/bin/bash"]
# Wed, 11 Oct 2017 14:21:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 14:22:01 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 11 Oct 2017 14:22:11 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 11 Oct 2017 14:24:25 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 14:24:33 GMT
ENV LANG=C.UTF-8
# Wed, 11 Oct 2017 14:24:34 GMT
ENV LC_ALL=C.UTF-8
# Wed, 11 Oct 2017 14:25:14 GMT
RUN rosdep init     && rosdep update
# Wed, 11 Oct 2017 14:25:21 GMT
ENV ROS_DISTRO=kinetic
# Wed, 11 Oct 2017 14:38:32 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 14:38:36 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Wed, 11 Oct 2017 14:38:45 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 11 Oct 2017 14:38:46 GMT
CMD ["bash"]
# Wed, 11 Oct 2017 14:39:55 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:aac43d4d6c83c61c78a7814ef7d2e02dc6c2f52dc110ff181aea144991711636`  
		Last Modified: Fri, 06 Oct 2017 22:13:46 GMT  
		Size: 43.4 MB (43426326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eed65d92515dfacf9a35d3301bc4847f1057d240f9ab3c442b573bdbb8452791`  
		Last Modified: Wed, 11 Oct 2017 14:03:45 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2de5574dca5eb5a1b9351c990c0865bbe18370da61e7169a539ba80bbdb058b2`  
		Last Modified: Wed, 11 Oct 2017 14:03:44 GMT  
		Size: 617.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5a76e352cce541b89ec31a527e09d2185c9427315f118b56573f79eb31b4c2b`  
		Last Modified: Wed, 11 Oct 2017 14:03:45 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2aceaacecb77ef3360c013ffcd305eecd6cf17a32bd143a72ca0b86b74721ba`  
		Last Modified: Wed, 11 Oct 2017 14:03:45 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df2b464ff94260bae09f2719a99368cdaf4e91cb4ac7f8292454419def5b6bb2`  
		Last Modified: Wed, 11 Oct 2017 15:42:12 GMT  
		Size: 4.8 MB (4819150 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:317f3f12586aa0432e4b41b4e01e1e59b1132bbf0cb8d0a8bec39998598cfc19`  
		Last Modified: Wed, 11 Oct 2017 15:42:04 GMT  
		Size: 13.1 KB (13087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d485a4030132f2b8618b2c1e9adeb0f3512ff862a371cbffb828825cd90b712`  
		Last Modified: Wed, 11 Oct 2017 15:42:02 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebe5f4f3df9287919c1ddc687c131a9235d6053e50879ffbdd2307364fe2784c`  
		Last Modified: Wed, 11 Oct 2017 15:43:00 GMT  
		Size: 52.3 MB (52342563 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:624ab9416f2027ffb47c0f23bc9805307660d34dc41b41bace605c5ee21025e3`  
		Last Modified: Wed, 11 Oct 2017 15:42:03 GMT  
		Size: 760.2 KB (760212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee34836a9ef73b7f0ac44bb3febcd37e3297ed71278f88766d54dd36697393f9`  
		Last Modified: Wed, 11 Oct 2017 15:43:51 GMT  
		Size: 173.9 MB (173908949 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b52cac267b67146f0bc3668dba08f98f3cbe6c14049ecf73fd639745f79378e1`  
		Last Modified: Wed, 11 Oct 2017 15:42:01 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a0eec5946a348abb10b86e745543a65458459d0455074b1bd9f84fc94087481`  
		Last Modified: Wed, 11 Oct 2017 15:44:22 GMT  
		Size: 4.8 MB (4768946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:kinetic-ros-core`

```console
$ docker pull ros@sha256:90d9906debd9112cc3c704e9a2f977bb300635eb473a91379aac39f9e51f814b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:kinetic-ros-core` - linux; amd64

```console
$ docker pull ros@sha256:b428715f309375221cec97121de767b73588183d57f9c33bd44ff31278e693ef
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **302.6 MB (302565575 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:898b73cad0ab90bc5da4032a0b98bc15eb4c9a51423a121bbded492831ab08dd`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 10 Oct 2017 20:59:02 GMT
ADD file:5b334adf9d9a2256add2a801b49d4b23c93b0973ec22bb798973d571c948f102 in / 
# Tue, 10 Oct 2017 20:59:02 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 10 Oct 2017 20:59:03 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 20:59:04 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 10 Oct 2017 20:59:04 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 10 Oct 2017 20:59:05 GMT
CMD ["/bin/bash"]
# Sat, 04 Nov 2017 07:12:14 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 07:12:15 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 04 Nov 2017 07:12:16 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 04 Nov 2017 07:12:56 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 07:12:57 GMT
ENV LANG=C.UTF-8
# Sat, 04 Nov 2017 07:12:57 GMT
ENV LC_ALL=C.UTF-8
# Sat, 04 Nov 2017 07:13:15 GMT
RUN rosdep init     && rosdep update
# Sat, 04 Nov 2017 07:13:16 GMT
ENV ROS_DISTRO=kinetic
# Sat, 04 Nov 2017 07:14:56 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 07:14:57 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Sat, 04 Nov 2017 07:14:58 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 04 Nov 2017 07:14:58 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:ae79f251470513c2a0ec750117a81f2d58a50727901ca416efecf297b8a03913`  
		Last Modified: Fri, 06 Oct 2017 13:04:44 GMT  
		Size: 47.6 MB (47617129 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ad56d5fc14905886c560200ab69f905b5c5287eaf12f8f761a7ab54f7a61c1b`  
		Last Modified: Tue, 10 Oct 2017 21:00:10 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:170e558760e8b2e484a022b7d7272cf284fc4e1936ba7a0a671fc586440ad272`  
		Last Modified: Tue, 10 Oct 2017 21:00:10 GMT  
		Size: 618.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:395460e233f5bdcd910d618a3b615e0d881e09ad27d58f3065eef53ecae6a808`  
		Last Modified: Tue, 10 Oct 2017 21:00:10 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f01dc62e444044e3ce494269837ef0aedb80fef69c679416137f17812d2eb9c`  
		Last Modified: Tue, 10 Oct 2017 21:00:10 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e3204a200f68200aa306b9f7be4fbfc14ff2f445cc0684830dba2d3f62a3ef6`  
		Last Modified: Sat, 04 Nov 2017 08:03:44 GMT  
		Size: 5.4 MB (5362103 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb487289e44f75e32d15f3ec5c13ac4dc6edd76d2c9d80fe9cf2584b4fc63f15`  
		Last Modified: Sat, 04 Nov 2017 08:03:42 GMT  
		Size: 13.1 KB (13082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b0e83c3ea6c0a5b6670174d23e0dfa9fd811ee86a12d3df4e5388e4e358d9eb`  
		Last Modified: Sat, 04 Nov 2017 08:03:40 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9dc8b2534c2217471ca02fbc18444a32ebf3fae1db3d711b6f4fadd96bece45d`  
		Last Modified: Sat, 04 Nov 2017 08:04:09 GMT  
		Size: 55.5 MB (55498654 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19bb8c21845fd7cb0e6e034a39fbd9ad9f4251ec8f63eb997ec07247bd6e2955`  
		Last Modified: Sat, 04 Nov 2017 08:03:40 GMT  
		Size: 766.3 KB (766309 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04907208ced2bdddd4b38424de02f20bbae1620cbf2581387c16b6629d56dd6b`  
		Last Modified: Sat, 04 Nov 2017 08:04:44 GMT  
		Size: 193.3 MB (193305391 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:219f41b55655ed7b30c57b87a748ec92d2c87b6c03ab933fa54fb932dc990c0e`  
		Last Modified: Sat, 04 Nov 2017 08:03:40 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic-ros-core` - linux; arm variant v7

```console
$ docker pull ros@sha256:afc15e2d59156c952385e208341bfac193799193a8388a5c469ba8280e6bbf22
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **263.2 MB (263178919 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2e2799e658f5f008c1cb247d5efed3d686591fa0637967ee80724c7cea583c97`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 11 Oct 2017 12:51:12 GMT
ADD file:b8b49b959bf907b482bdc24c3c6f159f7aed1a3fb73e8efa669b12800635d25f in / 
# Wed, 11 Oct 2017 12:51:13 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 11 Oct 2017 12:51:14 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 12:51:14 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 11 Oct 2017 12:51:15 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 11 Oct 2017 12:51:15 GMT
CMD ["/bin/bash"]
# Wed, 11 Oct 2017 13:08:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 13:08:35 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 11 Oct 2017 13:08:39 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 11 Oct 2017 13:09:23 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 13:09:27 GMT
ENV LANG=C.UTF-8
# Wed, 11 Oct 2017 13:09:27 GMT
ENV LC_ALL=C.UTF-8
# Wed, 11 Oct 2017 13:09:51 GMT
RUN rosdep init     && rosdep update
# Wed, 11 Oct 2017 13:09:51 GMT
ENV ROS_DISTRO=kinetic
# Wed, 11 Oct 2017 13:11:04 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 13:11:06 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Wed, 11 Oct 2017 13:11:06 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 11 Oct 2017 13:11:07 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:26e5736d414450f12f7c066ff59a208e9ea9311407c91de898505d1adbf01527`  
		Last Modified: Wed, 11 Oct 2017 12:52:25 GMT  
		Size: 42.4 MB (42444579 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3b2d7804592854a106e4cb6a8decdc17f84ce86673c5331ae4be08f6ddf9667`  
		Last Modified: Wed, 11 Oct 2017 12:52:14 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1e6e6dfa0c41d49186e1ef4cf4409826020371a07bc3a6b5509bb23e7004701`  
		Last Modified: Wed, 11 Oct 2017 12:52:15 GMT  
		Size: 614.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8b298e101bd87bb479bd9d268470b3060526668473413ad16a992f5a70b9b69`  
		Last Modified: Wed, 11 Oct 2017 12:52:14 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5da5730e907c71f6dad2a93757f203cea7518145a8d979508503cb906926d549`  
		Last Modified: Wed, 11 Oct 2017 12:52:14 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d09fc16d09d114946c081433e97aa0ce1f0885b00ae8d90b146d5359a8216fe6`  
		Last Modified: Wed, 11 Oct 2017 13:22:25 GMT  
		Size: 4.6 MB (4613971 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c4838a49db06950f36a6a93c8e2cb59919afaa2b80cc8762c8c4eb24e74719f`  
		Last Modified: Wed, 11 Oct 2017 13:22:24 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:079f3b787a6e9a31ec800dda6c1dc7d81bc91726e4474210d6cbdffa6238816d`  
		Last Modified: Wed, 11 Oct 2017 13:22:22 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c661b84e7cbabc46a583c3613c95c982378c0be5a2a8ae7e572bd7578b816d0`  
		Last Modified: Wed, 11 Oct 2017 13:22:41 GMT  
		Size: 50.7 MB (50654517 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f475e2bfcce8aa8c733d291239817e99fe1eda5cabadd03cb3eb94f08f6603ca`  
		Last Modified: Wed, 11 Oct 2017 13:22:23 GMT  
		Size: 760.4 KB (760364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7b6ac49be3f812f73bf4b011ac7bdcca37d8723456bd4602b81cab4da90c79b`  
		Last Modified: Wed, 11 Oct 2017 13:23:12 GMT  
		Size: 164.7 MB (164689507 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3811c4529d480a164d6b1e539f1d419839a3db766229b4a0e5eabcef8ca46ffd`  
		Last Modified: Wed, 11 Oct 2017 13:22:23 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic-ros-core` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:5502edf5f9666b3845d2a91f5cbe59b3323c2f65d6fd79e673d84184bbd11ba5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **275.3 MB (275273195 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3427228a200f7df20d7e248487912d9e40c8f2ad40e8f8d4c97431b91794d3e2`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 11 Oct 2017 14:01:45 GMT
ADD file:17aebc392b3cf207dbe2809abd34b9eec60c3a0e8b39dcd04f8f29a863e966b3 in / 
# Wed, 11 Oct 2017 14:01:47 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 11 Oct 2017 14:01:49 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 14:01:50 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 11 Oct 2017 14:01:52 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 11 Oct 2017 14:01:52 GMT
CMD ["/bin/bash"]
# Wed, 11 Oct 2017 14:21:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 14:22:01 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 11 Oct 2017 14:22:11 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 11 Oct 2017 14:24:25 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 14:24:33 GMT
ENV LANG=C.UTF-8
# Wed, 11 Oct 2017 14:24:34 GMT
ENV LC_ALL=C.UTF-8
# Wed, 11 Oct 2017 14:25:14 GMT
RUN rosdep init     && rosdep update
# Wed, 11 Oct 2017 14:25:21 GMT
ENV ROS_DISTRO=kinetic
# Wed, 11 Oct 2017 14:38:32 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 14:38:36 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Wed, 11 Oct 2017 14:38:45 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 11 Oct 2017 14:38:46 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:aac43d4d6c83c61c78a7814ef7d2e02dc6c2f52dc110ff181aea144991711636`  
		Last Modified: Fri, 06 Oct 2017 22:13:46 GMT  
		Size: 43.4 MB (43426326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eed65d92515dfacf9a35d3301bc4847f1057d240f9ab3c442b573bdbb8452791`  
		Last Modified: Wed, 11 Oct 2017 14:03:45 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2de5574dca5eb5a1b9351c990c0865bbe18370da61e7169a539ba80bbdb058b2`  
		Last Modified: Wed, 11 Oct 2017 14:03:44 GMT  
		Size: 617.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5a76e352cce541b89ec31a527e09d2185c9427315f118b56573f79eb31b4c2b`  
		Last Modified: Wed, 11 Oct 2017 14:03:45 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2aceaacecb77ef3360c013ffcd305eecd6cf17a32bd143a72ca0b86b74721ba`  
		Last Modified: Wed, 11 Oct 2017 14:03:45 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df2b464ff94260bae09f2719a99368cdaf4e91cb4ac7f8292454419def5b6bb2`  
		Last Modified: Wed, 11 Oct 2017 15:42:12 GMT  
		Size: 4.8 MB (4819150 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:317f3f12586aa0432e4b41b4e01e1e59b1132bbf0cb8d0a8bec39998598cfc19`  
		Last Modified: Wed, 11 Oct 2017 15:42:04 GMT  
		Size: 13.1 KB (13087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d485a4030132f2b8618b2c1e9adeb0f3512ff862a371cbffb828825cd90b712`  
		Last Modified: Wed, 11 Oct 2017 15:42:02 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebe5f4f3df9287919c1ddc687c131a9235d6053e50879ffbdd2307364fe2784c`  
		Last Modified: Wed, 11 Oct 2017 15:43:00 GMT  
		Size: 52.3 MB (52342563 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:624ab9416f2027ffb47c0f23bc9805307660d34dc41b41bace605c5ee21025e3`  
		Last Modified: Wed, 11 Oct 2017 15:42:03 GMT  
		Size: 760.2 KB (760212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee34836a9ef73b7f0ac44bb3febcd37e3297ed71278f88766d54dd36697393f9`  
		Last Modified: Wed, 11 Oct 2017 15:43:51 GMT  
		Size: 173.9 MB (173908949 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b52cac267b67146f0bc3668dba08f98f3cbe6c14049ecf73fd639745f79378e1`  
		Last Modified: Wed, 11 Oct 2017 15:42:01 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:kinetic-ros-core-jessie`

```console
$ docker pull ros@sha256:2654f3194f098f3fd7be61d617a8c289f5bcc2489a213dcc718bf6a9c88785af
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `ros:kinetic-ros-core-jessie` - linux; amd64

```console
$ docker pull ros@sha256:9251f7cb611b3922f0504881e430bcc428874ebb0cca1f7da04a82a1bb75daf5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **290.7 MB (290683530 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c1e257e400a32369da0bd4fdb28b28fa040a734ba087a64d3f2e0d9cae43adf5`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 04 Nov 2017 05:21:35 GMT
ADD file:55b071e2cfc3ea2f4bbf048d7d676e3c06a77a9a98d63f7af291f3decb495ec8 in / 
# Sat, 04 Nov 2017 05:21:36 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 07:21:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 07:21:55 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 04 Nov 2017 07:21:56 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu jessie main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 04 Nov 2017 07:22:28 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 07:22:28 GMT
ENV LANG=C.UTF-8
# Sat, 04 Nov 2017 07:22:28 GMT
ENV LC_ALL=C.UTF-8
# Sat, 04 Nov 2017 07:22:38 GMT
RUN rosdep init     && rosdep update
# Sat, 04 Nov 2017 07:22:38 GMT
ENV ROS_DISTRO=kinetic
# Sat, 04 Nov 2017 07:24:33 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 07:24:35 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Sat, 04 Nov 2017 07:24:35 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 04 Nov 2017 07:24:35 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:85b1f47fba49da65256f07c8790542a3880e9216f9c491965040f35ce2c6ca7a`  
		Last Modified: Mon, 09 Oct 2017 21:36:40 GMT  
		Size: 52.6 MB (52595124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3c0ae9a636a926e9bd468eb854e794ba7d7b9b5b83450a93d83f09b4d81a439`  
		Last Modified: Sat, 04 Nov 2017 08:09:05 GMT  
		Size: 33.8 MB (33762049 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b43dfed508eccd10a2cd98e1b7f0547c458f6090d31410d246d1e29733d66564`  
		Last Modified: Sat, 04 Nov 2017 08:08:48 GMT  
		Size: 1.4 KB (1426 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d33652d70832942c4dbfb9d842ccb32134497a71976008b4d0a40440264174b`  
		Last Modified: Sat, 04 Nov 2017 08:08:45 GMT  
		Size: 220.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:843b632622dfe4f0a078e1b7c9184f911928f51a68db654b081ff7d52d3a9095`  
		Last Modified: Sat, 04 Nov 2017 08:09:14 GMT  
		Size: 46.3 MB (46339112 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9beac456cab26649fc8c2c467dc1ce22187c499c5d26fede98f11b69d5646938`  
		Last Modified: Sat, 04 Nov 2017 08:08:46 GMT  
		Size: 766.3 KB (766309 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0febbfa2b96b1b3b4fb2125075b30ad0b66cf6cbd6bba652300b5f6adbb6e9b`  
		Last Modified: Sat, 04 Nov 2017 08:09:53 GMT  
		Size: 157.2 MB (157219096 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:891bf73adf927e962949e8319d2bea0d98db8cb88d68be9b60e8cccdabbe0442`  
		Last Modified: Sat, 04 Nov 2017 08:08:45 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic-ros-core-jessie` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:500a43f425b290a8138a38d00397f90d0e54aeaa7e10939350e655b59f813a13
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **257.4 MB (257370534 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0db83930fdfdea9618bcdb910cbde8a6da1b6a471416d1c6599a507838f55d3e`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:43:13 GMT
ADD file:1661271485aa5a1ca074498b8ca025f41e547bf2b33335b108d9aaa06717b2a5 in / 
# Mon, 09 Oct 2017 21:43:14 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 05:24:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 05:24:16 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 10 Oct 2017 05:24:18 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu jessie main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 10 Oct 2017 05:31:15 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 05:31:17 GMT
ENV LANG=C.UTF-8
# Tue, 10 Oct 2017 05:31:19 GMT
ENV LC_ALL=C.UTF-8
# Tue, 10 Oct 2017 05:32:03 GMT
RUN rosdep init     && rosdep update
# Tue, 10 Oct 2017 05:32:04 GMT
ENV ROS_DISTRO=kinetic
# Tue, 10 Oct 2017 05:42:01 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 05:42:16 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 10 Oct 2017 05:42:17 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 10 Oct 2017 05:42:18 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:abcff42ba939437677463734d9b81de5e60df7354c734ee3ddd879c0d3d5d595`  
		Last Modified: Mon, 09 Oct 2017 21:52:08 GMT  
		Size: 49.9 MB (49929310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed53a0e32c1b2f2a67dbfad8623465e456ea2dcfd2f437519bc410ba7d4309e7`  
		Last Modified: Tue, 10 Oct 2017 06:56:43 GMT  
		Size: 32.1 MB (32144208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32418b9644e3e3bcaebd80cae720123c7e69300df6492f406d36fda986848f2d`  
		Last Modified: Tue, 10 Oct 2017 06:55:25 GMT  
		Size: 1.4 KB (1425 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7403be4847b73b2ed977eb3b1033568eacb60aa9311c46238dbfb252c36367e`  
		Last Modified: Tue, 10 Oct 2017 06:55:22 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42f8bc7346a1b1e5d6a0bfbf912f05b222f94ae8f5ad53459637940ed752bea3`  
		Last Modified: Tue, 10 Oct 2017 06:57:20 GMT  
		Size: 44.0 MB (44036516 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4aff210063002397f556b1e2a11a12603b996412e81c112d3005a186efe7b08`  
		Last Modified: Tue, 10 Oct 2017 06:55:25 GMT  
		Size: 760.2 KB (760214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92cd439c8e2df7fe2a14848eef1e8c2be800dcd3c23ed558ff192485b939579f`  
		Last Modified: Tue, 10 Oct 2017 06:58:10 GMT  
		Size: 130.5 MB (130498440 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50f3779df0d71b7db3d8c37939d122589ca167bb9dd80dafb6a03e63e4727c1a`  
		Last Modified: Tue, 10 Oct 2017 06:55:22 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:kinetic-ros-core-xenial`

```console
$ docker pull ros@sha256:90d9906debd9112cc3c704e9a2f977bb300635eb473a91379aac39f9e51f814b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:kinetic-ros-core-xenial` - linux; amd64

```console
$ docker pull ros@sha256:b428715f309375221cec97121de767b73588183d57f9c33bd44ff31278e693ef
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **302.6 MB (302565575 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:898b73cad0ab90bc5da4032a0b98bc15eb4c9a51423a121bbded492831ab08dd`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 10 Oct 2017 20:59:02 GMT
ADD file:5b334adf9d9a2256add2a801b49d4b23c93b0973ec22bb798973d571c948f102 in / 
# Tue, 10 Oct 2017 20:59:02 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 10 Oct 2017 20:59:03 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 20:59:04 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 10 Oct 2017 20:59:04 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 10 Oct 2017 20:59:05 GMT
CMD ["/bin/bash"]
# Sat, 04 Nov 2017 07:12:14 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 07:12:15 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 04 Nov 2017 07:12:16 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 04 Nov 2017 07:12:56 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 07:12:57 GMT
ENV LANG=C.UTF-8
# Sat, 04 Nov 2017 07:12:57 GMT
ENV LC_ALL=C.UTF-8
# Sat, 04 Nov 2017 07:13:15 GMT
RUN rosdep init     && rosdep update
# Sat, 04 Nov 2017 07:13:16 GMT
ENV ROS_DISTRO=kinetic
# Sat, 04 Nov 2017 07:14:56 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 07:14:57 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Sat, 04 Nov 2017 07:14:58 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 04 Nov 2017 07:14:58 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:ae79f251470513c2a0ec750117a81f2d58a50727901ca416efecf297b8a03913`  
		Last Modified: Fri, 06 Oct 2017 13:04:44 GMT  
		Size: 47.6 MB (47617129 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ad56d5fc14905886c560200ab69f905b5c5287eaf12f8f761a7ab54f7a61c1b`  
		Last Modified: Tue, 10 Oct 2017 21:00:10 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:170e558760e8b2e484a022b7d7272cf284fc4e1936ba7a0a671fc586440ad272`  
		Last Modified: Tue, 10 Oct 2017 21:00:10 GMT  
		Size: 618.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:395460e233f5bdcd910d618a3b615e0d881e09ad27d58f3065eef53ecae6a808`  
		Last Modified: Tue, 10 Oct 2017 21:00:10 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f01dc62e444044e3ce494269837ef0aedb80fef69c679416137f17812d2eb9c`  
		Last Modified: Tue, 10 Oct 2017 21:00:10 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e3204a200f68200aa306b9f7be4fbfc14ff2f445cc0684830dba2d3f62a3ef6`  
		Last Modified: Sat, 04 Nov 2017 08:03:44 GMT  
		Size: 5.4 MB (5362103 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb487289e44f75e32d15f3ec5c13ac4dc6edd76d2c9d80fe9cf2584b4fc63f15`  
		Last Modified: Sat, 04 Nov 2017 08:03:42 GMT  
		Size: 13.1 KB (13082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b0e83c3ea6c0a5b6670174d23e0dfa9fd811ee86a12d3df4e5388e4e358d9eb`  
		Last Modified: Sat, 04 Nov 2017 08:03:40 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9dc8b2534c2217471ca02fbc18444a32ebf3fae1db3d711b6f4fadd96bece45d`  
		Last Modified: Sat, 04 Nov 2017 08:04:09 GMT  
		Size: 55.5 MB (55498654 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19bb8c21845fd7cb0e6e034a39fbd9ad9f4251ec8f63eb997ec07247bd6e2955`  
		Last Modified: Sat, 04 Nov 2017 08:03:40 GMT  
		Size: 766.3 KB (766309 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04907208ced2bdddd4b38424de02f20bbae1620cbf2581387c16b6629d56dd6b`  
		Last Modified: Sat, 04 Nov 2017 08:04:44 GMT  
		Size: 193.3 MB (193305391 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:219f41b55655ed7b30c57b87a748ec92d2c87b6c03ab933fa54fb932dc990c0e`  
		Last Modified: Sat, 04 Nov 2017 08:03:40 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic-ros-core-xenial` - linux; arm variant v7

```console
$ docker pull ros@sha256:afc15e2d59156c952385e208341bfac193799193a8388a5c469ba8280e6bbf22
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **263.2 MB (263178919 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2e2799e658f5f008c1cb247d5efed3d686591fa0637967ee80724c7cea583c97`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 11 Oct 2017 12:51:12 GMT
ADD file:b8b49b959bf907b482bdc24c3c6f159f7aed1a3fb73e8efa669b12800635d25f in / 
# Wed, 11 Oct 2017 12:51:13 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 11 Oct 2017 12:51:14 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 12:51:14 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 11 Oct 2017 12:51:15 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 11 Oct 2017 12:51:15 GMT
CMD ["/bin/bash"]
# Wed, 11 Oct 2017 13:08:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 13:08:35 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 11 Oct 2017 13:08:39 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 11 Oct 2017 13:09:23 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 13:09:27 GMT
ENV LANG=C.UTF-8
# Wed, 11 Oct 2017 13:09:27 GMT
ENV LC_ALL=C.UTF-8
# Wed, 11 Oct 2017 13:09:51 GMT
RUN rosdep init     && rosdep update
# Wed, 11 Oct 2017 13:09:51 GMT
ENV ROS_DISTRO=kinetic
# Wed, 11 Oct 2017 13:11:04 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 13:11:06 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Wed, 11 Oct 2017 13:11:06 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 11 Oct 2017 13:11:07 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:26e5736d414450f12f7c066ff59a208e9ea9311407c91de898505d1adbf01527`  
		Last Modified: Wed, 11 Oct 2017 12:52:25 GMT  
		Size: 42.4 MB (42444579 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3b2d7804592854a106e4cb6a8decdc17f84ce86673c5331ae4be08f6ddf9667`  
		Last Modified: Wed, 11 Oct 2017 12:52:14 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1e6e6dfa0c41d49186e1ef4cf4409826020371a07bc3a6b5509bb23e7004701`  
		Last Modified: Wed, 11 Oct 2017 12:52:15 GMT  
		Size: 614.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8b298e101bd87bb479bd9d268470b3060526668473413ad16a992f5a70b9b69`  
		Last Modified: Wed, 11 Oct 2017 12:52:14 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5da5730e907c71f6dad2a93757f203cea7518145a8d979508503cb906926d549`  
		Last Modified: Wed, 11 Oct 2017 12:52:14 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d09fc16d09d114946c081433e97aa0ce1f0885b00ae8d90b146d5359a8216fe6`  
		Last Modified: Wed, 11 Oct 2017 13:22:25 GMT  
		Size: 4.6 MB (4613971 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c4838a49db06950f36a6a93c8e2cb59919afaa2b80cc8762c8c4eb24e74719f`  
		Last Modified: Wed, 11 Oct 2017 13:22:24 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:079f3b787a6e9a31ec800dda6c1dc7d81bc91726e4474210d6cbdffa6238816d`  
		Last Modified: Wed, 11 Oct 2017 13:22:22 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c661b84e7cbabc46a583c3613c95c982378c0be5a2a8ae7e572bd7578b816d0`  
		Last Modified: Wed, 11 Oct 2017 13:22:41 GMT  
		Size: 50.7 MB (50654517 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f475e2bfcce8aa8c733d291239817e99fe1eda5cabadd03cb3eb94f08f6603ca`  
		Last Modified: Wed, 11 Oct 2017 13:22:23 GMT  
		Size: 760.4 KB (760364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7b6ac49be3f812f73bf4b011ac7bdcca37d8723456bd4602b81cab4da90c79b`  
		Last Modified: Wed, 11 Oct 2017 13:23:12 GMT  
		Size: 164.7 MB (164689507 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3811c4529d480a164d6b1e539f1d419839a3db766229b4a0e5eabcef8ca46ffd`  
		Last Modified: Wed, 11 Oct 2017 13:22:23 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic-ros-core-xenial` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:5502edf5f9666b3845d2a91f5cbe59b3323c2f65d6fd79e673d84184bbd11ba5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **275.3 MB (275273195 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3427228a200f7df20d7e248487912d9e40c8f2ad40e8f8d4c97431b91794d3e2`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 11 Oct 2017 14:01:45 GMT
ADD file:17aebc392b3cf207dbe2809abd34b9eec60c3a0e8b39dcd04f8f29a863e966b3 in / 
# Wed, 11 Oct 2017 14:01:47 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 11 Oct 2017 14:01:49 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 14:01:50 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 11 Oct 2017 14:01:52 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 11 Oct 2017 14:01:52 GMT
CMD ["/bin/bash"]
# Wed, 11 Oct 2017 14:21:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 14:22:01 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 11 Oct 2017 14:22:11 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 11 Oct 2017 14:24:25 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 14:24:33 GMT
ENV LANG=C.UTF-8
# Wed, 11 Oct 2017 14:24:34 GMT
ENV LC_ALL=C.UTF-8
# Wed, 11 Oct 2017 14:25:14 GMT
RUN rosdep init     && rosdep update
# Wed, 11 Oct 2017 14:25:21 GMT
ENV ROS_DISTRO=kinetic
# Wed, 11 Oct 2017 14:38:32 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 14:38:36 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Wed, 11 Oct 2017 14:38:45 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 11 Oct 2017 14:38:46 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:aac43d4d6c83c61c78a7814ef7d2e02dc6c2f52dc110ff181aea144991711636`  
		Last Modified: Fri, 06 Oct 2017 22:13:46 GMT  
		Size: 43.4 MB (43426326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eed65d92515dfacf9a35d3301bc4847f1057d240f9ab3c442b573bdbb8452791`  
		Last Modified: Wed, 11 Oct 2017 14:03:45 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2de5574dca5eb5a1b9351c990c0865bbe18370da61e7169a539ba80bbdb058b2`  
		Last Modified: Wed, 11 Oct 2017 14:03:44 GMT  
		Size: 617.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5a76e352cce541b89ec31a527e09d2185c9427315f118b56573f79eb31b4c2b`  
		Last Modified: Wed, 11 Oct 2017 14:03:45 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2aceaacecb77ef3360c013ffcd305eecd6cf17a32bd143a72ca0b86b74721ba`  
		Last Modified: Wed, 11 Oct 2017 14:03:45 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df2b464ff94260bae09f2719a99368cdaf4e91cb4ac7f8292454419def5b6bb2`  
		Last Modified: Wed, 11 Oct 2017 15:42:12 GMT  
		Size: 4.8 MB (4819150 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:317f3f12586aa0432e4b41b4e01e1e59b1132bbf0cb8d0a8bec39998598cfc19`  
		Last Modified: Wed, 11 Oct 2017 15:42:04 GMT  
		Size: 13.1 KB (13087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d485a4030132f2b8618b2c1e9adeb0f3512ff862a371cbffb828825cd90b712`  
		Last Modified: Wed, 11 Oct 2017 15:42:02 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebe5f4f3df9287919c1ddc687c131a9235d6053e50879ffbdd2307364fe2784c`  
		Last Modified: Wed, 11 Oct 2017 15:43:00 GMT  
		Size: 52.3 MB (52342563 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:624ab9416f2027ffb47c0f23bc9805307660d34dc41b41bace605c5ee21025e3`  
		Last Modified: Wed, 11 Oct 2017 15:42:03 GMT  
		Size: 760.2 KB (760212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee34836a9ef73b7f0ac44bb3febcd37e3297ed71278f88766d54dd36697393f9`  
		Last Modified: Wed, 11 Oct 2017 15:43:51 GMT  
		Size: 173.9 MB (173908949 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b52cac267b67146f0bc3668dba08f98f3cbe6c14049ecf73fd639745f79378e1`  
		Last Modified: Wed, 11 Oct 2017 15:42:01 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:latest`

```console
$ docker pull ros@sha256:668574289056cbd372987afad62095b452e045cb31d65f78bd37882ac5a07af7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:latest` - linux; amd64

```console
$ docker pull ros@sha256:c80b033d67afe125bfe70b7c77b2a482980c0b2ba18fe4f6e659b83890a19a84
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **307.5 MB (307480989 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:302b715dab3c1b72ab09a08250180a9c38a6593621f6500f59cba7d442e8e123`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 10 Oct 2017 20:59:02 GMT
ADD file:5b334adf9d9a2256add2a801b49d4b23c93b0973ec22bb798973d571c948f102 in / 
# Tue, 10 Oct 2017 20:59:02 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 10 Oct 2017 20:59:03 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 20:59:04 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 10 Oct 2017 20:59:04 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 10 Oct 2017 20:59:05 GMT
CMD ["/bin/bash"]
# Sat, 04 Nov 2017 07:12:14 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 07:12:15 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 04 Nov 2017 07:12:16 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 04 Nov 2017 07:12:56 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 07:12:57 GMT
ENV LANG=C.UTF-8
# Sat, 04 Nov 2017 07:12:57 GMT
ENV LC_ALL=C.UTF-8
# Sat, 04 Nov 2017 07:13:15 GMT
RUN rosdep init     && rosdep update
# Sat, 04 Nov 2017 07:13:16 GMT
ENV ROS_DISTRO=kinetic
# Sat, 04 Nov 2017 07:14:56 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 07:14:57 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Sat, 04 Nov 2017 07:14:58 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 04 Nov 2017 07:14:58 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 07:15:27 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:ae79f251470513c2a0ec750117a81f2d58a50727901ca416efecf297b8a03913`  
		Last Modified: Fri, 06 Oct 2017 13:04:44 GMT  
		Size: 47.6 MB (47617129 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ad56d5fc14905886c560200ab69f905b5c5287eaf12f8f761a7ab54f7a61c1b`  
		Last Modified: Tue, 10 Oct 2017 21:00:10 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:170e558760e8b2e484a022b7d7272cf284fc4e1936ba7a0a671fc586440ad272`  
		Last Modified: Tue, 10 Oct 2017 21:00:10 GMT  
		Size: 618.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:395460e233f5bdcd910d618a3b615e0d881e09ad27d58f3065eef53ecae6a808`  
		Last Modified: Tue, 10 Oct 2017 21:00:10 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f01dc62e444044e3ce494269837ef0aedb80fef69c679416137f17812d2eb9c`  
		Last Modified: Tue, 10 Oct 2017 21:00:10 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e3204a200f68200aa306b9f7be4fbfc14ff2f445cc0684830dba2d3f62a3ef6`  
		Last Modified: Sat, 04 Nov 2017 08:03:44 GMT  
		Size: 5.4 MB (5362103 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb487289e44f75e32d15f3ec5c13ac4dc6edd76d2c9d80fe9cf2584b4fc63f15`  
		Last Modified: Sat, 04 Nov 2017 08:03:42 GMT  
		Size: 13.1 KB (13082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b0e83c3ea6c0a5b6670174d23e0dfa9fd811ee86a12d3df4e5388e4e358d9eb`  
		Last Modified: Sat, 04 Nov 2017 08:03:40 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9dc8b2534c2217471ca02fbc18444a32ebf3fae1db3d711b6f4fadd96bece45d`  
		Last Modified: Sat, 04 Nov 2017 08:04:09 GMT  
		Size: 55.5 MB (55498654 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19bb8c21845fd7cb0e6e034a39fbd9ad9f4251ec8f63eb997ec07247bd6e2955`  
		Last Modified: Sat, 04 Nov 2017 08:03:40 GMT  
		Size: 766.3 KB (766309 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04907208ced2bdddd4b38424de02f20bbae1620cbf2581387c16b6629d56dd6b`  
		Last Modified: Sat, 04 Nov 2017 08:04:44 GMT  
		Size: 193.3 MB (193305391 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:219f41b55655ed7b30c57b87a748ec92d2c87b6c03ab933fa54fb932dc990c0e`  
		Last Modified: Sat, 04 Nov 2017 08:03:40 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d3ca84eff49bd01c7084e3d49769bca7efb48904668a0de0f033e7bf5ab9b36`  
		Last Modified: Sat, 04 Nov 2017 08:05:03 GMT  
		Size: 4.9 MB (4915414 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:latest` - linux; arm variant v7

```console
$ docker pull ros@sha256:7eae34ce6b55c710554bfd4127c9f022c1264f77f0e1290e2b798e3f53184bf8
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **267.7 MB (267651193 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fdfb5ad7615a3d9bb992a7588728cc294da89168d5aa17deadaa80d89ef97050`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 11 Oct 2017 12:51:12 GMT
ADD file:b8b49b959bf907b482bdc24c3c6f159f7aed1a3fb73e8efa669b12800635d25f in / 
# Wed, 11 Oct 2017 12:51:13 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 11 Oct 2017 12:51:14 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 12:51:14 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 11 Oct 2017 12:51:15 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 11 Oct 2017 12:51:15 GMT
CMD ["/bin/bash"]
# Wed, 11 Oct 2017 13:08:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 13:08:35 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 11 Oct 2017 13:08:39 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 11 Oct 2017 13:09:23 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 13:09:27 GMT
ENV LANG=C.UTF-8
# Wed, 11 Oct 2017 13:09:27 GMT
ENV LC_ALL=C.UTF-8
# Wed, 11 Oct 2017 13:09:51 GMT
RUN rosdep init     && rosdep update
# Wed, 11 Oct 2017 13:09:51 GMT
ENV ROS_DISTRO=kinetic
# Wed, 11 Oct 2017 13:11:04 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 13:11:06 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Wed, 11 Oct 2017 13:11:06 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 11 Oct 2017 13:11:07 GMT
CMD ["bash"]
# Wed, 11 Oct 2017 13:11:39 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:26e5736d414450f12f7c066ff59a208e9ea9311407c91de898505d1adbf01527`  
		Last Modified: Wed, 11 Oct 2017 12:52:25 GMT  
		Size: 42.4 MB (42444579 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3b2d7804592854a106e4cb6a8decdc17f84ce86673c5331ae4be08f6ddf9667`  
		Last Modified: Wed, 11 Oct 2017 12:52:14 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1e6e6dfa0c41d49186e1ef4cf4409826020371a07bc3a6b5509bb23e7004701`  
		Last Modified: Wed, 11 Oct 2017 12:52:15 GMT  
		Size: 614.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8b298e101bd87bb479bd9d268470b3060526668473413ad16a992f5a70b9b69`  
		Last Modified: Wed, 11 Oct 2017 12:52:14 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5da5730e907c71f6dad2a93757f203cea7518145a8d979508503cb906926d549`  
		Last Modified: Wed, 11 Oct 2017 12:52:14 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d09fc16d09d114946c081433e97aa0ce1f0885b00ae8d90b146d5359a8216fe6`  
		Last Modified: Wed, 11 Oct 2017 13:22:25 GMT  
		Size: 4.6 MB (4613971 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c4838a49db06950f36a6a93c8e2cb59919afaa2b80cc8762c8c4eb24e74719f`  
		Last Modified: Wed, 11 Oct 2017 13:22:24 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:079f3b787a6e9a31ec800dda6c1dc7d81bc91726e4474210d6cbdffa6238816d`  
		Last Modified: Wed, 11 Oct 2017 13:22:22 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c661b84e7cbabc46a583c3613c95c982378c0be5a2a8ae7e572bd7578b816d0`  
		Last Modified: Wed, 11 Oct 2017 13:22:41 GMT  
		Size: 50.7 MB (50654517 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f475e2bfcce8aa8c733d291239817e99fe1eda5cabadd03cb3eb94f08f6603ca`  
		Last Modified: Wed, 11 Oct 2017 13:22:23 GMT  
		Size: 760.4 KB (760364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7b6ac49be3f812f73bf4b011ac7bdcca37d8723456bd4602b81cab4da90c79b`  
		Last Modified: Wed, 11 Oct 2017 13:23:12 GMT  
		Size: 164.7 MB (164689507 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3811c4529d480a164d6b1e539f1d419839a3db766229b4a0e5eabcef8ca46ffd`  
		Last Modified: Wed, 11 Oct 2017 13:22:23 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87135cc8a0f4f770058f0b7b6148800fa00164faf1d62ff91e35c6ca4352ef19`  
		Last Modified: Wed, 11 Oct 2017 13:23:30 GMT  
		Size: 4.5 MB (4472274 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:latest` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:2b503323c77021d84dfd19bba8ba759cb1cadf533c24880858e45bae42af4a28
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **280.0 MB (280042141 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:60303c1fa5784ec5121865ff3926e8deba40e42a8b6a91c501230be9e825cb21`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 11 Oct 2017 14:01:45 GMT
ADD file:17aebc392b3cf207dbe2809abd34b9eec60c3a0e8b39dcd04f8f29a863e966b3 in / 
# Wed, 11 Oct 2017 14:01:47 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 11 Oct 2017 14:01:49 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 14:01:50 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 11 Oct 2017 14:01:52 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 11 Oct 2017 14:01:52 GMT
CMD ["/bin/bash"]
# Wed, 11 Oct 2017 14:21:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 14:22:01 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 11 Oct 2017 14:22:11 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 11 Oct 2017 14:24:25 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 14:24:33 GMT
ENV LANG=C.UTF-8
# Wed, 11 Oct 2017 14:24:34 GMT
ENV LC_ALL=C.UTF-8
# Wed, 11 Oct 2017 14:25:14 GMT
RUN rosdep init     && rosdep update
# Wed, 11 Oct 2017 14:25:21 GMT
ENV ROS_DISTRO=kinetic
# Wed, 11 Oct 2017 14:38:32 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 14:38:36 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Wed, 11 Oct 2017 14:38:45 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 11 Oct 2017 14:38:46 GMT
CMD ["bash"]
# Wed, 11 Oct 2017 14:39:55 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:aac43d4d6c83c61c78a7814ef7d2e02dc6c2f52dc110ff181aea144991711636`  
		Last Modified: Fri, 06 Oct 2017 22:13:46 GMT  
		Size: 43.4 MB (43426326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eed65d92515dfacf9a35d3301bc4847f1057d240f9ab3c442b573bdbb8452791`  
		Last Modified: Wed, 11 Oct 2017 14:03:45 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2de5574dca5eb5a1b9351c990c0865bbe18370da61e7169a539ba80bbdb058b2`  
		Last Modified: Wed, 11 Oct 2017 14:03:44 GMT  
		Size: 617.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5a76e352cce541b89ec31a527e09d2185c9427315f118b56573f79eb31b4c2b`  
		Last Modified: Wed, 11 Oct 2017 14:03:45 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2aceaacecb77ef3360c013ffcd305eecd6cf17a32bd143a72ca0b86b74721ba`  
		Last Modified: Wed, 11 Oct 2017 14:03:45 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df2b464ff94260bae09f2719a99368cdaf4e91cb4ac7f8292454419def5b6bb2`  
		Last Modified: Wed, 11 Oct 2017 15:42:12 GMT  
		Size: 4.8 MB (4819150 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:317f3f12586aa0432e4b41b4e01e1e59b1132bbf0cb8d0a8bec39998598cfc19`  
		Last Modified: Wed, 11 Oct 2017 15:42:04 GMT  
		Size: 13.1 KB (13087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d485a4030132f2b8618b2c1e9adeb0f3512ff862a371cbffb828825cd90b712`  
		Last Modified: Wed, 11 Oct 2017 15:42:02 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebe5f4f3df9287919c1ddc687c131a9235d6053e50879ffbdd2307364fe2784c`  
		Last Modified: Wed, 11 Oct 2017 15:43:00 GMT  
		Size: 52.3 MB (52342563 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:624ab9416f2027ffb47c0f23bc9805307660d34dc41b41bace605c5ee21025e3`  
		Last Modified: Wed, 11 Oct 2017 15:42:03 GMT  
		Size: 760.2 KB (760212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee34836a9ef73b7f0ac44bb3febcd37e3297ed71278f88766d54dd36697393f9`  
		Last Modified: Wed, 11 Oct 2017 15:43:51 GMT  
		Size: 173.9 MB (173908949 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b52cac267b67146f0bc3668dba08f98f3cbe6c14049ecf73fd639745f79378e1`  
		Last Modified: Wed, 11 Oct 2017 15:42:01 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a0eec5946a348abb10b86e745543a65458459d0455074b1bd9f84fc94087481`  
		Last Modified: Wed, 11 Oct 2017 15:44:22 GMT  
		Size: 4.8 MB (4768946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:lunar`

```console
$ docker pull ros@sha256:afc90d9a3db764bd97de4cf78a579b3bff5175eb72622c08682a915c54db5435
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:lunar` - linux; amd64

```console
$ docker pull ros@sha256:fd835a951cc92383ca7234b34cdb2288306e2391f96ba17b7810a5b115f4e7ad
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **392.1 MB (392145913 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:89e8cd69d807b69409ef626a3ffa1ad0bf7746de233fa7c7703168087b00cc68`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 10 Oct 2017 20:59:02 GMT
ADD file:5b334adf9d9a2256add2a801b49d4b23c93b0973ec22bb798973d571c948f102 in / 
# Tue, 10 Oct 2017 20:59:02 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 10 Oct 2017 20:59:03 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 20:59:04 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 10 Oct 2017 20:59:04 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 10 Oct 2017 20:59:05 GMT
CMD ["/bin/bash"]
# Sat, 04 Nov 2017 07:12:14 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 07:12:15 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 04 Nov 2017 07:12:16 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 04 Nov 2017 07:12:56 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 07:12:57 GMT
ENV LANG=C.UTF-8
# Sat, 04 Nov 2017 07:12:57 GMT
ENV LC_ALL=C.UTF-8
# Sat, 04 Nov 2017 07:13:15 GMT
RUN rosdep init     && rosdep update
# Sat, 04 Nov 2017 07:29:51 GMT
ENV ROS_DISTRO=lunar
# Sat, 04 Nov 2017 07:31:24 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 07:31:25 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Sat, 04 Nov 2017 07:31:25 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 04 Nov 2017 07:31:25 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 07:32:29 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:ae79f251470513c2a0ec750117a81f2d58a50727901ca416efecf297b8a03913`  
		Last Modified: Fri, 06 Oct 2017 13:04:44 GMT  
		Size: 47.6 MB (47617129 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ad56d5fc14905886c560200ab69f905b5c5287eaf12f8f761a7ab54f7a61c1b`  
		Last Modified: Tue, 10 Oct 2017 21:00:10 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:170e558760e8b2e484a022b7d7272cf284fc4e1936ba7a0a671fc586440ad272`  
		Last Modified: Tue, 10 Oct 2017 21:00:10 GMT  
		Size: 618.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:395460e233f5bdcd910d618a3b615e0d881e09ad27d58f3065eef53ecae6a808`  
		Last Modified: Tue, 10 Oct 2017 21:00:10 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f01dc62e444044e3ce494269837ef0aedb80fef69c679416137f17812d2eb9c`  
		Last Modified: Tue, 10 Oct 2017 21:00:10 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e3204a200f68200aa306b9f7be4fbfc14ff2f445cc0684830dba2d3f62a3ef6`  
		Last Modified: Sat, 04 Nov 2017 08:03:44 GMT  
		Size: 5.4 MB (5362103 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb487289e44f75e32d15f3ec5c13ac4dc6edd76d2c9d80fe9cf2584b4fc63f15`  
		Last Modified: Sat, 04 Nov 2017 08:03:42 GMT  
		Size: 13.1 KB (13082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b0e83c3ea6c0a5b6670174d23e0dfa9fd811ee86a12d3df4e5388e4e358d9eb`  
		Last Modified: Sat, 04 Nov 2017 08:03:40 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9dc8b2534c2217471ca02fbc18444a32ebf3fae1db3d711b6f4fadd96bece45d`  
		Last Modified: Sat, 04 Nov 2017 08:04:09 GMT  
		Size: 55.5 MB (55498654 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19bb8c21845fd7cb0e6e034a39fbd9ad9f4251ec8f63eb997ec07247bd6e2955`  
		Last Modified: Sat, 04 Nov 2017 08:03:40 GMT  
		Size: 766.3 KB (766309 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f87d9c273da134fa4defe01b1a81357a66e609deba152f165db349206b9a3d4`  
		Last Modified: Sat, 04 Nov 2017 08:12:50 GMT  
		Size: 193.3 MB (193331820 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8cbfc29c5b6f300cacdc501a7a9a9b599df2c5c4eeb1a84e778554ef5b79fafa`  
		Last Modified: Sat, 04 Nov 2017 08:12:00 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6183736ae1c8e60978953369d200110437fd9d8c407cd9a973911bae5ded5d24`  
		Last Modified: Sat, 04 Nov 2017 08:13:30 GMT  
		Size: 89.6 MB (89553909 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar` - linux; arm variant v7

```console
$ docker pull ros@sha256:209ea0224a573eb16a5febaddac720cbba79385775de57bacad84515a9f45818
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **336.2 MB (336203052 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa73308717f868de2f4ddf0642c7083235c17a1ca1a4ee6e7aa206ec2e955a40`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 11 Oct 2017 12:51:12 GMT
ADD file:b8b49b959bf907b482bdc24c3c6f159f7aed1a3fb73e8efa669b12800635d25f in / 
# Wed, 11 Oct 2017 12:51:13 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 11 Oct 2017 12:51:14 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 12:51:14 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 11 Oct 2017 12:51:15 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 11 Oct 2017 12:51:15 GMT
CMD ["/bin/bash"]
# Wed, 11 Oct 2017 13:08:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 13:08:35 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 11 Oct 2017 13:08:39 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 11 Oct 2017 13:09:23 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 13:09:27 GMT
ENV LANG=C.UTF-8
# Wed, 11 Oct 2017 13:09:27 GMT
ENV LC_ALL=C.UTF-8
# Wed, 11 Oct 2017 13:09:51 GMT
RUN rosdep init     && rosdep update
# Wed, 11 Oct 2017 13:16:12 GMT
ENV ROS_DISTRO=lunar
# Wed, 11 Oct 2017 13:17:24 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 13:17:26 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Wed, 11 Oct 2017 13:17:27 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 11 Oct 2017 13:17:27 GMT
CMD ["bash"]
# Wed, 11 Oct 2017 13:18:26 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:26e5736d414450f12f7c066ff59a208e9ea9311407c91de898505d1adbf01527`  
		Last Modified: Wed, 11 Oct 2017 12:52:25 GMT  
		Size: 42.4 MB (42444579 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3b2d7804592854a106e4cb6a8decdc17f84ce86673c5331ae4be08f6ddf9667`  
		Last Modified: Wed, 11 Oct 2017 12:52:14 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1e6e6dfa0c41d49186e1ef4cf4409826020371a07bc3a6b5509bb23e7004701`  
		Last Modified: Wed, 11 Oct 2017 12:52:15 GMT  
		Size: 614.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8b298e101bd87bb479bd9d268470b3060526668473413ad16a992f5a70b9b69`  
		Last Modified: Wed, 11 Oct 2017 12:52:14 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5da5730e907c71f6dad2a93757f203cea7518145a8d979508503cb906926d549`  
		Last Modified: Wed, 11 Oct 2017 12:52:14 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d09fc16d09d114946c081433e97aa0ce1f0885b00ae8d90b146d5359a8216fe6`  
		Last Modified: Wed, 11 Oct 2017 13:22:25 GMT  
		Size: 4.6 MB (4613971 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c4838a49db06950f36a6a93c8e2cb59919afaa2b80cc8762c8c4eb24e74719f`  
		Last Modified: Wed, 11 Oct 2017 13:22:24 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:079f3b787a6e9a31ec800dda6c1dc7d81bc91726e4474210d6cbdffa6238816d`  
		Last Modified: Wed, 11 Oct 2017 13:22:22 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c661b84e7cbabc46a583c3613c95c982378c0be5a2a8ae7e572bd7578b816d0`  
		Last Modified: Wed, 11 Oct 2017 13:22:41 GMT  
		Size: 50.7 MB (50654517 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f475e2bfcce8aa8c733d291239817e99fe1eda5cabadd03cb3eb94f08f6603ca`  
		Last Modified: Wed, 11 Oct 2017 13:22:23 GMT  
		Size: 760.4 KB (760364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15e2de1d4dc3c9e492e702a8efd5e249de49a315b5b6228cdc5572d80d81430c`  
		Last Modified: Wed, 11 Oct 2017 13:27:18 GMT  
		Size: 164.7 MB (164714786 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:023a0667681286f75635b33cd4f867545c422594a9692aaf41e8be931b4087ad`  
		Last Modified: Wed, 11 Oct 2017 13:26:30 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:192089ba9519042b0a41fdcc357bc33719c909cc5a49b6d41eec9f26622ae8e2`  
		Last Modified: Wed, 11 Oct 2017 13:27:55 GMT  
		Size: 73.0 MB (72998854 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:121926659150120d1c2505ca6c9b79977a4877791ce295487aa6b9d87ad456d8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **349.9 MB (349870255 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:28242478c6aaf46312725c236be43ec26dfda7b4270cd05c0a59398970814336`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 11 Oct 2017 14:01:45 GMT
ADD file:17aebc392b3cf207dbe2809abd34b9eec60c3a0e8b39dcd04f8f29a863e966b3 in / 
# Wed, 11 Oct 2017 14:01:47 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 11 Oct 2017 14:01:49 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 14:01:50 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 11 Oct 2017 14:01:52 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 11 Oct 2017 14:01:52 GMT
CMD ["/bin/bash"]
# Wed, 11 Oct 2017 14:21:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 14:22:01 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 11 Oct 2017 14:22:11 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 11 Oct 2017 14:24:25 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 14:24:33 GMT
ENV LANG=C.UTF-8
# Wed, 11 Oct 2017 14:24:34 GMT
ENV LC_ALL=C.UTF-8
# Wed, 11 Oct 2017 14:25:14 GMT
RUN rosdep init     && rosdep update
# Wed, 11 Oct 2017 15:08:36 GMT
ENV ROS_DISTRO=lunar
# Wed, 11 Oct 2017 15:16:25 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 15:16:44 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Wed, 11 Oct 2017 15:16:44 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 11 Oct 2017 15:16:45 GMT
CMD ["bash"]
# Wed, 11 Oct 2017 15:21:52 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:aac43d4d6c83c61c78a7814ef7d2e02dc6c2f52dc110ff181aea144991711636`  
		Last Modified: Fri, 06 Oct 2017 22:13:46 GMT  
		Size: 43.4 MB (43426326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eed65d92515dfacf9a35d3301bc4847f1057d240f9ab3c442b573bdbb8452791`  
		Last Modified: Wed, 11 Oct 2017 14:03:45 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2de5574dca5eb5a1b9351c990c0865bbe18370da61e7169a539ba80bbdb058b2`  
		Last Modified: Wed, 11 Oct 2017 14:03:44 GMT  
		Size: 617.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5a76e352cce541b89ec31a527e09d2185c9427315f118b56573f79eb31b4c2b`  
		Last Modified: Wed, 11 Oct 2017 14:03:45 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2aceaacecb77ef3360c013ffcd305eecd6cf17a32bd143a72ca0b86b74721ba`  
		Last Modified: Wed, 11 Oct 2017 14:03:45 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df2b464ff94260bae09f2719a99368cdaf4e91cb4ac7f8292454419def5b6bb2`  
		Last Modified: Wed, 11 Oct 2017 15:42:12 GMT  
		Size: 4.8 MB (4819150 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:317f3f12586aa0432e4b41b4e01e1e59b1132bbf0cb8d0a8bec39998598cfc19`  
		Last Modified: Wed, 11 Oct 2017 15:42:04 GMT  
		Size: 13.1 KB (13087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d485a4030132f2b8618b2c1e9adeb0f3512ff862a371cbffb828825cd90b712`  
		Last Modified: Wed, 11 Oct 2017 15:42:02 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebe5f4f3df9287919c1ddc687c131a9235d6053e50879ffbdd2307364fe2784c`  
		Last Modified: Wed, 11 Oct 2017 15:43:00 GMT  
		Size: 52.3 MB (52342563 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:624ab9416f2027ffb47c0f23bc9805307660d34dc41b41bace605c5ee21025e3`  
		Last Modified: Wed, 11 Oct 2017 15:42:03 GMT  
		Size: 760.2 KB (760212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f58fa0ad6cdafaba7ddd06842854509ea748ac290ddc510d8853a6147d4d9103`  
		Last Modified: Wed, 11 Oct 2017 15:50:42 GMT  
		Size: 173.9 MB (173932127 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac7c9712a19c1c4b2ea9074d8c5d23ff54433f72a4000bb203336c675f1fa26a`  
		Last Modified: Wed, 11 Oct 2017 15:49:33 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfa73e756fe32eeb108ff093187ea9603341fc6eb1d52a97d14c3dbe37c1b887`  
		Last Modified: Wed, 11 Oct 2017 15:52:00 GMT  
		Size: 74.6 MB (74573882 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:lunar-perception`

```console
$ docker pull ros@sha256:39a76567d61f776431380e6c43f2ba13783ea8a501a92ad163cc06cd09c29e69
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:lunar-perception` - linux; amd64

```console
$ docker pull ros@sha256:07beef5849da3d25a5dd60389f2a441b52173a1e92bb4a91abb0ee48e4f41fc8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **741.2 MB (741198302 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:477ad8f58c54f621f677c3e491fc176cdfc48d7b924a4ace625c48399bf5cc17`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 10 Oct 2017 20:59:02 GMT
ADD file:5b334adf9d9a2256add2a801b49d4b23c93b0973ec22bb798973d571c948f102 in / 
# Tue, 10 Oct 2017 20:59:02 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 10 Oct 2017 20:59:03 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 20:59:04 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 10 Oct 2017 20:59:04 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 10 Oct 2017 20:59:05 GMT
CMD ["/bin/bash"]
# Sat, 04 Nov 2017 07:12:14 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 07:12:15 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 04 Nov 2017 07:12:16 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 04 Nov 2017 07:12:56 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 07:12:57 GMT
ENV LANG=C.UTF-8
# Sat, 04 Nov 2017 07:12:57 GMT
ENV LC_ALL=C.UTF-8
# Sat, 04 Nov 2017 07:13:15 GMT
RUN rosdep init     && rosdep update
# Sat, 04 Nov 2017 07:29:51 GMT
ENV ROS_DISTRO=lunar
# Sat, 04 Nov 2017 07:31:24 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 07:31:25 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Sat, 04 Nov 2017 07:31:25 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 04 Nov 2017 07:31:25 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 07:32:29 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 07:37:32 GMT
RUN apt-get update && apt-get install -y     ros-lunar-perception=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:ae79f251470513c2a0ec750117a81f2d58a50727901ca416efecf297b8a03913`  
		Last Modified: Fri, 06 Oct 2017 13:04:44 GMT  
		Size: 47.6 MB (47617129 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ad56d5fc14905886c560200ab69f905b5c5287eaf12f8f761a7ab54f7a61c1b`  
		Last Modified: Tue, 10 Oct 2017 21:00:10 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:170e558760e8b2e484a022b7d7272cf284fc4e1936ba7a0a671fc586440ad272`  
		Last Modified: Tue, 10 Oct 2017 21:00:10 GMT  
		Size: 618.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:395460e233f5bdcd910d618a3b615e0d881e09ad27d58f3065eef53ecae6a808`  
		Last Modified: Tue, 10 Oct 2017 21:00:10 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f01dc62e444044e3ce494269837ef0aedb80fef69c679416137f17812d2eb9c`  
		Last Modified: Tue, 10 Oct 2017 21:00:10 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e3204a200f68200aa306b9f7be4fbfc14ff2f445cc0684830dba2d3f62a3ef6`  
		Last Modified: Sat, 04 Nov 2017 08:03:44 GMT  
		Size: 5.4 MB (5362103 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb487289e44f75e32d15f3ec5c13ac4dc6edd76d2c9d80fe9cf2584b4fc63f15`  
		Last Modified: Sat, 04 Nov 2017 08:03:42 GMT  
		Size: 13.1 KB (13082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b0e83c3ea6c0a5b6670174d23e0dfa9fd811ee86a12d3df4e5388e4e358d9eb`  
		Last Modified: Sat, 04 Nov 2017 08:03:40 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9dc8b2534c2217471ca02fbc18444a32ebf3fae1db3d711b6f4fadd96bece45d`  
		Last Modified: Sat, 04 Nov 2017 08:04:09 GMT  
		Size: 55.5 MB (55498654 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19bb8c21845fd7cb0e6e034a39fbd9ad9f4251ec8f63eb997ec07247bd6e2955`  
		Last Modified: Sat, 04 Nov 2017 08:03:40 GMT  
		Size: 766.3 KB (766309 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f87d9c273da134fa4defe01b1a81357a66e609deba152f165db349206b9a3d4`  
		Last Modified: Sat, 04 Nov 2017 08:12:50 GMT  
		Size: 193.3 MB (193331820 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8cbfc29c5b6f300cacdc501a7a9a9b599df2c5c4eeb1a84e778554ef5b79fafa`  
		Last Modified: Sat, 04 Nov 2017 08:12:00 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6183736ae1c8e60978953369d200110437fd9d8c407cd9a973911bae5ded5d24`  
		Last Modified: Sat, 04 Nov 2017 08:13:30 GMT  
		Size: 89.6 MB (89553909 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2010104f8d7bceb7e04154ec14619b9d1312e764a3dc8022477073beae6d044`  
		Last Modified: Sat, 04 Nov 2017 08:15:47 GMT  
		Size: 349.1 MB (349052389 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-perception` - linux; arm variant v7

```console
$ docker pull ros@sha256:4881035a5dd1de40dc09fbbc69809fe7a6859b788ff34fef5e64e0d5c43e058e
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **639.0 MB (638965168 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6396513d2e103d5faa191f1e89b57e3a0dfd9005364a63714e3c176cfc489b79`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 11 Oct 2017 12:51:12 GMT
ADD file:b8b49b959bf907b482bdc24c3c6f159f7aed1a3fb73e8efa669b12800635d25f in / 
# Wed, 11 Oct 2017 12:51:13 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 11 Oct 2017 12:51:14 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 12:51:14 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 11 Oct 2017 12:51:15 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 11 Oct 2017 12:51:15 GMT
CMD ["/bin/bash"]
# Wed, 11 Oct 2017 13:08:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 13:08:35 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 11 Oct 2017 13:08:39 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 11 Oct 2017 13:09:23 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 13:09:27 GMT
ENV LANG=C.UTF-8
# Wed, 11 Oct 2017 13:09:27 GMT
ENV LC_ALL=C.UTF-8
# Wed, 11 Oct 2017 13:09:51 GMT
RUN rosdep init     && rosdep update
# Wed, 11 Oct 2017 13:16:12 GMT
ENV ROS_DISTRO=lunar
# Wed, 11 Oct 2017 13:17:24 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 13:17:26 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Wed, 11 Oct 2017 13:17:27 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 11 Oct 2017 13:17:27 GMT
CMD ["bash"]
# Wed, 11 Oct 2017 13:18:26 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 13:22:05 GMT
RUN apt-get update && apt-get install -y     ros-lunar-perception=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:26e5736d414450f12f7c066ff59a208e9ea9311407c91de898505d1adbf01527`  
		Last Modified: Wed, 11 Oct 2017 12:52:25 GMT  
		Size: 42.4 MB (42444579 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3b2d7804592854a106e4cb6a8decdc17f84ce86673c5331ae4be08f6ddf9667`  
		Last Modified: Wed, 11 Oct 2017 12:52:14 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1e6e6dfa0c41d49186e1ef4cf4409826020371a07bc3a6b5509bb23e7004701`  
		Last Modified: Wed, 11 Oct 2017 12:52:15 GMT  
		Size: 614.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8b298e101bd87bb479bd9d268470b3060526668473413ad16a992f5a70b9b69`  
		Last Modified: Wed, 11 Oct 2017 12:52:14 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5da5730e907c71f6dad2a93757f203cea7518145a8d979508503cb906926d549`  
		Last Modified: Wed, 11 Oct 2017 12:52:14 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d09fc16d09d114946c081433e97aa0ce1f0885b00ae8d90b146d5359a8216fe6`  
		Last Modified: Wed, 11 Oct 2017 13:22:25 GMT  
		Size: 4.6 MB (4613971 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c4838a49db06950f36a6a93c8e2cb59919afaa2b80cc8762c8c4eb24e74719f`  
		Last Modified: Wed, 11 Oct 2017 13:22:24 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:079f3b787a6e9a31ec800dda6c1dc7d81bc91726e4474210d6cbdffa6238816d`  
		Last Modified: Wed, 11 Oct 2017 13:22:22 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c661b84e7cbabc46a583c3613c95c982378c0be5a2a8ae7e572bd7578b816d0`  
		Last Modified: Wed, 11 Oct 2017 13:22:41 GMT  
		Size: 50.7 MB (50654517 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f475e2bfcce8aa8c733d291239817e99fe1eda5cabadd03cb3eb94f08f6603ca`  
		Last Modified: Wed, 11 Oct 2017 13:22:23 GMT  
		Size: 760.4 KB (760364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15e2de1d4dc3c9e492e702a8efd5e249de49a315b5b6228cdc5572d80d81430c`  
		Last Modified: Wed, 11 Oct 2017 13:27:18 GMT  
		Size: 164.7 MB (164714786 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:023a0667681286f75635b33cd4f867545c422594a9692aaf41e8be931b4087ad`  
		Last Modified: Wed, 11 Oct 2017 13:26:30 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:192089ba9519042b0a41fdcc357bc33719c909cc5a49b6d41eec9f26622ae8e2`  
		Last Modified: Wed, 11 Oct 2017 13:27:55 GMT  
		Size: 73.0 MB (72998854 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5515c97cd1999bb41ba4c02e2608498490d8dc4bbbec61cade1177984e2cc17e`  
		Last Modified: Wed, 11 Oct 2017 13:30:17 GMT  
		Size: 302.8 MB (302762116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-perception` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:70f159f797c03f20924abfdd9e478343c80bf3e4ab2211b9e33254f22466a87e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **666.5 MB (666469230 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ecc38381e9e4d3bad9ce5c335d5878b7268e7267e658fb96d7a66b4866eb82b8`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 11 Oct 2017 14:01:45 GMT
ADD file:17aebc392b3cf207dbe2809abd34b9eec60c3a0e8b39dcd04f8f29a863e966b3 in / 
# Wed, 11 Oct 2017 14:01:47 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 11 Oct 2017 14:01:49 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 14:01:50 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 11 Oct 2017 14:01:52 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 11 Oct 2017 14:01:52 GMT
CMD ["/bin/bash"]
# Wed, 11 Oct 2017 14:21:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 14:22:01 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 11 Oct 2017 14:22:11 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 11 Oct 2017 14:24:25 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 14:24:33 GMT
ENV LANG=C.UTF-8
# Wed, 11 Oct 2017 14:24:34 GMT
ENV LC_ALL=C.UTF-8
# Wed, 11 Oct 2017 14:25:14 GMT
RUN rosdep init     && rosdep update
# Wed, 11 Oct 2017 15:08:36 GMT
ENV ROS_DISTRO=lunar
# Wed, 11 Oct 2017 15:16:25 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 15:16:44 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Wed, 11 Oct 2017 15:16:44 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 11 Oct 2017 15:16:45 GMT
CMD ["bash"]
# Wed, 11 Oct 2017 15:21:52 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 15:41:13 GMT
RUN apt-get update && apt-get install -y     ros-lunar-perception=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:aac43d4d6c83c61c78a7814ef7d2e02dc6c2f52dc110ff181aea144991711636`  
		Last Modified: Fri, 06 Oct 2017 22:13:46 GMT  
		Size: 43.4 MB (43426326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eed65d92515dfacf9a35d3301bc4847f1057d240f9ab3c442b573bdbb8452791`  
		Last Modified: Wed, 11 Oct 2017 14:03:45 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2de5574dca5eb5a1b9351c990c0865bbe18370da61e7169a539ba80bbdb058b2`  
		Last Modified: Wed, 11 Oct 2017 14:03:44 GMT  
		Size: 617.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5a76e352cce541b89ec31a527e09d2185c9427315f118b56573f79eb31b4c2b`  
		Last Modified: Wed, 11 Oct 2017 14:03:45 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2aceaacecb77ef3360c013ffcd305eecd6cf17a32bd143a72ca0b86b74721ba`  
		Last Modified: Wed, 11 Oct 2017 14:03:45 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df2b464ff94260bae09f2719a99368cdaf4e91cb4ac7f8292454419def5b6bb2`  
		Last Modified: Wed, 11 Oct 2017 15:42:12 GMT  
		Size: 4.8 MB (4819150 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:317f3f12586aa0432e4b41b4e01e1e59b1132bbf0cb8d0a8bec39998598cfc19`  
		Last Modified: Wed, 11 Oct 2017 15:42:04 GMT  
		Size: 13.1 KB (13087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d485a4030132f2b8618b2c1e9adeb0f3512ff862a371cbffb828825cd90b712`  
		Last Modified: Wed, 11 Oct 2017 15:42:02 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebe5f4f3df9287919c1ddc687c131a9235d6053e50879ffbdd2307364fe2784c`  
		Last Modified: Wed, 11 Oct 2017 15:43:00 GMT  
		Size: 52.3 MB (52342563 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:624ab9416f2027ffb47c0f23bc9805307660d34dc41b41bace605c5ee21025e3`  
		Last Modified: Wed, 11 Oct 2017 15:42:03 GMT  
		Size: 760.2 KB (760212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f58fa0ad6cdafaba7ddd06842854509ea748ac290ddc510d8853a6147d4d9103`  
		Last Modified: Wed, 11 Oct 2017 15:50:42 GMT  
		Size: 173.9 MB (173932127 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac7c9712a19c1c4b2ea9074d8c5d23ff54433f72a4000bb203336c675f1fa26a`  
		Last Modified: Wed, 11 Oct 2017 15:49:33 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfa73e756fe32eeb108ff093187ea9603341fc6eb1d52a97d14c3dbe37c1b887`  
		Last Modified: Wed, 11 Oct 2017 15:52:00 GMT  
		Size: 74.6 MB (74573882 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c3e3be2915bc4e40c02986f6697516712788e8985b54190d921ddefa6b0f356`  
		Last Modified: Wed, 11 Oct 2017 15:57:02 GMT  
		Size: 316.6 MB (316598975 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:lunar-perception-stretch`

```console
$ docker pull ros@sha256:7a6846a81475948061971ce295ca5a6b0b2a07c08afa3e8985dd7f580c580a6d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `ros:lunar-perception-stretch` - linux; amd64

```console
$ docker pull ros@sha256:adedb050228a2e15f8dd00f63fc442bd7e78047bc3790f3b7953819834307539
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **900.7 MB (900688962 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:13f17cc990dd0eb57a83098c5add4d310fe4e412ee4da9bc7574e4fbd71127c9`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 04 Nov 2017 05:26:40 GMT
ADD file:a71e077a42995a68ffe4834d85cfe26af4ea12aa8ed43decc03cc487124b1f70 in / 
# Sat, 04 Nov 2017 05:26:40 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 07:47:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 07:47:50 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 04 Nov 2017 07:47:51 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu stretch main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 04 Nov 2017 07:48:20 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 07:48:20 GMT
ENV LANG=C.UTF-8
# Sat, 04 Nov 2017 07:48:20 GMT
ENV LC_ALL=C.UTF-8
# Sat, 04 Nov 2017 07:48:31 GMT
RUN rosdep init     && rosdep update
# Sat, 04 Nov 2017 07:48:31 GMT
ENV ROS_DISTRO=lunar
# Sat, 04 Nov 2017 07:49:38 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 07:49:39 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Sat, 04 Nov 2017 07:49:39 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 04 Nov 2017 07:49:40 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 07:50:46 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 07:54:35 GMT
RUN apt-get update && apt-get install -y     ros-lunar-perception=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:3e17c6eae66cd23c59751c8d8f5eaf7044e0611dc5cebb12b1273be07cdac242`  
		Last Modified: Mon, 09 Oct 2017 21:41:38 GMT  
		Size: 45.1 MB (45129088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c691bf98a8b9b022ad7d943044a3b0aa17050fa4d86da14642a76f3688d1742`  
		Last Modified: Sat, 04 Nov 2017 08:19:55 GMT  
		Size: 7.2 MB (7218242 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84c5a999c8f977df42fe8694ed09456d12c7a03807f138a788305e2b8f6c8b61`  
		Last Modified: Sat, 04 Nov 2017 08:19:53 GMT  
		Size: 1.4 KB (1377 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c00da47f1ff6c9bdcdb8042b5cf91f23ad4b81c4e0c6be15efb8650f898b5bcc`  
		Last Modified: Sat, 04 Nov 2017 08:19:51 GMT  
		Size: 220.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75a2cabceb278bbdaac1b07772dfc1a44549195d531d1d0794cd47027627b953`  
		Last Modified: Sat, 04 Nov 2017 08:20:20 GMT  
		Size: 64.7 MB (64677566 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0873d4ee1db3c8672f6d556af881fd67f571acfd58e33a3af25a687c0952bc73`  
		Last Modified: Sat, 04 Nov 2017 08:19:51 GMT  
		Size: 766.6 KB (766568 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0f00b747f15456afadc3934128569256f820fb30db1940e7805ec723524c499`  
		Last Modified: Sat, 04 Nov 2017 08:20:57 GMT  
		Size: 251.8 MB (251780781 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e94b8c4555f583b2ea91b311a6331e1a67f2b19068995718a3c380fd112366c4`  
		Last Modified: Sat, 04 Nov 2017 08:19:51 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ed34c9355e15efcbb54e7f6c4b8ba1b65780323c9573fb224be745ded5f4af1`  
		Last Modified: Sat, 04 Nov 2017 08:21:39 GMT  
		Size: 122.2 MB (122197753 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92e74c8659a45b7c98c0023791911eb55978106990676b995a0d427bf4f73709`  
		Last Modified: Sat, 04 Nov 2017 08:23:40 GMT  
		Size: 408.9 MB (408917173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-perception-stretch` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:5ec3f5280a17f3eec166ce3633ccd43c02b6991d09e00dca378c5abaf57abb2f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **804.9 MB (804899206 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:95136f5c95474d420a023551511582fa4cb1d638c531da80cf12a08ebebb6074`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:47:18 GMT
ADD file:bf097edec8505e5cb1e432319988aeb28a6f918edef706b3c543fa61aaaea4cb in / 
# Mon, 09 Oct 2017 21:47:19 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 06:08:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 06:08:42 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 10 Oct 2017 06:08:44 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu stretch main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 10 Oct 2017 06:13:07 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 06:13:08 GMT
ENV LANG=C.UTF-8
# Tue, 10 Oct 2017 06:13:09 GMT
ENV LC_ALL=C.UTF-8
# Tue, 10 Oct 2017 06:13:48 GMT
RUN rosdep init     && rosdep update
# Tue, 10 Oct 2017 06:13:49 GMT
ENV ROS_DISTRO=lunar
# Tue, 10 Oct 2017 06:24:14 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 06:24:38 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 10 Oct 2017 06:24:39 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 10 Oct 2017 06:24:40 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 06:29:06 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 06:54:37 GMT
RUN apt-get update && apt-get install -y     ros-lunar-perception=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:0e5a8be23912597ff0d89db096abd4c4383c8cf4ee700d333b86f881ea289875`  
		Last Modified: Mon, 09 Oct 2017 22:01:04 GMT  
		Size: 42.9 MB (42911727 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:969d7a7a072b756f3eec7f18096a6edc68b278e2fef6f0cfa1c2556ccb10d9d8`  
		Last Modified: Tue, 10 Oct 2017 07:01:28 GMT  
		Size: 6.8 MB (6793394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03c304949e92fc2c120b87d79a093cd77a22af9a9bbb6dd21aa98a79a724ef23`  
		Last Modified: Tue, 10 Oct 2017 07:01:26 GMT  
		Size: 1.4 KB (1378 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcd8cc453b9305a42bd7bbad3fe9838ab4a95fed3602abc9174d849babeb86f7`  
		Last Modified: Tue, 10 Oct 2017 07:01:23 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9c258b49f4293fb7f6b7085b6fedc38c34f7f86d7ed80935d0b08410d01f36f`  
		Last Modified: Tue, 10 Oct 2017 07:01:51 GMT  
		Size: 61.8 MB (61767666 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:833480eca8d21ed46bd927eaaf48b8db1f085b0871618dbce3e62263da74e4f6`  
		Last Modified: Tue, 10 Oct 2017 07:01:24 GMT  
		Size: 760.2 KB (760219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64780436c110f86637243acd08bd0f9481f6485b95c1b5cd23acb2830f4a0b48`  
		Last Modified: Tue, 10 Oct 2017 07:02:40 GMT  
		Size: 206.7 MB (206742472 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad82b97105a570ad38e6a8c9004e5aae4019a226f02a12e57fb69e4ae4752f19`  
		Last Modified: Tue, 10 Oct 2017 07:01:24 GMT  
		Size: 192.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e55dfaf6116bf0c989d8b35601f84fc1fbe3505292c3ad46243025ff2df47b8`  
		Last Modified: Tue, 10 Oct 2017 07:03:45 GMT  
		Size: 116.0 MB (116017289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:498119127f36c72daeb324cbb2d1b106a0c2bea8a8f1d5dbdd57416c6ff4c8c8`  
		Last Modified: Tue, 10 Oct 2017 07:09:38 GMT  
		Size: 369.9 MB (369904645 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:lunar-perception-xenial`

```console
$ docker pull ros@sha256:39a76567d61f776431380e6c43f2ba13783ea8a501a92ad163cc06cd09c29e69
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:lunar-perception-xenial` - linux; amd64

```console
$ docker pull ros@sha256:07beef5849da3d25a5dd60389f2a441b52173a1e92bb4a91abb0ee48e4f41fc8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **741.2 MB (741198302 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:477ad8f58c54f621f677c3e491fc176cdfc48d7b924a4ace625c48399bf5cc17`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 10 Oct 2017 20:59:02 GMT
ADD file:5b334adf9d9a2256add2a801b49d4b23c93b0973ec22bb798973d571c948f102 in / 
# Tue, 10 Oct 2017 20:59:02 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 10 Oct 2017 20:59:03 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 20:59:04 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 10 Oct 2017 20:59:04 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 10 Oct 2017 20:59:05 GMT
CMD ["/bin/bash"]
# Sat, 04 Nov 2017 07:12:14 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 07:12:15 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 04 Nov 2017 07:12:16 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 04 Nov 2017 07:12:56 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 07:12:57 GMT
ENV LANG=C.UTF-8
# Sat, 04 Nov 2017 07:12:57 GMT
ENV LC_ALL=C.UTF-8
# Sat, 04 Nov 2017 07:13:15 GMT
RUN rosdep init     && rosdep update
# Sat, 04 Nov 2017 07:29:51 GMT
ENV ROS_DISTRO=lunar
# Sat, 04 Nov 2017 07:31:24 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 07:31:25 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Sat, 04 Nov 2017 07:31:25 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 04 Nov 2017 07:31:25 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 07:32:29 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 07:37:32 GMT
RUN apt-get update && apt-get install -y     ros-lunar-perception=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:ae79f251470513c2a0ec750117a81f2d58a50727901ca416efecf297b8a03913`  
		Last Modified: Fri, 06 Oct 2017 13:04:44 GMT  
		Size: 47.6 MB (47617129 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ad56d5fc14905886c560200ab69f905b5c5287eaf12f8f761a7ab54f7a61c1b`  
		Last Modified: Tue, 10 Oct 2017 21:00:10 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:170e558760e8b2e484a022b7d7272cf284fc4e1936ba7a0a671fc586440ad272`  
		Last Modified: Tue, 10 Oct 2017 21:00:10 GMT  
		Size: 618.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:395460e233f5bdcd910d618a3b615e0d881e09ad27d58f3065eef53ecae6a808`  
		Last Modified: Tue, 10 Oct 2017 21:00:10 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f01dc62e444044e3ce494269837ef0aedb80fef69c679416137f17812d2eb9c`  
		Last Modified: Tue, 10 Oct 2017 21:00:10 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e3204a200f68200aa306b9f7be4fbfc14ff2f445cc0684830dba2d3f62a3ef6`  
		Last Modified: Sat, 04 Nov 2017 08:03:44 GMT  
		Size: 5.4 MB (5362103 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb487289e44f75e32d15f3ec5c13ac4dc6edd76d2c9d80fe9cf2584b4fc63f15`  
		Last Modified: Sat, 04 Nov 2017 08:03:42 GMT  
		Size: 13.1 KB (13082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b0e83c3ea6c0a5b6670174d23e0dfa9fd811ee86a12d3df4e5388e4e358d9eb`  
		Last Modified: Sat, 04 Nov 2017 08:03:40 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9dc8b2534c2217471ca02fbc18444a32ebf3fae1db3d711b6f4fadd96bece45d`  
		Last Modified: Sat, 04 Nov 2017 08:04:09 GMT  
		Size: 55.5 MB (55498654 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19bb8c21845fd7cb0e6e034a39fbd9ad9f4251ec8f63eb997ec07247bd6e2955`  
		Last Modified: Sat, 04 Nov 2017 08:03:40 GMT  
		Size: 766.3 KB (766309 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f87d9c273da134fa4defe01b1a81357a66e609deba152f165db349206b9a3d4`  
		Last Modified: Sat, 04 Nov 2017 08:12:50 GMT  
		Size: 193.3 MB (193331820 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8cbfc29c5b6f300cacdc501a7a9a9b599df2c5c4eeb1a84e778554ef5b79fafa`  
		Last Modified: Sat, 04 Nov 2017 08:12:00 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6183736ae1c8e60978953369d200110437fd9d8c407cd9a973911bae5ded5d24`  
		Last Modified: Sat, 04 Nov 2017 08:13:30 GMT  
		Size: 89.6 MB (89553909 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2010104f8d7bceb7e04154ec14619b9d1312e764a3dc8022477073beae6d044`  
		Last Modified: Sat, 04 Nov 2017 08:15:47 GMT  
		Size: 349.1 MB (349052389 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-perception-xenial` - linux; arm variant v7

```console
$ docker pull ros@sha256:4881035a5dd1de40dc09fbbc69809fe7a6859b788ff34fef5e64e0d5c43e058e
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **639.0 MB (638965168 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6396513d2e103d5faa191f1e89b57e3a0dfd9005364a63714e3c176cfc489b79`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 11 Oct 2017 12:51:12 GMT
ADD file:b8b49b959bf907b482bdc24c3c6f159f7aed1a3fb73e8efa669b12800635d25f in / 
# Wed, 11 Oct 2017 12:51:13 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 11 Oct 2017 12:51:14 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 12:51:14 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 11 Oct 2017 12:51:15 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 11 Oct 2017 12:51:15 GMT
CMD ["/bin/bash"]
# Wed, 11 Oct 2017 13:08:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 13:08:35 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 11 Oct 2017 13:08:39 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 11 Oct 2017 13:09:23 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 13:09:27 GMT
ENV LANG=C.UTF-8
# Wed, 11 Oct 2017 13:09:27 GMT
ENV LC_ALL=C.UTF-8
# Wed, 11 Oct 2017 13:09:51 GMT
RUN rosdep init     && rosdep update
# Wed, 11 Oct 2017 13:16:12 GMT
ENV ROS_DISTRO=lunar
# Wed, 11 Oct 2017 13:17:24 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 13:17:26 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Wed, 11 Oct 2017 13:17:27 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 11 Oct 2017 13:17:27 GMT
CMD ["bash"]
# Wed, 11 Oct 2017 13:18:26 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 13:22:05 GMT
RUN apt-get update && apt-get install -y     ros-lunar-perception=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:26e5736d414450f12f7c066ff59a208e9ea9311407c91de898505d1adbf01527`  
		Last Modified: Wed, 11 Oct 2017 12:52:25 GMT  
		Size: 42.4 MB (42444579 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3b2d7804592854a106e4cb6a8decdc17f84ce86673c5331ae4be08f6ddf9667`  
		Last Modified: Wed, 11 Oct 2017 12:52:14 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1e6e6dfa0c41d49186e1ef4cf4409826020371a07bc3a6b5509bb23e7004701`  
		Last Modified: Wed, 11 Oct 2017 12:52:15 GMT  
		Size: 614.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8b298e101bd87bb479bd9d268470b3060526668473413ad16a992f5a70b9b69`  
		Last Modified: Wed, 11 Oct 2017 12:52:14 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5da5730e907c71f6dad2a93757f203cea7518145a8d979508503cb906926d549`  
		Last Modified: Wed, 11 Oct 2017 12:52:14 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d09fc16d09d114946c081433e97aa0ce1f0885b00ae8d90b146d5359a8216fe6`  
		Last Modified: Wed, 11 Oct 2017 13:22:25 GMT  
		Size: 4.6 MB (4613971 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c4838a49db06950f36a6a93c8e2cb59919afaa2b80cc8762c8c4eb24e74719f`  
		Last Modified: Wed, 11 Oct 2017 13:22:24 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:079f3b787a6e9a31ec800dda6c1dc7d81bc91726e4474210d6cbdffa6238816d`  
		Last Modified: Wed, 11 Oct 2017 13:22:22 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c661b84e7cbabc46a583c3613c95c982378c0be5a2a8ae7e572bd7578b816d0`  
		Last Modified: Wed, 11 Oct 2017 13:22:41 GMT  
		Size: 50.7 MB (50654517 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f475e2bfcce8aa8c733d291239817e99fe1eda5cabadd03cb3eb94f08f6603ca`  
		Last Modified: Wed, 11 Oct 2017 13:22:23 GMT  
		Size: 760.4 KB (760364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15e2de1d4dc3c9e492e702a8efd5e249de49a315b5b6228cdc5572d80d81430c`  
		Last Modified: Wed, 11 Oct 2017 13:27:18 GMT  
		Size: 164.7 MB (164714786 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:023a0667681286f75635b33cd4f867545c422594a9692aaf41e8be931b4087ad`  
		Last Modified: Wed, 11 Oct 2017 13:26:30 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:192089ba9519042b0a41fdcc357bc33719c909cc5a49b6d41eec9f26622ae8e2`  
		Last Modified: Wed, 11 Oct 2017 13:27:55 GMT  
		Size: 73.0 MB (72998854 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5515c97cd1999bb41ba4c02e2608498490d8dc4bbbec61cade1177984e2cc17e`  
		Last Modified: Wed, 11 Oct 2017 13:30:17 GMT  
		Size: 302.8 MB (302762116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-perception-xenial` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:70f159f797c03f20924abfdd9e478343c80bf3e4ab2211b9e33254f22466a87e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **666.5 MB (666469230 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ecc38381e9e4d3bad9ce5c335d5878b7268e7267e658fb96d7a66b4866eb82b8`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 11 Oct 2017 14:01:45 GMT
ADD file:17aebc392b3cf207dbe2809abd34b9eec60c3a0e8b39dcd04f8f29a863e966b3 in / 
# Wed, 11 Oct 2017 14:01:47 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 11 Oct 2017 14:01:49 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 14:01:50 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 11 Oct 2017 14:01:52 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 11 Oct 2017 14:01:52 GMT
CMD ["/bin/bash"]
# Wed, 11 Oct 2017 14:21:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 14:22:01 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 11 Oct 2017 14:22:11 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 11 Oct 2017 14:24:25 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 14:24:33 GMT
ENV LANG=C.UTF-8
# Wed, 11 Oct 2017 14:24:34 GMT
ENV LC_ALL=C.UTF-8
# Wed, 11 Oct 2017 14:25:14 GMT
RUN rosdep init     && rosdep update
# Wed, 11 Oct 2017 15:08:36 GMT
ENV ROS_DISTRO=lunar
# Wed, 11 Oct 2017 15:16:25 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 15:16:44 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Wed, 11 Oct 2017 15:16:44 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 11 Oct 2017 15:16:45 GMT
CMD ["bash"]
# Wed, 11 Oct 2017 15:21:52 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 15:41:13 GMT
RUN apt-get update && apt-get install -y     ros-lunar-perception=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:aac43d4d6c83c61c78a7814ef7d2e02dc6c2f52dc110ff181aea144991711636`  
		Last Modified: Fri, 06 Oct 2017 22:13:46 GMT  
		Size: 43.4 MB (43426326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eed65d92515dfacf9a35d3301bc4847f1057d240f9ab3c442b573bdbb8452791`  
		Last Modified: Wed, 11 Oct 2017 14:03:45 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2de5574dca5eb5a1b9351c990c0865bbe18370da61e7169a539ba80bbdb058b2`  
		Last Modified: Wed, 11 Oct 2017 14:03:44 GMT  
		Size: 617.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5a76e352cce541b89ec31a527e09d2185c9427315f118b56573f79eb31b4c2b`  
		Last Modified: Wed, 11 Oct 2017 14:03:45 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2aceaacecb77ef3360c013ffcd305eecd6cf17a32bd143a72ca0b86b74721ba`  
		Last Modified: Wed, 11 Oct 2017 14:03:45 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df2b464ff94260bae09f2719a99368cdaf4e91cb4ac7f8292454419def5b6bb2`  
		Last Modified: Wed, 11 Oct 2017 15:42:12 GMT  
		Size: 4.8 MB (4819150 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:317f3f12586aa0432e4b41b4e01e1e59b1132bbf0cb8d0a8bec39998598cfc19`  
		Last Modified: Wed, 11 Oct 2017 15:42:04 GMT  
		Size: 13.1 KB (13087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d485a4030132f2b8618b2c1e9adeb0f3512ff862a371cbffb828825cd90b712`  
		Last Modified: Wed, 11 Oct 2017 15:42:02 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebe5f4f3df9287919c1ddc687c131a9235d6053e50879ffbdd2307364fe2784c`  
		Last Modified: Wed, 11 Oct 2017 15:43:00 GMT  
		Size: 52.3 MB (52342563 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:624ab9416f2027ffb47c0f23bc9805307660d34dc41b41bace605c5ee21025e3`  
		Last Modified: Wed, 11 Oct 2017 15:42:03 GMT  
		Size: 760.2 KB (760212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f58fa0ad6cdafaba7ddd06842854509ea748ac290ddc510d8853a6147d4d9103`  
		Last Modified: Wed, 11 Oct 2017 15:50:42 GMT  
		Size: 173.9 MB (173932127 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac7c9712a19c1c4b2ea9074d8c5d23ff54433f72a4000bb203336c675f1fa26a`  
		Last Modified: Wed, 11 Oct 2017 15:49:33 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfa73e756fe32eeb108ff093187ea9603341fc6eb1d52a97d14c3dbe37c1b887`  
		Last Modified: Wed, 11 Oct 2017 15:52:00 GMT  
		Size: 74.6 MB (74573882 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c3e3be2915bc4e40c02986f6697516712788e8985b54190d921ddefa6b0f356`  
		Last Modified: Wed, 11 Oct 2017 15:57:02 GMT  
		Size: 316.6 MB (316598975 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:lunar-perception-zesty`

```console
$ docker pull ros@sha256:07415aaa98060a2c020ab089a02c2b30b339f111f31a7840db265fdeaff808ca
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `ros:lunar-perception-zesty` - linux; amd64

```console
$ docker pull ros@sha256:f97270cf21a95c74abac42346a81804cdd5e6e4c687b3fbd537c85646ea0fb54
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **776.3 MB (776311324 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c0713189e5298094a1d3e5351431b911303d89086a49380b8589a0cb9b25d9f7`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 18 Sep 2017 23:31:50 GMT
ADD file:4e2e1f8336bcc64e853e9f3462f0829ce85b34a32755dba06aa7bd0007eda4f0 in / 
# Mon, 18 Sep 2017 23:31:50 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 18 Sep 2017 23:31:51 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 18 Sep 2017 23:31:52 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Mon, 18 Sep 2017 23:31:52 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 18 Sep 2017 23:31:52 GMT
CMD ["/bin/bash"]
# Sat, 04 Nov 2017 07:38:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 07:38:41 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 04 Nov 2017 07:38:42 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu zesty main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 04 Nov 2017 07:39:15 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 07:39:15 GMT
ENV LANG=C.UTF-8
# Sat, 04 Nov 2017 07:39:15 GMT
ENV LC_ALL=C.UTF-8
# Sat, 04 Nov 2017 07:39:27 GMT
RUN rosdep init     && rosdep update
# Sat, 04 Nov 2017 07:39:27 GMT
ENV ROS_DISTRO=lunar
# Sat, 04 Nov 2017 07:41:15 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 07:41:17 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Sat, 04 Nov 2017 07:41:17 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 04 Nov 2017 07:41:17 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 07:42:30 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 07:46:33 GMT
RUN apt-get update && apt-get install -y     ros-lunar-perception=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:8b23367590c32dbb6954ab3cc9b6c451b9763556c72a893538efe88583f6a5dc`  
		Last Modified: Mon, 18 Sep 2017 23:33:09 GMT  
		Size: 38.4 MB (38437889 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7feb578947e4b86e0a0cff64b42489dc1305bbacdb3ed36d0afe95a19ebf845`  
		Last Modified: Mon, 18 Sep 2017 23:33:03 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac836f06379c8d7356e0d2e7dbb3e9f3924616527fa51b95545fb455eec31f08`  
		Last Modified: Mon, 18 Sep 2017 23:33:03 GMT  
		Size: 569.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be286dc472df31f16953d34151f836d0186fddeea6cd56dcefd2a6d46a992500`  
		Last Modified: Mon, 18 Sep 2017 23:33:03 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5533df5f353d9fbcbd081e9dd653fe7d8ddebed958d1f0e56fa4a87b216f13c1`  
		Last Modified: Mon, 18 Sep 2017 23:33:03 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d09d3709be99029b87aee9623498a0cee2b3f119f8b34544d49e33149e4afe2`  
		Last Modified: Sat, 04 Nov 2017 08:16:07 GMT  
		Size: 3.4 MB (3401528 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b59bdd7c7501c7c91e937813abef9b63af49cce54cae5b8600c946cb30a68b3`  
		Last Modified: Sat, 04 Nov 2017 08:16:06 GMT  
		Size: 1.4 KB (1379 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:814d9c881c9a47d22d8e73e53f8ad1b8b964e1466e899304397c188c798f5fbd`  
		Last Modified: Sat, 04 Nov 2017 08:16:05 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2594e9d31c140fbc622a069215b5ea094c36c7b19292e5bb3bcba4fcacb6415b`  
		Last Modified: Sat, 04 Nov 2017 08:16:34 GMT  
		Size: 58.6 MB (58606566 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb69ee77be00f22c4e2996eb0352ad434bcd301f7e3bf3e26459ae2a59d34df0`  
		Last Modified: Sat, 04 Nov 2017 08:16:02 GMT  
		Size: 766.3 KB (766309 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4425e7a07cf0c781ebffd3051718b467f6ea400a11ddba0c28f06b5565868267`  
		Last Modified: Sat, 04 Nov 2017 08:17:16 GMT  
		Size: 252.3 MB (252317986 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ccadcc928b3dbc16bec751a12fa74eac31c11ad80bde31b5dee733a137b708b`  
		Last Modified: Sat, 04 Nov 2017 08:16:03 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3667ecf2d1c7731d9aa431933ca709ae75c0b4622d53ffcbb8d527db00a37c5e`  
		Last Modified: Sat, 04 Nov 2017 08:17:47 GMT  
		Size: 74.6 MB (74576324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28c7fba5cf7e1ce2bd71d420724a42428cb0b373d3b152b2de2fa1576961cd65`  
		Last Modified: Sat, 04 Nov 2017 08:19:39 GMT  
		Size: 348.2 MB (348200498 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:lunar-robot`

```console
$ docker pull ros@sha256:72a0cbc2829b0e1f611f6c21ea46e9e4a8ab8e67ec4db92b50fe533cd25b14fb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:lunar-robot` - linux; amd64

```console
$ docker pull ros@sha256:a9656be399eefda6851a0879535e8fe019c476e4998ffc23887450d357c3a89f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **495.8 MB (495843433 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:515d89043db6b7a67d19e2c4c4783be5d8632a8112d44b2bc3f9cf5847c728f0`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 10 Oct 2017 20:59:02 GMT
ADD file:5b334adf9d9a2256add2a801b49d4b23c93b0973ec22bb798973d571c948f102 in / 
# Tue, 10 Oct 2017 20:59:02 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 10 Oct 2017 20:59:03 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 20:59:04 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 10 Oct 2017 20:59:04 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 10 Oct 2017 20:59:05 GMT
CMD ["/bin/bash"]
# Sat, 04 Nov 2017 07:12:14 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 07:12:15 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 04 Nov 2017 07:12:16 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 04 Nov 2017 07:12:56 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 07:12:57 GMT
ENV LANG=C.UTF-8
# Sat, 04 Nov 2017 07:12:57 GMT
ENV LC_ALL=C.UTF-8
# Sat, 04 Nov 2017 07:13:15 GMT
RUN rosdep init     && rosdep update
# Sat, 04 Nov 2017 07:29:51 GMT
ENV ROS_DISTRO=lunar
# Sat, 04 Nov 2017 07:31:24 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 07:31:25 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Sat, 04 Nov 2017 07:31:25 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 04 Nov 2017 07:31:25 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 07:32:29 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 07:33:50 GMT
RUN apt-get update && apt-get install -y     ros-lunar-robot=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:ae79f251470513c2a0ec750117a81f2d58a50727901ca416efecf297b8a03913`  
		Last Modified: Fri, 06 Oct 2017 13:04:44 GMT  
		Size: 47.6 MB (47617129 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ad56d5fc14905886c560200ab69f905b5c5287eaf12f8f761a7ab54f7a61c1b`  
		Last Modified: Tue, 10 Oct 2017 21:00:10 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:170e558760e8b2e484a022b7d7272cf284fc4e1936ba7a0a671fc586440ad272`  
		Last Modified: Tue, 10 Oct 2017 21:00:10 GMT  
		Size: 618.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:395460e233f5bdcd910d618a3b615e0d881e09ad27d58f3065eef53ecae6a808`  
		Last Modified: Tue, 10 Oct 2017 21:00:10 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f01dc62e444044e3ce494269837ef0aedb80fef69c679416137f17812d2eb9c`  
		Last Modified: Tue, 10 Oct 2017 21:00:10 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e3204a200f68200aa306b9f7be4fbfc14ff2f445cc0684830dba2d3f62a3ef6`  
		Last Modified: Sat, 04 Nov 2017 08:03:44 GMT  
		Size: 5.4 MB (5362103 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb487289e44f75e32d15f3ec5c13ac4dc6edd76d2c9d80fe9cf2584b4fc63f15`  
		Last Modified: Sat, 04 Nov 2017 08:03:42 GMT  
		Size: 13.1 KB (13082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b0e83c3ea6c0a5b6670174d23e0dfa9fd811ee86a12d3df4e5388e4e358d9eb`  
		Last Modified: Sat, 04 Nov 2017 08:03:40 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9dc8b2534c2217471ca02fbc18444a32ebf3fae1db3d711b6f4fadd96bece45d`  
		Last Modified: Sat, 04 Nov 2017 08:04:09 GMT  
		Size: 55.5 MB (55498654 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19bb8c21845fd7cb0e6e034a39fbd9ad9f4251ec8f63eb997ec07247bd6e2955`  
		Last Modified: Sat, 04 Nov 2017 08:03:40 GMT  
		Size: 766.3 KB (766309 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f87d9c273da134fa4defe01b1a81357a66e609deba152f165db349206b9a3d4`  
		Last Modified: Sat, 04 Nov 2017 08:12:50 GMT  
		Size: 193.3 MB (193331820 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8cbfc29c5b6f300cacdc501a7a9a9b599df2c5c4eeb1a84e778554ef5b79fafa`  
		Last Modified: Sat, 04 Nov 2017 08:12:00 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6183736ae1c8e60978953369d200110437fd9d8c407cd9a973911bae5ded5d24`  
		Last Modified: Sat, 04 Nov 2017 08:13:30 GMT  
		Size: 89.6 MB (89553909 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa0ebae290ea5c4be60148c1222691fbe2a5df9556387ee878b68f549f25c4d7`  
		Last Modified: Sat, 04 Nov 2017 08:14:15 GMT  
		Size: 103.7 MB (103697520 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-robot` - linux; arm variant v7

```console
$ docker pull ros@sha256:1be0ac5b8216e7c902c99f423e986b9e15ba830ff13b7b87aa2467edd494f688
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **426.3 MB (426291473 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7252a976924d9dab32cedc2e0e65f3642225687721871bd9d221bb8250afecbb`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 11 Oct 2017 12:51:12 GMT
ADD file:b8b49b959bf907b482bdc24c3c6f159f7aed1a3fb73e8efa669b12800635d25f in / 
# Wed, 11 Oct 2017 12:51:13 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 11 Oct 2017 12:51:14 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 12:51:14 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 11 Oct 2017 12:51:15 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 11 Oct 2017 12:51:15 GMT
CMD ["/bin/bash"]
# Wed, 11 Oct 2017 13:08:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 13:08:35 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 11 Oct 2017 13:08:39 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 11 Oct 2017 13:09:23 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 13:09:27 GMT
ENV LANG=C.UTF-8
# Wed, 11 Oct 2017 13:09:27 GMT
ENV LC_ALL=C.UTF-8
# Wed, 11 Oct 2017 13:09:51 GMT
RUN rosdep init     && rosdep update
# Wed, 11 Oct 2017 13:16:12 GMT
ENV ROS_DISTRO=lunar
# Wed, 11 Oct 2017 13:17:24 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 13:17:26 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Wed, 11 Oct 2017 13:17:27 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 11 Oct 2017 13:17:27 GMT
CMD ["bash"]
# Wed, 11 Oct 2017 13:18:26 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 13:19:30 GMT
RUN apt-get update && apt-get install -y     ros-lunar-robot=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:26e5736d414450f12f7c066ff59a208e9ea9311407c91de898505d1adbf01527`  
		Last Modified: Wed, 11 Oct 2017 12:52:25 GMT  
		Size: 42.4 MB (42444579 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3b2d7804592854a106e4cb6a8decdc17f84ce86673c5331ae4be08f6ddf9667`  
		Last Modified: Wed, 11 Oct 2017 12:52:14 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1e6e6dfa0c41d49186e1ef4cf4409826020371a07bc3a6b5509bb23e7004701`  
		Last Modified: Wed, 11 Oct 2017 12:52:15 GMT  
		Size: 614.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8b298e101bd87bb479bd9d268470b3060526668473413ad16a992f5a70b9b69`  
		Last Modified: Wed, 11 Oct 2017 12:52:14 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5da5730e907c71f6dad2a93757f203cea7518145a8d979508503cb906926d549`  
		Last Modified: Wed, 11 Oct 2017 12:52:14 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d09fc16d09d114946c081433e97aa0ce1f0885b00ae8d90b146d5359a8216fe6`  
		Last Modified: Wed, 11 Oct 2017 13:22:25 GMT  
		Size: 4.6 MB (4613971 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c4838a49db06950f36a6a93c8e2cb59919afaa2b80cc8762c8c4eb24e74719f`  
		Last Modified: Wed, 11 Oct 2017 13:22:24 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:079f3b787a6e9a31ec800dda6c1dc7d81bc91726e4474210d6cbdffa6238816d`  
		Last Modified: Wed, 11 Oct 2017 13:22:22 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c661b84e7cbabc46a583c3613c95c982378c0be5a2a8ae7e572bd7578b816d0`  
		Last Modified: Wed, 11 Oct 2017 13:22:41 GMT  
		Size: 50.7 MB (50654517 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f475e2bfcce8aa8c733d291239817e99fe1eda5cabadd03cb3eb94f08f6603ca`  
		Last Modified: Wed, 11 Oct 2017 13:22:23 GMT  
		Size: 760.4 KB (760364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15e2de1d4dc3c9e492e702a8efd5e249de49a315b5b6228cdc5572d80d81430c`  
		Last Modified: Wed, 11 Oct 2017 13:27:18 GMT  
		Size: 164.7 MB (164714786 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:023a0667681286f75635b33cd4f867545c422594a9692aaf41e8be931b4087ad`  
		Last Modified: Wed, 11 Oct 2017 13:26:30 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:192089ba9519042b0a41fdcc357bc33719c909cc5a49b6d41eec9f26622ae8e2`  
		Last Modified: Wed, 11 Oct 2017 13:27:55 GMT  
		Size: 73.0 MB (72998854 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef3f947d8b4c867fae2ef24aacc21c100aa99b29e8c1b3faac231fdefa455427`  
		Last Modified: Wed, 11 Oct 2017 13:28:40 GMT  
		Size: 90.1 MB (90088421 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-robot` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:7759fc5a1faa89db250c2091d3906ec421890db3f0cd3c76b4695e97c9ec82c1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **443.8 MB (443775060 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5a95a0fd6f02b62fdf3a102c485036b27a38ba158dba17b8848827ec5e268f5b`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 11 Oct 2017 14:01:45 GMT
ADD file:17aebc392b3cf207dbe2809abd34b9eec60c3a0e8b39dcd04f8f29a863e966b3 in / 
# Wed, 11 Oct 2017 14:01:47 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 11 Oct 2017 14:01:49 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 14:01:50 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 11 Oct 2017 14:01:52 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 11 Oct 2017 14:01:52 GMT
CMD ["/bin/bash"]
# Wed, 11 Oct 2017 14:21:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 14:22:01 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 11 Oct 2017 14:22:11 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 11 Oct 2017 14:24:25 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 14:24:33 GMT
ENV LANG=C.UTF-8
# Wed, 11 Oct 2017 14:24:34 GMT
ENV LC_ALL=C.UTF-8
# Wed, 11 Oct 2017 14:25:14 GMT
RUN rosdep init     && rosdep update
# Wed, 11 Oct 2017 15:08:36 GMT
ENV ROS_DISTRO=lunar
# Wed, 11 Oct 2017 15:16:25 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 15:16:44 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Wed, 11 Oct 2017 15:16:44 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 11 Oct 2017 15:16:45 GMT
CMD ["bash"]
# Wed, 11 Oct 2017 15:21:52 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 15:28:22 GMT
RUN apt-get update && apt-get install -y     ros-lunar-robot=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:aac43d4d6c83c61c78a7814ef7d2e02dc6c2f52dc110ff181aea144991711636`  
		Last Modified: Fri, 06 Oct 2017 22:13:46 GMT  
		Size: 43.4 MB (43426326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eed65d92515dfacf9a35d3301bc4847f1057d240f9ab3c442b573bdbb8452791`  
		Last Modified: Wed, 11 Oct 2017 14:03:45 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2de5574dca5eb5a1b9351c990c0865bbe18370da61e7169a539ba80bbdb058b2`  
		Last Modified: Wed, 11 Oct 2017 14:03:44 GMT  
		Size: 617.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5a76e352cce541b89ec31a527e09d2185c9427315f118b56573f79eb31b4c2b`  
		Last Modified: Wed, 11 Oct 2017 14:03:45 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2aceaacecb77ef3360c013ffcd305eecd6cf17a32bd143a72ca0b86b74721ba`  
		Last Modified: Wed, 11 Oct 2017 14:03:45 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df2b464ff94260bae09f2719a99368cdaf4e91cb4ac7f8292454419def5b6bb2`  
		Last Modified: Wed, 11 Oct 2017 15:42:12 GMT  
		Size: 4.8 MB (4819150 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:317f3f12586aa0432e4b41b4e01e1e59b1132bbf0cb8d0a8bec39998598cfc19`  
		Last Modified: Wed, 11 Oct 2017 15:42:04 GMT  
		Size: 13.1 KB (13087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d485a4030132f2b8618b2c1e9adeb0f3512ff862a371cbffb828825cd90b712`  
		Last Modified: Wed, 11 Oct 2017 15:42:02 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebe5f4f3df9287919c1ddc687c131a9235d6053e50879ffbdd2307364fe2784c`  
		Last Modified: Wed, 11 Oct 2017 15:43:00 GMT  
		Size: 52.3 MB (52342563 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:624ab9416f2027ffb47c0f23bc9805307660d34dc41b41bace605c5ee21025e3`  
		Last Modified: Wed, 11 Oct 2017 15:42:03 GMT  
		Size: 760.2 KB (760212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f58fa0ad6cdafaba7ddd06842854509ea748ac290ddc510d8853a6147d4d9103`  
		Last Modified: Wed, 11 Oct 2017 15:50:42 GMT  
		Size: 173.9 MB (173932127 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac7c9712a19c1c4b2ea9074d8c5d23ff54433f72a4000bb203336c675f1fa26a`  
		Last Modified: Wed, 11 Oct 2017 15:49:33 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfa73e756fe32eeb108ff093187ea9603341fc6eb1d52a97d14c3dbe37c1b887`  
		Last Modified: Wed, 11 Oct 2017 15:52:00 GMT  
		Size: 74.6 MB (74573882 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da8c2d0e91f4f69d5295f85c66021e169a4d308998f872797159d729813f3f42`  
		Last Modified: Wed, 11 Oct 2017 15:54:22 GMT  
		Size: 93.9 MB (93904805 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:lunar-robot-stretch`

```console
$ docker pull ros@sha256:d8ebbd31a2fccfd73af7a2c6e6a92b023814669b9e508f8910599b949bd743b2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `ros:lunar-robot-stretch` - linux; amd64

```console
$ docker pull ros@sha256:cc29c50d4074351a35b579638b4d5d05bc0e3d83a8401311ddd6bd0f10be8f90
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **552.2 MB (552194147 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e2b517d5aa17da205ce1167ecc85bd2bd1d50d7673415656505381acc9b98efa`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 04 Nov 2017 05:26:40 GMT
ADD file:a71e077a42995a68ffe4834d85cfe26af4ea12aa8ed43decc03cc487124b1f70 in / 
# Sat, 04 Nov 2017 05:26:40 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 07:47:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 07:47:50 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 04 Nov 2017 07:47:51 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu stretch main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 04 Nov 2017 07:48:20 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 07:48:20 GMT
ENV LANG=C.UTF-8
# Sat, 04 Nov 2017 07:48:20 GMT
ENV LC_ALL=C.UTF-8
# Sat, 04 Nov 2017 07:48:31 GMT
RUN rosdep init     && rosdep update
# Sat, 04 Nov 2017 07:48:31 GMT
ENV ROS_DISTRO=lunar
# Sat, 04 Nov 2017 07:49:38 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 07:49:39 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Sat, 04 Nov 2017 07:49:39 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 04 Nov 2017 07:49:40 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 07:50:46 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 07:51:23 GMT
RUN apt-get update && apt-get install -y     ros-lunar-robot=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:3e17c6eae66cd23c59751c8d8f5eaf7044e0611dc5cebb12b1273be07cdac242`  
		Last Modified: Mon, 09 Oct 2017 21:41:38 GMT  
		Size: 45.1 MB (45129088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c691bf98a8b9b022ad7d943044a3b0aa17050fa4d86da14642a76f3688d1742`  
		Last Modified: Sat, 04 Nov 2017 08:19:55 GMT  
		Size: 7.2 MB (7218242 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84c5a999c8f977df42fe8694ed09456d12c7a03807f138a788305e2b8f6c8b61`  
		Last Modified: Sat, 04 Nov 2017 08:19:53 GMT  
		Size: 1.4 KB (1377 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c00da47f1ff6c9bdcdb8042b5cf91f23ad4b81c4e0c6be15efb8650f898b5bcc`  
		Last Modified: Sat, 04 Nov 2017 08:19:51 GMT  
		Size: 220.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75a2cabceb278bbdaac1b07772dfc1a44549195d531d1d0794cd47027627b953`  
		Last Modified: Sat, 04 Nov 2017 08:20:20 GMT  
		Size: 64.7 MB (64677566 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0873d4ee1db3c8672f6d556af881fd67f571acfd58e33a3af25a687c0952bc73`  
		Last Modified: Sat, 04 Nov 2017 08:19:51 GMT  
		Size: 766.6 KB (766568 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0f00b747f15456afadc3934128569256f820fb30db1940e7805ec723524c499`  
		Last Modified: Sat, 04 Nov 2017 08:20:57 GMT  
		Size: 251.8 MB (251780781 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e94b8c4555f583b2ea91b311a6331e1a67f2b19068995718a3c380fd112366c4`  
		Last Modified: Sat, 04 Nov 2017 08:19:51 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ed34c9355e15efcbb54e7f6c4b8ba1b65780323c9573fb224be745ded5f4af1`  
		Last Modified: Sat, 04 Nov 2017 08:21:39 GMT  
		Size: 122.2 MB (122197753 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2441fb4b76fc03bd3895c8b0079c77e5f55fcf3e935f8783e59ecf5095d4dc9`  
		Last Modified: Sat, 04 Nov 2017 08:22:09 GMT  
		Size: 60.4 MB (60422358 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-robot-stretch` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:43c7928c16dc58b93062c1387f001b215aa39a0300abeec8411cfa719bf91d1f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **492.5 MB (492497121 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eecacb155d6cefbbe05fa6496eaf89ea0ef451728ba119aed91922381c8619b3`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:47:18 GMT
ADD file:bf097edec8505e5cb1e432319988aeb28a6f918edef706b3c543fa61aaaea4cb in / 
# Mon, 09 Oct 2017 21:47:19 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 06:08:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 06:08:42 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 10 Oct 2017 06:08:44 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu stretch main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 10 Oct 2017 06:13:07 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 06:13:08 GMT
ENV LANG=C.UTF-8
# Tue, 10 Oct 2017 06:13:09 GMT
ENV LC_ALL=C.UTF-8
# Tue, 10 Oct 2017 06:13:48 GMT
RUN rosdep init     && rosdep update
# Tue, 10 Oct 2017 06:13:49 GMT
ENV ROS_DISTRO=lunar
# Tue, 10 Oct 2017 06:24:14 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 06:24:38 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 10 Oct 2017 06:24:39 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 10 Oct 2017 06:24:40 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 06:29:06 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 06:34:40 GMT
RUN apt-get update && apt-get install -y     ros-lunar-robot=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:0e5a8be23912597ff0d89db096abd4c4383c8cf4ee700d333b86f881ea289875`  
		Last Modified: Mon, 09 Oct 2017 22:01:04 GMT  
		Size: 42.9 MB (42911727 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:969d7a7a072b756f3eec7f18096a6edc68b278e2fef6f0cfa1c2556ccb10d9d8`  
		Last Modified: Tue, 10 Oct 2017 07:01:28 GMT  
		Size: 6.8 MB (6793394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03c304949e92fc2c120b87d79a093cd77a22af9a9bbb6dd21aa98a79a724ef23`  
		Last Modified: Tue, 10 Oct 2017 07:01:26 GMT  
		Size: 1.4 KB (1378 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcd8cc453b9305a42bd7bbad3fe9838ab4a95fed3602abc9174d849babeb86f7`  
		Last Modified: Tue, 10 Oct 2017 07:01:23 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9c258b49f4293fb7f6b7085b6fedc38c34f7f86d7ed80935d0b08410d01f36f`  
		Last Modified: Tue, 10 Oct 2017 07:01:51 GMT  
		Size: 61.8 MB (61767666 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:833480eca8d21ed46bd927eaaf48b8db1f085b0871618dbce3e62263da74e4f6`  
		Last Modified: Tue, 10 Oct 2017 07:01:24 GMT  
		Size: 760.2 KB (760219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64780436c110f86637243acd08bd0f9481f6485b95c1b5cd23acb2830f4a0b48`  
		Last Modified: Tue, 10 Oct 2017 07:02:40 GMT  
		Size: 206.7 MB (206742472 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad82b97105a570ad38e6a8c9004e5aae4019a226f02a12e57fb69e4ae4752f19`  
		Last Modified: Tue, 10 Oct 2017 07:01:24 GMT  
		Size: 192.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e55dfaf6116bf0c989d8b35601f84fc1fbe3505292c3ad46243025ff2df47b8`  
		Last Modified: Tue, 10 Oct 2017 07:03:45 GMT  
		Size: 116.0 MB (116017289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c33ba4707be8bfe4fd31eb5c74ef24fe41b3a6f02fe6107c04271e88235689c`  
		Last Modified: Tue, 10 Oct 2017 07:04:34 GMT  
		Size: 57.5 MB (57502560 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:lunar-robot-xenial`

```console
$ docker pull ros@sha256:72a0cbc2829b0e1f611f6c21ea46e9e4a8ab8e67ec4db92b50fe533cd25b14fb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:lunar-robot-xenial` - linux; amd64

```console
$ docker pull ros@sha256:a9656be399eefda6851a0879535e8fe019c476e4998ffc23887450d357c3a89f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **495.8 MB (495843433 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:515d89043db6b7a67d19e2c4c4783be5d8632a8112d44b2bc3f9cf5847c728f0`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 10 Oct 2017 20:59:02 GMT
ADD file:5b334adf9d9a2256add2a801b49d4b23c93b0973ec22bb798973d571c948f102 in / 
# Tue, 10 Oct 2017 20:59:02 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 10 Oct 2017 20:59:03 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 20:59:04 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 10 Oct 2017 20:59:04 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 10 Oct 2017 20:59:05 GMT
CMD ["/bin/bash"]
# Sat, 04 Nov 2017 07:12:14 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 07:12:15 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 04 Nov 2017 07:12:16 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 04 Nov 2017 07:12:56 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 07:12:57 GMT
ENV LANG=C.UTF-8
# Sat, 04 Nov 2017 07:12:57 GMT
ENV LC_ALL=C.UTF-8
# Sat, 04 Nov 2017 07:13:15 GMT
RUN rosdep init     && rosdep update
# Sat, 04 Nov 2017 07:29:51 GMT
ENV ROS_DISTRO=lunar
# Sat, 04 Nov 2017 07:31:24 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 07:31:25 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Sat, 04 Nov 2017 07:31:25 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 04 Nov 2017 07:31:25 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 07:32:29 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 07:33:50 GMT
RUN apt-get update && apt-get install -y     ros-lunar-robot=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:ae79f251470513c2a0ec750117a81f2d58a50727901ca416efecf297b8a03913`  
		Last Modified: Fri, 06 Oct 2017 13:04:44 GMT  
		Size: 47.6 MB (47617129 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ad56d5fc14905886c560200ab69f905b5c5287eaf12f8f761a7ab54f7a61c1b`  
		Last Modified: Tue, 10 Oct 2017 21:00:10 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:170e558760e8b2e484a022b7d7272cf284fc4e1936ba7a0a671fc586440ad272`  
		Last Modified: Tue, 10 Oct 2017 21:00:10 GMT  
		Size: 618.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:395460e233f5bdcd910d618a3b615e0d881e09ad27d58f3065eef53ecae6a808`  
		Last Modified: Tue, 10 Oct 2017 21:00:10 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f01dc62e444044e3ce494269837ef0aedb80fef69c679416137f17812d2eb9c`  
		Last Modified: Tue, 10 Oct 2017 21:00:10 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e3204a200f68200aa306b9f7be4fbfc14ff2f445cc0684830dba2d3f62a3ef6`  
		Last Modified: Sat, 04 Nov 2017 08:03:44 GMT  
		Size: 5.4 MB (5362103 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb487289e44f75e32d15f3ec5c13ac4dc6edd76d2c9d80fe9cf2584b4fc63f15`  
		Last Modified: Sat, 04 Nov 2017 08:03:42 GMT  
		Size: 13.1 KB (13082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b0e83c3ea6c0a5b6670174d23e0dfa9fd811ee86a12d3df4e5388e4e358d9eb`  
		Last Modified: Sat, 04 Nov 2017 08:03:40 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9dc8b2534c2217471ca02fbc18444a32ebf3fae1db3d711b6f4fadd96bece45d`  
		Last Modified: Sat, 04 Nov 2017 08:04:09 GMT  
		Size: 55.5 MB (55498654 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19bb8c21845fd7cb0e6e034a39fbd9ad9f4251ec8f63eb997ec07247bd6e2955`  
		Last Modified: Sat, 04 Nov 2017 08:03:40 GMT  
		Size: 766.3 KB (766309 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f87d9c273da134fa4defe01b1a81357a66e609deba152f165db349206b9a3d4`  
		Last Modified: Sat, 04 Nov 2017 08:12:50 GMT  
		Size: 193.3 MB (193331820 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8cbfc29c5b6f300cacdc501a7a9a9b599df2c5c4eeb1a84e778554ef5b79fafa`  
		Last Modified: Sat, 04 Nov 2017 08:12:00 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6183736ae1c8e60978953369d200110437fd9d8c407cd9a973911bae5ded5d24`  
		Last Modified: Sat, 04 Nov 2017 08:13:30 GMT  
		Size: 89.6 MB (89553909 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa0ebae290ea5c4be60148c1222691fbe2a5df9556387ee878b68f549f25c4d7`  
		Last Modified: Sat, 04 Nov 2017 08:14:15 GMT  
		Size: 103.7 MB (103697520 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-robot-xenial` - linux; arm variant v7

```console
$ docker pull ros@sha256:1be0ac5b8216e7c902c99f423e986b9e15ba830ff13b7b87aa2467edd494f688
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **426.3 MB (426291473 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7252a976924d9dab32cedc2e0e65f3642225687721871bd9d221bb8250afecbb`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 11 Oct 2017 12:51:12 GMT
ADD file:b8b49b959bf907b482bdc24c3c6f159f7aed1a3fb73e8efa669b12800635d25f in / 
# Wed, 11 Oct 2017 12:51:13 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 11 Oct 2017 12:51:14 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 12:51:14 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 11 Oct 2017 12:51:15 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 11 Oct 2017 12:51:15 GMT
CMD ["/bin/bash"]
# Wed, 11 Oct 2017 13:08:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 13:08:35 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 11 Oct 2017 13:08:39 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 11 Oct 2017 13:09:23 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 13:09:27 GMT
ENV LANG=C.UTF-8
# Wed, 11 Oct 2017 13:09:27 GMT
ENV LC_ALL=C.UTF-8
# Wed, 11 Oct 2017 13:09:51 GMT
RUN rosdep init     && rosdep update
# Wed, 11 Oct 2017 13:16:12 GMT
ENV ROS_DISTRO=lunar
# Wed, 11 Oct 2017 13:17:24 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 13:17:26 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Wed, 11 Oct 2017 13:17:27 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 11 Oct 2017 13:17:27 GMT
CMD ["bash"]
# Wed, 11 Oct 2017 13:18:26 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 13:19:30 GMT
RUN apt-get update && apt-get install -y     ros-lunar-robot=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:26e5736d414450f12f7c066ff59a208e9ea9311407c91de898505d1adbf01527`  
		Last Modified: Wed, 11 Oct 2017 12:52:25 GMT  
		Size: 42.4 MB (42444579 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3b2d7804592854a106e4cb6a8decdc17f84ce86673c5331ae4be08f6ddf9667`  
		Last Modified: Wed, 11 Oct 2017 12:52:14 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1e6e6dfa0c41d49186e1ef4cf4409826020371a07bc3a6b5509bb23e7004701`  
		Last Modified: Wed, 11 Oct 2017 12:52:15 GMT  
		Size: 614.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8b298e101bd87bb479bd9d268470b3060526668473413ad16a992f5a70b9b69`  
		Last Modified: Wed, 11 Oct 2017 12:52:14 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5da5730e907c71f6dad2a93757f203cea7518145a8d979508503cb906926d549`  
		Last Modified: Wed, 11 Oct 2017 12:52:14 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d09fc16d09d114946c081433e97aa0ce1f0885b00ae8d90b146d5359a8216fe6`  
		Last Modified: Wed, 11 Oct 2017 13:22:25 GMT  
		Size: 4.6 MB (4613971 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c4838a49db06950f36a6a93c8e2cb59919afaa2b80cc8762c8c4eb24e74719f`  
		Last Modified: Wed, 11 Oct 2017 13:22:24 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:079f3b787a6e9a31ec800dda6c1dc7d81bc91726e4474210d6cbdffa6238816d`  
		Last Modified: Wed, 11 Oct 2017 13:22:22 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c661b84e7cbabc46a583c3613c95c982378c0be5a2a8ae7e572bd7578b816d0`  
		Last Modified: Wed, 11 Oct 2017 13:22:41 GMT  
		Size: 50.7 MB (50654517 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f475e2bfcce8aa8c733d291239817e99fe1eda5cabadd03cb3eb94f08f6603ca`  
		Last Modified: Wed, 11 Oct 2017 13:22:23 GMT  
		Size: 760.4 KB (760364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15e2de1d4dc3c9e492e702a8efd5e249de49a315b5b6228cdc5572d80d81430c`  
		Last Modified: Wed, 11 Oct 2017 13:27:18 GMT  
		Size: 164.7 MB (164714786 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:023a0667681286f75635b33cd4f867545c422594a9692aaf41e8be931b4087ad`  
		Last Modified: Wed, 11 Oct 2017 13:26:30 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:192089ba9519042b0a41fdcc357bc33719c909cc5a49b6d41eec9f26622ae8e2`  
		Last Modified: Wed, 11 Oct 2017 13:27:55 GMT  
		Size: 73.0 MB (72998854 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef3f947d8b4c867fae2ef24aacc21c100aa99b29e8c1b3faac231fdefa455427`  
		Last Modified: Wed, 11 Oct 2017 13:28:40 GMT  
		Size: 90.1 MB (90088421 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-robot-xenial` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:7759fc5a1faa89db250c2091d3906ec421890db3f0cd3c76b4695e97c9ec82c1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **443.8 MB (443775060 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5a95a0fd6f02b62fdf3a102c485036b27a38ba158dba17b8848827ec5e268f5b`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 11 Oct 2017 14:01:45 GMT
ADD file:17aebc392b3cf207dbe2809abd34b9eec60c3a0e8b39dcd04f8f29a863e966b3 in / 
# Wed, 11 Oct 2017 14:01:47 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 11 Oct 2017 14:01:49 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 14:01:50 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 11 Oct 2017 14:01:52 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 11 Oct 2017 14:01:52 GMT
CMD ["/bin/bash"]
# Wed, 11 Oct 2017 14:21:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 14:22:01 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 11 Oct 2017 14:22:11 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 11 Oct 2017 14:24:25 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 14:24:33 GMT
ENV LANG=C.UTF-8
# Wed, 11 Oct 2017 14:24:34 GMT
ENV LC_ALL=C.UTF-8
# Wed, 11 Oct 2017 14:25:14 GMT
RUN rosdep init     && rosdep update
# Wed, 11 Oct 2017 15:08:36 GMT
ENV ROS_DISTRO=lunar
# Wed, 11 Oct 2017 15:16:25 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 15:16:44 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Wed, 11 Oct 2017 15:16:44 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 11 Oct 2017 15:16:45 GMT
CMD ["bash"]
# Wed, 11 Oct 2017 15:21:52 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 15:28:22 GMT
RUN apt-get update && apt-get install -y     ros-lunar-robot=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:aac43d4d6c83c61c78a7814ef7d2e02dc6c2f52dc110ff181aea144991711636`  
		Last Modified: Fri, 06 Oct 2017 22:13:46 GMT  
		Size: 43.4 MB (43426326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eed65d92515dfacf9a35d3301bc4847f1057d240f9ab3c442b573bdbb8452791`  
		Last Modified: Wed, 11 Oct 2017 14:03:45 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2de5574dca5eb5a1b9351c990c0865bbe18370da61e7169a539ba80bbdb058b2`  
		Last Modified: Wed, 11 Oct 2017 14:03:44 GMT  
		Size: 617.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5a76e352cce541b89ec31a527e09d2185c9427315f118b56573f79eb31b4c2b`  
		Last Modified: Wed, 11 Oct 2017 14:03:45 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2aceaacecb77ef3360c013ffcd305eecd6cf17a32bd143a72ca0b86b74721ba`  
		Last Modified: Wed, 11 Oct 2017 14:03:45 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df2b464ff94260bae09f2719a99368cdaf4e91cb4ac7f8292454419def5b6bb2`  
		Last Modified: Wed, 11 Oct 2017 15:42:12 GMT  
		Size: 4.8 MB (4819150 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:317f3f12586aa0432e4b41b4e01e1e59b1132bbf0cb8d0a8bec39998598cfc19`  
		Last Modified: Wed, 11 Oct 2017 15:42:04 GMT  
		Size: 13.1 KB (13087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d485a4030132f2b8618b2c1e9adeb0f3512ff862a371cbffb828825cd90b712`  
		Last Modified: Wed, 11 Oct 2017 15:42:02 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebe5f4f3df9287919c1ddc687c131a9235d6053e50879ffbdd2307364fe2784c`  
		Last Modified: Wed, 11 Oct 2017 15:43:00 GMT  
		Size: 52.3 MB (52342563 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:624ab9416f2027ffb47c0f23bc9805307660d34dc41b41bace605c5ee21025e3`  
		Last Modified: Wed, 11 Oct 2017 15:42:03 GMT  
		Size: 760.2 KB (760212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f58fa0ad6cdafaba7ddd06842854509ea748ac290ddc510d8853a6147d4d9103`  
		Last Modified: Wed, 11 Oct 2017 15:50:42 GMT  
		Size: 173.9 MB (173932127 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac7c9712a19c1c4b2ea9074d8c5d23ff54433f72a4000bb203336c675f1fa26a`  
		Last Modified: Wed, 11 Oct 2017 15:49:33 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfa73e756fe32eeb108ff093187ea9603341fc6eb1d52a97d14c3dbe37c1b887`  
		Last Modified: Wed, 11 Oct 2017 15:52:00 GMT  
		Size: 74.6 MB (74573882 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da8c2d0e91f4f69d5295f85c66021e169a4d308998f872797159d729813f3f42`  
		Last Modified: Wed, 11 Oct 2017 15:54:22 GMT  
		Size: 93.9 MB (93904805 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:lunar-robot-zesty`

```console
$ docker pull ros@sha256:4c7fd7ba1004c2b3164f3fe501c9de7e08df897dd9deda74da2280dc7b031d0e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `ros:lunar-robot-zesty` - linux; amd64

```console
$ docker pull ros@sha256:b58ffd57f887d79a1e15f7a903eab9b29521effa07140b4512f319677f3c6d7f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **472.5 MB (472507132 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:38f90114ddf63cea9734410c419cd31fe4d97af7170da9f345916bb2d4562646`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 18 Sep 2017 23:31:50 GMT
ADD file:4e2e1f8336bcc64e853e9f3462f0829ce85b34a32755dba06aa7bd0007eda4f0 in / 
# Mon, 18 Sep 2017 23:31:50 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 18 Sep 2017 23:31:51 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 18 Sep 2017 23:31:52 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Mon, 18 Sep 2017 23:31:52 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 18 Sep 2017 23:31:52 GMT
CMD ["/bin/bash"]
# Sat, 04 Nov 2017 07:38:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 07:38:41 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 04 Nov 2017 07:38:42 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu zesty main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 04 Nov 2017 07:39:15 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 07:39:15 GMT
ENV LANG=C.UTF-8
# Sat, 04 Nov 2017 07:39:15 GMT
ENV LC_ALL=C.UTF-8
# Sat, 04 Nov 2017 07:39:27 GMT
RUN rosdep init     && rosdep update
# Sat, 04 Nov 2017 07:39:27 GMT
ENV ROS_DISTRO=lunar
# Sat, 04 Nov 2017 07:41:15 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 07:41:17 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Sat, 04 Nov 2017 07:41:17 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 04 Nov 2017 07:41:17 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 07:42:30 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 07:43:03 GMT
RUN apt-get update && apt-get install -y     ros-lunar-robot=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:8b23367590c32dbb6954ab3cc9b6c451b9763556c72a893538efe88583f6a5dc`  
		Last Modified: Mon, 18 Sep 2017 23:33:09 GMT  
		Size: 38.4 MB (38437889 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7feb578947e4b86e0a0cff64b42489dc1305bbacdb3ed36d0afe95a19ebf845`  
		Last Modified: Mon, 18 Sep 2017 23:33:03 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac836f06379c8d7356e0d2e7dbb3e9f3924616527fa51b95545fb455eec31f08`  
		Last Modified: Mon, 18 Sep 2017 23:33:03 GMT  
		Size: 569.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be286dc472df31f16953d34151f836d0186fddeea6cd56dcefd2a6d46a992500`  
		Last Modified: Mon, 18 Sep 2017 23:33:03 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5533df5f353d9fbcbd081e9dd653fe7d8ddebed958d1f0e56fa4a87b216f13c1`  
		Last Modified: Mon, 18 Sep 2017 23:33:03 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d09d3709be99029b87aee9623498a0cee2b3f119f8b34544d49e33149e4afe2`  
		Last Modified: Sat, 04 Nov 2017 08:16:07 GMT  
		Size: 3.4 MB (3401528 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b59bdd7c7501c7c91e937813abef9b63af49cce54cae5b8600c946cb30a68b3`  
		Last Modified: Sat, 04 Nov 2017 08:16:06 GMT  
		Size: 1.4 KB (1379 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:814d9c881c9a47d22d8e73e53f8ad1b8b964e1466e899304397c188c798f5fbd`  
		Last Modified: Sat, 04 Nov 2017 08:16:05 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2594e9d31c140fbc622a069215b5ea094c36c7b19292e5bb3bcba4fcacb6415b`  
		Last Modified: Sat, 04 Nov 2017 08:16:34 GMT  
		Size: 58.6 MB (58606566 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb69ee77be00f22c4e2996eb0352ad434bcd301f7e3bf3e26459ae2a59d34df0`  
		Last Modified: Sat, 04 Nov 2017 08:16:02 GMT  
		Size: 766.3 KB (766309 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4425e7a07cf0c781ebffd3051718b467f6ea400a11ddba0c28f06b5565868267`  
		Last Modified: Sat, 04 Nov 2017 08:17:16 GMT  
		Size: 252.3 MB (252317986 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ccadcc928b3dbc16bec751a12fa74eac31c11ad80bde31b5dee733a137b708b`  
		Last Modified: Sat, 04 Nov 2017 08:16:03 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3667ecf2d1c7731d9aa431933ca709ae75c0b4622d53ffcbb8d527db00a37c5e`  
		Last Modified: Sat, 04 Nov 2017 08:17:47 GMT  
		Size: 74.6 MB (74576324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3852d1853d6014f61e9cd2c4f4e3f1b224b5037afa10cfff778b1e3f8b36ac7f`  
		Last Modified: Sat, 04 Nov 2017 08:18:11 GMT  
		Size: 44.4 MB (44396306 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:lunar-ros-base`

```console
$ docker pull ros@sha256:afc90d9a3db764bd97de4cf78a579b3bff5175eb72622c08682a915c54db5435
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:lunar-ros-base` - linux; amd64

```console
$ docker pull ros@sha256:fd835a951cc92383ca7234b34cdb2288306e2391f96ba17b7810a5b115f4e7ad
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **392.1 MB (392145913 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:89e8cd69d807b69409ef626a3ffa1ad0bf7746de233fa7c7703168087b00cc68`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 10 Oct 2017 20:59:02 GMT
ADD file:5b334adf9d9a2256add2a801b49d4b23c93b0973ec22bb798973d571c948f102 in / 
# Tue, 10 Oct 2017 20:59:02 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 10 Oct 2017 20:59:03 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 20:59:04 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 10 Oct 2017 20:59:04 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 10 Oct 2017 20:59:05 GMT
CMD ["/bin/bash"]
# Sat, 04 Nov 2017 07:12:14 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 07:12:15 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 04 Nov 2017 07:12:16 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 04 Nov 2017 07:12:56 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 07:12:57 GMT
ENV LANG=C.UTF-8
# Sat, 04 Nov 2017 07:12:57 GMT
ENV LC_ALL=C.UTF-8
# Sat, 04 Nov 2017 07:13:15 GMT
RUN rosdep init     && rosdep update
# Sat, 04 Nov 2017 07:29:51 GMT
ENV ROS_DISTRO=lunar
# Sat, 04 Nov 2017 07:31:24 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 07:31:25 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Sat, 04 Nov 2017 07:31:25 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 04 Nov 2017 07:31:25 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 07:32:29 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:ae79f251470513c2a0ec750117a81f2d58a50727901ca416efecf297b8a03913`  
		Last Modified: Fri, 06 Oct 2017 13:04:44 GMT  
		Size: 47.6 MB (47617129 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ad56d5fc14905886c560200ab69f905b5c5287eaf12f8f761a7ab54f7a61c1b`  
		Last Modified: Tue, 10 Oct 2017 21:00:10 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:170e558760e8b2e484a022b7d7272cf284fc4e1936ba7a0a671fc586440ad272`  
		Last Modified: Tue, 10 Oct 2017 21:00:10 GMT  
		Size: 618.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:395460e233f5bdcd910d618a3b615e0d881e09ad27d58f3065eef53ecae6a808`  
		Last Modified: Tue, 10 Oct 2017 21:00:10 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f01dc62e444044e3ce494269837ef0aedb80fef69c679416137f17812d2eb9c`  
		Last Modified: Tue, 10 Oct 2017 21:00:10 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e3204a200f68200aa306b9f7be4fbfc14ff2f445cc0684830dba2d3f62a3ef6`  
		Last Modified: Sat, 04 Nov 2017 08:03:44 GMT  
		Size: 5.4 MB (5362103 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb487289e44f75e32d15f3ec5c13ac4dc6edd76d2c9d80fe9cf2584b4fc63f15`  
		Last Modified: Sat, 04 Nov 2017 08:03:42 GMT  
		Size: 13.1 KB (13082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b0e83c3ea6c0a5b6670174d23e0dfa9fd811ee86a12d3df4e5388e4e358d9eb`  
		Last Modified: Sat, 04 Nov 2017 08:03:40 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9dc8b2534c2217471ca02fbc18444a32ebf3fae1db3d711b6f4fadd96bece45d`  
		Last Modified: Sat, 04 Nov 2017 08:04:09 GMT  
		Size: 55.5 MB (55498654 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19bb8c21845fd7cb0e6e034a39fbd9ad9f4251ec8f63eb997ec07247bd6e2955`  
		Last Modified: Sat, 04 Nov 2017 08:03:40 GMT  
		Size: 766.3 KB (766309 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f87d9c273da134fa4defe01b1a81357a66e609deba152f165db349206b9a3d4`  
		Last Modified: Sat, 04 Nov 2017 08:12:50 GMT  
		Size: 193.3 MB (193331820 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8cbfc29c5b6f300cacdc501a7a9a9b599df2c5c4eeb1a84e778554ef5b79fafa`  
		Last Modified: Sat, 04 Nov 2017 08:12:00 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6183736ae1c8e60978953369d200110437fd9d8c407cd9a973911bae5ded5d24`  
		Last Modified: Sat, 04 Nov 2017 08:13:30 GMT  
		Size: 89.6 MB (89553909 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-ros-base` - linux; arm variant v7

```console
$ docker pull ros@sha256:209ea0224a573eb16a5febaddac720cbba79385775de57bacad84515a9f45818
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **336.2 MB (336203052 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa73308717f868de2f4ddf0642c7083235c17a1ca1a4ee6e7aa206ec2e955a40`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 11 Oct 2017 12:51:12 GMT
ADD file:b8b49b959bf907b482bdc24c3c6f159f7aed1a3fb73e8efa669b12800635d25f in / 
# Wed, 11 Oct 2017 12:51:13 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 11 Oct 2017 12:51:14 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 12:51:14 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 11 Oct 2017 12:51:15 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 11 Oct 2017 12:51:15 GMT
CMD ["/bin/bash"]
# Wed, 11 Oct 2017 13:08:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 13:08:35 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 11 Oct 2017 13:08:39 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 11 Oct 2017 13:09:23 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 13:09:27 GMT
ENV LANG=C.UTF-8
# Wed, 11 Oct 2017 13:09:27 GMT
ENV LC_ALL=C.UTF-8
# Wed, 11 Oct 2017 13:09:51 GMT
RUN rosdep init     && rosdep update
# Wed, 11 Oct 2017 13:16:12 GMT
ENV ROS_DISTRO=lunar
# Wed, 11 Oct 2017 13:17:24 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 13:17:26 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Wed, 11 Oct 2017 13:17:27 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 11 Oct 2017 13:17:27 GMT
CMD ["bash"]
# Wed, 11 Oct 2017 13:18:26 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:26e5736d414450f12f7c066ff59a208e9ea9311407c91de898505d1adbf01527`  
		Last Modified: Wed, 11 Oct 2017 12:52:25 GMT  
		Size: 42.4 MB (42444579 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3b2d7804592854a106e4cb6a8decdc17f84ce86673c5331ae4be08f6ddf9667`  
		Last Modified: Wed, 11 Oct 2017 12:52:14 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1e6e6dfa0c41d49186e1ef4cf4409826020371a07bc3a6b5509bb23e7004701`  
		Last Modified: Wed, 11 Oct 2017 12:52:15 GMT  
		Size: 614.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8b298e101bd87bb479bd9d268470b3060526668473413ad16a992f5a70b9b69`  
		Last Modified: Wed, 11 Oct 2017 12:52:14 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5da5730e907c71f6dad2a93757f203cea7518145a8d979508503cb906926d549`  
		Last Modified: Wed, 11 Oct 2017 12:52:14 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d09fc16d09d114946c081433e97aa0ce1f0885b00ae8d90b146d5359a8216fe6`  
		Last Modified: Wed, 11 Oct 2017 13:22:25 GMT  
		Size: 4.6 MB (4613971 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c4838a49db06950f36a6a93c8e2cb59919afaa2b80cc8762c8c4eb24e74719f`  
		Last Modified: Wed, 11 Oct 2017 13:22:24 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:079f3b787a6e9a31ec800dda6c1dc7d81bc91726e4474210d6cbdffa6238816d`  
		Last Modified: Wed, 11 Oct 2017 13:22:22 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c661b84e7cbabc46a583c3613c95c982378c0be5a2a8ae7e572bd7578b816d0`  
		Last Modified: Wed, 11 Oct 2017 13:22:41 GMT  
		Size: 50.7 MB (50654517 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f475e2bfcce8aa8c733d291239817e99fe1eda5cabadd03cb3eb94f08f6603ca`  
		Last Modified: Wed, 11 Oct 2017 13:22:23 GMT  
		Size: 760.4 KB (760364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15e2de1d4dc3c9e492e702a8efd5e249de49a315b5b6228cdc5572d80d81430c`  
		Last Modified: Wed, 11 Oct 2017 13:27:18 GMT  
		Size: 164.7 MB (164714786 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:023a0667681286f75635b33cd4f867545c422594a9692aaf41e8be931b4087ad`  
		Last Modified: Wed, 11 Oct 2017 13:26:30 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:192089ba9519042b0a41fdcc357bc33719c909cc5a49b6d41eec9f26622ae8e2`  
		Last Modified: Wed, 11 Oct 2017 13:27:55 GMT  
		Size: 73.0 MB (72998854 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-ros-base` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:121926659150120d1c2505ca6c9b79977a4877791ce295487aa6b9d87ad456d8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **349.9 MB (349870255 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:28242478c6aaf46312725c236be43ec26dfda7b4270cd05c0a59398970814336`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 11 Oct 2017 14:01:45 GMT
ADD file:17aebc392b3cf207dbe2809abd34b9eec60c3a0e8b39dcd04f8f29a863e966b3 in / 
# Wed, 11 Oct 2017 14:01:47 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 11 Oct 2017 14:01:49 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 14:01:50 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 11 Oct 2017 14:01:52 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 11 Oct 2017 14:01:52 GMT
CMD ["/bin/bash"]
# Wed, 11 Oct 2017 14:21:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 14:22:01 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 11 Oct 2017 14:22:11 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 11 Oct 2017 14:24:25 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 14:24:33 GMT
ENV LANG=C.UTF-8
# Wed, 11 Oct 2017 14:24:34 GMT
ENV LC_ALL=C.UTF-8
# Wed, 11 Oct 2017 14:25:14 GMT
RUN rosdep init     && rosdep update
# Wed, 11 Oct 2017 15:08:36 GMT
ENV ROS_DISTRO=lunar
# Wed, 11 Oct 2017 15:16:25 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 15:16:44 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Wed, 11 Oct 2017 15:16:44 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 11 Oct 2017 15:16:45 GMT
CMD ["bash"]
# Wed, 11 Oct 2017 15:21:52 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:aac43d4d6c83c61c78a7814ef7d2e02dc6c2f52dc110ff181aea144991711636`  
		Last Modified: Fri, 06 Oct 2017 22:13:46 GMT  
		Size: 43.4 MB (43426326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eed65d92515dfacf9a35d3301bc4847f1057d240f9ab3c442b573bdbb8452791`  
		Last Modified: Wed, 11 Oct 2017 14:03:45 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2de5574dca5eb5a1b9351c990c0865bbe18370da61e7169a539ba80bbdb058b2`  
		Last Modified: Wed, 11 Oct 2017 14:03:44 GMT  
		Size: 617.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5a76e352cce541b89ec31a527e09d2185c9427315f118b56573f79eb31b4c2b`  
		Last Modified: Wed, 11 Oct 2017 14:03:45 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2aceaacecb77ef3360c013ffcd305eecd6cf17a32bd143a72ca0b86b74721ba`  
		Last Modified: Wed, 11 Oct 2017 14:03:45 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df2b464ff94260bae09f2719a99368cdaf4e91cb4ac7f8292454419def5b6bb2`  
		Last Modified: Wed, 11 Oct 2017 15:42:12 GMT  
		Size: 4.8 MB (4819150 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:317f3f12586aa0432e4b41b4e01e1e59b1132bbf0cb8d0a8bec39998598cfc19`  
		Last Modified: Wed, 11 Oct 2017 15:42:04 GMT  
		Size: 13.1 KB (13087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d485a4030132f2b8618b2c1e9adeb0f3512ff862a371cbffb828825cd90b712`  
		Last Modified: Wed, 11 Oct 2017 15:42:02 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebe5f4f3df9287919c1ddc687c131a9235d6053e50879ffbdd2307364fe2784c`  
		Last Modified: Wed, 11 Oct 2017 15:43:00 GMT  
		Size: 52.3 MB (52342563 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:624ab9416f2027ffb47c0f23bc9805307660d34dc41b41bace605c5ee21025e3`  
		Last Modified: Wed, 11 Oct 2017 15:42:03 GMT  
		Size: 760.2 KB (760212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f58fa0ad6cdafaba7ddd06842854509ea748ac290ddc510d8853a6147d4d9103`  
		Last Modified: Wed, 11 Oct 2017 15:50:42 GMT  
		Size: 173.9 MB (173932127 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac7c9712a19c1c4b2ea9074d8c5d23ff54433f72a4000bb203336c675f1fa26a`  
		Last Modified: Wed, 11 Oct 2017 15:49:33 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfa73e756fe32eeb108ff093187ea9603341fc6eb1d52a97d14c3dbe37c1b887`  
		Last Modified: Wed, 11 Oct 2017 15:52:00 GMT  
		Size: 74.6 MB (74573882 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:lunar-ros-base-stretch`

```console
$ docker pull ros@sha256:aac92550b97914ca5399af12b48e38e9cf9ea297ce88b1401f30ccbaa0bed495
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `ros:lunar-ros-base-stretch` - linux; amd64

```console
$ docker pull ros@sha256:3a3314709841ce38a024a36d6dd8e04208d60dbea4e133689e973dd0ad1e0dca
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **491.8 MB (491771789 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:67db55d6a42b579c6bd133a39107ebb9108eabab0c83147bed7a44761cd337ca`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 04 Nov 2017 05:26:40 GMT
ADD file:a71e077a42995a68ffe4834d85cfe26af4ea12aa8ed43decc03cc487124b1f70 in / 
# Sat, 04 Nov 2017 05:26:40 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 07:47:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 07:47:50 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 04 Nov 2017 07:47:51 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu stretch main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 04 Nov 2017 07:48:20 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 07:48:20 GMT
ENV LANG=C.UTF-8
# Sat, 04 Nov 2017 07:48:20 GMT
ENV LC_ALL=C.UTF-8
# Sat, 04 Nov 2017 07:48:31 GMT
RUN rosdep init     && rosdep update
# Sat, 04 Nov 2017 07:48:31 GMT
ENV ROS_DISTRO=lunar
# Sat, 04 Nov 2017 07:49:38 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 07:49:39 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Sat, 04 Nov 2017 07:49:39 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 04 Nov 2017 07:49:40 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 07:50:46 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:3e17c6eae66cd23c59751c8d8f5eaf7044e0611dc5cebb12b1273be07cdac242`  
		Last Modified: Mon, 09 Oct 2017 21:41:38 GMT  
		Size: 45.1 MB (45129088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c691bf98a8b9b022ad7d943044a3b0aa17050fa4d86da14642a76f3688d1742`  
		Last Modified: Sat, 04 Nov 2017 08:19:55 GMT  
		Size: 7.2 MB (7218242 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84c5a999c8f977df42fe8694ed09456d12c7a03807f138a788305e2b8f6c8b61`  
		Last Modified: Sat, 04 Nov 2017 08:19:53 GMT  
		Size: 1.4 KB (1377 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c00da47f1ff6c9bdcdb8042b5cf91f23ad4b81c4e0c6be15efb8650f898b5bcc`  
		Last Modified: Sat, 04 Nov 2017 08:19:51 GMT  
		Size: 220.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75a2cabceb278bbdaac1b07772dfc1a44549195d531d1d0794cd47027627b953`  
		Last Modified: Sat, 04 Nov 2017 08:20:20 GMT  
		Size: 64.7 MB (64677566 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0873d4ee1db3c8672f6d556af881fd67f571acfd58e33a3af25a687c0952bc73`  
		Last Modified: Sat, 04 Nov 2017 08:19:51 GMT  
		Size: 766.6 KB (766568 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0f00b747f15456afadc3934128569256f820fb30db1940e7805ec723524c499`  
		Last Modified: Sat, 04 Nov 2017 08:20:57 GMT  
		Size: 251.8 MB (251780781 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e94b8c4555f583b2ea91b311a6331e1a67f2b19068995718a3c380fd112366c4`  
		Last Modified: Sat, 04 Nov 2017 08:19:51 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ed34c9355e15efcbb54e7f6c4b8ba1b65780323c9573fb224be745ded5f4af1`  
		Last Modified: Sat, 04 Nov 2017 08:21:39 GMT  
		Size: 122.2 MB (122197753 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-ros-base-stretch` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:a87fe612d01ec701a75ed54bd5b5f2f2d840cefab3978e3f20d0c24d724c065d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **435.0 MB (434994561 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1724dfeb799483b77f1a02d3159042f6be9d1616619d4764f72f25f58e2929f8`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:47:18 GMT
ADD file:bf097edec8505e5cb1e432319988aeb28a6f918edef706b3c543fa61aaaea4cb in / 
# Mon, 09 Oct 2017 21:47:19 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 06:08:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 06:08:42 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 10 Oct 2017 06:08:44 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu stretch main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 10 Oct 2017 06:13:07 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 06:13:08 GMT
ENV LANG=C.UTF-8
# Tue, 10 Oct 2017 06:13:09 GMT
ENV LC_ALL=C.UTF-8
# Tue, 10 Oct 2017 06:13:48 GMT
RUN rosdep init     && rosdep update
# Tue, 10 Oct 2017 06:13:49 GMT
ENV ROS_DISTRO=lunar
# Tue, 10 Oct 2017 06:24:14 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 06:24:38 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 10 Oct 2017 06:24:39 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 10 Oct 2017 06:24:40 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 06:29:06 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:0e5a8be23912597ff0d89db096abd4c4383c8cf4ee700d333b86f881ea289875`  
		Last Modified: Mon, 09 Oct 2017 22:01:04 GMT  
		Size: 42.9 MB (42911727 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:969d7a7a072b756f3eec7f18096a6edc68b278e2fef6f0cfa1c2556ccb10d9d8`  
		Last Modified: Tue, 10 Oct 2017 07:01:28 GMT  
		Size: 6.8 MB (6793394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03c304949e92fc2c120b87d79a093cd77a22af9a9bbb6dd21aa98a79a724ef23`  
		Last Modified: Tue, 10 Oct 2017 07:01:26 GMT  
		Size: 1.4 KB (1378 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcd8cc453b9305a42bd7bbad3fe9838ab4a95fed3602abc9174d849babeb86f7`  
		Last Modified: Tue, 10 Oct 2017 07:01:23 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9c258b49f4293fb7f6b7085b6fedc38c34f7f86d7ed80935d0b08410d01f36f`  
		Last Modified: Tue, 10 Oct 2017 07:01:51 GMT  
		Size: 61.8 MB (61767666 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:833480eca8d21ed46bd927eaaf48b8db1f085b0871618dbce3e62263da74e4f6`  
		Last Modified: Tue, 10 Oct 2017 07:01:24 GMT  
		Size: 760.2 KB (760219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64780436c110f86637243acd08bd0f9481f6485b95c1b5cd23acb2830f4a0b48`  
		Last Modified: Tue, 10 Oct 2017 07:02:40 GMT  
		Size: 206.7 MB (206742472 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad82b97105a570ad38e6a8c9004e5aae4019a226f02a12e57fb69e4ae4752f19`  
		Last Modified: Tue, 10 Oct 2017 07:01:24 GMT  
		Size: 192.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e55dfaf6116bf0c989d8b35601f84fc1fbe3505292c3ad46243025ff2df47b8`  
		Last Modified: Tue, 10 Oct 2017 07:03:45 GMT  
		Size: 116.0 MB (116017289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:lunar-ros-base-xenial`

```console
$ docker pull ros@sha256:afc90d9a3db764bd97de4cf78a579b3bff5175eb72622c08682a915c54db5435
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:lunar-ros-base-xenial` - linux; amd64

```console
$ docker pull ros@sha256:fd835a951cc92383ca7234b34cdb2288306e2391f96ba17b7810a5b115f4e7ad
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **392.1 MB (392145913 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:89e8cd69d807b69409ef626a3ffa1ad0bf7746de233fa7c7703168087b00cc68`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 10 Oct 2017 20:59:02 GMT
ADD file:5b334adf9d9a2256add2a801b49d4b23c93b0973ec22bb798973d571c948f102 in / 
# Tue, 10 Oct 2017 20:59:02 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 10 Oct 2017 20:59:03 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 20:59:04 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 10 Oct 2017 20:59:04 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 10 Oct 2017 20:59:05 GMT
CMD ["/bin/bash"]
# Sat, 04 Nov 2017 07:12:14 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 07:12:15 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 04 Nov 2017 07:12:16 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 04 Nov 2017 07:12:56 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 07:12:57 GMT
ENV LANG=C.UTF-8
# Sat, 04 Nov 2017 07:12:57 GMT
ENV LC_ALL=C.UTF-8
# Sat, 04 Nov 2017 07:13:15 GMT
RUN rosdep init     && rosdep update
# Sat, 04 Nov 2017 07:29:51 GMT
ENV ROS_DISTRO=lunar
# Sat, 04 Nov 2017 07:31:24 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 07:31:25 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Sat, 04 Nov 2017 07:31:25 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 04 Nov 2017 07:31:25 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 07:32:29 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:ae79f251470513c2a0ec750117a81f2d58a50727901ca416efecf297b8a03913`  
		Last Modified: Fri, 06 Oct 2017 13:04:44 GMT  
		Size: 47.6 MB (47617129 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ad56d5fc14905886c560200ab69f905b5c5287eaf12f8f761a7ab54f7a61c1b`  
		Last Modified: Tue, 10 Oct 2017 21:00:10 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:170e558760e8b2e484a022b7d7272cf284fc4e1936ba7a0a671fc586440ad272`  
		Last Modified: Tue, 10 Oct 2017 21:00:10 GMT  
		Size: 618.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:395460e233f5bdcd910d618a3b615e0d881e09ad27d58f3065eef53ecae6a808`  
		Last Modified: Tue, 10 Oct 2017 21:00:10 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f01dc62e444044e3ce494269837ef0aedb80fef69c679416137f17812d2eb9c`  
		Last Modified: Tue, 10 Oct 2017 21:00:10 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e3204a200f68200aa306b9f7be4fbfc14ff2f445cc0684830dba2d3f62a3ef6`  
		Last Modified: Sat, 04 Nov 2017 08:03:44 GMT  
		Size: 5.4 MB (5362103 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb487289e44f75e32d15f3ec5c13ac4dc6edd76d2c9d80fe9cf2584b4fc63f15`  
		Last Modified: Sat, 04 Nov 2017 08:03:42 GMT  
		Size: 13.1 KB (13082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b0e83c3ea6c0a5b6670174d23e0dfa9fd811ee86a12d3df4e5388e4e358d9eb`  
		Last Modified: Sat, 04 Nov 2017 08:03:40 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9dc8b2534c2217471ca02fbc18444a32ebf3fae1db3d711b6f4fadd96bece45d`  
		Last Modified: Sat, 04 Nov 2017 08:04:09 GMT  
		Size: 55.5 MB (55498654 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19bb8c21845fd7cb0e6e034a39fbd9ad9f4251ec8f63eb997ec07247bd6e2955`  
		Last Modified: Sat, 04 Nov 2017 08:03:40 GMT  
		Size: 766.3 KB (766309 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f87d9c273da134fa4defe01b1a81357a66e609deba152f165db349206b9a3d4`  
		Last Modified: Sat, 04 Nov 2017 08:12:50 GMT  
		Size: 193.3 MB (193331820 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8cbfc29c5b6f300cacdc501a7a9a9b599df2c5c4eeb1a84e778554ef5b79fafa`  
		Last Modified: Sat, 04 Nov 2017 08:12:00 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6183736ae1c8e60978953369d200110437fd9d8c407cd9a973911bae5ded5d24`  
		Last Modified: Sat, 04 Nov 2017 08:13:30 GMT  
		Size: 89.6 MB (89553909 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-ros-base-xenial` - linux; arm variant v7

```console
$ docker pull ros@sha256:209ea0224a573eb16a5febaddac720cbba79385775de57bacad84515a9f45818
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **336.2 MB (336203052 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa73308717f868de2f4ddf0642c7083235c17a1ca1a4ee6e7aa206ec2e955a40`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 11 Oct 2017 12:51:12 GMT
ADD file:b8b49b959bf907b482bdc24c3c6f159f7aed1a3fb73e8efa669b12800635d25f in / 
# Wed, 11 Oct 2017 12:51:13 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 11 Oct 2017 12:51:14 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 12:51:14 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 11 Oct 2017 12:51:15 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 11 Oct 2017 12:51:15 GMT
CMD ["/bin/bash"]
# Wed, 11 Oct 2017 13:08:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 13:08:35 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 11 Oct 2017 13:08:39 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 11 Oct 2017 13:09:23 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 13:09:27 GMT
ENV LANG=C.UTF-8
# Wed, 11 Oct 2017 13:09:27 GMT
ENV LC_ALL=C.UTF-8
# Wed, 11 Oct 2017 13:09:51 GMT
RUN rosdep init     && rosdep update
# Wed, 11 Oct 2017 13:16:12 GMT
ENV ROS_DISTRO=lunar
# Wed, 11 Oct 2017 13:17:24 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 13:17:26 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Wed, 11 Oct 2017 13:17:27 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 11 Oct 2017 13:17:27 GMT
CMD ["bash"]
# Wed, 11 Oct 2017 13:18:26 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:26e5736d414450f12f7c066ff59a208e9ea9311407c91de898505d1adbf01527`  
		Last Modified: Wed, 11 Oct 2017 12:52:25 GMT  
		Size: 42.4 MB (42444579 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3b2d7804592854a106e4cb6a8decdc17f84ce86673c5331ae4be08f6ddf9667`  
		Last Modified: Wed, 11 Oct 2017 12:52:14 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1e6e6dfa0c41d49186e1ef4cf4409826020371a07bc3a6b5509bb23e7004701`  
		Last Modified: Wed, 11 Oct 2017 12:52:15 GMT  
		Size: 614.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8b298e101bd87bb479bd9d268470b3060526668473413ad16a992f5a70b9b69`  
		Last Modified: Wed, 11 Oct 2017 12:52:14 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5da5730e907c71f6dad2a93757f203cea7518145a8d979508503cb906926d549`  
		Last Modified: Wed, 11 Oct 2017 12:52:14 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d09fc16d09d114946c081433e97aa0ce1f0885b00ae8d90b146d5359a8216fe6`  
		Last Modified: Wed, 11 Oct 2017 13:22:25 GMT  
		Size: 4.6 MB (4613971 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c4838a49db06950f36a6a93c8e2cb59919afaa2b80cc8762c8c4eb24e74719f`  
		Last Modified: Wed, 11 Oct 2017 13:22:24 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:079f3b787a6e9a31ec800dda6c1dc7d81bc91726e4474210d6cbdffa6238816d`  
		Last Modified: Wed, 11 Oct 2017 13:22:22 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c661b84e7cbabc46a583c3613c95c982378c0be5a2a8ae7e572bd7578b816d0`  
		Last Modified: Wed, 11 Oct 2017 13:22:41 GMT  
		Size: 50.7 MB (50654517 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f475e2bfcce8aa8c733d291239817e99fe1eda5cabadd03cb3eb94f08f6603ca`  
		Last Modified: Wed, 11 Oct 2017 13:22:23 GMT  
		Size: 760.4 KB (760364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15e2de1d4dc3c9e492e702a8efd5e249de49a315b5b6228cdc5572d80d81430c`  
		Last Modified: Wed, 11 Oct 2017 13:27:18 GMT  
		Size: 164.7 MB (164714786 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:023a0667681286f75635b33cd4f867545c422594a9692aaf41e8be931b4087ad`  
		Last Modified: Wed, 11 Oct 2017 13:26:30 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:192089ba9519042b0a41fdcc357bc33719c909cc5a49b6d41eec9f26622ae8e2`  
		Last Modified: Wed, 11 Oct 2017 13:27:55 GMT  
		Size: 73.0 MB (72998854 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-ros-base-xenial` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:121926659150120d1c2505ca6c9b79977a4877791ce295487aa6b9d87ad456d8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **349.9 MB (349870255 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:28242478c6aaf46312725c236be43ec26dfda7b4270cd05c0a59398970814336`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 11 Oct 2017 14:01:45 GMT
ADD file:17aebc392b3cf207dbe2809abd34b9eec60c3a0e8b39dcd04f8f29a863e966b3 in / 
# Wed, 11 Oct 2017 14:01:47 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 11 Oct 2017 14:01:49 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 14:01:50 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 11 Oct 2017 14:01:52 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 11 Oct 2017 14:01:52 GMT
CMD ["/bin/bash"]
# Wed, 11 Oct 2017 14:21:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 14:22:01 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 11 Oct 2017 14:22:11 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 11 Oct 2017 14:24:25 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 14:24:33 GMT
ENV LANG=C.UTF-8
# Wed, 11 Oct 2017 14:24:34 GMT
ENV LC_ALL=C.UTF-8
# Wed, 11 Oct 2017 14:25:14 GMT
RUN rosdep init     && rosdep update
# Wed, 11 Oct 2017 15:08:36 GMT
ENV ROS_DISTRO=lunar
# Wed, 11 Oct 2017 15:16:25 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 15:16:44 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Wed, 11 Oct 2017 15:16:44 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 11 Oct 2017 15:16:45 GMT
CMD ["bash"]
# Wed, 11 Oct 2017 15:21:52 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:aac43d4d6c83c61c78a7814ef7d2e02dc6c2f52dc110ff181aea144991711636`  
		Last Modified: Fri, 06 Oct 2017 22:13:46 GMT  
		Size: 43.4 MB (43426326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eed65d92515dfacf9a35d3301bc4847f1057d240f9ab3c442b573bdbb8452791`  
		Last Modified: Wed, 11 Oct 2017 14:03:45 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2de5574dca5eb5a1b9351c990c0865bbe18370da61e7169a539ba80bbdb058b2`  
		Last Modified: Wed, 11 Oct 2017 14:03:44 GMT  
		Size: 617.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5a76e352cce541b89ec31a527e09d2185c9427315f118b56573f79eb31b4c2b`  
		Last Modified: Wed, 11 Oct 2017 14:03:45 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2aceaacecb77ef3360c013ffcd305eecd6cf17a32bd143a72ca0b86b74721ba`  
		Last Modified: Wed, 11 Oct 2017 14:03:45 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df2b464ff94260bae09f2719a99368cdaf4e91cb4ac7f8292454419def5b6bb2`  
		Last Modified: Wed, 11 Oct 2017 15:42:12 GMT  
		Size: 4.8 MB (4819150 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:317f3f12586aa0432e4b41b4e01e1e59b1132bbf0cb8d0a8bec39998598cfc19`  
		Last Modified: Wed, 11 Oct 2017 15:42:04 GMT  
		Size: 13.1 KB (13087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d485a4030132f2b8618b2c1e9adeb0f3512ff862a371cbffb828825cd90b712`  
		Last Modified: Wed, 11 Oct 2017 15:42:02 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebe5f4f3df9287919c1ddc687c131a9235d6053e50879ffbdd2307364fe2784c`  
		Last Modified: Wed, 11 Oct 2017 15:43:00 GMT  
		Size: 52.3 MB (52342563 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:624ab9416f2027ffb47c0f23bc9805307660d34dc41b41bace605c5ee21025e3`  
		Last Modified: Wed, 11 Oct 2017 15:42:03 GMT  
		Size: 760.2 KB (760212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f58fa0ad6cdafaba7ddd06842854509ea748ac290ddc510d8853a6147d4d9103`  
		Last Modified: Wed, 11 Oct 2017 15:50:42 GMT  
		Size: 173.9 MB (173932127 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac7c9712a19c1c4b2ea9074d8c5d23ff54433f72a4000bb203336c675f1fa26a`  
		Last Modified: Wed, 11 Oct 2017 15:49:33 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfa73e756fe32eeb108ff093187ea9603341fc6eb1d52a97d14c3dbe37c1b887`  
		Last Modified: Wed, 11 Oct 2017 15:52:00 GMT  
		Size: 74.6 MB (74573882 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:lunar-ros-base-zesty`

```console
$ docker pull ros@sha256:1039104d8b146f35a75cd0cf0fe2d8382d380d62e2b91c7ad4b846ea7386e3a3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `ros:lunar-ros-base-zesty` - linux; amd64

```console
$ docker pull ros@sha256:a5b25928ab6ab7c507e21f613b8e1ab38179b21f65c51a0c91263e78c3ab6da2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **428.1 MB (428110826 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:25e30db35cb31ecda926717e441752b077f4e89e56b9ce6d2ea3a567679221e5`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 18 Sep 2017 23:31:50 GMT
ADD file:4e2e1f8336bcc64e853e9f3462f0829ce85b34a32755dba06aa7bd0007eda4f0 in / 
# Mon, 18 Sep 2017 23:31:50 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 18 Sep 2017 23:31:51 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 18 Sep 2017 23:31:52 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Mon, 18 Sep 2017 23:31:52 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 18 Sep 2017 23:31:52 GMT
CMD ["/bin/bash"]
# Sat, 04 Nov 2017 07:38:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 07:38:41 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 04 Nov 2017 07:38:42 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu zesty main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 04 Nov 2017 07:39:15 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 07:39:15 GMT
ENV LANG=C.UTF-8
# Sat, 04 Nov 2017 07:39:15 GMT
ENV LC_ALL=C.UTF-8
# Sat, 04 Nov 2017 07:39:27 GMT
RUN rosdep init     && rosdep update
# Sat, 04 Nov 2017 07:39:27 GMT
ENV ROS_DISTRO=lunar
# Sat, 04 Nov 2017 07:41:15 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 07:41:17 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Sat, 04 Nov 2017 07:41:17 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 04 Nov 2017 07:41:17 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 07:42:30 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:8b23367590c32dbb6954ab3cc9b6c451b9763556c72a893538efe88583f6a5dc`  
		Last Modified: Mon, 18 Sep 2017 23:33:09 GMT  
		Size: 38.4 MB (38437889 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7feb578947e4b86e0a0cff64b42489dc1305bbacdb3ed36d0afe95a19ebf845`  
		Last Modified: Mon, 18 Sep 2017 23:33:03 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac836f06379c8d7356e0d2e7dbb3e9f3924616527fa51b95545fb455eec31f08`  
		Last Modified: Mon, 18 Sep 2017 23:33:03 GMT  
		Size: 569.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be286dc472df31f16953d34151f836d0186fddeea6cd56dcefd2a6d46a992500`  
		Last Modified: Mon, 18 Sep 2017 23:33:03 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5533df5f353d9fbcbd081e9dd653fe7d8ddebed958d1f0e56fa4a87b216f13c1`  
		Last Modified: Mon, 18 Sep 2017 23:33:03 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d09d3709be99029b87aee9623498a0cee2b3f119f8b34544d49e33149e4afe2`  
		Last Modified: Sat, 04 Nov 2017 08:16:07 GMT  
		Size: 3.4 MB (3401528 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b59bdd7c7501c7c91e937813abef9b63af49cce54cae5b8600c946cb30a68b3`  
		Last Modified: Sat, 04 Nov 2017 08:16:06 GMT  
		Size: 1.4 KB (1379 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:814d9c881c9a47d22d8e73e53f8ad1b8b964e1466e899304397c188c798f5fbd`  
		Last Modified: Sat, 04 Nov 2017 08:16:05 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2594e9d31c140fbc622a069215b5ea094c36c7b19292e5bb3bcba4fcacb6415b`  
		Last Modified: Sat, 04 Nov 2017 08:16:34 GMT  
		Size: 58.6 MB (58606566 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb69ee77be00f22c4e2996eb0352ad434bcd301f7e3bf3e26459ae2a59d34df0`  
		Last Modified: Sat, 04 Nov 2017 08:16:02 GMT  
		Size: 766.3 KB (766309 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4425e7a07cf0c781ebffd3051718b467f6ea400a11ddba0c28f06b5565868267`  
		Last Modified: Sat, 04 Nov 2017 08:17:16 GMT  
		Size: 252.3 MB (252317986 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ccadcc928b3dbc16bec751a12fa74eac31c11ad80bde31b5dee733a137b708b`  
		Last Modified: Sat, 04 Nov 2017 08:16:03 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3667ecf2d1c7731d9aa431933ca709ae75c0b4622d53ffcbb8d527db00a37c5e`  
		Last Modified: Sat, 04 Nov 2017 08:17:47 GMT  
		Size: 74.6 MB (74576324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:lunar-ros-core`

```console
$ docker pull ros@sha256:23d7c7f29c7840f30e0ed6c5de20011e72c0533291cbaeab8501f8a61114b624
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:lunar-ros-core` - linux; amd64

```console
$ docker pull ros@sha256:e4740f145a312295ec5b920a87cf257e385a7843841c29b9657275210c5ad570
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **302.6 MB (302592004 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bfe4f7b8c26f428d93e86f755d1aad25fe9887820b6e6223330f099548755b09`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 10 Oct 2017 20:59:02 GMT
ADD file:5b334adf9d9a2256add2a801b49d4b23c93b0973ec22bb798973d571c948f102 in / 
# Tue, 10 Oct 2017 20:59:02 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 10 Oct 2017 20:59:03 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 20:59:04 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 10 Oct 2017 20:59:04 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 10 Oct 2017 20:59:05 GMT
CMD ["/bin/bash"]
# Sat, 04 Nov 2017 07:12:14 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 07:12:15 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 04 Nov 2017 07:12:16 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 04 Nov 2017 07:12:56 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 07:12:57 GMT
ENV LANG=C.UTF-8
# Sat, 04 Nov 2017 07:12:57 GMT
ENV LC_ALL=C.UTF-8
# Sat, 04 Nov 2017 07:13:15 GMT
RUN rosdep init     && rosdep update
# Sat, 04 Nov 2017 07:29:51 GMT
ENV ROS_DISTRO=lunar
# Sat, 04 Nov 2017 07:31:24 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 07:31:25 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Sat, 04 Nov 2017 07:31:25 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 04 Nov 2017 07:31:25 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:ae79f251470513c2a0ec750117a81f2d58a50727901ca416efecf297b8a03913`  
		Last Modified: Fri, 06 Oct 2017 13:04:44 GMT  
		Size: 47.6 MB (47617129 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ad56d5fc14905886c560200ab69f905b5c5287eaf12f8f761a7ab54f7a61c1b`  
		Last Modified: Tue, 10 Oct 2017 21:00:10 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:170e558760e8b2e484a022b7d7272cf284fc4e1936ba7a0a671fc586440ad272`  
		Last Modified: Tue, 10 Oct 2017 21:00:10 GMT  
		Size: 618.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:395460e233f5bdcd910d618a3b615e0d881e09ad27d58f3065eef53ecae6a808`  
		Last Modified: Tue, 10 Oct 2017 21:00:10 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f01dc62e444044e3ce494269837ef0aedb80fef69c679416137f17812d2eb9c`  
		Last Modified: Tue, 10 Oct 2017 21:00:10 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e3204a200f68200aa306b9f7be4fbfc14ff2f445cc0684830dba2d3f62a3ef6`  
		Last Modified: Sat, 04 Nov 2017 08:03:44 GMT  
		Size: 5.4 MB (5362103 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb487289e44f75e32d15f3ec5c13ac4dc6edd76d2c9d80fe9cf2584b4fc63f15`  
		Last Modified: Sat, 04 Nov 2017 08:03:42 GMT  
		Size: 13.1 KB (13082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b0e83c3ea6c0a5b6670174d23e0dfa9fd811ee86a12d3df4e5388e4e358d9eb`  
		Last Modified: Sat, 04 Nov 2017 08:03:40 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9dc8b2534c2217471ca02fbc18444a32ebf3fae1db3d711b6f4fadd96bece45d`  
		Last Modified: Sat, 04 Nov 2017 08:04:09 GMT  
		Size: 55.5 MB (55498654 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19bb8c21845fd7cb0e6e034a39fbd9ad9f4251ec8f63eb997ec07247bd6e2955`  
		Last Modified: Sat, 04 Nov 2017 08:03:40 GMT  
		Size: 766.3 KB (766309 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f87d9c273da134fa4defe01b1a81357a66e609deba152f165db349206b9a3d4`  
		Last Modified: Sat, 04 Nov 2017 08:12:50 GMT  
		Size: 193.3 MB (193331820 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8cbfc29c5b6f300cacdc501a7a9a9b599df2c5c4eeb1a84e778554ef5b79fafa`  
		Last Modified: Sat, 04 Nov 2017 08:12:00 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-ros-core` - linux; arm variant v7

```console
$ docker pull ros@sha256:38ec753227955c8e9ecaaab4821d7322b04244f42d88b909c7157abace7dadeb
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **263.2 MB (263204198 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:df42dee21ea79d360b6eb777185473bc1f36885ab30ef3dbfad3ea7d02885b4c`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 11 Oct 2017 12:51:12 GMT
ADD file:b8b49b959bf907b482bdc24c3c6f159f7aed1a3fb73e8efa669b12800635d25f in / 
# Wed, 11 Oct 2017 12:51:13 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 11 Oct 2017 12:51:14 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 12:51:14 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 11 Oct 2017 12:51:15 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 11 Oct 2017 12:51:15 GMT
CMD ["/bin/bash"]
# Wed, 11 Oct 2017 13:08:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 13:08:35 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 11 Oct 2017 13:08:39 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 11 Oct 2017 13:09:23 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 13:09:27 GMT
ENV LANG=C.UTF-8
# Wed, 11 Oct 2017 13:09:27 GMT
ENV LC_ALL=C.UTF-8
# Wed, 11 Oct 2017 13:09:51 GMT
RUN rosdep init     && rosdep update
# Wed, 11 Oct 2017 13:16:12 GMT
ENV ROS_DISTRO=lunar
# Wed, 11 Oct 2017 13:17:24 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 13:17:26 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Wed, 11 Oct 2017 13:17:27 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 11 Oct 2017 13:17:27 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:26e5736d414450f12f7c066ff59a208e9ea9311407c91de898505d1adbf01527`  
		Last Modified: Wed, 11 Oct 2017 12:52:25 GMT  
		Size: 42.4 MB (42444579 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3b2d7804592854a106e4cb6a8decdc17f84ce86673c5331ae4be08f6ddf9667`  
		Last Modified: Wed, 11 Oct 2017 12:52:14 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1e6e6dfa0c41d49186e1ef4cf4409826020371a07bc3a6b5509bb23e7004701`  
		Last Modified: Wed, 11 Oct 2017 12:52:15 GMT  
		Size: 614.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8b298e101bd87bb479bd9d268470b3060526668473413ad16a992f5a70b9b69`  
		Last Modified: Wed, 11 Oct 2017 12:52:14 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5da5730e907c71f6dad2a93757f203cea7518145a8d979508503cb906926d549`  
		Last Modified: Wed, 11 Oct 2017 12:52:14 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d09fc16d09d114946c081433e97aa0ce1f0885b00ae8d90b146d5359a8216fe6`  
		Last Modified: Wed, 11 Oct 2017 13:22:25 GMT  
		Size: 4.6 MB (4613971 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c4838a49db06950f36a6a93c8e2cb59919afaa2b80cc8762c8c4eb24e74719f`  
		Last Modified: Wed, 11 Oct 2017 13:22:24 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:079f3b787a6e9a31ec800dda6c1dc7d81bc91726e4474210d6cbdffa6238816d`  
		Last Modified: Wed, 11 Oct 2017 13:22:22 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c661b84e7cbabc46a583c3613c95c982378c0be5a2a8ae7e572bd7578b816d0`  
		Last Modified: Wed, 11 Oct 2017 13:22:41 GMT  
		Size: 50.7 MB (50654517 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f475e2bfcce8aa8c733d291239817e99fe1eda5cabadd03cb3eb94f08f6603ca`  
		Last Modified: Wed, 11 Oct 2017 13:22:23 GMT  
		Size: 760.4 KB (760364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15e2de1d4dc3c9e492e702a8efd5e249de49a315b5b6228cdc5572d80d81430c`  
		Last Modified: Wed, 11 Oct 2017 13:27:18 GMT  
		Size: 164.7 MB (164714786 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:023a0667681286f75635b33cd4f867545c422594a9692aaf41e8be931b4087ad`  
		Last Modified: Wed, 11 Oct 2017 13:26:30 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-ros-core` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:45a9c477766a950879e85cce4a08baaa7248f0ad7c70a82b9d02370cd5cbb0e3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **275.3 MB (275296373 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:63d84f967a7473f9c0ed5ea1d1ff5d7821241f1abf61f5fb6f6d67b9e768fd09`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 11 Oct 2017 14:01:45 GMT
ADD file:17aebc392b3cf207dbe2809abd34b9eec60c3a0e8b39dcd04f8f29a863e966b3 in / 
# Wed, 11 Oct 2017 14:01:47 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 11 Oct 2017 14:01:49 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 14:01:50 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 11 Oct 2017 14:01:52 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 11 Oct 2017 14:01:52 GMT
CMD ["/bin/bash"]
# Wed, 11 Oct 2017 14:21:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 14:22:01 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 11 Oct 2017 14:22:11 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 11 Oct 2017 14:24:25 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 14:24:33 GMT
ENV LANG=C.UTF-8
# Wed, 11 Oct 2017 14:24:34 GMT
ENV LC_ALL=C.UTF-8
# Wed, 11 Oct 2017 14:25:14 GMT
RUN rosdep init     && rosdep update
# Wed, 11 Oct 2017 15:08:36 GMT
ENV ROS_DISTRO=lunar
# Wed, 11 Oct 2017 15:16:25 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 15:16:44 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Wed, 11 Oct 2017 15:16:44 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 11 Oct 2017 15:16:45 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:aac43d4d6c83c61c78a7814ef7d2e02dc6c2f52dc110ff181aea144991711636`  
		Last Modified: Fri, 06 Oct 2017 22:13:46 GMT  
		Size: 43.4 MB (43426326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eed65d92515dfacf9a35d3301bc4847f1057d240f9ab3c442b573bdbb8452791`  
		Last Modified: Wed, 11 Oct 2017 14:03:45 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2de5574dca5eb5a1b9351c990c0865bbe18370da61e7169a539ba80bbdb058b2`  
		Last Modified: Wed, 11 Oct 2017 14:03:44 GMT  
		Size: 617.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5a76e352cce541b89ec31a527e09d2185c9427315f118b56573f79eb31b4c2b`  
		Last Modified: Wed, 11 Oct 2017 14:03:45 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2aceaacecb77ef3360c013ffcd305eecd6cf17a32bd143a72ca0b86b74721ba`  
		Last Modified: Wed, 11 Oct 2017 14:03:45 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df2b464ff94260bae09f2719a99368cdaf4e91cb4ac7f8292454419def5b6bb2`  
		Last Modified: Wed, 11 Oct 2017 15:42:12 GMT  
		Size: 4.8 MB (4819150 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:317f3f12586aa0432e4b41b4e01e1e59b1132bbf0cb8d0a8bec39998598cfc19`  
		Last Modified: Wed, 11 Oct 2017 15:42:04 GMT  
		Size: 13.1 KB (13087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d485a4030132f2b8618b2c1e9adeb0f3512ff862a371cbffb828825cd90b712`  
		Last Modified: Wed, 11 Oct 2017 15:42:02 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebe5f4f3df9287919c1ddc687c131a9235d6053e50879ffbdd2307364fe2784c`  
		Last Modified: Wed, 11 Oct 2017 15:43:00 GMT  
		Size: 52.3 MB (52342563 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:624ab9416f2027ffb47c0f23bc9805307660d34dc41b41bace605c5ee21025e3`  
		Last Modified: Wed, 11 Oct 2017 15:42:03 GMT  
		Size: 760.2 KB (760212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f58fa0ad6cdafaba7ddd06842854509ea748ac290ddc510d8853a6147d4d9103`  
		Last Modified: Wed, 11 Oct 2017 15:50:42 GMT  
		Size: 173.9 MB (173932127 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac7c9712a19c1c4b2ea9074d8c5d23ff54433f72a4000bb203336c675f1fa26a`  
		Last Modified: Wed, 11 Oct 2017 15:49:33 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:lunar-ros-core-stretch`

```console
$ docker pull ros@sha256:80b0d8e2838bab78a706b903186be1fda303346ec71dba504508d028f3d799d1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `ros:lunar-ros-core-stretch` - linux; amd64

```console
$ docker pull ros@sha256:041785076eb638950f234d0c063d4a15e1f6bd8765438d7f79ae8dad29e918bd
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **369.6 MB (369574036 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:213e6315fbb14e4dfd6755d41e494702c1f9a0bf73e9025689e5c3a8617b98e7`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 04 Nov 2017 05:26:40 GMT
ADD file:a71e077a42995a68ffe4834d85cfe26af4ea12aa8ed43decc03cc487124b1f70 in / 
# Sat, 04 Nov 2017 05:26:40 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 07:47:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 07:47:50 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 04 Nov 2017 07:47:51 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu stretch main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 04 Nov 2017 07:48:20 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 07:48:20 GMT
ENV LANG=C.UTF-8
# Sat, 04 Nov 2017 07:48:20 GMT
ENV LC_ALL=C.UTF-8
# Sat, 04 Nov 2017 07:48:31 GMT
RUN rosdep init     && rosdep update
# Sat, 04 Nov 2017 07:48:31 GMT
ENV ROS_DISTRO=lunar
# Sat, 04 Nov 2017 07:49:38 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 07:49:39 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Sat, 04 Nov 2017 07:49:39 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 04 Nov 2017 07:49:40 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:3e17c6eae66cd23c59751c8d8f5eaf7044e0611dc5cebb12b1273be07cdac242`  
		Last Modified: Mon, 09 Oct 2017 21:41:38 GMT  
		Size: 45.1 MB (45129088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c691bf98a8b9b022ad7d943044a3b0aa17050fa4d86da14642a76f3688d1742`  
		Last Modified: Sat, 04 Nov 2017 08:19:55 GMT  
		Size: 7.2 MB (7218242 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84c5a999c8f977df42fe8694ed09456d12c7a03807f138a788305e2b8f6c8b61`  
		Last Modified: Sat, 04 Nov 2017 08:19:53 GMT  
		Size: 1.4 KB (1377 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c00da47f1ff6c9bdcdb8042b5cf91f23ad4b81c4e0c6be15efb8650f898b5bcc`  
		Last Modified: Sat, 04 Nov 2017 08:19:51 GMT  
		Size: 220.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75a2cabceb278bbdaac1b07772dfc1a44549195d531d1d0794cd47027627b953`  
		Last Modified: Sat, 04 Nov 2017 08:20:20 GMT  
		Size: 64.7 MB (64677566 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0873d4ee1db3c8672f6d556af881fd67f571acfd58e33a3af25a687c0952bc73`  
		Last Modified: Sat, 04 Nov 2017 08:19:51 GMT  
		Size: 766.6 KB (766568 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0f00b747f15456afadc3934128569256f820fb30db1940e7805ec723524c499`  
		Last Modified: Sat, 04 Nov 2017 08:20:57 GMT  
		Size: 251.8 MB (251780781 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e94b8c4555f583b2ea91b311a6331e1a67f2b19068995718a3c380fd112366c4`  
		Last Modified: Sat, 04 Nov 2017 08:19:51 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-ros-core-stretch` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:1a46f13904d82e1284fadcf5a771fadf5ebd026c223e2d29e9091a5fc65aaba4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **319.0 MB (318977272 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b4c0f330d2a3815b5515267bb25e0e0ece75d26fbe73a61e7e445e1570b0c426`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:47:18 GMT
ADD file:bf097edec8505e5cb1e432319988aeb28a6f918edef706b3c543fa61aaaea4cb in / 
# Mon, 09 Oct 2017 21:47:19 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 06:08:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 06:08:42 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 10 Oct 2017 06:08:44 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu stretch main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 10 Oct 2017 06:13:07 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 06:13:08 GMT
ENV LANG=C.UTF-8
# Tue, 10 Oct 2017 06:13:09 GMT
ENV LC_ALL=C.UTF-8
# Tue, 10 Oct 2017 06:13:48 GMT
RUN rosdep init     && rosdep update
# Tue, 10 Oct 2017 06:13:49 GMT
ENV ROS_DISTRO=lunar
# Tue, 10 Oct 2017 06:24:14 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 06:24:38 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 10 Oct 2017 06:24:39 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 10 Oct 2017 06:24:40 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:0e5a8be23912597ff0d89db096abd4c4383c8cf4ee700d333b86f881ea289875`  
		Last Modified: Mon, 09 Oct 2017 22:01:04 GMT  
		Size: 42.9 MB (42911727 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:969d7a7a072b756f3eec7f18096a6edc68b278e2fef6f0cfa1c2556ccb10d9d8`  
		Last Modified: Tue, 10 Oct 2017 07:01:28 GMT  
		Size: 6.8 MB (6793394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03c304949e92fc2c120b87d79a093cd77a22af9a9bbb6dd21aa98a79a724ef23`  
		Last Modified: Tue, 10 Oct 2017 07:01:26 GMT  
		Size: 1.4 KB (1378 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcd8cc453b9305a42bd7bbad3fe9838ab4a95fed3602abc9174d849babeb86f7`  
		Last Modified: Tue, 10 Oct 2017 07:01:23 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9c258b49f4293fb7f6b7085b6fedc38c34f7f86d7ed80935d0b08410d01f36f`  
		Last Modified: Tue, 10 Oct 2017 07:01:51 GMT  
		Size: 61.8 MB (61767666 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:833480eca8d21ed46bd927eaaf48b8db1f085b0871618dbce3e62263da74e4f6`  
		Last Modified: Tue, 10 Oct 2017 07:01:24 GMT  
		Size: 760.2 KB (760219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64780436c110f86637243acd08bd0f9481f6485b95c1b5cd23acb2830f4a0b48`  
		Last Modified: Tue, 10 Oct 2017 07:02:40 GMT  
		Size: 206.7 MB (206742472 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad82b97105a570ad38e6a8c9004e5aae4019a226f02a12e57fb69e4ae4752f19`  
		Last Modified: Tue, 10 Oct 2017 07:01:24 GMT  
		Size: 192.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:lunar-ros-core-xenial`

```console
$ docker pull ros@sha256:23d7c7f29c7840f30e0ed6c5de20011e72c0533291cbaeab8501f8a61114b624
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:lunar-ros-core-xenial` - linux; amd64

```console
$ docker pull ros@sha256:e4740f145a312295ec5b920a87cf257e385a7843841c29b9657275210c5ad570
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **302.6 MB (302592004 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bfe4f7b8c26f428d93e86f755d1aad25fe9887820b6e6223330f099548755b09`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 10 Oct 2017 20:59:02 GMT
ADD file:5b334adf9d9a2256add2a801b49d4b23c93b0973ec22bb798973d571c948f102 in / 
# Tue, 10 Oct 2017 20:59:02 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 10 Oct 2017 20:59:03 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 20:59:04 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 10 Oct 2017 20:59:04 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 10 Oct 2017 20:59:05 GMT
CMD ["/bin/bash"]
# Sat, 04 Nov 2017 07:12:14 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 07:12:15 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 04 Nov 2017 07:12:16 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 04 Nov 2017 07:12:56 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 07:12:57 GMT
ENV LANG=C.UTF-8
# Sat, 04 Nov 2017 07:12:57 GMT
ENV LC_ALL=C.UTF-8
# Sat, 04 Nov 2017 07:13:15 GMT
RUN rosdep init     && rosdep update
# Sat, 04 Nov 2017 07:29:51 GMT
ENV ROS_DISTRO=lunar
# Sat, 04 Nov 2017 07:31:24 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 07:31:25 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Sat, 04 Nov 2017 07:31:25 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 04 Nov 2017 07:31:25 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:ae79f251470513c2a0ec750117a81f2d58a50727901ca416efecf297b8a03913`  
		Last Modified: Fri, 06 Oct 2017 13:04:44 GMT  
		Size: 47.6 MB (47617129 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ad56d5fc14905886c560200ab69f905b5c5287eaf12f8f761a7ab54f7a61c1b`  
		Last Modified: Tue, 10 Oct 2017 21:00:10 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:170e558760e8b2e484a022b7d7272cf284fc4e1936ba7a0a671fc586440ad272`  
		Last Modified: Tue, 10 Oct 2017 21:00:10 GMT  
		Size: 618.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:395460e233f5bdcd910d618a3b615e0d881e09ad27d58f3065eef53ecae6a808`  
		Last Modified: Tue, 10 Oct 2017 21:00:10 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f01dc62e444044e3ce494269837ef0aedb80fef69c679416137f17812d2eb9c`  
		Last Modified: Tue, 10 Oct 2017 21:00:10 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e3204a200f68200aa306b9f7be4fbfc14ff2f445cc0684830dba2d3f62a3ef6`  
		Last Modified: Sat, 04 Nov 2017 08:03:44 GMT  
		Size: 5.4 MB (5362103 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb487289e44f75e32d15f3ec5c13ac4dc6edd76d2c9d80fe9cf2584b4fc63f15`  
		Last Modified: Sat, 04 Nov 2017 08:03:42 GMT  
		Size: 13.1 KB (13082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b0e83c3ea6c0a5b6670174d23e0dfa9fd811ee86a12d3df4e5388e4e358d9eb`  
		Last Modified: Sat, 04 Nov 2017 08:03:40 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9dc8b2534c2217471ca02fbc18444a32ebf3fae1db3d711b6f4fadd96bece45d`  
		Last Modified: Sat, 04 Nov 2017 08:04:09 GMT  
		Size: 55.5 MB (55498654 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19bb8c21845fd7cb0e6e034a39fbd9ad9f4251ec8f63eb997ec07247bd6e2955`  
		Last Modified: Sat, 04 Nov 2017 08:03:40 GMT  
		Size: 766.3 KB (766309 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f87d9c273da134fa4defe01b1a81357a66e609deba152f165db349206b9a3d4`  
		Last Modified: Sat, 04 Nov 2017 08:12:50 GMT  
		Size: 193.3 MB (193331820 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8cbfc29c5b6f300cacdc501a7a9a9b599df2c5c4eeb1a84e778554ef5b79fafa`  
		Last Modified: Sat, 04 Nov 2017 08:12:00 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-ros-core-xenial` - linux; arm variant v7

```console
$ docker pull ros@sha256:38ec753227955c8e9ecaaab4821d7322b04244f42d88b909c7157abace7dadeb
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **263.2 MB (263204198 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:df42dee21ea79d360b6eb777185473bc1f36885ab30ef3dbfad3ea7d02885b4c`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 11 Oct 2017 12:51:12 GMT
ADD file:b8b49b959bf907b482bdc24c3c6f159f7aed1a3fb73e8efa669b12800635d25f in / 
# Wed, 11 Oct 2017 12:51:13 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 11 Oct 2017 12:51:14 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 12:51:14 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 11 Oct 2017 12:51:15 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 11 Oct 2017 12:51:15 GMT
CMD ["/bin/bash"]
# Wed, 11 Oct 2017 13:08:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 13:08:35 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 11 Oct 2017 13:08:39 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 11 Oct 2017 13:09:23 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 13:09:27 GMT
ENV LANG=C.UTF-8
# Wed, 11 Oct 2017 13:09:27 GMT
ENV LC_ALL=C.UTF-8
# Wed, 11 Oct 2017 13:09:51 GMT
RUN rosdep init     && rosdep update
# Wed, 11 Oct 2017 13:16:12 GMT
ENV ROS_DISTRO=lunar
# Wed, 11 Oct 2017 13:17:24 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 13:17:26 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Wed, 11 Oct 2017 13:17:27 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 11 Oct 2017 13:17:27 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:26e5736d414450f12f7c066ff59a208e9ea9311407c91de898505d1adbf01527`  
		Last Modified: Wed, 11 Oct 2017 12:52:25 GMT  
		Size: 42.4 MB (42444579 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3b2d7804592854a106e4cb6a8decdc17f84ce86673c5331ae4be08f6ddf9667`  
		Last Modified: Wed, 11 Oct 2017 12:52:14 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1e6e6dfa0c41d49186e1ef4cf4409826020371a07bc3a6b5509bb23e7004701`  
		Last Modified: Wed, 11 Oct 2017 12:52:15 GMT  
		Size: 614.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8b298e101bd87bb479bd9d268470b3060526668473413ad16a992f5a70b9b69`  
		Last Modified: Wed, 11 Oct 2017 12:52:14 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5da5730e907c71f6dad2a93757f203cea7518145a8d979508503cb906926d549`  
		Last Modified: Wed, 11 Oct 2017 12:52:14 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d09fc16d09d114946c081433e97aa0ce1f0885b00ae8d90b146d5359a8216fe6`  
		Last Modified: Wed, 11 Oct 2017 13:22:25 GMT  
		Size: 4.6 MB (4613971 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c4838a49db06950f36a6a93c8e2cb59919afaa2b80cc8762c8c4eb24e74719f`  
		Last Modified: Wed, 11 Oct 2017 13:22:24 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:079f3b787a6e9a31ec800dda6c1dc7d81bc91726e4474210d6cbdffa6238816d`  
		Last Modified: Wed, 11 Oct 2017 13:22:22 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c661b84e7cbabc46a583c3613c95c982378c0be5a2a8ae7e572bd7578b816d0`  
		Last Modified: Wed, 11 Oct 2017 13:22:41 GMT  
		Size: 50.7 MB (50654517 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f475e2bfcce8aa8c733d291239817e99fe1eda5cabadd03cb3eb94f08f6603ca`  
		Last Modified: Wed, 11 Oct 2017 13:22:23 GMT  
		Size: 760.4 KB (760364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15e2de1d4dc3c9e492e702a8efd5e249de49a315b5b6228cdc5572d80d81430c`  
		Last Modified: Wed, 11 Oct 2017 13:27:18 GMT  
		Size: 164.7 MB (164714786 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:023a0667681286f75635b33cd4f867545c422594a9692aaf41e8be931b4087ad`  
		Last Modified: Wed, 11 Oct 2017 13:26:30 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-ros-core-xenial` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:45a9c477766a950879e85cce4a08baaa7248f0ad7c70a82b9d02370cd5cbb0e3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **275.3 MB (275296373 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:63d84f967a7473f9c0ed5ea1d1ff5d7821241f1abf61f5fb6f6d67b9e768fd09`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 11 Oct 2017 14:01:45 GMT
ADD file:17aebc392b3cf207dbe2809abd34b9eec60c3a0e8b39dcd04f8f29a863e966b3 in / 
# Wed, 11 Oct 2017 14:01:47 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 11 Oct 2017 14:01:49 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 14:01:50 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 11 Oct 2017 14:01:52 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 11 Oct 2017 14:01:52 GMT
CMD ["/bin/bash"]
# Wed, 11 Oct 2017 14:21:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 14:22:01 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 11 Oct 2017 14:22:11 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 11 Oct 2017 14:24:25 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 14:24:33 GMT
ENV LANG=C.UTF-8
# Wed, 11 Oct 2017 14:24:34 GMT
ENV LC_ALL=C.UTF-8
# Wed, 11 Oct 2017 14:25:14 GMT
RUN rosdep init     && rosdep update
# Wed, 11 Oct 2017 15:08:36 GMT
ENV ROS_DISTRO=lunar
# Wed, 11 Oct 2017 15:16:25 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 15:16:44 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Wed, 11 Oct 2017 15:16:44 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 11 Oct 2017 15:16:45 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:aac43d4d6c83c61c78a7814ef7d2e02dc6c2f52dc110ff181aea144991711636`  
		Last Modified: Fri, 06 Oct 2017 22:13:46 GMT  
		Size: 43.4 MB (43426326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eed65d92515dfacf9a35d3301bc4847f1057d240f9ab3c442b573bdbb8452791`  
		Last Modified: Wed, 11 Oct 2017 14:03:45 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2de5574dca5eb5a1b9351c990c0865bbe18370da61e7169a539ba80bbdb058b2`  
		Last Modified: Wed, 11 Oct 2017 14:03:44 GMT  
		Size: 617.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5a76e352cce541b89ec31a527e09d2185c9427315f118b56573f79eb31b4c2b`  
		Last Modified: Wed, 11 Oct 2017 14:03:45 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2aceaacecb77ef3360c013ffcd305eecd6cf17a32bd143a72ca0b86b74721ba`  
		Last Modified: Wed, 11 Oct 2017 14:03:45 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df2b464ff94260bae09f2719a99368cdaf4e91cb4ac7f8292454419def5b6bb2`  
		Last Modified: Wed, 11 Oct 2017 15:42:12 GMT  
		Size: 4.8 MB (4819150 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:317f3f12586aa0432e4b41b4e01e1e59b1132bbf0cb8d0a8bec39998598cfc19`  
		Last Modified: Wed, 11 Oct 2017 15:42:04 GMT  
		Size: 13.1 KB (13087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d485a4030132f2b8618b2c1e9adeb0f3512ff862a371cbffb828825cd90b712`  
		Last Modified: Wed, 11 Oct 2017 15:42:02 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebe5f4f3df9287919c1ddc687c131a9235d6053e50879ffbdd2307364fe2784c`  
		Last Modified: Wed, 11 Oct 2017 15:43:00 GMT  
		Size: 52.3 MB (52342563 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:624ab9416f2027ffb47c0f23bc9805307660d34dc41b41bace605c5ee21025e3`  
		Last Modified: Wed, 11 Oct 2017 15:42:03 GMT  
		Size: 760.2 KB (760212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f58fa0ad6cdafaba7ddd06842854509ea748ac290ddc510d8853a6147d4d9103`  
		Last Modified: Wed, 11 Oct 2017 15:50:42 GMT  
		Size: 173.9 MB (173932127 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac7c9712a19c1c4b2ea9074d8c5d23ff54433f72a4000bb203336c675f1fa26a`  
		Last Modified: Wed, 11 Oct 2017 15:49:33 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:lunar-ros-core-zesty`

```console
$ docker pull ros@sha256:02873ac04be1dd667e9f697c4f10fb454b88e7c7b0bd7aebea30e2954ee08ae3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `ros:lunar-ros-core-zesty` - linux; amd64

```console
$ docker pull ros@sha256:16b17d054aa545d75551cfdc9a14490087847c94183a29a07ec4265691c04697
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **353.5 MB (353534502 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e6ab3a09dd6c2c77e2dd544dbefa92b52ff24b159cb7ce5a619ed4b49c8c2a76`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 18 Sep 2017 23:31:50 GMT
ADD file:4e2e1f8336bcc64e853e9f3462f0829ce85b34a32755dba06aa7bd0007eda4f0 in / 
# Mon, 18 Sep 2017 23:31:50 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 18 Sep 2017 23:31:51 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 18 Sep 2017 23:31:52 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Mon, 18 Sep 2017 23:31:52 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 18 Sep 2017 23:31:52 GMT
CMD ["/bin/bash"]
# Sat, 04 Nov 2017 07:38:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 07:38:41 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 04 Nov 2017 07:38:42 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu zesty main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 04 Nov 2017 07:39:15 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 07:39:15 GMT
ENV LANG=C.UTF-8
# Sat, 04 Nov 2017 07:39:15 GMT
ENV LC_ALL=C.UTF-8
# Sat, 04 Nov 2017 07:39:27 GMT
RUN rosdep init     && rosdep update
# Sat, 04 Nov 2017 07:39:27 GMT
ENV ROS_DISTRO=lunar
# Sat, 04 Nov 2017 07:41:15 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 07:41:17 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Sat, 04 Nov 2017 07:41:17 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 04 Nov 2017 07:41:17 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:8b23367590c32dbb6954ab3cc9b6c451b9763556c72a893538efe88583f6a5dc`  
		Last Modified: Mon, 18 Sep 2017 23:33:09 GMT  
		Size: 38.4 MB (38437889 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7feb578947e4b86e0a0cff64b42489dc1305bbacdb3ed36d0afe95a19ebf845`  
		Last Modified: Mon, 18 Sep 2017 23:33:03 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac836f06379c8d7356e0d2e7dbb3e9f3924616527fa51b95545fb455eec31f08`  
		Last Modified: Mon, 18 Sep 2017 23:33:03 GMT  
		Size: 569.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be286dc472df31f16953d34151f836d0186fddeea6cd56dcefd2a6d46a992500`  
		Last Modified: Mon, 18 Sep 2017 23:33:03 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5533df5f353d9fbcbd081e9dd653fe7d8ddebed958d1f0e56fa4a87b216f13c1`  
		Last Modified: Mon, 18 Sep 2017 23:33:03 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d09d3709be99029b87aee9623498a0cee2b3f119f8b34544d49e33149e4afe2`  
		Last Modified: Sat, 04 Nov 2017 08:16:07 GMT  
		Size: 3.4 MB (3401528 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b59bdd7c7501c7c91e937813abef9b63af49cce54cae5b8600c946cb30a68b3`  
		Last Modified: Sat, 04 Nov 2017 08:16:06 GMT  
		Size: 1.4 KB (1379 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:814d9c881c9a47d22d8e73e53f8ad1b8b964e1466e899304397c188c798f5fbd`  
		Last Modified: Sat, 04 Nov 2017 08:16:05 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2594e9d31c140fbc622a069215b5ea094c36c7b19292e5bb3bcba4fcacb6415b`  
		Last Modified: Sat, 04 Nov 2017 08:16:34 GMT  
		Size: 58.6 MB (58606566 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb69ee77be00f22c4e2996eb0352ad434bcd301f7e3bf3e26459ae2a59d34df0`  
		Last Modified: Sat, 04 Nov 2017 08:16:02 GMT  
		Size: 766.3 KB (766309 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4425e7a07cf0c781ebffd3051718b467f6ea400a11ddba0c28f06b5565868267`  
		Last Modified: Sat, 04 Nov 2017 08:17:16 GMT  
		Size: 252.3 MB (252317986 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ccadcc928b3dbc16bec751a12fa74eac31c11ad80bde31b5dee733a137b708b`  
		Last Modified: Sat, 04 Nov 2017 08:16:03 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
