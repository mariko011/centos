## `ros:jade`

```console
$ docker pull ros@sha256:177a4948c4c55247fe944bdd7a79aa47f98e2aa5d1de471d3a07cfcaeacb3fa7
```

-	Platforms:
	-	linux; amd64

### `ros:jade` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **253.2 MB (253220866 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:62d0f89fa4f605ef9a22484bd30538ba842034eb85e2258ca786d5403b87b156`
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
# Sat, 21 Jan 2017 01:06:12 GMT
MAINTAINER Tully Foote tfoote+buildfarm@osrfoundation.org
# Sat, 21 Jan 2017 01:06:14 GMT
RUN locale-gen en_US.UTF-8
# Sat, 21 Jan 2017 01:06:15 GMT
ENV LANG=en_US.UTF-8
# Sat, 21 Jan 2017 01:06:16 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 21 Jan 2017 01:06:18 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu trusty main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 21 Jan 2017 01:06:54 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 21 Jan 2017 01:07:03 GMT
RUN rosdep init     && rosdep update
# Sat, 21 Jan 2017 01:08:34 GMT
ENV ROS_DISTRO=jade
# Sat, 21 Jan 2017 01:10:01 GMT
RUN apt-get update && apt-get install -y     ros-jade-ros-core=1.2.0-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 21 Jan 2017 01:10:02 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Sat, 21 Jan 2017 01:10:03 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 21 Jan 2017 01:10:03 GMT
CMD ["bash"]
# Sat, 21 Jan 2017 01:12:51 GMT
MAINTAINER Tully Foote tfoote+buildfarm@osrfoundation.org
# Sat, 21 Jan 2017 01:13:09 GMT
RUN apt-get update && apt-get install -y     ros-jade-ros-base=1.2.0-0*     && rm -rf /var/lib/apt/lists/*
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
	-	`sha256:182ded6a6fab8479e7e1c09bf2d25f824662b76395d7927a7e2fcd666c13123d`  
		Last Modified: Sat, 21 Jan 2017 01:42:28 GMT  
		Size: 329.2 KB (329188 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c29d55990287108cfb6dcfff41955a22901530e0f518bca0086d413ddb8bdf1e`  
		Last Modified: Sat, 21 Jan 2017 01:42:27 GMT  
		Size: 13.1 KB (13072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d79f3467b35206fd995cdc4c5c7df5c1129e435b5fc6499f3972a9e9d5217294`  
		Last Modified: Sat, 21 Jan 2017 01:42:25 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e321ce779a09e7745bffbb89f5aaa1d277856bb164ca9d4cabf996c670e9ec4c`  
		Last Modified: Sat, 21 Jan 2017 01:42:41 GMT  
		Size: 32.9 MB (32877430 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bac2d144565fbef7a83d0362dd453f4c1a769716d37fa3969f497b7b7003f8b`  
		Last Modified: Sat, 21 Jan 2017 01:42:25 GMT  
		Size: 698.0 KB (697977 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71055fda7e14066e02140408b314a81028c313d0024f46fd32d0d94b2aed7190`  
		Last Modified: Sat, 21 Jan 2017 01:44:42 GMT  
		Size: 150.1 MB (150094355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:976a04ebe02e3de80eecb4f6ffcbefd7a0bf073d12a410ec05dcbc9ec10a40cf`  
		Last Modified: Sat, 21 Jan 2017 01:43:47 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee055233293ff817ddaae03bc9faa87bd197d368a3b69cbedc85d33096ba71c8`  
		Last Modified: Sat, 21 Jan 2017 01:47:12 GMT  
		Size: 3.4 MB (3441820 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
