## `ros:kinetic-robot-jessie`

```console
$ docker pull ros@sha256:0d111e2f616084c3edf3a52476c262bc74d6466dc3d3be26bffbd81bc05eb4c7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `ros:kinetic-robot-jessie` - linux; amd64

```console
$ docker pull ros@sha256:b529b20341b4a674ce6914ccd6a238bb3cb6f7400f1c30c49dad2e0e5bd48a2d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **377.8 MB (377835594 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:76148ea2ead4e2c8dfc07b7cdd2c7b5d225054f181c4dc96572143da2e47171a`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 04 Nov 2017 05:21:35 GMT
ADD file:55b071e2cfc3ea2f4bbf048d7d676e3c06a77a9a98d63f7af291f3decb495ec8 in / 
# Sat, 04 Nov 2017 05:21:36 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 07:21:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 07:21:55 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 04 Nov 2017 07:21:56 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu jessie main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 04 Nov 2017 07:22:28 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 07:22:28 GMT
ENV LANG=C.UTF-8
# Sat, 04 Nov 2017 07:22:28 GMT
ENV LC_ALL=C.UTF-8
# Sat, 04 Nov 2017 07:22:38 GMT
RUN rosdep init     && rosdep update
# Sat, 04 Nov 2017 07:22:38 GMT
ENV ROS_DISTRO=kinetic
# Sat, 04 Nov 2017 07:24:33 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 07:24:35 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Sat, 04 Nov 2017 07:24:35 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 04 Nov 2017 07:24:35 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 07:25:11 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 07:26:19 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-robot=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:85b1f47fba49da65256f07c8790542a3880e9216f9c491965040f35ce2c6ca7a`  
		Last Modified: Mon, 09 Oct 2017 21:36:40 GMT  
		Size: 52.6 MB (52595124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3c0ae9a636a926e9bd468eb854e794ba7d7b9b5b83450a93d83f09b4d81a439`  
		Last Modified: Sat, 04 Nov 2017 08:09:05 GMT  
		Size: 33.8 MB (33762049 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b43dfed508eccd10a2cd98e1b7f0547c458f6090d31410d246d1e29733d66564`  
		Last Modified: Sat, 04 Nov 2017 08:08:48 GMT  
		Size: 1.4 KB (1426 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d33652d70832942c4dbfb9d842ccb32134497a71976008b4d0a40440264174b`  
		Last Modified: Sat, 04 Nov 2017 08:08:45 GMT  
		Size: 220.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:843b632622dfe4f0a078e1b7c9184f911928f51a68db654b081ff7d52d3a9095`  
		Last Modified: Sat, 04 Nov 2017 08:09:14 GMT  
		Size: 46.3 MB (46339112 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9beac456cab26649fc8c2c467dc1ce22187c499c5d26fede98f11b69d5646938`  
		Last Modified: Sat, 04 Nov 2017 08:08:46 GMT  
		Size: 766.3 KB (766309 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0febbfa2b96b1b3b4fb2125075b30ad0b66cf6cbd6bba652300b5f6adbb6e9b`  
		Last Modified: Sat, 04 Nov 2017 08:09:53 GMT  
		Size: 157.2 MB (157219096 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:891bf73adf927e962949e8319d2bea0d98db8cb88d68be9b60e8cccdabbe0442`  
		Last Modified: Sat, 04 Nov 2017 08:08:45 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f18a60295cf9ed6ef58f6639b2aff479fc44179c17e8b8e140e7f7fe9db5d594`  
		Last Modified: Sat, 04 Nov 2017 08:10:08 GMT  
		Size: 5.2 MB (5226253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1b0b3c59ea44eebbab81c23854853152b44013fc4760db63fe6864c5787e9c1`  
		Last Modified: Sat, 04 Nov 2017 08:10:43 GMT  
		Size: 81.9 MB (81925811 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic-robot-jessie` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:2faa9707586a2b668be8c1a30536b599d33ec20cbc8ebde54b8a9671880effbd
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **327.3 MB (327304432 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6b102cd92b1b9a05b80e02c26348a2e883f5e92465ff2bf56a36687e25c1012e`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 09 Oct 2017 21:43:13 GMT
ADD file:1661271485aa5a1ca074498b8ca025f41e547bf2b33335b108d9aaa06717b2a5 in / 
# Mon, 09 Oct 2017 21:43:14 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 05:24:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 05:24:16 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 10 Oct 2017 05:24:18 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu jessie main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 10 Oct 2017 05:31:15 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 05:31:17 GMT
ENV LANG=C.UTF-8
# Tue, 10 Oct 2017 05:31:19 GMT
ENV LC_ALL=C.UTF-8
# Tue, 10 Oct 2017 05:32:03 GMT
RUN rosdep init     && rosdep update
# Tue, 10 Oct 2017 05:32:04 GMT
ENV ROS_DISTRO=kinetic
# Tue, 10 Oct 2017 05:42:01 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 05:42:16 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 10 Oct 2017 05:42:17 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 10 Oct 2017 05:42:18 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 05:43:49 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 05:50:48 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-robot=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:abcff42ba939437677463734d9b81de5e60df7354c734ee3ddd879c0d3d5d595`  
		Last Modified: Mon, 09 Oct 2017 21:52:08 GMT  
		Size: 49.9 MB (49929310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed53a0e32c1b2f2a67dbfad8623465e456ea2dcfd2f437519bc410ba7d4309e7`  
		Last Modified: Tue, 10 Oct 2017 06:56:43 GMT  
		Size: 32.1 MB (32144208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32418b9644e3e3bcaebd80cae720123c7e69300df6492f406d36fda986848f2d`  
		Last Modified: Tue, 10 Oct 2017 06:55:25 GMT  
		Size: 1.4 KB (1425 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7403be4847b73b2ed977eb3b1033568eacb60aa9311c46238dbfb252c36367e`  
		Last Modified: Tue, 10 Oct 2017 06:55:22 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42f8bc7346a1b1e5d6a0bfbf912f05b222f94ae8f5ad53459637940ed752bea3`  
		Last Modified: Tue, 10 Oct 2017 06:57:20 GMT  
		Size: 44.0 MB (44036516 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4aff210063002397f556b1e2a11a12603b996412e81c112d3005a186efe7b08`  
		Last Modified: Tue, 10 Oct 2017 06:55:25 GMT  
		Size: 760.2 KB (760214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92cd439c8e2df7fe2a14848eef1e8c2be800dcd3c23ed558ff192485b939579f`  
		Last Modified: Tue, 10 Oct 2017 06:58:10 GMT  
		Size: 130.5 MB (130498440 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50f3779df0d71b7db3d8c37939d122589ca167bb9dd80dafb6a03e63e4727c1a`  
		Last Modified: Tue, 10 Oct 2017 06:55:22 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f79e7f4a6b40c3fef37db2f055f377162d11accecb2d6269c91c41657f241b33`  
		Last Modified: Tue, 10 Oct 2017 06:58:51 GMT  
		Size: 5.1 MB (5062708 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29f45091a1817e9f4797836f2e28a76408756eadb10f8bd3f173cefc78f40637`  
		Last Modified: Tue, 10 Oct 2017 06:59:30 GMT  
		Size: 64.9 MB (64871190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
