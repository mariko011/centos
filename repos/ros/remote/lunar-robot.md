## `ros:lunar-robot`

```console
$ docker pull ros@sha256:16a44a30b50dea6947cd9599d48a6af3776d6c214d4554a8a01585dd1f533fca
```

-	Platforms:
	-	linux; amd64

### `ros:lunar-robot` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **440.0 MB (439970058 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:222a140fada3276fbe0364accb7ad8a3ca67dd57405f1aa1a7ea5df8e07dbfd8`
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
# Thu, 20 Jul 2017 20:41:20 GMT
ENV ROS_DISTRO=lunar
# Thu, 20 Jul 2017 20:42:54 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Thu, 20 Jul 2017 20:42:56 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Thu, 20 Jul 2017 20:42:57 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Thu, 20 Jul 2017 20:42:58 GMT
CMD ["bash"]
# Thu, 20 Jul 2017 20:44:36 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Thu, 20 Jul 2017 21:03:02 GMT
RUN apt-get update && apt-get install -y     ros-lunar-robot=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
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
	-	`sha256:580d1129a2e6536051af12bce55ccdc0aae63ceb431eb0300e0c612c3404c82d`  
		Last Modified: Thu, 20 Jul 2017 21:08:03 GMT  
		Size: 193.1 MB (193053461 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc1e0b09b67faf94a45dd2de44c512d8806263e54adfb2bd211ff1788b78241a`  
		Last Modified: Thu, 20 Jul 2017 21:07:02 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c2d404c541c3a83bfe131d8dc88c4adfceea9563c830ca2bdd75ed20d310637`  
		Last Modified: Thu, 20 Jul 2017 21:09:49 GMT  
		Size: 4.8 MB (4823528 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ea9d452068b07f88e7c20f50a673b05825db87ff190a9461e1fc496a94c0009`  
		Last Modified: Thu, 20 Jul 2017 21:20:15 GMT  
		Size: 135.4 MB (135408068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
