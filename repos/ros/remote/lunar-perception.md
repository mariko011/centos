## `ros:lunar-perception`

```console
$ docker pull ros@sha256:179c7ab52acad2dc5399125cd53fd5e8b353731100a0dc391e8ad97881c43b64
```

-	Platforms:
	-	linux; amd64

### `ros:lunar-perception` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **692.7 MB (692664472 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:98ac90a785e0e1be4d39ef3ad0914315025247c2fe0c1df7eff606d160f36ee9`
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
# Fri, 11 Aug 2017 00:43:24 GMT
RUN apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Fri, 11 Aug 2017 00:43:24 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 11 Aug 2017 00:43:56 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 11 Aug 2017 00:43:57 GMT
ENV LANG=C.UTF-8
# Fri, 11 Aug 2017 00:43:57 GMT
ENV LC_ALL=C.UTF-8
# Fri, 11 Aug 2017 00:44:07 GMT
RUN rosdep init     && rosdep update
# Fri, 11 Aug 2017 00:55:14 GMT
ENV ROS_DISTRO=lunar
# Fri, 11 Aug 2017 00:56:49 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 11 Aug 2017 00:56:50 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Fri, 11 Aug 2017 00:56:50 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 11 Aug 2017 00:56:51 GMT
CMD ["bash"]
# Fri, 11 Aug 2017 00:57:06 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 11 Aug 2017 01:02:34 GMT
RUN apt-get update && apt-get install -y     ros-lunar-perception=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
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
	-	`sha256:96f1fb85381027cf6a8e53e4055767663d489c260d7306cd37d4577850f497d1`  
		Last Modified: Fri, 11 Aug 2017 01:13:18 GMT  
		Size: 13.1 KB (13077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea7b436e5ed25257ff5c0d5a820c51d19551408f2486bb3deed05cd5760410f4`  
		Last Modified: Fri, 11 Aug 2017 01:13:18 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:856a69c4fb511452986925efef5b77546e42bf40fabd2f06eab547fdd7c50d00`  
		Last Modified: Fri, 11 Aug 2017 01:13:42 GMT  
		Size: 58.8 MB (58783357 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:720d680a33ca6467f865c782551a6c3fa443dcd217c4f8c4171065d6a8974702`  
		Last Modified: Fri, 11 Aug 2017 01:13:19 GMT  
		Size: 754.5 KB (754483 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:754f3ab211ca980b585a7e830e17754cb2304ef1cc733d96668c9d93ea2d52da`  
		Last Modified: Fri, 11 Aug 2017 01:18:13 GMT  
		Size: 193.1 MB (193058849 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c80510e7da936c51673fefc082a8fb30fb1642e4d5d50ade907a0351788ed157`  
		Last Modified: Fri, 11 Aug 2017 01:17:22 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b5f760789b30cab0b52cf1b6c82ca4ebe944a1cd87fdff23716aa50db41b5af`  
		Last Modified: Fri, 11 Aug 2017 01:18:27 GMT  
		Size: 4.8 MB (4823608 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65954bee6a9a81661eadc99189e893cfd510ccf2125103c884dcb8595ea86bce`  
		Last Modified: Fri, 11 Aug 2017 01:20:56 GMT  
		Size: 388.0 MB (387969635 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
