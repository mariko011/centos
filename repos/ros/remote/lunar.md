## `ros:lunar`

```console
$ docker pull ros@sha256:ed0b4012841e62ea5dcc8555429fb25d866c048a0b5939a1f84229285e0d7b51
```

-	Platforms:
	-	linux; amd64

### `ros:lunar` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **304.5 MB (304497305 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a95f08c6a733c3e2eb608f8f8fe82bc5de7d1dc345e9824c8ab7f5d2797b6f0c`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Jun 2017 23:18:13 GMT
ADD file:c251a21fbe3a651352aff2e222db19b7b179e1640cf4e9b75f55fd6f85f40366 in / 
# Tue, 20 Jun 2017 23:18:35 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 20 Jun 2017 23:18:37 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 20 Jun 2017 23:18:39 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 20 Jun 2017 23:19:03 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 20 Jun 2017 23:19:04 GMT
CMD ["/bin/bash"]
# Fri, 23 Jun 2017 08:46:07 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Fri, 23 Jun 2017 08:46:09 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 23 Jun 2017 08:46:43 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 08:46:44 GMT
ENV LANG=C.UTF-8
# Fri, 23 Jun 2017 08:46:45 GMT
ENV LC_ALL=C.UTF-8
# Fri, 23 Jun 2017 08:46:56 GMT
RUN rosdep init     && rosdep update
# Fri, 23 Jun 2017 09:23:24 GMT
ENV ROS_DISTRO=lunar
# Fri, 23 Jun 2017 09:24:49 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 09:24:51 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Fri, 23 Jun 2017 09:24:52 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 23 Jun 2017 09:24:52 GMT
CMD ["bash"]
# Fri, 23 Jun 2017 09:25:31 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:75c416ea735c42a4a0b2c8f31946a1918adc7853373c411abbec424391fb989c`  
		Last Modified: Tue, 20 Jun 2017 23:30:15 GMT  
		Size: 47.1 MB (47103294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6ff40b6d658359b7b428e76db4b9f6f921e47dda0a9a25537c09cc0f031c206`  
		Last Modified: Tue, 20 Jun 2017 23:30:01 GMT  
		Size: 814.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7050fc1f338be18d965236f3bf937073e82d3846e362b4525815be483984ffb`  
		Last Modified: Tue, 20 Jun 2017 23:30:01 GMT  
		Size: 513.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0ffb5cf6ba990b18c314f5758f6e68609f1e32b3d35769b74264150d317b728`  
		Last Modified: Tue, 20 Jun 2017 23:30:01 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be232718519c940b04bc576366a58df53418d8e8bdb605f4e3ca66775735fdca`  
		Last Modified: Tue, 20 Jun 2017 23:30:01 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc23940967919912fae22aaa3d2ab9815e68f84ba345a14d465ffa7a8027301c`  
		Last Modified: Sat, 24 Jun 2017 22:51:53 GMT  
		Size: 13.1 KB (13077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40f33efb9dd731cc599652e5d1e5e048c55e3b741e4eef7ba29478a7d6b965ae`  
		Last Modified: Sat, 24 Jun 2017 22:51:52 GMT  
		Size: 220.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e943c3b89a527163392fca3c3ee545f8b63c8d16e42b3f060f322cfbeaf5211b`  
		Last Modified: Sat, 24 Jun 2017 22:52:21 GMT  
		Size: 58.8 MB (58779327 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:249d2945e9dbc1b83272ea30fbb612cc457ce7be140df09593fe1b878019272c`  
		Last Modified: Sat, 24 Jun 2017 22:51:53 GMT  
		Size: 730.0 KB (730010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4bc245c5ecd2d447a7132adf248d74d74173f32522b8712bab8f46af08f0e46`  
		Last Modified: Sat, 24 Jun 2017 23:08:21 GMT  
		Size: 193.0 MB (193045035 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d115dba51f99c3014f980c4859f6f924d556c29df1b3e561befc6d65d41f091`  
		Last Modified: Sat, 24 Jun 2017 23:07:31 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38468e92550333102dcb6b0b209c33f747d9a9c204c3e7d3f524fa99b6da6b9a`  
		Last Modified: Sat, 24 Jun 2017 23:08:57 GMT  
		Size: 4.8 MB (4823807 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
