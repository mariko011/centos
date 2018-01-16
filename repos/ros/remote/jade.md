## `ros:jade`

```console
$ docker pull ros@sha256:467131ee9ca1672924884b5954c3fae488566fa48fa88623016f04b5b2a9cbba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7

### `ros:jade` - linux; amd64

```console
$ docker pull ros@sha256:6ac9138ce1bf9c2449c024f91163b2acbee140eb19566643133835eb30f2d885
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **276.0 MB (276031713 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5a95d9bcc26602fa0c2b11d23f27dd0d7e12723adcf73504109c1b9d6e24e20d`
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
# Tue, 16 Jan 2018 04:03:02 GMT
ENV ROS_DISTRO=jade
# Tue, 16 Jan 2018 04:04:56 GMT
RUN apt-get update && apt-get install -y     ros-jade-ros-core=1.2.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 04:15:35 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 16 Jan 2018 04:15:35 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 16 Jan 2018 04:15:36 GMT
CMD ["bash"]
# Tue, 16 Jan 2018 04:16:25 GMT
RUN apt-get update && apt-get install -y     ros-jade-ros-base=1.2.1-0*     && rm -rf /var/lib/apt/lists/*
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
	-	`sha256:d48089f2874c54aebb20cf5e609d9f33b4af8b18bde0ff7c161f6c3a4f264c12`  
		Last Modified: Tue, 16 Jan 2018 06:03:10 GMT  
		Size: 150.0 MB (150045668 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1f9aead38469a18ae94431c57714532779b493d29026f9db732ce96c88fb8d6`  
		Last Modified: Tue, 16 Jan 2018 06:02:22 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e905fd9a154d7de40f31ccce993b205ae8b77e888c867438a312d03db8b542c7`  
		Last Modified: Tue, 16 Jan 2018 06:15:55 GMT  
		Size: 4.0 MB (3996380 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:jade` - linux; arm variant v7

```console
$ docker pull ros@sha256:ac31cf9452055a96a90529b6a40bfc5da8454cd3b61a56b15b3742cfdd25dc0b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **252.2 MB (252229010 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c7367c669b8d33baca50d4e8360b63443667023c4a03e3120e1f83d8999dd6f2`
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
# Tue, 16 Jan 2018 14:25:14 GMT
ENV ROS_DISTRO=jade
# Tue, 16 Jan 2018 14:28:04 GMT
RUN apt-get update && apt-get install -y     ros-jade-ros-core=1.2.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 14:28:05 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 16 Jan 2018 14:28:06 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 16 Jan 2018 14:28:06 GMT
CMD ["bash"]
# Tue, 16 Jan 2018 14:28:53 GMT
RUN apt-get update && apt-get install -y     ros-jade-ros-base=1.2.1-0*     && rm -rf /var/lib/apt/lists/*
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
	-	`sha256:f150119e89f7cbe530f57bc37f1dee398e35ce6fda8858eb50c144ee3d2fe8b2`  
		Last Modified: Tue, 16 Jan 2018 14:53:04 GMT  
		Size: 137.7 MB (137680074 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fa2db3f1d21bf29aeaa20a09de6ab0875091aabfe1d49798fab8c3d72b0cd2d`  
		Last Modified: Tue, 16 Jan 2018 14:52:20 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f5eacd9345e174714079998218fc3a80d24cccde722ae62c07098d39cf2e56d`  
		Last Modified: Tue, 16 Jan 2018 14:53:23 GMT  
		Size: 3.6 MB (3626798 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
