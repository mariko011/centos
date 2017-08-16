## `ros:kinetic-robot-jessie`

```console
$ docker pull ros@sha256:6ca9a4eefdde9c41991fc22923552ffaf3dcf77330229e1bbb2571408ed80e8d
```

-	Platforms:
	-	linux; amd64

### `ros:kinetic-robot-jessie` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **377.3 MB (377341878 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2740f7f81b5077316b3d4e0584cd18ae49fa4416e905d3bc5f1fd65fa1fba5b7`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 24 Jul 2017 16:51:25 GMT
ADD file:a023a99f7d01868b164d63bfaf8aabc7f271659c69939c3854f041f5a3217428 in / 
# Mon, 24 Jul 2017 16:51:25 GMT
CMD ["bash"]
# Wed, 16 Aug 2017 01:05:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Wed, 16 Aug 2017 01:05:14 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 16 Aug 2017 01:05:15 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu jessie main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 16 Aug 2017 01:05:57 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 16 Aug 2017 01:05:57 GMT
ENV LANG=C.UTF-8
# Wed, 16 Aug 2017 01:05:57 GMT
ENV LC_ALL=C.UTF-8
# Wed, 16 Aug 2017 01:06:06 GMT
RUN rosdep init     && rosdep update
# Wed, 16 Aug 2017 01:06:07 GMT
ENV ROS_DISTRO=kinetic
# Wed, 16 Aug 2017 01:07:11 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 16 Aug 2017 01:07:13 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Wed, 16 Aug 2017 01:07:13 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 16 Aug 2017 01:07:13 GMT
CMD ["bash"]
# Wed, 16 Aug 2017 01:07:39 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 16 Aug 2017 01:08:35 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-robot=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:ad74af05f5a24bcf9459ae1cf7718628c2aeb6b587eb51b6eeaf639aca3e566f`  
		Last Modified: Mon, 24 Jul 2017 16:55:21 GMT  
		Size: 52.6 MB (52605632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2efbaef751c8dfd06b2835cda4763318eddaca3d1ab9ac460024aa8cc0c67656`  
		Last Modified: Wed, 16 Aug 2017 01:46:40 GMT  
		Size: 33.8 MB (33759767 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:babea24ef2334fb1731ba955855e96a8771d11e0d3f6785ba5dc87e0b8adb21f`  
		Last Modified: Wed, 16 Aug 2017 01:46:20 GMT  
		Size: 1.4 KB (1424 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6de8d95dbbae500a355fce7b5e4484dabd88fc4c78d410b07a78bfeeb3bd99c7`  
		Last Modified: Wed, 16 Aug 2017 01:46:20 GMT  
		Size: 220.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2447bbb3de32c3bc01efd58f96b2f9a722d9ea8b90f91abbee13d472cf70734b`  
		Last Modified: Wed, 16 Aug 2017 01:46:45 GMT  
		Size: 46.3 MB (46338346 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25a3931b676ce4ba558843281c3f13be74565c30bc4175f9b2f734d6fbe2384d`  
		Last Modified: Wed, 16 Aug 2017 01:46:21 GMT  
		Size: 754.6 KB (754593 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c0ec1484dc86f368c103a1ca1bf90ef16575b498ea43b3680432a1f19030476`  
		Last Modified: Wed, 16 Aug 2017 01:47:19 GMT  
		Size: 157.0 MB (156967835 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8fa1f7b940fd4c1f5f2bf560f35635d5c1f9e432b5280eeb985ce4af724dafb`  
		Last Modified: Wed, 16 Aug 2017 01:46:20 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e79d2980da1f4951e8395b77d1e4a5802780987a39325e2a55d678082c76cec`  
		Last Modified: Wed, 16 Aug 2017 01:47:33 GMT  
		Size: 5.0 MB (4987937 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdc2b9bd3796ffad982dd28beccb37202090eb9c86163673df42be7b19d25621`  
		Last Modified: Wed, 16 Aug 2017 01:48:04 GMT  
		Size: 81.9 MB (81925929 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
