## `ros:kinetic-perception-xenial`

```console
$ docker pull ros@sha256:d8d8d66904ae43a173a5768e4c424e04713760f196d70d441a4e8d89688426cb
```

-	Platforms:
	-	linux; amd64

### `ros:kinetic-perception-xenial` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **694.5 MB (694534873 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0d28a1d267e4d4f6d514f94c3e5d5abe7bc8965f9671d128504dd1f70614aedc`
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
# Wed, 16 Aug 2017 00:54:01 GMT
ENV ROS_DISTRO=kinetic
# Wed, 16 Aug 2017 00:55:15 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 16 Aug 2017 00:55:16 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Wed, 16 Aug 2017 00:55:16 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 16 Aug 2017 00:55:17 GMT
CMD ["bash"]
# Wed, 16 Aug 2017 00:55:32 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 16 Aug 2017 01:00:30 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-perception=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
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
	-	`sha256:d881907dda5d53d5a5d28e1bbdad398bad29b94ea930e899702c3ffba3378e13`  
		Last Modified: Wed, 16 Aug 2017 01:42:44 GMT  
		Size: 193.1 MB (193085876 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc11f3535f47cfca05879c2eaf0b516632b9c4416aead722a974aeaadff2d6ef`  
		Last Modified: Wed, 16 Aug 2017 01:41:44 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:112706997bfe5d06cda80a327eac1b985679aecd95aa4d36a14f9af10e1e8f35`  
		Last Modified: Wed, 16 Aug 2017 01:43:06 GMT  
		Size: 4.7 MB (4735870 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49494896106c08d48d0fba48e25d0c29419fd8bd9a4f7df1f0ce1ad7eba42b89`  
		Last Modified: Wed, 16 Aug 2017 01:46:00 GMT  
		Size: 387.9 MB (387909425 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
