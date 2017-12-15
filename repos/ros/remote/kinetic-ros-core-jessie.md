## `ros:kinetic-ros-core-jessie`

```console
$ docker pull ros@sha256:3cd0fd0f3ed4d85173f79c601db9d9c56900bc6e86abd55405c9ff9941ec84db
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `ros:kinetic-ros-core-jessie` - linux; amd64

```console
$ docker pull ros@sha256:9c7ed2ad39c8e023295234a76f798e41ea6dd81a77d0ea626c6909509fb1d755
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **290.8 MB (290785993 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7e646882f480109c697b88ec75bc39c233c3db202f6cc155299e5698ae7512f5`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 12 Dec 2017 01:41:12 GMT
ADD file:1dd78a123212328bdc72ef7888024ea27fe141a72e24e0ea7c3c92b63b73d8d1 in / 
# Tue, 12 Dec 2017 01:41:12 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 02:51:10 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 02:51:16 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 12 Dec 2017 02:51:22 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu jessie main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 12 Dec 2017 02:51:56 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 02:51:56 GMT
ENV LANG=C.UTF-8
# Tue, 12 Dec 2017 02:51:56 GMT
ENV LC_ALL=C.UTF-8
# Tue, 12 Dec 2017 02:52:06 GMT
RUN rosdep init     && rosdep update
# Tue, 12 Dec 2017 02:52:07 GMT
ENV ROS_DISTRO=kinetic
# Tue, 12 Dec 2017 02:53:35 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 02:53:36 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 12 Dec 2017 02:53:36 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 12 Dec 2017 02:53:36 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:f49cf87b52c10aa83b4f4405800527a74400fb19ea1821d209293bc4d53966aa`  
		Last Modified: Tue, 12 Dec 2017 01:47:59 GMT  
		Size: 52.6 MB (52599697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebfdcacb3eb2a6e14de6ff02deedf419772045e7dfca28ac49c09d65b153f39d`  
		Last Modified: Tue, 12 Dec 2017 03:31:00 GMT  
		Size: 33.8 MB (33770772 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36c2692ca7c2d913f8b2f578acf79acb2391a52afe02beec43c67f416dd48eeb`  
		Last Modified: Tue, 12 Dec 2017 03:30:42 GMT  
		Size: 1.4 KB (1426 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15e84e13aa65d6a131bc52b118ce12e08b9355933cd5fbb6c6076385b207346b`  
		Last Modified: Tue, 12 Dec 2017 03:30:40 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2789d6c07bffcfec4807025ffc451a01cae5f2518e102b07ef2d1cc3cab91bd`  
		Last Modified: Tue, 12 Dec 2017 03:31:07 GMT  
		Size: 46.4 MB (46366197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2417c2abd7b6a2938769d8787425c26a428cdc4e3bb7e6d2bdd2565d32b37414`  
		Last Modified: Tue, 12 Dec 2017 03:30:40 GMT  
		Size: 776.9 KB (776928 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a794e02032dbbd05c006e82528474cd42e14b880c8d3fbc7694a2db7d4aa748`  
		Last Modified: Tue, 12 Dec 2017 03:31:36 GMT  
		Size: 157.3 MB (157270555 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:916f9d9d07229ff53bcc32dd6d6a4058f0682f30d2a61d99e1fb48a20ba7d5cd`  
		Last Modified: Tue, 12 Dec 2017 03:30:40 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic-ros-core-jessie` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:13efd1c5c773251f1a90b2d1b6918fb3cd5976cf18d7e4b03dfd633bc30607c5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **257.5 MB (257481970 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f34c212dda672fb91d458e1f935888aa31e459371344eff16ce86464758eab11`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 12 Dec 2017 18:24:58 GMT
ADD file:f0da52be154f821919dcbfb92afd89714053ae507038126715c96ac77a6768e1 in / 
# Tue, 12 Dec 2017 18:24:59 GMT
CMD ["bash"]
# Fri, 15 Dec 2017 18:28:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 18:28:37 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Fri, 15 Dec 2017 18:28:39 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu jessie main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 15 Dec 2017 18:31:48 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 18:31:49 GMT
ENV LANG=C.UTF-8
# Fri, 15 Dec 2017 18:31:49 GMT
ENV LC_ALL=C.UTF-8
# Fri, 15 Dec 2017 18:32:31 GMT
RUN rosdep init     && rosdep update
# Fri, 15 Dec 2017 18:32:31 GMT
ENV ROS_DISTRO=kinetic
# Fri, 15 Dec 2017 18:39:12 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 18:39:16 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Fri, 15 Dec 2017 18:39:16 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 15 Dec 2017 18:39:17 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:7e6d91e96b32c4999458c6c0cda42f920e41aab0cfbf3153f6e013b222bf084d`  
		Last Modified: Tue, 12 Dec 2017 18:39:54 GMT  
		Size: 49.9 MB (49926676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bd3dd0875f4aee4fe8ad6a3dd9048277ecc67b31684f68dcf88250ad001f606`  
		Last Modified: Fri, 15 Dec 2017 20:29:49 GMT  
		Size: 32.1 MB (32145451 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e9abe37fea91e192d4c0838f7cf8485c61f282ebf6db303b4fb4ceea68f31c6`  
		Last Modified: Fri, 15 Dec 2017 20:29:37 GMT  
		Size: 1.4 KB (1421 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12dee50035ad289c033a148db661fdf88e9ae0a40b0dab98c3e5147c0f1b72d3`  
		Last Modified: Fri, 15 Dec 2017 20:29:35 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e4977f1bb59857da64dc510ff11dd266329ba2fae77ed25e141d7fa953794d6`  
		Last Modified: Fri, 15 Dec 2017 20:29:56 GMT  
		Size: 44.1 MB (44074869 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb2d1275276e05799eda03f5a53d0da1380f36d1ab6b853211fb2765cf380d62`  
		Last Modified: Fri, 15 Dec 2017 20:29:37 GMT  
		Size: 777.3 KB (777314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1091850eeb32791c2d201900c3e8e0c798ef3afb47838405060f744bd4cb6292`  
		Last Modified: Fri, 15 Dec 2017 20:30:41 GMT  
		Size: 130.6 MB (130555820 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35ed0c4b3181d461489cd6ad3e7d239daec67d95051c54a0cc7d28aef5e55c61`  
		Last Modified: Fri, 15 Dec 2017 20:29:35 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
