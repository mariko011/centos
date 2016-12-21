## `ros:kinetic-ros-base`

```console
$ docker pull ros@sha256:b228e6c08e725677bb6d5d3ad4a0aa2a4ecc87bffe0c3a63c136c14c1ae0cf99
```

-	Platforms:
	-	linux; amd64

### `ros:kinetic-ros-base` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **303.2 MB (303195811 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4ee36452558188daa2128435bb4d1de0e651358ec4ad7628479f58666ffa7b5d`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 15 Dec 2016 17:45:19 GMT
ADD file:7529d28035b43a2281b9ba1d3cf6bde4f0d9517693e9412328761d51c24091b4 in / 
# Thu, 15 Dec 2016 17:45:21 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 15 Dec 2016 17:45:22 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 15 Dec 2016 17:45:22 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 15 Dec 2016 17:45:23 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 15 Dec 2016 17:45:24 GMT
CMD ["/bin/bash"]
# Fri, 16 Dec 2016 03:28:09 GMT
MAINTAINER Tully Foote tfoote+buildfarm@osrfoundation.org
# Fri, 16 Dec 2016 03:28:11 GMT
RUN locale-gen en_US.UTF-8
# Fri, 16 Dec 2016 03:28:12 GMT
ENV LANG=en_US.UTF-8
# Fri, 16 Dec 2016 03:28:15 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Fri, 16 Dec 2016 03:28:16 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 16 Dec 2016 03:28:49 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 16 Dec 2016 03:29:01 GMT
RUN rosdep init     && rosdep update
# Fri, 16 Dec 2016 03:29:01 GMT
ENV ROS_DISTRO=kinetic
# Fri, 16 Dec 2016 03:30:41 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.0-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 16 Dec 2016 03:30:42 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Fri, 16 Dec 2016 03:30:42 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 16 Dec 2016 03:30:42 GMT
CMD ["bash"]
# Mon, 19 Dec 2016 17:32:27 GMT
MAINTAINER Tully Foote tfoote+buildfarm@osrfoundation.org
# Mon, 19 Dec 2016 17:32:50 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.0-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:b3e1c725a85f0953e81815b7c7aabfad9ebfd90af53f99248981282b8045d787`  
		Last Modified: Thu, 15 Dec 2016 17:49:25 GMT  
		Size: 50.2 MB (50217683 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4daad8bdde31f5969d6a44800e993a911bed25853b2f89417b07ce7f0ac67714`  
		Last Modified: Thu, 15 Dec 2016 17:49:07 GMT  
		Size: 822.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63fe8c0068a811103c702452985368fc99014f83b5f0151cf631644f13f383b2`  
		Last Modified: Thu, 15 Dec 2016 17:49:07 GMT  
		Size: 514.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a70713c436f2350e8a9f1c1e6c823290f331254c6c21d5657056499d8575608`  
		Last Modified: Thu, 15 Dec 2016 17:49:07 GMT  
		Size: 681.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd842a2105a862f62ba4ad726531029be49046c290307e9c07a688c89f4606e6`  
		Last Modified: Thu, 15 Dec 2016 17:49:07 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c34fc8c7695a5f8f9ff2fc83628ba28fb0ff02838571261a850ea22ff8e1b06`  
		Last Modified: Wed, 21 Dec 2016 19:45:16 GMT  
		Size: 339.4 KB (339415 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3839e0a2549ce849940120318a1ef3bf920459b31bfeaeb53195435e9fcce400`  
		Last Modified: Wed, 21 Dec 2016 19:45:15 GMT  
		Size: 13.1 KB (13071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3634580c8b15e46a24e721410a270f54b7b69301bd50645f3c33a4e187b97ca8`  
		Last Modified: Wed, 21 Dec 2016 19:45:12 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d81122bd9605fce554b98c586e4602ec9944a02e1a55b55f0a991e345716b3df`  
		Last Modified: Wed, 21 Dec 2016 19:45:46 GMT  
		Size: 57.6 MB (57648501 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a49c337965f53bae70b183f387db119da6a52a36ed87d9e8e5d96e4387939ce5`  
		Last Modified: Wed, 21 Dec 2016 19:45:12 GMT  
		Size: 690.4 KB (690410 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be17fe37ee452911528808a93c501c1f8059636e7858d69b70695a78a761dfc1`  
		Last Modified: Wed, 21 Dec 2016 19:46:31 GMT  
		Size: 189.6 MB (189640350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91037c7e23b9b2f8f52fa38b2964bf44141901e9d25832216b6b80d981a71293`  
		Last Modified: Wed, 21 Dec 2016 19:45:12 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00ced336ad5e2f7538889bf70084fa2230d5e17d17ba3bd917c03b689a8febb0`  
		Last Modified: Wed, 21 Dec 2016 19:48:37 GMT  
		Size: 4.6 MB (4643784 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
