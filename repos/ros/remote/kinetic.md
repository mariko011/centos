## `ros:kinetic`

```console
$ docker pull ros@sha256:18e200b97c758bb71eca711e3847a14370cc12e129a402d3b524e76a5551a4bc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:kinetic` - linux; amd64

```console
$ docker pull ros@sha256:27d80047c7cebe3f8c115396d73cacb37d92dd007af2dafd05073c44c028d9ac
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **307.4 MB (307393933 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e8bf812ee90521098a83aac6342e4fa2fcf5f7e4cf5c3a932b2f726a40890d26`
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
# Tue, 19 Sep 2017 00:17:46 GMT
ENV ROS_DISTRO=kinetic
# Tue, 19 Sep 2017 00:19:08 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 19 Sep 2017 00:19:09 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 19 Sep 2017 00:19:11 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 19 Sep 2017 00:19:12 GMT
CMD ["bash"]
# Tue, 19 Sep 2017 00:19:28 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
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
	-	`sha256:af4d2d69265adb73629aa5e65a91f8c7f60837c142d6036d105297ae1cb87ebc`  
		Last Modified: Tue, 19 Sep 2017 00:37:23 GMT  
		Size: 193.3 MB (193266825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3608e617177af5377cb3b8549df4552526e0b9f02dfc69fabf15e860bb39f50`  
		Last Modified: Tue, 19 Sep 2017 00:36:23 GMT  
		Size: 193.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7760b3e75049e9a5ebf4cbbeab14f2aa09c289378676def785907e66fbc7ea75`  
		Last Modified: Tue, 19 Sep 2017 00:37:45 GMT  
		Size: 4.9 MB (4915052 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic` - linux; arm variant v7

```console
$ docker pull ros@sha256:bd9cf5406b229c9d634534eac46572dd6086efbf494573bfae8b4ae5c8a08d2e
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **267.6 MB (267638397 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d242d6ea4fc740f3b64a4078888980ffed93eca1980d9e07a70fec059cca59b7`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Sep 2017 04:15:04 GMT
ADD file:b9a11ed9092c203a31a93613a5bfe16654173d110fee8d9b5239fe85f7c9dbd1 in / 
# Wed, 27 Sep 2017 04:15:05 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 27 Sep 2017 04:15:06 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 27 Sep 2017 04:15:08 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 27 Sep 2017 04:15:09 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 27 Sep 2017 04:15:09 GMT
CMD ["/bin/bash"]
# Wed, 27 Sep 2017 04:32:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Wed, 27 Sep 2017 04:32:50 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 27 Sep 2017 04:32:51 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 27 Sep 2017 04:33:31 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 27 Sep 2017 04:33:32 GMT
ENV LANG=C.UTF-8
# Wed, 27 Sep 2017 04:33:32 GMT
ENV LC_ALL=C.UTF-8
# Wed, 27 Sep 2017 04:33:55 GMT
RUN rosdep init     && rosdep update
# Wed, 27 Sep 2017 04:33:55 GMT
ENV ROS_DISTRO=kinetic
# Wed, 27 Sep 2017 04:35:11 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 27 Sep 2017 04:35:13 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Wed, 27 Sep 2017 04:35:13 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 27 Sep 2017 04:35:14 GMT
CMD ["bash"]
# Wed, 27 Sep 2017 04:35:39 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:534796d9e89c220432f17eded2bef1d5c6f402c75222b30a5ee376d822746ecc`  
		Last Modified: Wed, 27 Sep 2017 04:16:43 GMT  
		Size: 42.4 MB (42391266 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:322f488b7b95db0a2ae30bd96b2d1bc3c91f2a6b320368231447804c0b055493`  
		Last Modified: Wed, 27 Sep 2017 04:16:29 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:354434b20afbf067f66bd0620a556f07d6b4c14bf73a103d290c887266d24d76`  
		Last Modified: Wed, 27 Sep 2017 04:16:29 GMT  
		Size: 612.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cff174fccd9bd1594804efd95ae5a242c61f33cec2a06ba5836af057683941ab`  
		Last Modified: Wed, 27 Sep 2017 04:16:29 GMT  
		Size: 857.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:100f391d18b8ee494901fa0de04c93b082f3add644a0be1d563a10d08db87640`  
		Last Modified: Wed, 27 Sep 2017 04:16:29 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be9ef63338a198bf115f1b19d8636337e556c73435632f5058c290d3e9a1e2ac`  
		Last Modified: Wed, 27 Sep 2017 04:47:29 GMT  
		Size: 4.6 MB (4614477 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df110c04347af318a0dd71acd44260f6e466a45372abe1986ebad1a3ffd6b9c9`  
		Last Modified: Wed, 27 Sep 2017 04:47:27 GMT  
		Size: 13.1 KB (13082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da28a7b7e770c0ccce23fcd96a5a6a084999d81c6ff0b43fedfdf0b7fd9b521b`  
		Last Modified: Wed, 27 Sep 2017 04:47:26 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6fd2cdc8f0ae61918bc7a1c945a79fa68078178e2e29224cf0304e6c9841be7`  
		Last Modified: Wed, 27 Sep 2017 04:47:45 GMT  
		Size: 50.7 MB (50707938 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44fe88d3afae1dc81300cbabbe213b6395e99d070d822667e4f25c54b6a2bd93`  
		Last Modified: Wed, 27 Sep 2017 04:47:27 GMT  
		Size: 756.8 KB (756833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72716e65b1988da39b9439447e9380f1a09d969ab03d1d9db62588da380907f7`  
		Last Modified: Wed, 27 Sep 2017 04:48:21 GMT  
		Size: 164.7 MB (164679461 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b1f186189757dd23f4ed8596031bf4ee0137d33fb29fc92467fd6952771e982`  
		Last Modified: Wed, 27 Sep 2017 04:47:26 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8094c070b8fb1b08573302488aabcec639b7ea0644aeb82daba94ac599918b68`  
		Last Modified: Wed, 27 Sep 2017 04:48:33 GMT  
		Size: 4.5 MB (4472431 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:c09dc2c668782182d7d0c4a58a821143b16161120be86fdb2544008d925d439e
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **280.1 MB (280066407 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d80e9bd26325af10efc6c7417e54079e9b5478d3e4e73c2bfe6b438ad0aa2f30`
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
# Mon, 18 Sep 2017 23:57:17 GMT
ENV ROS_DISTRO=kinetic
# Tue, 19 Sep 2017 00:07:34 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 19 Sep 2017 00:07:36 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 19 Sep 2017 00:07:37 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 19 Sep 2017 00:07:51 GMT
CMD ["bash"]
# Tue, 19 Sep 2017 00:08:37 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
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
	-	`sha256:65c6bafbba01b19302238baa387aba1ba5c34cec1ce1ac2817fd50385fb5b33d`  
		Last Modified: Tue, 19 Sep 2017 01:02:52 GMT  
		Size: 173.9 MB (173920421 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3035d3f1f52ba256ab0ccc34b46ccf6b767462b14d681da23fd274e883fdae96`  
		Last Modified: Tue, 19 Sep 2017 01:01:37 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32ada69790f5d83d436c2a88f48a672f774ca305df8e8029e4263bc5460c11e4`  
		Last Modified: Tue, 19 Sep 2017 01:03:25 GMT  
		Size: 4.8 MB (4769139 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
