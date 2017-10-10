## `ros:lunar-ros-core-zesty`

```console
$ docker pull ros@sha256:2d35c8a86f0f07195ca2b872f8a57ee5bf5733c8ccdde0b28928bc52eddc1767
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `ros:lunar-ros-core-zesty` - linux; amd64

```console
$ docker pull ros@sha256:8e761b559d4f0d140bf003ee3b1b8050dd99aa67ac2c2aebe75a000f1dc539f3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **353.5 MB (353533020 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4daeda0edc4a426c6ff24633c6eecb613e6f1eddcf4de5598523c66b3dcc7b68`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 18 Sep 2017 23:31:50 GMT
ADD file:4e2e1f8336bcc64e853e9f3462f0829ce85b34a32755dba06aa7bd0007eda4f0 in / 
# Mon, 18 Sep 2017 23:31:50 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 18 Sep 2017 23:31:51 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 18 Sep 2017 23:31:52 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Mon, 18 Sep 2017 23:31:52 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 18 Sep 2017 23:31:52 GMT
CMD ["/bin/bash"]
# Tue, 10 Oct 2017 03:06:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 03:06:18 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 10 Oct 2017 03:06:19 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu zesty main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 10 Oct 2017 03:06:48 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 03:06:49 GMT
ENV LANG=C.UTF-8
# Tue, 10 Oct 2017 03:06:49 GMT
ENV LC_ALL=C.UTF-8
# Tue, 10 Oct 2017 03:07:00 GMT
RUN rosdep init     && rosdep update
# Tue, 10 Oct 2017 03:07:00 GMT
ENV ROS_DISTRO=lunar
# Tue, 10 Oct 2017 03:08:31 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 03:08:33 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 10 Oct 2017 03:08:33 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 10 Oct 2017 03:08:38 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:8b23367590c32dbb6954ab3cc9b6c451b9763556c72a893538efe88583f6a5dc`  
		Last Modified: Mon, 18 Sep 2017 23:33:09 GMT  
		Size: 38.4 MB (38437889 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7feb578947e4b86e0a0cff64b42489dc1305bbacdb3ed36d0afe95a19ebf845`  
		Last Modified: Mon, 18 Sep 2017 23:33:03 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac836f06379c8d7356e0d2e7dbb3e9f3924616527fa51b95545fb455eec31f08`  
		Last Modified: Mon, 18 Sep 2017 23:33:03 GMT  
		Size: 569.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be286dc472df31f16953d34151f836d0186fddeea6cd56dcefd2a6d46a992500`  
		Last Modified: Mon, 18 Sep 2017 23:33:03 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5533df5f353d9fbcbd081e9dd653fe7d8ddebed958d1f0e56fa4a87b216f13c1`  
		Last Modified: Mon, 18 Sep 2017 23:33:03 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:941d2fac0f14226501e34da5b43391f4bbe04d3346877822b31eafa6536129d0`  
		Last Modified: Tue, 10 Oct 2017 03:37:48 GMT  
		Size: 3.4 MB (3401510 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81b067fed8961dece065ee9bccff1d9119d9eccccf104299066405dba95a2652`  
		Last Modified: Tue, 10 Oct 2017 03:37:46 GMT  
		Size: 1.4 KB (1377 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbff2b0d61e4e675eeb8cb68cd72d13a05c3906d700390ff97ec5e5b410f25bb`  
		Last Modified: Tue, 10 Oct 2017 03:37:44 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36675dd75235c3e694f430b21494a0524ac4578a3706eb08fd6e6684e14d8a1e`  
		Last Modified: Tue, 10 Oct 2017 03:38:15 GMT  
		Size: 58.6 MB (58605790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:498574cb89d5edfe2e30643da36d0160ccf0677f80ecc5fdaa36046a8b464d9f`  
		Last Modified: Tue, 10 Oct 2017 03:37:44 GMT  
		Size: 760.2 KB (760207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6a435b81f91cade435478334da7c04ceaba7578753f48749829c22a28d5db6c`  
		Last Modified: Tue, 10 Oct 2017 03:38:59 GMT  
		Size: 252.3 MB (252323400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36ebb4a524495455eaae97004bcb1e81121bd358b5468f441ba48639314e26ae`  
		Last Modified: Tue, 10 Oct 2017 03:37:44 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
