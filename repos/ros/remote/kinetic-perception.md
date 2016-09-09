## `ros:kinetic-perception`

```console
$ docker pull ros@sha256:d527bef677e400e09e4cf6aaf38779f2f99f297ecab47dbef3e06dbb00de07c7
```

-	Platforms:
	-	linux; amd64

### `ros:kinetic-perception` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **705.8 MB (705773500 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:88ccf2a6bf1a02bf474d9a0185bf34d44046e21ce172d0fa6801289acc51a848`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 08 Jul 2016 18:39:36 GMT
ADD file:49ae6eed5178a2866c5023c4e7a9ae303f4828a5586569106aff27a8ce9cadf6 in /
# Fri, 08 Jul 2016 18:39:39 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes
# Fri, 08 Jul 2016 18:39:41 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 08 Jul 2016 18:39:43 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 08 Jul 2016 18:39:43 GMT
CMD ["/bin/bash"]
# Fri, 08 Jul 2016 19:22:51 GMT
MAINTAINER Tully Foote tfoote+buildfarm@osrfoundation.org
# Fri, 08 Jul 2016 19:22:54 GMT
RUN locale-gen en_US.UTF-8
# Fri, 08 Jul 2016 19:22:55 GMT
ENV LANG=en_US.UTF-8
# Fri, 08 Jul 2016 19:22:59 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Fri, 08 Jul 2016 19:23:01 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 08 Jul 2016 19:24:25 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 08 Jul 2016 19:24:45 GMT
RUN rosdep init     && rosdep update
# Fri, 08 Jul 2016 19:24:46 GMT
ENV ROS_DISTRO=kinetic
# Fri, 08 Jul 2016 19:27:11 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.0-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 08 Jul 2016 19:27:14 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in /
# Fri, 08 Jul 2016 19:27:14 GMT
ENTRYPOINT &{["/ros_entrypoint.sh"]}
# Fri, 08 Jul 2016 19:27:15 GMT
CMD ["bash"]
# Mon, 18 Jul 2016 18:59:42 GMT
MAINTAINER Tully Foote tfoote+buildfarm@osrfoundation.org
# Mon, 18 Jul 2016 18:59:59 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.0-0*     && rm -rf /var/lib/apt/lists/*
# Mon, 18 Jul 2016 19:16:11 GMT
MAINTAINER Tully Foote tfoote+buildfarm@osrfoundation.org
# Mon, 18 Jul 2016 19:20:17 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-perception=1.3.0-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:90d6565b970a2a27b197806e3a2bd19cc0fd1fc9241f7c00ae2f1295b3cac38d`  
		Last Modified: Thu, 07 Jul 2016 12:52:32 GMT  
		Size: 49.3 MB (49257890 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40553bdb84743dd9a3216ab110d274a01e309b916b3c628525a255969c6bdd61`  
		Last Modified: Fri, 08 Jul 2016 18:42:37 GMT  
		Size: 21.6 KB (21556 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3129e7479abf3d666ac61caefdb62d03bfbd0f322f01d1f8bf30633a98c1bb8`  
		Last Modified: Fri, 08 Jul 2016 18:42:37 GMT  
		Size: 445.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:091663bd70db6ceba4405547c1e143f8ef676910aa914fe9edd87340cd3742b4`  
		Last Modified: Fri, 08 Jul 2016 18:42:37 GMT  
		Size: 679.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77b369ebb1884ce3e37307341d708ae158a77d97d6f011a2dccb1d76048e03a0`  
		Last Modified: Fri, 08 Jul 2016 19:27:27 GMT  
		Size: 339.4 KB (339413 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:651e1ca03689ea489b2d4b9594b4d46f3c1c592657c91884fba84f856efc5fed`  
		Last Modified: Fri, 08 Jul 2016 19:27:26 GMT  
		Size: 13.1 KB (13072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9755ad6b38c49ef9ad0eaa50cf7f64478de073a689f3085fb8463e6c313bbbff`  
		Last Modified: Fri, 08 Jul 2016 19:27:26 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43d5c1cb01c8239326c60d54243f34beefa50bc2ba1259fdb596edadeebbe291`  
		Last Modified: Fri, 08 Jul 2016 19:27:51 GMT  
		Size: 57.6 MB (57585769 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e25bd4b2228a9307dbf047cbfcac7603b8b33549e2b05932023593087a8650c`  
		Last Modified: Fri, 08 Jul 2016 19:27:24 GMT  
		Size: 624.1 KB (624125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75aee8140ec59014b431af136aa95b4a2a7a031873d0f2175a55759e192c1e32`  
		Last Modified: Fri, 08 Jul 2016 19:28:49 GMT  
		Size: 189.7 MB (189658103 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da4890924e9c3f083be453fdfa4292a7b4a5fe8bcc15e3de7fde200a4fae812a`  
		Last Modified: Fri, 08 Jul 2016 19:27:24 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92258fc5a678453624224a0bd83dbb6db00190a23a26633a45f9f2799b7f4d0e`  
		Last Modified: Mon, 18 Jul 2016 19:00:09 GMT  
		Size: 4.7 MB (4667901 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8a3eeb529e48e9b6e2e8c261615c0d8a0230873bcde2182212eacd454c218a0`  
		Last Modified: Mon, 18 Jul 2016 19:22:28 GMT  
		Size: 403.6 MB (403604130 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
