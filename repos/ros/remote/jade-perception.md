## `ros:jade-perception`

```console
$ docker pull ros@sha256:bc4082bb22ea4e13455acfa6f7c0cc0f953d474e7b3b026739fc4f7b04ce740e
```

-	Platforms:
	-	linux; amd64

### `ros:jade-perception` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **520.6 MB (520627891 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa956e619a47ce6735894a39cd0c4d1fa03d2e9c43afb698dade65b0cb005e54`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 20 Jan 2017 21:42:50 GMT
ADD file:c383f1cde338921411168cc34a10e3a221ae55e569768e1551274f8fddc54415 in / 
# Fri, 20 Jan 2017 21:42:52 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 20 Jan 2017 21:42:54 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 20 Jan 2017 21:42:55 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 20 Jan 2017 21:42:57 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 20 Jan 2017 21:42:57 GMT
CMD ["/bin/bash"]
# Fri, 27 Jan 2017 20:05:39 GMT
RUN locale-gen en_US.UTF-8
# Fri, 27 Jan 2017 20:05:39 GMT
ENV LANG=en_US.UTF-8
# Fri, 27 Jan 2017 20:05:41 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Fri, 27 Jan 2017 20:05:42 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu trusty main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 27 Jan 2017 20:06:19 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 27 Jan 2017 20:06:27 GMT
RUN rosdep init     && rosdep update
# Fri, 27 Jan 2017 20:11:37 GMT
ENV ROS_DISTRO=jade
# Fri, 27 Jan 2017 20:13:01 GMT
RUN apt-get update && apt-get install -y     ros-jade-ros-core=1.2.0-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 27 Jan 2017 20:13:03 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Fri, 27 Jan 2017 20:13:03 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 27 Jan 2017 20:13:03 GMT
CMD ["bash"]
# Fri, 27 Jan 2017 20:13:19 GMT
RUN apt-get update && apt-get install -y     ros-jade-ros-base=1.2.0-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 27 Jan 2017 20:16:46 GMT
RUN apt-get update && apt-get install -y     ros-jade-perception=1.2.0-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:c60055a51d748f34ebd4a7c4872c5d727e0ef96fbf9cd9b248e931b222828c23`  
		Last Modified: Fri, 20 Jan 2017 21:48:47 GMT  
		Size: 65.7 MB (65693853 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:755da0cdb7d25b74b205ff1eccd26ea4eede693ec7cf2150ae4c1caafe6394b1`  
		Last Modified: Fri, 20 Jan 2017 21:48:27 GMT  
		Size: 71.6 KB (71553 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:969d017f67e62ae323a3e8077e3ac4a5b1bf4a27c349148c1f6c28bd6ca3bbb8`  
		Last Modified: Fri, 20 Jan 2017 21:48:27 GMT  
		Size: 358.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37c9a911359525fa28aa16715d36954723a8924492b5216cc97d1099251a5023`  
		Last Modified: Fri, 20 Jan 2017 21:48:26 GMT  
		Size: 681.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3d9f847978686a04b694253ea6c6873fb60a495dc742a92d097ccc3c2855641`  
		Last Modified: Fri, 20 Jan 2017 21:48:27 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff9b1ed4886d390c4c4681ee44982ca9c1964d80fcb93750ae582adf293b160d`  
		Last Modified: Fri, 27 Jan 2017 20:42:53 GMT  
		Size: 329.2 KB (329185 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:372af9e0750e9c4eea67ea2e7159b04461649589c2b7434ca17b563a34bfdf3a`  
		Last Modified: Fri, 27 Jan 2017 20:42:52 GMT  
		Size: 13.1 KB (13072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0e2580aab5b14faeac628216ab924184d98302add82c88f011931f77c2f4f08`  
		Last Modified: Fri, 27 Jan 2017 20:42:51 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6ae8d6703c8e30c66663203b33645629894a4c4038be9961f72ea3780f677d8`  
		Last Modified: Fri, 27 Jan 2017 20:43:04 GMT  
		Size: 32.9 MB (32877408 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1950e9214929c16a8700a5e70c50a94b08f4d53f41ebee3751f7bf6ef67fa61c`  
		Last Modified: Fri, 27 Jan 2017 20:42:50 GMT  
		Size: 703.1 KB (703148 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:070f7e55c2266ff6988b0b105e8c2d8c6a8b19b8e3f15059fadf89f5c0673308`  
		Last Modified: Fri, 27 Jan 2017 20:48:22 GMT  
		Size: 150.1 MB (150094771 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:294ebefe746d358e06e203432898850183d0cde1ff67b7f15bfb0241643591e3`  
		Last Modified: Fri, 27 Jan 2017 20:47:28 GMT  
		Size: 197.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c649c8f3149ef8e57d606e90b79ee7511cd9f895fa5588fda2405a334c11252`  
		Last Modified: Fri, 27 Jan 2017 20:48:46 GMT  
		Size: 3.4 MB (3441715 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d4b68dbfbe6f1b9d7890de95c0477ce18732557ae8d7074dee3ab04ba2f0f87`  
		Last Modified: Fri, 27 Jan 2017 20:51:38 GMT  
		Size: 267.4 MB (267401566 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
