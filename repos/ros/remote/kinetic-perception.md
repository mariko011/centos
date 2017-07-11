## `ros:kinetic-perception`

```console
$ docker pull ros@sha256:a2eef44e93a51c393c2cec64c0293876c06ac640ed8abd87a96c380b2c1569a0
```

-	Platforms:
	-	linux; amd64

### `ros:kinetic-perception` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **688.7 MB (688680313 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:15775a5496cf9f695a73599e675555be7b3dcf1c62ebcf754b3ec634825d7008`
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
# Tue, 11 Jul 2017 00:45:51 GMT
RUN apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 11 Jul 2017 00:45:52 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 11 Jul 2017 00:46:26 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 11 Jul 2017 00:46:27 GMT
ENV LANG=C.UTF-8
# Tue, 11 Jul 2017 00:46:27 GMT
ENV LC_ALL=C.UTF-8
# Tue, 11 Jul 2017 00:46:37 GMT
RUN rosdep init     && rosdep update
# Tue, 11 Jul 2017 00:46:38 GMT
ENV ROS_DISTRO=kinetic
# Tue, 11 Jul 2017 00:47:58 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 11 Jul 2017 00:48:00 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 11 Jul 2017 00:48:00 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 11 Jul 2017 00:48:02 GMT
CMD ["bash"]
# Tue, 11 Jul 2017 00:48:20 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 11 Jul 2017 00:53:03 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-perception=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
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
	-	`sha256:f3a5b290a9ea00d9072a7837994ad2b6586be2513f60b9c609170ad07afa5403`  
		Last Modified: Tue, 11 Jul 2017 01:07:50 GMT  
		Size: 13.1 KB (13079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acd1fd9476010b1fcaeb100ddd6a054376999df880012bca808b5071e9a0afc6`  
		Last Modified: Tue, 11 Jul 2017 01:07:50 GMT  
		Size: 220.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bed5caf9eca22990f378ce4366e328193398a6cceb4eddb0274ecd6638794332`  
		Last Modified: Tue, 11 Jul 2017 01:08:15 GMT  
		Size: 58.8 MB (58778829 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8d5c0a5d608a13c1c1f7c2d936e81c33bdf63d45690caf4cd786d97f0d17d52`  
		Last Modified: Tue, 11 Jul 2017 01:07:49 GMT  
		Size: 736.9 KB (736948 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f98369401a98d1a13ae4ac326651190a8762a23d18b4939cf6cfabcfa9e11ff`  
		Last Modified: Tue, 11 Jul 2017 01:08:53 GMT  
		Size: 193.1 MB (193103303 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe1d0a162bd0801d3b44b4c49f425b6ac35a47abc874b891e9e529a67428c344`  
		Last Modified: Tue, 11 Jul 2017 01:07:49 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6eff0daef87e336d099034e33f3868e98f93e649ebea079b77728ae04a544d7f`  
		Last Modified: Tue, 11 Jul 2017 01:09:11 GMT  
		Size: 4.7 MB (4730744 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63a240fbd03a3be5b7e71ff8d4758d3b5b858cd98083dd262b41e46f6f2dadc8`  
		Last Modified: Tue, 11 Jul 2017 01:12:48 GMT  
		Size: 384.2 MB (384211361 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
