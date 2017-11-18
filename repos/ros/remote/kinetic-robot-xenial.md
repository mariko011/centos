## `ros:kinetic-robot-xenial`

```console
$ docker pull ros@sha256:4474c42a89a4ceb74ae7f2cfffba8379ccb85dd1cd36954ba0057bd31fb91246
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:kinetic-robot-xenial` - linux; amd64

```console
$ docker pull ros@sha256:815b2742e3d1e773fa0c687fd5f42407d7a221063b795d98d262fc3ac41ce556
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **446.8 MB (446811178 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3118b57c8e900d7f91ffdc0366f2d9d6084e532beaa3ad7d7a00aecd9c2d7c90`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 04 Nov 2017 09:45:32 GMT
ADD file:5b334adf9d9a2256add2a801b49d4b23c93b0973ec22bb798973d571c948f102 in / 
# Sat, 04 Nov 2017 09:45:33 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 04 Nov 2017 09:45:33 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 09:45:34 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Sat, 04 Nov 2017 09:45:35 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 04 Nov 2017 09:45:35 GMT
CMD ["/bin/bash"]
# Sat, 04 Nov 2017 19:51:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 19:51:43 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 04 Nov 2017 19:51:45 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 04 Nov 2017 19:52:12 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 19:52:12 GMT
ENV LANG=C.UTF-8
# Sat, 04 Nov 2017 19:52:12 GMT
ENV LC_ALL=C.UTF-8
# Sat, 04 Nov 2017 19:52:23 GMT
RUN rosdep init     && rosdep update
# Sat, 04 Nov 2017 19:52:23 GMT
ENV ROS_DISTRO=kinetic
# Sat, 04 Nov 2017 19:54:05 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 19:54:06 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Sat, 04 Nov 2017 19:54:06 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 04 Nov 2017 19:54:07 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 19:55:16 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 19:56:49 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-robot=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:ae79f251470513c2a0ec750117a81f2d58a50727901ca416efecf297b8a03913`  
		Last Modified: Fri, 06 Oct 2017 13:04:44 GMT  
		Size: 47.6 MB (47617129 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c59d01a7e4caf1aba785eb33192fec3f96e4ab01975962bcec10f4989a6edcc6`  
		Last Modified: Sat, 04 Nov 2017 09:46:34 GMT  
		Size: 848.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41ba73a9054d231e1f555c40a74762276900cc6487f5c6cf13b89c7606635c67`  
		Last Modified: Sat, 04 Nov 2017 09:46:33 GMT  
		Size: 619.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1bbfd495cc1112b503350686641ee4fa2cea8ccd13fb8a8a302c81dae61d418`  
		Last Modified: Sat, 04 Nov 2017 09:46:33 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c346f7223e24b517358f52c4a3f5f9af1c86e5ddeaee5659c8889846e46d1e2`  
		Last Modified: Sat, 04 Nov 2017 09:46:34 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e4fa663902f5dd2357e04a239a6c6cce86227d69fc55fbbc3c51dc70b164b83`  
		Last Modified: Sat, 04 Nov 2017 20:23:55 GMT  
		Size: 5.4 MB (5362089 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b110a156ea92217f8c1cf5b3fbd70680c97791195420f0029f762a7a5b8312fe`  
		Last Modified: Sat, 04 Nov 2017 20:23:54 GMT  
		Size: 13.1 KB (13079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4694ab97e2d52f5c246e19b5eb28485bedcd1884e6bee8b230aa24e90c48bcb1`  
		Last Modified: Sat, 04 Nov 2017 20:23:51 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:966dd11d5800be6a6e171b85dac67bbe68a93b45524ceb6ad84956124cf0ae69`  
		Last Modified: Sat, 04 Nov 2017 20:24:21 GMT  
		Size: 55.5 MB (55499029 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2dc66d4988ecfdee1d603cb33586166e388e1081d4a744ceb716e044519774cf`  
		Last Modified: Sat, 04 Nov 2017 20:23:53 GMT  
		Size: 766.6 KB (766567 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62f7b6d01f2578093a98bf9068e722c0261caef716e8bb53fa50ef338a12bb14`  
		Last Modified: Sat, 04 Nov 2017 20:24:52 GMT  
		Size: 193.3 MB (193302155 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1233a500deb02fa7204e2aeffbd4f0e71e841566930a5c78fd2914b171482c71`  
		Last Modified: Sat, 04 Nov 2017 20:23:51 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f4eef5efe8bffdc36da3b79578951ba6beedb075a348b65df4fd160ff4294e7`  
		Last Modified: Sat, 04 Nov 2017 20:26:57 GMT  
		Size: 4.9 MB (4915280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3797606736a8c9bbb82d1f78035f6ea7b485d7e7b740b0479088e3f01c86ae45`  
		Last Modified: Sat, 04 Nov 2017 20:27:53 GMT  
		Size: 139.3 MB (139332941 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic-robot-xenial` - linux; arm variant v7

```console
$ docker pull ros@sha256:b36ea40288b1b277b7b94b40bb221ef2fc10bc84dcb3a9a2fe1973b4efe67697
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **389.4 MB (389408482 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2542f7f1cf2c80241987a92ea68f3ffdbca6f08bc783e193ce30fa3a8eb2143f`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 17 Nov 2017 22:09:28 GMT
ADD file:b2052b5f6417afe3d55acd54c6a31c7f43204cd48a576c95b4c726cb3e96b7ab in / 
# Fri, 17 Nov 2017 22:09:29 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 17 Nov 2017 22:09:30 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 17 Nov 2017 22:09:31 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 17 Nov 2017 22:09:32 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 17 Nov 2017 22:09:32 GMT
CMD ["/bin/bash"]
# Fri, 17 Nov 2017 22:53:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Fri, 17 Nov 2017 22:53:53 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Fri, 17 Nov 2017 22:53:54 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 17 Nov 2017 22:55:14 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 17 Nov 2017 22:55:14 GMT
ENV LANG=C.UTF-8
# Fri, 17 Nov 2017 22:55:15 GMT
ENV LC_ALL=C.UTF-8
# Fri, 17 Nov 2017 22:55:38 GMT
RUN rosdep init     && rosdep update
# Fri, 17 Nov 2017 22:55:38 GMT
ENV ROS_DISTRO=kinetic
# Fri, 17 Nov 2017 22:58:48 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 17 Nov 2017 22:58:50 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Fri, 17 Nov 2017 22:58:51 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 17 Nov 2017 22:58:51 GMT
CMD ["bash"]
# Fri, 17 Nov 2017 22:59:30 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 17 Nov 2017 23:01:31 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-robot=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:9041d626e7ec52e79c466740ef54f750aa40c0ef2ea1a7020423b8a95afdabb2`  
		Last Modified: Fri, 17 Nov 2017 22:12:56 GMT  
		Size: 42.5 MB (42544430 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e511b3d81694329b464f2b1ad6786bc9edecfd30c5fd0916113af8249eb2f5d`  
		Last Modified: Fri, 17 Nov 2017 22:12:43 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c02f4e634a9a8ef037a896e315493f43b4f9555236433417bb23092fd69d2890`  
		Last Modified: Fri, 17 Nov 2017 22:12:43 GMT  
		Size: 615.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5f7621077f1d53e30e03642923f94e5acb2cb2dfe5b8593eec312f5ff37ce14`  
		Last Modified: Fri, 17 Nov 2017 22:12:43 GMT  
		Size: 856.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca6b7332dc53009fdb66497badbbbade2ac40bc629774eb6797b72f4c0824a68`  
		Last Modified: Fri, 17 Nov 2017 22:12:44 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f82e070af5ef92b464f8968de7f65fec32703c53f481b46e25c23afbfbf3603`  
		Last Modified: Fri, 17 Nov 2017 23:23:33 GMT  
		Size: 4.6 MB (4614560 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9c71f126c282ca8cbf0c5d4cfb5f054847eba5ffa2909a00df27fed4911b8ff`  
		Last Modified: Fri, 17 Nov 2017 23:23:31 GMT  
		Size: 13.1 KB (13082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dec3bd93d685b3dd121a02e8e49f579c3050c99666bf3ef43969c29d84d721f2`  
		Last Modified: Fri, 17 Nov 2017 23:23:30 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5badf9568bc3be01865b1ae1c359962a8ed2294cf5c9af51759f59d1e0e57445`  
		Last Modified: Fri, 17 Nov 2017 23:23:48 GMT  
		Size: 50.7 MB (50650960 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0293ea8f69d70c3fa1c4c6c7887f750c7c0bc75acbdb03acabf0654c93c54c3`  
		Last Modified: Fri, 17 Nov 2017 23:23:31 GMT  
		Size: 769.1 KB (769143 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3f12f8c82e682b977e2fb4f1558bc73f7f4da3a84de6d125dd509517bc67523`  
		Last Modified: Fri, 17 Nov 2017 23:24:19 GMT  
		Size: 164.7 MB (164690630 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7cf8e44a08b2ef94ab4a319e8f76380d8a69da7e832fbbd0b3bd559929bf0bce`  
		Last Modified: Fri, 17 Nov 2017 23:23:31 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:694b713c57a08aec6435b7881b032206fde944b44194242f39d41ec684b2fa00`  
		Last Modified: Fri, 17 Nov 2017 23:24:44 GMT  
		Size: 4.5 MB (4471360 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14cf32170eea09cf4c63223ea3dc944a13f104791e0cb85687eaeb2bee195ea1`  
		Last Modified: Fri, 17 Nov 2017 23:25:59 GMT  
		Size: 121.7 MB (121651406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic-robot-xenial` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:beed036ab5ea2e10d925258ec1ad8cbd4605ff2eb891b9d67388251f9a244462
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **405.7 MB (405749714 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9c8d43832f7e605cc10cbdd3404c0f53e2b35a78bfe21818ebfbe69bd9162a84`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 11 Oct 2017 14:01:45 GMT
ADD file:17aebc392b3cf207dbe2809abd34b9eec60c3a0e8b39dcd04f8f29a863e966b3 in / 
# Wed, 11 Oct 2017 14:01:47 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 11 Oct 2017 14:01:49 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 14:01:50 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 11 Oct 2017 14:01:52 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 11 Oct 2017 14:01:52 GMT
CMD ["/bin/bash"]
# Wed, 11 Oct 2017 14:21:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 14:22:01 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 11 Oct 2017 14:22:11 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 11 Oct 2017 14:24:25 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 14:24:33 GMT
ENV LANG=C.UTF-8
# Wed, 11 Oct 2017 14:24:34 GMT
ENV LC_ALL=C.UTF-8
# Wed, 11 Oct 2017 14:25:14 GMT
RUN rosdep init     && rosdep update
# Wed, 11 Oct 2017 14:25:21 GMT
ENV ROS_DISTRO=kinetic
# Wed, 11 Oct 2017 14:38:32 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 14:38:36 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Wed, 11 Oct 2017 14:38:45 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 11 Oct 2017 14:38:46 GMT
CMD ["bash"]
# Wed, 11 Oct 2017 14:39:55 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 14:52:01 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-robot=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:aac43d4d6c83c61c78a7814ef7d2e02dc6c2f52dc110ff181aea144991711636`  
		Last Modified: Fri, 06 Oct 2017 22:13:46 GMT  
		Size: 43.4 MB (43426326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eed65d92515dfacf9a35d3301bc4847f1057d240f9ab3c442b573bdbb8452791`  
		Last Modified: Wed, 11 Oct 2017 14:03:45 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2de5574dca5eb5a1b9351c990c0865bbe18370da61e7169a539ba80bbdb058b2`  
		Last Modified: Wed, 11 Oct 2017 14:03:44 GMT  
		Size: 617.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5a76e352cce541b89ec31a527e09d2185c9427315f118b56573f79eb31b4c2b`  
		Last Modified: Wed, 11 Oct 2017 14:03:45 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2aceaacecb77ef3360c013ffcd305eecd6cf17a32bd143a72ca0b86b74721ba`  
		Last Modified: Wed, 11 Oct 2017 14:03:45 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df2b464ff94260bae09f2719a99368cdaf4e91cb4ac7f8292454419def5b6bb2`  
		Last Modified: Wed, 11 Oct 2017 15:42:12 GMT  
		Size: 4.8 MB (4819150 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:317f3f12586aa0432e4b41b4e01e1e59b1132bbf0cb8d0a8bec39998598cfc19`  
		Last Modified: Wed, 11 Oct 2017 15:42:04 GMT  
		Size: 13.1 KB (13087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d485a4030132f2b8618b2c1e9adeb0f3512ff862a371cbffb828825cd90b712`  
		Last Modified: Wed, 11 Oct 2017 15:42:02 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebe5f4f3df9287919c1ddc687c131a9235d6053e50879ffbdd2307364fe2784c`  
		Last Modified: Wed, 11 Oct 2017 15:43:00 GMT  
		Size: 52.3 MB (52342563 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:624ab9416f2027ffb47c0f23bc9805307660d34dc41b41bace605c5ee21025e3`  
		Last Modified: Wed, 11 Oct 2017 15:42:03 GMT  
		Size: 760.2 KB (760212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee34836a9ef73b7f0ac44bb3febcd37e3297ed71278f88766d54dd36697393f9`  
		Last Modified: Wed, 11 Oct 2017 15:43:51 GMT  
		Size: 173.9 MB (173908949 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b52cac267b67146f0bc3668dba08f98f3cbe6c14049ecf73fd639745f79378e1`  
		Last Modified: Wed, 11 Oct 2017 15:42:01 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a0eec5946a348abb10b86e745543a65458459d0455074b1bd9f84fc94087481`  
		Last Modified: Wed, 11 Oct 2017 15:44:22 GMT  
		Size: 4.8 MB (4768946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d40f427c62b342e3cf70774e8a44a468e407aaf9eaefc258dbe454f52783f6b`  
		Last Modified: Wed, 11 Oct 2017 15:46:14 GMT  
		Size: 125.7 MB (125707573 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
