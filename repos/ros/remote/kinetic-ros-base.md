## `ros:kinetic-ros-base`

```console
$ docker pull ros@sha256:aec8ea5daa94b75f4daf3a517164da6eeb41bd7875073157cc89988a97bc2177
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:kinetic-ros-base` - linux; amd64

```console
$ docker pull ros@sha256:b1ffae8b885662ddeadcc17b3165f277453388f75dc9a4a31dea42edc9ac9742
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **381.7 MB (381740444 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9449466002076349932f08c9d63afa0a53d90284bc4c743ccdd6fc3733bc6789`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 15 Jan 2018 21:12:15 GMT
ADD file:affda766655e01cbd66cdf7485f581f22be61d93abadcc9fd22ed34c78069e18 in / 
# Mon, 15 Jan 2018 21:12:23 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 15 Jan 2018 21:12:23 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 15 Jan 2018 21:12:24 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Mon, 15 Jan 2018 21:12:34 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 15 Jan 2018 21:12:34 GMT
CMD ["/bin/bash"]
# Tue, 16 Jan 2018 04:29:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 04:30:02 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 16 Jan 2018 04:30:03 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 16 Jan 2018 04:30:31 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 04:30:32 GMT
ENV LANG=C.UTF-8
# Tue, 16 Jan 2018 04:30:32 GMT
ENV LC_ALL=C.UTF-8
# Tue, 16 Jan 2018 04:30:43 GMT
RUN rosdep init     && rosdep update
# Tue, 16 Jan 2018 04:30:50 GMT
ENV ROS_DISTRO=kinetic
# Tue, 16 Jan 2018 04:32:05 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 04:34:04 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 16 Jan 2018 04:34:04 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 16 Jan 2018 04:34:04 GMT
CMD ["bash"]
# Tue, 16 Jan 2018 04:40:15 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:8f7c85c2269abaeba55439fe3a7e8935386d45a88da6166231fc947133c592a8`  
		Last Modified: Mon, 15 Jan 2018 14:45:34 GMT  
		Size: 42.8 MB (42842355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e72e494a6dd79fa00aaf2921eb571801c5ce9aee021bf5353f91f859aeee92f`  
		Last Modified: Mon, 15 Jan 2018 21:16:56 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3009ec50c8871f7a3f19c248194270a1a3aa28705934d619acbd96c663ce5c89`  
		Last Modified: Mon, 15 Jan 2018 21:16:56 GMT  
		Size: 620.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d5ffccbec91702aeb063cb2f3987ca3661bd53dc9e4d8446261fe1c5b05de64`  
		Last Modified: Mon, 15 Jan 2018 21:16:57 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e872a2642ce1d63f3283e81bb6503579808c01e2bf63412ef87135ecb0f04746`  
		Last Modified: Mon, 15 Jan 2018 21:16:56 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0469bf49b06a14705b5e79e3b1eb2e0a37462b6c167ec79cd634e1be56705e0f`  
		Last Modified: Tue, 16 Jan 2018 06:30:51 GMT  
		Size: 5.4 MB (5362337 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8a5fd38e125a5789c0eef5b47a1df155b179c0ee440d777c9b713f16212e301`  
		Last Modified: Tue, 16 Jan 2018 06:30:48 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcd03c7f1ce3d18e1e7c28d99ac65ab4969e054c2b6b24e660c96176e1769e30`  
		Last Modified: Tue, 16 Jan 2018 06:30:46 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:566e4bf8ad4106f6818c022e1dc5878dc50d90240421ee24801d91e43fc3511a`  
		Last Modified: Tue, 16 Jan 2018 06:31:13 GMT  
		Size: 55.5 MB (55499674 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fd9ba60ad170a54900c2699fd37410cb15e8be58e0b20aeba245a298de9ee9f`  
		Last Modified: Tue, 16 Jan 2018 06:30:46 GMT  
		Size: 780.3 KB (780277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c31cce38354b4d18afd9e5ba35fb7a37f37e46a61a715676ecd4ae1b60ed3a5`  
		Last Modified: Tue, 16 Jan 2018 06:31:55 GMT  
		Size: 193.3 MB (193334860 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a46013e0f1a27311fb956f99d62dea059cbacf6d1e94e0baebdffee68c044d7`  
		Last Modified: Tue, 16 Jan 2018 06:30:47 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c83e032ec9a6697ac7afb7dd0b3098399cbcf7cce7b67557dfc76bbbe0c0968`  
		Last Modified: Tue, 16 Jan 2018 06:33:19 GMT  
		Size: 83.9 MB (83904953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic-ros-base` - linux; arm variant v7

```console
$ docker pull ros@sha256:1925bd0a6a26df9e31442b8e757e808933ef25c82c586549ea87b95f6ffc753e
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **331.7 MB (331748403 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4a4dcd8ab4dd897657c22535fe5edd652f278157e904339a27302b61df74a97a`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 15 Dec 2017 13:51:57 GMT
ADD file:fba9ad971205a859209c38eaf1168966bd677d1c799402a897839725cc981bd2 in / 
# Fri, 15 Dec 2017 13:51:58 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 15 Dec 2017 13:51:59 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 13:52:00 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 15 Dec 2017 13:52:01 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 15 Dec 2017 13:52:01 GMT
CMD ["/bin/bash"]
# Fri, 15 Dec 2017 14:28:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 14:28:23 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Fri, 15 Dec 2017 14:28:24 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 15 Dec 2017 14:30:23 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 14:30:24 GMT
ENV LANG=C.UTF-8
# Fri, 15 Dec 2017 14:30:24 GMT
ENV LC_ALL=C.UTF-8
# Fri, 15 Dec 2017 14:30:47 GMT
RUN rosdep init     && rosdep update
# Fri, 15 Dec 2017 14:30:47 GMT
ENV ROS_DISTRO=kinetic
# Fri, 15 Dec 2017 14:32:06 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 14:32:08 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Fri, 15 Dec 2017 14:32:08 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 15 Dec 2017 14:32:09 GMT
CMD ["bash"]
# Fri, 15 Dec 2017 14:33:15 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:bb075e02249b151efc45990ee3320fd62c681d86b0f7a4b8e2c75c9db15aae18`  
		Last Modified: Fri, 15 Dec 2017 13:53:32 GMT  
		Size: 37.9 MB (37903085 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bf0ede911e1bac01017e1dd4c2ecb16064f0c418b770f4de500093f367f434a`  
		Last Modified: Fri, 15 Dec 2017 13:53:22 GMT  
		Size: 848.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7750415cbda102141118c2dd9c62552e4c1040beee27662f517e2b3b4dccd681`  
		Last Modified: Fri, 15 Dec 2017 13:53:22 GMT  
		Size: 608.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26385376f7c2fd88d4561f7a9a6d19d41aabc37bb42600910a084b0af35c8677`  
		Last Modified: Fri, 15 Dec 2017 13:53:22 GMT  
		Size: 857.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a477b6bc7981840db2273e0a67dc563c314ad23200766933902b28e972258a9a`  
		Last Modified: Fri, 15 Dec 2017 13:53:23 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0baedf67140e9efb75a4489f7c39a9a6499a6a4620c44ada72f8b445b8050fdc`  
		Last Modified: Fri, 15 Dec 2017 14:54:04 GMT  
		Size: 4.6 MB (4614237 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fa060161d91777a1467771f7195a17bfa1d889a98510664382e0aded6420803`  
		Last Modified: Fri, 15 Dec 2017 14:54:03 GMT  
		Size: 13.1 KB (13077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:466fabfd7a52c137cebe3b9136d62e142e517ae544174cc744a091f79d16e590`  
		Last Modified: Fri, 15 Dec 2017 14:54:02 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cda330cd0866f9a8a00bd27650e73429830ee4ff20e792b359a4ee7cd4e0349`  
		Last Modified: Fri, 15 Dec 2017 14:54:21 GMT  
		Size: 50.7 MB (50651723 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9270c2ba986a86a07e5a7cf36616bbae4577aff87962016da9876dcbe963aea5`  
		Last Modified: Fri, 15 Dec 2017 14:54:02 GMT  
		Size: 777.4 KB (777438 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a72c19dec05ef66cc50144ead3506f85c6a411efb454119a38d8edd87ba9f3d`  
		Last Modified: Fri, 15 Dec 2017 14:54:54 GMT  
		Size: 164.7 MB (164720357 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0df9db7dc570f5385ee4ec1dd012ad208c73f6fb53ed050b422b8b4ec3f7edbf`  
		Last Modified: Fri, 15 Dec 2017 14:54:02 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32babe99bce3a6e672d902e99e59073fb8ceb9e7481495f315251e54fc2d5e67`  
		Last Modified: Fri, 15 Dec 2017 14:55:26 GMT  
		Size: 73.1 MB (73065587 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic-ros-base` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:42f592b2e35aebbd20b32dee9d0cc60ae688d55f764e159bc0decf36c546cc46
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **345.6 MB (345583089 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:48850522f160d678f29ae3459a319c4eb02233e1e74f2893bd394381f94ee18a`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 15 Dec 2017 15:01:50 GMT
ADD file:20e0f45e502518672ff0c40d21ec83d8bc5275d3aa910841c0ec36e8ee517636 in / 
# Fri, 15 Dec 2017 15:01:54 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 15 Dec 2017 15:01:56 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 15:01:57 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 15 Dec 2017 15:02:00 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 15 Dec 2017 15:02:00 GMT
CMD ["/bin/bash"]
# Fri, 15 Dec 2017 17:28:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 17:28:48 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Fri, 15 Dec 2017 17:28:50 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 15 Dec 2017 17:30:36 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 17:30:37 GMT
ENV LANG=C.UTF-8
# Fri, 15 Dec 2017 17:30:38 GMT
ENV LC_ALL=C.UTF-8
# Fri, 15 Dec 2017 17:31:16 GMT
RUN rosdep init     && rosdep update
# Fri, 15 Dec 2017 17:31:16 GMT
ENV ROS_DISTRO=kinetic
# Fri, 15 Dec 2017 17:45:49 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 17:45:54 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Fri, 15 Dec 2017 17:45:55 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 15 Dec 2017 17:45:55 GMT
CMD ["bash"]
# Fri, 15 Dec 2017 17:52:07 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:6c66196191db4292c888082c484cba21a82bafe1f262a9418a0e90c6e289c6cf`  
		Last Modified: Fri, 01 Dec 2017 23:12:34 GMT  
		Size: 39.0 MB (39001887 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:277c989044f2e9051340fc8dbc13de808e4b872674a294fba277748550530dc4`  
		Last Modified: Fri, 15 Dec 2017 15:03:54 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24e1000553fd68de738b5b8b338ebe449c8cba69675410d8e9f7f84bfd63510a`  
		Last Modified: Fri, 15 Dec 2017 15:03:54 GMT  
		Size: 611.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c3d99733872df79a6f66044eec7151b1cc70ef758395392c8808c1d87b1b8cd`  
		Last Modified: Fri, 15 Dec 2017 15:03:54 GMT  
		Size: 856.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d926482939e99ef245b5aecf3e3a12af6fa12386194be88427b8a0ec46febd0`  
		Last Modified: Fri, 15 Dec 2017 15:03:54 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfd2475aef491859bb5505caa58291f17c06946797fa10e601a5573423b2c44e`  
		Last Modified: Fri, 15 Dec 2017 20:23:18 GMT  
		Size: 4.8 MB (4819413 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04831b117dd9d09065c97967e7ed456361cc058aed5047396e7761226b67a0ab`  
		Last Modified: Fri, 15 Dec 2017 20:23:05 GMT  
		Size: 13.1 KB (13086 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:826499c370bfe2d31e6ef93ee39cbd504e2714a74d65842dd5275723bc14dcf6`  
		Last Modified: Fri, 15 Dec 2017 20:23:01 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94f4615b1a85bd57bff55d1f751c3fffdc5cc482f97e0d2874b4bd0a0634a956`  
		Last Modified: Fri, 15 Dec 2017 20:24:15 GMT  
		Size: 52.3 MB (52338939 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56616f83c8b753b0104668af40b1eefdc317bfc775453eb4b818de254ba5680a`  
		Last Modified: Fri, 15 Dec 2017 20:23:04 GMT  
		Size: 777.3 KB (777318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ef6b94d12ee186936c5791223e837f0c9a508c2c7950ffffe4d6f25c7f2b814`  
		Last Modified: Fri, 15 Dec 2017 20:25:17 GMT  
		Size: 174.0 MB (173966116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a0129434a8d21c81969f89c3c001df686178920ff6b5f19d566dd0d8094ff8b`  
		Last Modified: Fri, 15 Dec 2017 20:23:01 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cd00bc762b9f0472940f977bb9f92b3695006b2d4559a54b59b97e367fe0f06`  
		Last Modified: Fri, 15 Dec 2017 20:26:04 GMT  
		Size: 74.7 MB (74663424 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
