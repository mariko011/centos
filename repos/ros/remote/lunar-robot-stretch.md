## `ros:lunar-robot-stretch`

```console
$ docker pull ros@sha256:f1fbebbcf5146c7b3a8245f08a8887f7fb1877c6ec182e044d79bdcdd1219e14
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `ros:lunar-robot-stretch` - linux; amd64

```console
$ docker pull ros@sha256:0811b2d15313729d366dbd5bccafc67536ff6ff00c01b6885fb86fe694730bcd
```

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **552.0 MB (551951549 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8b3b9753c572a5742a29ae41bb828c79d6c38aad53bdbc0ecdb54c57c2ff30cd`
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
# Fri, 08 Sep 2017 10:26:29 GMT
RUN apt-get update && apt-get install -y     ros-lunar-robot=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
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
	-	`sha256:1b343f4b5e8bfddeec406f586a95a9d5277354ad8aaa73d4cd5c03354108aa17`  
		Last Modified: Mon, 11 Sep 2017 14:37:43 GMT  
		Size: 60.4 MB (60421420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-robot-stretch` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:a6ba5bcaf32429159df53ca48d537ba5ce4eef72339421cdadb8ce5cb7ae8037
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **492.4 MB (492437288 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:26102525f5ca2213e14334d41c78721ab985f6ba9bb1386e8c97018c8ea1aa75`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 08 Sep 2017 17:28:29 GMT
ADD file:b07e310ad0ecb33cde1c2343c00726e7850bdf28d515c2fbf89ab52cb524aecd in / 
# Fri, 08 Sep 2017 17:28:30 GMT
CMD ["bash"]
# Sat, 09 Sep 2017 03:00:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Sat, 09 Sep 2017 03:00:39 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 09 Sep 2017 03:00:41 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu stretch main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 09 Sep 2017 03:03:39 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 09 Sep 2017 03:03:40 GMT
ENV LANG=C.UTF-8
# Sat, 09 Sep 2017 03:03:41 GMT
ENV LC_ALL=C.UTF-8
# Sat, 09 Sep 2017 03:04:20 GMT
RUN rosdep init     && rosdep update
# Sat, 09 Sep 2017 03:04:21 GMT
ENV ROS_DISTRO=lunar
# Sat, 09 Sep 2017 03:13:25 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 09 Sep 2017 03:13:39 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Sat, 09 Sep 2017 03:13:40 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 09 Sep 2017 03:13:45 GMT
CMD ["bash"]
# Sat, 09 Sep 2017 03:20:08 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 09 Sep 2017 03:24:51 GMT
RUN apt-get update && apt-get install -y     ros-lunar-robot=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:61e2133fe2d7b94a36716e9a4c49c342905068f6defa9060a6b963354addd21c`  
		Last Modified: Fri, 08 Sep 2017 17:42:14 GMT  
		Size: 42.9 MB (42904079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:339e3f01464484159157dcb531252b73df1b220691a7ffd2091324c080ec49e4`  
		Last Modified: Sat, 09 Sep 2017 03:44:59 GMT  
		Size: 6.8 MB (6793747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86fb38c29873a3e31ce4160fc4c702c0e49cd92494667f18f28b4a48c453f695`  
		Last Modified: Sat, 09 Sep 2017 03:44:57 GMT  
		Size: 1.4 KB (1377 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c39a719799140764a5137c166f1358bbaa4ca764c08bf3c39147a5be46458781`  
		Last Modified: Sat, 09 Sep 2017 03:44:55 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35c906ccb71f2eac0e6b0c7af59de795e0df1a95b95bf6c7729f1a518ed76fd8`  
		Last Modified: Sat, 09 Sep 2017 03:45:23 GMT  
		Size: 61.8 MB (61757065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ca968171f0d1ac2050e850cfe7dd667f0aa225c2c331b4b133ee8a445f9fe9e`  
		Last Modified: Sat, 09 Sep 2017 03:44:55 GMT  
		Size: 753.5 KB (753458 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4953cb37dc100a245f6ab57d66a4e7f46abb75d342c510e750833c49042d996d`  
		Last Modified: Sat, 09 Sep 2017 03:46:11 GMT  
		Size: 206.7 MB (206715653 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c792391df4479123bd175039d78253ab7a3435bbb346ba00248d52e036365703`  
		Last Modified: Sat, 09 Sep 2017 03:44:55 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee0622ca2800e6092b0d95d64e2be63f3fd2c38caad477fb22febdd6e0c56e55`  
		Last Modified: Sat, 09 Sep 2017 03:47:01 GMT  
		Size: 116.0 MB (116009513 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f00392fdf1b9ef9ac6a677b467135156a562662dc343260536e87d0151164bde`  
		Last Modified: Sat, 09 Sep 2017 03:47:36 GMT  
		Size: 57.5 MB (57501976 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
