## `ros:jade-ros-base`

```console
$ docker pull ros@sha256:00bfe60c61bba039a7f76adf98ce06cf1e4f2d2f8afe20e55f2ac2b072587c3a
```

-	Platforms:
	-	linux; amd64

### `ros:jade-ros-base` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **253.2 MB (253245259 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3caa214cadaea8426ad84de2b77675df3f0f1e6b243aa33afe3d84042932d4a9`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 15 Dec 2016 17:44:58 GMT
ADD file:b2236d49147fe14d8d4970b667155ad84bde96d183889a76a7512560a0da3f82 in / 
# Thu, 15 Dec 2016 17:44:59 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 15 Dec 2016 17:45:00 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 15 Dec 2016 17:45:01 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 15 Dec 2016 17:45:02 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 15 Dec 2016 17:45:02 GMT
CMD ["/bin/bash"]
# Fri, 16 Dec 2016 03:22:41 GMT
MAINTAINER Tully Foote tfoote+buildfarm@osrfoundation.org
# Fri, 16 Dec 2016 03:22:43 GMT
RUN locale-gen en_US.UTF-8
# Fri, 16 Dec 2016 03:22:43 GMT
ENV LANG=en_US.UTF-8
# Fri, 16 Dec 2016 03:22:44 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Fri, 16 Dec 2016 03:22:45 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu trusty main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 16 Dec 2016 03:23:32 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 16 Dec 2016 03:23:43 GMT
RUN rosdep init     && rosdep update
# Fri, 16 Dec 2016 03:26:21 GMT
ENV ROS_DISTRO=jade
# Fri, 16 Dec 2016 03:28:07 GMT
RUN apt-get update && apt-get install -y     ros-jade-ros-core=1.2.0-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 16 Dec 2016 03:28:08 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Fri, 16 Dec 2016 03:28:09 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 16 Dec 2016 03:28:09 GMT
CMD ["bash"]
# Mon, 19 Dec 2016 17:28:44 GMT
MAINTAINER Tully Foote tfoote+buildfarm@osrfoundation.org
# Mon, 19 Dec 2016 17:29:04 GMT
RUN apt-get update && apt-get install -y     ros-jade-ros-base=1.2.0-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:16da43b30d897cf2826bf61806d6da79d67ff1caeaa9bab650f7d503db200561`  
		Last Modified: Thu, 15 Dec 2016 17:47:59 GMT  
		Size: 65.7 MB (65694192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1840843dafedebd856ed6d39163c298e3f8a939f78b1ec26e9b8d753a4cd493b`  
		Last Modified: Thu, 15 Dec 2016 17:47:38 GMT  
		Size: 71.6 KB (71558 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91246eb75b7da4d6c45bc96c72180830c7146c6395069457a893ad63b84a2de7`  
		Last Modified: Thu, 15 Dec 2016 17:47:38 GMT  
		Size: 364.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7faa681b41d79d2982921bf4f0ee7892690e67a338b8fb70fbd8e90950f9d2b1`  
		Last Modified: Thu, 15 Dec 2016 17:47:38 GMT  
		Size: 680.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97b84c64d4262ace291e55ae89ac447ccfe37a9946df127892b369a2cfb7fa5b`  
		Last Modified: Thu, 15 Dec 2016 17:47:38 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a27b6b1128fcfb92361afa8ee72e6afb119cfe498b574af00e7f1d0e234368c`  
		Last Modified: Wed, 21 Dec 2016 19:42:15 GMT  
		Size: 329.2 KB (329183 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:862fbdab822ffe22dbda43b7aa0a8c3c1cff284562acc5df75907bde614e4c91`  
		Last Modified: Wed, 21 Dec 2016 19:42:14 GMT  
		Size: 13.1 KB (13071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8777547b546cbe62568059891b0a882c1b56c5027a65b09ed1e2c8704b6beb8b`  
		Last Modified: Wed, 21 Dec 2016 19:42:12 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb15930c1ef7494833de5eb616a0dc29bc0d1c96becb5beae9a7d3e5e3317d47`  
		Last Modified: Wed, 21 Dec 2016 19:42:30 GMT  
		Size: 32.9 MB (32876567 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1f10f8ed9cdce4f2dd602d271532e413baaf76d40dcf11ec1f341106500f228`  
		Last Modified: Wed, 21 Dec 2016 19:42:12 GMT  
		Size: 690.4 KB (690404 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ceca1a199b3073cbc4060ecd425797bd17cd599d3fb0f49a387a4ce58404f702`  
		Last Modified: Wed, 21 Dec 2016 19:44:42 GMT  
		Size: 150.1 MB (150127178 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b429b55aa85e843a46c9feaf68cff65abaaf746e1f7e0ee02ea33648ed5592be`  
		Last Modified: Wed, 21 Dec 2016 19:43:43 GMT  
		Size: 197.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:adae1bf5a404ed56701d5107481c992d24e8a0cd754faf02a00d4f2910f15012`  
		Last Modified: Wed, 21 Dec 2016 19:47:51 GMT  
		Size: 3.4 MB (3441481 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
