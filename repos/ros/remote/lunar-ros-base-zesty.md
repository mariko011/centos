## `ros:lunar-ros-base-zesty`

```console
$ docker pull ros@sha256:9b7a61e2858399a0cb645e737c1409049b4b070dfb0e831e8ca7bff5f39f78a9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `ros:lunar-ros-base-zesty` - linux; amd64

```console
$ docker pull ros@sha256:4d939cf55159b984649323a8c04d0657d4d9b5a812becb0afe1e1c0ccc66fcfd
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **428.1 MB (428105430 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a8053732fd45b5f8ddb1c132dd6ef0865d22c5404801e897cb460c94a67ff7cd`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 04 Nov 2017 09:45:43 GMT
ADD file:4e2e1f8336bcc64e853e9f3462f0829ce85b34a32755dba06aa7bd0007eda4f0 in / 
# Sat, 04 Nov 2017 09:45:44 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 04 Nov 2017 09:45:45 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 09:45:46 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Sat, 04 Nov 2017 09:45:46 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 04 Nov 2017 09:45:47 GMT
CMD ["/bin/bash"]
# Sat, 04 Nov 2017 20:09:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 20:09:29 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 04 Nov 2017 20:09:31 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu zesty main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 04 Nov 2017 20:09:58 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 20:10:00 GMT
ENV LANG=C.UTF-8
# Sat, 04 Nov 2017 20:10:00 GMT
ENV LC_ALL=C.UTF-8
# Sat, 04 Nov 2017 20:10:11 GMT
RUN rosdep init     && rosdep update
# Sat, 04 Nov 2017 20:10:13 GMT
ENV ROS_DISTRO=lunar
# Sat, 04 Nov 2017 20:11:44 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 20:11:44 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Sat, 04 Nov 2017 20:11:45 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 04 Nov 2017 20:11:45 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 20:12:38 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:8b23367590c32dbb6954ab3cc9b6c451b9763556c72a893538efe88583f6a5dc`  
		Last Modified: Mon, 18 Sep 2017 23:33:09 GMT  
		Size: 38.4 MB (38437889 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d18b5715fdd4c73948352b439715c4ec71459ba6199ad6d79fd2e2e9a5b24235`  
		Last Modified: Sat, 04 Nov 2017 09:46:53 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ba295b2a11b6c71aaf7ccc1dd4378eabef9b5d32d30a4f3dbd2e4b1fa4eef70`  
		Last Modified: Sat, 04 Nov 2017 09:46:53 GMT  
		Size: 568.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31ace8c1d433fa58f410c0680402a0a4b4a2abdf1badd340e136b10f78a5c7b6`  
		Last Modified: Sat, 04 Nov 2017 09:46:53 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95434b428ba1b404a4bd50c47d42f4ebe291a42974f31ace17e1c9e91c6b64b5`  
		Last Modified: Sat, 04 Nov 2017 09:46:52 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93ae42b33d75209292bf1921803380c8338bfc6365edee0f3ac8cc3c7ceda308`  
		Last Modified: Sat, 04 Nov 2017 20:36:49 GMT  
		Size: 3.4 MB (3401525 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:046481954d0782f77e2aae81bb79273363e7450c1eb45d7484ee3d10418d643d`  
		Last Modified: Sat, 04 Nov 2017 20:36:48 GMT  
		Size: 1.4 KB (1377 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c4254d46ee395d032b5f112b8e496201e1b2f7a014ecfea2be12f272a482ba5`  
		Last Modified: Sat, 04 Nov 2017 20:36:46 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c701843d60ff7147d2ab961b3ebd8f91c416349b8c7b12b6e83a3ab00c30926e`  
		Last Modified: Sat, 04 Nov 2017 20:37:19 GMT  
		Size: 58.6 MB (58604684 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6036ab99b04dabb34947822c17eec28552055f4f9a08ce984338d4a48f33cf26`  
		Last Modified: Sat, 04 Nov 2017 20:36:46 GMT  
		Size: 766.6 KB (766563 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:016973881d5af382dc898ff96079891bc80e25b9a30ad2bd6a853f15cad5e07d`  
		Last Modified: Sat, 04 Nov 2017 20:37:58 GMT  
		Size: 252.3 MB (252314490 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d8d40bc1da71103ba6479e60ddc5c03c3a15820e52ad2d23ad88150d7a36071`  
		Last Modified: Sat, 04 Nov 2017 20:36:46 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67ebd30b59a20a846bf592bfc5e3f1e09079d1f8161f0846f91d296bdbb9826b`  
		Last Modified: Sat, 04 Nov 2017 20:38:33 GMT  
		Size: 74.6 MB (74576049 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
