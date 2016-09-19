<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `ubuntu`

-	[`ubuntu:12.04.5`](#ubuntu12045)
-	[`ubuntu:12.04`](#ubuntu1204)
-	[`ubuntu:precise-20160819`](#ubuntuprecise-20160819)
-	[`ubuntu:precise`](#ubuntuprecise)
-	[`ubuntu:14.04.5`](#ubuntu14045)
-	[`ubuntu:14.04`](#ubuntu1404)
-	[`ubuntu:trusty-20160914`](#ubuntutrusty-20160914)
-	[`ubuntu:trusty`](#ubuntutrusty)
-	[`ubuntu:16.04`](#ubuntu1604)
-	[`ubuntu:xenial-20160914`](#ubuntuxenial-20160914)
-	[`ubuntu:xenial`](#ubuntuxenial)
-	[`ubuntu:latest`](#ubuntulatest)
-	[`ubuntu:16.10`](#ubuntu1610)
-	[`ubuntu:yakkety-20160919`](#ubuntuyakkety-20160919)
-	[`ubuntu:yakkety`](#ubuntuyakkety)
-	[`ubuntu:devel`](#ubuntudevel)

## `ubuntu:12.04.5`

```console
$ docker pull ubuntu@sha256:a6c8a0cf4c7674174b36fb45821b5b2dcb641958a0d8c7d0560511556f88fb29
```

-	Platforms:
	-	linux; amd64

### `ubuntu:12.04.5` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.1 MB (39141082 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:746fb07d2d186f1cdb731c51da878aea699fecf3821b979659f74ef9ae2fce86`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 30 Aug 2016 17:47:45 GMT
ADD file:d6b1a91e82e43a901a56cf7351a169fde2dcd04e3403a8155af2c15dddfe61ab in / 
# Tue, 30 Aug 2016 17:47:46 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 30 Aug 2016 17:47:47 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 17:47:48 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 30 Aug 2016 17:47:49 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 30 Aug 2016 17:47:49 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:4bae8cb7faf89c9d322388130ba308bedf824dbaec91f7002663787acd905aa0`  
		Last Modified: Fri, 26 Aug 2016 18:52:23 GMT  
		Size: 39.1 MB (39081874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f6907f8c14cb83ed5bfec5449c6ad02bf6934f11e1316a7b2681c2f0a6aedb9`  
		Last Modified: Mon, 19 Sep 2016 17:01:38 GMT  
		Size: 57.9 KB (57942 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66f8c8a8de764a2eed74be71963e0b34a14fbe6b775aa7e5a13b4f82a515f8b6`  
		Last Modified: Mon, 19 Sep 2016 17:01:40 GMT  
		Size: 423.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:152584f5dd5b53cbdf14cd8521604f223ede3a865a56cbdef1117f146d185376`  
		Last Modified: Mon, 19 Sep 2016 17:01:40 GMT  
		Size: 681.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9cfdc2d88d1e3103377419f4d7685906591c944a4c4f7f440c2c74c1014ccef`  
		Last Modified: Mon, 19 Sep 2016 17:01:38 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ubuntu:12.04`

```console
$ docker pull ubuntu@sha256:a6c8a0cf4c7674174b36fb45821b5b2dcb641958a0d8c7d0560511556f88fb29
```

-	Platforms:
	-	linux; amd64

### `ubuntu:12.04` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.1 MB (39141082 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:746fb07d2d186f1cdb731c51da878aea699fecf3821b979659f74ef9ae2fce86`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 30 Aug 2016 17:47:45 GMT
ADD file:d6b1a91e82e43a901a56cf7351a169fde2dcd04e3403a8155af2c15dddfe61ab in / 
# Tue, 30 Aug 2016 17:47:46 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 30 Aug 2016 17:47:47 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 17:47:48 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 30 Aug 2016 17:47:49 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 30 Aug 2016 17:47:49 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:4bae8cb7faf89c9d322388130ba308bedf824dbaec91f7002663787acd905aa0`  
		Last Modified: Fri, 26 Aug 2016 18:52:23 GMT  
		Size: 39.1 MB (39081874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f6907f8c14cb83ed5bfec5449c6ad02bf6934f11e1316a7b2681c2f0a6aedb9`  
		Last Modified: Mon, 19 Sep 2016 17:01:38 GMT  
		Size: 57.9 KB (57942 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66f8c8a8de764a2eed74be71963e0b34a14fbe6b775aa7e5a13b4f82a515f8b6`  
		Last Modified: Mon, 19 Sep 2016 17:01:40 GMT  
		Size: 423.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:152584f5dd5b53cbdf14cd8521604f223ede3a865a56cbdef1117f146d185376`  
		Last Modified: Mon, 19 Sep 2016 17:01:40 GMT  
		Size: 681.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9cfdc2d88d1e3103377419f4d7685906591c944a4c4f7f440c2c74c1014ccef`  
		Last Modified: Mon, 19 Sep 2016 17:01:38 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ubuntu:precise-20160819`

```console
$ docker pull ubuntu@sha256:a6c8a0cf4c7674174b36fb45821b5b2dcb641958a0d8c7d0560511556f88fb29
```

-	Platforms:
	-	linux; amd64

### `ubuntu:precise-20160819` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.1 MB (39141082 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:746fb07d2d186f1cdb731c51da878aea699fecf3821b979659f74ef9ae2fce86`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 30 Aug 2016 17:47:45 GMT
ADD file:d6b1a91e82e43a901a56cf7351a169fde2dcd04e3403a8155af2c15dddfe61ab in / 
# Tue, 30 Aug 2016 17:47:46 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 30 Aug 2016 17:47:47 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 17:47:48 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 30 Aug 2016 17:47:49 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 30 Aug 2016 17:47:49 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:4bae8cb7faf89c9d322388130ba308bedf824dbaec91f7002663787acd905aa0`  
		Last Modified: Fri, 26 Aug 2016 18:52:23 GMT  
		Size: 39.1 MB (39081874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f6907f8c14cb83ed5bfec5449c6ad02bf6934f11e1316a7b2681c2f0a6aedb9`  
		Last Modified: Mon, 19 Sep 2016 17:01:38 GMT  
		Size: 57.9 KB (57942 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66f8c8a8de764a2eed74be71963e0b34a14fbe6b775aa7e5a13b4f82a515f8b6`  
		Last Modified: Mon, 19 Sep 2016 17:01:40 GMT  
		Size: 423.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:152584f5dd5b53cbdf14cd8521604f223ede3a865a56cbdef1117f146d185376`  
		Last Modified: Mon, 19 Sep 2016 17:01:40 GMT  
		Size: 681.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9cfdc2d88d1e3103377419f4d7685906591c944a4c4f7f440c2c74c1014ccef`  
		Last Modified: Mon, 19 Sep 2016 17:01:38 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ubuntu:precise`

```console
$ docker pull ubuntu@sha256:a6c8a0cf4c7674174b36fb45821b5b2dcb641958a0d8c7d0560511556f88fb29
```

-	Platforms:
	-	linux; amd64

### `ubuntu:precise` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.1 MB (39141082 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:746fb07d2d186f1cdb731c51da878aea699fecf3821b979659f74ef9ae2fce86`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 30 Aug 2016 17:47:45 GMT
ADD file:d6b1a91e82e43a901a56cf7351a169fde2dcd04e3403a8155af2c15dddfe61ab in / 
# Tue, 30 Aug 2016 17:47:46 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 30 Aug 2016 17:47:47 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 17:47:48 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 30 Aug 2016 17:47:49 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 30 Aug 2016 17:47:49 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:4bae8cb7faf89c9d322388130ba308bedf824dbaec91f7002663787acd905aa0`  
		Last Modified: Fri, 26 Aug 2016 18:52:23 GMT  
		Size: 39.1 MB (39081874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f6907f8c14cb83ed5bfec5449c6ad02bf6934f11e1316a7b2681c2f0a6aedb9`  
		Last Modified: Mon, 19 Sep 2016 17:01:38 GMT  
		Size: 57.9 KB (57942 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66f8c8a8de764a2eed74be71963e0b34a14fbe6b775aa7e5a13b4f82a515f8b6`  
		Last Modified: Mon, 19 Sep 2016 17:01:40 GMT  
		Size: 423.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:152584f5dd5b53cbdf14cd8521604f223ede3a865a56cbdef1117f146d185376`  
		Last Modified: Mon, 19 Sep 2016 17:01:40 GMT  
		Size: 681.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9cfdc2d88d1e3103377419f4d7685906591c944a4c4f7f440c2c74c1014ccef`  
		Last Modified: Mon, 19 Sep 2016 17:01:38 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ubuntu:14.04.5`

```console
$ docker pull ubuntu@sha256:93a14ad7bd339597b91d945b097c5a7b249e33bd680159551ac5c96025da7520
```

-	Platforms:
	-	linux; amd64

### `ubuntu:14.04.5` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **65.8 MB (65773811 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b1719e1db7562c103f300e790a6323a454877812c6103d8e5b75af536eb4f107`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 19 Sep 2016 17:01:05 GMT
ADD file:84af410c096e19f2106852b7926f0d4c9f1770962b6cd42ad508600d88c8c975 in / 
# Mon, 19 Sep 2016 17:01:06 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 19 Sep 2016 17:01:07 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 19 Sep 2016 17:01:08 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Mon, 19 Sep 2016 17:01:09 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 19 Sep 2016 17:01:09 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:71a21fdea81d21aa19f00fb67e74d07e5c84019f8e2a5f81c64395db55360088`  
		Last Modified: Mon, 19 Sep 2016 17:02:49 GMT  
		Size: 65.7 MB (65701042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf68a3ea6e1d8b0bdffc8984227ff9177045bc9539d13c8f025cc1e042e1a33b`  
		Last Modified: Mon, 19 Sep 2016 17:02:27 GMT  
		Size: 71.6 KB (71563 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31cb2a4d344ac499d302fd05f8b36fd6213188e44301442fd553166a09716c30`  
		Last Modified: Mon, 19 Sep 2016 17:02:27 GMT  
		Size: 364.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0341b6fcb0feba96fadaa1e47a61ae18d6662c9cb6c0900f6eab11e575e94835`  
		Last Modified: Mon, 19 Sep 2016 17:02:27 GMT  
		Size: 680.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8777cc4836480facc3edbd380f790e4810c23f1f91aeda49ddd46d8681a337d`  
		Last Modified: Mon, 19 Sep 2016 17:02:27 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ubuntu:14.04`

```console
$ docker pull ubuntu@sha256:93a14ad7bd339597b91d945b097c5a7b249e33bd680159551ac5c96025da7520
```

-	Platforms:
	-	linux; amd64

### `ubuntu:14.04` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **65.8 MB (65773811 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b1719e1db7562c103f300e790a6323a454877812c6103d8e5b75af536eb4f107`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 19 Sep 2016 17:01:05 GMT
ADD file:84af410c096e19f2106852b7926f0d4c9f1770962b6cd42ad508600d88c8c975 in / 
# Mon, 19 Sep 2016 17:01:06 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 19 Sep 2016 17:01:07 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 19 Sep 2016 17:01:08 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Mon, 19 Sep 2016 17:01:09 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 19 Sep 2016 17:01:09 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:71a21fdea81d21aa19f00fb67e74d07e5c84019f8e2a5f81c64395db55360088`  
		Last Modified: Mon, 19 Sep 2016 17:02:49 GMT  
		Size: 65.7 MB (65701042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf68a3ea6e1d8b0bdffc8984227ff9177045bc9539d13c8f025cc1e042e1a33b`  
		Last Modified: Mon, 19 Sep 2016 17:02:27 GMT  
		Size: 71.6 KB (71563 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31cb2a4d344ac499d302fd05f8b36fd6213188e44301442fd553166a09716c30`  
		Last Modified: Mon, 19 Sep 2016 17:02:27 GMT  
		Size: 364.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0341b6fcb0feba96fadaa1e47a61ae18d6662c9cb6c0900f6eab11e575e94835`  
		Last Modified: Mon, 19 Sep 2016 17:02:27 GMT  
		Size: 680.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8777cc4836480facc3edbd380f790e4810c23f1f91aeda49ddd46d8681a337d`  
		Last Modified: Mon, 19 Sep 2016 17:02:27 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ubuntu:trusty-20160914`

```console
$ docker pull ubuntu@sha256:93a14ad7bd339597b91d945b097c5a7b249e33bd680159551ac5c96025da7520
```

-	Platforms:
	-	linux; amd64

### `ubuntu:trusty-20160914` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **65.8 MB (65773811 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b1719e1db7562c103f300e790a6323a454877812c6103d8e5b75af536eb4f107`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 19 Sep 2016 17:01:05 GMT
ADD file:84af410c096e19f2106852b7926f0d4c9f1770962b6cd42ad508600d88c8c975 in / 
# Mon, 19 Sep 2016 17:01:06 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 19 Sep 2016 17:01:07 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 19 Sep 2016 17:01:08 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Mon, 19 Sep 2016 17:01:09 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 19 Sep 2016 17:01:09 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:71a21fdea81d21aa19f00fb67e74d07e5c84019f8e2a5f81c64395db55360088`  
		Last Modified: Mon, 19 Sep 2016 17:02:49 GMT  
		Size: 65.7 MB (65701042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf68a3ea6e1d8b0bdffc8984227ff9177045bc9539d13c8f025cc1e042e1a33b`  
		Last Modified: Mon, 19 Sep 2016 17:02:27 GMT  
		Size: 71.6 KB (71563 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31cb2a4d344ac499d302fd05f8b36fd6213188e44301442fd553166a09716c30`  
		Last Modified: Mon, 19 Sep 2016 17:02:27 GMT  
		Size: 364.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0341b6fcb0feba96fadaa1e47a61ae18d6662c9cb6c0900f6eab11e575e94835`  
		Last Modified: Mon, 19 Sep 2016 17:02:27 GMT  
		Size: 680.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8777cc4836480facc3edbd380f790e4810c23f1f91aeda49ddd46d8681a337d`  
		Last Modified: Mon, 19 Sep 2016 17:02:27 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ubuntu:trusty`

```console
$ docker pull ubuntu@sha256:93a14ad7bd339597b91d945b097c5a7b249e33bd680159551ac5c96025da7520
```

-	Platforms:
	-	linux; amd64

### `ubuntu:trusty` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **65.8 MB (65773811 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b1719e1db7562c103f300e790a6323a454877812c6103d8e5b75af536eb4f107`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 19 Sep 2016 17:01:05 GMT
ADD file:84af410c096e19f2106852b7926f0d4c9f1770962b6cd42ad508600d88c8c975 in / 
# Mon, 19 Sep 2016 17:01:06 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 19 Sep 2016 17:01:07 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 19 Sep 2016 17:01:08 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Mon, 19 Sep 2016 17:01:09 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 19 Sep 2016 17:01:09 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:71a21fdea81d21aa19f00fb67e74d07e5c84019f8e2a5f81c64395db55360088`  
		Last Modified: Mon, 19 Sep 2016 17:02:49 GMT  
		Size: 65.7 MB (65701042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf68a3ea6e1d8b0bdffc8984227ff9177045bc9539d13c8f025cc1e042e1a33b`  
		Last Modified: Mon, 19 Sep 2016 17:02:27 GMT  
		Size: 71.6 KB (71563 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31cb2a4d344ac499d302fd05f8b36fd6213188e44301442fd553166a09716c30`  
		Last Modified: Mon, 19 Sep 2016 17:02:27 GMT  
		Size: 364.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0341b6fcb0feba96fadaa1e47a61ae18d6662c9cb6c0900f6eab11e575e94835`  
		Last Modified: Mon, 19 Sep 2016 17:02:27 GMT  
		Size: 680.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8777cc4836480facc3edbd380f790e4810c23f1f91aeda49ddd46d8681a337d`  
		Last Modified: Mon, 19 Sep 2016 17:02:27 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ubuntu:16.04`

```console
$ docker pull ubuntu@sha256:3235a49037919e99696d97df8d8a230717272d848ee4ddadbca8d54f97ee30cb
```

-	Platforms:
	-	linux; amd64

### `ubuntu:16.04` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.8 MB (49796937 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:45bc58500fa3d3c0d67233d4a7798134b46b486af1389ca87000c543f46c3d24`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 19 Sep 2016 17:01:17 GMT
ADD file:7d01e28262e78b1d7fd9ff5c2999e4519a338e8447becf947af04004c45b6be9 in / 
# Mon, 19 Sep 2016 17:01:18 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 19 Sep 2016 17:01:19 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 19 Sep 2016 17:01:20 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Mon, 19 Sep 2016 17:01:21 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 19 Sep 2016 17:01:21 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:ff1f1f1de8626c4e34cb2cec216028cdf6fa5e735bb45aa7fa31475b5642aa22`  
		Last Modified: Mon, 19 Sep 2016 17:03:42 GMT  
		Size: 49.8 MB (49794815 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c7b035e2a1aaecca607158b51b0513f8576f1ef0e4a3bcaef69d6072cba1072`  
		Last Modified: Mon, 19 Sep 2016 17:03:27 GMT  
		Size: 833.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac8ee255ff413234d75d0686fae93ca9390544bbb64a374ed277dcc1f15be4dc`  
		Last Modified: Mon, 19 Sep 2016 17:03:27 GMT  
		Size: 444.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf3d47be55f87e433152ca4725e1243bf7eec2bf7a5d4aaf91ed06e12a1395e7`  
		Last Modified: Mon, 19 Sep 2016 17:03:27 GMT  
		Size: 682.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22a909724a97cb7f0226eb51558bae55a543e3c990349ee80cb436cc839ef475`  
		Last Modified: Mon, 19 Sep 2016 17:03:27 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ubuntu:xenial-20160914`

```console
$ docker pull ubuntu@sha256:3235a49037919e99696d97df8d8a230717272d848ee4ddadbca8d54f97ee30cb
```

-	Platforms:
	-	linux; amd64

### `ubuntu:xenial-20160914` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.8 MB (49796937 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:45bc58500fa3d3c0d67233d4a7798134b46b486af1389ca87000c543f46c3d24`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 19 Sep 2016 17:01:17 GMT
ADD file:7d01e28262e78b1d7fd9ff5c2999e4519a338e8447becf947af04004c45b6be9 in / 
# Mon, 19 Sep 2016 17:01:18 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 19 Sep 2016 17:01:19 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 19 Sep 2016 17:01:20 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Mon, 19 Sep 2016 17:01:21 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 19 Sep 2016 17:01:21 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:ff1f1f1de8626c4e34cb2cec216028cdf6fa5e735bb45aa7fa31475b5642aa22`  
		Last Modified: Mon, 19 Sep 2016 17:03:42 GMT  
		Size: 49.8 MB (49794815 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c7b035e2a1aaecca607158b51b0513f8576f1ef0e4a3bcaef69d6072cba1072`  
		Last Modified: Mon, 19 Sep 2016 17:03:27 GMT  
		Size: 833.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac8ee255ff413234d75d0686fae93ca9390544bbb64a374ed277dcc1f15be4dc`  
		Last Modified: Mon, 19 Sep 2016 17:03:27 GMT  
		Size: 444.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf3d47be55f87e433152ca4725e1243bf7eec2bf7a5d4aaf91ed06e12a1395e7`  
		Last Modified: Mon, 19 Sep 2016 17:03:27 GMT  
		Size: 682.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22a909724a97cb7f0226eb51558bae55a543e3c990349ee80cb436cc839ef475`  
		Last Modified: Mon, 19 Sep 2016 17:03:27 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ubuntu:xenial`

```console
$ docker pull ubuntu@sha256:f4691c96e6bbaa99d99ebafd9af1b68ace2aa2128ae95a60369c506dd6e6f6ab
```

-	Platforms:
	-	linux; amd64

### `ubuntu:xenial` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.7 MB (49734782 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bd3d4369aebc4945be269859df0e15b1d32fefa2645f5699037d7d8c6b415a10`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 26 Aug 2016 18:50:09 GMT
ADD file:902bff94e00fb3d9ebb11dc5000a0f0f2400885c56f4fbfb00de394534e282f7 in /
# Fri, 26 Aug 2016 18:50:14 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 26 Aug 2016 18:50:16 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 26 Aug 2016 18:50:18 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 26 Aug 2016 18:50:26 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 26 Aug 2016 18:50:27 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:952132ac251a8df1f831b354a0b9a4cc7cd460b9c332ed664b4c205db6f22c29`  
		Last Modified: Fri, 26 Aug 2016 18:55:29 GMT  
		Size: 49.7 MB (49732675 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82659f8f1b7628b94f8919ece229321a16ec0b7139cf289e010b7c064f603516`  
		Last Modified: Fri, 26 Aug 2016 18:55:05 GMT  
		Size: 823.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c19118ca682dcd394eeed77409fbac93d9fa94c0bcff633344dc0a71ead74a66`  
		Last Modified: Fri, 26 Aug 2016 18:55:05 GMT  
		Size: 446.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8296858250fed454169c737c0706958c8a4a130e0bfdca3cf869fa767a19b4f1`  
		Last Modified: Fri, 26 Aug 2016 18:55:05 GMT  
		Size: 678.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24e0251a0e2ccc2fedbdf51dd44f851622f504c7ddfad56ce0f1c63e1101cb20`  
		Last Modified: Fri, 26 Aug 2016 18:55:06 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ubuntu:latest`

```console
$ docker pull ubuntu@sha256:3235a49037919e99696d97df8d8a230717272d848ee4ddadbca8d54f97ee30cb
```

-	Platforms:
	-	linux; amd64

### `ubuntu:latest` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.8 MB (49796937 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:45bc58500fa3d3c0d67233d4a7798134b46b486af1389ca87000c543f46c3d24`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 19 Sep 2016 17:01:17 GMT
ADD file:7d01e28262e78b1d7fd9ff5c2999e4519a338e8447becf947af04004c45b6be9 in / 
# Mon, 19 Sep 2016 17:01:18 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 19 Sep 2016 17:01:19 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 19 Sep 2016 17:01:20 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Mon, 19 Sep 2016 17:01:21 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 19 Sep 2016 17:01:21 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:ff1f1f1de8626c4e34cb2cec216028cdf6fa5e735bb45aa7fa31475b5642aa22`  
		Last Modified: Mon, 19 Sep 2016 17:03:42 GMT  
		Size: 49.8 MB (49794815 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c7b035e2a1aaecca607158b51b0513f8576f1ef0e4a3bcaef69d6072cba1072`  
		Last Modified: Mon, 19 Sep 2016 17:03:27 GMT  
		Size: 833.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac8ee255ff413234d75d0686fae93ca9390544bbb64a374ed277dcc1f15be4dc`  
		Last Modified: Mon, 19 Sep 2016 17:03:27 GMT  
		Size: 444.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf3d47be55f87e433152ca4725e1243bf7eec2bf7a5d4aaf91ed06e12a1395e7`  
		Last Modified: Mon, 19 Sep 2016 17:03:27 GMT  
		Size: 682.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22a909724a97cb7f0226eb51558bae55a543e3c990349ee80cb436cc839ef475`  
		Last Modified: Mon, 19 Sep 2016 17:03:27 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ubuntu:16.10`

```console
$ docker pull ubuntu@sha256:0650b251bf1f79107fdd111d3f7721e0dcb98519968121ac43d13293c91f94bd
```

-	Platforms:
	-	linux; amd64

### `ubuntu:16.10` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.1 MB (40059050 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d68cfed018fe031905ff62f603aa62cfd96cc7735e7056cae0e6c3d66a6341bf`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 19 Sep 2016 17:01:28 GMT
ADD file:d65cad78ca935be1ca2df077e77966fa3260b0fbe1aa78f1e01801a59676f2dc in / 
# Mon, 19 Sep 2016 17:01:29 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 19 Sep 2016 17:01:30 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 19 Sep 2016 17:01:31 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Mon, 19 Sep 2016 17:01:32 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 19 Sep 2016 17:01:32 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:2508dd26a33f62da438d06d220d9ddbf33d277c4dd8850271829fcff80b79286`  
		Last Modified: Mon, 19 Sep 2016 17:04:32 GMT  
		Size: 40.1 MB (40056807 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:847b38d5bc04c77681582c3526286db3750b9f46ee4dcf05c230b4f8b251ef7f`  
		Last Modified: Mon, 19 Sep 2016 17:04:20 GMT  
		Size: 826.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bb756b3ccb2aafccd675c11315f84367c9e0a7fc5daa68250be8ee00dcb2c20`  
		Last Modified: Mon, 19 Sep 2016 17:04:21 GMT  
		Size: 391.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16aa9a2b73e26e3b83e430470907e7a54032cf0415079b762fb00c5e675bd023`  
		Last Modified: Mon, 19 Sep 2016 17:04:20 GMT  
		Size: 864.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3edd1a64792b5060d2ba69e8cc58eac1f8b95b88a30d703fcf2bc6d3b8ff4d8`  
		Last Modified: Mon, 19 Sep 2016 17:04:20 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ubuntu:yakkety-20160919`

```console
$ docker pull ubuntu@sha256:0650b251bf1f79107fdd111d3f7721e0dcb98519968121ac43d13293c91f94bd
```

-	Platforms:
	-	linux; amd64

### `ubuntu:yakkety-20160919` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.1 MB (40059050 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d68cfed018fe031905ff62f603aa62cfd96cc7735e7056cae0e6c3d66a6341bf`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 19 Sep 2016 17:01:28 GMT
ADD file:d65cad78ca935be1ca2df077e77966fa3260b0fbe1aa78f1e01801a59676f2dc in / 
# Mon, 19 Sep 2016 17:01:29 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 19 Sep 2016 17:01:30 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 19 Sep 2016 17:01:31 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Mon, 19 Sep 2016 17:01:32 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 19 Sep 2016 17:01:32 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:2508dd26a33f62da438d06d220d9ddbf33d277c4dd8850271829fcff80b79286`  
		Last Modified: Mon, 19 Sep 2016 17:04:32 GMT  
		Size: 40.1 MB (40056807 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:847b38d5bc04c77681582c3526286db3750b9f46ee4dcf05c230b4f8b251ef7f`  
		Last Modified: Mon, 19 Sep 2016 17:04:20 GMT  
		Size: 826.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bb756b3ccb2aafccd675c11315f84367c9e0a7fc5daa68250be8ee00dcb2c20`  
		Last Modified: Mon, 19 Sep 2016 17:04:21 GMT  
		Size: 391.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16aa9a2b73e26e3b83e430470907e7a54032cf0415079b762fb00c5e675bd023`  
		Last Modified: Mon, 19 Sep 2016 17:04:20 GMT  
		Size: 864.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3edd1a64792b5060d2ba69e8cc58eac1f8b95b88a30d703fcf2bc6d3b8ff4d8`  
		Last Modified: Mon, 19 Sep 2016 17:04:20 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ubuntu:yakkety`

```console
$ docker pull ubuntu@sha256:0650b251bf1f79107fdd111d3f7721e0dcb98519968121ac43d13293c91f94bd
```

-	Platforms:
	-	linux; amd64

### `ubuntu:yakkety` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.1 MB (40059050 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d68cfed018fe031905ff62f603aa62cfd96cc7735e7056cae0e6c3d66a6341bf`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 19 Sep 2016 17:01:28 GMT
ADD file:d65cad78ca935be1ca2df077e77966fa3260b0fbe1aa78f1e01801a59676f2dc in / 
# Mon, 19 Sep 2016 17:01:29 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 19 Sep 2016 17:01:30 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 19 Sep 2016 17:01:31 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Mon, 19 Sep 2016 17:01:32 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 19 Sep 2016 17:01:32 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:2508dd26a33f62da438d06d220d9ddbf33d277c4dd8850271829fcff80b79286`  
		Last Modified: Mon, 19 Sep 2016 17:04:32 GMT  
		Size: 40.1 MB (40056807 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:847b38d5bc04c77681582c3526286db3750b9f46ee4dcf05c230b4f8b251ef7f`  
		Last Modified: Mon, 19 Sep 2016 17:04:20 GMT  
		Size: 826.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bb756b3ccb2aafccd675c11315f84367c9e0a7fc5daa68250be8ee00dcb2c20`  
		Last Modified: Mon, 19 Sep 2016 17:04:21 GMT  
		Size: 391.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16aa9a2b73e26e3b83e430470907e7a54032cf0415079b762fb00c5e675bd023`  
		Last Modified: Mon, 19 Sep 2016 17:04:20 GMT  
		Size: 864.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3edd1a64792b5060d2ba69e8cc58eac1f8b95b88a30d703fcf2bc6d3b8ff4d8`  
		Last Modified: Mon, 19 Sep 2016 17:04:20 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ubuntu:devel`

```console
$ docker pull ubuntu@sha256:0650b251bf1f79107fdd111d3f7721e0dcb98519968121ac43d13293c91f94bd
```

-	Platforms:
	-	linux; amd64

### `ubuntu:devel` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.1 MB (40059050 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d68cfed018fe031905ff62f603aa62cfd96cc7735e7056cae0e6c3d66a6341bf`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 19 Sep 2016 17:01:28 GMT
ADD file:d65cad78ca935be1ca2df077e77966fa3260b0fbe1aa78f1e01801a59676f2dc in / 
# Mon, 19 Sep 2016 17:01:29 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 19 Sep 2016 17:01:30 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 19 Sep 2016 17:01:31 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Mon, 19 Sep 2016 17:01:32 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 19 Sep 2016 17:01:32 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:2508dd26a33f62da438d06d220d9ddbf33d277c4dd8850271829fcff80b79286`  
		Last Modified: Mon, 19 Sep 2016 17:04:32 GMT  
		Size: 40.1 MB (40056807 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:847b38d5bc04c77681582c3526286db3750b9f46ee4dcf05c230b4f8b251ef7f`  
		Last Modified: Mon, 19 Sep 2016 17:04:20 GMT  
		Size: 826.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bb756b3ccb2aafccd675c11315f84367c9e0a7fc5daa68250be8ee00dcb2c20`  
		Last Modified: Mon, 19 Sep 2016 17:04:21 GMT  
		Size: 391.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16aa9a2b73e26e3b83e430470907e7a54032cf0415079b762fb00c5e675bd023`  
		Last Modified: Mon, 19 Sep 2016 17:04:20 GMT  
		Size: 864.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3edd1a64792b5060d2ba69e8cc58eac1f8b95b88a30d703fcf2bc6d3b8ff4d8`  
		Last Modified: Mon, 19 Sep 2016 17:04:20 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
