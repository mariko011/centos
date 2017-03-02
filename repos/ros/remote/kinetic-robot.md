## `ros:kinetic-robot`

```console
$ docker pull ros@sha256:faa17262fc5e317fa4c6b9f714a82808a11731dd05d2645c1c4cfdd72d9a8af4
```

-	Platforms:
	-	linux; amd64

### `ros:kinetic-robot` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **435.0 MB (434963370 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:361b872278448be35d83f15884a46e064077812f103960acb233570b9fdb0fa4`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 27 Feb 2017 19:41:42 GMT
ADD file:efb254bc677d66d6af39893698d55c79bf13f4daee5053601c5c17df91657e6e in / 
# Mon, 27 Feb 2017 19:41:53 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 27 Feb 2017 19:41:54 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 27 Feb 2017 19:41:55 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Mon, 27 Feb 2017 19:41:56 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 27 Feb 2017 19:42:10 GMT
CMD ["/bin/bash"]
# Tue, 28 Feb 2017 23:00:12 GMT
RUN locale-gen en_US.UTF-8
# Tue, 28 Feb 2017 23:00:12 GMT
ENV LANG=en_US.UTF-8
# Tue, 28 Feb 2017 23:00:14 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 28 Feb 2017 23:00:16 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 28 Feb 2017 23:00:57 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 23:01:06 GMT
RUN rosdep init     && rosdep update
# Tue, 28 Feb 2017 23:01:06 GMT
ENV ROS_DISTRO=kinetic
# Tue, 28 Feb 2017 23:06:05 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.0-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 23:06:06 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 28 Feb 2017 23:06:06 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 28 Feb 2017 23:06:07 GMT
CMD ["bash"]
# Wed, 01 Mar 2017 18:20:52 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.0-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 01 Mar 2017 18:26:18 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-robot=1.3.0-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:d54efb8db41d4ac23d29469940ec92da94c9a6c2d9e26ec060bebad1d1b0e48d`  
		Last Modified: Mon, 27 Feb 2017 19:49:03 GMT  
		Size: 50.4 MB (50428182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8b845f45a87dc7c095b15f3d9661e640ebc86f42cd8e8ab36674846472027f7`  
		Last Modified: Mon, 27 Feb 2017 19:48:46 GMT  
		Size: 820.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8db7bf7c39fab6fec91b1b61e3914f21e60233c9823dd57c60bc360191aaf0d`  
		Last Modified: Mon, 27 Feb 2017 19:48:47 GMT  
		Size: 513.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9654c40e9079e3d5b271ec71f6d83f8ce80cfa6f09d9737fc6bfd4d2456fed3f`  
		Last Modified: Mon, 27 Feb 2017 19:48:46 GMT  
		Size: 677.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d9ef359eaaa311860550b478790123c4b22a2eaede8f8f46691b0b4433c08cf`  
		Last Modified: Mon, 27 Feb 2017 19:48:46 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13ddfb9aebdf97ec2fada9528c63adccc3dac5b78d475e96196462d9c3f8d988`  
		Last Modified: Thu, 02 Mar 2017 03:49:57 GMT  
		Size: 339.4 KB (339413 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0e02147b7fbec400f0f9749bbbe7062a4528576d55099323013ea9d97770a0e`  
		Last Modified: Thu, 02 Mar 2017 03:49:57 GMT  
		Size: 13.1 KB (13072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93dc4092c5d90c1607a121e316eb47bd297ce7e777ea026dcd7839ed18b14adb`  
		Last Modified: Thu, 02 Mar 2017 03:49:54 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16bb9a4db6811f43eded43ebc997ba4e6927c971a977bbb862cec8da5e2336c8`  
		Last Modified: Thu, 02 Mar 2017 03:50:26 GMT  
		Size: 57.4 MB (57377804 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5003b0d605e2203c3e9ba8c867e714e20f8ae0eaba37475a09972699a884149`  
		Last Modified: Thu, 02 Mar 2017 03:49:55 GMT  
		Size: 725.1 KB (725058 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea91dbe33db172402ef57a520781bef17085c0f26a42a7b2066880b922c93583`  
		Last Modified: Thu, 02 Mar 2017 03:51:08 GMT  
		Size: 189.6 MB (189638206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4753b19db0ec26e7b3d18884d900e5827878528783ee5ac92d1695a4ccec137`  
		Last Modified: Thu, 02 Mar 2017 03:49:54 GMT  
		Size: 197.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe56bbca99ef0d01cfd0a1cd244d502d2bc4a9ff1644c57f90430ef3dccfff2b`  
		Last Modified: Thu, 02 Mar 2017 03:52:59 GMT  
		Size: 4.6 MB (4642091 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb49e46db5d738800ccf328f96b16c997e6fd7943e01059e318c74e602f7fc8c`  
		Last Modified: Thu, 02 Mar 2017 04:02:44 GMT  
		Size: 131.8 MB (131796954 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
