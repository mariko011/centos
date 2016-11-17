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
$ docker pull ros@sha256:ce50e23925fafada0849cef21e7bea1be136aa3b631382c8a190142547139390
```

-	Platforms:
	-	linux; amd64

### `ros:indigo-ros-core` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **249.6 MB (249635123 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dfcc44885c0d3b610572dd9e41b7eb80392794f3a50e5c499b0b27af378d8463`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 16 Nov 2016 20:57:47 GMT
ADD file:79ae73b5e33a497a33c1664e8e7129548273ee9d6ac9336b6ec940808a22a781 in / 
# Wed, 16 Nov 2016 20:57:50 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 16 Nov 2016 20:57:51 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 16 Nov 2016 20:57:52 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 16 Nov 2016 20:57:53 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 16 Nov 2016 20:57:54 GMT
CMD ["/bin/bash"]
# Thu, 17 Nov 2016 01:04:30 GMT
MAINTAINER Tully Foote tfoote+buildfarm@osrfoundation.org
# Thu, 17 Nov 2016 01:04:32 GMT
RUN locale-gen en_US.UTF-8
# Thu, 17 Nov 2016 01:04:32 GMT
ENV LANG=en_US.UTF-8
# Thu, 17 Nov 2016 01:04:34 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Thu, 17 Nov 2016 01:04:35 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu trusty main" > /etc/apt/sources.list.d/ros-latest.list
# Thu, 17 Nov 2016 01:05:10 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Thu, 17 Nov 2016 01:05:19 GMT
RUN rosdep init     && rosdep update
# Thu, 17 Nov 2016 01:05:19 GMT
ENV ROS_DISTRO=indigo
# Thu, 17 Nov 2016 01:06:49 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-core=1.1.4-0*     && rm -rf /var/lib/apt/lists/*
# Thu, 17 Nov 2016 01:06:50 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Thu, 17 Nov 2016 01:06:50 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Thu, 17 Nov 2016 01:06:51 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:ba76e97bb96ceeb4c4d76ecd4940c368f968e8df3637d8ff4fd0e0e57c8896c5`  
		Last Modified: Wed, 09 Nov 2016 20:42:07 GMT  
		Size: 65.7 MB (65702665 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d6181e6b42361332273bca37f0d1b983e3b45375b57db2c2a28fad62cc78bed`  
		Last Modified: Wed, 16 Nov 2016 21:00:28 GMT  
		Size: 71.6 KB (71557 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4854897be9ac6e924eab65553a8f81ed556f855c184f379dfb584742f0f3096b`  
		Last Modified: Wed, 16 Nov 2016 21:00:28 GMT  
		Size: 362.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4458f3097eefd9eae329e0c03584452127ad692ce35aa75fb64dc4308ace7e76`  
		Last Modified: Wed, 16 Nov 2016 21:00:28 GMT  
		Size: 681.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9989a8de1a9ecee5a5a075078dff0a2ffa6426039b4d03949f29afcf80f85906`  
		Last Modified: Wed, 16 Nov 2016 21:00:28 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c3f44b2499e139c00d424510989dc53db9b2a5db3b1163fd46894fed7eaf442`  
		Last Modified: Thu, 17 Nov 2016 01:36:38 GMT  
		Size: 329.2 KB (329192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:928b1539f704821020e6cc79019b2c436e2beb9da3d97840eda2d0f43acc917f`  
		Last Modified: Thu, 17 Nov 2016 01:36:36 GMT  
		Size: 13.1 KB (13075 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1d34b89dd404f3bb42ca362d09f54652c3ea88ed02918900420a7f343b7471d`  
		Last Modified: Thu, 17 Nov 2016 01:36:34 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fda7c14093b912542813e7721380a39572bbff9d6361ac00374ce83ca649f036`  
		Last Modified: Thu, 17 Nov 2016 01:36:49 GMT  
		Size: 32.9 MB (32873530 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ed3fa687d6e6b486ad53dc573be467145bf7f721dede68b36e9032e5775065d`  
		Last Modified: Thu, 17 Nov 2016 01:36:34 GMT  
		Size: 682.1 KB (682075 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:613496ded4fafb7ec8b9b97783280264d5f45bac8c2c182b152307902b7d8105`  
		Last Modified: Thu, 17 Nov 2016 01:37:31 GMT  
		Size: 150.0 MB (149961405 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c66c92c588b661ee95f91a0201550ce2ec8d277044082cdd01d8059a19cc095`  
		Last Modified: Thu, 17 Nov 2016 01:36:33 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:indigo-ros-base`

```console
$ docker pull ros@sha256:51ae67049422e49652a1d497721c8ec10dac789897ad404bc0d07ac823b64ed6
```

-	Platforms:
	-	linux; amd64

### `ros:indigo-ros-base` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **253.1 MB (253054300 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b2bc3ea5950032eaeb82c317bb1b4e60dc0632f633e38a96577d3a25a767dccb`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 16 Nov 2016 20:57:47 GMT
ADD file:79ae73b5e33a497a33c1664e8e7129548273ee9d6ac9336b6ec940808a22a781 in / 
# Wed, 16 Nov 2016 20:57:50 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 16 Nov 2016 20:57:51 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 16 Nov 2016 20:57:52 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 16 Nov 2016 20:57:53 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 16 Nov 2016 20:57:54 GMT
CMD ["/bin/bash"]
# Thu, 17 Nov 2016 01:04:30 GMT
MAINTAINER Tully Foote tfoote+buildfarm@osrfoundation.org
# Thu, 17 Nov 2016 01:04:32 GMT
RUN locale-gen en_US.UTF-8
# Thu, 17 Nov 2016 01:04:32 GMT
ENV LANG=en_US.UTF-8
# Thu, 17 Nov 2016 01:04:34 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Thu, 17 Nov 2016 01:04:35 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu trusty main" > /etc/apt/sources.list.d/ros-latest.list
# Thu, 17 Nov 2016 01:05:10 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Thu, 17 Nov 2016 01:05:19 GMT
RUN rosdep init     && rosdep update
# Thu, 17 Nov 2016 01:05:19 GMT
ENV ROS_DISTRO=indigo
# Thu, 17 Nov 2016 01:06:49 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-core=1.1.4-0*     && rm -rf /var/lib/apt/lists/*
# Thu, 17 Nov 2016 01:06:50 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Thu, 17 Nov 2016 01:06:50 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Thu, 17 Nov 2016 01:06:51 GMT
CMD ["bash"]
# Thu, 17 Nov 2016 01:10:54 GMT
MAINTAINER Tully Foote tfoote+buildfarm@osrfoundation.org
# Thu, 17 Nov 2016 01:11:12 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-base=1.1.4-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:ba76e97bb96ceeb4c4d76ecd4940c368f968e8df3637d8ff4fd0e0e57c8896c5`  
		Last Modified: Wed, 09 Nov 2016 20:42:07 GMT  
		Size: 65.7 MB (65702665 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d6181e6b42361332273bca37f0d1b983e3b45375b57db2c2a28fad62cc78bed`  
		Last Modified: Wed, 16 Nov 2016 21:00:28 GMT  
		Size: 71.6 KB (71557 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4854897be9ac6e924eab65553a8f81ed556f855c184f379dfb584742f0f3096b`  
		Last Modified: Wed, 16 Nov 2016 21:00:28 GMT  
		Size: 362.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4458f3097eefd9eae329e0c03584452127ad692ce35aa75fb64dc4308ace7e76`  
		Last Modified: Wed, 16 Nov 2016 21:00:28 GMT  
		Size: 681.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9989a8de1a9ecee5a5a075078dff0a2ffa6426039b4d03949f29afcf80f85906`  
		Last Modified: Wed, 16 Nov 2016 21:00:28 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c3f44b2499e139c00d424510989dc53db9b2a5db3b1163fd46894fed7eaf442`  
		Last Modified: Thu, 17 Nov 2016 01:36:38 GMT  
		Size: 329.2 KB (329192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:928b1539f704821020e6cc79019b2c436e2beb9da3d97840eda2d0f43acc917f`  
		Last Modified: Thu, 17 Nov 2016 01:36:36 GMT  
		Size: 13.1 KB (13075 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1d34b89dd404f3bb42ca362d09f54652c3ea88ed02918900420a7f343b7471d`  
		Last Modified: Thu, 17 Nov 2016 01:36:34 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fda7c14093b912542813e7721380a39572bbff9d6361ac00374ce83ca649f036`  
		Last Modified: Thu, 17 Nov 2016 01:36:49 GMT  
		Size: 32.9 MB (32873530 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ed3fa687d6e6b486ad53dc573be467145bf7f721dede68b36e9032e5775065d`  
		Last Modified: Thu, 17 Nov 2016 01:36:34 GMT  
		Size: 682.1 KB (682075 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:613496ded4fafb7ec8b9b97783280264d5f45bac8c2c182b152307902b7d8105`  
		Last Modified: Thu, 17 Nov 2016 01:37:31 GMT  
		Size: 150.0 MB (149961405 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c66c92c588b661ee95f91a0201550ce2ec8d277044082cdd01d8059a19cc095`  
		Last Modified: Thu, 17 Nov 2016 01:36:33 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:928469cfd052ed9dc8258b020fd35e211305c61608e279f0fb986c7eb2188890`  
		Last Modified: Thu, 17 Nov 2016 01:40:47 GMT  
		Size: 3.4 MB (3419177 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:indigo`

```console
$ docker pull ros@sha256:51ae67049422e49652a1d497721c8ec10dac789897ad404bc0d07ac823b64ed6
```

-	Platforms:
	-	linux; amd64

### `ros:indigo` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **253.1 MB (253054300 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b2bc3ea5950032eaeb82c317bb1b4e60dc0632f633e38a96577d3a25a767dccb`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 16 Nov 2016 20:57:47 GMT
ADD file:79ae73b5e33a497a33c1664e8e7129548273ee9d6ac9336b6ec940808a22a781 in / 
# Wed, 16 Nov 2016 20:57:50 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 16 Nov 2016 20:57:51 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 16 Nov 2016 20:57:52 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 16 Nov 2016 20:57:53 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 16 Nov 2016 20:57:54 GMT
CMD ["/bin/bash"]
# Thu, 17 Nov 2016 01:04:30 GMT
MAINTAINER Tully Foote tfoote+buildfarm@osrfoundation.org
# Thu, 17 Nov 2016 01:04:32 GMT
RUN locale-gen en_US.UTF-8
# Thu, 17 Nov 2016 01:04:32 GMT
ENV LANG=en_US.UTF-8
# Thu, 17 Nov 2016 01:04:34 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Thu, 17 Nov 2016 01:04:35 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu trusty main" > /etc/apt/sources.list.d/ros-latest.list
# Thu, 17 Nov 2016 01:05:10 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Thu, 17 Nov 2016 01:05:19 GMT
RUN rosdep init     && rosdep update
# Thu, 17 Nov 2016 01:05:19 GMT
ENV ROS_DISTRO=indigo
# Thu, 17 Nov 2016 01:06:49 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-core=1.1.4-0*     && rm -rf /var/lib/apt/lists/*
# Thu, 17 Nov 2016 01:06:50 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Thu, 17 Nov 2016 01:06:50 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Thu, 17 Nov 2016 01:06:51 GMT
CMD ["bash"]
# Thu, 17 Nov 2016 01:10:54 GMT
MAINTAINER Tully Foote tfoote+buildfarm@osrfoundation.org
# Thu, 17 Nov 2016 01:11:12 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-base=1.1.4-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:ba76e97bb96ceeb4c4d76ecd4940c368f968e8df3637d8ff4fd0e0e57c8896c5`  
		Last Modified: Wed, 09 Nov 2016 20:42:07 GMT  
		Size: 65.7 MB (65702665 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d6181e6b42361332273bca37f0d1b983e3b45375b57db2c2a28fad62cc78bed`  
		Last Modified: Wed, 16 Nov 2016 21:00:28 GMT  
		Size: 71.6 KB (71557 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4854897be9ac6e924eab65553a8f81ed556f855c184f379dfb584742f0f3096b`  
		Last Modified: Wed, 16 Nov 2016 21:00:28 GMT  
		Size: 362.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4458f3097eefd9eae329e0c03584452127ad692ce35aa75fb64dc4308ace7e76`  
		Last Modified: Wed, 16 Nov 2016 21:00:28 GMT  
		Size: 681.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9989a8de1a9ecee5a5a075078dff0a2ffa6426039b4d03949f29afcf80f85906`  
		Last Modified: Wed, 16 Nov 2016 21:00:28 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c3f44b2499e139c00d424510989dc53db9b2a5db3b1163fd46894fed7eaf442`  
		Last Modified: Thu, 17 Nov 2016 01:36:38 GMT  
		Size: 329.2 KB (329192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:928b1539f704821020e6cc79019b2c436e2beb9da3d97840eda2d0f43acc917f`  
		Last Modified: Thu, 17 Nov 2016 01:36:36 GMT  
		Size: 13.1 KB (13075 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1d34b89dd404f3bb42ca362d09f54652c3ea88ed02918900420a7f343b7471d`  
		Last Modified: Thu, 17 Nov 2016 01:36:34 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fda7c14093b912542813e7721380a39572bbff9d6361ac00374ce83ca649f036`  
		Last Modified: Thu, 17 Nov 2016 01:36:49 GMT  
		Size: 32.9 MB (32873530 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ed3fa687d6e6b486ad53dc573be467145bf7f721dede68b36e9032e5775065d`  
		Last Modified: Thu, 17 Nov 2016 01:36:34 GMT  
		Size: 682.1 KB (682075 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:613496ded4fafb7ec8b9b97783280264d5f45bac8c2c182b152307902b7d8105`  
		Last Modified: Thu, 17 Nov 2016 01:37:31 GMT  
		Size: 150.0 MB (149961405 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c66c92c588b661ee95f91a0201550ce2ec8d277044082cdd01d8059a19cc095`  
		Last Modified: Thu, 17 Nov 2016 01:36:33 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:928469cfd052ed9dc8258b020fd35e211305c61608e279f0fb986c7eb2188890`  
		Last Modified: Thu, 17 Nov 2016 01:40:47 GMT  
		Size: 3.4 MB (3419177 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:indigo-robot`

```console
$ docker pull ros@sha256:b3421d430d0738cbbaf161adc8184b3282ba25fafad08b0219398d0d717b2f3c
```

-	Platforms:
	-	linux; amd64

### `ros:indigo-robot` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **321.5 MB (321511739 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dc1627c5da96e05b4dea1d4c206a7d4c01657d022a3670a0d92ae0040affcdec`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 16 Nov 2016 20:57:47 GMT
ADD file:79ae73b5e33a497a33c1664e8e7129548273ee9d6ac9336b6ec940808a22a781 in / 
# Wed, 16 Nov 2016 20:57:50 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 16 Nov 2016 20:57:51 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 16 Nov 2016 20:57:52 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 16 Nov 2016 20:57:53 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 16 Nov 2016 20:57:54 GMT
CMD ["/bin/bash"]
# Thu, 17 Nov 2016 01:04:30 GMT
MAINTAINER Tully Foote tfoote+buildfarm@osrfoundation.org
# Thu, 17 Nov 2016 01:04:32 GMT
RUN locale-gen en_US.UTF-8
# Thu, 17 Nov 2016 01:04:32 GMT
ENV LANG=en_US.UTF-8
# Thu, 17 Nov 2016 01:04:34 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Thu, 17 Nov 2016 01:04:35 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu trusty main" > /etc/apt/sources.list.d/ros-latest.list
# Thu, 17 Nov 2016 01:05:10 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Thu, 17 Nov 2016 01:05:19 GMT
RUN rosdep init     && rosdep update
# Thu, 17 Nov 2016 01:05:19 GMT
ENV ROS_DISTRO=indigo
# Thu, 17 Nov 2016 01:06:49 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-core=1.1.4-0*     && rm -rf /var/lib/apt/lists/*
# Thu, 17 Nov 2016 01:06:50 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Thu, 17 Nov 2016 01:06:50 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Thu, 17 Nov 2016 01:06:51 GMT
CMD ["bash"]
# Thu, 17 Nov 2016 01:10:54 GMT
MAINTAINER Tully Foote tfoote+buildfarm@osrfoundation.org
# Thu, 17 Nov 2016 01:11:12 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-base=1.1.4-0*     && rm -rf /var/lib/apt/lists/*
# Thu, 17 Nov 2016 01:11:42 GMT
MAINTAINER Tully Foote tfoote+buildfarm@osrfoundation.org
# Thu, 17 Nov 2016 01:15:30 GMT
RUN apt-get update && apt-get install -y     ros-indigo-robot=1.1.4-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:ba76e97bb96ceeb4c4d76ecd4940c368f968e8df3637d8ff4fd0e0e57c8896c5`  
		Last Modified: Wed, 09 Nov 2016 20:42:07 GMT  
		Size: 65.7 MB (65702665 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d6181e6b42361332273bca37f0d1b983e3b45375b57db2c2a28fad62cc78bed`  
		Last Modified: Wed, 16 Nov 2016 21:00:28 GMT  
		Size: 71.6 KB (71557 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4854897be9ac6e924eab65553a8f81ed556f855c184f379dfb584742f0f3096b`  
		Last Modified: Wed, 16 Nov 2016 21:00:28 GMT  
		Size: 362.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4458f3097eefd9eae329e0c03584452127ad692ce35aa75fb64dc4308ace7e76`  
		Last Modified: Wed, 16 Nov 2016 21:00:28 GMT  
		Size: 681.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9989a8de1a9ecee5a5a075078dff0a2ffa6426039b4d03949f29afcf80f85906`  
		Last Modified: Wed, 16 Nov 2016 21:00:28 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c3f44b2499e139c00d424510989dc53db9b2a5db3b1163fd46894fed7eaf442`  
		Last Modified: Thu, 17 Nov 2016 01:36:38 GMT  
		Size: 329.2 KB (329192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:928b1539f704821020e6cc79019b2c436e2beb9da3d97840eda2d0f43acc917f`  
		Last Modified: Thu, 17 Nov 2016 01:36:36 GMT  
		Size: 13.1 KB (13075 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1d34b89dd404f3bb42ca362d09f54652c3ea88ed02918900420a7f343b7471d`  
		Last Modified: Thu, 17 Nov 2016 01:36:34 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fda7c14093b912542813e7721380a39572bbff9d6361ac00374ce83ca649f036`  
		Last Modified: Thu, 17 Nov 2016 01:36:49 GMT  
		Size: 32.9 MB (32873530 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ed3fa687d6e6b486ad53dc573be467145bf7f721dede68b36e9032e5775065d`  
		Last Modified: Thu, 17 Nov 2016 01:36:34 GMT  
		Size: 682.1 KB (682075 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:613496ded4fafb7ec8b9b97783280264d5f45bac8c2c182b152307902b7d8105`  
		Last Modified: Thu, 17 Nov 2016 01:37:31 GMT  
		Size: 150.0 MB (149961405 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c66c92c588b661ee95f91a0201550ce2ec8d277044082cdd01d8059a19cc095`  
		Last Modified: Thu, 17 Nov 2016 01:36:33 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:928469cfd052ed9dc8258b020fd35e211305c61608e279f0fb986c7eb2188890`  
		Last Modified: Thu, 17 Nov 2016 01:40:47 GMT  
		Size: 3.4 MB (3419177 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc1ea1a03a6123c169e89dfb959db5f3a97c30bbfc15fbbc43689f0f4f482023`  
		Last Modified: Thu, 17 Nov 2016 01:45:18 GMT  
		Size: 68.5 MB (68457439 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:indigo-perception`

```console
$ docker pull ros@sha256:fe46227004154250923b8dac76d97e16c2696964446d16ac80db6a0b37067efd
```

-	Platforms:
	-	linux; amd64

### `ros:indigo-perception` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **520.6 MB (520643607 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:15513f994edf405c4608fb8cc8dcf047d280f636c5382377d6960c0626c80828`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 16 Nov 2016 20:57:47 GMT
ADD file:79ae73b5e33a497a33c1664e8e7129548273ee9d6ac9336b6ec940808a22a781 in / 
# Wed, 16 Nov 2016 20:57:50 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 16 Nov 2016 20:57:51 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 16 Nov 2016 20:57:52 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 16 Nov 2016 20:57:53 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 16 Nov 2016 20:57:54 GMT
CMD ["/bin/bash"]
# Thu, 17 Nov 2016 01:04:30 GMT
MAINTAINER Tully Foote tfoote+buildfarm@osrfoundation.org
# Thu, 17 Nov 2016 01:04:32 GMT
RUN locale-gen en_US.UTF-8
# Thu, 17 Nov 2016 01:04:32 GMT
ENV LANG=en_US.UTF-8
# Thu, 17 Nov 2016 01:04:34 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Thu, 17 Nov 2016 01:04:35 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu trusty main" > /etc/apt/sources.list.d/ros-latest.list
# Thu, 17 Nov 2016 01:05:10 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Thu, 17 Nov 2016 01:05:19 GMT
RUN rosdep init     && rosdep update
# Thu, 17 Nov 2016 01:05:19 GMT
ENV ROS_DISTRO=indigo
# Thu, 17 Nov 2016 01:06:49 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-core=1.1.4-0*     && rm -rf /var/lib/apt/lists/*
# Thu, 17 Nov 2016 01:06:50 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Thu, 17 Nov 2016 01:06:50 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Thu, 17 Nov 2016 01:06:51 GMT
CMD ["bash"]
# Thu, 17 Nov 2016 01:10:54 GMT
MAINTAINER Tully Foote tfoote+buildfarm@osrfoundation.org
# Thu, 17 Nov 2016 01:11:12 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-base=1.1.4-0*     && rm -rf /var/lib/apt/lists/*
# Thu, 17 Nov 2016 01:11:42 GMT
MAINTAINER Tully Foote tfoote+buildfarm@osrfoundation.org
# Thu, 17 Nov 2016 01:14:32 GMT
RUN apt-get update && apt-get install -y     ros-indigo-perception=1.1.4-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:ba76e97bb96ceeb4c4d76ecd4940c368f968e8df3637d8ff4fd0e0e57c8896c5`  
		Last Modified: Wed, 09 Nov 2016 20:42:07 GMT  
		Size: 65.7 MB (65702665 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d6181e6b42361332273bca37f0d1b983e3b45375b57db2c2a28fad62cc78bed`  
		Last Modified: Wed, 16 Nov 2016 21:00:28 GMT  
		Size: 71.6 KB (71557 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4854897be9ac6e924eab65553a8f81ed556f855c184f379dfb584742f0f3096b`  
		Last Modified: Wed, 16 Nov 2016 21:00:28 GMT  
		Size: 362.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4458f3097eefd9eae329e0c03584452127ad692ce35aa75fb64dc4308ace7e76`  
		Last Modified: Wed, 16 Nov 2016 21:00:28 GMT  
		Size: 681.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9989a8de1a9ecee5a5a075078dff0a2ffa6426039b4d03949f29afcf80f85906`  
		Last Modified: Wed, 16 Nov 2016 21:00:28 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c3f44b2499e139c00d424510989dc53db9b2a5db3b1163fd46894fed7eaf442`  
		Last Modified: Thu, 17 Nov 2016 01:36:38 GMT  
		Size: 329.2 KB (329192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:928b1539f704821020e6cc79019b2c436e2beb9da3d97840eda2d0f43acc917f`  
		Last Modified: Thu, 17 Nov 2016 01:36:36 GMT  
		Size: 13.1 KB (13075 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1d34b89dd404f3bb42ca362d09f54652c3ea88ed02918900420a7f343b7471d`  
		Last Modified: Thu, 17 Nov 2016 01:36:34 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fda7c14093b912542813e7721380a39572bbff9d6361ac00374ce83ca649f036`  
		Last Modified: Thu, 17 Nov 2016 01:36:49 GMT  
		Size: 32.9 MB (32873530 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ed3fa687d6e6b486ad53dc573be467145bf7f721dede68b36e9032e5775065d`  
		Last Modified: Thu, 17 Nov 2016 01:36:34 GMT  
		Size: 682.1 KB (682075 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:613496ded4fafb7ec8b9b97783280264d5f45bac8c2c182b152307902b7d8105`  
		Last Modified: Thu, 17 Nov 2016 01:37:31 GMT  
		Size: 150.0 MB (149961405 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c66c92c588b661ee95f91a0201550ce2ec8d277044082cdd01d8059a19cc095`  
		Last Modified: Thu, 17 Nov 2016 01:36:33 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:928469cfd052ed9dc8258b020fd35e211305c61608e279f0fb986c7eb2188890`  
		Last Modified: Thu, 17 Nov 2016 01:40:47 GMT  
		Size: 3.4 MB (3419177 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfe7731a85fca007fd0324fc3dfca46b6820ce7305fa6fb10d5c534b3db3c547`  
		Last Modified: Thu, 17 Nov 2016 01:44:25 GMT  
		Size: 267.6 MB (267589307 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:jade-ros-core`

```console
$ docker pull ros@sha256:627966a86d382d1172ab0f47b95d65553aba4f0304f7bbc7d971d1085ee5545a
```

-	Platforms:
	-	linux; amd64

### `ros:jade-ros-core` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **249.8 MB (249763627 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e407c67ef92810b42d5862c24f7fc1f6ed0517e84d659dc2ff19119da8934c83`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 16 Nov 2016 20:57:47 GMT
ADD file:79ae73b5e33a497a33c1664e8e7129548273ee9d6ac9336b6ec940808a22a781 in / 
# Wed, 16 Nov 2016 20:57:50 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 16 Nov 2016 20:57:51 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 16 Nov 2016 20:57:52 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 16 Nov 2016 20:57:53 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 16 Nov 2016 20:57:54 GMT
CMD ["/bin/bash"]
# Thu, 17 Nov 2016 01:04:30 GMT
MAINTAINER Tully Foote tfoote+buildfarm@osrfoundation.org
# Thu, 17 Nov 2016 01:04:32 GMT
RUN locale-gen en_US.UTF-8
# Thu, 17 Nov 2016 01:04:32 GMT
ENV LANG=en_US.UTF-8
# Thu, 17 Nov 2016 01:04:34 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Thu, 17 Nov 2016 01:04:35 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu trusty main" > /etc/apt/sources.list.d/ros-latest.list
# Thu, 17 Nov 2016 01:05:10 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Thu, 17 Nov 2016 01:05:19 GMT
RUN rosdep init     && rosdep update
# Thu, 17 Nov 2016 01:06:51 GMT
ENV ROS_DISTRO=jade
# Thu, 17 Nov 2016 01:08:24 GMT
RUN apt-get update && apt-get install -y     ros-jade-ros-core=1.2.0-0*     && rm -rf /var/lib/apt/lists/*
# Thu, 17 Nov 2016 01:08:25 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Thu, 17 Nov 2016 01:08:25 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Thu, 17 Nov 2016 01:08:26 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:ba76e97bb96ceeb4c4d76ecd4940c368f968e8df3637d8ff4fd0e0e57c8896c5`  
		Last Modified: Wed, 09 Nov 2016 20:42:07 GMT  
		Size: 65.7 MB (65702665 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d6181e6b42361332273bca37f0d1b983e3b45375b57db2c2a28fad62cc78bed`  
		Last Modified: Wed, 16 Nov 2016 21:00:28 GMT  
		Size: 71.6 KB (71557 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4854897be9ac6e924eab65553a8f81ed556f855c184f379dfb584742f0f3096b`  
		Last Modified: Wed, 16 Nov 2016 21:00:28 GMT  
		Size: 362.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4458f3097eefd9eae329e0c03584452127ad692ce35aa75fb64dc4308ace7e76`  
		Last Modified: Wed, 16 Nov 2016 21:00:28 GMT  
		Size: 681.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9989a8de1a9ecee5a5a075078dff0a2ffa6426039b4d03949f29afcf80f85906`  
		Last Modified: Wed, 16 Nov 2016 21:00:28 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c3f44b2499e139c00d424510989dc53db9b2a5db3b1163fd46894fed7eaf442`  
		Last Modified: Thu, 17 Nov 2016 01:36:38 GMT  
		Size: 329.2 KB (329192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:928b1539f704821020e6cc79019b2c436e2beb9da3d97840eda2d0f43acc917f`  
		Last Modified: Thu, 17 Nov 2016 01:36:36 GMT  
		Size: 13.1 KB (13075 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1d34b89dd404f3bb42ca362d09f54652c3ea88ed02918900420a7f343b7471d`  
		Last Modified: Thu, 17 Nov 2016 01:36:34 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fda7c14093b912542813e7721380a39572bbff9d6361ac00374ce83ca649f036`  
		Last Modified: Thu, 17 Nov 2016 01:36:49 GMT  
		Size: 32.9 MB (32873530 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ed3fa687d6e6b486ad53dc573be467145bf7f721dede68b36e9032e5775065d`  
		Last Modified: Thu, 17 Nov 2016 01:36:34 GMT  
		Size: 682.1 KB (682075 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a06669401b4fb939df4aaa20679aef837b07f73eda40586b1adfab72e182b9a8`  
		Last Modified: Thu, 17 Nov 2016 01:38:49 GMT  
		Size: 150.1 MB (150089910 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dcced5f9e695d95e616e08a2f123e42d5608ff095bab2cc3c4bf08b5c4a47ce2`  
		Last Modified: Thu, 17 Nov 2016 01:37:53 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:jade-ros-base`

```console
$ docker pull ros@sha256:c5a7e6e1245130df311f7d1cbfaf3a57268fff948a71db0bc5098830cf43f72d
```

-	Platforms:
	-	linux; amd64

### `ros:jade-ros-base` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **253.2 MB (253204230 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c4805e6323f14415da349b57ab497bbcf5e932b15942992621ac99c406887cb2`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 16 Nov 2016 20:57:47 GMT
ADD file:79ae73b5e33a497a33c1664e8e7129548273ee9d6ac9336b6ec940808a22a781 in / 
# Wed, 16 Nov 2016 20:57:50 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 16 Nov 2016 20:57:51 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 16 Nov 2016 20:57:52 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 16 Nov 2016 20:57:53 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 16 Nov 2016 20:57:54 GMT
CMD ["/bin/bash"]
# Thu, 17 Nov 2016 01:04:30 GMT
MAINTAINER Tully Foote tfoote+buildfarm@osrfoundation.org
# Thu, 17 Nov 2016 01:04:32 GMT
RUN locale-gen en_US.UTF-8
# Thu, 17 Nov 2016 01:04:32 GMT
ENV LANG=en_US.UTF-8
# Thu, 17 Nov 2016 01:04:34 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Thu, 17 Nov 2016 01:04:35 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu trusty main" > /etc/apt/sources.list.d/ros-latest.list
# Thu, 17 Nov 2016 01:05:10 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Thu, 17 Nov 2016 01:05:19 GMT
RUN rosdep init     && rosdep update
# Thu, 17 Nov 2016 01:06:51 GMT
ENV ROS_DISTRO=jade
# Thu, 17 Nov 2016 01:08:24 GMT
RUN apt-get update && apt-get install -y     ros-jade-ros-core=1.2.0-0*     && rm -rf /var/lib/apt/lists/*
# Thu, 17 Nov 2016 01:08:25 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Thu, 17 Nov 2016 01:08:25 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Thu, 17 Nov 2016 01:08:26 GMT
CMD ["bash"]
# Thu, 17 Nov 2016 01:11:13 GMT
MAINTAINER Tully Foote tfoote+buildfarm@osrfoundation.org
# Thu, 17 Nov 2016 01:11:30 GMT
RUN apt-get update && apt-get install -y     ros-jade-ros-base=1.2.0-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:ba76e97bb96ceeb4c4d76ecd4940c368f968e8df3637d8ff4fd0e0e57c8896c5`  
		Last Modified: Wed, 09 Nov 2016 20:42:07 GMT  
		Size: 65.7 MB (65702665 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d6181e6b42361332273bca37f0d1b983e3b45375b57db2c2a28fad62cc78bed`  
		Last Modified: Wed, 16 Nov 2016 21:00:28 GMT  
		Size: 71.6 KB (71557 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4854897be9ac6e924eab65553a8f81ed556f855c184f379dfb584742f0f3096b`  
		Last Modified: Wed, 16 Nov 2016 21:00:28 GMT  
		Size: 362.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4458f3097eefd9eae329e0c03584452127ad692ce35aa75fb64dc4308ace7e76`  
		Last Modified: Wed, 16 Nov 2016 21:00:28 GMT  
		Size: 681.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9989a8de1a9ecee5a5a075078dff0a2ffa6426039b4d03949f29afcf80f85906`  
		Last Modified: Wed, 16 Nov 2016 21:00:28 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c3f44b2499e139c00d424510989dc53db9b2a5db3b1163fd46894fed7eaf442`  
		Last Modified: Thu, 17 Nov 2016 01:36:38 GMT  
		Size: 329.2 KB (329192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:928b1539f704821020e6cc79019b2c436e2beb9da3d97840eda2d0f43acc917f`  
		Last Modified: Thu, 17 Nov 2016 01:36:36 GMT  
		Size: 13.1 KB (13075 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1d34b89dd404f3bb42ca362d09f54652c3ea88ed02918900420a7f343b7471d`  
		Last Modified: Thu, 17 Nov 2016 01:36:34 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fda7c14093b912542813e7721380a39572bbff9d6361ac00374ce83ca649f036`  
		Last Modified: Thu, 17 Nov 2016 01:36:49 GMT  
		Size: 32.9 MB (32873530 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ed3fa687d6e6b486ad53dc573be467145bf7f721dede68b36e9032e5775065d`  
		Last Modified: Thu, 17 Nov 2016 01:36:34 GMT  
		Size: 682.1 KB (682075 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a06669401b4fb939df4aaa20679aef837b07f73eda40586b1adfab72e182b9a8`  
		Last Modified: Thu, 17 Nov 2016 01:38:49 GMT  
		Size: 150.1 MB (150089910 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dcced5f9e695d95e616e08a2f123e42d5608ff095bab2cc3c4bf08b5c4a47ce2`  
		Last Modified: Thu, 17 Nov 2016 01:37:53 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:778a2b4bedb2b77a4176abbd748c81e026ab21f2cfb60832575daa06e75fa4d5`  
		Last Modified: Thu, 17 Nov 2016 01:41:25 GMT  
		Size: 3.4 MB (3440603 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:jade`

```console
$ docker pull ros@sha256:c5a7e6e1245130df311f7d1cbfaf3a57268fff948a71db0bc5098830cf43f72d
```

-	Platforms:
	-	linux; amd64

### `ros:jade` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **253.2 MB (253204230 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c4805e6323f14415da349b57ab497bbcf5e932b15942992621ac99c406887cb2`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 16 Nov 2016 20:57:47 GMT
ADD file:79ae73b5e33a497a33c1664e8e7129548273ee9d6ac9336b6ec940808a22a781 in / 
# Wed, 16 Nov 2016 20:57:50 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 16 Nov 2016 20:57:51 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 16 Nov 2016 20:57:52 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 16 Nov 2016 20:57:53 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 16 Nov 2016 20:57:54 GMT
CMD ["/bin/bash"]
# Thu, 17 Nov 2016 01:04:30 GMT
MAINTAINER Tully Foote tfoote+buildfarm@osrfoundation.org
# Thu, 17 Nov 2016 01:04:32 GMT
RUN locale-gen en_US.UTF-8
# Thu, 17 Nov 2016 01:04:32 GMT
ENV LANG=en_US.UTF-8
# Thu, 17 Nov 2016 01:04:34 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Thu, 17 Nov 2016 01:04:35 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu trusty main" > /etc/apt/sources.list.d/ros-latest.list
# Thu, 17 Nov 2016 01:05:10 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Thu, 17 Nov 2016 01:05:19 GMT
RUN rosdep init     && rosdep update
# Thu, 17 Nov 2016 01:06:51 GMT
ENV ROS_DISTRO=jade
# Thu, 17 Nov 2016 01:08:24 GMT
RUN apt-get update && apt-get install -y     ros-jade-ros-core=1.2.0-0*     && rm -rf /var/lib/apt/lists/*
# Thu, 17 Nov 2016 01:08:25 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Thu, 17 Nov 2016 01:08:25 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Thu, 17 Nov 2016 01:08:26 GMT
CMD ["bash"]
# Thu, 17 Nov 2016 01:11:13 GMT
MAINTAINER Tully Foote tfoote+buildfarm@osrfoundation.org
# Thu, 17 Nov 2016 01:11:30 GMT
RUN apt-get update && apt-get install -y     ros-jade-ros-base=1.2.0-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:ba76e97bb96ceeb4c4d76ecd4940c368f968e8df3637d8ff4fd0e0e57c8896c5`  
		Last Modified: Wed, 09 Nov 2016 20:42:07 GMT  
		Size: 65.7 MB (65702665 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d6181e6b42361332273bca37f0d1b983e3b45375b57db2c2a28fad62cc78bed`  
		Last Modified: Wed, 16 Nov 2016 21:00:28 GMT  
		Size: 71.6 KB (71557 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4854897be9ac6e924eab65553a8f81ed556f855c184f379dfb584742f0f3096b`  
		Last Modified: Wed, 16 Nov 2016 21:00:28 GMT  
		Size: 362.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4458f3097eefd9eae329e0c03584452127ad692ce35aa75fb64dc4308ace7e76`  
		Last Modified: Wed, 16 Nov 2016 21:00:28 GMT  
		Size: 681.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9989a8de1a9ecee5a5a075078dff0a2ffa6426039b4d03949f29afcf80f85906`  
		Last Modified: Wed, 16 Nov 2016 21:00:28 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c3f44b2499e139c00d424510989dc53db9b2a5db3b1163fd46894fed7eaf442`  
		Last Modified: Thu, 17 Nov 2016 01:36:38 GMT  
		Size: 329.2 KB (329192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:928b1539f704821020e6cc79019b2c436e2beb9da3d97840eda2d0f43acc917f`  
		Last Modified: Thu, 17 Nov 2016 01:36:36 GMT  
		Size: 13.1 KB (13075 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1d34b89dd404f3bb42ca362d09f54652c3ea88ed02918900420a7f343b7471d`  
		Last Modified: Thu, 17 Nov 2016 01:36:34 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fda7c14093b912542813e7721380a39572bbff9d6361ac00374ce83ca649f036`  
		Last Modified: Thu, 17 Nov 2016 01:36:49 GMT  
		Size: 32.9 MB (32873530 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ed3fa687d6e6b486ad53dc573be467145bf7f721dede68b36e9032e5775065d`  
		Last Modified: Thu, 17 Nov 2016 01:36:34 GMT  
		Size: 682.1 KB (682075 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a06669401b4fb939df4aaa20679aef837b07f73eda40586b1adfab72e182b9a8`  
		Last Modified: Thu, 17 Nov 2016 01:38:49 GMT  
		Size: 150.1 MB (150089910 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dcced5f9e695d95e616e08a2f123e42d5608ff095bab2cc3c4bf08b5c4a47ce2`  
		Last Modified: Thu, 17 Nov 2016 01:37:53 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:778a2b4bedb2b77a4176abbd748c81e026ab21f2cfb60832575daa06e75fa4d5`  
		Last Modified: Thu, 17 Nov 2016 01:41:25 GMT  
		Size: 3.4 MB (3440603 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:jade-robot`

```console
$ docker pull ros@sha256:b2d9b5dad66e1cf74c27e556a4cf8c83ecf621e139be32d8b730b91aa4969258
```

-	Platforms:
	-	linux; amd64

### `ros:jade-robot` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **321.3 MB (321299151 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:932251d0ac709cc242ac5dc6d2d05c05f429ceda4affc7695b076a0b6767933d`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 16 Nov 2016 20:57:47 GMT
ADD file:79ae73b5e33a497a33c1664e8e7129548273ee9d6ac9336b6ec940808a22a781 in / 
# Wed, 16 Nov 2016 20:57:50 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 16 Nov 2016 20:57:51 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 16 Nov 2016 20:57:52 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 16 Nov 2016 20:57:53 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 16 Nov 2016 20:57:54 GMT
CMD ["/bin/bash"]
# Thu, 17 Nov 2016 01:04:30 GMT
MAINTAINER Tully Foote tfoote+buildfarm@osrfoundation.org
# Thu, 17 Nov 2016 01:04:32 GMT
RUN locale-gen en_US.UTF-8
# Thu, 17 Nov 2016 01:04:32 GMT
ENV LANG=en_US.UTF-8
# Thu, 17 Nov 2016 01:04:34 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Thu, 17 Nov 2016 01:04:35 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu trusty main" > /etc/apt/sources.list.d/ros-latest.list
# Thu, 17 Nov 2016 01:05:10 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Thu, 17 Nov 2016 01:05:19 GMT
RUN rosdep init     && rosdep update
# Thu, 17 Nov 2016 01:06:51 GMT
ENV ROS_DISTRO=jade
# Thu, 17 Nov 2016 01:08:24 GMT
RUN apt-get update && apt-get install -y     ros-jade-ros-core=1.2.0-0*     && rm -rf /var/lib/apt/lists/*
# Thu, 17 Nov 2016 01:08:25 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Thu, 17 Nov 2016 01:08:25 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Thu, 17 Nov 2016 01:08:26 GMT
CMD ["bash"]
# Thu, 17 Nov 2016 01:11:13 GMT
MAINTAINER Tully Foote tfoote+buildfarm@osrfoundation.org
# Thu, 17 Nov 2016 01:11:30 GMT
RUN apt-get update && apt-get install -y     ros-jade-ros-base=1.2.0-0*     && rm -rf /var/lib/apt/lists/*
# Thu, 17 Nov 2016 01:15:31 GMT
MAINTAINER Tully Foote tfoote+buildfarm@osrfoundation.org
# Thu, 17 Nov 2016 01:19:11 GMT
RUN apt-get update && apt-get install -y     ros-jade-robot=1.2.0-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:ba76e97bb96ceeb4c4d76ecd4940c368f968e8df3637d8ff4fd0e0e57c8896c5`  
		Last Modified: Wed, 09 Nov 2016 20:42:07 GMT  
		Size: 65.7 MB (65702665 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d6181e6b42361332273bca37f0d1b983e3b45375b57db2c2a28fad62cc78bed`  
		Last Modified: Wed, 16 Nov 2016 21:00:28 GMT  
		Size: 71.6 KB (71557 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4854897be9ac6e924eab65553a8f81ed556f855c184f379dfb584742f0f3096b`  
		Last Modified: Wed, 16 Nov 2016 21:00:28 GMT  
		Size: 362.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4458f3097eefd9eae329e0c03584452127ad692ce35aa75fb64dc4308ace7e76`  
		Last Modified: Wed, 16 Nov 2016 21:00:28 GMT  
		Size: 681.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9989a8de1a9ecee5a5a075078dff0a2ffa6426039b4d03949f29afcf80f85906`  
		Last Modified: Wed, 16 Nov 2016 21:00:28 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c3f44b2499e139c00d424510989dc53db9b2a5db3b1163fd46894fed7eaf442`  
		Last Modified: Thu, 17 Nov 2016 01:36:38 GMT  
		Size: 329.2 KB (329192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:928b1539f704821020e6cc79019b2c436e2beb9da3d97840eda2d0f43acc917f`  
		Last Modified: Thu, 17 Nov 2016 01:36:36 GMT  
		Size: 13.1 KB (13075 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1d34b89dd404f3bb42ca362d09f54652c3ea88ed02918900420a7f343b7471d`  
		Last Modified: Thu, 17 Nov 2016 01:36:34 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fda7c14093b912542813e7721380a39572bbff9d6361ac00374ce83ca649f036`  
		Last Modified: Thu, 17 Nov 2016 01:36:49 GMT  
		Size: 32.9 MB (32873530 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ed3fa687d6e6b486ad53dc573be467145bf7f721dede68b36e9032e5775065d`  
		Last Modified: Thu, 17 Nov 2016 01:36:34 GMT  
		Size: 682.1 KB (682075 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a06669401b4fb939df4aaa20679aef837b07f73eda40586b1adfab72e182b9a8`  
		Last Modified: Thu, 17 Nov 2016 01:38:49 GMT  
		Size: 150.1 MB (150089910 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dcced5f9e695d95e616e08a2f123e42d5608ff095bab2cc3c4bf08b5c4a47ce2`  
		Last Modified: Thu, 17 Nov 2016 01:37:53 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:778a2b4bedb2b77a4176abbd748c81e026ab21f2cfb60832575daa06e75fa4d5`  
		Last Modified: Thu, 17 Nov 2016 01:41:25 GMT  
		Size: 3.4 MB (3440603 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b15acd57d634dc8dd721c0ae6cf915f098e13ba9285e3da8aaabd8bb4c4db744`  
		Last Modified: Thu, 17 Nov 2016 01:47:54 GMT  
		Size: 68.1 MB (68094921 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:jade-perception`

```console
$ docker pull ros@sha256:783e7d6cf63fac8186427061e726c968250fd29494ad6be337ba10c5f38f73f9
```

-	Platforms:
	-	linux; amd64

### `ros:jade-perception` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **520.6 MB (520599002 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f7285d7fded49d90b4f89abbb7c9196e6d38b1a8adf8d8374bf3920505403c04`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 16 Nov 2016 20:57:47 GMT
ADD file:79ae73b5e33a497a33c1664e8e7129548273ee9d6ac9336b6ec940808a22a781 in / 
# Wed, 16 Nov 2016 20:57:50 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 16 Nov 2016 20:57:51 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 16 Nov 2016 20:57:52 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 16 Nov 2016 20:57:53 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 16 Nov 2016 20:57:54 GMT
CMD ["/bin/bash"]
# Thu, 17 Nov 2016 01:04:30 GMT
MAINTAINER Tully Foote tfoote+buildfarm@osrfoundation.org
# Thu, 17 Nov 2016 01:04:32 GMT
RUN locale-gen en_US.UTF-8
# Thu, 17 Nov 2016 01:04:32 GMT
ENV LANG=en_US.UTF-8
# Thu, 17 Nov 2016 01:04:34 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Thu, 17 Nov 2016 01:04:35 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu trusty main" > /etc/apt/sources.list.d/ros-latest.list
# Thu, 17 Nov 2016 01:05:10 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Thu, 17 Nov 2016 01:05:19 GMT
RUN rosdep init     && rosdep update
# Thu, 17 Nov 2016 01:06:51 GMT
ENV ROS_DISTRO=jade
# Thu, 17 Nov 2016 01:08:24 GMT
RUN apt-get update && apt-get install -y     ros-jade-ros-core=1.2.0-0*     && rm -rf /var/lib/apt/lists/*
# Thu, 17 Nov 2016 01:08:25 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Thu, 17 Nov 2016 01:08:25 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Thu, 17 Nov 2016 01:08:26 GMT
CMD ["bash"]
# Thu, 17 Nov 2016 01:11:13 GMT
MAINTAINER Tully Foote tfoote+buildfarm@osrfoundation.org
# Thu, 17 Nov 2016 01:11:30 GMT
RUN apt-get update && apt-get install -y     ros-jade-ros-base=1.2.0-0*     && rm -rf /var/lib/apt/lists/*
# Thu, 17 Nov 2016 01:15:31 GMT
MAINTAINER Tully Foote tfoote+buildfarm@osrfoundation.org
# Thu, 17 Nov 2016 01:18:15 GMT
RUN apt-get update && apt-get install -y     ros-jade-perception=1.2.0-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:ba76e97bb96ceeb4c4d76ecd4940c368f968e8df3637d8ff4fd0e0e57c8896c5`  
		Last Modified: Wed, 09 Nov 2016 20:42:07 GMT  
		Size: 65.7 MB (65702665 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d6181e6b42361332273bca37f0d1b983e3b45375b57db2c2a28fad62cc78bed`  
		Last Modified: Wed, 16 Nov 2016 21:00:28 GMT  
		Size: 71.6 KB (71557 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4854897be9ac6e924eab65553a8f81ed556f855c184f379dfb584742f0f3096b`  
		Last Modified: Wed, 16 Nov 2016 21:00:28 GMT  
		Size: 362.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4458f3097eefd9eae329e0c03584452127ad692ce35aa75fb64dc4308ace7e76`  
		Last Modified: Wed, 16 Nov 2016 21:00:28 GMT  
		Size: 681.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9989a8de1a9ecee5a5a075078dff0a2ffa6426039b4d03949f29afcf80f85906`  
		Last Modified: Wed, 16 Nov 2016 21:00:28 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c3f44b2499e139c00d424510989dc53db9b2a5db3b1163fd46894fed7eaf442`  
		Last Modified: Thu, 17 Nov 2016 01:36:38 GMT  
		Size: 329.2 KB (329192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:928b1539f704821020e6cc79019b2c436e2beb9da3d97840eda2d0f43acc917f`  
		Last Modified: Thu, 17 Nov 2016 01:36:36 GMT  
		Size: 13.1 KB (13075 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1d34b89dd404f3bb42ca362d09f54652c3ea88ed02918900420a7f343b7471d`  
		Last Modified: Thu, 17 Nov 2016 01:36:34 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fda7c14093b912542813e7721380a39572bbff9d6361ac00374ce83ca649f036`  
		Last Modified: Thu, 17 Nov 2016 01:36:49 GMT  
		Size: 32.9 MB (32873530 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ed3fa687d6e6b486ad53dc573be467145bf7f721dede68b36e9032e5775065d`  
		Last Modified: Thu, 17 Nov 2016 01:36:34 GMT  
		Size: 682.1 KB (682075 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a06669401b4fb939df4aaa20679aef837b07f73eda40586b1adfab72e182b9a8`  
		Last Modified: Thu, 17 Nov 2016 01:38:49 GMT  
		Size: 150.1 MB (150089910 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dcced5f9e695d95e616e08a2f123e42d5608ff095bab2cc3c4bf08b5c4a47ce2`  
		Last Modified: Thu, 17 Nov 2016 01:37:53 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:778a2b4bedb2b77a4176abbd748c81e026ab21f2cfb60832575daa06e75fa4d5`  
		Last Modified: Thu, 17 Nov 2016 01:41:25 GMT  
		Size: 3.4 MB (3440603 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e198937ce58526ee5c04165f21d20b7dc45144c87c0b5518928e23e38a0326be`  
		Last Modified: Thu, 17 Nov 2016 01:47:03 GMT  
		Size: 267.4 MB (267394772 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:kinetic-ros-core`

```console
$ docker pull ros@sha256:ea625a056fa0f264fc863346f5e79e180b7131bb52a005d65249b38e09e0af04
```

-	Platforms:
	-	linux; amd64

### `ros:kinetic-ros-core` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **298.4 MB (298396895 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c17314ba935f18210ecaff2f75bf26429ce281c5ade486407ac9233303c9685b`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 16 Nov 2016 20:58:18 GMT
ADD file:abc033900893f6c7375050d1e1c2eed298d3d709145e3a7f7819de6e77f0f835 in / 
# Wed, 16 Nov 2016 20:58:23 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 16 Nov 2016 20:58:24 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 16 Nov 2016 20:58:25 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 16 Nov 2016 20:58:26 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 16 Nov 2016 20:58:26 GMT
CMD ["/bin/bash"]
# Thu, 17 Nov 2016 01:08:27 GMT
MAINTAINER Tully Foote tfoote+buildfarm@osrfoundation.org
# Thu, 17 Nov 2016 01:08:29 GMT
RUN locale-gen en_US.UTF-8
# Thu, 17 Nov 2016 01:08:29 GMT
ENV LANG=en_US.UTF-8
# Thu, 17 Nov 2016 01:08:32 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Thu, 17 Nov 2016 01:08:33 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Thu, 17 Nov 2016 01:09:07 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Thu, 17 Nov 2016 01:09:19 GMT
RUN rosdep init     && rosdep update
# Thu, 17 Nov 2016 01:09:19 GMT
ENV ROS_DISTRO=kinetic
# Thu, 17 Nov 2016 01:10:52 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.0-0*     && rm -rf /var/lib/apt/lists/*
# Thu, 17 Nov 2016 01:10:53 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Thu, 17 Nov 2016 01:10:53 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Thu, 17 Nov 2016 01:10:54 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:aed15891ba52590c33d862bb6a91ea016b7dc43a9080e48509f75f003d82952c`  
		Last Modified: Wed, 16 Nov 2016 21:01:59 GMT  
		Size: 50.1 MB (50066934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:773ae8583d14af4e500ce5a5fa2fedf079651fb1beb289fdf1a7146d147cd608`  
		Last Modified: Wed, 16 Nov 2016 21:01:46 GMT  
		Size: 823.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1d48771f782fed22e5d31dcb03e8970796ec80c350f3544844b5c4e131b959a`  
		Last Modified: Wed, 16 Nov 2016 21:01:46 GMT  
		Size: 516.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd3d6cd6c0cff04046b5cfc3688e599e56efe9abe35ff59c36fcf469eb289f81`  
		Last Modified: Wed, 16 Nov 2016 21:01:44 GMT  
		Size: 680.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ff6f8a9120c54ae6ebde4bea1a4f2bc8170d4a148f5f81eb731be74a071d71e`  
		Last Modified: Wed, 16 Nov 2016 21:01:48 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee24083ef379007039cce7776a07513e4bcb3c7bf8835ea8747191814dbaf01d`  
		Last Modified: Thu, 17 Nov 2016 01:39:17 GMT  
		Size: 339.4 KB (339409 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2137a97c95dc4355441edc25b23bcc5faaf8375bedc86c462c069867e82c9c3`  
		Last Modified: Thu, 17 Nov 2016 01:39:19 GMT  
		Size: 13.1 KB (13071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e1cbbe6d7f915a42c24d4e2538a80ae2a48519cce29898132f0352a76c19114`  
		Last Modified: Thu, 17 Nov 2016 01:39:14 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8271ba147b1da524eb6eb60a57fcb66b03e2bebae794c23c73643aa2bea03329`  
		Last Modified: Thu, 17 Nov 2016 01:39:43 GMT  
		Size: 57.6 MB (57646566 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d53170fd5913a374bf839a62a3ba51230fabd344398f44388a5ea0be8836b3dc`  
		Last Modified: Thu, 17 Nov 2016 01:39:14 GMT  
		Size: 682.1 KB (682078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8cce72a8a73921479f7cfa5a5731b5683d1404c15d42fd0065f0ea45c5f9e70c`  
		Last Modified: Thu, 17 Nov 2016 01:40:23 GMT  
		Size: 189.6 MB (189646236 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2bdec5a2a34b0aa15a8088982ba9e68bc0a8afff76f0be35c45507c5a615b91`  
		Last Modified: Thu, 17 Nov 2016 01:39:14 GMT  
		Size: 197.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:kinetic-ros-base`

```console
$ docker pull ros@sha256:cc4e480ae080182ea7b1fe9506bcdff2727e4f20bf0e20e86b2882efa5d1907e
```

-	Platforms:
	-	linux; amd64

### `ros:kinetic-ros-base` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **303.0 MB (303039861 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:da630ac0e699ed198e168d255a4e1e987a2031375c84d69995bdacbe3bba3905`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 16 Nov 2016 20:58:18 GMT
ADD file:abc033900893f6c7375050d1e1c2eed298d3d709145e3a7f7819de6e77f0f835 in / 
# Wed, 16 Nov 2016 20:58:23 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 16 Nov 2016 20:58:24 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 16 Nov 2016 20:58:25 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 16 Nov 2016 20:58:26 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 16 Nov 2016 20:58:26 GMT
CMD ["/bin/bash"]
# Thu, 17 Nov 2016 01:08:27 GMT
MAINTAINER Tully Foote tfoote+buildfarm@osrfoundation.org
# Thu, 17 Nov 2016 01:08:29 GMT
RUN locale-gen en_US.UTF-8
# Thu, 17 Nov 2016 01:08:29 GMT
ENV LANG=en_US.UTF-8
# Thu, 17 Nov 2016 01:08:32 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Thu, 17 Nov 2016 01:08:33 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Thu, 17 Nov 2016 01:09:07 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Thu, 17 Nov 2016 01:09:19 GMT
RUN rosdep init     && rosdep update
# Thu, 17 Nov 2016 01:09:19 GMT
ENV ROS_DISTRO=kinetic
# Thu, 17 Nov 2016 01:10:52 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.0-0*     && rm -rf /var/lib/apt/lists/*
# Thu, 17 Nov 2016 01:10:53 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Thu, 17 Nov 2016 01:10:53 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Thu, 17 Nov 2016 01:10:54 GMT
CMD ["bash"]
# Thu, 17 Nov 2016 01:11:30 GMT
MAINTAINER Tully Foote tfoote+buildfarm@osrfoundation.org
# Thu, 17 Nov 2016 01:11:41 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.0-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:aed15891ba52590c33d862bb6a91ea016b7dc43a9080e48509f75f003d82952c`  
		Last Modified: Wed, 16 Nov 2016 21:01:59 GMT  
		Size: 50.1 MB (50066934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:773ae8583d14af4e500ce5a5fa2fedf079651fb1beb289fdf1a7146d147cd608`  
		Last Modified: Wed, 16 Nov 2016 21:01:46 GMT  
		Size: 823.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1d48771f782fed22e5d31dcb03e8970796ec80c350f3544844b5c4e131b959a`  
		Last Modified: Wed, 16 Nov 2016 21:01:46 GMT  
		Size: 516.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd3d6cd6c0cff04046b5cfc3688e599e56efe9abe35ff59c36fcf469eb289f81`  
		Last Modified: Wed, 16 Nov 2016 21:01:44 GMT  
		Size: 680.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ff6f8a9120c54ae6ebde4bea1a4f2bc8170d4a148f5f81eb731be74a071d71e`  
		Last Modified: Wed, 16 Nov 2016 21:01:48 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee24083ef379007039cce7776a07513e4bcb3c7bf8835ea8747191814dbaf01d`  
		Last Modified: Thu, 17 Nov 2016 01:39:17 GMT  
		Size: 339.4 KB (339409 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2137a97c95dc4355441edc25b23bcc5faaf8375bedc86c462c069867e82c9c3`  
		Last Modified: Thu, 17 Nov 2016 01:39:19 GMT  
		Size: 13.1 KB (13071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e1cbbe6d7f915a42c24d4e2538a80ae2a48519cce29898132f0352a76c19114`  
		Last Modified: Thu, 17 Nov 2016 01:39:14 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8271ba147b1da524eb6eb60a57fcb66b03e2bebae794c23c73643aa2bea03329`  
		Last Modified: Thu, 17 Nov 2016 01:39:43 GMT  
		Size: 57.6 MB (57646566 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d53170fd5913a374bf839a62a3ba51230fabd344398f44388a5ea0be8836b3dc`  
		Last Modified: Thu, 17 Nov 2016 01:39:14 GMT  
		Size: 682.1 KB (682078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8cce72a8a73921479f7cfa5a5731b5683d1404c15d42fd0065f0ea45c5f9e70c`  
		Last Modified: Thu, 17 Nov 2016 01:40:23 GMT  
		Size: 189.6 MB (189646236 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2bdec5a2a34b0aa15a8088982ba9e68bc0a8afff76f0be35c45507c5a615b91`  
		Last Modified: Thu, 17 Nov 2016 01:39:14 GMT  
		Size: 197.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3556e60366e33e7fe568e39eae5bc0b7a194a3cb107d811556ddb37c70c3d4f3`  
		Last Modified: Thu, 17 Nov 2016 01:42:07 GMT  
		Size: 4.6 MB (4642966 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:kinetic`

```console
$ docker pull ros@sha256:8086ad520f80f93f0d4b629813f4e6bc2bcacbe68cf0c1472ed7b2f7c51cd839
```

-	Platforms:
	-	linux; amd64

### `ros:kinetic` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **302.8 MB (302795104 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0d4a564bd5d1fa830ddb372a3d6537bf35fd4d6e60ff50c398f34876d017661c`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 13 Oct 2016 21:13:17 GMT
ADD file:b1cd0e54ba28cb1d6db4b93f98d5e02f5e2bcd96c55cb91731ba499861001e30 in / 
# Thu, 13 Oct 2016 21:13:18 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 13 Oct 2016 21:13:19 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 13 Oct 2016 21:13:20 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 13 Oct 2016 21:13:21 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 13 Oct 2016 21:13:21 GMT
CMD ["/bin/bash"]
# Thu, 13 Oct 2016 23:42:16 GMT
MAINTAINER Tully Foote tfoote+buildfarm@osrfoundation.org
# Thu, 13 Oct 2016 23:42:18 GMT
RUN locale-gen en_US.UTF-8
# Thu, 13 Oct 2016 23:42:18 GMT
ENV LANG=en_US.UTF-8
# Thu, 13 Oct 2016 23:42:21 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Thu, 13 Oct 2016 23:42:21 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Thu, 13 Oct 2016 23:43:00 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Thu, 13 Oct 2016 23:43:10 GMT
RUN rosdep init     && rosdep update
# Thu, 13 Oct 2016 23:43:10 GMT
ENV ROS_DISTRO=kinetic
# Thu, 13 Oct 2016 23:44:41 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.0-0*     && rm -rf /var/lib/apt/lists/*
# Thu, 13 Oct 2016 23:44:43 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Thu, 13 Oct 2016 23:44:43 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Thu, 13 Oct 2016 23:44:44 GMT
CMD ["bash"]
# Fri, 14 Oct 2016 00:30:15 GMT
MAINTAINER Tully Foote tfoote+buildfarm@osrfoundation.org
# Fri, 14 Oct 2016 00:30:39 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.0-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:6bbedd9b76a496816d86a0af731ea984f40467ef8fb23be752f801cb80436ac6`  
		Last Modified: Wed, 12 Oct 2016 16:22:30 GMT  
		Size: 49.9 MB (49866926 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc19d60a83f11bbddc7bd2dfca6095b49100314bfde61d83729112a6b6e11d48`  
		Last Modified: Thu, 13 Oct 2016 21:15:32 GMT  
		Size: 824.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de413bb911fd848383ef2e5068a42c258c898d6ee869fb441fb2391eb327b576`  
		Last Modified: Thu, 13 Oct 2016 21:15:31 GMT  
		Size: 444.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2879a7ad31445fe2cea410b8ba76704003c11ee05c0a4d32d1113009ea1a1aae`  
		Last Modified: Thu, 13 Oct 2016 21:15:31 GMT  
		Size: 678.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:668604fde02e75dddb4b44c80d4ce20baaac4832c41c3a945f4a236cd7d2f164`  
		Last Modified: Thu, 13 Oct 2016 21:15:31 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd0806b915f4b34cb1a42120b0b6389c0fd725c08dfae1bc2a06dbc0e0d73156`  
		Last Modified: Thu, 13 Oct 2016 23:44:55 GMT  
		Size: 339.4 KB (339414 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ab439ac98e6868456c61932143d2bfb6f67f743352ad4a926331c6ba1838024`  
		Last Modified: Thu, 13 Oct 2016 23:44:54 GMT  
		Size: 13.1 KB (13070 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d742bde6b6cf911e1d462e0cad483e136e1ff5ca486e90120debda0f0d3e4f6f`  
		Last Modified: Thu, 13 Oct 2016 23:44:52 GMT  
		Size: 218.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5da425a0a12c8354e8a6cbcf1b8fcf73ee730bf74c5b559dd8b3ac501faf18c`  
		Last Modified: Thu, 13 Oct 2016 23:45:15 GMT  
		Size: 57.6 MB (57628527 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24514e2f583f01ba2f2fca8c0130e5ae5f4dd5777743bf4295757e34525d5260`  
		Last Modified: Thu, 13 Oct 2016 23:44:52 GMT  
		Size: 669.0 KB (669036 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2bcfdb89e95beb8fc598a41f716481469247bee9087a53a95ba1e40924fea9cd`  
		Last Modified: Thu, 13 Oct 2016 23:45:45 GMT  
		Size: 189.6 MB (189631046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e27f11b08719e73ddf696f0cda84268952978c17ebd49895163ecfc291eb45f7`  
		Last Modified: Thu, 13 Oct 2016 23:44:53 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87a9ed6eebd73bec4dc9fbd514e1072a9a1e479dd9338b2a91f14f691aeda498`  
		Last Modified: Fri, 14 Oct 2016 00:30:49 GMT  
		Size: 4.6 MB (4644567 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:latest`

```console
$ docker pull ros@sha256:cc4e480ae080182ea7b1fe9506bcdff2727e4f20bf0e20e86b2882efa5d1907e
```

-	Platforms:
	-	linux; amd64

### `ros:latest` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **303.0 MB (303039861 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:da630ac0e699ed198e168d255a4e1e987a2031375c84d69995bdacbe3bba3905`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 16 Nov 2016 20:58:18 GMT
ADD file:abc033900893f6c7375050d1e1c2eed298d3d709145e3a7f7819de6e77f0f835 in / 
# Wed, 16 Nov 2016 20:58:23 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 16 Nov 2016 20:58:24 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 16 Nov 2016 20:58:25 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 16 Nov 2016 20:58:26 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 16 Nov 2016 20:58:26 GMT
CMD ["/bin/bash"]
# Thu, 17 Nov 2016 01:08:27 GMT
MAINTAINER Tully Foote tfoote+buildfarm@osrfoundation.org
# Thu, 17 Nov 2016 01:08:29 GMT
RUN locale-gen en_US.UTF-8
# Thu, 17 Nov 2016 01:08:29 GMT
ENV LANG=en_US.UTF-8
# Thu, 17 Nov 2016 01:08:32 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Thu, 17 Nov 2016 01:08:33 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Thu, 17 Nov 2016 01:09:07 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Thu, 17 Nov 2016 01:09:19 GMT
RUN rosdep init     && rosdep update
# Thu, 17 Nov 2016 01:09:19 GMT
ENV ROS_DISTRO=kinetic
# Thu, 17 Nov 2016 01:10:52 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.0-0*     && rm -rf /var/lib/apt/lists/*
# Thu, 17 Nov 2016 01:10:53 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Thu, 17 Nov 2016 01:10:53 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Thu, 17 Nov 2016 01:10:54 GMT
CMD ["bash"]
# Thu, 17 Nov 2016 01:11:30 GMT
MAINTAINER Tully Foote tfoote+buildfarm@osrfoundation.org
# Thu, 17 Nov 2016 01:11:41 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.0-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:aed15891ba52590c33d862bb6a91ea016b7dc43a9080e48509f75f003d82952c`  
		Last Modified: Wed, 16 Nov 2016 21:01:59 GMT  
		Size: 50.1 MB (50066934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:773ae8583d14af4e500ce5a5fa2fedf079651fb1beb289fdf1a7146d147cd608`  
		Last Modified: Wed, 16 Nov 2016 21:01:46 GMT  
		Size: 823.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1d48771f782fed22e5d31dcb03e8970796ec80c350f3544844b5c4e131b959a`  
		Last Modified: Wed, 16 Nov 2016 21:01:46 GMT  
		Size: 516.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd3d6cd6c0cff04046b5cfc3688e599e56efe9abe35ff59c36fcf469eb289f81`  
		Last Modified: Wed, 16 Nov 2016 21:01:44 GMT  
		Size: 680.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ff6f8a9120c54ae6ebde4bea1a4f2bc8170d4a148f5f81eb731be74a071d71e`  
		Last Modified: Wed, 16 Nov 2016 21:01:48 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee24083ef379007039cce7776a07513e4bcb3c7bf8835ea8747191814dbaf01d`  
		Last Modified: Thu, 17 Nov 2016 01:39:17 GMT  
		Size: 339.4 KB (339409 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2137a97c95dc4355441edc25b23bcc5faaf8375bedc86c462c069867e82c9c3`  
		Last Modified: Thu, 17 Nov 2016 01:39:19 GMT  
		Size: 13.1 KB (13071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e1cbbe6d7f915a42c24d4e2538a80ae2a48519cce29898132f0352a76c19114`  
		Last Modified: Thu, 17 Nov 2016 01:39:14 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8271ba147b1da524eb6eb60a57fcb66b03e2bebae794c23c73643aa2bea03329`  
		Last Modified: Thu, 17 Nov 2016 01:39:43 GMT  
		Size: 57.6 MB (57646566 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d53170fd5913a374bf839a62a3ba51230fabd344398f44388a5ea0be8836b3dc`  
		Last Modified: Thu, 17 Nov 2016 01:39:14 GMT  
		Size: 682.1 KB (682078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8cce72a8a73921479f7cfa5a5731b5683d1404c15d42fd0065f0ea45c5f9e70c`  
		Last Modified: Thu, 17 Nov 2016 01:40:23 GMT  
		Size: 189.6 MB (189646236 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2bdec5a2a34b0aa15a8088982ba9e68bc0a8afff76f0be35c45507c5a615b91`  
		Last Modified: Thu, 17 Nov 2016 01:39:14 GMT  
		Size: 197.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3556e60366e33e7fe568e39eae5bc0b7a194a3cb107d811556ddb37c70c3d4f3`  
		Last Modified: Thu, 17 Nov 2016 01:42:07 GMT  
		Size: 4.6 MB (4642966 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:kinetic-robot`

```console
$ docker pull ros@sha256:d3d635fff7ebd9550c8def10fbe19406540c361906825b2c085339ca5d8f93d3
```

-	Platforms:
	-	linux; amd64

### `ros:kinetic-robot` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **434.5 MB (434505253 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5a1511ef5791a27d395ada80014ff5d0d710ba2cc5fa45bdcf2be121f2c71ad7`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 16 Nov 2016 20:58:18 GMT
ADD file:abc033900893f6c7375050d1e1c2eed298d3d709145e3a7f7819de6e77f0f835 in / 
# Wed, 16 Nov 2016 20:58:23 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 16 Nov 2016 20:58:24 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 16 Nov 2016 20:58:25 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 16 Nov 2016 20:58:26 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 16 Nov 2016 20:58:26 GMT
CMD ["/bin/bash"]
# Thu, 17 Nov 2016 01:08:27 GMT
MAINTAINER Tully Foote tfoote+buildfarm@osrfoundation.org
# Thu, 17 Nov 2016 01:08:29 GMT
RUN locale-gen en_US.UTF-8
# Thu, 17 Nov 2016 01:08:29 GMT
ENV LANG=en_US.UTF-8
# Thu, 17 Nov 2016 01:08:32 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Thu, 17 Nov 2016 01:08:33 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Thu, 17 Nov 2016 01:09:07 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Thu, 17 Nov 2016 01:09:19 GMT
RUN rosdep init     && rosdep update
# Thu, 17 Nov 2016 01:09:19 GMT
ENV ROS_DISTRO=kinetic
# Thu, 17 Nov 2016 01:10:52 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.0-0*     && rm -rf /var/lib/apt/lists/*
# Thu, 17 Nov 2016 01:10:53 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Thu, 17 Nov 2016 01:10:53 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Thu, 17 Nov 2016 01:10:54 GMT
CMD ["bash"]
# Thu, 17 Nov 2016 01:11:30 GMT
MAINTAINER Tully Foote tfoote+buildfarm@osrfoundation.org
# Thu, 17 Nov 2016 01:11:41 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.0-0*     && rm -rf /var/lib/apt/lists/*
# Thu, 17 Nov 2016 01:19:13 GMT
MAINTAINER Tully Foote tfoote+buildfarm@osrfoundation.org
# Thu, 17 Nov 2016 01:24:20 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-robot=1.3.0-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:aed15891ba52590c33d862bb6a91ea016b7dc43a9080e48509f75f003d82952c`  
		Last Modified: Wed, 16 Nov 2016 21:01:59 GMT  
		Size: 50.1 MB (50066934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:773ae8583d14af4e500ce5a5fa2fedf079651fb1beb289fdf1a7146d147cd608`  
		Last Modified: Wed, 16 Nov 2016 21:01:46 GMT  
		Size: 823.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1d48771f782fed22e5d31dcb03e8970796ec80c350f3544844b5c4e131b959a`  
		Last Modified: Wed, 16 Nov 2016 21:01:46 GMT  
		Size: 516.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd3d6cd6c0cff04046b5cfc3688e599e56efe9abe35ff59c36fcf469eb289f81`  
		Last Modified: Wed, 16 Nov 2016 21:01:44 GMT  
		Size: 680.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ff6f8a9120c54ae6ebde4bea1a4f2bc8170d4a148f5f81eb731be74a071d71e`  
		Last Modified: Wed, 16 Nov 2016 21:01:48 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee24083ef379007039cce7776a07513e4bcb3c7bf8835ea8747191814dbaf01d`  
		Last Modified: Thu, 17 Nov 2016 01:39:17 GMT  
		Size: 339.4 KB (339409 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2137a97c95dc4355441edc25b23bcc5faaf8375bedc86c462c069867e82c9c3`  
		Last Modified: Thu, 17 Nov 2016 01:39:19 GMT  
		Size: 13.1 KB (13071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e1cbbe6d7f915a42c24d4e2538a80ae2a48519cce29898132f0352a76c19114`  
		Last Modified: Thu, 17 Nov 2016 01:39:14 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8271ba147b1da524eb6eb60a57fcb66b03e2bebae794c23c73643aa2bea03329`  
		Last Modified: Thu, 17 Nov 2016 01:39:43 GMT  
		Size: 57.6 MB (57646566 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d53170fd5913a374bf839a62a3ba51230fabd344398f44388a5ea0be8836b3dc`  
		Last Modified: Thu, 17 Nov 2016 01:39:14 GMT  
		Size: 682.1 KB (682078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8cce72a8a73921479f7cfa5a5731b5683d1404c15d42fd0065f0ea45c5f9e70c`  
		Last Modified: Thu, 17 Nov 2016 01:40:23 GMT  
		Size: 189.6 MB (189646236 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2bdec5a2a34b0aa15a8088982ba9e68bc0a8afff76f0be35c45507c5a615b91`  
		Last Modified: Thu, 17 Nov 2016 01:39:14 GMT  
		Size: 197.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3556e60366e33e7fe568e39eae5bc0b7a194a3cb107d811556ddb37c70c3d4f3`  
		Last Modified: Thu, 17 Nov 2016 01:42:07 GMT  
		Size: 4.6 MB (4642966 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5530261e01e794d35d0931c263bca3f8d24c6a7a06401273f6b3c7359d981b20`  
		Last Modified: Thu, 17 Nov 2016 01:51:42 GMT  
		Size: 131.5 MB (131465392 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:kinetic-perception`

```console
$ docker pull ros@sha256:ecf06f1973e59394679eb7c5c90dc780de545fec2f049564d47686657e82d9f8
```

-	Platforms:
	-	linux; amd64

### `ros:kinetic-perception` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **706.7 MB (706729887 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:db8128bd733bfa18c837c400d2f780491c424df8c58660b832b275ecaf916227`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 16 Nov 2016 20:58:18 GMT
ADD file:abc033900893f6c7375050d1e1c2eed298d3d709145e3a7f7819de6e77f0f835 in / 
# Wed, 16 Nov 2016 20:58:23 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 16 Nov 2016 20:58:24 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 16 Nov 2016 20:58:25 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 16 Nov 2016 20:58:26 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 16 Nov 2016 20:58:26 GMT
CMD ["/bin/bash"]
# Thu, 17 Nov 2016 01:08:27 GMT
MAINTAINER Tully Foote tfoote+buildfarm@osrfoundation.org
# Thu, 17 Nov 2016 01:08:29 GMT
RUN locale-gen en_US.UTF-8
# Thu, 17 Nov 2016 01:08:29 GMT
ENV LANG=en_US.UTF-8
# Thu, 17 Nov 2016 01:08:32 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Thu, 17 Nov 2016 01:08:33 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Thu, 17 Nov 2016 01:09:07 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Thu, 17 Nov 2016 01:09:19 GMT
RUN rosdep init     && rosdep update
# Thu, 17 Nov 2016 01:09:19 GMT
ENV ROS_DISTRO=kinetic
# Thu, 17 Nov 2016 01:10:52 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.0-0*     && rm -rf /var/lib/apt/lists/*
# Thu, 17 Nov 2016 01:10:53 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Thu, 17 Nov 2016 01:10:53 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Thu, 17 Nov 2016 01:10:54 GMT
CMD ["bash"]
# Thu, 17 Nov 2016 01:11:30 GMT
MAINTAINER Tully Foote tfoote+buildfarm@osrfoundation.org
# Thu, 17 Nov 2016 01:11:41 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.0-0*     && rm -rf /var/lib/apt/lists/*
# Thu, 17 Nov 2016 01:19:13 GMT
MAINTAINER Tully Foote tfoote+buildfarm@osrfoundation.org
# Thu, 17 Nov 2016 01:22:46 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-perception=1.3.0-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:aed15891ba52590c33d862bb6a91ea016b7dc43a9080e48509f75f003d82952c`  
		Last Modified: Wed, 16 Nov 2016 21:01:59 GMT  
		Size: 50.1 MB (50066934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:773ae8583d14af4e500ce5a5fa2fedf079651fb1beb289fdf1a7146d147cd608`  
		Last Modified: Wed, 16 Nov 2016 21:01:46 GMT  
		Size: 823.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1d48771f782fed22e5d31dcb03e8970796ec80c350f3544844b5c4e131b959a`  
		Last Modified: Wed, 16 Nov 2016 21:01:46 GMT  
		Size: 516.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd3d6cd6c0cff04046b5cfc3688e599e56efe9abe35ff59c36fcf469eb289f81`  
		Last Modified: Wed, 16 Nov 2016 21:01:44 GMT  
		Size: 680.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ff6f8a9120c54ae6ebde4bea1a4f2bc8170d4a148f5f81eb731be74a071d71e`  
		Last Modified: Wed, 16 Nov 2016 21:01:48 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee24083ef379007039cce7776a07513e4bcb3c7bf8835ea8747191814dbaf01d`  
		Last Modified: Thu, 17 Nov 2016 01:39:17 GMT  
		Size: 339.4 KB (339409 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2137a97c95dc4355441edc25b23bcc5faaf8375bedc86c462c069867e82c9c3`  
		Last Modified: Thu, 17 Nov 2016 01:39:19 GMT  
		Size: 13.1 KB (13071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e1cbbe6d7f915a42c24d4e2538a80ae2a48519cce29898132f0352a76c19114`  
		Last Modified: Thu, 17 Nov 2016 01:39:14 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8271ba147b1da524eb6eb60a57fcb66b03e2bebae794c23c73643aa2bea03329`  
		Last Modified: Thu, 17 Nov 2016 01:39:43 GMT  
		Size: 57.6 MB (57646566 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d53170fd5913a374bf839a62a3ba51230fabd344398f44388a5ea0be8836b3dc`  
		Last Modified: Thu, 17 Nov 2016 01:39:14 GMT  
		Size: 682.1 KB (682078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8cce72a8a73921479f7cfa5a5731b5683d1404c15d42fd0065f0ea45c5f9e70c`  
		Last Modified: Thu, 17 Nov 2016 01:40:23 GMT  
		Size: 189.6 MB (189646236 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2bdec5a2a34b0aa15a8088982ba9e68bc0a8afff76f0be35c45507c5a615b91`  
		Last Modified: Thu, 17 Nov 2016 01:39:14 GMT  
		Size: 197.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3556e60366e33e7fe568e39eae5bc0b7a194a3cb107d811556ddb37c70c3d4f3`  
		Last Modified: Thu, 17 Nov 2016 01:42:07 GMT  
		Size: 4.6 MB (4642966 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21a1eb6eabdaeba5656c54bd1c17aa5a4d4b6de5fd4405aab4a2254d26e46f76`  
		Last Modified: Thu, 17 Nov 2016 01:50:28 GMT  
		Size: 403.7 MB (403690026 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
