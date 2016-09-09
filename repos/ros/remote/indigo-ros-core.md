## `ros:indigo-ros-core`

```console
$ docker pull ros@sha256:9a0dac04bec4f0929bbe5e70c929956b2e38bf019a8115e717452ad002d7b6f5
```

-	Platforms:
	-	linux; amd64

### `ros:indigo-ros-core` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **249.6 MB (249619519 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a544b337b5b26b09154fc74c387374bd1a4bab86a9b45fb6188ac8b88401a78f`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 18 Jul 2016 17:34:50 GMT
ADD file:dc3b1b2c44af75026bc24b3f3a5bd5f45b9ca7ed395b91dfacd1b47fe0545fb5 in /
# Mon, 18 Jul 2016 17:34:53 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 18 Jul 2016 17:34:54 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 18 Jul 2016 17:34:57 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Mon, 18 Jul 2016 17:34:58 GMT
CMD ["/bin/bash"]
# Mon, 18 Jul 2016 19:05:53 GMT
MAINTAINER Tully Foote tfoote+buildfarm@osrfoundation.org
# Mon, 18 Jul 2016 19:05:56 GMT
RUN locale-gen en_US.UTF-8
# Mon, 18 Jul 2016 19:05:56 GMT
ENV LANG=en_US.UTF-8
# Mon, 18 Jul 2016 19:06:15 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Mon, 18 Jul 2016 19:06:16 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu trusty main" > /etc/apt/sources.list.d/ros-latest.list
# Mon, 18 Jul 2016 19:07:54 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Mon, 18 Jul 2016 19:08:05 GMT
RUN rosdep init     && rosdep update
# Mon, 18 Jul 2016 19:08:06 GMT
ENV ROS_DISTRO=indigo
# Mon, 18 Jul 2016 19:10:38 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-core=1.1.4-0*     && rm -rf /var/lib/apt/lists/*
# Mon, 18 Jul 2016 19:10:40 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in /
# Mon, 18 Jul 2016 19:10:40 GMT
ENTRYPOINT &{["/ros_entrypoint.sh"]}
# Mon, 18 Jul 2016 19:10:41 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:96c6a1f3c3b0183063a9dad891fe6d8ec466c2fdf9571a0c19b3319ea8a58871`  
		Last Modified: Mon, 18 Jul 2016 17:36:54 GMT  
		Size: 65.7 MB (65699069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4767a2d70a73a271b76a76e4d5edf1426c49ccc24dc7df06ebccd880f01bbeab`  
		Last Modified: Mon, 18 Jul 2016 17:36:35 GMT  
		Size: 92.3 KB (92340 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:422639bc8a94f4f9ece99c13140bd78b9f25eb62492dd0402ffa4ec58b0d6d9b`  
		Last Modified: Mon, 18 Jul 2016 17:36:35 GMT  
		Size: 366.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a797489a324abb3d09826e5f5a529034aecdc962d54ca4dd642f9548c455295f`  
		Last Modified: Mon, 18 Jul 2016 17:36:35 GMT  
		Size: 682.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6675829cf13b49fb5d7afa4153cc834f0739bc7d25cacd7915bd58e9935da53`  
		Last Modified: Mon, 18 Jul 2016 19:10:54 GMT  
		Size: 329.2 KB (329185 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ffd474e471fc5604c08bd8925c1e19f391dba9c684ac1e65f4a0141c771b50d`  
		Last Modified: Mon, 18 Jul 2016 19:10:52 GMT  
		Size: 13.1 KB (13071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee5645edeaaeed66f0df1c6bd4da8bbb5dd910a67c5323215a36aa8b9468ee9e`  
		Last Modified: Mon, 18 Jul 2016 19:10:50 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1a82b6288ded8b62f1cd6625b1fee4ec208d2cf2f9e79a3ea599359b0c3bbc6`  
		Last Modified: Mon, 18 Jul 2016 19:11:04 GMT  
		Size: 32.9 MB (32870505 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29ea19c111a704f52c77df988862b9570734510cc71fb2981a640d5f9ecd8d24`  
		Last Modified: Mon, 18 Jul 2016 19:10:50 GMT  
		Size: 630.2 KB (630200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:535cc521df40f09786be60d3a19726f4f2cc1e4a19e11d15f738e90d5aaf5611`  
		Last Modified: Mon, 18 Jul 2016 19:11:35 GMT  
		Size: 150.0 MB (149983681 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae8f8fe463f9e71c250ff9bb6065c0e565aee495201ab67a602bbdd26fbf43ad`  
		Last Modified: Mon, 18 Jul 2016 19:10:49 GMT  
		Size: 197.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
