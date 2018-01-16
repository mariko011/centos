## `ros:indigo-robot`

```console
$ docker pull ros@sha256:4d5c767e602e55fa9901974df60fec41a55bae867851416d859a9b4d69906838
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7

### `ros:indigo-robot` - linux; amd64

```console
$ docker pull ros@sha256:97c661b887d535c7ff58006920e2c5d3cf014bab5d8dcf0af44710b071b8c0b5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **337.7 MB (337660906 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f8967f8f06026da8447e5312fd3a4ac385521862195a21028a5344c21da10cb5`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 15 Jan 2018 21:01:15 GMT
ADD file:51db35f8f987dcd57d101d19eeb2f3a16eaf3c3adcc85fc286c9c5569c51c9b2 in / 
# Mon, 15 Jan 2018 21:08:50 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 15 Jan 2018 21:08:51 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 15 Jan 2018 21:08:51 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Mon, 15 Jan 2018 21:08:52 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 15 Jan 2018 21:11:41 GMT
CMD ["/bin/bash"]
# Tue, 16 Jan 2018 03:33:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 03:33:30 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 16 Jan 2018 03:33:31 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu trusty main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 16 Jan 2018 03:34:04 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 03:34:04 GMT
ENV LANG=C.UTF-8
# Tue, 16 Jan 2018 03:34:04 GMT
ENV LC_ALL=C.UTF-8
# Tue, 16 Jan 2018 03:34:13 GMT
RUN rosdep init     && rosdep update
# Tue, 16 Jan 2018 03:34:14 GMT
ENV ROS_DISTRO=indigo
# Tue, 16 Jan 2018 03:35:51 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-core=1.1.5-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 03:40:23 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 16 Jan 2018 03:40:24 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 16 Jan 2018 03:40:24 GMT
CMD ["bash"]
# Tue, 16 Jan 2018 03:46:32 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-base=1.1.5-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 03:47:47 GMT
RUN apt-get update && apt-get install -y     ros-indigo-robot=1.1.5-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:556ab54f65806b5b518f81253c4daf5bb38dba3bf46cb6fd9b6d48e583fdd5e9`  
		Last Modified: Mon, 15 Jan 2018 14:42:55 GMT  
		Size: 72.9 MB (72936730 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ca8fd6ef32a03f12d804935cf709712448d23f20308927adb635f4f3e38cc50`  
		Last Modified: Mon, 15 Jan 2018 21:15:48 GMT  
		Size: 72.7 KB (72657 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e64a7e7a2b214e0085b5f7140a96e5a3beff9912ee4718390cd48579c1da08d6`  
		Last Modified: Mon, 15 Jan 2018 21:15:48 GMT  
		Size: 631.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09ed7c05bfd36d5b21ca8d7a333ab91d5dcb8a8ea125b0d8b0058c82f48e7834`  
		Last Modified: Mon, 15 Jan 2018 21:15:48 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec1faacd6fd9f44056cf271350bb6f119e3f7dd7244f8a9b7d7b4cc1747b677c`  
		Last Modified: Mon, 15 Jan 2018 21:15:49 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:672ab46af83d4de28f5a82aeb613df3bbc565e4455a2a5dfb558efcd03d36311`  
		Last Modified: Tue, 16 Jan 2018 05:49:16 GMT  
		Size: 16.5 MB (16500677 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a23a24904e61a31e4871fadf772ecb1a8e96832d2fb334ecdf8418bbe1fac21e`  
		Last Modified: Tue, 16 Jan 2018 05:49:04 GMT  
		Size: 13.1 KB (13079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b5a6e9fb4af38ab1d160e7d61b6ab3529fe98b572b4e35492a4941d501a7878`  
		Last Modified: Tue, 16 Jan 2018 05:49:02 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d39b8674b22912fff9667cd6ccf95817ccb03d40a35fb856239dbde41b763bdf`  
		Last Modified: Tue, 16 Jan 2018 05:49:21 GMT  
		Size: 31.7 MB (31684192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:868ed9caa1e5f7993c6ff34a39aa5c0e92ae18701cb47f1eabe52f3a675bbfbe`  
		Last Modified: Tue, 16 Jan 2018 05:49:03 GMT  
		Size: 780.3 KB (780269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6cefec5a536eb969f7cb818ff037c97b01aca980c4d27fe58cb6a2e09658db4c`  
		Last Modified: Tue, 16 Jan 2018 05:49:56 GMT  
		Size: 149.9 MB (149909638 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4795ea2bf1a606730a80dad9da9cf17a2f48ae923831baaf3a59cdef2051d10`  
		Last Modified: Tue, 16 Jan 2018 05:49:02 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9773a1e5dab493002b3f673fbfab8a697eb3f8645c2eb8ea330492f9706079e`  
		Last Modified: Tue, 16 Jan 2018 05:58:57 GMT  
		Size: 46.7 MB (46742820 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:800ba4bffcf5a7604fc4c0aa33230059f54267461b56c49a9472ee6e4e7a5008`  
		Last Modified: Tue, 16 Jan 2018 05:59:55 GMT  
		Size: 19.0 MB (19018784 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:indigo-robot` - linux; arm variant v7

```console
$ docker pull ros@sha256:ba159194212bee8e24f48963f065c5762a7fc7e9fe3b23acc2868048f82b3b22
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **306.5 MB (306500851 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4f4228dc31339a478ed0004e22bb23388dafa1ee19f885cfa8235191ba1cfa2f`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 16 Jan 2018 13:51:22 GMT
ADD file:1e67423f9306298be02b7e94e177bea31b1d7f7eaa1a35773dda58e7137d3791 in / 
# Tue, 16 Jan 2018 13:51:23 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 16 Jan 2018 13:51:24 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 13:51:25 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 16 Jan 2018 13:51:25 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 16 Jan 2018 13:51:25 GMT
CMD ["/bin/bash"]
# Tue, 16 Jan 2018 14:10:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 14:10:45 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 16 Jan 2018 14:10:46 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu trusty main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 16 Jan 2018 14:12:15 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 14:12:16 GMT
ENV LANG=C.UTF-8
# Tue, 16 Jan 2018 14:12:16 GMT
ENV LC_ALL=C.UTF-8
# Tue, 16 Jan 2018 14:12:35 GMT
RUN rosdep init     && rosdep update
# Tue, 16 Jan 2018 14:12:36 GMT
ENV ROS_DISTRO=indigo
# Tue, 16 Jan 2018 14:16:47 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-core=1.1.5-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 14:16:49 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 16 Jan 2018 14:16:49 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 16 Jan 2018 14:16:50 GMT
CMD ["bash"]
# Tue, 16 Jan 2018 14:19:22 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-base=1.1.5-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 14:20:21 GMT
RUN apt-get update && apt-get install -y     ros-indigo-robot=1.1.5-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:68e89cb912d19028b9acb0e228cfbb5008d4e5b81b475dde5233d1d1c55110b0`  
		Last Modified: Tue, 16 Jan 2018 13:53:26 GMT  
		Size: 66.4 MB (66436079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5b71eaac9586e51b0c384bd33f3750a326ba9936a645677bb6fa76b4b36c720`  
		Last Modified: Tue, 16 Jan 2018 13:53:05 GMT  
		Size: 76.8 KB (76766 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61958df0bcde798f1cce68b5c42a7b8484a8e8f852c2660833ae3c4f0e4d2937`  
		Last Modified: Tue, 16 Jan 2018 13:53:05 GMT  
		Size: 628.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:421048a89c722b707950036d37570e690354ac204734a7cd3138481519595e30`  
		Last Modified: Tue, 16 Jan 2018 13:53:05 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf6bd95c7cabe9d6c95083fa676a09a512c84b065e8bfe29d33719c1b9272c9f`  
		Last Modified: Tue, 16 Jan 2018 13:53:05 GMT  
		Size: 189.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de518bda0f206fb4fbf40cf3612d0136f13a58ebf56e70c9894eb6f59223fbce`  
		Last Modified: Tue, 16 Jan 2018 14:49:13 GMT  
		Size: 14.5 MB (14474910 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd7e1dae04f2b884a7b1f17c0d9e7f65abf4b8eaa00217363a1ce9a0d675cac8`  
		Last Modified: Tue, 16 Jan 2018 14:49:08 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:681c733a010ff83f916a2514a83db663b41e71d59eed3727cf1a11b459475602`  
		Last Modified: Tue, 16 Jan 2018 14:49:07 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a480d18283ad1aeb7602015a225b01f9eee7a24eaadda7a7bf47b652e13eb7ce`  
		Last Modified: Tue, 16 Jan 2018 14:49:17 GMT  
		Size: 29.1 MB (29138864 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db73b099b7a6b1939be77387c2a28c543793336ba60965ca075f654b861717fb`  
		Last Modified: Tue, 16 Jan 2018 14:49:08 GMT  
		Size: 780.4 KB (780355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18b20f23791e0fe50c9438032a3eb8cd36bc76ecd6b9036458374bba6f0ca32d`  
		Last Modified: Tue, 16 Jan 2018 14:49:50 GMT  
		Size: 137.6 MB (137558876 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69df14308266276d92feae216c8226d15979f7881e4ab5af5480c7fe4e465c9a`  
		Last Modified: Tue, 16 Jan 2018 14:49:08 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed9b15fd7380749037db9d15c1afa3890b22798644f4a1638a4f19de157ca390`  
		Last Modified: Tue, 16 Jan 2018 14:50:18 GMT  
		Size: 40.3 MB (40343283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1525178808e39196fe475210f5e4587306e441f5a3232f0f91b3984ba69d4117`  
		Last Modified: Tue, 16 Jan 2018 14:50:41 GMT  
		Size: 17.7 MB (17676553 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
