## `ros:lunar-ros-core-xenial`

```console
$ docker pull ros@sha256:1f1b4cfd2ac95031b76009c40d45c563c10888a54f352764ab54e489a5487cfd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:lunar-ros-core-xenial` - linux; amd64

```console
$ docker pull ros@sha256:de29030d680d28ee596ec7471fcd3ec01fd925ed863bb8373e17b8f02d2b5040
```

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **301.9 MB (301868189 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bae542cfd058dbd51a96c5493b3dc171a8c91a77123c9f98d09a0ddad9cf6da9`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 10 Aug 2017 20:13:38 GMT
ADD file:39d3593ea220e686d5450244ef9dd6c934e3b288a29212d332ec33942b7bf218 in / 
# Thu, 10 Aug 2017 20:13:39 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 10 Aug 2017 20:13:40 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 10 Aug 2017 20:13:41 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 10 Aug 2017 20:13:41 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 10 Aug 2017 20:13:42 GMT
CMD ["/bin/bash"]
# Wed, 16 Aug 2017 00:53:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Wed, 16 Aug 2017 00:53:21 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 16 Aug 2017 00:53:21 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 16 Aug 2017 00:53:50 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 16 Aug 2017 00:53:50 GMT
ENV LANG=C.UTF-8
# Wed, 16 Aug 2017 00:53:51 GMT
ENV LC_ALL=C.UTF-8
# Wed, 16 Aug 2017 00:54:00 GMT
RUN rosdep init     && rosdep update
# Wed, 16 Aug 2017 01:13:43 GMT
ENV ROS_DISTRO=lunar
# Wed, 16 Aug 2017 01:15:03 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 16 Aug 2017 01:15:04 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Wed, 16 Aug 2017 01:15:04 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 16 Aug 2017 01:15:05 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:d5c6f90da05dc7e77d2e5fef63c341ab05ba2a03396ab5ae8f18814a7bbf5265`  
		Last Modified: Thu, 03 Aug 2017 11:51:31 GMT  
		Size: 47.3 MB (47258703 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1300883d87d5ae0582a4e0f3f86ad93985b18676e8d829f6f3b4990403fdf145`  
		Last Modified: Thu, 10 Aug 2017 20:15:08 GMT  
		Size: 816.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c220aa3cfc1bff0c1df733eac869a66476ea35136c69d881da1e297ed8d0af2f`  
		Last Modified: Thu, 10 Aug 2017 20:15:08 GMT  
		Size: 515.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e9398f099dcc5a3e5521205e1f55ee5d7665e203193cf48b32553eabcca323c`  
		Last Modified: Thu, 10 Aug 2017 20:15:08 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc27a084064fee108f4d486469939bbfa6a5b16f6d6d3c6b5b2475e938f4c71e`  
		Last Modified: Thu, 10 Aug 2017 20:15:08 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf800cf561cf953faf78ae64acb4bc532e821dd286de26107318b636ed4ea1d6`  
		Last Modified: Wed, 16 Aug 2017 01:41:48 GMT  
		Size: 5.2 MB (5231376 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab63264a6f691b1812fad7591f3386caab62dcf7760b7b355f1345a7f1a3c5d1`  
		Last Modified: Wed, 16 Aug 2017 01:41:44 GMT  
		Size: 13.1 KB (13075 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65e099adb0a6c5b5afdf7e99d6e4dd37ce682e0371669a74edf4fd7f5f3be385`  
		Last Modified: Wed, 16 Aug 2017 01:41:44 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd6c6ec211806c9859c562d2a0600e91dfbe336de57f10068e4c38b125c0cd17`  
		Last Modified: Wed, 16 Aug 2017 01:42:10 GMT  
		Size: 55.5 MB (55543191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:124707e92797cb39d052969407884b544b7883925479f4ccfb2182ddde387580`  
		Last Modified: Wed, 16 Aug 2017 01:41:44 GMT  
		Size: 754.6 KB (754597 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dae7add3b0e0e4f47d1437eff1bc595ce4f3d9686419dcb022d69c2d4e9a98d3`  
		Last Modified: Wed, 16 Aug 2017 01:50:15 GMT  
		Size: 193.1 MB (193064488 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ec7e260ca1ce196d606c10d5789f132b951bbf51a5504f31b9ea66eabcb22b6`  
		Last Modified: Wed, 16 Aug 2017 01:49:25 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-ros-core-xenial` - linux; arm variant v7

```console
$ docker pull ros@sha256:38445aaa5a2bdc223528560333941cea289ffb8a262b20ca3d719bc1c2e84c3f
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **263.0 MB (262951201 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5e365ad577373c2353ded8218eb4fe2bcd44c6cbb01bc5b007f548c3bd9999f6`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 09 Sep 2017 01:29:45 GMT
ADD file:7ef9db764c81cb900a3f4e1fa08f7f9bbd5bd2b738534380d4b96612d2d94fe3 in / 
# Sat, 09 Sep 2017 01:29:48 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 09 Sep 2017 01:29:50 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 09 Sep 2017 01:29:52 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Sat, 09 Sep 2017 01:29:54 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 09 Sep 2017 01:29:55 GMT
CMD ["/bin/bash"]
# Mon, 11 Sep 2017 23:30:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Mon, 11 Sep 2017 23:30:56 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Mon, 11 Sep 2017 23:30:58 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Mon, 11 Sep 2017 23:34:07 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Mon, 11 Sep 2017 23:34:09 GMT
ENV LANG=C.UTF-8
# Mon, 11 Sep 2017 23:34:16 GMT
ENV LC_ALL=C.UTF-8
# Tue, 12 Sep 2017 20:26:39 GMT
RUN rosdep init     && rosdep update
# Tue, 12 Sep 2017 21:00:06 GMT
ENV ROS_DISTRO=lunar
# Tue, 12 Sep 2017 21:08:19 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Sep 2017 21:08:25 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 12 Sep 2017 21:08:26 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 12 Sep 2017 21:08:28 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:93170abd0836466ba561e86bf19d8596fdfaf4e3c826c99036aabfa64f337af6`  
		Last Modified: Thu, 17 Aug 2017 23:35:59 GMT  
		Size: 42.2 MB (42173096 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4479f35d4daad1fcea526f012ed9e376c37b11ac5f0b19eae196c9e6198d7962`  
		Last Modified: Sat, 09 Sep 2017 01:31:24 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c96313b9474adb2b1810740169253ce78f85adef20457754529bdfc18556e7f4`  
		Last Modified: Sat, 09 Sep 2017 01:31:24 GMT  
		Size: 609.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94c7e8b5fdbd37a83bfea18b6f612e665c8ac92fc65319039cc6cb017a55901c`  
		Last Modified: Sat, 09 Sep 2017 01:31:24 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2bafc350c2d83248cdbb3a95658150514c8b14c17df0b7755531ed1f992296ff`  
		Last Modified: Sat, 09 Sep 2017 01:31:24 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cab2f5bbfa17536010e0daf2605aa88df897cf962bc243adb5200a4ae67117fe`  
		Last Modified: Tue, 12 Sep 2017 21:33:26 GMT  
		Size: 4.6 MB (4613461 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c1e7b3e0e63089e43711354c5e90b9c0509aff08ec65a8d542486060f5607b0`  
		Last Modified: Tue, 12 Sep 2017 21:33:14 GMT  
		Size: 13.1 KB (13079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f941e17a4b6e49558564e4457f89a1f68d4b0a4d8b69c57e4d0fa78b962f90d`  
		Last Modified: Tue, 12 Sep 2017 21:33:04 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8809b322f182d7c0c5f97e75f1881ec3a3a4ce75884399e91bc5c57aee2bd19c`  
		Last Modified: Tue, 12 Sep 2017 21:34:35 GMT  
		Size: 50.7 MB (50703769 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:093644b1b1a7eace4035b6d31d108434bd74e1f0f0880be4666cd9d2e4c58a7c`  
		Last Modified: Tue, 12 Sep 2017 21:33:07 GMT  
		Size: 754.0 KB (754032 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6bcf9ee1d789fd5e5e6027c212b05715cf89659ab2ee88cc2b32d4071a2d7c42`  
		Last Modified: Tue, 12 Sep 2017 21:45:38 GMT  
		Size: 164.7 MB (164690855 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:960e69a54e6ca4a66a7359d0e894647f749a25f189f860b0107e3b19abbcc752`  
		Last Modified: Tue, 12 Sep 2017 21:43:29 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-ros-core-xenial` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:581f5c64423a54c64ce88fe7c22ef70c1a0f4301fe8e1e658f1ff515892598b5
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **275.1 MB (275069020 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b268b7a44a5614e217e452c2ab8ec1696cb49757f61b62fc5d06ef61cd82b3bf`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 11 Aug 2017 14:01:23 GMT
ADD file:09391963d2be8fbd3d1fa1ec76749357eebb062e3750ef9cdc1af1ee5b946f26 in / 
# Fri, 11 Aug 2017 14:01:24 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 11 Aug 2017 14:01:26 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 11 Aug 2017 14:01:27 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 11 Aug 2017 14:01:29 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 11 Aug 2017 14:01:29 GMT
CMD ["/bin/bash"]
# Wed, 16 Aug 2017 14:17:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Wed, 16 Aug 2017 14:17:53 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 16 Aug 2017 14:17:55 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 16 Aug 2017 14:19:46 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 16 Aug 2017 14:19:48 GMT
ENV LANG=C.UTF-8
# Wed, 16 Aug 2017 14:19:48 GMT
ENV LC_ALL=C.UTF-8
# Wed, 16 Aug 2017 14:20:26 GMT
RUN rosdep init     && rosdep update
# Wed, 16 Aug 2017 14:20:26 GMT
ENV ROS_DISTRO=lunar
# Wed, 16 Aug 2017 14:27:56 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 16 Aug 2017 14:27:58 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Wed, 16 Aug 2017 14:27:58 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 16 Aug 2017 14:27:59 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:97439f7dbdf1c01245623f97141afe52402dd6430ffa14f0bba51c3f97b1477c`  
		Last Modified: Fri, 04 Aug 2017 22:13:13 GMT  
		Size: 43.2 MB (43174322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21e53a6f7623035342dd76dfd0e2e0ec35a3730ea26b9ebfdb11d6be19142706`  
		Last Modified: Fri, 11 Aug 2017 14:03:02 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:792600934860e87147b88b22c2f7e5207a1991bf211afc8550ed7e94ae59d924`  
		Last Modified: Fri, 11 Aug 2017 14:03:02 GMT  
		Size: 538.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7792a57af45eeb418423a4a50b243db8a19bd5df9fe00a5a0f70ea4b1416b57e`  
		Last Modified: Fri, 11 Aug 2017 14:03:02 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3f7b5f2a37b1082e3fa4d27dd9078d0c627fca8de3aa6ba5aa9587aac8be8dd`  
		Last Modified: Fri, 11 Aug 2017 14:03:02 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0527f0a2a084c04b0cf96d359dcccaf72255e0476419296f0dfcfe9915dc5ac9`  
		Last Modified: Wed, 16 Aug 2017 15:29:47 GMT  
		Size: 4.8 MB (4819010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5ec49cbba1731f8f8b3b1f54afa91352dc56093927543356785949306d11480`  
		Last Modified: Wed, 16 Aug 2017 15:29:42 GMT  
		Size: 13.1 KB (13081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f12fd03049af8dedf5a2e822814cd269b8c9cfb70b6882111ab2c8e53d71d46e`  
		Last Modified: Wed, 16 Aug 2017 15:29:39 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ea636f5920ba434da460d90a7764e45a0afac7fcf0dc7ddd3947a68c22242b0`  
		Last Modified: Wed, 16 Aug 2017 15:30:15 GMT  
		Size: 52.4 MB (52400817 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18efa9c94988a5b52dd5863324ff24a5078cc919eb13a5b21eb9dd513fa738ba`  
		Last Modified: Wed, 16 Aug 2017 15:29:39 GMT  
		Size: 754.7 KB (754711 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f40154c69c8563ae817cc37788a1cc7de4f023fa387a59eece638b7d7a385815`  
		Last Modified: Wed, 16 Aug 2017 15:30:45 GMT  
		Size: 173.9 MB (173904245 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdeca7bacb7c6ec7ef58afa6e9670df55220771f4c46d6d709fee7422134d4ef`  
		Last Modified: Wed, 16 Aug 2017 15:29:39 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
