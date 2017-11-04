## `ros:lunar-robot-zesty`

```console
$ docker pull ros@sha256:4c7fd7ba1004c2b3164f3fe501c9de7e08df897dd9deda74da2280dc7b031d0e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `ros:lunar-robot-zesty` - linux; amd64

```console
$ docker pull ros@sha256:b58ffd57f887d79a1e15f7a903eab9b29521effa07140b4512f319677f3c6d7f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **472.5 MB (472507132 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:38f90114ddf63cea9734410c419cd31fe4d97af7170da9f345916bb2d4562646`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 18 Sep 2017 23:31:50 GMT
ADD file:4e2e1f8336bcc64e853e9f3462f0829ce85b34a32755dba06aa7bd0007eda4f0 in / 
# Mon, 18 Sep 2017 23:31:50 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 18 Sep 2017 23:31:51 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 18 Sep 2017 23:31:52 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Mon, 18 Sep 2017 23:31:52 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 18 Sep 2017 23:31:52 GMT
CMD ["/bin/bash"]
# Sat, 04 Nov 2017 07:38:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 07:38:41 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 04 Nov 2017 07:38:42 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu zesty main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 04 Nov 2017 07:39:15 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 07:39:15 GMT
ENV LANG=C.UTF-8
# Sat, 04 Nov 2017 07:39:15 GMT
ENV LC_ALL=C.UTF-8
# Sat, 04 Nov 2017 07:39:27 GMT
RUN rosdep init     && rosdep update
# Sat, 04 Nov 2017 07:39:27 GMT
ENV ROS_DISTRO=lunar
# Sat, 04 Nov 2017 07:41:15 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 07:41:17 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Sat, 04 Nov 2017 07:41:17 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 04 Nov 2017 07:41:17 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 07:42:30 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 07:43:03 GMT
RUN apt-get update && apt-get install -y     ros-lunar-robot=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:8b23367590c32dbb6954ab3cc9b6c451b9763556c72a893538efe88583f6a5dc`  
		Last Modified: Mon, 18 Sep 2017 23:33:09 GMT  
		Size: 38.4 MB (38437889 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7feb578947e4b86e0a0cff64b42489dc1305bbacdb3ed36d0afe95a19ebf845`  
		Last Modified: Mon, 18 Sep 2017 23:33:03 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac836f06379c8d7356e0d2e7dbb3e9f3924616527fa51b95545fb455eec31f08`  
		Last Modified: Mon, 18 Sep 2017 23:33:03 GMT  
		Size: 569.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be286dc472df31f16953d34151f836d0186fddeea6cd56dcefd2a6d46a992500`  
		Last Modified: Mon, 18 Sep 2017 23:33:03 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5533df5f353d9fbcbd081e9dd653fe7d8ddebed958d1f0e56fa4a87b216f13c1`  
		Last Modified: Mon, 18 Sep 2017 23:33:03 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d09d3709be99029b87aee9623498a0cee2b3f119f8b34544d49e33149e4afe2`  
		Last Modified: Sat, 04 Nov 2017 08:16:07 GMT  
		Size: 3.4 MB (3401528 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b59bdd7c7501c7c91e937813abef9b63af49cce54cae5b8600c946cb30a68b3`  
		Last Modified: Sat, 04 Nov 2017 08:16:06 GMT  
		Size: 1.4 KB (1379 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:814d9c881c9a47d22d8e73e53f8ad1b8b964e1466e899304397c188c798f5fbd`  
		Last Modified: Sat, 04 Nov 2017 08:16:05 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2594e9d31c140fbc622a069215b5ea094c36c7b19292e5bb3bcba4fcacb6415b`  
		Last Modified: Sat, 04 Nov 2017 08:16:34 GMT  
		Size: 58.6 MB (58606566 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb69ee77be00f22c4e2996eb0352ad434bcd301f7e3bf3e26459ae2a59d34df0`  
		Last Modified: Sat, 04 Nov 2017 08:16:02 GMT  
		Size: 766.3 KB (766309 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4425e7a07cf0c781ebffd3051718b467f6ea400a11ddba0c28f06b5565868267`  
		Last Modified: Sat, 04 Nov 2017 08:17:16 GMT  
		Size: 252.3 MB (252317986 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ccadcc928b3dbc16bec751a12fa74eac31c11ad80bde31b5dee733a137b708b`  
		Last Modified: Sat, 04 Nov 2017 08:16:03 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3667ecf2d1c7731d9aa431933ca709ae75c0b4622d53ffcbb8d527db00a37c5e`  
		Last Modified: Sat, 04 Nov 2017 08:17:47 GMT  
		Size: 74.6 MB (74576324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3852d1853d6014f61e9cd2c4f4e3f1b224b5037afa10cfff778b1e3f8b36ac7f`  
		Last Modified: Sat, 04 Nov 2017 08:18:11 GMT  
		Size: 44.4 MB (44396306 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
