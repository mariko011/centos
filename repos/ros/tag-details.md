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
$ docker pull ros@sha256:e7a4cce489e794c255b5c1489df9c901b29a6c555fa995a94b5027592fd0b794
```

-	Platforms:
	-	linux; amd64

### `ros:indigo-ros-core` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **249.6 MB (249608562 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:907b2b9b92759bc88acc83a9deb0eae1844bde8578092d93afe24f3161b9bcc8`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 26 Sep 2016 21:26:04 GMT
ADD file:561625b38aa88058c3af9d99be9d8b8d07f24e9d1737869e422540deeebb4443 in / 
# Mon, 26 Sep 2016 21:26:06 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 26 Sep 2016 21:26:07 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 26 Sep 2016 21:26:08 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Mon, 26 Sep 2016 21:26:08 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 26 Sep 2016 21:26:09 GMT
CMD ["/bin/bash"]
# Mon, 26 Sep 2016 22:28:28 GMT
MAINTAINER Tully Foote tfoote+buildfarm@osrfoundation.org
# Mon, 26 Sep 2016 22:28:30 GMT
RUN locale-gen en_US.UTF-8
# Mon, 26 Sep 2016 22:28:30 GMT
ENV LANG=en_US.UTF-8
# Mon, 26 Sep 2016 22:28:33 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Mon, 26 Sep 2016 22:28:33 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu trusty main" > /etc/apt/sources.list.d/ros-latest.list
# Mon, 26 Sep 2016 22:29:07 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Mon, 26 Sep 2016 22:29:15 GMT
RUN rosdep init     && rosdep update
# Mon, 26 Sep 2016 22:29:16 GMT
ENV ROS_DISTRO=indigo
# Mon, 26 Sep 2016 22:30:42 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-core=1.1.4-0*     && rm -rf /var/lib/apt/lists/*
# Mon, 26 Sep 2016 22:30:43 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Mon, 26 Sep 2016 22:30:43 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Mon, 26 Sep 2016 22:30:44 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:04c996abc2442fb0534f018543f0352647de3a65a3b321628b8cd1ceecedc3f6`  
		Last Modified: Mon, 26 Sep 2016 21:28:04 GMT  
		Size: 65.7 MB (65702977 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d394d3da86fe44806b96c68b5c51bd6e38d287b2dde4ef89c011243ffc6542b9`  
		Last Modified: Mon, 26 Sep 2016 21:27:45 GMT  
		Size: 71.6 KB (71555 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bac77aae22d4292624c1db7efe5c2face4a104d8967c9f63e22230aebfeceda8`  
		Last Modified: Mon, 26 Sep 2016 21:27:45 GMT  
		Size: 360.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b48b86b78e975768669fb7f9e20166f994ab4949a878b642927c28f3f169390d`  
		Last Modified: Mon, 26 Sep 2016 21:27:45 GMT  
		Size: 682.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09b3dd842bf5577e855c84e1273582a799616748c6b13ac9ecb2a49ee2477cbc`  
		Last Modified: Mon, 26 Sep 2016 21:27:45 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02d04765ab742d7aa3b4c3b05827851bce2f5076988003a9b519154b78670281`  
		Last Modified: Mon, 26 Sep 2016 22:30:55 GMT  
		Size: 329.2 KB (329181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d074d7b5ea75232b7bf24ad86450f180468f8f059c748c21d0189c0389ccf1e`  
		Last Modified: Mon, 26 Sep 2016 22:30:54 GMT  
		Size: 13.1 KB (13073 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:682ee63404f29230803455cbe31f74be7776a0a223368186cf6eeb1a29365eaa`  
		Last Modified: Mon, 26 Sep 2016 22:30:52 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f87586173f70e1aabe788bc2a99223e4042a0578de538bad255cffbf5449849`  
		Last Modified: Mon, 26 Sep 2016 22:31:03 GMT  
		Size: 32.9 MB (32866623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39f2245bd05ac90fd585626c5e2722b12299deb9afdde0c7dc2ffc55d6cd8c4b`  
		Last Modified: Mon, 26 Sep 2016 22:30:53 GMT  
		Size: 664.2 KB (664161 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a5df6c375299c68bb272e619586ab65295b7012c66b9c31c9d5c9317022246d`  
		Last Modified: Mon, 26 Sep 2016 22:31:36 GMT  
		Size: 150.0 MB (149959369 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e23f787cd59750830f7bd6762ff3fd5ce06d74cf668c896699101f1f07e765d4`  
		Last Modified: Mon, 26 Sep 2016 22:30:52 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:indigo-ros-base`

```console
$ docker pull ros@sha256:434774b81e9514e145ce827f076ec772fdaa7ded1f1485b10a245b0c58b845fb
```

-	Platforms:
	-	linux; amd64

### `ros:indigo-ros-base` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **253.0 MB (253027512 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7028c43354b429b215161cc77d597d6a41f7c4d355a9b96698e7dd4684d4aab3`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 26 Sep 2016 21:26:04 GMT
ADD file:561625b38aa88058c3af9d99be9d8b8d07f24e9d1737869e422540deeebb4443 in / 
# Mon, 26 Sep 2016 21:26:06 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 26 Sep 2016 21:26:07 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 26 Sep 2016 21:26:08 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Mon, 26 Sep 2016 21:26:08 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 26 Sep 2016 21:26:09 GMT
CMD ["/bin/bash"]
# Mon, 26 Sep 2016 22:28:28 GMT
MAINTAINER Tully Foote tfoote+buildfarm@osrfoundation.org
# Mon, 26 Sep 2016 22:28:30 GMT
RUN locale-gen en_US.UTF-8
# Mon, 26 Sep 2016 22:28:30 GMT
ENV LANG=en_US.UTF-8
# Mon, 26 Sep 2016 22:28:33 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Mon, 26 Sep 2016 22:28:33 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu trusty main" > /etc/apt/sources.list.d/ros-latest.list
# Mon, 26 Sep 2016 22:29:07 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Mon, 26 Sep 2016 22:29:15 GMT
RUN rosdep init     && rosdep update
# Mon, 26 Sep 2016 22:29:16 GMT
ENV ROS_DISTRO=indigo
# Mon, 26 Sep 2016 22:30:42 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-core=1.1.4-0*     && rm -rf /var/lib/apt/lists/*
# Mon, 26 Sep 2016 22:30:43 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Mon, 26 Sep 2016 22:30:43 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Mon, 26 Sep 2016 22:30:44 GMT
CMD ["bash"]
# Mon, 26 Sep 2016 23:03:21 GMT
MAINTAINER Tully Foote tfoote+buildfarm@osrfoundation.org
# Mon, 26 Sep 2016 23:03:41 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-base=1.1.4-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:04c996abc2442fb0534f018543f0352647de3a65a3b321628b8cd1ceecedc3f6`  
		Last Modified: Mon, 26 Sep 2016 21:28:04 GMT  
		Size: 65.7 MB (65702977 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d394d3da86fe44806b96c68b5c51bd6e38d287b2dde4ef89c011243ffc6542b9`  
		Last Modified: Mon, 26 Sep 2016 21:27:45 GMT  
		Size: 71.6 KB (71555 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bac77aae22d4292624c1db7efe5c2face4a104d8967c9f63e22230aebfeceda8`  
		Last Modified: Mon, 26 Sep 2016 21:27:45 GMT  
		Size: 360.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b48b86b78e975768669fb7f9e20166f994ab4949a878b642927c28f3f169390d`  
		Last Modified: Mon, 26 Sep 2016 21:27:45 GMT  
		Size: 682.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09b3dd842bf5577e855c84e1273582a799616748c6b13ac9ecb2a49ee2477cbc`  
		Last Modified: Mon, 26 Sep 2016 21:27:45 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02d04765ab742d7aa3b4c3b05827851bce2f5076988003a9b519154b78670281`  
		Last Modified: Mon, 26 Sep 2016 22:30:55 GMT  
		Size: 329.2 KB (329181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d074d7b5ea75232b7bf24ad86450f180468f8f059c748c21d0189c0389ccf1e`  
		Last Modified: Mon, 26 Sep 2016 22:30:54 GMT  
		Size: 13.1 KB (13073 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:682ee63404f29230803455cbe31f74be7776a0a223368186cf6eeb1a29365eaa`  
		Last Modified: Mon, 26 Sep 2016 22:30:52 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f87586173f70e1aabe788bc2a99223e4042a0578de538bad255cffbf5449849`  
		Last Modified: Mon, 26 Sep 2016 22:31:03 GMT  
		Size: 32.9 MB (32866623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39f2245bd05ac90fd585626c5e2722b12299deb9afdde0c7dc2ffc55d6cd8c4b`  
		Last Modified: Mon, 26 Sep 2016 22:30:53 GMT  
		Size: 664.2 KB (664161 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a5df6c375299c68bb272e619586ab65295b7012c66b9c31c9d5c9317022246d`  
		Last Modified: Mon, 26 Sep 2016 22:31:36 GMT  
		Size: 150.0 MB (149959369 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e23f787cd59750830f7bd6762ff3fd5ce06d74cf668c896699101f1f07e765d4`  
		Last Modified: Mon, 26 Sep 2016 22:30:52 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:209bea4677f05a9c13c761707a341e2e6af9b35cf158421d647060cc089f8790`  
		Last Modified: Mon, 26 Sep 2016 23:03:51 GMT  
		Size: 3.4 MB (3418950 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:indigo`

```console
$ docker pull ros@sha256:434774b81e9514e145ce827f076ec772fdaa7ded1f1485b10a245b0c58b845fb
```

-	Platforms:
	-	linux; amd64

### `ros:indigo` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **253.0 MB (253027512 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7028c43354b429b215161cc77d597d6a41f7c4d355a9b96698e7dd4684d4aab3`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 26 Sep 2016 21:26:04 GMT
ADD file:561625b38aa88058c3af9d99be9d8b8d07f24e9d1737869e422540deeebb4443 in / 
# Mon, 26 Sep 2016 21:26:06 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 26 Sep 2016 21:26:07 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 26 Sep 2016 21:26:08 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Mon, 26 Sep 2016 21:26:08 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 26 Sep 2016 21:26:09 GMT
CMD ["/bin/bash"]
# Mon, 26 Sep 2016 22:28:28 GMT
MAINTAINER Tully Foote tfoote+buildfarm@osrfoundation.org
# Mon, 26 Sep 2016 22:28:30 GMT
RUN locale-gen en_US.UTF-8
# Mon, 26 Sep 2016 22:28:30 GMT
ENV LANG=en_US.UTF-8
# Mon, 26 Sep 2016 22:28:33 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Mon, 26 Sep 2016 22:28:33 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu trusty main" > /etc/apt/sources.list.d/ros-latest.list
# Mon, 26 Sep 2016 22:29:07 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Mon, 26 Sep 2016 22:29:15 GMT
RUN rosdep init     && rosdep update
# Mon, 26 Sep 2016 22:29:16 GMT
ENV ROS_DISTRO=indigo
# Mon, 26 Sep 2016 22:30:42 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-core=1.1.4-0*     && rm -rf /var/lib/apt/lists/*
# Mon, 26 Sep 2016 22:30:43 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Mon, 26 Sep 2016 22:30:43 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Mon, 26 Sep 2016 22:30:44 GMT
CMD ["bash"]
# Mon, 26 Sep 2016 23:03:21 GMT
MAINTAINER Tully Foote tfoote+buildfarm@osrfoundation.org
# Mon, 26 Sep 2016 23:03:41 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-base=1.1.4-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:04c996abc2442fb0534f018543f0352647de3a65a3b321628b8cd1ceecedc3f6`  
		Last Modified: Mon, 26 Sep 2016 21:28:04 GMT  
		Size: 65.7 MB (65702977 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d394d3da86fe44806b96c68b5c51bd6e38d287b2dde4ef89c011243ffc6542b9`  
		Last Modified: Mon, 26 Sep 2016 21:27:45 GMT  
		Size: 71.6 KB (71555 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bac77aae22d4292624c1db7efe5c2face4a104d8967c9f63e22230aebfeceda8`  
		Last Modified: Mon, 26 Sep 2016 21:27:45 GMT  
		Size: 360.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b48b86b78e975768669fb7f9e20166f994ab4949a878b642927c28f3f169390d`  
		Last Modified: Mon, 26 Sep 2016 21:27:45 GMT  
		Size: 682.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09b3dd842bf5577e855c84e1273582a799616748c6b13ac9ecb2a49ee2477cbc`  
		Last Modified: Mon, 26 Sep 2016 21:27:45 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02d04765ab742d7aa3b4c3b05827851bce2f5076988003a9b519154b78670281`  
		Last Modified: Mon, 26 Sep 2016 22:30:55 GMT  
		Size: 329.2 KB (329181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d074d7b5ea75232b7bf24ad86450f180468f8f059c748c21d0189c0389ccf1e`  
		Last Modified: Mon, 26 Sep 2016 22:30:54 GMT  
		Size: 13.1 KB (13073 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:682ee63404f29230803455cbe31f74be7776a0a223368186cf6eeb1a29365eaa`  
		Last Modified: Mon, 26 Sep 2016 22:30:52 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f87586173f70e1aabe788bc2a99223e4042a0578de538bad255cffbf5449849`  
		Last Modified: Mon, 26 Sep 2016 22:31:03 GMT  
		Size: 32.9 MB (32866623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39f2245bd05ac90fd585626c5e2722b12299deb9afdde0c7dc2ffc55d6cd8c4b`  
		Last Modified: Mon, 26 Sep 2016 22:30:53 GMT  
		Size: 664.2 KB (664161 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a5df6c375299c68bb272e619586ab65295b7012c66b9c31c9d5c9317022246d`  
		Last Modified: Mon, 26 Sep 2016 22:31:36 GMT  
		Size: 150.0 MB (149959369 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e23f787cd59750830f7bd6762ff3fd5ce06d74cf668c896699101f1f07e765d4`  
		Last Modified: Mon, 26 Sep 2016 22:30:52 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:209bea4677f05a9c13c761707a341e2e6af9b35cf158421d647060cc089f8790`  
		Last Modified: Mon, 26 Sep 2016 23:03:51 GMT  
		Size: 3.4 MB (3418950 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:indigo-robot`

```console
$ docker pull ros@sha256:4c023c152006098f52962da2e903e4ffeebb4860be8d19aebf277c77d1e60fab
```

-	Platforms:
	-	linux; amd64

### `ros:indigo-robot` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **321.5 MB (321484203 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f8f2d197ef9a4ecddcc5e6ecf2d000e2b6eeb023a8c1700fca70e587ff091c23`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 26 Sep 2016 21:26:04 GMT
ADD file:561625b38aa88058c3af9d99be9d8b8d07f24e9d1737869e422540deeebb4443 in / 
# Mon, 26 Sep 2016 21:26:06 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 26 Sep 2016 21:26:07 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 26 Sep 2016 21:26:08 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Mon, 26 Sep 2016 21:26:08 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 26 Sep 2016 21:26:09 GMT
CMD ["/bin/bash"]
# Mon, 26 Sep 2016 22:28:28 GMT
MAINTAINER Tully Foote tfoote+buildfarm@osrfoundation.org
# Mon, 26 Sep 2016 22:28:30 GMT
RUN locale-gen en_US.UTF-8
# Mon, 26 Sep 2016 22:28:30 GMT
ENV LANG=en_US.UTF-8
# Mon, 26 Sep 2016 22:28:33 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Mon, 26 Sep 2016 22:28:33 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu trusty main" > /etc/apt/sources.list.d/ros-latest.list
# Mon, 26 Sep 2016 22:29:07 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Mon, 26 Sep 2016 22:29:15 GMT
RUN rosdep init     && rosdep update
# Mon, 26 Sep 2016 22:29:16 GMT
ENV ROS_DISTRO=indigo
# Mon, 26 Sep 2016 22:30:42 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-core=1.1.4-0*     && rm -rf /var/lib/apt/lists/*
# Mon, 26 Sep 2016 22:30:43 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Mon, 26 Sep 2016 22:30:43 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Mon, 26 Sep 2016 22:30:44 GMT
CMD ["bash"]
# Mon, 26 Sep 2016 23:03:21 GMT
MAINTAINER Tully Foote tfoote+buildfarm@osrfoundation.org
# Mon, 26 Sep 2016 23:03:41 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-base=1.1.4-0*     && rm -rf /var/lib/apt/lists/*
# Mon, 26 Sep 2016 23:04:08 GMT
MAINTAINER Tully Foote tfoote+buildfarm@osrfoundation.org
# Mon, 26 Sep 2016 23:09:00 GMT
RUN apt-get update && apt-get install -y     ros-indigo-robot=1.1.4-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:04c996abc2442fb0534f018543f0352647de3a65a3b321628b8cd1ceecedc3f6`  
		Last Modified: Mon, 26 Sep 2016 21:28:04 GMT  
		Size: 65.7 MB (65702977 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d394d3da86fe44806b96c68b5c51bd6e38d287b2dde4ef89c011243ffc6542b9`  
		Last Modified: Mon, 26 Sep 2016 21:27:45 GMT  
		Size: 71.6 KB (71555 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bac77aae22d4292624c1db7efe5c2face4a104d8967c9f63e22230aebfeceda8`  
		Last Modified: Mon, 26 Sep 2016 21:27:45 GMT  
		Size: 360.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b48b86b78e975768669fb7f9e20166f994ab4949a878b642927c28f3f169390d`  
		Last Modified: Mon, 26 Sep 2016 21:27:45 GMT  
		Size: 682.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09b3dd842bf5577e855c84e1273582a799616748c6b13ac9ecb2a49ee2477cbc`  
		Last Modified: Mon, 26 Sep 2016 21:27:45 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02d04765ab742d7aa3b4c3b05827851bce2f5076988003a9b519154b78670281`  
		Last Modified: Mon, 26 Sep 2016 22:30:55 GMT  
		Size: 329.2 KB (329181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d074d7b5ea75232b7bf24ad86450f180468f8f059c748c21d0189c0389ccf1e`  
		Last Modified: Mon, 26 Sep 2016 22:30:54 GMT  
		Size: 13.1 KB (13073 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:682ee63404f29230803455cbe31f74be7776a0a223368186cf6eeb1a29365eaa`  
		Last Modified: Mon, 26 Sep 2016 22:30:52 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f87586173f70e1aabe788bc2a99223e4042a0578de538bad255cffbf5449849`  
		Last Modified: Mon, 26 Sep 2016 22:31:03 GMT  
		Size: 32.9 MB (32866623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39f2245bd05ac90fd585626c5e2722b12299deb9afdde0c7dc2ffc55d6cd8c4b`  
		Last Modified: Mon, 26 Sep 2016 22:30:53 GMT  
		Size: 664.2 KB (664161 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a5df6c375299c68bb272e619586ab65295b7012c66b9c31c9d5c9317022246d`  
		Last Modified: Mon, 26 Sep 2016 22:31:36 GMT  
		Size: 150.0 MB (149959369 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e23f787cd59750830f7bd6762ff3fd5ce06d74cf668c896699101f1f07e765d4`  
		Last Modified: Mon, 26 Sep 2016 22:30:52 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:209bea4677f05a9c13c761707a341e2e6af9b35cf158421d647060cc089f8790`  
		Last Modified: Mon, 26 Sep 2016 23:03:51 GMT  
		Size: 3.4 MB (3418950 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43042baa0c85766bcf91de510ab2926413ccd5d0703fb6c26c215905f4eff045`  
		Last Modified: Mon, 26 Sep 2016 23:09:30 GMT  
		Size: 68.5 MB (68456691 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:indigo-perception`

```console
$ docker pull ros@sha256:f60dbb429112483baaa77c3648910d9ee3bcedf5349763d9cee1d108089d1c2f
```

-	Platforms:
	-	linux; amd64

### `ros:indigo-perception` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **520.6 MB (520591861 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:28e1ba6272f04c08f5fb0882c0fd38169d3a619ba378975eeb559e4b35adea6d`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 26 Sep 2016 21:26:04 GMT
ADD file:561625b38aa88058c3af9d99be9d8b8d07f24e9d1737869e422540deeebb4443 in / 
# Mon, 26 Sep 2016 21:26:06 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 26 Sep 2016 21:26:07 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 26 Sep 2016 21:26:08 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Mon, 26 Sep 2016 21:26:08 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 26 Sep 2016 21:26:09 GMT
CMD ["/bin/bash"]
# Mon, 26 Sep 2016 22:28:28 GMT
MAINTAINER Tully Foote tfoote+buildfarm@osrfoundation.org
# Mon, 26 Sep 2016 22:28:30 GMT
RUN locale-gen en_US.UTF-8
# Mon, 26 Sep 2016 22:28:30 GMT
ENV LANG=en_US.UTF-8
# Mon, 26 Sep 2016 22:28:33 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Mon, 26 Sep 2016 22:28:33 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu trusty main" > /etc/apt/sources.list.d/ros-latest.list
# Mon, 26 Sep 2016 22:29:07 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Mon, 26 Sep 2016 22:29:15 GMT
RUN rosdep init     && rosdep update
# Mon, 26 Sep 2016 22:29:16 GMT
ENV ROS_DISTRO=indigo
# Mon, 26 Sep 2016 22:30:42 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-core=1.1.4-0*     && rm -rf /var/lib/apt/lists/*
# Mon, 26 Sep 2016 22:30:43 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Mon, 26 Sep 2016 22:30:43 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Mon, 26 Sep 2016 22:30:44 GMT
CMD ["bash"]
# Mon, 26 Sep 2016 23:03:21 GMT
MAINTAINER Tully Foote tfoote+buildfarm@osrfoundation.org
# Mon, 26 Sep 2016 23:03:41 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-base=1.1.4-0*     && rm -rf /var/lib/apt/lists/*
# Mon, 26 Sep 2016 23:04:08 GMT
MAINTAINER Tully Foote tfoote+buildfarm@osrfoundation.org
# Mon, 26 Sep 2016 23:06:37 GMT
RUN apt-get update && apt-get install -y     ros-indigo-perception=1.1.4-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:04c996abc2442fb0534f018543f0352647de3a65a3b321628b8cd1ceecedc3f6`  
		Last Modified: Mon, 26 Sep 2016 21:28:04 GMT  
		Size: 65.7 MB (65702977 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d394d3da86fe44806b96c68b5c51bd6e38d287b2dde4ef89c011243ffc6542b9`  
		Last Modified: Mon, 26 Sep 2016 21:27:45 GMT  
		Size: 71.6 KB (71555 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bac77aae22d4292624c1db7efe5c2face4a104d8967c9f63e22230aebfeceda8`  
		Last Modified: Mon, 26 Sep 2016 21:27:45 GMT  
		Size: 360.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b48b86b78e975768669fb7f9e20166f994ab4949a878b642927c28f3f169390d`  
		Last Modified: Mon, 26 Sep 2016 21:27:45 GMT  
		Size: 682.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09b3dd842bf5577e855c84e1273582a799616748c6b13ac9ecb2a49ee2477cbc`  
		Last Modified: Mon, 26 Sep 2016 21:27:45 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02d04765ab742d7aa3b4c3b05827851bce2f5076988003a9b519154b78670281`  
		Last Modified: Mon, 26 Sep 2016 22:30:55 GMT  
		Size: 329.2 KB (329181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d074d7b5ea75232b7bf24ad86450f180468f8f059c748c21d0189c0389ccf1e`  
		Last Modified: Mon, 26 Sep 2016 22:30:54 GMT  
		Size: 13.1 KB (13073 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:682ee63404f29230803455cbe31f74be7776a0a223368186cf6eeb1a29365eaa`  
		Last Modified: Mon, 26 Sep 2016 22:30:52 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f87586173f70e1aabe788bc2a99223e4042a0578de538bad255cffbf5449849`  
		Last Modified: Mon, 26 Sep 2016 22:31:03 GMT  
		Size: 32.9 MB (32866623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39f2245bd05ac90fd585626c5e2722b12299deb9afdde0c7dc2ffc55d6cd8c4b`  
		Last Modified: Mon, 26 Sep 2016 22:30:53 GMT  
		Size: 664.2 KB (664161 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a5df6c375299c68bb272e619586ab65295b7012c66b9c31c9d5c9317022246d`  
		Last Modified: Mon, 26 Sep 2016 22:31:36 GMT  
		Size: 150.0 MB (149959369 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e23f787cd59750830f7bd6762ff3fd5ce06d74cf668c896699101f1f07e765d4`  
		Last Modified: Mon, 26 Sep 2016 22:30:52 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:209bea4677f05a9c13c761707a341e2e6af9b35cf158421d647060cc089f8790`  
		Last Modified: Mon, 26 Sep 2016 23:03:51 GMT  
		Size: 3.4 MB (3418950 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7aa1d4cf5c488d3c2e5f5239bb9d5d13ee932907a6cc73d2465680073b5c81f9`  
		Last Modified: Mon, 26 Sep 2016 23:07:59 GMT  
		Size: 267.6 MB (267564349 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:jade-ros-core`

```console
$ docker pull ros@sha256:54bb342db0d75b309abd23b479730c8e5a336ce85329bdd31987cbf8ef799946
```

-	Platforms:
	-	linux; amd64

### `ros:jade-ros-core` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **249.7 MB (249732103 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:757e8904f159f3125b36c7975ea6d12b19ea4ef48a0e0fb1b1d7128101dad156`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 26 Sep 2016 21:26:04 GMT
ADD file:561625b38aa88058c3af9d99be9d8b8d07f24e9d1737869e422540deeebb4443 in / 
# Mon, 26 Sep 2016 21:26:06 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 26 Sep 2016 21:26:07 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 26 Sep 2016 21:26:08 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Mon, 26 Sep 2016 21:26:08 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 26 Sep 2016 21:26:09 GMT
CMD ["/bin/bash"]
# Mon, 26 Sep 2016 22:28:28 GMT
MAINTAINER Tully Foote tfoote+buildfarm@osrfoundation.org
# Mon, 26 Sep 2016 22:28:30 GMT
RUN locale-gen en_US.UTF-8
# Mon, 26 Sep 2016 22:28:30 GMT
ENV LANG=en_US.UTF-8
# Mon, 26 Sep 2016 22:28:33 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Mon, 26 Sep 2016 22:28:33 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu trusty main" > /etc/apt/sources.list.d/ros-latest.list
# Mon, 26 Sep 2016 22:29:07 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Mon, 26 Sep 2016 22:29:15 GMT
RUN rosdep init     && rosdep update
# Mon, 26 Sep 2016 22:31:46 GMT
ENV ROS_DISTRO=jade
# Mon, 26 Sep 2016 22:33:18 GMT
RUN apt-get update && apt-get install -y     ros-jade-ros-core=1.2.0-0*     && rm -rf /var/lib/apt/lists/*
# Mon, 26 Sep 2016 22:33:19 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Mon, 26 Sep 2016 22:33:19 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Mon, 26 Sep 2016 22:33:20 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:04c996abc2442fb0534f018543f0352647de3a65a3b321628b8cd1ceecedc3f6`  
		Last Modified: Mon, 26 Sep 2016 21:28:04 GMT  
		Size: 65.7 MB (65702977 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d394d3da86fe44806b96c68b5c51bd6e38d287b2dde4ef89c011243ffc6542b9`  
		Last Modified: Mon, 26 Sep 2016 21:27:45 GMT  
		Size: 71.6 KB (71555 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bac77aae22d4292624c1db7efe5c2face4a104d8967c9f63e22230aebfeceda8`  
		Last Modified: Mon, 26 Sep 2016 21:27:45 GMT  
		Size: 360.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b48b86b78e975768669fb7f9e20166f994ab4949a878b642927c28f3f169390d`  
		Last Modified: Mon, 26 Sep 2016 21:27:45 GMT  
		Size: 682.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09b3dd842bf5577e855c84e1273582a799616748c6b13ac9ecb2a49ee2477cbc`  
		Last Modified: Mon, 26 Sep 2016 21:27:45 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02d04765ab742d7aa3b4c3b05827851bce2f5076988003a9b519154b78670281`  
		Last Modified: Mon, 26 Sep 2016 22:30:55 GMT  
		Size: 329.2 KB (329181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d074d7b5ea75232b7bf24ad86450f180468f8f059c748c21d0189c0389ccf1e`  
		Last Modified: Mon, 26 Sep 2016 22:30:54 GMT  
		Size: 13.1 KB (13073 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:682ee63404f29230803455cbe31f74be7776a0a223368186cf6eeb1a29365eaa`  
		Last Modified: Mon, 26 Sep 2016 22:30:52 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f87586173f70e1aabe788bc2a99223e4042a0578de538bad255cffbf5449849`  
		Last Modified: Mon, 26 Sep 2016 22:31:03 GMT  
		Size: 32.9 MB (32866623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39f2245bd05ac90fd585626c5e2722b12299deb9afdde0c7dc2ffc55d6cd8c4b`  
		Last Modified: Mon, 26 Sep 2016 22:30:53 GMT  
		Size: 664.2 KB (664161 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d15fb249be2b1a43df737a555879bd84e5bcb026b624c1c2abaf617a35767a60`  
		Last Modified: Mon, 26 Sep 2016 22:34:10 GMT  
		Size: 150.1 MB (150082908 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:facef77f99e2c80814e02a2c8b484c8141f9c513aca90a0aceece87c19a6722b`  
		Last Modified: Mon, 26 Sep 2016 22:33:28 GMT  
		Size: 197.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:jade-ros-base`

```console
$ docker pull ros@sha256:4e627cb05ec35cce5b2fdf55fee60170ca94bcd74e4c0860f959f8866dbcc5a3
```

-	Platforms:
	-	linux; amd64

### `ros:jade-ros-base` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **253.2 MB (253168936 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e5b5925f5efa022656d6fd003b9411270de577548b00f8f91045ab5cbce98ec9`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 26 Sep 2016 21:26:04 GMT
ADD file:561625b38aa88058c3af9d99be9d8b8d07f24e9d1737869e422540deeebb4443 in / 
# Mon, 26 Sep 2016 21:26:06 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 26 Sep 2016 21:26:07 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 26 Sep 2016 21:26:08 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Mon, 26 Sep 2016 21:26:08 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 26 Sep 2016 21:26:09 GMT
CMD ["/bin/bash"]
# Mon, 26 Sep 2016 22:28:28 GMT
MAINTAINER Tully Foote tfoote+buildfarm@osrfoundation.org
# Mon, 26 Sep 2016 22:28:30 GMT
RUN locale-gen en_US.UTF-8
# Mon, 26 Sep 2016 22:28:30 GMT
ENV LANG=en_US.UTF-8
# Mon, 26 Sep 2016 22:28:33 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Mon, 26 Sep 2016 22:28:33 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu trusty main" > /etc/apt/sources.list.d/ros-latest.list
# Mon, 26 Sep 2016 22:29:07 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Mon, 26 Sep 2016 22:29:15 GMT
RUN rosdep init     && rosdep update
# Mon, 26 Sep 2016 22:31:46 GMT
ENV ROS_DISTRO=jade
# Mon, 26 Sep 2016 22:33:18 GMT
RUN apt-get update && apt-get install -y     ros-jade-ros-core=1.2.0-0*     && rm -rf /var/lib/apt/lists/*
# Mon, 26 Sep 2016 22:33:19 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Mon, 26 Sep 2016 22:33:19 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Mon, 26 Sep 2016 22:33:20 GMT
CMD ["bash"]
# Mon, 26 Sep 2016 23:09:38 GMT
MAINTAINER Tully Foote tfoote+buildfarm@osrfoundation.org
# Mon, 26 Sep 2016 23:09:56 GMT
RUN apt-get update && apt-get install -y     ros-jade-ros-base=1.2.0-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:04c996abc2442fb0534f018543f0352647de3a65a3b321628b8cd1ceecedc3f6`  
		Last Modified: Mon, 26 Sep 2016 21:28:04 GMT  
		Size: 65.7 MB (65702977 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d394d3da86fe44806b96c68b5c51bd6e38d287b2dde4ef89c011243ffc6542b9`  
		Last Modified: Mon, 26 Sep 2016 21:27:45 GMT  
		Size: 71.6 KB (71555 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bac77aae22d4292624c1db7efe5c2face4a104d8967c9f63e22230aebfeceda8`  
		Last Modified: Mon, 26 Sep 2016 21:27:45 GMT  
		Size: 360.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b48b86b78e975768669fb7f9e20166f994ab4949a878b642927c28f3f169390d`  
		Last Modified: Mon, 26 Sep 2016 21:27:45 GMT  
		Size: 682.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09b3dd842bf5577e855c84e1273582a799616748c6b13ac9ecb2a49ee2477cbc`  
		Last Modified: Mon, 26 Sep 2016 21:27:45 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02d04765ab742d7aa3b4c3b05827851bce2f5076988003a9b519154b78670281`  
		Last Modified: Mon, 26 Sep 2016 22:30:55 GMT  
		Size: 329.2 KB (329181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d074d7b5ea75232b7bf24ad86450f180468f8f059c748c21d0189c0389ccf1e`  
		Last Modified: Mon, 26 Sep 2016 22:30:54 GMT  
		Size: 13.1 KB (13073 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:682ee63404f29230803455cbe31f74be7776a0a223368186cf6eeb1a29365eaa`  
		Last Modified: Mon, 26 Sep 2016 22:30:52 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f87586173f70e1aabe788bc2a99223e4042a0578de538bad255cffbf5449849`  
		Last Modified: Mon, 26 Sep 2016 22:31:03 GMT  
		Size: 32.9 MB (32866623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39f2245bd05ac90fd585626c5e2722b12299deb9afdde0c7dc2ffc55d6cd8c4b`  
		Last Modified: Mon, 26 Sep 2016 22:30:53 GMT  
		Size: 664.2 KB (664161 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d15fb249be2b1a43df737a555879bd84e5bcb026b624c1c2abaf617a35767a60`  
		Last Modified: Mon, 26 Sep 2016 22:34:10 GMT  
		Size: 150.1 MB (150082908 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:facef77f99e2c80814e02a2c8b484c8141f9c513aca90a0aceece87c19a6722b`  
		Last Modified: Mon, 26 Sep 2016 22:33:28 GMT  
		Size: 197.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e5d5222681ab507c3191efff154fb3f15325ff02a08b789a81857d8bc9f45ca`  
		Last Modified: Mon, 26 Sep 2016 23:10:06 GMT  
		Size: 3.4 MB (3436833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:jade`

```console
$ docker pull ros@sha256:4e627cb05ec35cce5b2fdf55fee60170ca94bcd74e4c0860f959f8866dbcc5a3
```

-	Platforms:
	-	linux; amd64

### `ros:jade` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **253.2 MB (253168936 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e5b5925f5efa022656d6fd003b9411270de577548b00f8f91045ab5cbce98ec9`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 26 Sep 2016 21:26:04 GMT
ADD file:561625b38aa88058c3af9d99be9d8b8d07f24e9d1737869e422540deeebb4443 in / 
# Mon, 26 Sep 2016 21:26:06 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 26 Sep 2016 21:26:07 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 26 Sep 2016 21:26:08 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Mon, 26 Sep 2016 21:26:08 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 26 Sep 2016 21:26:09 GMT
CMD ["/bin/bash"]
# Mon, 26 Sep 2016 22:28:28 GMT
MAINTAINER Tully Foote tfoote+buildfarm@osrfoundation.org
# Mon, 26 Sep 2016 22:28:30 GMT
RUN locale-gen en_US.UTF-8
# Mon, 26 Sep 2016 22:28:30 GMT
ENV LANG=en_US.UTF-8
# Mon, 26 Sep 2016 22:28:33 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Mon, 26 Sep 2016 22:28:33 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu trusty main" > /etc/apt/sources.list.d/ros-latest.list
# Mon, 26 Sep 2016 22:29:07 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Mon, 26 Sep 2016 22:29:15 GMT
RUN rosdep init     && rosdep update
# Mon, 26 Sep 2016 22:31:46 GMT
ENV ROS_DISTRO=jade
# Mon, 26 Sep 2016 22:33:18 GMT
RUN apt-get update && apt-get install -y     ros-jade-ros-core=1.2.0-0*     && rm -rf /var/lib/apt/lists/*
# Mon, 26 Sep 2016 22:33:19 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Mon, 26 Sep 2016 22:33:19 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Mon, 26 Sep 2016 22:33:20 GMT
CMD ["bash"]
# Mon, 26 Sep 2016 23:09:38 GMT
MAINTAINER Tully Foote tfoote+buildfarm@osrfoundation.org
# Mon, 26 Sep 2016 23:09:56 GMT
RUN apt-get update && apt-get install -y     ros-jade-ros-base=1.2.0-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:04c996abc2442fb0534f018543f0352647de3a65a3b321628b8cd1ceecedc3f6`  
		Last Modified: Mon, 26 Sep 2016 21:28:04 GMT  
		Size: 65.7 MB (65702977 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d394d3da86fe44806b96c68b5c51bd6e38d287b2dde4ef89c011243ffc6542b9`  
		Last Modified: Mon, 26 Sep 2016 21:27:45 GMT  
		Size: 71.6 KB (71555 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bac77aae22d4292624c1db7efe5c2face4a104d8967c9f63e22230aebfeceda8`  
		Last Modified: Mon, 26 Sep 2016 21:27:45 GMT  
		Size: 360.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b48b86b78e975768669fb7f9e20166f994ab4949a878b642927c28f3f169390d`  
		Last Modified: Mon, 26 Sep 2016 21:27:45 GMT  
		Size: 682.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09b3dd842bf5577e855c84e1273582a799616748c6b13ac9ecb2a49ee2477cbc`  
		Last Modified: Mon, 26 Sep 2016 21:27:45 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02d04765ab742d7aa3b4c3b05827851bce2f5076988003a9b519154b78670281`  
		Last Modified: Mon, 26 Sep 2016 22:30:55 GMT  
		Size: 329.2 KB (329181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d074d7b5ea75232b7bf24ad86450f180468f8f059c748c21d0189c0389ccf1e`  
		Last Modified: Mon, 26 Sep 2016 22:30:54 GMT  
		Size: 13.1 KB (13073 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:682ee63404f29230803455cbe31f74be7776a0a223368186cf6eeb1a29365eaa`  
		Last Modified: Mon, 26 Sep 2016 22:30:52 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f87586173f70e1aabe788bc2a99223e4042a0578de538bad255cffbf5449849`  
		Last Modified: Mon, 26 Sep 2016 22:31:03 GMT  
		Size: 32.9 MB (32866623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39f2245bd05ac90fd585626c5e2722b12299deb9afdde0c7dc2ffc55d6cd8c4b`  
		Last Modified: Mon, 26 Sep 2016 22:30:53 GMT  
		Size: 664.2 KB (664161 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d15fb249be2b1a43df737a555879bd84e5bcb026b624c1c2abaf617a35767a60`  
		Last Modified: Mon, 26 Sep 2016 22:34:10 GMT  
		Size: 150.1 MB (150082908 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:facef77f99e2c80814e02a2c8b484c8141f9c513aca90a0aceece87c19a6722b`  
		Last Modified: Mon, 26 Sep 2016 22:33:28 GMT  
		Size: 197.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e5d5222681ab507c3191efff154fb3f15325ff02a08b789a81857d8bc9f45ca`  
		Last Modified: Mon, 26 Sep 2016 23:10:06 GMT  
		Size: 3.4 MB (3436833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:jade-robot`

```console
$ docker pull ros@sha256:ed6613d9b06072a209be7dedbff58a0b7f49e6aca71119671c510305cbbdd44f
```

-	Platforms:
	-	linux; amd64

### `ros:jade-robot` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **321.3 MB (321263432 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c0d17f9443eebf96f98a3c3a61342648137b82b95561d99224dee2cca85666fb`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 26 Sep 2016 21:26:04 GMT
ADD file:561625b38aa88058c3af9d99be9d8b8d07f24e9d1737869e422540deeebb4443 in / 
# Mon, 26 Sep 2016 21:26:06 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 26 Sep 2016 21:26:07 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 26 Sep 2016 21:26:08 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Mon, 26 Sep 2016 21:26:08 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 26 Sep 2016 21:26:09 GMT
CMD ["/bin/bash"]
# Mon, 26 Sep 2016 22:28:28 GMT
MAINTAINER Tully Foote tfoote+buildfarm@osrfoundation.org
# Mon, 26 Sep 2016 22:28:30 GMT
RUN locale-gen en_US.UTF-8
# Mon, 26 Sep 2016 22:28:30 GMT
ENV LANG=en_US.UTF-8
# Mon, 26 Sep 2016 22:28:33 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Mon, 26 Sep 2016 22:28:33 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu trusty main" > /etc/apt/sources.list.d/ros-latest.list
# Mon, 26 Sep 2016 22:29:07 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Mon, 26 Sep 2016 22:29:15 GMT
RUN rosdep init     && rosdep update
# Mon, 26 Sep 2016 22:31:46 GMT
ENV ROS_DISTRO=jade
# Mon, 26 Sep 2016 22:33:18 GMT
RUN apt-get update && apt-get install -y     ros-jade-ros-core=1.2.0-0*     && rm -rf /var/lib/apt/lists/*
# Mon, 26 Sep 2016 22:33:19 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Mon, 26 Sep 2016 22:33:19 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Mon, 26 Sep 2016 22:33:20 GMT
CMD ["bash"]
# Mon, 26 Sep 2016 23:09:38 GMT
MAINTAINER Tully Foote tfoote+buildfarm@osrfoundation.org
# Mon, 26 Sep 2016 23:09:56 GMT
RUN apt-get update && apt-get install -y     ros-jade-ros-base=1.2.0-0*     && rm -rf /var/lib/apt/lists/*
# Mon, 26 Sep 2016 23:10:27 GMT
MAINTAINER Tully Foote tfoote+buildfarm@osrfoundation.org
# Mon, 26 Sep 2016 23:15:35 GMT
RUN apt-get update && apt-get install -y     ros-jade-robot=1.2.0-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:04c996abc2442fb0534f018543f0352647de3a65a3b321628b8cd1ceecedc3f6`  
		Last Modified: Mon, 26 Sep 2016 21:28:04 GMT  
		Size: 65.7 MB (65702977 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d394d3da86fe44806b96c68b5c51bd6e38d287b2dde4ef89c011243ffc6542b9`  
		Last Modified: Mon, 26 Sep 2016 21:27:45 GMT  
		Size: 71.6 KB (71555 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bac77aae22d4292624c1db7efe5c2face4a104d8967c9f63e22230aebfeceda8`  
		Last Modified: Mon, 26 Sep 2016 21:27:45 GMT  
		Size: 360.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b48b86b78e975768669fb7f9e20166f994ab4949a878b642927c28f3f169390d`  
		Last Modified: Mon, 26 Sep 2016 21:27:45 GMT  
		Size: 682.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09b3dd842bf5577e855c84e1273582a799616748c6b13ac9ecb2a49ee2477cbc`  
		Last Modified: Mon, 26 Sep 2016 21:27:45 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02d04765ab742d7aa3b4c3b05827851bce2f5076988003a9b519154b78670281`  
		Last Modified: Mon, 26 Sep 2016 22:30:55 GMT  
		Size: 329.2 KB (329181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d074d7b5ea75232b7bf24ad86450f180468f8f059c748c21d0189c0389ccf1e`  
		Last Modified: Mon, 26 Sep 2016 22:30:54 GMT  
		Size: 13.1 KB (13073 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:682ee63404f29230803455cbe31f74be7776a0a223368186cf6eeb1a29365eaa`  
		Last Modified: Mon, 26 Sep 2016 22:30:52 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f87586173f70e1aabe788bc2a99223e4042a0578de538bad255cffbf5449849`  
		Last Modified: Mon, 26 Sep 2016 22:31:03 GMT  
		Size: 32.9 MB (32866623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39f2245bd05ac90fd585626c5e2722b12299deb9afdde0c7dc2ffc55d6cd8c4b`  
		Last Modified: Mon, 26 Sep 2016 22:30:53 GMT  
		Size: 664.2 KB (664161 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d15fb249be2b1a43df737a555879bd84e5bcb026b624c1c2abaf617a35767a60`  
		Last Modified: Mon, 26 Sep 2016 22:34:10 GMT  
		Size: 150.1 MB (150082908 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:facef77f99e2c80814e02a2c8b484c8141f9c513aca90a0aceece87c19a6722b`  
		Last Modified: Mon, 26 Sep 2016 22:33:28 GMT  
		Size: 197.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e5d5222681ab507c3191efff154fb3f15325ff02a08b789a81857d8bc9f45ca`  
		Last Modified: Mon, 26 Sep 2016 23:10:06 GMT  
		Size: 3.4 MB (3436833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:822bfc36eab25717a268752699ce62ccd2429b2c53b46e3c7a9fbe0113177fe9`  
		Last Modified: Mon, 26 Sep 2016 23:16:06 GMT  
		Size: 68.1 MB (68094496 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:jade-perception`

```console
$ docker pull ros@sha256:f8f2de1393be08b069cea1d52a417debff8cded81adfd55cb3ca2fbcef6697f6
```

-	Platforms:
	-	linux; amd64

### `ros:jade-perception` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **520.5 MB (520535575 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2f9ab57ebe86e46661a02b4ea1719f2ba61b2645932d08a3a8231fb0b6cc98cf`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 26 Sep 2016 21:26:04 GMT
ADD file:561625b38aa88058c3af9d99be9d8b8d07f24e9d1737869e422540deeebb4443 in / 
# Mon, 26 Sep 2016 21:26:06 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 26 Sep 2016 21:26:07 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 26 Sep 2016 21:26:08 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Mon, 26 Sep 2016 21:26:08 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 26 Sep 2016 21:26:09 GMT
CMD ["/bin/bash"]
# Mon, 26 Sep 2016 22:28:28 GMT
MAINTAINER Tully Foote tfoote+buildfarm@osrfoundation.org
# Mon, 26 Sep 2016 22:28:30 GMT
RUN locale-gen en_US.UTF-8
# Mon, 26 Sep 2016 22:28:30 GMT
ENV LANG=en_US.UTF-8
# Mon, 26 Sep 2016 22:28:33 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Mon, 26 Sep 2016 22:28:33 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu trusty main" > /etc/apt/sources.list.d/ros-latest.list
# Mon, 26 Sep 2016 22:29:07 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Mon, 26 Sep 2016 22:29:15 GMT
RUN rosdep init     && rosdep update
# Mon, 26 Sep 2016 22:31:46 GMT
ENV ROS_DISTRO=jade
# Mon, 26 Sep 2016 22:33:18 GMT
RUN apt-get update && apt-get install -y     ros-jade-ros-core=1.2.0-0*     && rm -rf /var/lib/apt/lists/*
# Mon, 26 Sep 2016 22:33:19 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Mon, 26 Sep 2016 22:33:19 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Mon, 26 Sep 2016 22:33:20 GMT
CMD ["bash"]
# Mon, 26 Sep 2016 23:09:38 GMT
MAINTAINER Tully Foote tfoote+buildfarm@osrfoundation.org
# Mon, 26 Sep 2016 23:09:56 GMT
RUN apt-get update && apt-get install -y     ros-jade-ros-base=1.2.0-0*     && rm -rf /var/lib/apt/lists/*
# Mon, 26 Sep 2016 23:10:27 GMT
MAINTAINER Tully Foote tfoote+buildfarm@osrfoundation.org
# Mon, 26 Sep 2016 23:13:09 GMT
RUN apt-get update && apt-get install -y     ros-jade-perception=1.2.0-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:04c996abc2442fb0534f018543f0352647de3a65a3b321628b8cd1ceecedc3f6`  
		Last Modified: Mon, 26 Sep 2016 21:28:04 GMT  
		Size: 65.7 MB (65702977 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d394d3da86fe44806b96c68b5c51bd6e38d287b2dde4ef89c011243ffc6542b9`  
		Last Modified: Mon, 26 Sep 2016 21:27:45 GMT  
		Size: 71.6 KB (71555 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bac77aae22d4292624c1db7efe5c2face4a104d8967c9f63e22230aebfeceda8`  
		Last Modified: Mon, 26 Sep 2016 21:27:45 GMT  
		Size: 360.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b48b86b78e975768669fb7f9e20166f994ab4949a878b642927c28f3f169390d`  
		Last Modified: Mon, 26 Sep 2016 21:27:45 GMT  
		Size: 682.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09b3dd842bf5577e855c84e1273582a799616748c6b13ac9ecb2a49ee2477cbc`  
		Last Modified: Mon, 26 Sep 2016 21:27:45 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02d04765ab742d7aa3b4c3b05827851bce2f5076988003a9b519154b78670281`  
		Last Modified: Mon, 26 Sep 2016 22:30:55 GMT  
		Size: 329.2 KB (329181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d074d7b5ea75232b7bf24ad86450f180468f8f059c748c21d0189c0389ccf1e`  
		Last Modified: Mon, 26 Sep 2016 22:30:54 GMT  
		Size: 13.1 KB (13073 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:682ee63404f29230803455cbe31f74be7776a0a223368186cf6eeb1a29365eaa`  
		Last Modified: Mon, 26 Sep 2016 22:30:52 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f87586173f70e1aabe788bc2a99223e4042a0578de538bad255cffbf5449849`  
		Last Modified: Mon, 26 Sep 2016 22:31:03 GMT  
		Size: 32.9 MB (32866623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39f2245bd05ac90fd585626c5e2722b12299deb9afdde0c7dc2ffc55d6cd8c4b`  
		Last Modified: Mon, 26 Sep 2016 22:30:53 GMT  
		Size: 664.2 KB (664161 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d15fb249be2b1a43df737a555879bd84e5bcb026b624c1c2abaf617a35767a60`  
		Last Modified: Mon, 26 Sep 2016 22:34:10 GMT  
		Size: 150.1 MB (150082908 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:facef77f99e2c80814e02a2c8b484c8141f9c513aca90a0aceece87c19a6722b`  
		Last Modified: Mon, 26 Sep 2016 22:33:28 GMT  
		Size: 197.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e5d5222681ab507c3191efff154fb3f15325ff02a08b789a81857d8bc9f45ca`  
		Last Modified: Mon, 26 Sep 2016 23:10:06 GMT  
		Size: 3.4 MB (3436833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:723b2f9da1bb85efa766a9212ef2eaa6f04a4e64b1778a8fbbdb4381e380ea2c`  
		Last Modified: Mon, 26 Sep 2016 23:14:32 GMT  
		Size: 267.4 MB (267366639 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:kinetic-ros-core`

```console
$ docker pull ros@sha256:2cc124a6fbedf737916f5242ed6e7969211234f1fa1ebffa802c8510a267b951
```

-	Platforms:
	-	linux; amd64

### `ros:kinetic-ros-core` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **298.1 MB (298088420 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2fd8da30995baa656185ae8141e7f1e7401eb63a5e5674ff649fedc59bc3ffed`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 26 Sep 2016 21:26:19 GMT
ADD file:cd937b840fff16e04e1f59d56f4424d08544b0bb8ac30d9804d25e28fb15ded3 in / 
# Mon, 26 Sep 2016 21:26:20 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 26 Sep 2016 21:26:21 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 26 Sep 2016 21:26:22 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Mon, 26 Sep 2016 21:26:23 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 26 Sep 2016 21:26:23 GMT
CMD ["/bin/bash"]
# Mon, 26 Sep 2016 22:34:30 GMT
MAINTAINER Tully Foote tfoote+buildfarm@osrfoundation.org
# Mon, 26 Sep 2016 22:34:32 GMT
RUN locale-gen en_US.UTF-8
# Mon, 26 Sep 2016 22:34:32 GMT
ENV LANG=en_US.UTF-8
# Mon, 26 Sep 2016 22:34:35 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Mon, 26 Sep 2016 22:34:36 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Mon, 26 Sep 2016 22:35:07 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Mon, 26 Sep 2016 22:35:17 GMT
RUN rosdep init     && rosdep update
# Mon, 26 Sep 2016 22:35:17 GMT
ENV ROS_DISTRO=kinetic
# Mon, 26 Sep 2016 22:36:32 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.0-0*     && rm -rf /var/lib/apt/lists/*
# Mon, 26 Sep 2016 22:36:33 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Mon, 26 Sep 2016 22:36:34 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Mon, 26 Sep 2016 22:36:34 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:cad964aed91d2ace084302c587dfc502b5869c5b1d15a1f0e458a45e3cadfaa6`  
		Last Modified: Mon, 26 Sep 2016 21:29:04 GMT  
		Size: 49.8 MB (49830405 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a80a22fea63572c387efb1943e6095587f9ea8343af129934d4c81e593374a4`  
		Last Modified: Mon, 26 Sep 2016 21:28:50 GMT  
		Size: 824.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50de990d7957c304603ac78d094f3acf634c1261a3a5a89229fa81d18cdb7945`  
		Last Modified: Mon, 26 Sep 2016 21:28:50 GMT  
		Size: 448.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61e032b8f2cb04e7a2d4efa83eb6837c6b92bd1553cbe46cffa76121091d8301`  
		Last Modified: Mon, 26 Sep 2016 21:28:50 GMT  
		Size: 682.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f03ce1741bf604c84258a4c4f1dc98cc35aebdd76c14ed4ffeb6bc3584c1f9b`  
		Last Modified: Mon, 26 Sep 2016 21:28:50 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0a7596f11be20786fde11d756936ea0bd54e86641c3fba9ab2a2f55f87fa7af`  
		Last Modified: Mon, 26 Sep 2016 22:36:46 GMT  
		Size: 339.4 KB (339412 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd497f3412bcf8dc397d90b70ffb87fb64856f0aa5ec3c4dddc18597cd9ec4a4`  
		Last Modified: Mon, 26 Sep 2016 22:36:45 GMT  
		Size: 13.1 KB (13071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2805e2df98418ff4f8004d1ad0769fb90ee5413d3cfb33b73334a0f567ba55a5`  
		Last Modified: Mon, 26 Sep 2016 22:36:42 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9bd9f04f625c89067295cc4ff04310914bc15a5d1359c86cc480da6344488f1`  
		Last Modified: Mon, 26 Sep 2016 22:37:03 GMT  
		Size: 57.6 MB (57630574 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53abe103be4262448591b5b06fe502c9f0652bbd7c9a9412a9daab99b1fdf05e`  
		Last Modified: Mon, 26 Sep 2016 22:36:43 GMT  
		Size: 664.2 KB (664159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfeba6bc5cc01cd19686cb2fee8123e51297a438f156d166d1cc71745db1771c`  
		Last Modified: Mon, 26 Sep 2016 22:37:35 GMT  
		Size: 189.6 MB (189608265 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65b29c7b9a18bb5792f45d58b04d142c229c32afa099ef325680d2474ca57309`  
		Last Modified: Mon, 26 Sep 2016 22:36:42 GMT  
		Size: 197.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:kinetic-ros-base`

```console
$ docker pull ros@sha256:3bbf45971608c7f78c5d83aa8e5850260810590f3a5f5c238586d86017ee043e
```

-	Platforms:
	-	linux; amd64

### `ros:kinetic-ros-base` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **302.7 MB (302724842 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e037eb5d6c1b8b6cd07240905a5c90ef2ed52a49272b4b9879ae4941e3a5a55c`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 26 Sep 2016 21:26:19 GMT
ADD file:cd937b840fff16e04e1f59d56f4424d08544b0bb8ac30d9804d25e28fb15ded3 in / 
# Mon, 26 Sep 2016 21:26:20 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 26 Sep 2016 21:26:21 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 26 Sep 2016 21:26:22 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Mon, 26 Sep 2016 21:26:23 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 26 Sep 2016 21:26:23 GMT
CMD ["/bin/bash"]
# Mon, 26 Sep 2016 22:34:30 GMT
MAINTAINER Tully Foote tfoote+buildfarm@osrfoundation.org
# Mon, 26 Sep 2016 22:34:32 GMT
RUN locale-gen en_US.UTF-8
# Mon, 26 Sep 2016 22:34:32 GMT
ENV LANG=en_US.UTF-8
# Mon, 26 Sep 2016 22:34:35 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Mon, 26 Sep 2016 22:34:36 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Mon, 26 Sep 2016 22:35:07 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Mon, 26 Sep 2016 22:35:17 GMT
RUN rosdep init     && rosdep update
# Mon, 26 Sep 2016 22:35:17 GMT
ENV ROS_DISTRO=kinetic
# Mon, 26 Sep 2016 22:36:32 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.0-0*     && rm -rf /var/lib/apt/lists/*
# Mon, 26 Sep 2016 22:36:33 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Mon, 26 Sep 2016 22:36:34 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Mon, 26 Sep 2016 22:36:34 GMT
CMD ["bash"]
# Mon, 26 Sep 2016 23:16:15 GMT
MAINTAINER Tully Foote tfoote+buildfarm@osrfoundation.org
# Mon, 26 Sep 2016 23:16:35 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.0-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:cad964aed91d2ace084302c587dfc502b5869c5b1d15a1f0e458a45e3cadfaa6`  
		Last Modified: Mon, 26 Sep 2016 21:29:04 GMT  
		Size: 49.8 MB (49830405 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a80a22fea63572c387efb1943e6095587f9ea8343af129934d4c81e593374a4`  
		Last Modified: Mon, 26 Sep 2016 21:28:50 GMT  
		Size: 824.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50de990d7957c304603ac78d094f3acf634c1261a3a5a89229fa81d18cdb7945`  
		Last Modified: Mon, 26 Sep 2016 21:28:50 GMT  
		Size: 448.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61e032b8f2cb04e7a2d4efa83eb6837c6b92bd1553cbe46cffa76121091d8301`  
		Last Modified: Mon, 26 Sep 2016 21:28:50 GMT  
		Size: 682.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f03ce1741bf604c84258a4c4f1dc98cc35aebdd76c14ed4ffeb6bc3584c1f9b`  
		Last Modified: Mon, 26 Sep 2016 21:28:50 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0a7596f11be20786fde11d756936ea0bd54e86641c3fba9ab2a2f55f87fa7af`  
		Last Modified: Mon, 26 Sep 2016 22:36:46 GMT  
		Size: 339.4 KB (339412 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd497f3412bcf8dc397d90b70ffb87fb64856f0aa5ec3c4dddc18597cd9ec4a4`  
		Last Modified: Mon, 26 Sep 2016 22:36:45 GMT  
		Size: 13.1 KB (13071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2805e2df98418ff4f8004d1ad0769fb90ee5413d3cfb33b73334a0f567ba55a5`  
		Last Modified: Mon, 26 Sep 2016 22:36:42 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9bd9f04f625c89067295cc4ff04310914bc15a5d1359c86cc480da6344488f1`  
		Last Modified: Mon, 26 Sep 2016 22:37:03 GMT  
		Size: 57.6 MB (57630574 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53abe103be4262448591b5b06fe502c9f0652bbd7c9a9412a9daab99b1fdf05e`  
		Last Modified: Mon, 26 Sep 2016 22:36:43 GMT  
		Size: 664.2 KB (664159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfeba6bc5cc01cd19686cb2fee8123e51297a438f156d166d1cc71745db1771c`  
		Last Modified: Mon, 26 Sep 2016 22:37:35 GMT  
		Size: 189.6 MB (189608265 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65b29c7b9a18bb5792f45d58b04d142c229c32afa099ef325680d2474ca57309`  
		Last Modified: Mon, 26 Sep 2016 22:36:42 GMT  
		Size: 197.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:518223d05310aa9fb4f71afa0f1d45efc068cb1f775e31eff39a3bf9229f94b9`  
		Last Modified: Mon, 26 Sep 2016 23:16:45 GMT  
		Size: 4.6 MB (4636422 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:kinetic`

```console
$ docker pull ros@sha256:3bbf45971608c7f78c5d83aa8e5850260810590f3a5f5c238586d86017ee043e
```

-	Platforms:
	-	linux; amd64

### `ros:kinetic` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **302.7 MB (302724842 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e037eb5d6c1b8b6cd07240905a5c90ef2ed52a49272b4b9879ae4941e3a5a55c`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 26 Sep 2016 21:26:19 GMT
ADD file:cd937b840fff16e04e1f59d56f4424d08544b0bb8ac30d9804d25e28fb15ded3 in / 
# Mon, 26 Sep 2016 21:26:20 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 26 Sep 2016 21:26:21 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 26 Sep 2016 21:26:22 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Mon, 26 Sep 2016 21:26:23 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 26 Sep 2016 21:26:23 GMT
CMD ["/bin/bash"]
# Mon, 26 Sep 2016 22:34:30 GMT
MAINTAINER Tully Foote tfoote+buildfarm@osrfoundation.org
# Mon, 26 Sep 2016 22:34:32 GMT
RUN locale-gen en_US.UTF-8
# Mon, 26 Sep 2016 22:34:32 GMT
ENV LANG=en_US.UTF-8
# Mon, 26 Sep 2016 22:34:35 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Mon, 26 Sep 2016 22:34:36 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Mon, 26 Sep 2016 22:35:07 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Mon, 26 Sep 2016 22:35:17 GMT
RUN rosdep init     && rosdep update
# Mon, 26 Sep 2016 22:35:17 GMT
ENV ROS_DISTRO=kinetic
# Mon, 26 Sep 2016 22:36:32 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.0-0*     && rm -rf /var/lib/apt/lists/*
# Mon, 26 Sep 2016 22:36:33 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Mon, 26 Sep 2016 22:36:34 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Mon, 26 Sep 2016 22:36:34 GMT
CMD ["bash"]
# Mon, 26 Sep 2016 23:16:15 GMT
MAINTAINER Tully Foote tfoote+buildfarm@osrfoundation.org
# Mon, 26 Sep 2016 23:16:35 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.0-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:cad964aed91d2ace084302c587dfc502b5869c5b1d15a1f0e458a45e3cadfaa6`  
		Last Modified: Mon, 26 Sep 2016 21:29:04 GMT  
		Size: 49.8 MB (49830405 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a80a22fea63572c387efb1943e6095587f9ea8343af129934d4c81e593374a4`  
		Last Modified: Mon, 26 Sep 2016 21:28:50 GMT  
		Size: 824.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50de990d7957c304603ac78d094f3acf634c1261a3a5a89229fa81d18cdb7945`  
		Last Modified: Mon, 26 Sep 2016 21:28:50 GMT  
		Size: 448.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61e032b8f2cb04e7a2d4efa83eb6837c6b92bd1553cbe46cffa76121091d8301`  
		Last Modified: Mon, 26 Sep 2016 21:28:50 GMT  
		Size: 682.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f03ce1741bf604c84258a4c4f1dc98cc35aebdd76c14ed4ffeb6bc3584c1f9b`  
		Last Modified: Mon, 26 Sep 2016 21:28:50 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0a7596f11be20786fde11d756936ea0bd54e86641c3fba9ab2a2f55f87fa7af`  
		Last Modified: Mon, 26 Sep 2016 22:36:46 GMT  
		Size: 339.4 KB (339412 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd497f3412bcf8dc397d90b70ffb87fb64856f0aa5ec3c4dddc18597cd9ec4a4`  
		Last Modified: Mon, 26 Sep 2016 22:36:45 GMT  
		Size: 13.1 KB (13071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2805e2df98418ff4f8004d1ad0769fb90ee5413d3cfb33b73334a0f567ba55a5`  
		Last Modified: Mon, 26 Sep 2016 22:36:42 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9bd9f04f625c89067295cc4ff04310914bc15a5d1359c86cc480da6344488f1`  
		Last Modified: Mon, 26 Sep 2016 22:37:03 GMT  
		Size: 57.6 MB (57630574 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53abe103be4262448591b5b06fe502c9f0652bbd7c9a9412a9daab99b1fdf05e`  
		Last Modified: Mon, 26 Sep 2016 22:36:43 GMT  
		Size: 664.2 KB (664159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfeba6bc5cc01cd19686cb2fee8123e51297a438f156d166d1cc71745db1771c`  
		Last Modified: Mon, 26 Sep 2016 22:37:35 GMT  
		Size: 189.6 MB (189608265 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65b29c7b9a18bb5792f45d58b04d142c229c32afa099ef325680d2474ca57309`  
		Last Modified: Mon, 26 Sep 2016 22:36:42 GMT  
		Size: 197.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:518223d05310aa9fb4f71afa0f1d45efc068cb1f775e31eff39a3bf9229f94b9`  
		Last Modified: Mon, 26 Sep 2016 23:16:45 GMT  
		Size: 4.6 MB (4636422 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:latest`

```console
$ docker pull ros@sha256:dea3927e75cb9134162e40fa5a4025a3af33485807c7d2ce13e6c3d0c0d55527
```

-	Platforms:
	-	linux; amd64

### `ros:latest` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **302.7 MB (302689482 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:321c0675d217f0f56a04a0bfc0a5f36bbba4483f6dafb06e41d09484cc5ee5f8`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 19 Sep 2016 17:01:17 GMT
ADD file:7d01e28262e78b1d7fd9ff5c2999e4519a338e8447becf947af04004c45b6be9 in / 
# Mon, 19 Sep 2016 17:01:18 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 19 Sep 2016 17:01:19 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 19 Sep 2016 17:01:20 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Mon, 19 Sep 2016 17:01:21 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 19 Sep 2016 17:01:21 GMT
CMD ["/bin/bash"]
# Mon, 26 Sep 2016 16:59:39 GMT
MAINTAINER Tully Foote tfoote+buildfarm@osrfoundation.org
# Mon, 26 Sep 2016 16:59:42 GMT
RUN locale-gen en_US.UTF-8
# Mon, 26 Sep 2016 16:59:42 GMT
ENV LANG=en_US.UTF-8
# Mon, 26 Sep 2016 16:59:44 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Mon, 26 Sep 2016 16:59:45 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Mon, 26 Sep 2016 17:00:33 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Mon, 26 Sep 2016 17:00:44 GMT
RUN rosdep init     && rosdep update
# Mon, 26 Sep 2016 17:00:44 GMT
ENV ROS_DISTRO=kinetic
# Mon, 26 Sep 2016 17:02:39 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.0-0*     && rm -rf /var/lib/apt/lists/*
# Mon, 26 Sep 2016 17:02:43 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Mon, 26 Sep 2016 17:02:43 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Mon, 26 Sep 2016 17:02:44 GMT
CMD ["bash"]
# Mon, 26 Sep 2016 17:02:44 GMT
MAINTAINER Tully Foote tfoote+buildfarm@osrfoundation.org
# Mon, 26 Sep 2016 17:02:56 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.0-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:ff1f1f1de8626c4e34cb2cec216028cdf6fa5e735bb45aa7fa31475b5642aa22`  
		Last Modified: Mon, 19 Sep 2016 17:03:42 GMT  
		Size: 49.8 MB (49794815 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c7b035e2a1aaecca607158b51b0513f8576f1ef0e4a3bcaef69d6072cba1072`  
		Last Modified: Mon, 19 Sep 2016 17:03:27 GMT  
		Size: 833.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac8ee255ff413234d75d0686fae93ca9390544bbb64a374ed277dcc1f15be4dc`  
		Last Modified: Mon, 19 Sep 2016 17:03:27 GMT  
		Size: 444.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf3d47be55f87e433152ca4725e1243bf7eec2bf7a5d4aaf91ed06e12a1395e7`  
		Last Modified: Mon, 19 Sep 2016 17:03:27 GMT  
		Size: 682.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22a909724a97cb7f0226eb51558bae55a543e3c990349ee80cb436cc839ef475`  
		Last Modified: Mon, 19 Sep 2016 17:03:27 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a9ddd09768a3452296f8e3a4eb72a698eba051ca5e972303922eba6cc8dbb92`  
		Last Modified: Mon, 26 Sep 2016 17:17:25 GMT  
		Size: 339.4 KB (339415 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:febbc0b5ef50f5d8cac8678e04eb2e7543664fd68c90e0c4717ba3cdad6e7f97`  
		Last Modified: Mon, 26 Sep 2016 17:17:25 GMT  
		Size: 13.1 KB (13070 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5514181fc1bb9bf62820b29a5f50505af75c2aad2bb521f51ae4191fb0ac4348`  
		Last Modified: Mon, 26 Sep 2016 17:17:21 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96e80b63d56136c0a2e35422eb09782aeb8fd54232c67d4a9282f8e9564a070f`  
		Last Modified: Mon, 26 Sep 2016 17:17:48 GMT  
		Size: 57.6 MB (57630277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fe176ee64192be0c934df770d8fad60f16f09d0d7c8cc1467b8a9651f8a94b7`  
		Last Modified: Mon, 26 Sep 2016 17:17:22 GMT  
		Size: 664.1 KB (664126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af726799272f5ee90aed0c31bf5122331b4a5c05e68e0523f95fa6de2e36c870`  
		Last Modified: Mon, 26 Sep 2016 17:18:26 GMT  
		Size: 189.6 MB (189608941 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d428051a2dce5c22b25b416ec147537e4a09f2568568dbb880221f359f1e49e5`  
		Last Modified: Mon, 26 Sep 2016 17:17:23 GMT  
		Size: 197.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c9ecb90ae81dd0eeadfc9066ecb03207f8d8555fffabd9277e61dfe9503dbb9`  
		Last Modified: Mon, 26 Sep 2016 17:18:46 GMT  
		Size: 4.6 MB (4636297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:kinetic-robot`

```console
$ docker pull ros@sha256:e41bfee99bd3d2699fdf99119263f8ccd56a3a12eda802ffe10de3376ae13fcc
```

-	Platforms:
	-	linux; amd64

### `ros:kinetic-robot` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **434.1 MB (434138278 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7293fc0b2a1b99a85a8f677c4932c85f5206968ccdbd1a323e4f92673ba35403`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 19 Sep 2016 17:01:17 GMT
ADD file:7d01e28262e78b1d7fd9ff5c2999e4519a338e8447becf947af04004c45b6be9 in / 
# Mon, 19 Sep 2016 17:01:18 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 19 Sep 2016 17:01:19 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 19 Sep 2016 17:01:20 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Mon, 19 Sep 2016 17:01:21 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 19 Sep 2016 17:01:21 GMT
CMD ["/bin/bash"]
# Mon, 26 Sep 2016 16:59:39 GMT
MAINTAINER Tully Foote tfoote+buildfarm@osrfoundation.org
# Mon, 26 Sep 2016 16:59:42 GMT
RUN locale-gen en_US.UTF-8
# Mon, 26 Sep 2016 16:59:42 GMT
ENV LANG=en_US.UTF-8
# Mon, 26 Sep 2016 16:59:44 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Mon, 26 Sep 2016 16:59:45 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Mon, 26 Sep 2016 17:00:33 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Mon, 26 Sep 2016 17:00:44 GMT
RUN rosdep init     && rosdep update
# Mon, 26 Sep 2016 17:00:44 GMT
ENV ROS_DISTRO=kinetic
# Mon, 26 Sep 2016 17:02:39 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.0-0*     && rm -rf /var/lib/apt/lists/*
# Mon, 26 Sep 2016 17:02:43 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Mon, 26 Sep 2016 17:02:43 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Mon, 26 Sep 2016 17:02:44 GMT
CMD ["bash"]
# Mon, 26 Sep 2016 17:02:44 GMT
MAINTAINER Tully Foote tfoote+buildfarm@osrfoundation.org
# Mon, 26 Sep 2016 17:02:56 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.0-0*     && rm -rf /var/lib/apt/lists/*
# Mon, 26 Sep 2016 17:03:00 GMT
MAINTAINER Tully Foote tfoote+buildfarm@osrfoundation.org
# Mon, 26 Sep 2016 17:05:12 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-robot=1.3.0-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:ff1f1f1de8626c4e34cb2cec216028cdf6fa5e735bb45aa7fa31475b5642aa22`  
		Last Modified: Mon, 19 Sep 2016 17:03:42 GMT  
		Size: 49.8 MB (49794815 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c7b035e2a1aaecca607158b51b0513f8576f1ef0e4a3bcaef69d6072cba1072`  
		Last Modified: Mon, 19 Sep 2016 17:03:27 GMT  
		Size: 833.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac8ee255ff413234d75d0686fae93ca9390544bbb64a374ed277dcc1f15be4dc`  
		Last Modified: Mon, 19 Sep 2016 17:03:27 GMT  
		Size: 444.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf3d47be55f87e433152ca4725e1243bf7eec2bf7a5d4aaf91ed06e12a1395e7`  
		Last Modified: Mon, 19 Sep 2016 17:03:27 GMT  
		Size: 682.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22a909724a97cb7f0226eb51558bae55a543e3c990349ee80cb436cc839ef475`  
		Last Modified: Mon, 19 Sep 2016 17:03:27 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a9ddd09768a3452296f8e3a4eb72a698eba051ca5e972303922eba6cc8dbb92`  
		Last Modified: Mon, 26 Sep 2016 17:17:25 GMT  
		Size: 339.4 KB (339415 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:febbc0b5ef50f5d8cac8678e04eb2e7543664fd68c90e0c4717ba3cdad6e7f97`  
		Last Modified: Mon, 26 Sep 2016 17:17:25 GMT  
		Size: 13.1 KB (13070 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5514181fc1bb9bf62820b29a5f50505af75c2aad2bb521f51ae4191fb0ac4348`  
		Last Modified: Mon, 26 Sep 2016 17:17:21 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96e80b63d56136c0a2e35422eb09782aeb8fd54232c67d4a9282f8e9564a070f`  
		Last Modified: Mon, 26 Sep 2016 17:17:48 GMT  
		Size: 57.6 MB (57630277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fe176ee64192be0c934df770d8fad60f16f09d0d7c8cc1467b8a9651f8a94b7`  
		Last Modified: Mon, 26 Sep 2016 17:17:22 GMT  
		Size: 664.1 KB (664126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af726799272f5ee90aed0c31bf5122331b4a5c05e68e0523f95fa6de2e36c870`  
		Last Modified: Mon, 26 Sep 2016 17:18:26 GMT  
		Size: 189.6 MB (189608941 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d428051a2dce5c22b25b416ec147537e4a09f2568568dbb880221f359f1e49e5`  
		Last Modified: Mon, 26 Sep 2016 17:17:23 GMT  
		Size: 197.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c9ecb90ae81dd0eeadfc9066ecb03207f8d8555fffabd9277e61dfe9503dbb9`  
		Last Modified: Mon, 26 Sep 2016 17:18:46 GMT  
		Size: 4.6 MB (4636297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a8704a378c667238b8502e0850b7cbd68c4a161dcb82030a9c7280607f922de`  
		Last Modified: Mon, 26 Sep 2016 17:20:06 GMT  
		Size: 131.4 MB (131448796 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:kinetic-perception`

```console
$ docker pull ros@sha256:b942d2a6184188c0cc0526eebae9f53721e0b57208496eef25e5ecea2552150c
```

-	Platforms:
	-	linux; amd64

### `ros:kinetic-perception` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **706.4 MB (706367516 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ca296b731377fd29626186359933fbd6f1f569e2a12acd7dde5869a88049cc07`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 19 Sep 2016 17:01:17 GMT
ADD file:7d01e28262e78b1d7fd9ff5c2999e4519a338e8447becf947af04004c45b6be9 in / 
# Mon, 19 Sep 2016 17:01:18 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 19 Sep 2016 17:01:19 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 19 Sep 2016 17:01:20 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Mon, 19 Sep 2016 17:01:21 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 19 Sep 2016 17:01:21 GMT
CMD ["/bin/bash"]
# Mon, 26 Sep 2016 16:59:39 GMT
MAINTAINER Tully Foote tfoote+buildfarm@osrfoundation.org
# Mon, 26 Sep 2016 16:59:42 GMT
RUN locale-gen en_US.UTF-8
# Mon, 26 Sep 2016 16:59:42 GMT
ENV LANG=en_US.UTF-8
# Mon, 26 Sep 2016 16:59:44 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Mon, 26 Sep 2016 16:59:45 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Mon, 26 Sep 2016 17:00:33 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Mon, 26 Sep 2016 17:00:44 GMT
RUN rosdep init     && rosdep update
# Mon, 26 Sep 2016 17:00:44 GMT
ENV ROS_DISTRO=kinetic
# Mon, 26 Sep 2016 17:02:39 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.0-0*     && rm -rf /var/lib/apt/lists/*
# Mon, 26 Sep 2016 17:02:43 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Mon, 26 Sep 2016 17:02:43 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Mon, 26 Sep 2016 17:02:44 GMT
CMD ["bash"]
# Mon, 26 Sep 2016 17:02:44 GMT
MAINTAINER Tully Foote tfoote+buildfarm@osrfoundation.org
# Mon, 26 Sep 2016 17:02:56 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.0-0*     && rm -rf /var/lib/apt/lists/*
# Mon, 26 Sep 2016 17:03:00 GMT
MAINTAINER Tully Foote tfoote+buildfarm@osrfoundation.org
# Mon, 26 Sep 2016 17:08:28 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-perception=1.3.0-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:ff1f1f1de8626c4e34cb2cec216028cdf6fa5e735bb45aa7fa31475b5642aa22`  
		Last Modified: Mon, 19 Sep 2016 17:03:42 GMT  
		Size: 49.8 MB (49794815 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c7b035e2a1aaecca607158b51b0513f8576f1ef0e4a3bcaef69d6072cba1072`  
		Last Modified: Mon, 19 Sep 2016 17:03:27 GMT  
		Size: 833.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac8ee255ff413234d75d0686fae93ca9390544bbb64a374ed277dcc1f15be4dc`  
		Last Modified: Mon, 19 Sep 2016 17:03:27 GMT  
		Size: 444.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf3d47be55f87e433152ca4725e1243bf7eec2bf7a5d4aaf91ed06e12a1395e7`  
		Last Modified: Mon, 19 Sep 2016 17:03:27 GMT  
		Size: 682.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22a909724a97cb7f0226eb51558bae55a543e3c990349ee80cb436cc839ef475`  
		Last Modified: Mon, 19 Sep 2016 17:03:27 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a9ddd09768a3452296f8e3a4eb72a698eba051ca5e972303922eba6cc8dbb92`  
		Last Modified: Mon, 26 Sep 2016 17:17:25 GMT  
		Size: 339.4 KB (339415 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:febbc0b5ef50f5d8cac8678e04eb2e7543664fd68c90e0c4717ba3cdad6e7f97`  
		Last Modified: Mon, 26 Sep 2016 17:17:25 GMT  
		Size: 13.1 KB (13070 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5514181fc1bb9bf62820b29a5f50505af75c2aad2bb521f51ae4191fb0ac4348`  
		Last Modified: Mon, 26 Sep 2016 17:17:21 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96e80b63d56136c0a2e35422eb09782aeb8fd54232c67d4a9282f8e9564a070f`  
		Last Modified: Mon, 26 Sep 2016 17:17:48 GMT  
		Size: 57.6 MB (57630277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fe176ee64192be0c934df770d8fad60f16f09d0d7c8cc1467b8a9651f8a94b7`  
		Last Modified: Mon, 26 Sep 2016 17:17:22 GMT  
		Size: 664.1 KB (664126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af726799272f5ee90aed0c31bf5122331b4a5c05e68e0523f95fa6de2e36c870`  
		Last Modified: Mon, 26 Sep 2016 17:18:26 GMT  
		Size: 189.6 MB (189608941 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d428051a2dce5c22b25b416ec147537e4a09f2568568dbb880221f359f1e49e5`  
		Last Modified: Mon, 26 Sep 2016 17:17:23 GMT  
		Size: 197.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c9ecb90ae81dd0eeadfc9066ecb03207f8d8555fffabd9277e61dfe9503dbb9`  
		Last Modified: Mon, 26 Sep 2016 17:18:46 GMT  
		Size: 4.6 MB (4636297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb687be256a21274084ac5581ab03c4ef00a5c548da7a50c2212d91ad202d604`  
		Last Modified: Mon, 26 Sep 2016 17:22:33 GMT  
		Size: 403.7 MB (403678034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
