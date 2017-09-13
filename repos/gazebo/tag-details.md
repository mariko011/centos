<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `gazebo`

-	[`gazebo:gzserver4`](#gazebogzserver4)
-	[`gazebo:gzserver5`](#gazebogzserver5)
-	[`gazebo:gzserver6`](#gazebogzserver6)
-	[`gazebo:gzserver7`](#gazebogzserver7)
-	[`gazebo:gzserver8`](#gazebogzserver8)
-	[`gazebo:latest`](#gazebolatest)
-	[`gazebo:libgazebo4`](#gazebolibgazebo4)
-	[`gazebo:libgazebo5`](#gazebolibgazebo5)
-	[`gazebo:libgazebo6`](#gazebolibgazebo6)
-	[`gazebo:libgazebo7`](#gazebolibgazebo7)
-	[`gazebo:libgazebo8`](#gazebolibgazebo8)

## `gazebo:gzserver4`

```console
$ docker pull gazebo@sha256:e571e3fbe224d28ebe2026ba0d7d08ca74c874b7d81e8256c3f0ff7d30f850cf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `gazebo:gzserver4` - linux; amd64

```console
$ docker pull gazebo@sha256:690709362c6dc2a14c18c906df0d9d456f6d7d24cdcd74377da2a2dac60b0f3b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **213.7 MB (213708849 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dfe5641968effc1b75ef13de9ec28a48b1820cdf1955bb5f021dc46ffa29dd84`
-	Entrypoint: `["\/gzserver_entrypoint.sh"]`
-	Default Command: `["gzserver"]`

```dockerfile
# Wed, 13 Sep 2017 03:58:38 GMT
ADD file:84479dd43530d358e10fc77876bb6f83e71e1367d959e423f2471e0057c4b424 in / 
# Wed, 13 Sep 2017 03:58:39 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 13 Sep 2017 03:58:40 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 03:58:40 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 13 Sep 2017 03:58:41 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 13 Sep 2017 03:58:42 GMT
CMD ["/bin/bash"]
# Wed, 13 Sep 2017 18:08:22 GMT
RUN apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys D2486D2DD83DB69272AFE98867170598AF249743
# Wed, 13 Sep 2017 18:08:23 GMT
RUN . /etc/os-release     && . /etc/lsb-release     && echo "deb http://packages.osrfoundation.org/gazebo/$ID-stable $DISTRIB_CODENAME main" > /etc/apt/sources.list.d/gazebo-latest.list
# Wed, 13 Sep 2017 18:09:34 GMT
RUN apt-get update && apt-get install -q -y     gazebo4=4.1.3-1*     && rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 18:09:34 GMT
EXPOSE 11345/tcp
# Wed, 13 Sep 2017 18:09:34 GMT
COPY file:5869092530419fa234b6d43a32bf8687d0d509fced55597b2e241dd58b3d1335 in / 
# Wed, 13 Sep 2017 18:09:34 GMT
ENTRYPOINT ["/gzserver_entrypoint.sh"]
# Wed, 13 Sep 2017 18:09:34 GMT
CMD ["gzserver"]
```

-	Layers:
	-	`sha256:48f0413f904d5185d4789dc65f4d451a5a4d7a96c491a5862b73c20d33396e59`  
		Last Modified: Fri, 28 Jul 2017 11:56:09 GMT  
		Size: 67.1 MB (67115580 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe4149b423775a1b4c99abf96e6405ffbeabb464e433deb3404f64e487c4ed25`  
		Last Modified: Wed, 13 Sep 2017 03:59:23 GMT  
		Size: 72.7 KB (72655 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42492a60ee7821b9d8a839a3b12556e0f4c151e9d5f1dbbee86ad866df5e0cb9`  
		Last Modified: Wed, 13 Sep 2017 03:59:22 GMT  
		Size: 366.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0376373e7f6c6e580d86baafdf4eeb232e808d30c6edd76630445d052e6605d7`  
		Last Modified: Wed, 13 Sep 2017 03:59:24 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59f18821fd0b9442b3335094127090bbbbb77a6887e2d6e7c255a7277732a546`  
		Last Modified: Wed, 13 Sep 2017 03:59:22 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7cbd92e633d2f23c69203ec4e466cace4734c1b9610e31b29c83054ae34bd9d`  
		Last Modified: Wed, 13 Sep 2017 18:37:30 GMT  
		Size: 13.1 KB (13112 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97ee2d9fd786d2b2a908e25f6607dfe73229b9177c8390dcd1910536fa577194`  
		Last Modified: Wed, 13 Sep 2017 18:37:29 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:156c743d1671c61818b1ad08c462bae53f6023ba1fb5f3d6d3e448a0952e9764`  
		Last Modified: Wed, 13 Sep 2017 18:37:54 GMT  
		Size: 146.5 MB (146505696 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4df3b9aee2d78a85b13338269bd0ab36ac5c13ed1b6096d1ace020efc16343d0`  
		Last Modified: Wed, 13 Sep 2017 18:37:29 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gazebo:gzserver5`

```console
$ docker pull gazebo@sha256:481998a1b36e2b687fda30477c0552e9923b77ce936535fb770f12de747eb2d8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `gazebo:gzserver5` - linux; amd64

```console
$ docker pull gazebo@sha256:48e6a694b55957df373854d405297631a987b16b5e1711c37b6e65a531d94822
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **234.5 MB (234516366 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8cc1d6b34b35ac7634df69523d413b0dfd26ef2e994f8902cf2461ede3016043`
-	Entrypoint: `["\/gzserver_entrypoint.sh"]`
-	Default Command: `["gzserver"]`

```dockerfile
# Wed, 13 Sep 2017 03:58:38 GMT
ADD file:84479dd43530d358e10fc77876bb6f83e71e1367d959e423f2471e0057c4b424 in / 
# Wed, 13 Sep 2017 03:58:39 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 13 Sep 2017 03:58:40 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 03:58:40 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 13 Sep 2017 03:58:41 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 13 Sep 2017 03:58:42 GMT
CMD ["/bin/bash"]
# Wed, 13 Sep 2017 18:08:22 GMT
RUN apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys D2486D2DD83DB69272AFE98867170598AF249743
# Wed, 13 Sep 2017 18:08:23 GMT
RUN . /etc/os-release     && . /etc/lsb-release     && echo "deb http://packages.osrfoundation.org/gazebo/$ID-stable $DISTRIB_CODENAME main" > /etc/apt/sources.list.d/gazebo-latest.list
# Wed, 13 Sep 2017 18:14:32 GMT
RUN apt-get update && apt-get install -q -y     gazebo5=5.4.0-1*     && rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 18:14:32 GMT
EXPOSE 11345/tcp
# Wed, 13 Sep 2017 18:14:34 GMT
COPY file:5869092530419fa234b6d43a32bf8687d0d509fced55597b2e241dd58b3d1335 in / 
# Wed, 13 Sep 2017 18:14:34 GMT
ENTRYPOINT ["/gzserver_entrypoint.sh"]
# Wed, 13 Sep 2017 18:14:34 GMT
CMD ["gzserver"]
```

-	Layers:
	-	`sha256:48f0413f904d5185d4789dc65f4d451a5a4d7a96c491a5862b73c20d33396e59`  
		Last Modified: Fri, 28 Jul 2017 11:56:09 GMT  
		Size: 67.1 MB (67115580 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe4149b423775a1b4c99abf96e6405ffbeabb464e433deb3404f64e487c4ed25`  
		Last Modified: Wed, 13 Sep 2017 03:59:23 GMT  
		Size: 72.7 KB (72655 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42492a60ee7821b9d8a839a3b12556e0f4c151e9d5f1dbbee86ad866df5e0cb9`  
		Last Modified: Wed, 13 Sep 2017 03:59:22 GMT  
		Size: 366.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0376373e7f6c6e580d86baafdf4eeb232e808d30c6edd76630445d052e6605d7`  
		Last Modified: Wed, 13 Sep 2017 03:59:24 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59f18821fd0b9442b3335094127090bbbbb77a6887e2d6e7c255a7277732a546`  
		Last Modified: Wed, 13 Sep 2017 03:59:22 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7cbd92e633d2f23c69203ec4e466cace4734c1b9610e31b29c83054ae34bd9d`  
		Last Modified: Wed, 13 Sep 2017 18:37:30 GMT  
		Size: 13.1 KB (13112 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97ee2d9fd786d2b2a908e25f6607dfe73229b9177c8390dcd1910536fa577194`  
		Last Modified: Wed, 13 Sep 2017 18:37:29 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ef265a3e9219defda88faf1ad4fd1c622a1bbd945b35cbfbcb4b051939434d8`  
		Last Modified: Wed, 13 Sep 2017 18:39:45 GMT  
		Size: 167.3 MB (167313212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:518fc3e0795c7b1c349603c7338d3841f92f18350217fe5f45f2459af0524fe3`  
		Last Modified: Wed, 13 Sep 2017 18:39:16 GMT  
		Size: 189.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gazebo:gzserver6`

```console
$ docker pull gazebo@sha256:e14c08d842c077e1d843f82d74209b854fe9cf64c678e48ad1c50eaeb017bcb2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `gazebo:gzserver6` - linux; amd64

```console
$ docker pull gazebo@sha256:5d6fc84f86606c1f45b3e53adfa5f065bb4025d0b3cf9ec0c8cdb4c474a9edee
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **238.6 MB (238586021 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2acc5746d1d0dec43dbd68cd7f0b0ed4ffeb6005f431b9830b97f189162973e8`
-	Entrypoint: `["\/gzserver_entrypoint.sh"]`
-	Default Command: `["gzserver"]`

```dockerfile
# Wed, 13 Sep 2017 03:58:38 GMT
ADD file:84479dd43530d358e10fc77876bb6f83e71e1367d959e423f2471e0057c4b424 in / 
# Wed, 13 Sep 2017 03:58:39 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 13 Sep 2017 03:58:40 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 03:58:40 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 13 Sep 2017 03:58:41 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 13 Sep 2017 03:58:42 GMT
CMD ["/bin/bash"]
# Wed, 13 Sep 2017 18:08:22 GMT
RUN apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys D2486D2DD83DB69272AFE98867170598AF249743
# Wed, 13 Sep 2017 18:08:23 GMT
RUN . /etc/os-release     && . /etc/lsb-release     && echo "deb http://packages.osrfoundation.org/gazebo/$ID-stable $DISTRIB_CODENAME main" > /etc/apt/sources.list.d/gazebo-latest.list
# Wed, 13 Sep 2017 18:22:05 GMT
RUN apt-get update && apt-get install -q -y     gazebo6=6.7.0-1*     && rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 18:22:05 GMT
EXPOSE 11345/tcp
# Wed, 13 Sep 2017 18:22:05 GMT
COPY file:5869092530419fa234b6d43a32bf8687d0d509fced55597b2e241dd58b3d1335 in / 
# Wed, 13 Sep 2017 18:22:06 GMT
ENTRYPOINT ["/gzserver_entrypoint.sh"]
# Wed, 13 Sep 2017 18:22:06 GMT
CMD ["gzserver"]
```

-	Layers:
	-	`sha256:48f0413f904d5185d4789dc65f4d451a5a4d7a96c491a5862b73c20d33396e59`  
		Last Modified: Fri, 28 Jul 2017 11:56:09 GMT  
		Size: 67.1 MB (67115580 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe4149b423775a1b4c99abf96e6405ffbeabb464e433deb3404f64e487c4ed25`  
		Last Modified: Wed, 13 Sep 2017 03:59:23 GMT  
		Size: 72.7 KB (72655 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42492a60ee7821b9d8a839a3b12556e0f4c151e9d5f1dbbee86ad866df5e0cb9`  
		Last Modified: Wed, 13 Sep 2017 03:59:22 GMT  
		Size: 366.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0376373e7f6c6e580d86baafdf4eeb232e808d30c6edd76630445d052e6605d7`  
		Last Modified: Wed, 13 Sep 2017 03:59:24 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59f18821fd0b9442b3335094127090bbbbb77a6887e2d6e7c255a7277732a546`  
		Last Modified: Wed, 13 Sep 2017 03:59:22 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7cbd92e633d2f23c69203ec4e466cace4734c1b9610e31b29c83054ae34bd9d`  
		Last Modified: Wed, 13 Sep 2017 18:37:30 GMT  
		Size: 13.1 KB (13112 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97ee2d9fd786d2b2a908e25f6607dfe73229b9177c8390dcd1910536fa577194`  
		Last Modified: Wed, 13 Sep 2017 18:37:29 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24a6b18bd760a012513038630607e6847f025a4bfebca28075f9572eb60757e5`  
		Last Modified: Wed, 13 Sep 2017 18:42:39 GMT  
		Size: 171.4 MB (171382867 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5263b97e08838b8a3348f8ebcfe35353af0db1f1de48a197a57c920ed9d017da`  
		Last Modified: Wed, 13 Sep 2017 18:42:12 GMT  
		Size: 189.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gazebo:gzserver7`

```console
$ docker pull gazebo@sha256:db21870ce2354320989c6a1ccb263443c5f59527c29a62f859c000e8244c9080
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `gazebo:gzserver7` - linux; amd64

```console
$ docker pull gazebo@sha256:e4cb931b0210fed1674abef904427401c271b240b63f0d353c5aef279e84af2f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **227.2 MB (227226533 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ae9cf38b6db0fb3074b55ca8e874597d6846de446935b8a714a5d3b2d78703cb`
-	Entrypoint: `["\/gzserver_entrypoint.sh"]`
-	Default Command: `["gzserver"]`

```dockerfile
# Wed, 13 Sep 2017 03:58:38 GMT
ADD file:84479dd43530d358e10fc77876bb6f83e71e1367d959e423f2471e0057c4b424 in / 
# Wed, 13 Sep 2017 03:58:39 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 13 Sep 2017 03:58:40 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 03:58:40 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 13 Sep 2017 03:58:41 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 13 Sep 2017 03:58:42 GMT
CMD ["/bin/bash"]
# Wed, 13 Sep 2017 18:08:22 GMT
RUN apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys D2486D2DD83DB69272AFE98867170598AF249743
# Wed, 13 Sep 2017 18:08:23 GMT
RUN . /etc/os-release     && . /etc/lsb-release     && echo "deb http://packages.osrfoundation.org/gazebo/$ID-stable $DISTRIB_CODENAME main" > /etc/apt/sources.list.d/gazebo-latest.list
# Wed, 13 Sep 2017 18:27:27 GMT
RUN apt-get update && apt-get install -q -y     gazebo7=7.8.1-1*     && rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 18:27:27 GMT
EXPOSE 11345/tcp
# Wed, 13 Sep 2017 18:27:27 GMT
COPY file:5869092530419fa234b6d43a32bf8687d0d509fced55597b2e241dd58b3d1335 in / 
# Wed, 13 Sep 2017 18:27:28 GMT
ENTRYPOINT ["/gzserver_entrypoint.sh"]
# Wed, 13 Sep 2017 18:27:28 GMT
CMD ["gzserver"]
```

-	Layers:
	-	`sha256:48f0413f904d5185d4789dc65f4d451a5a4d7a96c491a5862b73c20d33396e59`  
		Last Modified: Fri, 28 Jul 2017 11:56:09 GMT  
		Size: 67.1 MB (67115580 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe4149b423775a1b4c99abf96e6405ffbeabb464e433deb3404f64e487c4ed25`  
		Last Modified: Wed, 13 Sep 2017 03:59:23 GMT  
		Size: 72.7 KB (72655 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42492a60ee7821b9d8a839a3b12556e0f4c151e9d5f1dbbee86ad866df5e0cb9`  
		Last Modified: Wed, 13 Sep 2017 03:59:22 GMT  
		Size: 366.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0376373e7f6c6e580d86baafdf4eeb232e808d30c6edd76630445d052e6605d7`  
		Last Modified: Wed, 13 Sep 2017 03:59:24 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59f18821fd0b9442b3335094127090bbbbb77a6887e2d6e7c255a7277732a546`  
		Last Modified: Wed, 13 Sep 2017 03:59:22 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7cbd92e633d2f23c69203ec4e466cace4734c1b9610e31b29c83054ae34bd9d`  
		Last Modified: Wed, 13 Sep 2017 18:37:30 GMT  
		Size: 13.1 KB (13112 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97ee2d9fd786d2b2a908e25f6607dfe73229b9177c8390dcd1910536fa577194`  
		Last Modified: Wed, 13 Sep 2017 18:37:29 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:105d013b64e0d61bf60932e418e1d93b7640add04e8f9803fbdfbb931132004e`  
		Last Modified: Wed, 13 Sep 2017 18:44:50 GMT  
		Size: 160.0 MB (160023379 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97d7e6fa1d9f7c22ed4ec744ac285259c7068f987934eb5a1debd08255022e7a`  
		Last Modified: Wed, 13 Sep 2017 18:44:23 GMT  
		Size: 189.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gazebo:gzserver8`

```console
$ docker pull gazebo@sha256:d07ce7fd41a8bbcf4b71159e75321ecb1c19f081d2edadfff079f2d474e60c44
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `gazebo:gzserver8` - linux; amd64

```console
$ docker pull gazebo@sha256:e64ba8a8ed8f53d2e4f8f7e6d2d74de7b14569edb25e75564250f37df5b85c15
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **265.5 MB (265451060 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:14b1c0921adcde712afa32e81f3549302a033f6e43447a7c3257c7b02ed0e693`
-	Entrypoint: `["\/gzserver_entrypoint.sh"]`
-	Default Command: `["gzserver"]`

```dockerfile
# Wed, 13 Sep 2017 03:58:47 GMT
ADD file:39d3593ea220e686d5450244ef9dd6c934e3b288a29212d332ec33942b7bf218 in / 
# Wed, 13 Sep 2017 03:58:48 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 13 Sep 2017 03:58:48 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 03:58:49 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 13 Sep 2017 03:58:50 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 13 Sep 2017 03:58:50 GMT
CMD ["/bin/bash"]
# Wed, 13 Sep 2017 18:32:29 GMT
RUN apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys D2486D2DD83DB69272AFE98867170598AF249743
# Wed, 13 Sep 2017 18:32:30 GMT
RUN . /etc/os-release     && . /etc/lsb-release     && echo "deb http://packages.osrfoundation.org/gazebo/$ID-stable $DISTRIB_CODENAME main" > /etc/apt/sources.list.d/gazebo-latest.list
# Wed, 13 Sep 2017 18:33:54 GMT
RUN apt-get update && apt-get install -q -y     gazebo8=8.1.1-1*     && rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 18:33:54 GMT
EXPOSE 11345/tcp
# Wed, 13 Sep 2017 18:33:54 GMT
COPY file:5869092530419fa234b6d43a32bf8687d0d509fced55597b2e241dd58b3d1335 in / 
# Wed, 13 Sep 2017 18:33:54 GMT
ENTRYPOINT ["/gzserver_entrypoint.sh"]
# Wed, 13 Sep 2017 18:33:54 GMT
CMD ["gzserver"]
```

-	Layers:
	-	`sha256:d5c6f90da05dc7e77d2e5fef63c341ab05ba2a03396ab5ae8f18814a7bbf5265`  
		Last Modified: Thu, 03 Aug 2017 11:51:31 GMT  
		Size: 47.3 MB (47258703 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbbe761fcb565a007b458e09e08ecb88947f647f57be819a492a6b23694cefd8`  
		Last Modified: Wed, 13 Sep 2017 03:59:35 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7afa5ede606fb1845e42f0d4816d2a7593a2b666ff9ca4722dcd2cff8a541acf`  
		Last Modified: Wed, 13 Sep 2017 03:59:35 GMT  
		Size: 617.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6b7253b56f434d6e4d97d259cb1007481cf670df2e04229e83cf37db33d96eb`  
		Last Modified: Wed, 13 Sep 2017 03:59:35 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b8db33536d447786cf57cca870fdd7d50d55fd67060c06252edc1c8db456a8f`  
		Last Modified: Wed, 13 Sep 2017 03:59:35 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f639af40b75e4315151b894baf5027e8c61b527a39b99b24e8e22574dcb78333`  
		Last Modified: Wed, 13 Sep 2017 18:47:52 GMT  
		Size: 13.1 KB (13118 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31615eb66001ec74fd12220ecf550a757b6cd380c9747f9c4398ad580f495580`  
		Last Modified: Wed, 13 Sep 2017 18:47:52 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a17543613393e85e72c07d0ba27c1f86bb06efd95d9071dda17756fdc21a2b80`  
		Last Modified: Wed, 13 Sep 2017 18:48:31 GMT  
		Size: 218.2 MB (218176322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3425e37944fa4f23129721e8fc8cd1b0aef5e370d777543f8597e455aed5e7f0`  
		Last Modified: Wed, 13 Sep 2017 18:47:55 GMT  
		Size: 189.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gazebo:latest`

```console
$ docker pull gazebo@sha256:3f04e572df50ba709d8f72020a867464cee0b8bf59b6f18d13b4ec5cb263dce4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `gazebo:latest` - linux; amd64

```console
$ docker pull gazebo@sha256:3492566cdcb6e8b2d9c3ee9f6973f0d5dc7b2242c93e964ebb3a8184d2d6a5f7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **499.5 MB (499473800 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1e8d9a0cde1a5827dcd2331e59f8cdf820841d31afc42dc42e6f27363732b6c5`
-	Entrypoint: `["\/gzserver_entrypoint.sh"]`
-	Default Command: `["gzserver"]`

```dockerfile
# Wed, 13 Sep 2017 03:58:47 GMT
ADD file:39d3593ea220e686d5450244ef9dd6c934e3b288a29212d332ec33942b7bf218 in / 
# Wed, 13 Sep 2017 03:58:48 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 13 Sep 2017 03:58:48 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 03:58:49 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 13 Sep 2017 03:58:50 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 13 Sep 2017 03:58:50 GMT
CMD ["/bin/bash"]
# Wed, 13 Sep 2017 18:32:29 GMT
RUN apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys D2486D2DD83DB69272AFE98867170598AF249743
# Wed, 13 Sep 2017 18:32:30 GMT
RUN . /etc/os-release     && . /etc/lsb-release     && echo "deb http://packages.osrfoundation.org/gazebo/$ID-stable $DISTRIB_CODENAME main" > /etc/apt/sources.list.d/gazebo-latest.list
# Wed, 13 Sep 2017 18:33:54 GMT
RUN apt-get update && apt-get install -q -y     gazebo8=8.1.1-1*     && rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 18:33:54 GMT
EXPOSE 11345/tcp
# Wed, 13 Sep 2017 18:33:54 GMT
COPY file:5869092530419fa234b6d43a32bf8687d0d509fced55597b2e241dd58b3d1335 in / 
# Wed, 13 Sep 2017 18:33:54 GMT
ENTRYPOINT ["/gzserver_entrypoint.sh"]
# Wed, 13 Sep 2017 18:33:54 GMT
CMD ["gzserver"]
# Wed, 13 Sep 2017 18:36:23 GMT
RUN apt-get update && apt-get install -q -y     libgazebo8-dev=8.1.1-1*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:d5c6f90da05dc7e77d2e5fef63c341ab05ba2a03396ab5ae8f18814a7bbf5265`  
		Last Modified: Thu, 03 Aug 2017 11:51:31 GMT  
		Size: 47.3 MB (47258703 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbbe761fcb565a007b458e09e08ecb88947f647f57be819a492a6b23694cefd8`  
		Last Modified: Wed, 13 Sep 2017 03:59:35 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7afa5ede606fb1845e42f0d4816d2a7593a2b666ff9ca4722dcd2cff8a541acf`  
		Last Modified: Wed, 13 Sep 2017 03:59:35 GMT  
		Size: 617.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6b7253b56f434d6e4d97d259cb1007481cf670df2e04229e83cf37db33d96eb`  
		Last Modified: Wed, 13 Sep 2017 03:59:35 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b8db33536d447786cf57cca870fdd7d50d55fd67060c06252edc1c8db456a8f`  
		Last Modified: Wed, 13 Sep 2017 03:59:35 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f639af40b75e4315151b894baf5027e8c61b527a39b99b24e8e22574dcb78333`  
		Last Modified: Wed, 13 Sep 2017 18:47:52 GMT  
		Size: 13.1 KB (13118 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31615eb66001ec74fd12220ecf550a757b6cd380c9747f9c4398ad580f495580`  
		Last Modified: Wed, 13 Sep 2017 18:47:52 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a17543613393e85e72c07d0ba27c1f86bb06efd95d9071dda17756fdc21a2b80`  
		Last Modified: Wed, 13 Sep 2017 18:48:31 GMT  
		Size: 218.2 MB (218176322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3425e37944fa4f23129721e8fc8cd1b0aef5e370d777543f8597e455aed5e7f0`  
		Last Modified: Wed, 13 Sep 2017 18:47:55 GMT  
		Size: 189.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30fdae9a4cda6a4c630be925080a0e1877a07d13cf36dba7ead74e23a23548a5`  
		Last Modified: Wed, 13 Sep 2017 18:49:41 GMT  
		Size: 234.0 MB (234022740 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gazebo:libgazebo4`

```console
$ docker pull gazebo@sha256:3a57f16e9a8e5cff770c349cefd126473569f604549be25650e4cc315e78c4d2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `gazebo:libgazebo4` - linux; amd64

```console
$ docker pull gazebo@sha256:1732adabe7bbf825250cf819d618da715a23651ba2d2694fa146a02a97a07851
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **448.4 MB (448411967 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e7184a781ac317b6afdec13734cc4b12d59666953130ae46202d672dd3b105f7`
-	Entrypoint: `["\/gzserver_entrypoint.sh"]`
-	Default Command: `["gzserver"]`

```dockerfile
# Wed, 13 Sep 2017 03:58:38 GMT
ADD file:84479dd43530d358e10fc77876bb6f83e71e1367d959e423f2471e0057c4b424 in / 
# Wed, 13 Sep 2017 03:58:39 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 13 Sep 2017 03:58:40 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 03:58:40 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 13 Sep 2017 03:58:41 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 13 Sep 2017 03:58:42 GMT
CMD ["/bin/bash"]
# Wed, 13 Sep 2017 18:08:22 GMT
RUN apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys D2486D2DD83DB69272AFE98867170598AF249743
# Wed, 13 Sep 2017 18:08:23 GMT
RUN . /etc/os-release     && . /etc/lsb-release     && echo "deb http://packages.osrfoundation.org/gazebo/$ID-stable $DISTRIB_CODENAME main" > /etc/apt/sources.list.d/gazebo-latest.list
# Wed, 13 Sep 2017 18:09:34 GMT
RUN apt-get update && apt-get install -q -y     gazebo4=4.1.3-1*     && rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 18:09:34 GMT
EXPOSE 11345/tcp
# Wed, 13 Sep 2017 18:09:34 GMT
COPY file:5869092530419fa234b6d43a32bf8687d0d509fced55597b2e241dd58b3d1335 in / 
# Wed, 13 Sep 2017 18:09:34 GMT
ENTRYPOINT ["/gzserver_entrypoint.sh"]
# Wed, 13 Sep 2017 18:09:34 GMT
CMD ["gzserver"]
# Wed, 13 Sep 2017 18:12:32 GMT
RUN apt-get update && apt-get install -q -y     libgazebo4-dev=4.1.3-1*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:48f0413f904d5185d4789dc65f4d451a5a4d7a96c491a5862b73c20d33396e59`  
		Last Modified: Fri, 28 Jul 2017 11:56:09 GMT  
		Size: 67.1 MB (67115580 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe4149b423775a1b4c99abf96e6405ffbeabb464e433deb3404f64e487c4ed25`  
		Last Modified: Wed, 13 Sep 2017 03:59:23 GMT  
		Size: 72.7 KB (72655 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42492a60ee7821b9d8a839a3b12556e0f4c151e9d5f1dbbee86ad866df5e0cb9`  
		Last Modified: Wed, 13 Sep 2017 03:59:22 GMT  
		Size: 366.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0376373e7f6c6e580d86baafdf4eeb232e808d30c6edd76630445d052e6605d7`  
		Last Modified: Wed, 13 Sep 2017 03:59:24 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59f18821fd0b9442b3335094127090bbbbb77a6887e2d6e7c255a7277732a546`  
		Last Modified: Wed, 13 Sep 2017 03:59:22 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7cbd92e633d2f23c69203ec4e466cace4734c1b9610e31b29c83054ae34bd9d`  
		Last Modified: Wed, 13 Sep 2017 18:37:30 GMT  
		Size: 13.1 KB (13112 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97ee2d9fd786d2b2a908e25f6607dfe73229b9177c8390dcd1910536fa577194`  
		Last Modified: Wed, 13 Sep 2017 18:37:29 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:156c743d1671c61818b1ad08c462bae53f6023ba1fb5f3d6d3e448a0952e9764`  
		Last Modified: Wed, 13 Sep 2017 18:37:54 GMT  
		Size: 146.5 MB (146505696 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4df3b9aee2d78a85b13338269bd0ab36ac5c13ed1b6096d1ace020efc16343d0`  
		Last Modified: Wed, 13 Sep 2017 18:37:29 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f346510c3c23beb7cfa7c58277c1d6069944a87fb9054bd9660343f980837536`  
		Last Modified: Wed, 13 Sep 2017 18:39:04 GMT  
		Size: 234.7 MB (234703118 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gazebo:libgazebo5`

```console
$ docker pull gazebo@sha256:af1e2cd6c44cb29366215aaa3937e446b9db4397ff239009bca74675dc7cd9b4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `gazebo:libgazebo5` - linux; amd64

```console
$ docker pull gazebo@sha256:04bec523fc3cb2507c1e08b0e36c8f34a109c8f608e7ea04ae158e48b82e0bcb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **498.4 MB (498447552 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e419671be7117563f1bc7c18bc02c62a874fc986c05c3275ea6854417a357d43`
-	Entrypoint: `["\/gzserver_entrypoint.sh"]`
-	Default Command: `["gzserver"]`

```dockerfile
# Wed, 13 Sep 2017 03:58:38 GMT
ADD file:84479dd43530d358e10fc77876bb6f83e71e1367d959e423f2471e0057c4b424 in / 
# Wed, 13 Sep 2017 03:58:39 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 13 Sep 2017 03:58:40 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 03:58:40 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 13 Sep 2017 03:58:41 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 13 Sep 2017 03:58:42 GMT
CMD ["/bin/bash"]
# Wed, 13 Sep 2017 18:08:22 GMT
RUN apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys D2486D2DD83DB69272AFE98867170598AF249743
# Wed, 13 Sep 2017 18:08:23 GMT
RUN . /etc/os-release     && . /etc/lsb-release     && echo "deb http://packages.osrfoundation.org/gazebo/$ID-stable $DISTRIB_CODENAME main" > /etc/apt/sources.list.d/gazebo-latest.list
# Wed, 13 Sep 2017 18:14:32 GMT
RUN apt-get update && apt-get install -q -y     gazebo5=5.4.0-1*     && rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 18:14:32 GMT
EXPOSE 11345/tcp
# Wed, 13 Sep 2017 18:14:34 GMT
COPY file:5869092530419fa234b6d43a32bf8687d0d509fced55597b2e241dd58b3d1335 in / 
# Wed, 13 Sep 2017 18:14:34 GMT
ENTRYPOINT ["/gzserver_entrypoint.sh"]
# Wed, 13 Sep 2017 18:14:34 GMT
CMD ["gzserver"]
# Wed, 13 Sep 2017 18:18:59 GMT
RUN apt-get update && apt-get install -q -y     libgazebo5-dev=5.4.0-1*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:48f0413f904d5185d4789dc65f4d451a5a4d7a96c491a5862b73c20d33396e59`  
		Last Modified: Fri, 28 Jul 2017 11:56:09 GMT  
		Size: 67.1 MB (67115580 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe4149b423775a1b4c99abf96e6405ffbeabb464e433deb3404f64e487c4ed25`  
		Last Modified: Wed, 13 Sep 2017 03:59:23 GMT  
		Size: 72.7 KB (72655 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42492a60ee7821b9d8a839a3b12556e0f4c151e9d5f1dbbee86ad866df5e0cb9`  
		Last Modified: Wed, 13 Sep 2017 03:59:22 GMT  
		Size: 366.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0376373e7f6c6e580d86baafdf4eeb232e808d30c6edd76630445d052e6605d7`  
		Last Modified: Wed, 13 Sep 2017 03:59:24 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59f18821fd0b9442b3335094127090bbbbb77a6887e2d6e7c255a7277732a546`  
		Last Modified: Wed, 13 Sep 2017 03:59:22 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7cbd92e633d2f23c69203ec4e466cace4734c1b9610e31b29c83054ae34bd9d`  
		Last Modified: Wed, 13 Sep 2017 18:37:30 GMT  
		Size: 13.1 KB (13112 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97ee2d9fd786d2b2a908e25f6607dfe73229b9177c8390dcd1910536fa577194`  
		Last Modified: Wed, 13 Sep 2017 18:37:29 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ef265a3e9219defda88faf1ad4fd1c622a1bbd945b35cbfbcb4b051939434d8`  
		Last Modified: Wed, 13 Sep 2017 18:39:45 GMT  
		Size: 167.3 MB (167313212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:518fc3e0795c7b1c349603c7338d3841f92f18350217fe5f45f2459af0524fe3`  
		Last Modified: Wed, 13 Sep 2017 18:39:16 GMT  
		Size: 189.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:938fb04f4138ab0fd5d8248f77807f8c33f615efda99c6d97009de0fb5519cf7`  
		Last Modified: Wed, 13 Sep 2017 18:41:01 GMT  
		Size: 263.9 MB (263931186 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gazebo:libgazebo6`

```console
$ docker pull gazebo@sha256:0cad76d054d5caf8e35db151ddcd74240644df83bd04f3174e97bc717b81606b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `gazebo:libgazebo6` - linux; amd64

```console
$ docker pull gazebo@sha256:e4c1f5856f9bf842671e3c3703979ffe9a73fdbd8706b9e3df1690e2d6e88ad2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **491.8 MB (491818384 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:003ccd47e77668a14b9f2ad1acd8e396c5606579b9ae9888ff65126f03ad5648`
-	Entrypoint: `["\/gzserver_entrypoint.sh"]`
-	Default Command: `["gzserver"]`

```dockerfile
# Wed, 13 Sep 2017 03:58:38 GMT
ADD file:84479dd43530d358e10fc77876bb6f83e71e1367d959e423f2471e0057c4b424 in / 
# Wed, 13 Sep 2017 03:58:39 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 13 Sep 2017 03:58:40 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 03:58:40 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 13 Sep 2017 03:58:41 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 13 Sep 2017 03:58:42 GMT
CMD ["/bin/bash"]
# Wed, 13 Sep 2017 18:08:22 GMT
RUN apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys D2486D2DD83DB69272AFE98867170598AF249743
# Wed, 13 Sep 2017 18:08:23 GMT
RUN . /etc/os-release     && . /etc/lsb-release     && echo "deb http://packages.osrfoundation.org/gazebo/$ID-stable $DISTRIB_CODENAME main" > /etc/apt/sources.list.d/gazebo-latest.list
# Wed, 13 Sep 2017 18:22:05 GMT
RUN apt-get update && apt-get install -q -y     gazebo6=6.7.0-1*     && rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 18:22:05 GMT
EXPOSE 11345/tcp
# Wed, 13 Sep 2017 18:22:05 GMT
COPY file:5869092530419fa234b6d43a32bf8687d0d509fced55597b2e241dd58b3d1335 in / 
# Wed, 13 Sep 2017 18:22:06 GMT
ENTRYPOINT ["/gzserver_entrypoint.sh"]
# Wed, 13 Sep 2017 18:22:06 GMT
CMD ["gzserver"]
# Wed, 13 Sep 2017 18:24:52 GMT
RUN apt-get update && apt-get install -q -y     libgazebo6-dev=6.7.0-1*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:48f0413f904d5185d4789dc65f4d451a5a4d7a96c491a5862b73c20d33396e59`  
		Last Modified: Fri, 28 Jul 2017 11:56:09 GMT  
		Size: 67.1 MB (67115580 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe4149b423775a1b4c99abf96e6405ffbeabb464e433deb3404f64e487c4ed25`  
		Last Modified: Wed, 13 Sep 2017 03:59:23 GMT  
		Size: 72.7 KB (72655 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42492a60ee7821b9d8a839a3b12556e0f4c151e9d5f1dbbee86ad866df5e0cb9`  
		Last Modified: Wed, 13 Sep 2017 03:59:22 GMT  
		Size: 366.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0376373e7f6c6e580d86baafdf4eeb232e808d30c6edd76630445d052e6605d7`  
		Last Modified: Wed, 13 Sep 2017 03:59:24 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59f18821fd0b9442b3335094127090bbbbb77a6887e2d6e7c255a7277732a546`  
		Last Modified: Wed, 13 Sep 2017 03:59:22 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7cbd92e633d2f23c69203ec4e466cace4734c1b9610e31b29c83054ae34bd9d`  
		Last Modified: Wed, 13 Sep 2017 18:37:30 GMT  
		Size: 13.1 KB (13112 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97ee2d9fd786d2b2a908e25f6607dfe73229b9177c8390dcd1910536fa577194`  
		Last Modified: Wed, 13 Sep 2017 18:37:29 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24a6b18bd760a012513038630607e6847f025a4bfebca28075f9572eb60757e5`  
		Last Modified: Wed, 13 Sep 2017 18:42:39 GMT  
		Size: 171.4 MB (171382867 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5263b97e08838b8a3348f8ebcfe35353af0db1f1de48a197a57c920ed9d017da`  
		Last Modified: Wed, 13 Sep 2017 18:42:12 GMT  
		Size: 189.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e87b9d9acce8472a1bb0ff05278465b99c2e31949413dd1a0e695bac5b93ea43`  
		Last Modified: Wed, 13 Sep 2017 18:44:13 GMT  
		Size: 253.2 MB (253232363 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gazebo:libgazebo7`

```console
$ docker pull gazebo@sha256:b817af22223fb383e109c54a15fb4042d6113631bf89e5253afa5bea3680a67a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `gazebo:libgazebo7` - linux; amd64

```console
$ docker pull gazebo@sha256:c45f3397c1fc7549f26a6a38c3f166bb7f302039020f62f4b2cc23123379f5b0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **480.3 MB (480296118 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5b07ed44774ace08470db1594859e4cdb960b74fbc2926ec64c83970b0ed927d`
-	Entrypoint: `["\/gzserver_entrypoint.sh"]`
-	Default Command: `["gzserver"]`

```dockerfile
# Wed, 13 Sep 2017 03:58:38 GMT
ADD file:84479dd43530d358e10fc77876bb6f83e71e1367d959e423f2471e0057c4b424 in / 
# Wed, 13 Sep 2017 03:58:39 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 13 Sep 2017 03:58:40 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 03:58:40 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 13 Sep 2017 03:58:41 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 13 Sep 2017 03:58:42 GMT
CMD ["/bin/bash"]
# Wed, 13 Sep 2017 18:08:22 GMT
RUN apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys D2486D2DD83DB69272AFE98867170598AF249743
# Wed, 13 Sep 2017 18:08:23 GMT
RUN . /etc/os-release     && . /etc/lsb-release     && echo "deb http://packages.osrfoundation.org/gazebo/$ID-stable $DISTRIB_CODENAME main" > /etc/apt/sources.list.d/gazebo-latest.list
# Wed, 13 Sep 2017 18:27:27 GMT
RUN apt-get update && apt-get install -q -y     gazebo7=7.8.1-1*     && rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 18:27:27 GMT
EXPOSE 11345/tcp
# Wed, 13 Sep 2017 18:27:27 GMT
COPY file:5869092530419fa234b6d43a32bf8687d0d509fced55597b2e241dd58b3d1335 in / 
# Wed, 13 Sep 2017 18:27:28 GMT
ENTRYPOINT ["/gzserver_entrypoint.sh"]
# Wed, 13 Sep 2017 18:27:28 GMT
CMD ["gzserver"]
# Wed, 13 Sep 2017 18:31:37 GMT
RUN apt-get update && apt-get install -q -y     libgazebo7-dev=7.8.1-1*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:48f0413f904d5185d4789dc65f4d451a5a4d7a96c491a5862b73c20d33396e59`  
		Last Modified: Fri, 28 Jul 2017 11:56:09 GMT  
		Size: 67.1 MB (67115580 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe4149b423775a1b4c99abf96e6405ffbeabb464e433deb3404f64e487c4ed25`  
		Last Modified: Wed, 13 Sep 2017 03:59:23 GMT  
		Size: 72.7 KB (72655 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42492a60ee7821b9d8a839a3b12556e0f4c151e9d5f1dbbee86ad866df5e0cb9`  
		Last Modified: Wed, 13 Sep 2017 03:59:22 GMT  
		Size: 366.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0376373e7f6c6e580d86baafdf4eeb232e808d30c6edd76630445d052e6605d7`  
		Last Modified: Wed, 13 Sep 2017 03:59:24 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59f18821fd0b9442b3335094127090bbbbb77a6887e2d6e7c255a7277732a546`  
		Last Modified: Wed, 13 Sep 2017 03:59:22 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7cbd92e633d2f23c69203ec4e466cace4734c1b9610e31b29c83054ae34bd9d`  
		Last Modified: Wed, 13 Sep 2017 18:37:30 GMT  
		Size: 13.1 KB (13112 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97ee2d9fd786d2b2a908e25f6607dfe73229b9177c8390dcd1910536fa577194`  
		Last Modified: Wed, 13 Sep 2017 18:37:29 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:105d013b64e0d61bf60932e418e1d93b7640add04e8f9803fbdfbb931132004e`  
		Last Modified: Wed, 13 Sep 2017 18:44:50 GMT  
		Size: 160.0 MB (160023379 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97d7e6fa1d9f7c22ed4ec744ac285259c7068f987934eb5a1debd08255022e7a`  
		Last Modified: Wed, 13 Sep 2017 18:44:23 GMT  
		Size: 189.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0f2e87462cc977737598706091a09b09c88f30f2b58662c597127f7b09308f6`  
		Last Modified: Wed, 13 Sep 2017 18:46:08 GMT  
		Size: 253.1 MB (253069585 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gazebo:libgazebo8`

```console
$ docker pull gazebo@sha256:3f04e572df50ba709d8f72020a867464cee0b8bf59b6f18d13b4ec5cb263dce4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `gazebo:libgazebo8` - linux; amd64

```console
$ docker pull gazebo@sha256:3492566cdcb6e8b2d9c3ee9f6973f0d5dc7b2242c93e964ebb3a8184d2d6a5f7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **499.5 MB (499473800 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1e8d9a0cde1a5827dcd2331e59f8cdf820841d31afc42dc42e6f27363732b6c5`
-	Entrypoint: `["\/gzserver_entrypoint.sh"]`
-	Default Command: `["gzserver"]`

```dockerfile
# Wed, 13 Sep 2017 03:58:47 GMT
ADD file:39d3593ea220e686d5450244ef9dd6c934e3b288a29212d332ec33942b7bf218 in / 
# Wed, 13 Sep 2017 03:58:48 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 13 Sep 2017 03:58:48 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 03:58:49 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 13 Sep 2017 03:58:50 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 13 Sep 2017 03:58:50 GMT
CMD ["/bin/bash"]
# Wed, 13 Sep 2017 18:32:29 GMT
RUN apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys D2486D2DD83DB69272AFE98867170598AF249743
# Wed, 13 Sep 2017 18:32:30 GMT
RUN . /etc/os-release     && . /etc/lsb-release     && echo "deb http://packages.osrfoundation.org/gazebo/$ID-stable $DISTRIB_CODENAME main" > /etc/apt/sources.list.d/gazebo-latest.list
# Wed, 13 Sep 2017 18:33:54 GMT
RUN apt-get update && apt-get install -q -y     gazebo8=8.1.1-1*     && rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 18:33:54 GMT
EXPOSE 11345/tcp
# Wed, 13 Sep 2017 18:33:54 GMT
COPY file:5869092530419fa234b6d43a32bf8687d0d509fced55597b2e241dd58b3d1335 in / 
# Wed, 13 Sep 2017 18:33:54 GMT
ENTRYPOINT ["/gzserver_entrypoint.sh"]
# Wed, 13 Sep 2017 18:33:54 GMT
CMD ["gzserver"]
# Wed, 13 Sep 2017 18:36:23 GMT
RUN apt-get update && apt-get install -q -y     libgazebo8-dev=8.1.1-1*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:d5c6f90da05dc7e77d2e5fef63c341ab05ba2a03396ab5ae8f18814a7bbf5265`  
		Last Modified: Thu, 03 Aug 2017 11:51:31 GMT  
		Size: 47.3 MB (47258703 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbbe761fcb565a007b458e09e08ecb88947f647f57be819a492a6b23694cefd8`  
		Last Modified: Wed, 13 Sep 2017 03:59:35 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7afa5ede606fb1845e42f0d4816d2a7593a2b666ff9ca4722dcd2cff8a541acf`  
		Last Modified: Wed, 13 Sep 2017 03:59:35 GMT  
		Size: 617.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6b7253b56f434d6e4d97d259cb1007481cf670df2e04229e83cf37db33d96eb`  
		Last Modified: Wed, 13 Sep 2017 03:59:35 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b8db33536d447786cf57cca870fdd7d50d55fd67060c06252edc1c8db456a8f`  
		Last Modified: Wed, 13 Sep 2017 03:59:35 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f639af40b75e4315151b894baf5027e8c61b527a39b99b24e8e22574dcb78333`  
		Last Modified: Wed, 13 Sep 2017 18:47:52 GMT  
		Size: 13.1 KB (13118 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31615eb66001ec74fd12220ecf550a757b6cd380c9747f9c4398ad580f495580`  
		Last Modified: Wed, 13 Sep 2017 18:47:52 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a17543613393e85e72c07d0ba27c1f86bb06efd95d9071dda17756fdc21a2b80`  
		Last Modified: Wed, 13 Sep 2017 18:48:31 GMT  
		Size: 218.2 MB (218176322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3425e37944fa4f23129721e8fc8cd1b0aef5e370d777543f8597e455aed5e7f0`  
		Last Modified: Wed, 13 Sep 2017 18:47:55 GMT  
		Size: 189.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30fdae9a4cda6a4c630be925080a0e1877a07d13cf36dba7ead74e23a23548a5`  
		Last Modified: Wed, 13 Sep 2017 18:49:41 GMT  
		Size: 234.0 MB (234022740 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
