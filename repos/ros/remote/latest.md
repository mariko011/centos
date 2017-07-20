## `ros:latest`

```console
$ docker pull ros@sha256:c322453d4080349e3af69402799f4b2d6a0c21ac81d6175eeba77ff3aaf5eb2b
```

-	Platforms:
	-	linux; amd64

### `ros:latest` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **304.5 MB (304482450 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2c814eec36b6ee815b2b1d6b2a5af5759bd947e5e9c7b96936b654869ad426f5`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 20 Jul 2017 17:14:56 GMT
ADD file:96db69a1ba6c80f604d07b14bcbf84445624ad3eb5b0471eddabf09cb7925366 in / 
# Thu, 20 Jul 2017 17:15:01 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 20 Jul 2017 17:15:02 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 20 Jul 2017 17:15:04 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 20 Jul 2017 17:15:11 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 20 Jul 2017 17:15:12 GMT
CMD ["/bin/bash"]
# Thu, 20 Jul 2017 20:38:50 GMT
RUN apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Thu, 20 Jul 2017 20:38:51 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Thu, 20 Jul 2017 20:39:26 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Thu, 20 Jul 2017 20:39:27 GMT
ENV LANG=C.UTF-8
# Thu, 20 Jul 2017 20:39:27 GMT
ENV LC_ALL=C.UTF-8
# Thu, 20 Jul 2017 20:39:38 GMT
RUN rosdep init     && rosdep update
# Thu, 20 Jul 2017 20:39:38 GMT
ENV ROS_DISTRO=kinetic
# Thu, 20 Jul 2017 20:41:08 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Thu, 20 Jul 2017 20:41:11 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Thu, 20 Jul 2017 20:41:11 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Thu, 20 Jul 2017 20:41:12 GMT
CMD ["bash"]
# Thu, 20 Jul 2017 20:44:18 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:e0a742c2abfd5e2a6f8ed15b1c78e873cf9559b96a04204daf6de5df01e3124c`  
		Last Modified: Tue, 11 Jul 2017 06:39:41 GMT  
		Size: 47.1 MB (47146626 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:486cb8339a27635fa93dc47aa0c689326a0a7cce388966d16daf8d265436cf7f`  
		Last Modified: Thu, 20 Jul 2017 17:18:25 GMT  
		Size: 816.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc6f0d824617ad8a5d1163a5b2084814665dd83156317ad06ccf14deb517a053`  
		Last Modified: Thu, 20 Jul 2017 17:18:24 GMT  
		Size: 512.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f7a5649a30e3f318ce5d7e4dbcbbeb6c0938c4cbae4d4a641fe910562ff4978`  
		Last Modified: Thu, 20 Jul 2017 17:18:24 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:672363445ad2c734e29221a6b47f4e614b5adc8a3cdca3364f62db2ed2bdff0c`  
		Last Modified: Thu, 20 Jul 2017 17:18:25 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4eb90b727de4f8bdbeae9f5a2360f6449e7285218a941c65918f6d280faf5ce8`  
		Last Modified: Thu, 20 Jul 2017 21:05:22 GMT  
		Size: 13.1 KB (13077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e64f3d49533331189abc2a52c91670db56ca290e5a6af406374fdb95ae1c8ed`  
		Last Modified: Thu, 20 Jul 2017 21:05:22 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0cd0d662462fe06f7a7ee29cba40b3e37bcfc940cf9d41686c4b35d3f6ffca95`  
		Last Modified: Thu, 20 Jul 2017 21:05:49 GMT  
		Size: 58.8 MB (58779219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1734b4912bc8dd6e6bbd71d5b33d0abf9e6dd57df28c170ad06361480371496`  
		Last Modified: Thu, 20 Jul 2017 21:05:23 GMT  
		Size: 743.3 KB (743321 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38630d79bfe1a19e14509797bfd5ae416e58e1e61f032d77c67f7b299369a780`  
		Last Modified: Thu, 20 Jul 2017 21:06:43 GMT  
		Size: 193.1 MB (193066938 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af86a7ce871e80b268b22a649f075bfcaf04724b1f8dc13b461d78bd1edb00bf`  
		Last Modified: Thu, 20 Jul 2017 21:05:22 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:502d6f92ece8f03bd24105de07b1fd93d2db9105f705e77caf7cff1b42a08429`  
		Last Modified: Thu, 20 Jul 2017 21:09:14 GMT  
		Size: 4.7 MB (4730511 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
