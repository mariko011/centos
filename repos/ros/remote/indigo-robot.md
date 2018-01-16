## `ros:indigo-robot`

```console
$ docker pull ros@sha256:2e17c204dcb79734ff0c41e4a8e034e5709615ba56b5cde69d6ac001a19b3240
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
$ docker pull ros@sha256:cccd400c6eacf6899307d10b6af9d25678dc3fcc3be13f0fd9d20064ca5835b0
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **306.0 MB (305971471 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6d1d170cc76eae5c3c15dbc042ee84f0cf694a05f85973c7d2213e808c2bff90`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 15 Dec 2017 13:51:37 GMT
ADD file:dd1487cabc9f8e2188e6103671470ce7f41c66710ed2696ec8e26bd5047c5b47 in / 
# Fri, 15 Dec 2017 13:51:39 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 15 Dec 2017 13:51:40 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 13:51:40 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 15 Dec 2017 13:51:41 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 15 Dec 2017 13:51:41 GMT
CMD ["/bin/bash"]
# Fri, 15 Dec 2017 14:10:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 14:10:23 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Fri, 15 Dec 2017 14:10:24 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu trusty main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 15 Dec 2017 14:12:45 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 14:12:46 GMT
ENV LANG=C.UTF-8
# Fri, 15 Dec 2017 14:12:46 GMT
ENV LC_ALL=C.UTF-8
# Fri, 15 Dec 2017 14:13:05 GMT
RUN rosdep init     && rosdep update
# Fri, 15 Dec 2017 14:13:06 GMT
ENV ROS_DISTRO=indigo
# Fri, 15 Dec 2017 14:15:33 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-core=1.1.5-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 14:15:36 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Fri, 15 Dec 2017 14:15:36 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 15 Dec 2017 14:15:36 GMT
CMD ["bash"]
# Fri, 15 Dec 2017 14:16:18 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-base=1.1.5-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 14:17:36 GMT
RUN apt-get update && apt-get install -y     ros-indigo-robot=1.1.5-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:50e2643b13d6ea73d22c1b004246a2bff43a5c025fcfbbc755748127e28c3e78`  
		Last Modified: Fri, 15 Dec 2017 13:53:11 GMT  
		Size: 66.4 MB (66404695 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80f428909f2234cd44a20cf86c0d66eba3f5c1a55afb113882878461edbad6b7`  
		Last Modified: Fri, 15 Dec 2017 13:52:51 GMT  
		Size: 76.8 KB (76768 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:443904308a1cee3b77fa8c25a3d53350efdd954e5a5f31baa343d655914e2753`  
		Last Modified: Fri, 15 Dec 2017 13:52:51 GMT  
		Size: 627.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:355edca5c4b0e249be5f4e3014d4e533bb8ff090178d51c0b2b06a42aecf8e76`  
		Last Modified: Fri, 15 Dec 2017 13:52:51 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:378c801492144c7285209c23d67c82b19b651fdb9eb1dfd3fd4c520db719d54d`  
		Last Modified: Fri, 15 Dec 2017 13:52:51 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eceec97f48b73d5cc3edf74293b66b2c31e3465c65be448a22159dc2f7e3f57e`  
		Last Modified: Fri, 15 Dec 2017 14:48:24 GMT  
		Size: 14.5 MB (14470026 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c28da72e326eb71ba4c24ad0cb074cadb68faf2dfc5adcde2a99f20ce434cc7`  
		Last Modified: Fri, 15 Dec 2017 14:48:19 GMT  
		Size: 13.1 KB (13082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5be64c537b5bf09defc288d312ab09a620d52087cb10e1209c3f34ec35a9b834`  
		Last Modified: Fri, 15 Dec 2017 14:48:19 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd2b762c7e68c320eb3a8d1d7783f853fbfa18a58b1e5a9897d9e42bb797fa77`  
		Last Modified: Fri, 15 Dec 2017 14:48:31 GMT  
		Size: 29.1 MB (29140842 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a29b02954542388599a3dcc746162e35ef90c686c124c12a8d95ac1c0523aff`  
		Last Modified: Fri, 15 Dec 2017 14:48:19 GMT  
		Size: 777.4 KB (777433 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2b7b225ebbcbb456e7322acc9ce00b864b8d06b0b67c67b6a7acda6f5e787ae`  
		Last Modified: Fri, 15 Dec 2017 14:49:04 GMT  
		Size: 137.6 MB (137560263 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81297f123c0d53a0373614aea9305a02580e884452688d77782b5d427e3e49a1`  
		Last Modified: Fri, 15 Dec 2017 14:48:18 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e6687814498f9fde8bb5de2deb9c406b9b519cfc8f5f9e39e500148f85ef837`  
		Last Modified: Fri, 15 Dec 2017 14:49:16 GMT  
		Size: 3.6 MB (3604473 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:908dc37fbdec85f8a11a3ddb429a3664d65b96429008ec0e53edb79a70796fa8`  
		Last Modified: Fri, 15 Dec 2017 14:49:43 GMT  
		Size: 53.9 MB (53921804 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
