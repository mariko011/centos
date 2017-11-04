## `ros:kinetic`

```console
$ docker pull ros@sha256:ebb409980068a604418ec8e447b5590e90cdaf6fdee5be123e8a955bed04ba9a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:kinetic` - linux; amd64

```console
$ docker pull ros@sha256:a2c66357690507900c49ad998a9739c3028155aaf868fe250ea20e3444c69496
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **307.5 MB (307478237 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:252e1862fc0fa1080f697ef83b736902a871b3dcba8d04a19900cd3765bad25f`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 04 Nov 2017 09:45:32 GMT
ADD file:5b334adf9d9a2256add2a801b49d4b23c93b0973ec22bb798973d571c948f102 in / 
# Sat, 04 Nov 2017 09:45:33 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 04 Nov 2017 09:45:33 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 09:45:34 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Sat, 04 Nov 2017 09:45:35 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 04 Nov 2017 09:45:35 GMT
CMD ["/bin/bash"]
# Sat, 04 Nov 2017 19:51:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 19:51:43 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 04 Nov 2017 19:51:45 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 04 Nov 2017 19:52:12 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 19:52:12 GMT
ENV LANG=C.UTF-8
# Sat, 04 Nov 2017 19:52:12 GMT
ENV LC_ALL=C.UTF-8
# Sat, 04 Nov 2017 19:52:23 GMT
RUN rosdep init     && rosdep update
# Sat, 04 Nov 2017 19:52:23 GMT
ENV ROS_DISTRO=kinetic
# Sat, 04 Nov 2017 19:54:05 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 19:54:06 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Sat, 04 Nov 2017 19:54:06 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 04 Nov 2017 19:54:07 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 19:55:16 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:ae79f251470513c2a0ec750117a81f2d58a50727901ca416efecf297b8a03913`  
		Last Modified: Fri, 06 Oct 2017 13:04:44 GMT  
		Size: 47.6 MB (47617129 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c59d01a7e4caf1aba785eb33192fec3f96e4ab01975962bcec10f4989a6edcc6`  
		Last Modified: Sat, 04 Nov 2017 09:46:34 GMT  
		Size: 848.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41ba73a9054d231e1f555c40a74762276900cc6487f5c6cf13b89c7606635c67`  
		Last Modified: Sat, 04 Nov 2017 09:46:33 GMT  
		Size: 619.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1bbfd495cc1112b503350686641ee4fa2cea8ccd13fb8a8a302c81dae61d418`  
		Last Modified: Sat, 04 Nov 2017 09:46:33 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c346f7223e24b517358f52c4a3f5f9af1c86e5ddeaee5659c8889846e46d1e2`  
		Last Modified: Sat, 04 Nov 2017 09:46:34 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e4fa663902f5dd2357e04a239a6c6cce86227d69fc55fbbc3c51dc70b164b83`  
		Last Modified: Sat, 04 Nov 2017 20:23:55 GMT  
		Size: 5.4 MB (5362089 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b110a156ea92217f8c1cf5b3fbd70680c97791195420f0029f762a7a5b8312fe`  
		Last Modified: Sat, 04 Nov 2017 20:23:54 GMT  
		Size: 13.1 KB (13079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4694ab97e2d52f5c246e19b5eb28485bedcd1884e6bee8b230aa24e90c48bcb1`  
		Last Modified: Sat, 04 Nov 2017 20:23:51 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:966dd11d5800be6a6e171b85dac67bbe68a93b45524ceb6ad84956124cf0ae69`  
		Last Modified: Sat, 04 Nov 2017 20:24:21 GMT  
		Size: 55.5 MB (55499029 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2dc66d4988ecfdee1d603cb33586166e388e1081d4a744ceb716e044519774cf`  
		Last Modified: Sat, 04 Nov 2017 20:23:53 GMT  
		Size: 766.6 KB (766567 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62f7b6d01f2578093a98bf9068e722c0261caef716e8bb53fa50ef338a12bb14`  
		Last Modified: Sat, 04 Nov 2017 20:24:52 GMT  
		Size: 193.3 MB (193302155 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1233a500deb02fa7204e2aeffbd4f0e71e841566930a5c78fd2914b171482c71`  
		Last Modified: Sat, 04 Nov 2017 20:23:51 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f4eef5efe8bffdc36da3b79578951ba6beedb075a348b65df4fd160ff4294e7`  
		Last Modified: Sat, 04 Nov 2017 20:26:57 GMT  
		Size: 4.9 MB (4915280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic` - linux; arm variant v7

```console
$ docker pull ros@sha256:7eae34ce6b55c710554bfd4127c9f022c1264f77f0e1290e2b798e3f53184bf8
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **267.7 MB (267651193 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fdfb5ad7615a3d9bb992a7588728cc294da89168d5aa17deadaa80d89ef97050`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 11 Oct 2017 12:51:12 GMT
ADD file:b8b49b959bf907b482bdc24c3c6f159f7aed1a3fb73e8efa669b12800635d25f in / 
# Wed, 11 Oct 2017 12:51:13 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 11 Oct 2017 12:51:14 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 12:51:14 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 11 Oct 2017 12:51:15 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 11 Oct 2017 12:51:15 GMT
CMD ["/bin/bash"]
# Wed, 11 Oct 2017 13:08:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 13:08:35 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 11 Oct 2017 13:08:39 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 11 Oct 2017 13:09:23 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 13:09:27 GMT
ENV LANG=C.UTF-8
# Wed, 11 Oct 2017 13:09:27 GMT
ENV LC_ALL=C.UTF-8
# Wed, 11 Oct 2017 13:09:51 GMT
RUN rosdep init     && rosdep update
# Wed, 11 Oct 2017 13:09:51 GMT
ENV ROS_DISTRO=kinetic
# Wed, 11 Oct 2017 13:11:04 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 13:11:06 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Wed, 11 Oct 2017 13:11:06 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 11 Oct 2017 13:11:07 GMT
CMD ["bash"]
# Wed, 11 Oct 2017 13:11:39 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:26e5736d414450f12f7c066ff59a208e9ea9311407c91de898505d1adbf01527`  
		Last Modified: Wed, 11 Oct 2017 12:52:25 GMT  
		Size: 42.4 MB (42444579 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3b2d7804592854a106e4cb6a8decdc17f84ce86673c5331ae4be08f6ddf9667`  
		Last Modified: Wed, 11 Oct 2017 12:52:14 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1e6e6dfa0c41d49186e1ef4cf4409826020371a07bc3a6b5509bb23e7004701`  
		Last Modified: Wed, 11 Oct 2017 12:52:15 GMT  
		Size: 614.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8b298e101bd87bb479bd9d268470b3060526668473413ad16a992f5a70b9b69`  
		Last Modified: Wed, 11 Oct 2017 12:52:14 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5da5730e907c71f6dad2a93757f203cea7518145a8d979508503cb906926d549`  
		Last Modified: Wed, 11 Oct 2017 12:52:14 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d09fc16d09d114946c081433e97aa0ce1f0885b00ae8d90b146d5359a8216fe6`  
		Last Modified: Wed, 11 Oct 2017 13:22:25 GMT  
		Size: 4.6 MB (4613971 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c4838a49db06950f36a6a93c8e2cb59919afaa2b80cc8762c8c4eb24e74719f`  
		Last Modified: Wed, 11 Oct 2017 13:22:24 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:079f3b787a6e9a31ec800dda6c1dc7d81bc91726e4474210d6cbdffa6238816d`  
		Last Modified: Wed, 11 Oct 2017 13:22:22 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c661b84e7cbabc46a583c3613c95c982378c0be5a2a8ae7e572bd7578b816d0`  
		Last Modified: Wed, 11 Oct 2017 13:22:41 GMT  
		Size: 50.7 MB (50654517 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f475e2bfcce8aa8c733d291239817e99fe1eda5cabadd03cb3eb94f08f6603ca`  
		Last Modified: Wed, 11 Oct 2017 13:22:23 GMT  
		Size: 760.4 KB (760364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7b6ac49be3f812f73bf4b011ac7bdcca37d8723456bd4602b81cab4da90c79b`  
		Last Modified: Wed, 11 Oct 2017 13:23:12 GMT  
		Size: 164.7 MB (164689507 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3811c4529d480a164d6b1e539f1d419839a3db766229b4a0e5eabcef8ca46ffd`  
		Last Modified: Wed, 11 Oct 2017 13:22:23 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87135cc8a0f4f770058f0b7b6148800fa00164faf1d62ff91e35c6ca4352ef19`  
		Last Modified: Wed, 11 Oct 2017 13:23:30 GMT  
		Size: 4.5 MB (4472274 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:2b503323c77021d84dfd19bba8ba759cb1cadf533c24880858e45bae42af4a28
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **280.0 MB (280042141 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:60303c1fa5784ec5121865ff3926e8deba40e42a8b6a91c501230be9e825cb21`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 11 Oct 2017 14:01:45 GMT
ADD file:17aebc392b3cf207dbe2809abd34b9eec60c3a0e8b39dcd04f8f29a863e966b3 in / 
# Wed, 11 Oct 2017 14:01:47 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 11 Oct 2017 14:01:49 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 14:01:50 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 11 Oct 2017 14:01:52 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 11 Oct 2017 14:01:52 GMT
CMD ["/bin/bash"]
# Wed, 11 Oct 2017 14:21:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 14:22:01 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 11 Oct 2017 14:22:11 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 11 Oct 2017 14:24:25 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 14:24:33 GMT
ENV LANG=C.UTF-8
# Wed, 11 Oct 2017 14:24:34 GMT
ENV LC_ALL=C.UTF-8
# Wed, 11 Oct 2017 14:25:14 GMT
RUN rosdep init     && rosdep update
# Wed, 11 Oct 2017 14:25:21 GMT
ENV ROS_DISTRO=kinetic
# Wed, 11 Oct 2017 14:38:32 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 14:38:36 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Wed, 11 Oct 2017 14:38:45 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 11 Oct 2017 14:38:46 GMT
CMD ["bash"]
# Wed, 11 Oct 2017 14:39:55 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:aac43d4d6c83c61c78a7814ef7d2e02dc6c2f52dc110ff181aea144991711636`  
		Last Modified: Fri, 06 Oct 2017 22:13:46 GMT  
		Size: 43.4 MB (43426326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eed65d92515dfacf9a35d3301bc4847f1057d240f9ab3c442b573bdbb8452791`  
		Last Modified: Wed, 11 Oct 2017 14:03:45 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2de5574dca5eb5a1b9351c990c0865bbe18370da61e7169a539ba80bbdb058b2`  
		Last Modified: Wed, 11 Oct 2017 14:03:44 GMT  
		Size: 617.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5a76e352cce541b89ec31a527e09d2185c9427315f118b56573f79eb31b4c2b`  
		Last Modified: Wed, 11 Oct 2017 14:03:45 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2aceaacecb77ef3360c013ffcd305eecd6cf17a32bd143a72ca0b86b74721ba`  
		Last Modified: Wed, 11 Oct 2017 14:03:45 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df2b464ff94260bae09f2719a99368cdaf4e91cb4ac7f8292454419def5b6bb2`  
		Last Modified: Wed, 11 Oct 2017 15:42:12 GMT  
		Size: 4.8 MB (4819150 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:317f3f12586aa0432e4b41b4e01e1e59b1132bbf0cb8d0a8bec39998598cfc19`  
		Last Modified: Wed, 11 Oct 2017 15:42:04 GMT  
		Size: 13.1 KB (13087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d485a4030132f2b8618b2c1e9adeb0f3512ff862a371cbffb828825cd90b712`  
		Last Modified: Wed, 11 Oct 2017 15:42:02 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebe5f4f3df9287919c1ddc687c131a9235d6053e50879ffbdd2307364fe2784c`  
		Last Modified: Wed, 11 Oct 2017 15:43:00 GMT  
		Size: 52.3 MB (52342563 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:624ab9416f2027ffb47c0f23bc9805307660d34dc41b41bace605c5ee21025e3`  
		Last Modified: Wed, 11 Oct 2017 15:42:03 GMT  
		Size: 760.2 KB (760212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee34836a9ef73b7f0ac44bb3febcd37e3297ed71278f88766d54dd36697393f9`  
		Last Modified: Wed, 11 Oct 2017 15:43:51 GMT  
		Size: 173.9 MB (173908949 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b52cac267b67146f0bc3668dba08f98f3cbe6c14049ecf73fd639745f79378e1`  
		Last Modified: Wed, 11 Oct 2017 15:42:01 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a0eec5946a348abb10b86e745543a65458459d0455074b1bd9f84fc94087481`  
		Last Modified: Wed, 11 Oct 2017 15:44:22 GMT  
		Size: 4.8 MB (4768946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
