<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `ros`

-	[`ros:indigo-ros-core`](#rosindigo-ros-core)
-	[`ros:indigo-ros-base`](#rosindigo-ros-base)
-	[`ros:indigo`](#rosindigo)
-	[`ros:indigo-robot`](#rosindigo-robot)
-	[`ros:indigo-perception`](#rosindigo-perception)
-	[`ros:jade-ros-core`](#rosjade-ros-core)
-	[`ros:jade-ros-base`](#rosjade-ros-base)
-	[`ros:jade`](#rosjade)
-	[`ros:jade-robot`](#rosjade-robot)
-	[`ros:jade-perception`](#rosjade-perception)
-	[`ros:kinetic-ros-core`](#roskinetic-ros-core)
-	[`ros:kinetic-ros-base`](#roskinetic-ros-base)
-	[`ros:kinetic`](#roskinetic)
-	[`ros:latest`](#roslatest)
-	[`ros:kinetic-robot`](#roskinetic-robot)
-	[`ros:kinetic-perception`](#roskinetic-perception)

## `ros:indigo-ros-core`

```console
$ docker pull ros@sha256:543295e0598f27e62428bf2ac4ef8656997e1691ee56ccd22cbe5cbe5f978cf8
```

-	Platforms:
	-	linux; amd64

### `ros:indigo-ros-core` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **249.7 MB (249681675 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a2a7ee69c4a7311af4e5c86e117a0d16be1be771a4630063cba97b0430bd0b3e`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 15 Dec 2016 17:44:58 GMT
ADD file:b2236d49147fe14d8d4970b667155ad84bde96d183889a76a7512560a0da3f82 in / 
# Thu, 15 Dec 2016 17:44:59 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 15 Dec 2016 17:45:00 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 15 Dec 2016 17:45:01 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 15 Dec 2016 17:45:02 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 15 Dec 2016 17:45:02 GMT
CMD ["/bin/bash"]
# Fri, 16 Dec 2016 03:22:41 GMT
MAINTAINER Tully Foote tfoote+buildfarm@osrfoundation.org
# Fri, 16 Dec 2016 03:22:43 GMT
RUN locale-gen en_US.UTF-8
# Fri, 16 Dec 2016 03:22:43 GMT
ENV LANG=en_US.UTF-8
# Fri, 16 Dec 2016 03:22:44 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Fri, 16 Dec 2016 03:22:45 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu trusty main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 16 Dec 2016 03:23:32 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 16 Dec 2016 03:23:43 GMT
RUN rosdep init     && rosdep update
# Fri, 16 Dec 2016 03:23:43 GMT
ENV ROS_DISTRO=indigo
# Fri, 16 Dec 2016 03:26:19 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-core=1.1.4-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 16 Dec 2016 03:26:20 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Fri, 16 Dec 2016 03:26:20 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 16 Dec 2016 03:26:20 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:16da43b30d897cf2826bf61806d6da79d67ff1caeaa9bab650f7d503db200561`  
		Last Modified: Thu, 15 Dec 2016 17:47:59 GMT  
		Size: 65.7 MB (65694192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1840843dafedebd856ed6d39163c298e3f8a939f78b1ec26e9b8d753a4cd493b`  
		Last Modified: Thu, 15 Dec 2016 17:47:38 GMT  
		Size: 71.6 KB (71558 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91246eb75b7da4d6c45bc96c72180830c7146c6395069457a893ad63b84a2de7`  
		Last Modified: Thu, 15 Dec 2016 17:47:38 GMT  
		Size: 364.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7faa681b41d79d2982921bf4f0ee7892690e67a338b8fb70fbd8e90950f9d2b1`  
		Last Modified: Thu, 15 Dec 2016 17:47:38 GMT  
		Size: 680.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97b84c64d4262ace291e55ae89ac447ccfe37a9946df127892b369a2cfb7fa5b`  
		Last Modified: Thu, 15 Dec 2016 17:47:38 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a27b6b1128fcfb92361afa8ee72e6afb119cfe498b574af00e7f1d0e234368c`  
		Last Modified: Wed, 21 Dec 2016 19:42:15 GMT  
		Size: 329.2 KB (329183 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:862fbdab822ffe22dbda43b7aa0a8c3c1cff284562acc5df75907bde614e4c91`  
		Last Modified: Wed, 21 Dec 2016 19:42:14 GMT  
		Size: 13.1 KB (13071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8777547b546cbe62568059891b0a882c1b56c5027a65b09ed1e2c8704b6beb8b`  
		Last Modified: Wed, 21 Dec 2016 19:42:12 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb15930c1ef7494833de5eb616a0dc29bc0d1c96becb5beae9a7d3e5e3317d47`  
		Last Modified: Wed, 21 Dec 2016 19:42:30 GMT  
		Size: 32.9 MB (32876567 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1f10f8ed9cdce4f2dd602d271532e413baaf76d40dcf11ec1f341106500f228`  
		Last Modified: Wed, 21 Dec 2016 19:42:12 GMT  
		Size: 690.4 KB (690404 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7fc04f5b4e2edda5604a4dc12ba0540e6ea42813d3eca4c8d221228a408278e`  
		Last Modified: Wed, 21 Dec 2016 19:43:16 GMT  
		Size: 150.0 MB (150005076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ff24249d0832f9474bafbdeb727e09788b934918e513e449c4d742a41ed91ac`  
		Last Modified: Wed, 21 Dec 2016 19:42:12 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:indigo-ros-base`

```console
$ docker pull ros@sha256:61a6fe6c78856a113293f2aabfd75de7b5854a74f9f39807a0487b49d3e1d039
```

-	Platforms:
	-	linux; amd64

### `ros:indigo-ros-base` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **253.1 MB (253107050 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:02f4f4cf75679a8f481c9e36e06ad45d2e4b7adca10e1484338a57334e7fae66`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 15 Dec 2016 17:44:58 GMT
ADD file:b2236d49147fe14d8d4970b667155ad84bde96d183889a76a7512560a0da3f82 in / 
# Thu, 15 Dec 2016 17:44:59 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 15 Dec 2016 17:45:00 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 15 Dec 2016 17:45:01 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 15 Dec 2016 17:45:02 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 15 Dec 2016 17:45:02 GMT
CMD ["/bin/bash"]
# Fri, 16 Dec 2016 03:22:41 GMT
MAINTAINER Tully Foote tfoote+buildfarm@osrfoundation.org
# Fri, 16 Dec 2016 03:22:43 GMT
RUN locale-gen en_US.UTF-8
# Fri, 16 Dec 2016 03:22:43 GMT
ENV LANG=en_US.UTF-8
# Fri, 16 Dec 2016 03:22:44 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Fri, 16 Dec 2016 03:22:45 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu trusty main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 16 Dec 2016 03:23:32 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 16 Dec 2016 03:23:43 GMT
RUN rosdep init     && rosdep update
# Fri, 16 Dec 2016 03:23:43 GMT
ENV ROS_DISTRO=indigo
# Fri, 16 Dec 2016 03:26:19 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-core=1.1.4-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 16 Dec 2016 03:26:20 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Fri, 16 Dec 2016 03:26:20 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 16 Dec 2016 03:26:20 GMT
CMD ["bash"]
# Mon, 19 Dec 2016 17:24:43 GMT
MAINTAINER Tully Foote tfoote+buildfarm@osrfoundation.org
# Mon, 19 Dec 2016 17:25:08 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-base=1.1.4-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:16da43b30d897cf2826bf61806d6da79d67ff1caeaa9bab650f7d503db200561`  
		Last Modified: Thu, 15 Dec 2016 17:47:59 GMT  
		Size: 65.7 MB (65694192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1840843dafedebd856ed6d39163c298e3f8a939f78b1ec26e9b8d753a4cd493b`  
		Last Modified: Thu, 15 Dec 2016 17:47:38 GMT  
		Size: 71.6 KB (71558 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91246eb75b7da4d6c45bc96c72180830c7146c6395069457a893ad63b84a2de7`  
		Last Modified: Thu, 15 Dec 2016 17:47:38 GMT  
		Size: 364.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7faa681b41d79d2982921bf4f0ee7892690e67a338b8fb70fbd8e90950f9d2b1`  
		Last Modified: Thu, 15 Dec 2016 17:47:38 GMT  
		Size: 680.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97b84c64d4262ace291e55ae89ac447ccfe37a9946df127892b369a2cfb7fa5b`  
		Last Modified: Thu, 15 Dec 2016 17:47:38 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a27b6b1128fcfb92361afa8ee72e6afb119cfe498b574af00e7f1d0e234368c`  
		Last Modified: Wed, 21 Dec 2016 19:42:15 GMT  
		Size: 329.2 KB (329183 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:862fbdab822ffe22dbda43b7aa0a8c3c1cff284562acc5df75907bde614e4c91`  
		Last Modified: Wed, 21 Dec 2016 19:42:14 GMT  
		Size: 13.1 KB (13071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8777547b546cbe62568059891b0a882c1b56c5027a65b09ed1e2c8704b6beb8b`  
		Last Modified: Wed, 21 Dec 2016 19:42:12 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb15930c1ef7494833de5eb616a0dc29bc0d1c96becb5beae9a7d3e5e3317d47`  
		Last Modified: Wed, 21 Dec 2016 19:42:30 GMT  
		Size: 32.9 MB (32876567 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1f10f8ed9cdce4f2dd602d271532e413baaf76d40dcf11ec1f341106500f228`  
		Last Modified: Wed, 21 Dec 2016 19:42:12 GMT  
		Size: 690.4 KB (690404 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7fc04f5b4e2edda5604a4dc12ba0540e6ea42813d3eca4c8d221228a408278e`  
		Last Modified: Wed, 21 Dec 2016 19:43:16 GMT  
		Size: 150.0 MB (150005076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ff24249d0832f9474bafbdeb727e09788b934918e513e449c4d742a41ed91ac`  
		Last Modified: Wed, 21 Dec 2016 19:42:12 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cabda1172a13c73697010632d72766111ec4b57a4c552ac8693862cd90c8f9f7`  
		Last Modified: Wed, 21 Dec 2016 19:47:07 GMT  
		Size: 3.4 MB (3425375 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:indigo`

```console
$ docker pull ros@sha256:61a6fe6c78856a113293f2aabfd75de7b5854a74f9f39807a0487b49d3e1d039
```

-	Platforms:
	-	linux; amd64

### `ros:indigo` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **253.1 MB (253107050 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:02f4f4cf75679a8f481c9e36e06ad45d2e4b7adca10e1484338a57334e7fae66`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 15 Dec 2016 17:44:58 GMT
ADD file:b2236d49147fe14d8d4970b667155ad84bde96d183889a76a7512560a0da3f82 in / 
# Thu, 15 Dec 2016 17:44:59 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 15 Dec 2016 17:45:00 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 15 Dec 2016 17:45:01 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 15 Dec 2016 17:45:02 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 15 Dec 2016 17:45:02 GMT
CMD ["/bin/bash"]
# Fri, 16 Dec 2016 03:22:41 GMT
MAINTAINER Tully Foote tfoote+buildfarm@osrfoundation.org
# Fri, 16 Dec 2016 03:22:43 GMT
RUN locale-gen en_US.UTF-8
# Fri, 16 Dec 2016 03:22:43 GMT
ENV LANG=en_US.UTF-8
# Fri, 16 Dec 2016 03:22:44 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Fri, 16 Dec 2016 03:22:45 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu trusty main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 16 Dec 2016 03:23:32 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 16 Dec 2016 03:23:43 GMT
RUN rosdep init     && rosdep update
# Fri, 16 Dec 2016 03:23:43 GMT
ENV ROS_DISTRO=indigo
# Fri, 16 Dec 2016 03:26:19 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-core=1.1.4-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 16 Dec 2016 03:26:20 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Fri, 16 Dec 2016 03:26:20 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 16 Dec 2016 03:26:20 GMT
CMD ["bash"]
# Mon, 19 Dec 2016 17:24:43 GMT
MAINTAINER Tully Foote tfoote+buildfarm@osrfoundation.org
# Mon, 19 Dec 2016 17:25:08 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-base=1.1.4-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:16da43b30d897cf2826bf61806d6da79d67ff1caeaa9bab650f7d503db200561`  
		Last Modified: Thu, 15 Dec 2016 17:47:59 GMT  
		Size: 65.7 MB (65694192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1840843dafedebd856ed6d39163c298e3f8a939f78b1ec26e9b8d753a4cd493b`  
		Last Modified: Thu, 15 Dec 2016 17:47:38 GMT  
		Size: 71.6 KB (71558 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91246eb75b7da4d6c45bc96c72180830c7146c6395069457a893ad63b84a2de7`  
		Last Modified: Thu, 15 Dec 2016 17:47:38 GMT  
		Size: 364.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7faa681b41d79d2982921bf4f0ee7892690e67a338b8fb70fbd8e90950f9d2b1`  
		Last Modified: Thu, 15 Dec 2016 17:47:38 GMT  
		Size: 680.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97b84c64d4262ace291e55ae89ac447ccfe37a9946df127892b369a2cfb7fa5b`  
		Last Modified: Thu, 15 Dec 2016 17:47:38 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a27b6b1128fcfb92361afa8ee72e6afb119cfe498b574af00e7f1d0e234368c`  
		Last Modified: Wed, 21 Dec 2016 19:42:15 GMT  
		Size: 329.2 KB (329183 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:862fbdab822ffe22dbda43b7aa0a8c3c1cff284562acc5df75907bde614e4c91`  
		Last Modified: Wed, 21 Dec 2016 19:42:14 GMT  
		Size: 13.1 KB (13071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8777547b546cbe62568059891b0a882c1b56c5027a65b09ed1e2c8704b6beb8b`  
		Last Modified: Wed, 21 Dec 2016 19:42:12 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb15930c1ef7494833de5eb616a0dc29bc0d1c96becb5beae9a7d3e5e3317d47`  
		Last Modified: Wed, 21 Dec 2016 19:42:30 GMT  
		Size: 32.9 MB (32876567 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1f10f8ed9cdce4f2dd602d271532e413baaf76d40dcf11ec1f341106500f228`  
		Last Modified: Wed, 21 Dec 2016 19:42:12 GMT  
		Size: 690.4 KB (690404 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7fc04f5b4e2edda5604a4dc12ba0540e6ea42813d3eca4c8d221228a408278e`  
		Last Modified: Wed, 21 Dec 2016 19:43:16 GMT  
		Size: 150.0 MB (150005076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ff24249d0832f9474bafbdeb727e09788b934918e513e449c4d742a41ed91ac`  
		Last Modified: Wed, 21 Dec 2016 19:42:12 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cabda1172a13c73697010632d72766111ec4b57a4c552ac8693862cd90c8f9f7`  
		Last Modified: Wed, 21 Dec 2016 19:47:07 GMT  
		Size: 3.4 MB (3425375 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:indigo-robot`

```console
$ docker pull ros@sha256:b416f52e42f3d06d1902dd461962852a7d4675cddb4303d9766efd3e8f2f0d9e
```

-	Platforms:
	-	linux; amd64

### `ros:indigo-robot` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **321.6 MB (321566189 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6a91cacc13e3a61f5883ee15ef8447d905b95660ac493bc6fd1a99d83e2e4d0a`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 15 Dec 2016 17:44:58 GMT
ADD file:b2236d49147fe14d8d4970b667155ad84bde96d183889a76a7512560a0da3f82 in / 
# Thu, 15 Dec 2016 17:44:59 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 15 Dec 2016 17:45:00 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 15 Dec 2016 17:45:01 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 15 Dec 2016 17:45:02 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 15 Dec 2016 17:45:02 GMT
CMD ["/bin/bash"]
# Fri, 16 Dec 2016 03:22:41 GMT
MAINTAINER Tully Foote tfoote+buildfarm@osrfoundation.org
# Fri, 16 Dec 2016 03:22:43 GMT
RUN locale-gen en_US.UTF-8
# Fri, 16 Dec 2016 03:22:43 GMT
ENV LANG=en_US.UTF-8
# Fri, 16 Dec 2016 03:22:44 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Fri, 16 Dec 2016 03:22:45 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu trusty main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 16 Dec 2016 03:23:32 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 16 Dec 2016 03:23:43 GMT
RUN rosdep init     && rosdep update
# Fri, 16 Dec 2016 03:23:43 GMT
ENV ROS_DISTRO=indigo
# Fri, 16 Dec 2016 03:26:19 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-core=1.1.4-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 16 Dec 2016 03:26:20 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Fri, 16 Dec 2016 03:26:20 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 16 Dec 2016 03:26:20 GMT
CMD ["bash"]
# Mon, 19 Dec 2016 17:24:43 GMT
MAINTAINER Tully Foote tfoote+buildfarm@osrfoundation.org
# Mon, 19 Dec 2016 17:25:08 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-base=1.1.4-0*     && rm -rf /var/lib/apt/lists/*
# Mon, 19 Dec 2016 17:25:09 GMT
MAINTAINER Tully Foote tfoote+buildfarm@osrfoundation.org
# Mon, 19 Dec 2016 17:28:43 GMT
RUN apt-get update && apt-get install -y     ros-indigo-robot=1.1.4-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:16da43b30d897cf2826bf61806d6da79d67ff1caeaa9bab650f7d503db200561`  
		Last Modified: Thu, 15 Dec 2016 17:47:59 GMT  
		Size: 65.7 MB (65694192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1840843dafedebd856ed6d39163c298e3f8a939f78b1ec26e9b8d753a4cd493b`  
		Last Modified: Thu, 15 Dec 2016 17:47:38 GMT  
		Size: 71.6 KB (71558 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91246eb75b7da4d6c45bc96c72180830c7146c6395069457a893ad63b84a2de7`  
		Last Modified: Thu, 15 Dec 2016 17:47:38 GMT  
		Size: 364.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7faa681b41d79d2982921bf4f0ee7892690e67a338b8fb70fbd8e90950f9d2b1`  
		Last Modified: Thu, 15 Dec 2016 17:47:38 GMT  
		Size: 680.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97b84c64d4262ace291e55ae89ac447ccfe37a9946df127892b369a2cfb7fa5b`  
		Last Modified: Thu, 15 Dec 2016 17:47:38 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a27b6b1128fcfb92361afa8ee72e6afb119cfe498b574af00e7f1d0e234368c`  
		Last Modified: Wed, 21 Dec 2016 19:42:15 GMT  
		Size: 329.2 KB (329183 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:862fbdab822ffe22dbda43b7aa0a8c3c1cff284562acc5df75907bde614e4c91`  
		Last Modified: Wed, 21 Dec 2016 19:42:14 GMT  
		Size: 13.1 KB (13071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8777547b546cbe62568059891b0a882c1b56c5027a65b09ed1e2c8704b6beb8b`  
		Last Modified: Wed, 21 Dec 2016 19:42:12 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb15930c1ef7494833de5eb616a0dc29bc0d1c96becb5beae9a7d3e5e3317d47`  
		Last Modified: Wed, 21 Dec 2016 19:42:30 GMT  
		Size: 32.9 MB (32876567 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1f10f8ed9cdce4f2dd602d271532e413baaf76d40dcf11ec1f341106500f228`  
		Last Modified: Wed, 21 Dec 2016 19:42:12 GMT  
		Size: 690.4 KB (690404 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7fc04f5b4e2edda5604a4dc12ba0540e6ea42813d3eca4c8d221228a408278e`  
		Last Modified: Wed, 21 Dec 2016 19:43:16 GMT  
		Size: 150.0 MB (150005076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ff24249d0832f9474bafbdeb727e09788b934918e513e449c4d742a41ed91ac`  
		Last Modified: Wed, 21 Dec 2016 19:42:12 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cabda1172a13c73697010632d72766111ec4b57a4c552ac8693862cd90c8f9f7`  
		Last Modified: Wed, 21 Dec 2016 19:47:07 GMT  
		Size: 3.4 MB (3425375 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af77f91ff05ed999b29b9f9feb8b9e56a2ab862428b1a42788ee8f8892e4f9dd`  
		Last Modified: Wed, 21 Dec 2016 19:52:14 GMT  
		Size: 68.5 MB (68459139 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:indigo-perception`

```console
$ docker pull ros@sha256:e4675a77355f4c2420af26ae4ae7e7f14e9ce06c9fbe1b6a8f336931c396d923
```

-	Platforms:
	-	linux; amd64

### `ros:indigo-perception` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **520.7 MB (520705370 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:410b30bb93f64806149a9c4a747771d4e980c640c7095b1ede0ef6b845c11ccf`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 15 Dec 2016 17:44:58 GMT
ADD file:b2236d49147fe14d8d4970b667155ad84bde96d183889a76a7512560a0da3f82 in / 
# Thu, 15 Dec 2016 17:44:59 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 15 Dec 2016 17:45:00 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 15 Dec 2016 17:45:01 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 15 Dec 2016 17:45:02 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 15 Dec 2016 17:45:02 GMT
CMD ["/bin/bash"]
# Fri, 16 Dec 2016 03:22:41 GMT
MAINTAINER Tully Foote tfoote+buildfarm@osrfoundation.org
# Fri, 16 Dec 2016 03:22:43 GMT
RUN locale-gen en_US.UTF-8
# Fri, 16 Dec 2016 03:22:43 GMT
ENV LANG=en_US.UTF-8
# Fri, 16 Dec 2016 03:22:44 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Fri, 16 Dec 2016 03:22:45 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu trusty main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 16 Dec 2016 03:23:32 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 16 Dec 2016 03:23:43 GMT
RUN rosdep init     && rosdep update
# Fri, 16 Dec 2016 03:23:43 GMT
ENV ROS_DISTRO=indigo
# Fri, 16 Dec 2016 03:26:19 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-core=1.1.4-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 16 Dec 2016 03:26:20 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Fri, 16 Dec 2016 03:26:20 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 16 Dec 2016 03:26:20 GMT
CMD ["bash"]
# Mon, 19 Dec 2016 17:24:43 GMT
MAINTAINER Tully Foote tfoote+buildfarm@osrfoundation.org
# Mon, 19 Dec 2016 17:25:08 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-base=1.1.4-0*     && rm -rf /var/lib/apt/lists/*
# Mon, 19 Dec 2016 17:25:09 GMT
MAINTAINER Tully Foote tfoote+buildfarm@osrfoundation.org
# Mon, 19 Dec 2016 17:27:49 GMT
RUN apt-get update && apt-get install -y     ros-indigo-perception=1.1.4-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:16da43b30d897cf2826bf61806d6da79d67ff1caeaa9bab650f7d503db200561`  
		Last Modified: Thu, 15 Dec 2016 17:47:59 GMT  
		Size: 65.7 MB (65694192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1840843dafedebd856ed6d39163c298e3f8a939f78b1ec26e9b8d753a4cd493b`  
		Last Modified: Thu, 15 Dec 2016 17:47:38 GMT  
		Size: 71.6 KB (71558 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91246eb75b7da4d6c45bc96c72180830c7146c6395069457a893ad63b84a2de7`  
		Last Modified: Thu, 15 Dec 2016 17:47:38 GMT  
		Size: 364.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7faa681b41d79d2982921bf4f0ee7892690e67a338b8fb70fbd8e90950f9d2b1`  
		Last Modified: Thu, 15 Dec 2016 17:47:38 GMT  
		Size: 680.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97b84c64d4262ace291e55ae89ac447ccfe37a9946df127892b369a2cfb7fa5b`  
		Last Modified: Thu, 15 Dec 2016 17:47:38 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a27b6b1128fcfb92361afa8ee72e6afb119cfe498b574af00e7f1d0e234368c`  
		Last Modified: Wed, 21 Dec 2016 19:42:15 GMT  
		Size: 329.2 KB (329183 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:862fbdab822ffe22dbda43b7aa0a8c3c1cff284562acc5df75907bde614e4c91`  
		Last Modified: Wed, 21 Dec 2016 19:42:14 GMT  
		Size: 13.1 KB (13071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8777547b546cbe62568059891b0a882c1b56c5027a65b09ed1e2c8704b6beb8b`  
		Last Modified: Wed, 21 Dec 2016 19:42:12 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb15930c1ef7494833de5eb616a0dc29bc0d1c96becb5beae9a7d3e5e3317d47`  
		Last Modified: Wed, 21 Dec 2016 19:42:30 GMT  
		Size: 32.9 MB (32876567 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1f10f8ed9cdce4f2dd602d271532e413baaf76d40dcf11ec1f341106500f228`  
		Last Modified: Wed, 21 Dec 2016 19:42:12 GMT  
		Size: 690.4 KB (690404 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7fc04f5b4e2edda5604a4dc12ba0540e6ea42813d3eca4c8d221228a408278e`  
		Last Modified: Wed, 21 Dec 2016 19:43:16 GMT  
		Size: 150.0 MB (150005076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ff24249d0832f9474bafbdeb727e09788b934918e513e449c4d742a41ed91ac`  
		Last Modified: Wed, 21 Dec 2016 19:42:12 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cabda1172a13c73697010632d72766111ec4b57a4c552ac8693862cd90c8f9f7`  
		Last Modified: Wed, 21 Dec 2016 19:47:07 GMT  
		Size: 3.4 MB (3425375 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a93d7d6121f4145a2cb1d294a865ec9bef880e8f8477f176b02c44625d57523f`  
		Last Modified: Wed, 21 Dec 2016 19:51:19 GMT  
		Size: 267.6 MB (267598320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:jade-ros-core`

```console
$ docker pull ros@sha256:08f0e515f88fa007c588720d09b028f25b7e8ffb21ed346a5d16c94991cabbd8
```

-	Platforms:
	-	linux; amd64

### `ros:jade-ros-core` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **249.8 MB (249803778 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:591636a38437c7ac70264eba00caca1ee45bb77d12f23d5cefee85c796323dec`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 15 Dec 2016 17:44:58 GMT
ADD file:b2236d49147fe14d8d4970b667155ad84bde96d183889a76a7512560a0da3f82 in / 
# Thu, 15 Dec 2016 17:44:59 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 15 Dec 2016 17:45:00 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 15 Dec 2016 17:45:01 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 15 Dec 2016 17:45:02 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 15 Dec 2016 17:45:02 GMT
CMD ["/bin/bash"]
# Fri, 16 Dec 2016 03:22:41 GMT
MAINTAINER Tully Foote tfoote+buildfarm@osrfoundation.org
# Fri, 16 Dec 2016 03:22:43 GMT
RUN locale-gen en_US.UTF-8
# Fri, 16 Dec 2016 03:22:43 GMT
ENV LANG=en_US.UTF-8
# Fri, 16 Dec 2016 03:22:44 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Fri, 16 Dec 2016 03:22:45 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu trusty main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 16 Dec 2016 03:23:32 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 16 Dec 2016 03:23:43 GMT
RUN rosdep init     && rosdep update
# Fri, 16 Dec 2016 03:26:21 GMT
ENV ROS_DISTRO=jade
# Fri, 16 Dec 2016 03:28:07 GMT
RUN apt-get update && apt-get install -y     ros-jade-ros-core=1.2.0-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 16 Dec 2016 03:28:08 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Fri, 16 Dec 2016 03:28:09 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 16 Dec 2016 03:28:09 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:16da43b30d897cf2826bf61806d6da79d67ff1caeaa9bab650f7d503db200561`  
		Last Modified: Thu, 15 Dec 2016 17:47:59 GMT  
		Size: 65.7 MB (65694192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1840843dafedebd856ed6d39163c298e3f8a939f78b1ec26e9b8d753a4cd493b`  
		Last Modified: Thu, 15 Dec 2016 17:47:38 GMT  
		Size: 71.6 KB (71558 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91246eb75b7da4d6c45bc96c72180830c7146c6395069457a893ad63b84a2de7`  
		Last Modified: Thu, 15 Dec 2016 17:47:38 GMT  
		Size: 364.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7faa681b41d79d2982921bf4f0ee7892690e67a338b8fb70fbd8e90950f9d2b1`  
		Last Modified: Thu, 15 Dec 2016 17:47:38 GMT  
		Size: 680.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97b84c64d4262ace291e55ae89ac447ccfe37a9946df127892b369a2cfb7fa5b`  
		Last Modified: Thu, 15 Dec 2016 17:47:38 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a27b6b1128fcfb92361afa8ee72e6afb119cfe498b574af00e7f1d0e234368c`  
		Last Modified: Wed, 21 Dec 2016 19:42:15 GMT  
		Size: 329.2 KB (329183 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:862fbdab822ffe22dbda43b7aa0a8c3c1cff284562acc5df75907bde614e4c91`  
		Last Modified: Wed, 21 Dec 2016 19:42:14 GMT  
		Size: 13.1 KB (13071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8777547b546cbe62568059891b0a882c1b56c5027a65b09ed1e2c8704b6beb8b`  
		Last Modified: Wed, 21 Dec 2016 19:42:12 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb15930c1ef7494833de5eb616a0dc29bc0d1c96becb5beae9a7d3e5e3317d47`  
		Last Modified: Wed, 21 Dec 2016 19:42:30 GMT  
		Size: 32.9 MB (32876567 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1f10f8ed9cdce4f2dd602d271532e413baaf76d40dcf11ec1f341106500f228`  
		Last Modified: Wed, 21 Dec 2016 19:42:12 GMT  
		Size: 690.4 KB (690404 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ceca1a199b3073cbc4060ecd425797bd17cd599d3fb0f49a387a4ce58404f702`  
		Last Modified: Wed, 21 Dec 2016 19:44:42 GMT  
		Size: 150.1 MB (150127178 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b429b55aa85e843a46c9feaf68cff65abaaf746e1f7e0ee02ea33648ed5592be`  
		Last Modified: Wed, 21 Dec 2016 19:43:43 GMT  
		Size: 197.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:jade-ros-base`

```console
$ docker pull ros@sha256:00bfe60c61bba039a7f76adf98ce06cf1e4f2d2f8afe20e55f2ac2b072587c3a
```

-	Platforms:
	-	linux; amd64

### `ros:jade-ros-base` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **253.2 MB (253245259 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3caa214cadaea8426ad84de2b77675df3f0f1e6b243aa33afe3d84042932d4a9`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 15 Dec 2016 17:44:58 GMT
ADD file:b2236d49147fe14d8d4970b667155ad84bde96d183889a76a7512560a0da3f82 in / 
# Thu, 15 Dec 2016 17:44:59 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 15 Dec 2016 17:45:00 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 15 Dec 2016 17:45:01 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 15 Dec 2016 17:45:02 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 15 Dec 2016 17:45:02 GMT
CMD ["/bin/bash"]
# Fri, 16 Dec 2016 03:22:41 GMT
MAINTAINER Tully Foote tfoote+buildfarm@osrfoundation.org
# Fri, 16 Dec 2016 03:22:43 GMT
RUN locale-gen en_US.UTF-8
# Fri, 16 Dec 2016 03:22:43 GMT
ENV LANG=en_US.UTF-8
# Fri, 16 Dec 2016 03:22:44 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Fri, 16 Dec 2016 03:22:45 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu trusty main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 16 Dec 2016 03:23:32 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 16 Dec 2016 03:23:43 GMT
RUN rosdep init     && rosdep update
# Fri, 16 Dec 2016 03:26:21 GMT
ENV ROS_DISTRO=jade
# Fri, 16 Dec 2016 03:28:07 GMT
RUN apt-get update && apt-get install -y     ros-jade-ros-core=1.2.0-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 16 Dec 2016 03:28:08 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Fri, 16 Dec 2016 03:28:09 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 16 Dec 2016 03:28:09 GMT
CMD ["bash"]
# Mon, 19 Dec 2016 17:28:44 GMT
MAINTAINER Tully Foote tfoote+buildfarm@osrfoundation.org
# Mon, 19 Dec 2016 17:29:04 GMT
RUN apt-get update && apt-get install -y     ros-jade-ros-base=1.2.0-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:16da43b30d897cf2826bf61806d6da79d67ff1caeaa9bab650f7d503db200561`  
		Last Modified: Thu, 15 Dec 2016 17:47:59 GMT  
		Size: 65.7 MB (65694192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1840843dafedebd856ed6d39163c298e3f8a939f78b1ec26e9b8d753a4cd493b`  
		Last Modified: Thu, 15 Dec 2016 17:47:38 GMT  
		Size: 71.6 KB (71558 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91246eb75b7da4d6c45bc96c72180830c7146c6395069457a893ad63b84a2de7`  
		Last Modified: Thu, 15 Dec 2016 17:47:38 GMT  
		Size: 364.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7faa681b41d79d2982921bf4f0ee7892690e67a338b8fb70fbd8e90950f9d2b1`  
		Last Modified: Thu, 15 Dec 2016 17:47:38 GMT  
		Size: 680.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97b84c64d4262ace291e55ae89ac447ccfe37a9946df127892b369a2cfb7fa5b`  
		Last Modified: Thu, 15 Dec 2016 17:47:38 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a27b6b1128fcfb92361afa8ee72e6afb119cfe498b574af00e7f1d0e234368c`  
		Last Modified: Wed, 21 Dec 2016 19:42:15 GMT  
		Size: 329.2 KB (329183 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:862fbdab822ffe22dbda43b7aa0a8c3c1cff284562acc5df75907bde614e4c91`  
		Last Modified: Wed, 21 Dec 2016 19:42:14 GMT  
		Size: 13.1 KB (13071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8777547b546cbe62568059891b0a882c1b56c5027a65b09ed1e2c8704b6beb8b`  
		Last Modified: Wed, 21 Dec 2016 19:42:12 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb15930c1ef7494833de5eb616a0dc29bc0d1c96becb5beae9a7d3e5e3317d47`  
		Last Modified: Wed, 21 Dec 2016 19:42:30 GMT  
		Size: 32.9 MB (32876567 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1f10f8ed9cdce4f2dd602d271532e413baaf76d40dcf11ec1f341106500f228`  
		Last Modified: Wed, 21 Dec 2016 19:42:12 GMT  
		Size: 690.4 KB (690404 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ceca1a199b3073cbc4060ecd425797bd17cd599d3fb0f49a387a4ce58404f702`  
		Last Modified: Wed, 21 Dec 2016 19:44:42 GMT  
		Size: 150.1 MB (150127178 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b429b55aa85e843a46c9feaf68cff65abaaf746e1f7e0ee02ea33648ed5592be`  
		Last Modified: Wed, 21 Dec 2016 19:43:43 GMT  
		Size: 197.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:adae1bf5a404ed56701d5107481c992d24e8a0cd754faf02a00d4f2910f15012`  
		Last Modified: Wed, 21 Dec 2016 19:47:51 GMT  
		Size: 3.4 MB (3441481 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:jade`

```console
$ docker pull ros@sha256:00bfe60c61bba039a7f76adf98ce06cf1e4f2d2f8afe20e55f2ac2b072587c3a
```

-	Platforms:
	-	linux; amd64

### `ros:jade` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **253.2 MB (253245259 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3caa214cadaea8426ad84de2b77675df3f0f1e6b243aa33afe3d84042932d4a9`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 15 Dec 2016 17:44:58 GMT
ADD file:b2236d49147fe14d8d4970b667155ad84bde96d183889a76a7512560a0da3f82 in / 
# Thu, 15 Dec 2016 17:44:59 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 15 Dec 2016 17:45:00 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 15 Dec 2016 17:45:01 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 15 Dec 2016 17:45:02 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 15 Dec 2016 17:45:02 GMT
CMD ["/bin/bash"]
# Fri, 16 Dec 2016 03:22:41 GMT
MAINTAINER Tully Foote tfoote+buildfarm@osrfoundation.org
# Fri, 16 Dec 2016 03:22:43 GMT
RUN locale-gen en_US.UTF-8
# Fri, 16 Dec 2016 03:22:43 GMT
ENV LANG=en_US.UTF-8
# Fri, 16 Dec 2016 03:22:44 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Fri, 16 Dec 2016 03:22:45 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu trusty main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 16 Dec 2016 03:23:32 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 16 Dec 2016 03:23:43 GMT
RUN rosdep init     && rosdep update
# Fri, 16 Dec 2016 03:26:21 GMT
ENV ROS_DISTRO=jade
# Fri, 16 Dec 2016 03:28:07 GMT
RUN apt-get update && apt-get install -y     ros-jade-ros-core=1.2.0-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 16 Dec 2016 03:28:08 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Fri, 16 Dec 2016 03:28:09 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 16 Dec 2016 03:28:09 GMT
CMD ["bash"]
# Mon, 19 Dec 2016 17:28:44 GMT
MAINTAINER Tully Foote tfoote+buildfarm@osrfoundation.org
# Mon, 19 Dec 2016 17:29:04 GMT
RUN apt-get update && apt-get install -y     ros-jade-ros-base=1.2.0-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:16da43b30d897cf2826bf61806d6da79d67ff1caeaa9bab650f7d503db200561`  
		Last Modified: Thu, 15 Dec 2016 17:47:59 GMT  
		Size: 65.7 MB (65694192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1840843dafedebd856ed6d39163c298e3f8a939f78b1ec26e9b8d753a4cd493b`  
		Last Modified: Thu, 15 Dec 2016 17:47:38 GMT  
		Size: 71.6 KB (71558 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91246eb75b7da4d6c45bc96c72180830c7146c6395069457a893ad63b84a2de7`  
		Last Modified: Thu, 15 Dec 2016 17:47:38 GMT  
		Size: 364.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7faa681b41d79d2982921bf4f0ee7892690e67a338b8fb70fbd8e90950f9d2b1`  
		Last Modified: Thu, 15 Dec 2016 17:47:38 GMT  
		Size: 680.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97b84c64d4262ace291e55ae89ac447ccfe37a9946df127892b369a2cfb7fa5b`  
		Last Modified: Thu, 15 Dec 2016 17:47:38 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a27b6b1128fcfb92361afa8ee72e6afb119cfe498b574af00e7f1d0e234368c`  
		Last Modified: Wed, 21 Dec 2016 19:42:15 GMT  
		Size: 329.2 KB (329183 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:862fbdab822ffe22dbda43b7aa0a8c3c1cff284562acc5df75907bde614e4c91`  
		Last Modified: Wed, 21 Dec 2016 19:42:14 GMT  
		Size: 13.1 KB (13071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8777547b546cbe62568059891b0a882c1b56c5027a65b09ed1e2c8704b6beb8b`  
		Last Modified: Wed, 21 Dec 2016 19:42:12 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb15930c1ef7494833de5eb616a0dc29bc0d1c96becb5beae9a7d3e5e3317d47`  
		Last Modified: Wed, 21 Dec 2016 19:42:30 GMT  
		Size: 32.9 MB (32876567 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1f10f8ed9cdce4f2dd602d271532e413baaf76d40dcf11ec1f341106500f228`  
		Last Modified: Wed, 21 Dec 2016 19:42:12 GMT  
		Size: 690.4 KB (690404 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ceca1a199b3073cbc4060ecd425797bd17cd599d3fb0f49a387a4ce58404f702`  
		Last Modified: Wed, 21 Dec 2016 19:44:42 GMT  
		Size: 150.1 MB (150127178 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b429b55aa85e843a46c9feaf68cff65abaaf746e1f7e0ee02ea33648ed5592be`  
		Last Modified: Wed, 21 Dec 2016 19:43:43 GMT  
		Size: 197.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:adae1bf5a404ed56701d5107481c992d24e8a0cd754faf02a00d4f2910f15012`  
		Last Modified: Wed, 21 Dec 2016 19:47:51 GMT  
		Size: 3.4 MB (3441481 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:jade-robot`

```console
$ docker pull ros@sha256:2a49b390b9595e1237457075ab610556e805d8738a51b2d23ac564b8aef336b3
```

-	Platforms:
	-	linux; amd64

### `ros:jade-robot` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **321.3 MB (321340349 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dd43f2790cdfce0e9fa628a1be940a64f68439dbe6632610d262968b9b0d8478`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 15 Dec 2016 17:44:58 GMT
ADD file:b2236d49147fe14d8d4970b667155ad84bde96d183889a76a7512560a0da3f82 in / 
# Thu, 15 Dec 2016 17:44:59 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 15 Dec 2016 17:45:00 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 15 Dec 2016 17:45:01 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 15 Dec 2016 17:45:02 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 15 Dec 2016 17:45:02 GMT
CMD ["/bin/bash"]
# Fri, 16 Dec 2016 03:22:41 GMT
MAINTAINER Tully Foote tfoote+buildfarm@osrfoundation.org
# Fri, 16 Dec 2016 03:22:43 GMT
RUN locale-gen en_US.UTF-8
# Fri, 16 Dec 2016 03:22:43 GMT
ENV LANG=en_US.UTF-8
# Fri, 16 Dec 2016 03:22:44 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Fri, 16 Dec 2016 03:22:45 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu trusty main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 16 Dec 2016 03:23:32 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 16 Dec 2016 03:23:43 GMT
RUN rosdep init     && rosdep update
# Fri, 16 Dec 2016 03:26:21 GMT
ENV ROS_DISTRO=jade
# Fri, 16 Dec 2016 03:28:07 GMT
RUN apt-get update && apt-get install -y     ros-jade-ros-core=1.2.0-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 16 Dec 2016 03:28:08 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Fri, 16 Dec 2016 03:28:09 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 16 Dec 2016 03:28:09 GMT
CMD ["bash"]
# Mon, 19 Dec 2016 17:28:44 GMT
MAINTAINER Tully Foote tfoote+buildfarm@osrfoundation.org
# Mon, 19 Dec 2016 17:29:04 GMT
RUN apt-get update && apt-get install -y     ros-jade-ros-base=1.2.0-0*     && rm -rf /var/lib/apt/lists/*
# Mon, 19 Dec 2016 17:29:05 GMT
MAINTAINER Tully Foote tfoote+buildfarm@osrfoundation.org
# Mon, 19 Dec 2016 17:32:26 GMT
RUN apt-get update && apt-get install -y     ros-jade-robot=1.2.0-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:16da43b30d897cf2826bf61806d6da79d67ff1caeaa9bab650f7d503db200561`  
		Last Modified: Thu, 15 Dec 2016 17:47:59 GMT  
		Size: 65.7 MB (65694192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1840843dafedebd856ed6d39163c298e3f8a939f78b1ec26e9b8d753a4cd493b`  
		Last Modified: Thu, 15 Dec 2016 17:47:38 GMT  
		Size: 71.6 KB (71558 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91246eb75b7da4d6c45bc96c72180830c7146c6395069457a893ad63b84a2de7`  
		Last Modified: Thu, 15 Dec 2016 17:47:38 GMT  
		Size: 364.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7faa681b41d79d2982921bf4f0ee7892690e67a338b8fb70fbd8e90950f9d2b1`  
		Last Modified: Thu, 15 Dec 2016 17:47:38 GMT  
		Size: 680.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97b84c64d4262ace291e55ae89ac447ccfe37a9946df127892b369a2cfb7fa5b`  
		Last Modified: Thu, 15 Dec 2016 17:47:38 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a27b6b1128fcfb92361afa8ee72e6afb119cfe498b574af00e7f1d0e234368c`  
		Last Modified: Wed, 21 Dec 2016 19:42:15 GMT  
		Size: 329.2 KB (329183 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:862fbdab822ffe22dbda43b7aa0a8c3c1cff284562acc5df75907bde614e4c91`  
		Last Modified: Wed, 21 Dec 2016 19:42:14 GMT  
		Size: 13.1 KB (13071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8777547b546cbe62568059891b0a882c1b56c5027a65b09ed1e2c8704b6beb8b`  
		Last Modified: Wed, 21 Dec 2016 19:42:12 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb15930c1ef7494833de5eb616a0dc29bc0d1c96becb5beae9a7d3e5e3317d47`  
		Last Modified: Wed, 21 Dec 2016 19:42:30 GMT  
		Size: 32.9 MB (32876567 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1f10f8ed9cdce4f2dd602d271532e413baaf76d40dcf11ec1f341106500f228`  
		Last Modified: Wed, 21 Dec 2016 19:42:12 GMT  
		Size: 690.4 KB (690404 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ceca1a199b3073cbc4060ecd425797bd17cd599d3fb0f49a387a4ce58404f702`  
		Last Modified: Wed, 21 Dec 2016 19:44:42 GMT  
		Size: 150.1 MB (150127178 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b429b55aa85e843a46c9feaf68cff65abaaf746e1f7e0ee02ea33648ed5592be`  
		Last Modified: Wed, 21 Dec 2016 19:43:43 GMT  
		Size: 197.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:adae1bf5a404ed56701d5107481c992d24e8a0cd754faf02a00d4f2910f15012`  
		Last Modified: Wed, 21 Dec 2016 19:47:51 GMT  
		Size: 3.4 MB (3441481 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dae06c6fbb34c350ba69262600c8adee975406d75f41928701cf51952eea3c96`  
		Last Modified: Wed, 21 Dec 2016 19:55:15 GMT  
		Size: 68.1 MB (68095090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:jade-perception`

```console
$ docker pull ros@sha256:0ebfc1f41231cc5852ca9f98339afa0c2fad1da97d865d5a7eb8093c778073b8
```

-	Platforms:
	-	linux; amd64

### `ros:jade-perception` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **520.6 MB (520646685 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2f9a08d4a3c53e6e170442686891dfc182d3df74a5d39674dcefa1cdb6e5a0d9`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 15 Dec 2016 17:44:58 GMT
ADD file:b2236d49147fe14d8d4970b667155ad84bde96d183889a76a7512560a0da3f82 in / 
# Thu, 15 Dec 2016 17:44:59 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 15 Dec 2016 17:45:00 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 15 Dec 2016 17:45:01 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 15 Dec 2016 17:45:02 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 15 Dec 2016 17:45:02 GMT
CMD ["/bin/bash"]
# Fri, 16 Dec 2016 03:22:41 GMT
MAINTAINER Tully Foote tfoote+buildfarm@osrfoundation.org
# Fri, 16 Dec 2016 03:22:43 GMT
RUN locale-gen en_US.UTF-8
# Fri, 16 Dec 2016 03:22:43 GMT
ENV LANG=en_US.UTF-8
# Fri, 16 Dec 2016 03:22:44 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Fri, 16 Dec 2016 03:22:45 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu trusty main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 16 Dec 2016 03:23:32 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 16 Dec 2016 03:23:43 GMT
RUN rosdep init     && rosdep update
# Fri, 16 Dec 2016 03:26:21 GMT
ENV ROS_DISTRO=jade
# Fri, 16 Dec 2016 03:28:07 GMT
RUN apt-get update && apt-get install -y     ros-jade-ros-core=1.2.0-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 16 Dec 2016 03:28:08 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Fri, 16 Dec 2016 03:28:09 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 16 Dec 2016 03:28:09 GMT
CMD ["bash"]
# Mon, 19 Dec 2016 17:28:44 GMT
MAINTAINER Tully Foote tfoote+buildfarm@osrfoundation.org
# Mon, 19 Dec 2016 17:29:04 GMT
RUN apt-get update && apt-get install -y     ros-jade-ros-base=1.2.0-0*     && rm -rf /var/lib/apt/lists/*
# Mon, 19 Dec 2016 17:29:05 GMT
MAINTAINER Tully Foote tfoote+buildfarm@osrfoundation.org
# Mon, 19 Dec 2016 17:31:33 GMT
RUN apt-get update && apt-get install -y     ros-jade-perception=1.2.0-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:16da43b30d897cf2826bf61806d6da79d67ff1caeaa9bab650f7d503db200561`  
		Last Modified: Thu, 15 Dec 2016 17:47:59 GMT  
		Size: 65.7 MB (65694192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1840843dafedebd856ed6d39163c298e3f8a939f78b1ec26e9b8d753a4cd493b`  
		Last Modified: Thu, 15 Dec 2016 17:47:38 GMT  
		Size: 71.6 KB (71558 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91246eb75b7da4d6c45bc96c72180830c7146c6395069457a893ad63b84a2de7`  
		Last Modified: Thu, 15 Dec 2016 17:47:38 GMT  
		Size: 364.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7faa681b41d79d2982921bf4f0ee7892690e67a338b8fb70fbd8e90950f9d2b1`  
		Last Modified: Thu, 15 Dec 2016 17:47:38 GMT  
		Size: 680.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97b84c64d4262ace291e55ae89ac447ccfe37a9946df127892b369a2cfb7fa5b`  
		Last Modified: Thu, 15 Dec 2016 17:47:38 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a27b6b1128fcfb92361afa8ee72e6afb119cfe498b574af00e7f1d0e234368c`  
		Last Modified: Wed, 21 Dec 2016 19:42:15 GMT  
		Size: 329.2 KB (329183 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:862fbdab822ffe22dbda43b7aa0a8c3c1cff284562acc5df75907bde614e4c91`  
		Last Modified: Wed, 21 Dec 2016 19:42:14 GMT  
		Size: 13.1 KB (13071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8777547b546cbe62568059891b0a882c1b56c5027a65b09ed1e2c8704b6beb8b`  
		Last Modified: Wed, 21 Dec 2016 19:42:12 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb15930c1ef7494833de5eb616a0dc29bc0d1c96becb5beae9a7d3e5e3317d47`  
		Last Modified: Wed, 21 Dec 2016 19:42:30 GMT  
		Size: 32.9 MB (32876567 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1f10f8ed9cdce4f2dd602d271532e413baaf76d40dcf11ec1f341106500f228`  
		Last Modified: Wed, 21 Dec 2016 19:42:12 GMT  
		Size: 690.4 KB (690404 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ceca1a199b3073cbc4060ecd425797bd17cd599d3fb0f49a387a4ce58404f702`  
		Last Modified: Wed, 21 Dec 2016 19:44:42 GMT  
		Size: 150.1 MB (150127178 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b429b55aa85e843a46c9feaf68cff65abaaf746e1f7e0ee02ea33648ed5592be`  
		Last Modified: Wed, 21 Dec 2016 19:43:43 GMT  
		Size: 197.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:adae1bf5a404ed56701d5107481c992d24e8a0cd754faf02a00d4f2910f15012`  
		Last Modified: Wed, 21 Dec 2016 19:47:51 GMT  
		Size: 3.4 MB (3441481 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9bfb3282c07c32bdda42398b52251224b7ac39ad0610162b816b77eca708b9d1`  
		Last Modified: Wed, 21 Dec 2016 19:54:15 GMT  
		Size: 267.4 MB (267401426 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:kinetic-ros-core`

```console
$ docker pull ros@sha256:7ed3ce70d73055dd45648d29f594aa6628f3904b271e2d4e7be66ba15a4076e5
```

-	Platforms:
	-	linux; amd64

### `ros:kinetic-ros-core` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **298.6 MB (298552027 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2f5a21b7968f0982690ed23773a94c42307ee4b98a29e64aa4061109ed16da8f`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 15 Dec 2016 17:45:19 GMT
ADD file:7529d28035b43a2281b9ba1d3cf6bde4f0d9517693e9412328761d51c24091b4 in / 
# Thu, 15 Dec 2016 17:45:21 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 15 Dec 2016 17:45:22 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 15 Dec 2016 17:45:22 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 15 Dec 2016 17:45:23 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 15 Dec 2016 17:45:24 GMT
CMD ["/bin/bash"]
# Fri, 16 Dec 2016 03:28:09 GMT
MAINTAINER Tully Foote tfoote+buildfarm@osrfoundation.org
# Fri, 16 Dec 2016 03:28:11 GMT
RUN locale-gen en_US.UTF-8
# Fri, 16 Dec 2016 03:28:12 GMT
ENV LANG=en_US.UTF-8
# Fri, 16 Dec 2016 03:28:15 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Fri, 16 Dec 2016 03:28:16 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 16 Dec 2016 03:28:49 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 16 Dec 2016 03:29:01 GMT
RUN rosdep init     && rosdep update
# Fri, 16 Dec 2016 03:29:01 GMT
ENV ROS_DISTRO=kinetic
# Fri, 16 Dec 2016 03:30:41 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.0-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 16 Dec 2016 03:30:42 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Fri, 16 Dec 2016 03:30:42 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 16 Dec 2016 03:30:42 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:b3e1c725a85f0953e81815b7c7aabfad9ebfd90af53f99248981282b8045d787`  
		Last Modified: Thu, 15 Dec 2016 17:49:25 GMT  
		Size: 50.2 MB (50217683 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4daad8bdde31f5969d6a44800e993a911bed25853b2f89417b07ce7f0ac67714`  
		Last Modified: Thu, 15 Dec 2016 17:49:07 GMT  
		Size: 822.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63fe8c0068a811103c702452985368fc99014f83b5f0151cf631644f13f383b2`  
		Last Modified: Thu, 15 Dec 2016 17:49:07 GMT  
		Size: 514.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a70713c436f2350e8a9f1c1e6c823290f331254c6c21d5657056499d8575608`  
		Last Modified: Thu, 15 Dec 2016 17:49:07 GMT  
		Size: 681.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd842a2105a862f62ba4ad726531029be49046c290307e9c07a688c89f4606e6`  
		Last Modified: Thu, 15 Dec 2016 17:49:07 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c34fc8c7695a5f8f9ff2fc83628ba28fb0ff02838571261a850ea22ff8e1b06`  
		Last Modified: Wed, 21 Dec 2016 19:45:16 GMT  
		Size: 339.4 KB (339415 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3839e0a2549ce849940120318a1ef3bf920459b31bfeaeb53195435e9fcce400`  
		Last Modified: Wed, 21 Dec 2016 19:45:15 GMT  
		Size: 13.1 KB (13071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3634580c8b15e46a24e721410a270f54b7b69301bd50645f3c33a4e187b97ca8`  
		Last Modified: Wed, 21 Dec 2016 19:45:12 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d81122bd9605fce554b98c586e4602ec9944a02e1a55b55f0a991e345716b3df`  
		Last Modified: Wed, 21 Dec 2016 19:45:46 GMT  
		Size: 57.6 MB (57648501 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a49c337965f53bae70b183f387db119da6a52a36ed87d9e8e5d96e4387939ce5`  
		Last Modified: Wed, 21 Dec 2016 19:45:12 GMT  
		Size: 690.4 KB (690410 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be17fe37ee452911528808a93c501c1f8059636e7858d69b70695a78a761dfc1`  
		Last Modified: Wed, 21 Dec 2016 19:46:31 GMT  
		Size: 189.6 MB (189640350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91037c7e23b9b2f8f52fa38b2964bf44141901e9d25832216b6b80d981a71293`  
		Last Modified: Wed, 21 Dec 2016 19:45:12 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:kinetic-ros-base`

```console
$ docker pull ros@sha256:b228e6c08e725677bb6d5d3ad4a0aa2a4ecc87bffe0c3a63c136c14c1ae0cf99
```

-	Platforms:
	-	linux; amd64

### `ros:kinetic-ros-base` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **303.2 MB (303195811 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4ee36452558188daa2128435bb4d1de0e651358ec4ad7628479f58666ffa7b5d`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 15 Dec 2016 17:45:19 GMT
ADD file:7529d28035b43a2281b9ba1d3cf6bde4f0d9517693e9412328761d51c24091b4 in / 
# Thu, 15 Dec 2016 17:45:21 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 15 Dec 2016 17:45:22 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 15 Dec 2016 17:45:22 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 15 Dec 2016 17:45:23 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 15 Dec 2016 17:45:24 GMT
CMD ["/bin/bash"]
# Fri, 16 Dec 2016 03:28:09 GMT
MAINTAINER Tully Foote tfoote+buildfarm@osrfoundation.org
# Fri, 16 Dec 2016 03:28:11 GMT
RUN locale-gen en_US.UTF-8
# Fri, 16 Dec 2016 03:28:12 GMT
ENV LANG=en_US.UTF-8
# Fri, 16 Dec 2016 03:28:15 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Fri, 16 Dec 2016 03:28:16 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 16 Dec 2016 03:28:49 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 16 Dec 2016 03:29:01 GMT
RUN rosdep init     && rosdep update
# Fri, 16 Dec 2016 03:29:01 GMT
ENV ROS_DISTRO=kinetic
# Fri, 16 Dec 2016 03:30:41 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.0-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 16 Dec 2016 03:30:42 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Fri, 16 Dec 2016 03:30:42 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 16 Dec 2016 03:30:42 GMT
CMD ["bash"]
# Mon, 19 Dec 2016 17:32:27 GMT
MAINTAINER Tully Foote tfoote+buildfarm@osrfoundation.org
# Mon, 19 Dec 2016 17:32:50 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.0-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:b3e1c725a85f0953e81815b7c7aabfad9ebfd90af53f99248981282b8045d787`  
		Last Modified: Thu, 15 Dec 2016 17:49:25 GMT  
		Size: 50.2 MB (50217683 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4daad8bdde31f5969d6a44800e993a911bed25853b2f89417b07ce7f0ac67714`  
		Last Modified: Thu, 15 Dec 2016 17:49:07 GMT  
		Size: 822.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63fe8c0068a811103c702452985368fc99014f83b5f0151cf631644f13f383b2`  
		Last Modified: Thu, 15 Dec 2016 17:49:07 GMT  
		Size: 514.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a70713c436f2350e8a9f1c1e6c823290f331254c6c21d5657056499d8575608`  
		Last Modified: Thu, 15 Dec 2016 17:49:07 GMT  
		Size: 681.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd842a2105a862f62ba4ad726531029be49046c290307e9c07a688c89f4606e6`  
		Last Modified: Thu, 15 Dec 2016 17:49:07 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c34fc8c7695a5f8f9ff2fc83628ba28fb0ff02838571261a850ea22ff8e1b06`  
		Last Modified: Wed, 21 Dec 2016 19:45:16 GMT  
		Size: 339.4 KB (339415 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3839e0a2549ce849940120318a1ef3bf920459b31bfeaeb53195435e9fcce400`  
		Last Modified: Wed, 21 Dec 2016 19:45:15 GMT  
		Size: 13.1 KB (13071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3634580c8b15e46a24e721410a270f54b7b69301bd50645f3c33a4e187b97ca8`  
		Last Modified: Wed, 21 Dec 2016 19:45:12 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d81122bd9605fce554b98c586e4602ec9944a02e1a55b55f0a991e345716b3df`  
		Last Modified: Wed, 21 Dec 2016 19:45:46 GMT  
		Size: 57.6 MB (57648501 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a49c337965f53bae70b183f387db119da6a52a36ed87d9e8e5d96e4387939ce5`  
		Last Modified: Wed, 21 Dec 2016 19:45:12 GMT  
		Size: 690.4 KB (690410 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be17fe37ee452911528808a93c501c1f8059636e7858d69b70695a78a761dfc1`  
		Last Modified: Wed, 21 Dec 2016 19:46:31 GMT  
		Size: 189.6 MB (189640350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91037c7e23b9b2f8f52fa38b2964bf44141901e9d25832216b6b80d981a71293`  
		Last Modified: Wed, 21 Dec 2016 19:45:12 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00ced336ad5e2f7538889bf70084fa2230d5e17d17ba3bd917c03b689a8febb0`  
		Last Modified: Wed, 21 Dec 2016 19:48:37 GMT  
		Size: 4.6 MB (4643784 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:kinetic`

```console
$ docker pull ros@sha256:b228e6c08e725677bb6d5d3ad4a0aa2a4ecc87bffe0c3a63c136c14c1ae0cf99
```

-	Platforms:
	-	linux; amd64

### `ros:kinetic` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **303.2 MB (303195811 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4ee36452558188daa2128435bb4d1de0e651358ec4ad7628479f58666ffa7b5d`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 15 Dec 2016 17:45:19 GMT
ADD file:7529d28035b43a2281b9ba1d3cf6bde4f0d9517693e9412328761d51c24091b4 in / 
# Thu, 15 Dec 2016 17:45:21 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 15 Dec 2016 17:45:22 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 15 Dec 2016 17:45:22 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 15 Dec 2016 17:45:23 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 15 Dec 2016 17:45:24 GMT
CMD ["/bin/bash"]
# Fri, 16 Dec 2016 03:28:09 GMT
MAINTAINER Tully Foote tfoote+buildfarm@osrfoundation.org
# Fri, 16 Dec 2016 03:28:11 GMT
RUN locale-gen en_US.UTF-8
# Fri, 16 Dec 2016 03:28:12 GMT
ENV LANG=en_US.UTF-8
# Fri, 16 Dec 2016 03:28:15 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Fri, 16 Dec 2016 03:28:16 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 16 Dec 2016 03:28:49 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 16 Dec 2016 03:29:01 GMT
RUN rosdep init     && rosdep update
# Fri, 16 Dec 2016 03:29:01 GMT
ENV ROS_DISTRO=kinetic
# Fri, 16 Dec 2016 03:30:41 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.0-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 16 Dec 2016 03:30:42 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Fri, 16 Dec 2016 03:30:42 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 16 Dec 2016 03:30:42 GMT
CMD ["bash"]
# Mon, 19 Dec 2016 17:32:27 GMT
MAINTAINER Tully Foote tfoote+buildfarm@osrfoundation.org
# Mon, 19 Dec 2016 17:32:50 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.0-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:b3e1c725a85f0953e81815b7c7aabfad9ebfd90af53f99248981282b8045d787`  
		Last Modified: Thu, 15 Dec 2016 17:49:25 GMT  
		Size: 50.2 MB (50217683 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4daad8bdde31f5969d6a44800e993a911bed25853b2f89417b07ce7f0ac67714`  
		Last Modified: Thu, 15 Dec 2016 17:49:07 GMT  
		Size: 822.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63fe8c0068a811103c702452985368fc99014f83b5f0151cf631644f13f383b2`  
		Last Modified: Thu, 15 Dec 2016 17:49:07 GMT  
		Size: 514.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a70713c436f2350e8a9f1c1e6c823290f331254c6c21d5657056499d8575608`  
		Last Modified: Thu, 15 Dec 2016 17:49:07 GMT  
		Size: 681.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd842a2105a862f62ba4ad726531029be49046c290307e9c07a688c89f4606e6`  
		Last Modified: Thu, 15 Dec 2016 17:49:07 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c34fc8c7695a5f8f9ff2fc83628ba28fb0ff02838571261a850ea22ff8e1b06`  
		Last Modified: Wed, 21 Dec 2016 19:45:16 GMT  
		Size: 339.4 KB (339415 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3839e0a2549ce849940120318a1ef3bf920459b31bfeaeb53195435e9fcce400`  
		Last Modified: Wed, 21 Dec 2016 19:45:15 GMT  
		Size: 13.1 KB (13071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3634580c8b15e46a24e721410a270f54b7b69301bd50645f3c33a4e187b97ca8`  
		Last Modified: Wed, 21 Dec 2016 19:45:12 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d81122bd9605fce554b98c586e4602ec9944a02e1a55b55f0a991e345716b3df`  
		Last Modified: Wed, 21 Dec 2016 19:45:46 GMT  
		Size: 57.6 MB (57648501 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a49c337965f53bae70b183f387db119da6a52a36ed87d9e8e5d96e4387939ce5`  
		Last Modified: Wed, 21 Dec 2016 19:45:12 GMT  
		Size: 690.4 KB (690410 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be17fe37ee452911528808a93c501c1f8059636e7858d69b70695a78a761dfc1`  
		Last Modified: Wed, 21 Dec 2016 19:46:31 GMT  
		Size: 189.6 MB (189640350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91037c7e23b9b2f8f52fa38b2964bf44141901e9d25832216b6b80d981a71293`  
		Last Modified: Wed, 21 Dec 2016 19:45:12 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00ced336ad5e2f7538889bf70084fa2230d5e17d17ba3bd917c03b689a8febb0`  
		Last Modified: Wed, 21 Dec 2016 19:48:37 GMT  
		Size: 4.6 MB (4643784 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:latest`

```console
$ docker pull ros@sha256:b228e6c08e725677bb6d5d3ad4a0aa2a4ecc87bffe0c3a63c136c14c1ae0cf99
```

-	Platforms:
	-	linux; amd64

### `ros:latest` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **303.2 MB (303195811 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4ee36452558188daa2128435bb4d1de0e651358ec4ad7628479f58666ffa7b5d`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 15 Dec 2016 17:45:19 GMT
ADD file:7529d28035b43a2281b9ba1d3cf6bde4f0d9517693e9412328761d51c24091b4 in / 
# Thu, 15 Dec 2016 17:45:21 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 15 Dec 2016 17:45:22 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 15 Dec 2016 17:45:22 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 15 Dec 2016 17:45:23 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 15 Dec 2016 17:45:24 GMT
CMD ["/bin/bash"]
# Fri, 16 Dec 2016 03:28:09 GMT
MAINTAINER Tully Foote tfoote+buildfarm@osrfoundation.org
# Fri, 16 Dec 2016 03:28:11 GMT
RUN locale-gen en_US.UTF-8
# Fri, 16 Dec 2016 03:28:12 GMT
ENV LANG=en_US.UTF-8
# Fri, 16 Dec 2016 03:28:15 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Fri, 16 Dec 2016 03:28:16 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 16 Dec 2016 03:28:49 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 16 Dec 2016 03:29:01 GMT
RUN rosdep init     && rosdep update
# Fri, 16 Dec 2016 03:29:01 GMT
ENV ROS_DISTRO=kinetic
# Fri, 16 Dec 2016 03:30:41 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.0-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 16 Dec 2016 03:30:42 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Fri, 16 Dec 2016 03:30:42 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 16 Dec 2016 03:30:42 GMT
CMD ["bash"]
# Mon, 19 Dec 2016 17:32:27 GMT
MAINTAINER Tully Foote tfoote+buildfarm@osrfoundation.org
# Mon, 19 Dec 2016 17:32:50 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.0-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:b3e1c725a85f0953e81815b7c7aabfad9ebfd90af53f99248981282b8045d787`  
		Last Modified: Thu, 15 Dec 2016 17:49:25 GMT  
		Size: 50.2 MB (50217683 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4daad8bdde31f5969d6a44800e993a911bed25853b2f89417b07ce7f0ac67714`  
		Last Modified: Thu, 15 Dec 2016 17:49:07 GMT  
		Size: 822.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63fe8c0068a811103c702452985368fc99014f83b5f0151cf631644f13f383b2`  
		Last Modified: Thu, 15 Dec 2016 17:49:07 GMT  
		Size: 514.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a70713c436f2350e8a9f1c1e6c823290f331254c6c21d5657056499d8575608`  
		Last Modified: Thu, 15 Dec 2016 17:49:07 GMT  
		Size: 681.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd842a2105a862f62ba4ad726531029be49046c290307e9c07a688c89f4606e6`  
		Last Modified: Thu, 15 Dec 2016 17:49:07 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c34fc8c7695a5f8f9ff2fc83628ba28fb0ff02838571261a850ea22ff8e1b06`  
		Last Modified: Wed, 21 Dec 2016 19:45:16 GMT  
		Size: 339.4 KB (339415 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3839e0a2549ce849940120318a1ef3bf920459b31bfeaeb53195435e9fcce400`  
		Last Modified: Wed, 21 Dec 2016 19:45:15 GMT  
		Size: 13.1 KB (13071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3634580c8b15e46a24e721410a270f54b7b69301bd50645f3c33a4e187b97ca8`  
		Last Modified: Wed, 21 Dec 2016 19:45:12 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d81122bd9605fce554b98c586e4602ec9944a02e1a55b55f0a991e345716b3df`  
		Last Modified: Wed, 21 Dec 2016 19:45:46 GMT  
		Size: 57.6 MB (57648501 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a49c337965f53bae70b183f387db119da6a52a36ed87d9e8e5d96e4387939ce5`  
		Last Modified: Wed, 21 Dec 2016 19:45:12 GMT  
		Size: 690.4 KB (690410 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be17fe37ee452911528808a93c501c1f8059636e7858d69b70695a78a761dfc1`  
		Last Modified: Wed, 21 Dec 2016 19:46:31 GMT  
		Size: 189.6 MB (189640350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91037c7e23b9b2f8f52fa38b2964bf44141901e9d25832216b6b80d981a71293`  
		Last Modified: Wed, 21 Dec 2016 19:45:12 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00ced336ad5e2f7538889bf70084fa2230d5e17d17ba3bd917c03b689a8febb0`  
		Last Modified: Wed, 21 Dec 2016 19:48:37 GMT  
		Size: 4.6 MB (4643784 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:kinetic-robot`

```console
$ docker pull ros@sha256:99f4a68c27f5292ff25a54d68b00e4ac283923df0686a858f8480cf1aaba06f1
```

-	Platforms:
	-	linux; amd64

### `ros:kinetic-robot` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **434.7 MB (434663385 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4b57cf3fbfd1177deba5a239eed2f7520fc9f19b125ce563a274a7c9c80d16b4`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 15 Dec 2016 17:45:19 GMT
ADD file:7529d28035b43a2281b9ba1d3cf6bde4f0d9517693e9412328761d51c24091b4 in / 
# Thu, 15 Dec 2016 17:45:21 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 15 Dec 2016 17:45:22 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 15 Dec 2016 17:45:22 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 15 Dec 2016 17:45:23 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 15 Dec 2016 17:45:24 GMT
CMD ["/bin/bash"]
# Fri, 16 Dec 2016 03:28:09 GMT
MAINTAINER Tully Foote tfoote+buildfarm@osrfoundation.org
# Fri, 16 Dec 2016 03:28:11 GMT
RUN locale-gen en_US.UTF-8
# Fri, 16 Dec 2016 03:28:12 GMT
ENV LANG=en_US.UTF-8
# Fri, 16 Dec 2016 03:28:15 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Fri, 16 Dec 2016 03:28:16 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 16 Dec 2016 03:28:49 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 16 Dec 2016 03:29:01 GMT
RUN rosdep init     && rosdep update
# Fri, 16 Dec 2016 03:29:01 GMT
ENV ROS_DISTRO=kinetic
# Fri, 16 Dec 2016 03:30:41 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.0-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 16 Dec 2016 03:30:42 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Fri, 16 Dec 2016 03:30:42 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 16 Dec 2016 03:30:42 GMT
CMD ["bash"]
# Mon, 19 Dec 2016 17:32:27 GMT
MAINTAINER Tully Foote tfoote+buildfarm@osrfoundation.org
# Mon, 19 Dec 2016 17:32:50 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.0-0*     && rm -rf /var/lib/apt/lists/*
# Mon, 19 Dec 2016 17:32:50 GMT
MAINTAINER Tully Foote tfoote+buildfarm@osrfoundation.org
# Mon, 19 Dec 2016 17:37:32 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-robot=1.3.0-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:b3e1c725a85f0953e81815b7c7aabfad9ebfd90af53f99248981282b8045d787`  
		Last Modified: Thu, 15 Dec 2016 17:49:25 GMT  
		Size: 50.2 MB (50217683 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4daad8bdde31f5969d6a44800e993a911bed25853b2f89417b07ce7f0ac67714`  
		Last Modified: Thu, 15 Dec 2016 17:49:07 GMT  
		Size: 822.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63fe8c0068a811103c702452985368fc99014f83b5f0151cf631644f13f383b2`  
		Last Modified: Thu, 15 Dec 2016 17:49:07 GMT  
		Size: 514.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a70713c436f2350e8a9f1c1e6c823290f331254c6c21d5657056499d8575608`  
		Last Modified: Thu, 15 Dec 2016 17:49:07 GMT  
		Size: 681.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd842a2105a862f62ba4ad726531029be49046c290307e9c07a688c89f4606e6`  
		Last Modified: Thu, 15 Dec 2016 17:49:07 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c34fc8c7695a5f8f9ff2fc83628ba28fb0ff02838571261a850ea22ff8e1b06`  
		Last Modified: Wed, 21 Dec 2016 19:45:16 GMT  
		Size: 339.4 KB (339415 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3839e0a2549ce849940120318a1ef3bf920459b31bfeaeb53195435e9fcce400`  
		Last Modified: Wed, 21 Dec 2016 19:45:15 GMT  
		Size: 13.1 KB (13071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3634580c8b15e46a24e721410a270f54b7b69301bd50645f3c33a4e187b97ca8`  
		Last Modified: Wed, 21 Dec 2016 19:45:12 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d81122bd9605fce554b98c586e4602ec9944a02e1a55b55f0a991e345716b3df`  
		Last Modified: Wed, 21 Dec 2016 19:45:46 GMT  
		Size: 57.6 MB (57648501 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a49c337965f53bae70b183f387db119da6a52a36ed87d9e8e5d96e4387939ce5`  
		Last Modified: Wed, 21 Dec 2016 19:45:12 GMT  
		Size: 690.4 KB (690410 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be17fe37ee452911528808a93c501c1f8059636e7858d69b70695a78a761dfc1`  
		Last Modified: Wed, 21 Dec 2016 19:46:31 GMT  
		Size: 189.6 MB (189640350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91037c7e23b9b2f8f52fa38b2964bf44141901e9d25832216b6b80d981a71293`  
		Last Modified: Wed, 21 Dec 2016 19:45:12 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00ced336ad5e2f7538889bf70084fa2230d5e17d17ba3bd917c03b689a8febb0`  
		Last Modified: Wed, 21 Dec 2016 19:48:37 GMT  
		Size: 4.6 MB (4643784 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d57d25669640aaff668c2867891bd9b23fbf7e8213405a7573e68384aae3eaa`  
		Last Modified: Wed, 21 Dec 2016 19:59:23 GMT  
		Size: 131.5 MB (131467574 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:kinetic-perception`

```console
$ docker pull ros@sha256:856ef8b73eb405a054bc94f2c131664e85372269acc362d81732caecea864c77
```

-	Platforms:
	-	linux; amd64

### `ros:kinetic-perception` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **706.8 MB (706848592 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c4f97715098ecc08f35a28f8ae987912479da277998f8b78b4b586a7f1ce60a4`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 15 Dec 2016 17:45:19 GMT
ADD file:7529d28035b43a2281b9ba1d3cf6bde4f0d9517693e9412328761d51c24091b4 in / 
# Thu, 15 Dec 2016 17:45:21 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 15 Dec 2016 17:45:22 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 15 Dec 2016 17:45:22 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 15 Dec 2016 17:45:23 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 15 Dec 2016 17:45:24 GMT
CMD ["/bin/bash"]
# Fri, 16 Dec 2016 03:28:09 GMT
MAINTAINER Tully Foote tfoote+buildfarm@osrfoundation.org
# Fri, 16 Dec 2016 03:28:11 GMT
RUN locale-gen en_US.UTF-8
# Fri, 16 Dec 2016 03:28:12 GMT
ENV LANG=en_US.UTF-8
# Fri, 16 Dec 2016 03:28:15 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Fri, 16 Dec 2016 03:28:16 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 16 Dec 2016 03:28:49 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 16 Dec 2016 03:29:01 GMT
RUN rosdep init     && rosdep update
# Fri, 16 Dec 2016 03:29:01 GMT
ENV ROS_DISTRO=kinetic
# Fri, 16 Dec 2016 03:30:41 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.0-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 16 Dec 2016 03:30:42 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Fri, 16 Dec 2016 03:30:42 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 16 Dec 2016 03:30:42 GMT
CMD ["bash"]
# Mon, 19 Dec 2016 17:32:27 GMT
MAINTAINER Tully Foote tfoote+buildfarm@osrfoundation.org
# Mon, 19 Dec 2016 17:32:50 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.0-0*     && rm -rf /var/lib/apt/lists/*
# Mon, 19 Dec 2016 17:32:50 GMT
MAINTAINER Tully Foote tfoote+buildfarm@osrfoundation.org
# Mon, 19 Dec 2016 17:36:15 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-perception=1.3.0-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:b3e1c725a85f0953e81815b7c7aabfad9ebfd90af53f99248981282b8045d787`  
		Last Modified: Thu, 15 Dec 2016 17:49:25 GMT  
		Size: 50.2 MB (50217683 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4daad8bdde31f5969d6a44800e993a911bed25853b2f89417b07ce7f0ac67714`  
		Last Modified: Thu, 15 Dec 2016 17:49:07 GMT  
		Size: 822.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63fe8c0068a811103c702452985368fc99014f83b5f0151cf631644f13f383b2`  
		Last Modified: Thu, 15 Dec 2016 17:49:07 GMT  
		Size: 514.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a70713c436f2350e8a9f1c1e6c823290f331254c6c21d5657056499d8575608`  
		Last Modified: Thu, 15 Dec 2016 17:49:07 GMT  
		Size: 681.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd842a2105a862f62ba4ad726531029be49046c290307e9c07a688c89f4606e6`  
		Last Modified: Thu, 15 Dec 2016 17:49:07 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c34fc8c7695a5f8f9ff2fc83628ba28fb0ff02838571261a850ea22ff8e1b06`  
		Last Modified: Wed, 21 Dec 2016 19:45:16 GMT  
		Size: 339.4 KB (339415 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3839e0a2549ce849940120318a1ef3bf920459b31bfeaeb53195435e9fcce400`  
		Last Modified: Wed, 21 Dec 2016 19:45:15 GMT  
		Size: 13.1 KB (13071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3634580c8b15e46a24e721410a270f54b7b69301bd50645f3c33a4e187b97ca8`  
		Last Modified: Wed, 21 Dec 2016 19:45:12 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d81122bd9605fce554b98c586e4602ec9944a02e1a55b55f0a991e345716b3df`  
		Last Modified: Wed, 21 Dec 2016 19:45:46 GMT  
		Size: 57.6 MB (57648501 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a49c337965f53bae70b183f387db119da6a52a36ed87d9e8e5d96e4387939ce5`  
		Last Modified: Wed, 21 Dec 2016 19:45:12 GMT  
		Size: 690.4 KB (690410 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be17fe37ee452911528808a93c501c1f8059636e7858d69b70695a78a761dfc1`  
		Last Modified: Wed, 21 Dec 2016 19:46:31 GMT  
		Size: 189.6 MB (189640350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91037c7e23b9b2f8f52fa38b2964bf44141901e9d25832216b6b80d981a71293`  
		Last Modified: Wed, 21 Dec 2016 19:45:12 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00ced336ad5e2f7538889bf70084fa2230d5e17d17ba3bd917c03b689a8febb0`  
		Last Modified: Wed, 21 Dec 2016 19:48:37 GMT  
		Size: 4.6 MB (4643784 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61c77635e721dbd1b9ea57cd5283ad306512f214983df436e536651494469050`  
		Last Modified: Wed, 21 Dec 2016 19:57:58 GMT  
		Size: 403.7 MB (403652781 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
