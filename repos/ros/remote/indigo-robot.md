## `ros:indigo-robot`

```console
$ docker pull ros@sha256:7538966af6865a09ef6f58e064043bd82982cff3770b68394351316ccad506a6
```

-	Platforms:
	-	linux; amd64

### `ros:indigo-robot` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **321.3 MB (321255937 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:16cbed6fae6adab97c48dd12f948c66dcc73ce102f73d464c456f2461b54092e`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 24 Jun 2016 17:29:06 GMT
ADD file:b6ff401cf2a7a08c11d2bdfbfec31c7ec105fd7ab29c529fb90025762b077e2c in /
# Fri, 24 Jun 2016 17:29:10 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes
# Fri, 24 Jun 2016 17:29:11 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 24 Jun 2016 17:29:13 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 24 Jun 2016 17:29:14 GMT
CMD ["/bin/bash"]
# Fri, 24 Jun 2016 20:03:46 GMT
MAINTAINER Tully Foote tfoote+buildfarm@osrfoundation.org
# Fri, 24 Jun 2016 20:03:49 GMT
RUN locale-gen en_US.UTF-8
# Fri, 24 Jun 2016 20:03:49 GMT
ENV LANG=en_US.UTF-8
# Fri, 24 Jun 2016 20:04:07 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Fri, 24 Jun 2016 20:04:08 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu trusty main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 24 Jun 2016 20:05:47 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 24 Jun 2016 20:05:58 GMT
RUN rosdep init     && rosdep update
# Fri, 24 Jun 2016 20:05:58 GMT
ENV ROS_DISTRO=indigo
# Fri, 24 Jun 2016 20:08:30 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-core=1.1.4-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 24 Jun 2016 20:08:31 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in /
# Fri, 24 Jun 2016 20:08:32 GMT
ENTRYPOINT &{["/ros_entrypoint.sh"]}
# Fri, 24 Jun 2016 20:08:32 GMT
CMD ["bash"]
# Wed, 29 Jun 2016 19:22:13 GMT
MAINTAINER Tully Foote tfoote+buildfarm@osrfoundation.org
# Wed, 29 Jun 2016 19:23:14 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-base=1.1.4-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 08 Jul 2016 19:13:31 GMT
MAINTAINER Tully Foote tfoote+buildfarm@osrfoundation.org
# Fri, 08 Jul 2016 19:31:28 GMT
RUN apt-get update && apt-get install -y     ros-indigo-robot=1.1.4-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:56eb14001cebec19f2255d95e125c9f5199c9e1d97dd708e1f3ebda3d32e5da7`  
		Last Modified: Fri, 24 Jun 2016 17:30:48 GMT  
		Size: 65.7 MB (65699368 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ff49c327d838cf14f7db33fa44f6057b7209298e9c03369257485a085e231df`  
		Last Modified: Fri, 24 Jun 2016 17:30:29 GMT  
		Size: 101.4 KB (101415 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e532f87f96dd5821006d02e65e7d4729a4e6957a34c3f4ec72046e221eb7c52`  
		Last Modified: Fri, 24 Jun 2016 17:30:29 GMT  
		Size: 365.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ce63537e70c2c250fbc41b5f04bfb31f445be4034effc4b4c513bf8899dfa0a`  
		Last Modified: Fri, 24 Jun 2016 17:30:29 GMT  
		Size: 681.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d6651aae8bc83a7cb9dc7544adeefe81369a70d5df8fd7733a78789ef2c32f3`  
		Last Modified: Fri, 24 Jun 2016 20:08:43 GMT  
		Size: 329.2 KB (329188 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2a831e99b405d8c6a12dbbf9a600d35e19f9da13396bfc759c13cfb08c65dfa`  
		Last Modified: Fri, 24 Jun 2016 20:08:42 GMT  
		Size: 13.1 KB (13070 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37bd005d0940c11d0c40900ba072adf2bb26a2f5200ab54b45a78a1f2b643ad4`  
		Last Modified: Fri, 24 Jun 2016 20:08:39 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:800815708586712669e2761b3b81962327e2e1e48ee479e7a6d1fb3bcfad0f24`  
		Last Modified: Fri, 24 Jun 2016 20:08:51 GMT  
		Size: 32.9 MB (32870801 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42f5c3ed1ff87ca2b6011c1726fe0b9e1301fa6ea26a94c29bbd67f278b13ed9`  
		Last Modified: Fri, 24 Jun 2016 20:08:40 GMT  
		Size: 614.0 KB (614050 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8aeb5969fba4a58ea911c5ec7a2926252c99415c77e58d963818232853aa6256`  
		Last Modified: Fri, 24 Jun 2016 20:09:24 GMT  
		Size: 150.0 MB (149983301 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:545b74da1b4d37ddb95f375586fb25f9c55739e75cd64febb0ae5db8cff905c8`  
		Last Modified: Fri, 24 Jun 2016 20:08:39 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ad2a859dd554ad916f7475a490727e14c8b7c7514b8a0b4c25513cfb65eb999`  
		Last Modified: Wed, 29 Jun 2016 19:23:23 GMT  
		Size: 3.4 MB (3448456 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8208a82d6705b8987c7e74645658f9150c787abd29ad1c82dcc2077cc207246`  
		Last Modified: Fri, 08 Jul 2016 19:32:14 GMT  
		Size: 68.2 MB (68194823 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
