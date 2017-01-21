## `ros:kinetic-perception`

```console
$ docker pull ros@sha256:84ed3441727f6cd77d61ed6804b4a4fe2cee2c48e4f81cdf14b7feb7dbe01793
```

-	Platforms:
	-	linux; amd64

### `ros:kinetic-perception` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **706.9 MB (706928038 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ad4422ba76810dde71903ce44cfb2effe37bcb00ae65cd65a15f77422a1ffa0f`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 20 Jan 2017 21:43:23 GMT
ADD file:68f83d996c38a09c0ffbfd8b5b49c87fd39ec085992a00de3a27a820eb5d9383 in / 
# Fri, 20 Jan 2017 21:43:38 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 20 Jan 2017 21:43:40 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 20 Jan 2017 21:43:54 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 20 Jan 2017 21:43:55 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 20 Jan 2017 21:44:07 GMT
CMD ["/bin/bash"]
# Sat, 21 Jan 2017 01:10:04 GMT
MAINTAINER Tully Foote tfoote+buildfarm@osrfoundation.org
# Sat, 21 Jan 2017 01:10:06 GMT
RUN locale-gen en_US.UTF-8
# Sat, 21 Jan 2017 01:10:07 GMT
ENV LANG=en_US.UTF-8
# Sat, 21 Jan 2017 01:10:09 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 21 Jan 2017 01:10:10 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 21 Jan 2017 01:10:43 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 21 Jan 2017 01:10:52 GMT
RUN rosdep init     && rosdep update
# Sat, 21 Jan 2017 01:10:53 GMT
ENV ROS_DISTRO=kinetic
# Sat, 21 Jan 2017 01:12:26 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.0-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 21 Jan 2017 01:12:28 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Sat, 21 Jan 2017 01:12:29 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 21 Jan 2017 01:12:29 GMT
CMD ["bash"]
# Sat, 21 Jan 2017 01:13:09 GMT
MAINTAINER Tully Foote tfoote+buildfarm@osrfoundation.org
# Sat, 21 Jan 2017 01:13:21 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.0-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 21 Jan 2017 01:20:18 GMT
MAINTAINER Tully Foote tfoote+buildfarm@osrfoundation.org
# Sat, 21 Jan 2017 01:23:51 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-perception=1.3.0-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:8aec416115fdbd74102c9090bcfe03bfe8926876642d8846c8b917959ea9b552`  
		Last Modified: Fri, 20 Jan 2017 21:50:34 GMT  
		Size: 50.3 MB (50308178 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:695f074e24e392178d364af5ea2405dda7ab0035284001b49939afac5106c187`  
		Last Modified: Fri, 20 Jan 2017 21:50:19 GMT  
		Size: 820.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:946d6c48c2a7d60cb2f4d1c4d3a8131086b412d11a9def59d0bcc0892428dde9`  
		Last Modified: Fri, 20 Jan 2017 21:50:19 GMT  
		Size: 517.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc7277e579f03a13476b4d2dc6607124f7e67341dbd58f9d1cd6555bec086c04`  
		Last Modified: Fri, 20 Jan 2017 21:50:19 GMT  
		Size: 680.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2508cbcde94b50cd53356e8730bb508ddb43c76664a35dc29e69bb8b56a0f531`  
		Last Modified: Fri, 20 Jan 2017 21:50:19 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93bcf6c8099429131b724d89f8795a2495609e89eb1d11096afb0d88b187513c`  
		Last Modified: Sat, 21 Jan 2017 01:45:05 GMT  
		Size: 339.4 KB (339414 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d77af3fcece3a266673b0f2d057f95dcec2e28180d8f96a6f6ed9baf28abd6d`  
		Last Modified: Sat, 21 Jan 2017 01:45:05 GMT  
		Size: 13.1 KB (13068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e05f865dea394b168637b7094f1349fddd27bdc6fdabbf8e3d38f803cc54bd7`  
		Last Modified: Sat, 21 Jan 2017 01:45:02 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03af14333eff237b42e953d62b30d6a50d477489423e5a7ba5c0434825e8ef05`  
		Last Modified: Sat, 21 Jan 2017 01:45:29 GMT  
		Size: 57.6 MB (57648676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:390e614be3b54cf8977cdbd8c4be4bded52ca720017eb8f5a7a9832dd21294eb`  
		Last Modified: Sat, 21 Jan 2017 01:45:03 GMT  
		Size: 698.0 KB (697979 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:692a268e78a6471f9d94dd108051893d39b9911a17949ffba2650f263040a774`  
		Last Modified: Sat, 21 Jan 2017 01:46:12 GMT  
		Size: 189.6 MB (189626844 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a35d9831139419db3b660ea4df09595fd41862a4a2ab28f9d02c33d8c9ee328e`  
		Last Modified: Sat, 21 Jan 2017 01:45:02 GMT  
		Size: 197.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40a7ef4e646599f39bdd49224cf131e732ba14f1472e55413b22880188d5939a`  
		Last Modified: Sat, 21 Jan 2017 01:47:48 GMT  
		Size: 4.6 MB (4644536 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db49c29b0f7537846e75a6532de1b804980a0d4148169fdf590953d06bc12fcd`  
		Last Modified: Sat, 21 Jan 2017 01:56:10 GMT  
		Size: 403.6 MB (403646745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
