## `ros:jade-ros-core`

```console
$ docker pull ros@sha256:31ae15c7e7537a3ae75901a3ccb8a8682db0686dbcbb60095d1d39a48128a379
```

-	Platforms:
	-	linux; amd64

### `ros:jade-ros-core` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **249.7 MB (249680600 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:826c72bfaee55e4086feb03bb79e6701ab39eb7095443a0d1a015a2ecb11834d`
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
# Mon, 18 Jul 2016 19:12:26 GMT
ENV ROS_DISTRO=jade
# Mon, 18 Jul 2016 19:15:02 GMT
RUN apt-get update && apt-get install -y     ros-jade-ros-core=1.2.0-0*     && rm -rf /var/lib/apt/lists/*
# Mon, 18 Jul 2016 19:15:04 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in /
# Mon, 18 Jul 2016 19:15:04 GMT
ENTRYPOINT &{["/ros_entrypoint.sh"]}
# Mon, 18 Jul 2016 19:15:05 GMT
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
	-	`sha256:ae04cfa9c509c24aa58c4f533f5b8916f295217bf041f86f7e8906a8b1d8b718`  
		Last Modified: Mon, 18 Jul 2016 19:15:57 GMT  
		Size: 150.0 MB (150044762 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3552dd371a373bb4881286ebf84425c708bbc1c2c00e23da19307193814fac6d`  
		Last Modified: Mon, 18 Jul 2016 19:15:14 GMT  
		Size: 197.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
