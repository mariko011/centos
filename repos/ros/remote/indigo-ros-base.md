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
