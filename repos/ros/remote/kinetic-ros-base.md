## `ros:kinetic-ros-base`

```console
$ docker pull ros@sha256:858a964ca453594781c6391eed2075a328f077ec5ee2cad2ca0d6e0ae9636b00
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:kinetic-ros-base` - linux; amd64

```console
$ docker pull ros@sha256:e8aa95fb2202bc60055512a2610a88314dfd74803aec4d00e28da30bb49d0181
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **307.5 MB (307469347 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:399d089ed001455a6437e3faf1e29c6d6da78e9c2a849c073d69aeb11f531e0a`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 10 Oct 2017 20:59:02 GMT
ADD file:5b334adf9d9a2256add2a801b49d4b23c93b0973ec22bb798973d571c948f102 in / 
# Tue, 10 Oct 2017 20:59:02 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 10 Oct 2017 20:59:03 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 20:59:04 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 10 Oct 2017 20:59:04 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 10 Oct 2017 20:59:05 GMT
CMD ["/bin/bash"]
# Tue, 10 Oct 2017 22:13:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 22:13:26 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 10 Oct 2017 22:13:27 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 10 Oct 2017 22:13:55 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 22:13:56 GMT
ENV LANG=C.UTF-8
# Tue, 10 Oct 2017 22:13:56 GMT
ENV LC_ALL=C.UTF-8
# Tue, 10 Oct 2017 22:14:07 GMT
RUN rosdep init     && rosdep update
# Tue, 10 Oct 2017 22:14:07 GMT
ENV ROS_DISTRO=kinetic
# Tue, 10 Oct 2017 22:15:22 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 22:20:15 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 10 Oct 2017 22:20:16 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 10 Oct 2017 22:20:16 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 22:20:46 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:ae79f251470513c2a0ec750117a81f2d58a50727901ca416efecf297b8a03913`  
		Last Modified: Fri, 06 Oct 2017 13:04:44 GMT  
		Size: 47.6 MB (47617129 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ad56d5fc14905886c560200ab69f905b5c5287eaf12f8f761a7ab54f7a61c1b`  
		Last Modified: Tue, 10 Oct 2017 21:00:10 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:170e558760e8b2e484a022b7d7272cf284fc4e1936ba7a0a671fc586440ad272`  
		Last Modified: Tue, 10 Oct 2017 21:00:10 GMT  
		Size: 618.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:395460e233f5bdcd910d618a3b615e0d881e09ad27d58f3065eef53ecae6a808`  
		Last Modified: Tue, 10 Oct 2017 21:00:10 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f01dc62e444044e3ce494269837ef0aedb80fef69c679416137f17812d2eb9c`  
		Last Modified: Tue, 10 Oct 2017 21:00:10 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1651370890f09fb284dc6b7f2bfa92ab970006bd7a4d3c384c024ec1b33840c9`  
		Last Modified: Tue, 10 Oct 2017 22:32:55 GMT  
		Size: 5.4 MB (5361944 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4c455150cd428d6a805dcd0b37db265501c71b778ae23d0374649d5968419a5`  
		Last Modified: Tue, 10 Oct 2017 22:32:52 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d249b54cffed5dc3f80887d75845c812a93ef8a730364c1a59d1c8f5f84b745a`  
		Last Modified: Tue, 10 Oct 2017 22:32:50 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd53441bc4c5845aba8516a1fcf0e853cbb380145218c9fb191303944ac53fed`  
		Last Modified: Tue, 10 Oct 2017 22:33:19 GMT  
		Size: 55.5 MB (55498848 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afae3de684d701c618b1aca42148b857376a066f6b35bab3810eeddb924aef88`  
		Last Modified: Tue, 10 Oct 2017 22:32:50 GMT  
		Size: 760.2 KB (760207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25224cf995530f4cefdb6adfd1f03cb921018cc1f504ab2d98ae3573cc0332e5`  
		Last Modified: Tue, 10 Oct 2017 22:33:47 GMT  
		Size: 193.3 MB (193300130 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70f78d857d8c3e11ec67c0f2a3ee2953da922b4f628821756a4d1519b222eca7`  
		Last Modified: Tue, 10 Oct 2017 22:32:50 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15ed6110da6519b39df39da2a709c3a0fcf2b1ffabf0b62af10ff631930c5ff3`  
		Last Modified: Tue, 10 Oct 2017 22:34:13 GMT  
		Size: 4.9 MB (4915104 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic-ros-base` - linux; arm variant v7

```console
$ docker pull ros@sha256:bd9cf5406b229c9d634534eac46572dd6086efbf494573bfae8b4ae5c8a08d2e
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **267.6 MB (267638397 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d242d6ea4fc740f3b64a4078888980ffed93eca1980d9e07a70fec059cca59b7`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Sep 2017 04:15:04 GMT
ADD file:b9a11ed9092c203a31a93613a5bfe16654173d110fee8d9b5239fe85f7c9dbd1 in / 
# Wed, 27 Sep 2017 04:15:05 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 27 Sep 2017 04:15:06 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 27 Sep 2017 04:15:08 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 27 Sep 2017 04:15:09 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 27 Sep 2017 04:15:09 GMT
CMD ["/bin/bash"]
# Wed, 27 Sep 2017 04:32:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Wed, 27 Sep 2017 04:32:50 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 27 Sep 2017 04:32:51 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 27 Sep 2017 04:33:31 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 27 Sep 2017 04:33:32 GMT
ENV LANG=C.UTF-8
# Wed, 27 Sep 2017 04:33:32 GMT
ENV LC_ALL=C.UTF-8
# Wed, 27 Sep 2017 04:33:55 GMT
RUN rosdep init     && rosdep update
# Wed, 27 Sep 2017 04:33:55 GMT
ENV ROS_DISTRO=kinetic
# Wed, 27 Sep 2017 04:35:11 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 27 Sep 2017 04:35:13 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Wed, 27 Sep 2017 04:35:13 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 27 Sep 2017 04:35:14 GMT
CMD ["bash"]
# Wed, 27 Sep 2017 04:35:39 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:534796d9e89c220432f17eded2bef1d5c6f402c75222b30a5ee376d822746ecc`  
		Last Modified: Wed, 27 Sep 2017 04:16:43 GMT  
		Size: 42.4 MB (42391266 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:322f488b7b95db0a2ae30bd96b2d1bc3c91f2a6b320368231447804c0b055493`  
		Last Modified: Wed, 27 Sep 2017 04:16:29 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:354434b20afbf067f66bd0620a556f07d6b4c14bf73a103d290c887266d24d76`  
		Last Modified: Wed, 27 Sep 2017 04:16:29 GMT  
		Size: 612.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cff174fccd9bd1594804efd95ae5a242c61f33cec2a06ba5836af057683941ab`  
		Last Modified: Wed, 27 Sep 2017 04:16:29 GMT  
		Size: 857.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:100f391d18b8ee494901fa0de04c93b082f3add644a0be1d563a10d08db87640`  
		Last Modified: Wed, 27 Sep 2017 04:16:29 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be9ef63338a198bf115f1b19d8636337e556c73435632f5058c290d3e9a1e2ac`  
		Last Modified: Wed, 27 Sep 2017 04:47:29 GMT  
		Size: 4.6 MB (4614477 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df110c04347af318a0dd71acd44260f6e466a45372abe1986ebad1a3ffd6b9c9`  
		Last Modified: Wed, 27 Sep 2017 04:47:27 GMT  
		Size: 13.1 KB (13082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da28a7b7e770c0ccce23fcd96a5a6a084999d81c6ff0b43fedfdf0b7fd9b521b`  
		Last Modified: Wed, 27 Sep 2017 04:47:26 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6fd2cdc8f0ae61918bc7a1c945a79fa68078178e2e29224cf0304e6c9841be7`  
		Last Modified: Wed, 27 Sep 2017 04:47:45 GMT  
		Size: 50.7 MB (50707938 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44fe88d3afae1dc81300cbabbe213b6395e99d070d822667e4f25c54b6a2bd93`  
		Last Modified: Wed, 27 Sep 2017 04:47:27 GMT  
		Size: 756.8 KB (756833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72716e65b1988da39b9439447e9380f1a09d969ab03d1d9db62588da380907f7`  
		Last Modified: Wed, 27 Sep 2017 04:48:21 GMT  
		Size: 164.7 MB (164679461 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b1f186189757dd23f4ed8596031bf4ee0137d33fb29fc92467fd6952771e982`  
		Last Modified: Wed, 27 Sep 2017 04:47:26 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8094c070b8fb1b08573302488aabcec639b7ea0644aeb82daba94ac599918b68`  
		Last Modified: Wed, 27 Sep 2017 04:48:33 GMT  
		Size: 4.5 MB (4472431 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic-ros-base` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:c09dc2c668782182d7d0c4a58a821143b16161120be86fdb2544008d925d439e
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **280.1 MB (280066407 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d80e9bd26325af10efc6c7417e54079e9b5478d3e4e73c2bfe6b438ad0aa2f30`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 18 Sep 2017 23:34:17 GMT
ADD file:23a348baef920b06e5ef7e6a0cf4ebe48e2a800237eedfe8210bc0f6acb26ae9 in / 
# Mon, 18 Sep 2017 23:34:19 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 18 Sep 2017 23:34:20 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 18 Sep 2017 23:34:22 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Mon, 18 Sep 2017 23:34:24 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 18 Sep 2017 23:34:24 GMT
CMD ["/bin/bash"]
# Mon, 18 Sep 2017 23:54:20 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Mon, 18 Sep 2017 23:54:27 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Mon, 18 Sep 2017 23:54:29 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Mon, 18 Sep 2017 23:56:36 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Mon, 18 Sep 2017 23:56:37 GMT
ENV LANG=C.UTF-8
# Mon, 18 Sep 2017 23:56:38 GMT
ENV LC_ALL=C.UTF-8
# Mon, 18 Sep 2017 23:57:16 GMT
RUN rosdep init     && rosdep update
# Mon, 18 Sep 2017 23:57:17 GMT
ENV ROS_DISTRO=kinetic
# Tue, 19 Sep 2017 00:07:34 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 19 Sep 2017 00:07:36 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 19 Sep 2017 00:07:37 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 19 Sep 2017 00:07:51 GMT
CMD ["bash"]
# Tue, 19 Sep 2017 00:08:37 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:90b5d1431886730757db88c60e8442b9b6deff5969313ed2adb0272676a3f184`  
		Last Modified: Fri, 15 Sep 2017 22:13:43 GMT  
		Size: 43.4 MB (43382521 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20eb3d78546411484fea52599f5637a647da680a0e7f17f74cb2ab633673929e`  
		Last Modified: Mon, 18 Sep 2017 23:36:01 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71ae80371f0d4b6d260f153ef6239e9a89c65249a9af352991902862e80172cf`  
		Last Modified: Mon, 18 Sep 2017 23:36:02 GMT  
		Size: 617.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25b46dd81fca5187c180c9a53787ba146bbedaa2f31e545bf1dbd8dfb9422f58`  
		Last Modified: Mon, 18 Sep 2017 23:36:01 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa413ccd978434c61a711283f74f9955cda2964a92c0446e248614bc707a62ff`  
		Last Modified: Mon, 18 Sep 2017 23:36:02 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3006bb8b45ead9f2b166e4fcdee824ca6dd67b73db74ecfddf0d3ff48687c5b`  
		Last Modified: Tue, 19 Sep 2017 01:01:42 GMT  
		Size: 4.8 MB (4819708 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cb4e82ee9d602aadd5eadceabeb02bc408d6938f20569f3acccda48e8a9e754`  
		Last Modified: Tue, 19 Sep 2017 01:01:41 GMT  
		Size: 13.1 KB (13078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d48000b8c7a9c3328ba6ebd61438d045c0e19c650e2e8f70c1f683c480c91ab`  
		Last Modified: Tue, 19 Sep 2017 01:01:37 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c30e26c124c09239bc6be6ef9bbff34fba35774b42a9ca01d9d1534513108d59`  
		Last Modified: Tue, 19 Sep 2017 01:02:04 GMT  
		Size: 52.4 MB (52403578 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31b4d5af0578a54c1c0a847770d291c87fc01499cd1193a78d5dbbed81e449ee`  
		Last Modified: Tue, 19 Sep 2017 01:01:39 GMT  
		Size: 755.0 KB (755048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65c6bafbba01b19302238baa387aba1ba5c34cec1ce1ac2817fd50385fb5b33d`  
		Last Modified: Tue, 19 Sep 2017 01:02:52 GMT  
		Size: 173.9 MB (173920421 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3035d3f1f52ba256ab0ccc34b46ccf6b767462b14d681da23fd274e883fdae96`  
		Last Modified: Tue, 19 Sep 2017 01:01:37 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32ada69790f5d83d436c2a88f48a672f774ca305df8e8029e4263bc5460c11e4`  
		Last Modified: Tue, 19 Sep 2017 01:03:25 GMT  
		Size: 4.8 MB (4769139 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
