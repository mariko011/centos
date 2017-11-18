## `ros:kinetic-perception`

```console
$ docker pull ros@sha256:236ec270d626da1a7af6ff79033bc23697a9d55042bfd54ab177a75b277dcaf3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:kinetic-perception` - linux; amd64

```console
$ docker pull ros@sha256:b8944f09bde539d4255bfb403c192a9bc5732b28db0e13ff1ecb9d3881df36ef
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **695.5 MB (695534047 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e28e57876ada04e228dc93c65e07f6347f9cae7aca932ab8f44974c25ac3b340`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 17 Nov 2017 21:59:22 GMT
ADD file:280a445783f309c90ab928883d98e4326c1fbe19927c8a555da41bcb74c71a45 in / 
# Fri, 17 Nov 2017 21:59:22 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 17 Nov 2017 21:59:23 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 17 Nov 2017 21:59:24 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 17 Nov 2017 21:59:24 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 17 Nov 2017 21:59:25 GMT
CMD ["/bin/bash"]
# Fri, 17 Nov 2017 23:20:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Fri, 17 Nov 2017 23:20:22 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Fri, 17 Nov 2017 23:20:23 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 17 Nov 2017 23:20:50 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 17 Nov 2017 23:20:51 GMT
ENV LANG=C.UTF-8
# Fri, 17 Nov 2017 23:20:51 GMT
ENV LC_ALL=C.UTF-8
# Fri, 17 Nov 2017 23:21:01 GMT
RUN rosdep init     && rosdep update
# Fri, 17 Nov 2017 23:21:02 GMT
ENV ROS_DISTRO=kinetic
# Fri, 17 Nov 2017 23:22:30 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 17 Nov 2017 23:22:31 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Fri, 17 Nov 2017 23:22:31 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 17 Nov 2017 23:22:31 GMT
CMD ["bash"]
# Fri, 17 Nov 2017 23:26:28 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 17 Nov 2017 23:35:32 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-perception=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:660c48dd555dcbfdfe19c80a30f557ac57a15f595250e67bfad1e5663c1725bb`  
		Last Modified: Fri, 17 Nov 2017 22:01:36 GMT  
		Size: 47.8 MB (47759720 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c7380416e7816a5ab1f840482c9c3ca8de58c6f3ee7f95e55ad299abbfe599f`  
		Last Modified: Fri, 17 Nov 2017 22:01:29 GMT  
		Size: 846.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:421e436b5f80d876128b74139531693be9b4e59e4f1081c9a3c379c95094e375`  
		Last Modified: Fri, 17 Nov 2017 22:01:29 GMT  
		Size: 620.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4ce6c3651b3a090bb43688f512f687ea6e3e533132bcbc4a83fb97e7046cea3`  
		Last Modified: Fri, 17 Nov 2017 22:01:29 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be588e74bd348ce48bb7161350f4b9d783c331f37a853a80b0b4abc0a33c569e`  
		Last Modified: Fri, 17 Nov 2017 22:01:29 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d48c5adeb677c31834fb4f0a421c7abe46fa981e351ba383daa31c8bd8258ff`  
		Last Modified: Sat, 18 Nov 2017 00:25:50 GMT  
		Size: 5.4 MB (5362321 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67efbc407c69d20165ef33ce1fff280c4f40bea3806b29c453a083ea742de689`  
		Last Modified: Sat, 18 Nov 2017 00:25:47 GMT  
		Size: 13.1 KB (13078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eccc69b6b48cc2bfb2a54893ed3df4820cb22910cd914d6288668f8ac2911f4f`  
		Last Modified: Sat, 18 Nov 2017 00:25:46 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c59fdb4c0e349f125e66ab79a9c678bf20bb7d76e41b4d367b5bb4f816429c3c`  
		Last Modified: Sat, 18 Nov 2017 00:26:36 GMT  
		Size: 55.5 MB (55494081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43f81bcef333f6f61dd4c116f8f15b306140ef4086f7eb76fede17789f0800ad`  
		Last Modified: Sat, 18 Nov 2017 00:25:45 GMT  
		Size: 769.0 KB (769016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:417abb0b4ad670358484ee00caa19af1a6c3f1a904ac6cd5f0880401cc8ce95e`  
		Last Modified: Sat, 18 Nov 2017 00:27:29 GMT  
		Size: 193.3 MB (193304137 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:826682f9986fa4a31c2dbe65f1150ddde4e8ecb1d887f492641ecc835dc8e594`  
		Last Modified: Sat, 18 Nov 2017 00:25:44 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:821f9ae70ade6382452a0151c8e9cadea2b5ac3864335f12107b0f80e2b4116c`  
		Last Modified: Sat, 18 Nov 2017 00:27:54 GMT  
		Size: 4.9 MB (4914374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c61f68025591ac39128fa4d7ae87d2b6fe0ffd7b38e9705f690f89ff806f636c`  
		Last Modified: Sat, 18 Nov 2017 00:30:47 GMT  
		Size: 387.9 MB (387914417 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic-perception` - linux; arm variant v7

```console
$ docker pull ros@sha256:f34eeca138619b15289fdaa0766f1f63f4bd2c336ed89abfdc3d43225815471e
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **604.9 MB (604939821 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cdab4c6f5dcbb3560c2b1a7d1b6e3d84db41716f21b5d2504c2ddd1b971b53f1`
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
# Fri, 17 Nov 2017 23:06:10 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-perception=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
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
	-	`sha256:42e83ec4d54741e5bdd2d50b1a68eada658b268a681e6b6a60df95b28467db3f`  
		Last Modified: Fri, 17 Nov 2017 23:27:49 GMT  
		Size: 337.2 MB (337182745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic-perception` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:ca403f225f3bc021b1959d1e5ea84cb5ace92fb082ff9037ff9962b89b9ad1f2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **631.3 MB (631296089 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eb2f584adbcc8c3a61df2354a9444ce5e5f6a55ab5f472b8a86e50751bbfdcd3`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 17 Nov 2017 22:10:44 GMT
ADD file:d77c0d95beda43347e2aef035d8d2396f1005104427c4beac6f2cb5e2537a197 in / 
# Fri, 17 Nov 2017 22:10:45 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 17 Nov 2017 22:10:47 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 17 Nov 2017 22:10:48 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 17 Nov 2017 22:10:50 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 17 Nov 2017 22:10:50 GMT
CMD ["/bin/bash"]
# Fri, 17 Nov 2017 22:35:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Fri, 17 Nov 2017 22:36:01 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Fri, 17 Nov 2017 22:36:02 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 17 Nov 2017 22:38:10 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 17 Nov 2017 22:38:12 GMT
ENV LANG=C.UTF-8
# Fri, 17 Nov 2017 22:38:13 GMT
ENV LC_ALL=C.UTF-8
# Fri, 17 Nov 2017 22:38:52 GMT
RUN rosdep init     && rosdep update
# Fri, 17 Nov 2017 22:38:53 GMT
ENV ROS_DISTRO=kinetic
# Fri, 17 Nov 2017 22:49:19 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 17 Nov 2017 22:49:24 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Fri, 17 Nov 2017 22:49:25 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 17 Nov 2017 22:49:27 GMT
CMD ["bash"]
# Fri, 17 Nov 2017 22:50:41 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 17 Nov 2017 23:17:59 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-perception=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:aa17bdeb0d8abe4e2c5af98903791e6443acd93814cce9fc4313cc6b979a6790`  
		Last Modified: Fri, 17 Nov 2017 22:16:00 GMT  
		Size: 43.5 MB (43510220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9de9f461273ed25acc47f2903a0486e938de1ec9d9956a698b5d1a49470cd4ef`  
		Last Modified: Fri, 17 Nov 2017 22:15:47 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb43b74b44a7ee747aee5b1e61f631c79095306bcb8ce56cdc55568d7b55ddc4`  
		Last Modified: Fri, 17 Nov 2017 22:15:47 GMT  
		Size: 614.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebae2b3d5795087d14d671d6c2357470ef616e8976634fce128863c7db5709de`  
		Last Modified: Fri, 17 Nov 2017 22:15:47 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:318bffa324ea908ff39fb3751a2c5cd31ca672b49b5783b477bc4138198b0bb0`  
		Last Modified: Fri, 17 Nov 2017 22:15:47 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ee39e45354b4e583aa0f381e5ebb42230a145cce93412227121a03064f7422a`  
		Last Modified: Fri, 17 Nov 2017 23:56:09 GMT  
		Size: 4.8 MB (4819304 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8de20f8745cd38563aadc1ae3f569cdffb87ef278b186ae1b35ad6518b5970c`  
		Last Modified: Fri, 17 Nov 2017 23:56:07 GMT  
		Size: 13.1 KB (13081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8677801d0fe66a9d1de41a73283b652af8c06238d63c3d5a83639f4c1d5b8923`  
		Last Modified: Fri, 17 Nov 2017 23:56:05 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86b3ed86135662910960b0111ab125e9bc4dc223687b4ed529fa2dad0c74eb78`  
		Last Modified: Fri, 17 Nov 2017 23:56:30 GMT  
		Size: 52.3 MB (52333997 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7f026b0387094d8ec4e2f7d4815b781576d174f05089672414f0aa7a084cb71`  
		Last Modified: Fri, 17 Nov 2017 23:56:06 GMT  
		Size: 769.0 KB (769022 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe054c5aa4156411801159229a6e9faf078ae4df73588317c7171343f5b5bf27`  
		Last Modified: Fri, 17 Nov 2017 23:57:16 GMT  
		Size: 173.9 MB (173910025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:619d63772d73e6030213e7c5513da172dc21622a749702340d8f955eadff8f25`  
		Last Modified: Fri, 17 Nov 2017 23:56:05 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba08a4038b0fb11e52ee108a6e9dbd2bb9585dc0f38f794c8e68d1a2bae523d9`  
		Last Modified: Fri, 17 Nov 2017 23:58:07 GMT  
		Size: 4.8 MB (4767243 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0cef5c84ca968a4af56d420ee63009542f89ce50f6f6020b9170dee3d3fb33d`  
		Last Modified: Sat, 18 Nov 2017 00:03:21 GMT  
		Size: 351.2 MB (351170292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
