## `ros:jade`

```console
$ docker pull ros@sha256:bec3bafc556c6d311fb5661d78ff02f0ebb6766e450afdeb2e350cd4472eeb67
```

-	Platforms:
	-	linux; amd64

### `ros:jade` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **255.1 MB (255055477 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:238e4c131d3f1fd4c9ef7ff533e7e6e58c48a26c0dae3bdef02a13b6d8d9dcd7`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 19 Sep 2016 17:01:05 GMT
ADD file:84af410c096e19f2106852b7926f0d4c9f1770962b6cd42ad508600d88c8c975 in / 
# Mon, 19 Sep 2016 17:01:06 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 19 Sep 2016 17:01:07 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 19 Sep 2016 17:01:08 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Mon, 19 Sep 2016 17:01:09 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 19 Sep 2016 17:01:09 GMT
CMD ["/bin/bash"]
# Mon, 26 Sep 2016 16:43:43 GMT
MAINTAINER Tully Foote tfoote+buildfarm@osrfoundation.org
# Mon, 26 Sep 2016 16:43:45 GMT
RUN locale-gen en_US.UTF-8
# Mon, 26 Sep 2016 16:43:50 GMT
ENV LANG=en_US.UTF-8
# Mon, 26 Sep 2016 16:43:52 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Mon, 26 Sep 2016 16:43:53 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu trusty main" > /etc/apt/sources.list.d/ros-latest.list
# Mon, 26 Sep 2016 16:44:31 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Mon, 26 Sep 2016 16:44:41 GMT
RUN rosdep init     && rosdep update
# Mon, 26 Sep 2016 16:52:15 GMT
ENV ROS_DISTRO=jade
# Mon, 26 Sep 2016 16:54:03 GMT
RUN apt-get update && apt-get install -y     ros-jade-ros-core=1.2.0-0*     && rm -rf /var/lib/apt/lists/*
# Mon, 26 Sep 2016 16:54:08 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Mon, 26 Sep 2016 16:54:08 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Mon, 26 Sep 2016 16:54:09 GMT
CMD ["bash"]
# Mon, 26 Sep 2016 16:54:09 GMT
MAINTAINER Tully Foote tfoote+buildfarm@osrfoundation.org
# Mon, 26 Sep 2016 16:54:27 GMT
RUN apt-get update && apt-get install -y     ros-jade-ros-base=1.2.0-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:71a21fdea81d21aa19f00fb67e74d07e5c84019f8e2a5f81c64395db55360088`  
		Last Modified: Mon, 19 Sep 2016 17:02:49 GMT  
		Size: 65.7 MB (65701042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf68a3ea6e1d8b0bdffc8984227ff9177045bc9539d13c8f025cc1e042e1a33b`  
		Last Modified: Mon, 19 Sep 2016 17:02:27 GMT  
		Size: 71.6 KB (71563 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31cb2a4d344ac499d302fd05f8b36fd6213188e44301442fd553166a09716c30`  
		Last Modified: Mon, 19 Sep 2016 17:02:27 GMT  
		Size: 364.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0341b6fcb0feba96fadaa1e47a61ae18d6662c9cb6c0900f6eab11e575e94835`  
		Last Modified: Mon, 19 Sep 2016 17:02:27 GMT  
		Size: 680.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8777cc4836480facc3edbd380f790e4810c23f1f91aeda49ddd46d8681a337d`  
		Last Modified: Mon, 19 Sep 2016 17:02:27 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f6828a3c223716e523c54ed0a0bd404f1c419d22c00982d8816e929a85cab95`  
		Last Modified: Mon, 26 Sep 2016 17:08:41 GMT  
		Size: 329.2 KB (329187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b19742721de7a230a064cd04f03a5234747f3358e525eaff90250872347d753d`  
		Last Modified: Mon, 26 Sep 2016 17:08:40 GMT  
		Size: 13.1 KB (13073 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67457951490afa06b33680bc7eff702ca42e126e34f323fd1b9aa5f466ef62fc`  
		Last Modified: Mon, 26 Sep 2016 17:08:37 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d65c8a46c982616b51d49cbf80ddca2cea3f812c1eb1592ef3542f1e804cc640`  
		Last Modified: Mon, 26 Sep 2016 17:08:53 GMT  
		Size: 32.9 MB (32866721 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58dec3780c1b1411332c7a821021b384e5a54d092190e16e304f2f94a493f627`  
		Last Modified: Mon, 26 Sep 2016 17:08:38 GMT  
		Size: 664.1 KB (664127 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76cfe9966132662b78136d8a2082062ffc5338f85c28228e5f84aa84f8cb6456`  
		Last Modified: Mon, 26 Sep 2016 17:14:02 GMT  
		Size: 152.0 MB (151971193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81a4282598ce793c48bffc5b1d6a7a4a41f11e07b39f2c9785f0aa3eeab57df6`  
		Last Modified: Mon, 26 Sep 2016 17:13:05 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfd3c9693fa64b2c6f1caa70c6db48de37af99dc2fca82d598f5b98548ee8c63`  
		Last Modified: Mon, 26 Sep 2016 17:14:21 GMT  
		Size: 3.4 MB (3436947 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
