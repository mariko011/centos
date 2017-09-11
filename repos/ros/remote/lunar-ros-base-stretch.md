## `ros:lunar-ros-base-stretch`

```console
$ docker pull ros@sha256:c00fbd0e4d1525bfac8590904ed72f38cd8469fce6bd070879bcb217dbdb7c53
```

-	Platforms:
	-	linux; amd64

### `ros:lunar-ros-base-stretch` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **491.5 MB (491530129 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6276f3a61846de2ada9c77171351ace4aa9c5c7e4fb6ffecfc43c89183bfeaca`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 07 Sep 2017 23:07:26 GMT
ADD file:a7405474b639b2239b96a93d02803224c052a390fe42b3f9080f2ad07de94640 in / 
# Thu, 07 Sep 2017 23:07:26 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 10:16:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 10:16:30 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Fri, 08 Sep 2017 10:16:30 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu stretch main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 08 Sep 2017 10:17:02 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 10:17:02 GMT
ENV LANG=C.UTF-8
# Fri, 08 Sep 2017 10:17:02 GMT
ENV LC_ALL=C.UTF-8
# Fri, 08 Sep 2017 10:17:13 GMT
RUN rosdep init     && rosdep update
# Fri, 08 Sep 2017 10:17:13 GMT
ENV ROS_DISTRO=lunar
# Fri, 08 Sep 2017 10:18:50 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 10:18:51 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Fri, 08 Sep 2017 10:18:51 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 08 Sep 2017 10:18:52 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 10:20:09 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:219d2e45b4afc3d80375a2fcf76505684de01f55027fb35a691099f0e538fdd8`  
		Last Modified: Thu, 07 Sep 2017 23:20:31 GMT  
		Size: 45.1 MB (45125497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0668963ee9e4eb45d3f4b5b3f63b1959b4350738429be8bae458531331c87d2`  
		Last Modified: Mon, 11 Sep 2017 14:31:32 GMT  
		Size: 7.0 MB (7030081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5dd6f833f6fbd8c50d8a1b9f3f7fc0744f0e5944246b7d3de497bca56ad7bd17`  
		Last Modified: Mon, 11 Sep 2017 14:31:28 GMT  
		Size: 1.4 KB (1373 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66404c74f7795afe361e73d56824b8a5309e4f9cfef3558033afb28d76fbce9d`  
		Last Modified: Mon, 11 Sep 2017 14:31:28 GMT  
		Size: 220.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c68c2317f3554e6d0c2f7198af72729551baeb5e092be07784d9fff5ff445e63`  
		Last Modified: Mon, 11 Sep 2017 14:31:53 GMT  
		Size: 64.7 MB (64672566 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:697e183c8fb5207639adcec972aef038c34936c7f76bb9d67a5999b7c615c7d8`  
		Last Modified: Mon, 11 Sep 2017 14:31:28 GMT  
		Size: 758.9 KB (758883 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed08b9e98fd2bf7e3ca474a9babe52f8c6bed8335a97a5c35f69348dc20c75fd`  
		Last Modified: Mon, 11 Sep 2017 14:32:37 GMT  
		Size: 251.7 MB (251745361 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d15fe8bf533d47ba13343cf08eaded36fede4d6d631a42616e4fb18885fa8c6b`  
		Last Modified: Mon, 11 Sep 2017 14:31:28 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6f2e48e6972bfc4adbb1664eedadccfee230f1b1cc348d27266e13600aecb1b`  
		Last Modified: Mon, 11 Sep 2017 14:37:05 GMT  
		Size: 122.2 MB (122195953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
