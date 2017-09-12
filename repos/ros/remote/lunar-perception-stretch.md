## `ros:lunar-perception-stretch`

```console
$ docker pull ros@sha256:04e5123726e5c6e3b41d8b2e3ff34df2afec4169115a7b648f779e7f418a96a7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `ros:lunar-perception-stretch` - linux; amd64

```console
$ docker pull ros@sha256:a79e84c6defd94afe05059d3dd804e6906d244391f6ca3433683afa5e324a067
```

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **900.4 MB (900415459 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ebcbd865a85ca818d0186c7423ff7431da8ad4377e1c6afbb572b352a14336a4`
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
# Fri, 08 Sep 2017 10:30:42 GMT
RUN apt-get update && apt-get install -y     ros-lunar-perception=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
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
	-	`sha256:4c7ef2da8f714cb47bbec2b5f685eee9d74810bfc6a08f4545a4f8c7e7c8f920`  
		Last Modified: Mon, 11 Sep 2017 14:39:40 GMT  
		Size: 408.9 MB (408885330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-perception-stretch` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:365604819573740b08d83179cc04656b85371c97c69da5b056a192c53a0d81f2
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **804.8 MB (804845160 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a26624fb648d294ba95bd9f3e21ac19fa83892c7d0ea430573b2bbec8ec96547`
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
# Sat, 09 Sep 2017 03:40:03 GMT
RUN apt-get update && apt-get install -y     ros-lunar-perception=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
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
	-	`sha256:27868226f7e7f3f95cf9cfa0e1b059d551c384e118c489edf028770ccc487fc0`  
		Last Modified: Sat, 09 Sep 2017 03:50:07 GMT  
		Size: 369.9 MB (369909848 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
