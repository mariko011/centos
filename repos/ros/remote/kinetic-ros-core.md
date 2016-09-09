## `ros:kinetic-ros-core`

```console
$ docker pull ros@sha256:c44a7c030160f3fe4e9bf27eb393bc14e5ddce55be8c61397f5e4906c2aa244c
```

-	Platforms:
	-	linux; amd64

### `ros:kinetic-ros-core` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **297.7 MB (297653054 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee0bb7be7c83283a4b3878ad77ae16bcc8ce3c196feb35bcd41667297078526b`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 18 Jul 2016 17:35:22 GMT
ADD file:fdbd881d78f9d7d9245d0838389ebc793bef13243b9e3269512046cd75216baf in /
# Mon, 18 Jul 2016 17:35:24 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 18 Jul 2016 17:35:26 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 18 Jul 2016 17:35:27 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Mon, 18 Jul 2016 17:35:28 GMT
CMD ["/bin/bash"]
# Mon, 18 Jul 2016 19:00:44 GMT
MAINTAINER Tully Foote tfoote+buildfarm@osrfoundation.org
# Mon, 18 Jul 2016 19:00:47 GMT
RUN locale-gen en_US.UTF-8
# Mon, 18 Jul 2016 19:00:48 GMT
ENV LANG=en_US.UTF-8
# Mon, 18 Jul 2016 19:00:52 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Mon, 18 Jul 2016 19:00:53 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Mon, 18 Jul 2016 19:01:57 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Mon, 18 Jul 2016 19:02:09 GMT
RUN rosdep init     && rosdep update
# Mon, 18 Jul 2016 19:02:10 GMT
ENV ROS_DISTRO=kinetic
# Mon, 18 Jul 2016 19:03:52 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.0-0*     && rm -rf /var/lib/apt/lists/*
# Mon, 18 Jul 2016 19:03:55 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in /
# Mon, 18 Jul 2016 19:03:56 GMT
ENTRYPOINT &{["/ros_entrypoint.sh"]}
# Mon, 18 Jul 2016 19:03:56 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:43db9dbdcb300fc39b23e88a1721bdaa95c7fe396bd89d6a4b1a39e8da1a2d4c`  
		Last Modified: Mon, 18 Jul 2016 17:38:23 GMT  
		Size: 49.3 MB (49325555 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85a9cd1fcca227737b80281fed1c60453a7a49b02a956bb6531276df5646e77e`  
		Last Modified: Mon, 18 Jul 2016 17:38:09 GMT  
		Size: 21.7 KB (21651 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c23af84961027ee5a7725040d44b30d563eb6a79f013d2c924e31cae43367f33`  
		Last Modified: Mon, 18 Jul 2016 17:38:09 GMT  
		Size: 447.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e88c36ca55d86a9331db93eef6dcac6a7027c19205fdb706185703ef28db154e`  
		Last Modified: Mon, 18 Jul 2016 17:38:09 GMT  
		Size: 681.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22aac2bec911aff1c1ff2fd216be2f54cf21bf8ae3806a73db8f1e7b2132e635`  
		Last Modified: Mon, 18 Jul 2016 19:04:08 GMT  
		Size: 339.4 KB (339413 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b333626c9f13b55787e210260bf2b62031a39a5754ba97a5c993f33ec9e8a171`  
		Last Modified: Mon, 18 Jul 2016 19:04:08 GMT  
		Size: 13.1 KB (13070 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:193d40022f088e58d6b742066e9ae1c878040e0a5ddc220821c848ac22274699`  
		Last Modified: Mon, 18 Jul 2016 19:04:05 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70a2f175e052baefc7ba8a05b07038cf6f9b381de17210dd203ca3e992fb2970`  
		Last Modified: Mon, 18 Jul 2016 19:04:27 GMT  
		Size: 57.7 MB (57681476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9b6b5ac0b0f6b51be47f6d82280b62cd7f7664c52f09400444c36541ca50c0d`  
		Last Modified: Mon, 18 Jul 2016 19:04:05 GMT  
		Size: 630.2 KB (630209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e64def3891e6e50e0dcd6e6b037b352833b871ac63a5da0dea98817c3c26683`  
		Last Modified: Mon, 18 Jul 2016 19:05:01 GMT  
		Size: 189.6 MB (189640132 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dca2d13565db66c95c4f77169f7633ebc7375ac1911a2d3f0a989e693f32a8cc`  
		Last Modified: Mon, 18 Jul 2016 19:04:04 GMT  
		Size: 198.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
