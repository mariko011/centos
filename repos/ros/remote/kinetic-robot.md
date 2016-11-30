## `ros:kinetic-robot`

```console
$ docker pull ros@sha256:a37647d289e475a4289882f68c2814f9ec4909ea82d5db44960238484bce67cc
```

-	Platforms:
	-	linux; amd64

### `ros:kinetic-robot` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **434.5 MB (434534671 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f2edf9a74239c15e2acb98074d3a7f1de26bc68868f39eab82b749945355127e`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 29 Nov 2016 20:04:32 GMT
ADD file:2ca910a8c0cef4144f7c4ef779f9d85d5f451a776c3c67fc83a7a461de73e7d7 in / 
# Tue, 29 Nov 2016 20:04:33 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 29 Nov 2016 20:04:34 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 29 Nov 2016 20:04:35 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 29 Nov 2016 20:04:36 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 29 Nov 2016 20:04:37 GMT
CMD ["/bin/bash"]
# Wed, 30 Nov 2016 17:57:42 GMT
MAINTAINER Tully Foote tfoote+buildfarm@osrfoundation.org
# Wed, 30 Nov 2016 17:57:45 GMT
RUN locale-gen en_US.UTF-8
# Wed, 30 Nov 2016 17:57:45 GMT
ENV LANG=en_US.UTF-8
# Wed, 30 Nov 2016 17:57:47 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 30 Nov 2016 17:57:48 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 30 Nov 2016 17:58:20 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 30 Nov 2016 17:58:31 GMT
RUN rosdep init     && rosdep update
# Wed, 30 Nov 2016 17:58:32 GMT
ENV ROS_DISTRO=kinetic
# Wed, 30 Nov 2016 18:00:08 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.0-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 30 Nov 2016 18:00:09 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Wed, 30 Nov 2016 18:00:10 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 30 Nov 2016 18:00:10 GMT
CMD ["bash"]
# Wed, 30 Nov 2016 18:00:49 GMT
MAINTAINER Tully Foote tfoote+buildfarm@osrfoundation.org
# Wed, 30 Nov 2016 18:00:59 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.0-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 30 Nov 2016 18:08:09 GMT
MAINTAINER Tully Foote tfoote+buildfarm@osrfoundation.org
# Wed, 30 Nov 2016 18:13:12 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-robot=1.3.0-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:af49a5ceb2a56a8232402f5868cdb13dfdae5d66a62955a73e647e16e9f30a63`  
		Last Modified: Tue, 29 Nov 2016 20:08:29 GMT  
		Size: 50.1 MB (50096701 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f9757b472e7962a4304d4af61630e2cde66129218135b4093a43b9db8942c34`  
		Last Modified: Tue, 29 Nov 2016 20:08:15 GMT  
		Size: 824.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e931b117db38a05b9d0bbd28ca99a0abe5236a0026d88b3db804f520e59977ec`  
		Last Modified: Tue, 29 Nov 2016 20:08:19 GMT  
		Size: 518.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47b5e16c0811b08c1cf3198fa5ac0b920946ac538a0a0030627d19763e2fa212`  
		Last Modified: Tue, 29 Nov 2016 20:08:15 GMT  
		Size: 682.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9332eaf1a55b72fb779d2f249b65855c623c8ce7be83c822b7d80115ef5a3af3`  
		Last Modified: Tue, 29 Nov 2016 20:08:15 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:371bded0f55a95a26133943a347dec77139e09da73166b361a7ff50d7dc8e7d8`  
		Last Modified: Wed, 30 Nov 2016 18:28:05 GMT  
		Size: 339.4 KB (339414 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc50994e1df321ddf642db38d33b12116a39bbbd8819bf0b56293d8ea7e2ab27`  
		Last Modified: Wed, 30 Nov 2016 18:28:04 GMT  
		Size: 13.1 KB (13071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:102d0dd8418592bfe462f086933904724f1a5619855990f7ebcb791d70c384a6`  
		Last Modified: Wed, 30 Nov 2016 18:28:01 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7725fafd3a81268e67abaed916de4448d3c8b430643948893c8aa1cb761a121d`  
		Last Modified: Wed, 30 Nov 2016 18:28:28 GMT  
		Size: 57.6 MB (57649246 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b9e63dc17e81661695f0c82eff31c1b1db8543e52832d242eb311c88c9c6fe2`  
		Last Modified: Wed, 30 Nov 2016 18:28:02 GMT  
		Size: 685.8 KB (685812 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1877a34c30f915ed147edd87a2deb2da5ea6d67819fc2beb0ea87f3901742308`  
		Last Modified: Wed, 30 Nov 2016 18:29:10 GMT  
		Size: 189.6 MB (189637087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a9c2261f5a65d40aabbc5ec55f32e1865cbd813ee07be89fdcada2f44a52e1f`  
		Last Modified: Wed, 30 Nov 2016 18:28:01 GMT  
		Size: 198.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8447f54c305fabd9eb89f3fab17fd81706c70d1fbfbad46476baa50503eeffb8`  
		Last Modified: Wed, 30 Nov 2016 18:30:51 GMT  
		Size: 4.6 MB (4643469 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f69091aa1ca3248837aa899437b536f70781d7dc9924840433f67637cab6971`  
		Last Modified: Wed, 30 Nov 2016 18:40:32 GMT  
		Size: 131.5 MB (131467266 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
