<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `ubuntu`

-	[`ubuntu:12.04.5`](#ubuntu12045)
-	[`ubuntu:12.04`](#ubuntu1204)
-	[`ubuntu:precise-20161102`](#ubuntuprecise-20161102)
-	[`ubuntu:precise`](#ubuntuprecise)
-	[`ubuntu:14.04.5`](#ubuntu14045)
-	[`ubuntu:14.04`](#ubuntu1404)
-	[`ubuntu:trusty-20161101`](#ubuntutrusty-20161101)
-	[`ubuntu:trusty`](#ubuntutrusty)
-	[`ubuntu:16.04`](#ubuntu1604)
-	[`ubuntu:xenial-20161114`](#ubuntuxenial-20161114)
-	[`ubuntu:xenial`](#ubuntuxenial)
-	[`ubuntu:latest`](#ubuntulatest)
-	[`ubuntu:16.10`](#ubuntu1610)
-	[`ubuntu:yakkety-20161104`](#ubuntuyakkety-20161104)
-	[`ubuntu:yakkety`](#ubuntuyakkety)

## `ubuntu:12.04.5`

```console
$ docker pull ubuntu@sha256:cbcc4eb9901bfa2ae38b4621315629941d22e7b2b2a7888db1c66cea88737736
```

-	Platforms:
	-	linux; amd64

### `ubuntu:12.04.5` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.1 MB (39130758 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aefa163f7a7ed2324292a397eff927a9309552783f68cae04cced508a0f527cd`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 16 Nov 2016 20:57:20 GMT
ADD file:918588bc20de203f9564552c8d27b53f0c5358a4849132fbe8a7cee90009cda5 in / 
# Wed, 16 Nov 2016 20:57:26 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 16 Nov 2016 20:57:27 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 16 Nov 2016 20:57:28 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 16 Nov 2016 20:57:28 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 16 Nov 2016 20:57:29 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:d6ec4d0dfee224fd6853b7d735d5b8d95501ca9c50ac4c04a06f3fcab170a606`  
		Last Modified: Tue, 08 Nov 2016 12:49:34 GMT  
		Size: 39.1 MB (39071562 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b16bbaf4c0bda8f4079d59c64b10ec39ed14f8a3478cd129adc0c61d16d2b28d`  
		Last Modified: Wed, 16 Nov 2016 20:59:20 GMT  
		Size: 57.9 KB (57936 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcfd0f7e92b6366c41feb9d70d897bd9cdd36d5cef28bb78a2859c2116dfce29`  
		Last Modified: Wed, 16 Nov 2016 20:59:19 GMT  
		Size: 418.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe82d8e42dc0a99c6b4a477e072955033dd6c9a7a2f0b50dcb9b96d21eb18a04`  
		Last Modified: Wed, 16 Nov 2016 20:59:21 GMT  
		Size: 680.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af144ef32a67fbcb29a87ffa7e32ce4735c8bd262e734e9f761de2085b842a4b`  
		Last Modified: Wed, 16 Nov 2016 20:59:19 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ubuntu:12.04`

```console
$ docker pull ubuntu@sha256:cbcc4eb9901bfa2ae38b4621315629941d22e7b2b2a7888db1c66cea88737736
```

-	Platforms:
	-	linux; amd64

### `ubuntu:12.04` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.1 MB (39130758 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aefa163f7a7ed2324292a397eff927a9309552783f68cae04cced508a0f527cd`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 16 Nov 2016 20:57:20 GMT
ADD file:918588bc20de203f9564552c8d27b53f0c5358a4849132fbe8a7cee90009cda5 in / 
# Wed, 16 Nov 2016 20:57:26 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 16 Nov 2016 20:57:27 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 16 Nov 2016 20:57:28 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 16 Nov 2016 20:57:28 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 16 Nov 2016 20:57:29 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:d6ec4d0dfee224fd6853b7d735d5b8d95501ca9c50ac4c04a06f3fcab170a606`  
		Last Modified: Tue, 08 Nov 2016 12:49:34 GMT  
		Size: 39.1 MB (39071562 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b16bbaf4c0bda8f4079d59c64b10ec39ed14f8a3478cd129adc0c61d16d2b28d`  
		Last Modified: Wed, 16 Nov 2016 20:59:20 GMT  
		Size: 57.9 KB (57936 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcfd0f7e92b6366c41feb9d70d897bd9cdd36d5cef28bb78a2859c2116dfce29`  
		Last Modified: Wed, 16 Nov 2016 20:59:19 GMT  
		Size: 418.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe82d8e42dc0a99c6b4a477e072955033dd6c9a7a2f0b50dcb9b96d21eb18a04`  
		Last Modified: Wed, 16 Nov 2016 20:59:21 GMT  
		Size: 680.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af144ef32a67fbcb29a87ffa7e32ce4735c8bd262e734e9f761de2085b842a4b`  
		Last Modified: Wed, 16 Nov 2016 20:59:19 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ubuntu:precise-20161102`

```console
$ docker pull ubuntu@sha256:cbcc4eb9901bfa2ae38b4621315629941d22e7b2b2a7888db1c66cea88737736
```

-	Platforms:
	-	linux; amd64

### `ubuntu:precise-20161102` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.1 MB (39130758 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aefa163f7a7ed2324292a397eff927a9309552783f68cae04cced508a0f527cd`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 16 Nov 2016 20:57:20 GMT
ADD file:918588bc20de203f9564552c8d27b53f0c5358a4849132fbe8a7cee90009cda5 in / 
# Wed, 16 Nov 2016 20:57:26 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 16 Nov 2016 20:57:27 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 16 Nov 2016 20:57:28 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 16 Nov 2016 20:57:28 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 16 Nov 2016 20:57:29 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:d6ec4d0dfee224fd6853b7d735d5b8d95501ca9c50ac4c04a06f3fcab170a606`  
		Last Modified: Tue, 08 Nov 2016 12:49:34 GMT  
		Size: 39.1 MB (39071562 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b16bbaf4c0bda8f4079d59c64b10ec39ed14f8a3478cd129adc0c61d16d2b28d`  
		Last Modified: Wed, 16 Nov 2016 20:59:20 GMT  
		Size: 57.9 KB (57936 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcfd0f7e92b6366c41feb9d70d897bd9cdd36d5cef28bb78a2859c2116dfce29`  
		Last Modified: Wed, 16 Nov 2016 20:59:19 GMT  
		Size: 418.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe82d8e42dc0a99c6b4a477e072955033dd6c9a7a2f0b50dcb9b96d21eb18a04`  
		Last Modified: Wed, 16 Nov 2016 20:59:21 GMT  
		Size: 680.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af144ef32a67fbcb29a87ffa7e32ce4735c8bd262e734e9f761de2085b842a4b`  
		Last Modified: Wed, 16 Nov 2016 20:59:19 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ubuntu:precise`

```console
$ docker pull ubuntu@sha256:cbcc4eb9901bfa2ae38b4621315629941d22e7b2b2a7888db1c66cea88737736
```

-	Platforms:
	-	linux; amd64

### `ubuntu:precise` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.1 MB (39130758 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aefa163f7a7ed2324292a397eff927a9309552783f68cae04cced508a0f527cd`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 16 Nov 2016 20:57:20 GMT
ADD file:918588bc20de203f9564552c8d27b53f0c5358a4849132fbe8a7cee90009cda5 in / 
# Wed, 16 Nov 2016 20:57:26 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 16 Nov 2016 20:57:27 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 16 Nov 2016 20:57:28 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 16 Nov 2016 20:57:28 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 16 Nov 2016 20:57:29 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:d6ec4d0dfee224fd6853b7d735d5b8d95501ca9c50ac4c04a06f3fcab170a606`  
		Last Modified: Tue, 08 Nov 2016 12:49:34 GMT  
		Size: 39.1 MB (39071562 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b16bbaf4c0bda8f4079d59c64b10ec39ed14f8a3478cd129adc0c61d16d2b28d`  
		Last Modified: Wed, 16 Nov 2016 20:59:20 GMT  
		Size: 57.9 KB (57936 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcfd0f7e92b6366c41feb9d70d897bd9cdd36d5cef28bb78a2859c2116dfce29`  
		Last Modified: Wed, 16 Nov 2016 20:59:19 GMT  
		Size: 418.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe82d8e42dc0a99c6b4a477e072955033dd6c9a7a2f0b50dcb9b96d21eb18a04`  
		Last Modified: Wed, 16 Nov 2016 20:59:21 GMT  
		Size: 680.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af144ef32a67fbcb29a87ffa7e32ce4735c8bd262e734e9f761de2085b842a4b`  
		Last Modified: Wed, 16 Nov 2016 20:59:19 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ubuntu:14.04.5`

```console
$ docker pull ubuntu@sha256:062bba17f92e749bd3092e7569aa06c6773ade7df603958026f2f5397431754c
```

-	Platforms:
	-	linux; amd64

### `ubuntu:14.04.5` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **65.8 MB (65775428 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4d44acee901c27c707bce645738b25616ea821bcfcedb7fd25e0a4c7e42297a4`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 16 Nov 2016 20:57:47 GMT
ADD file:79ae73b5e33a497a33c1664e8e7129548273ee9d6ac9336b6ec940808a22a781 in / 
# Wed, 16 Nov 2016 20:57:50 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 16 Nov 2016 20:57:51 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 16 Nov 2016 20:57:52 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 16 Nov 2016 20:57:53 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 16 Nov 2016 20:57:54 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:ba76e97bb96ceeb4c4d76ecd4940c368f968e8df3637d8ff4fd0e0e57c8896c5`  
		Last Modified: Wed, 09 Nov 2016 20:42:07 GMT  
		Size: 65.7 MB (65702665 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d6181e6b42361332273bca37f0d1b983e3b45375b57db2c2a28fad62cc78bed`  
		Last Modified: Wed, 16 Nov 2016 21:00:28 GMT  
		Size: 71.6 KB (71557 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4854897be9ac6e924eab65553a8f81ed556f855c184f379dfb584742f0f3096b`  
		Last Modified: Wed, 16 Nov 2016 21:00:28 GMT  
		Size: 362.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4458f3097eefd9eae329e0c03584452127ad692ce35aa75fb64dc4308ace7e76`  
		Last Modified: Wed, 16 Nov 2016 21:00:28 GMT  
		Size: 681.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9989a8de1a9ecee5a5a075078dff0a2ffa6426039b4d03949f29afcf80f85906`  
		Last Modified: Wed, 16 Nov 2016 21:00:28 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ubuntu:14.04`

```console
$ docker pull ubuntu@sha256:062bba17f92e749bd3092e7569aa06c6773ade7df603958026f2f5397431754c
```

-	Platforms:
	-	linux; amd64

### `ubuntu:14.04` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **65.8 MB (65775428 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4d44acee901c27c707bce645738b25616ea821bcfcedb7fd25e0a4c7e42297a4`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 16 Nov 2016 20:57:47 GMT
ADD file:79ae73b5e33a497a33c1664e8e7129548273ee9d6ac9336b6ec940808a22a781 in / 
# Wed, 16 Nov 2016 20:57:50 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 16 Nov 2016 20:57:51 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 16 Nov 2016 20:57:52 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 16 Nov 2016 20:57:53 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 16 Nov 2016 20:57:54 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:ba76e97bb96ceeb4c4d76ecd4940c368f968e8df3637d8ff4fd0e0e57c8896c5`  
		Last Modified: Wed, 09 Nov 2016 20:42:07 GMT  
		Size: 65.7 MB (65702665 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d6181e6b42361332273bca37f0d1b983e3b45375b57db2c2a28fad62cc78bed`  
		Last Modified: Wed, 16 Nov 2016 21:00:28 GMT  
		Size: 71.6 KB (71557 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4854897be9ac6e924eab65553a8f81ed556f855c184f379dfb584742f0f3096b`  
		Last Modified: Wed, 16 Nov 2016 21:00:28 GMT  
		Size: 362.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4458f3097eefd9eae329e0c03584452127ad692ce35aa75fb64dc4308ace7e76`  
		Last Modified: Wed, 16 Nov 2016 21:00:28 GMT  
		Size: 681.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9989a8de1a9ecee5a5a075078dff0a2ffa6426039b4d03949f29afcf80f85906`  
		Last Modified: Wed, 16 Nov 2016 21:00:28 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ubuntu:trusty-20161101`

```console
$ docker pull ubuntu@sha256:062bba17f92e749bd3092e7569aa06c6773ade7df603958026f2f5397431754c
```

-	Platforms:
	-	linux; amd64

### `ubuntu:trusty-20161101` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **65.8 MB (65775428 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4d44acee901c27c707bce645738b25616ea821bcfcedb7fd25e0a4c7e42297a4`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 16 Nov 2016 20:57:47 GMT
ADD file:79ae73b5e33a497a33c1664e8e7129548273ee9d6ac9336b6ec940808a22a781 in / 
# Wed, 16 Nov 2016 20:57:50 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 16 Nov 2016 20:57:51 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 16 Nov 2016 20:57:52 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 16 Nov 2016 20:57:53 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 16 Nov 2016 20:57:54 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:ba76e97bb96ceeb4c4d76ecd4940c368f968e8df3637d8ff4fd0e0e57c8896c5`  
		Last Modified: Wed, 09 Nov 2016 20:42:07 GMT  
		Size: 65.7 MB (65702665 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d6181e6b42361332273bca37f0d1b983e3b45375b57db2c2a28fad62cc78bed`  
		Last Modified: Wed, 16 Nov 2016 21:00:28 GMT  
		Size: 71.6 KB (71557 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4854897be9ac6e924eab65553a8f81ed556f855c184f379dfb584742f0f3096b`  
		Last Modified: Wed, 16 Nov 2016 21:00:28 GMT  
		Size: 362.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4458f3097eefd9eae329e0c03584452127ad692ce35aa75fb64dc4308ace7e76`  
		Last Modified: Wed, 16 Nov 2016 21:00:28 GMT  
		Size: 681.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9989a8de1a9ecee5a5a075078dff0a2ffa6426039b4d03949f29afcf80f85906`  
		Last Modified: Wed, 16 Nov 2016 21:00:28 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ubuntu:trusty`

```console
$ docker pull ubuntu@sha256:062bba17f92e749bd3092e7569aa06c6773ade7df603958026f2f5397431754c
```

-	Platforms:
	-	linux; amd64

### `ubuntu:trusty` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **65.8 MB (65775428 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4d44acee901c27c707bce645738b25616ea821bcfcedb7fd25e0a4c7e42297a4`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 16 Nov 2016 20:57:47 GMT
ADD file:79ae73b5e33a497a33c1664e8e7129548273ee9d6ac9336b6ec940808a22a781 in / 
# Wed, 16 Nov 2016 20:57:50 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 16 Nov 2016 20:57:51 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 16 Nov 2016 20:57:52 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 16 Nov 2016 20:57:53 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 16 Nov 2016 20:57:54 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:ba76e97bb96ceeb4c4d76ecd4940c368f968e8df3637d8ff4fd0e0e57c8896c5`  
		Last Modified: Wed, 09 Nov 2016 20:42:07 GMT  
		Size: 65.7 MB (65702665 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d6181e6b42361332273bca37f0d1b983e3b45375b57db2c2a28fad62cc78bed`  
		Last Modified: Wed, 16 Nov 2016 21:00:28 GMT  
		Size: 71.6 KB (71557 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4854897be9ac6e924eab65553a8f81ed556f855c184f379dfb584742f0f3096b`  
		Last Modified: Wed, 16 Nov 2016 21:00:28 GMT  
		Size: 362.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4458f3097eefd9eae329e0c03584452127ad692ce35aa75fb64dc4308ace7e76`  
		Last Modified: Wed, 16 Nov 2016 21:00:28 GMT  
		Size: 681.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9989a8de1a9ecee5a5a075078dff0a2ffa6426039b4d03949f29afcf80f85906`  
		Last Modified: Wed, 16 Nov 2016 21:00:28 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ubuntu:16.04`

```console
$ docker pull ubuntu@sha256:35bc48a1ca97c3971611dc4662d08d131869daa692acb281c7e9e052924e38b1
```

-	Platforms:
	-	linux; amd64

### `ubuntu:16.04` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.1 MB (50069116 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e4415b714b624040f19f45994b51daed5cbdb00e0eb9a07221ff0bd6bcf55ed7`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 16 Nov 2016 20:58:18 GMT
ADD file:abc033900893f6c7375050d1e1c2eed298d3d709145e3a7f7819de6e77f0f835 in / 
# Wed, 16 Nov 2016 20:58:23 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 16 Nov 2016 20:58:24 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 16 Nov 2016 20:58:25 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 16 Nov 2016 20:58:26 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 16 Nov 2016 20:58:26 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:aed15891ba52590c33d862bb6a91ea016b7dc43a9080e48509f75f003d82952c`  
		Last Modified: Wed, 16 Nov 2016 21:01:59 GMT  
		Size: 50.1 MB (50066934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:773ae8583d14af4e500ce5a5fa2fedf079651fb1beb289fdf1a7146d147cd608`  
		Last Modified: Wed, 16 Nov 2016 21:01:46 GMT  
		Size: 823.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1d48771f782fed22e5d31dcb03e8970796ec80c350f3544844b5c4e131b959a`  
		Last Modified: Wed, 16 Nov 2016 21:01:46 GMT  
		Size: 516.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd3d6cd6c0cff04046b5cfc3688e599e56efe9abe35ff59c36fcf469eb289f81`  
		Last Modified: Wed, 16 Nov 2016 21:01:44 GMT  
		Size: 680.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ff6f8a9120c54ae6ebde4bea1a4f2bc8170d4a148f5f81eb731be74a071d71e`  
		Last Modified: Wed, 16 Nov 2016 21:01:48 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ubuntu:xenial-20161114`

```console
$ docker pull ubuntu@sha256:35bc48a1ca97c3971611dc4662d08d131869daa692acb281c7e9e052924e38b1
```

-	Platforms:
	-	linux; amd64

### `ubuntu:xenial-20161114` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.1 MB (50069116 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e4415b714b624040f19f45994b51daed5cbdb00e0eb9a07221ff0bd6bcf55ed7`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 16 Nov 2016 20:58:18 GMT
ADD file:abc033900893f6c7375050d1e1c2eed298d3d709145e3a7f7819de6e77f0f835 in / 
# Wed, 16 Nov 2016 20:58:23 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 16 Nov 2016 20:58:24 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 16 Nov 2016 20:58:25 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 16 Nov 2016 20:58:26 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 16 Nov 2016 20:58:26 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:aed15891ba52590c33d862bb6a91ea016b7dc43a9080e48509f75f003d82952c`  
		Last Modified: Wed, 16 Nov 2016 21:01:59 GMT  
		Size: 50.1 MB (50066934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:773ae8583d14af4e500ce5a5fa2fedf079651fb1beb289fdf1a7146d147cd608`  
		Last Modified: Wed, 16 Nov 2016 21:01:46 GMT  
		Size: 823.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1d48771f782fed22e5d31dcb03e8970796ec80c350f3544844b5c4e131b959a`  
		Last Modified: Wed, 16 Nov 2016 21:01:46 GMT  
		Size: 516.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd3d6cd6c0cff04046b5cfc3688e599e56efe9abe35ff59c36fcf469eb289f81`  
		Last Modified: Wed, 16 Nov 2016 21:01:44 GMT  
		Size: 680.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ff6f8a9120c54ae6ebde4bea1a4f2bc8170d4a148f5f81eb731be74a071d71e`  
		Last Modified: Wed, 16 Nov 2016 21:01:48 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ubuntu:xenial`

```console
$ docker pull ubuntu@sha256:35bc48a1ca97c3971611dc4662d08d131869daa692acb281c7e9e052924e38b1
```

-	Platforms:
	-	linux; amd64

### `ubuntu:xenial` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.1 MB (50069116 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e4415b714b624040f19f45994b51daed5cbdb00e0eb9a07221ff0bd6bcf55ed7`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 16 Nov 2016 20:58:18 GMT
ADD file:abc033900893f6c7375050d1e1c2eed298d3d709145e3a7f7819de6e77f0f835 in / 
# Wed, 16 Nov 2016 20:58:23 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 16 Nov 2016 20:58:24 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 16 Nov 2016 20:58:25 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 16 Nov 2016 20:58:26 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 16 Nov 2016 20:58:26 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:aed15891ba52590c33d862bb6a91ea016b7dc43a9080e48509f75f003d82952c`  
		Last Modified: Wed, 16 Nov 2016 21:01:59 GMT  
		Size: 50.1 MB (50066934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:773ae8583d14af4e500ce5a5fa2fedf079651fb1beb289fdf1a7146d147cd608`  
		Last Modified: Wed, 16 Nov 2016 21:01:46 GMT  
		Size: 823.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1d48771f782fed22e5d31dcb03e8970796ec80c350f3544844b5c4e131b959a`  
		Last Modified: Wed, 16 Nov 2016 21:01:46 GMT  
		Size: 516.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd3d6cd6c0cff04046b5cfc3688e599e56efe9abe35ff59c36fcf469eb289f81`  
		Last Modified: Wed, 16 Nov 2016 21:01:44 GMT  
		Size: 680.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ff6f8a9120c54ae6ebde4bea1a4f2bc8170d4a148f5f81eb731be74a071d71e`  
		Last Modified: Wed, 16 Nov 2016 21:01:48 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ubuntu:latest`

```console
$ docker pull ubuntu@sha256:35bc48a1ca97c3971611dc4662d08d131869daa692acb281c7e9e052924e38b1
```

-	Platforms:
	-	linux; amd64

### `ubuntu:latest` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.1 MB (50069116 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e4415b714b624040f19f45994b51daed5cbdb00e0eb9a07221ff0bd6bcf55ed7`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 16 Nov 2016 20:58:18 GMT
ADD file:abc033900893f6c7375050d1e1c2eed298d3d709145e3a7f7819de6e77f0f835 in / 
# Wed, 16 Nov 2016 20:58:23 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 16 Nov 2016 20:58:24 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 16 Nov 2016 20:58:25 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 16 Nov 2016 20:58:26 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 16 Nov 2016 20:58:26 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:aed15891ba52590c33d862bb6a91ea016b7dc43a9080e48509f75f003d82952c`  
		Last Modified: Wed, 16 Nov 2016 21:01:59 GMT  
		Size: 50.1 MB (50066934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:773ae8583d14af4e500ce5a5fa2fedf079651fb1beb289fdf1a7146d147cd608`  
		Last Modified: Wed, 16 Nov 2016 21:01:46 GMT  
		Size: 823.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1d48771f782fed22e5d31dcb03e8970796ec80c350f3544844b5c4e131b959a`  
		Last Modified: Wed, 16 Nov 2016 21:01:46 GMT  
		Size: 516.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd3d6cd6c0cff04046b5cfc3688e599e56efe9abe35ff59c36fcf469eb289f81`  
		Last Modified: Wed, 16 Nov 2016 21:01:44 GMT  
		Size: 680.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ff6f8a9120c54ae6ebde4bea1a4f2bc8170d4a148f5f81eb731be74a071d71e`  
		Last Modified: Wed, 16 Nov 2016 21:01:48 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ubuntu:16.10`

```console
$ docker pull ubuntu@sha256:b3645f3e0144bf921d9926a9eef9bf4ebd24e194b96be75a547073f4e2f35870
```

-	Platforms:
	-	linux; amd64

### `ubuntu:16.10` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.5 MB (40534145 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4956c568850feb5dda00d23d4e31d9632a063537e33c56f6165fd86fd292f26a`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 16 Nov 2016 20:58:49 GMT
ADD file:14806b8752e91a83840748bfe109e72fd6a0bb46d515efaa382e3466fa6eeed7 in / 
# Wed, 16 Nov 2016 20:58:55 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 16 Nov 2016 20:58:56 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 16 Nov 2016 20:58:56 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 16 Nov 2016 20:58:57 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 16 Nov 2016 20:58:58 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:25b6149a69f5a436d60c27d23045078f3e1aaf7c2ac8e6154e6ba798faf6c830`  
		Last Modified: Wed, 16 Nov 2016 21:03:17 GMT  
		Size: 40.5 MB (40531854 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e34e687942c00a4535e01e5ffea6f1b309f3e40f0c424a107a917bfcd3ba9e4b`  
		Last Modified: Wed, 16 Nov 2016 21:02:58 GMT  
		Size: 821.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10e5856a7b1d7c9ab49aa1dfd8478cb1f41d292ee592130ac4c6ddaefc64bc26`  
		Last Modified: Wed, 16 Nov 2016 21:02:58 GMT  
		Size: 445.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e7d15c8fc681d2851c073a9b4c919ad0e3eab4408fe7104debafaf5e63b2d32`  
		Last Modified: Wed, 16 Nov 2016 21:02:58 GMT  
		Size: 862.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0c5cee6940ad94eb78b84031edf9bb8b6a1d360b7639ce81c9bb0eac877a352`  
		Last Modified: Wed, 16 Nov 2016 21:02:57 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ubuntu:yakkety-20161104`

```console
$ docker pull ubuntu@sha256:b3645f3e0144bf921d9926a9eef9bf4ebd24e194b96be75a547073f4e2f35870
```

-	Platforms:
	-	linux; amd64

### `ubuntu:yakkety-20161104` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.5 MB (40534145 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4956c568850feb5dda00d23d4e31d9632a063537e33c56f6165fd86fd292f26a`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 16 Nov 2016 20:58:49 GMT
ADD file:14806b8752e91a83840748bfe109e72fd6a0bb46d515efaa382e3466fa6eeed7 in / 
# Wed, 16 Nov 2016 20:58:55 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 16 Nov 2016 20:58:56 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 16 Nov 2016 20:58:56 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 16 Nov 2016 20:58:57 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 16 Nov 2016 20:58:58 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:25b6149a69f5a436d60c27d23045078f3e1aaf7c2ac8e6154e6ba798faf6c830`  
		Last Modified: Wed, 16 Nov 2016 21:03:17 GMT  
		Size: 40.5 MB (40531854 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e34e687942c00a4535e01e5ffea6f1b309f3e40f0c424a107a917bfcd3ba9e4b`  
		Last Modified: Wed, 16 Nov 2016 21:02:58 GMT  
		Size: 821.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10e5856a7b1d7c9ab49aa1dfd8478cb1f41d292ee592130ac4c6ddaefc64bc26`  
		Last Modified: Wed, 16 Nov 2016 21:02:58 GMT  
		Size: 445.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e7d15c8fc681d2851c073a9b4c919ad0e3eab4408fe7104debafaf5e63b2d32`  
		Last Modified: Wed, 16 Nov 2016 21:02:58 GMT  
		Size: 862.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0c5cee6940ad94eb78b84031edf9bb8b6a1d360b7639ce81c9bb0eac877a352`  
		Last Modified: Wed, 16 Nov 2016 21:02:57 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ubuntu:yakkety`

```console
$ docker pull ubuntu@sha256:b3645f3e0144bf921d9926a9eef9bf4ebd24e194b96be75a547073f4e2f35870
```

-	Platforms:
	-	linux; amd64

### `ubuntu:yakkety` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.5 MB (40534145 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4956c568850feb5dda00d23d4e31d9632a063537e33c56f6165fd86fd292f26a`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 16 Nov 2016 20:58:49 GMT
ADD file:14806b8752e91a83840748bfe109e72fd6a0bb46d515efaa382e3466fa6eeed7 in / 
# Wed, 16 Nov 2016 20:58:55 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 16 Nov 2016 20:58:56 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 16 Nov 2016 20:58:56 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 16 Nov 2016 20:58:57 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 16 Nov 2016 20:58:58 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:25b6149a69f5a436d60c27d23045078f3e1aaf7c2ac8e6154e6ba798faf6c830`  
		Last Modified: Wed, 16 Nov 2016 21:03:17 GMT  
		Size: 40.5 MB (40531854 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e34e687942c00a4535e01e5ffea6f1b309f3e40f0c424a107a917bfcd3ba9e4b`  
		Last Modified: Wed, 16 Nov 2016 21:02:58 GMT  
		Size: 821.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10e5856a7b1d7c9ab49aa1dfd8478cb1f41d292ee592130ac4c6ddaefc64bc26`  
		Last Modified: Wed, 16 Nov 2016 21:02:58 GMT  
		Size: 445.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e7d15c8fc681d2851c073a9b4c919ad0e3eab4408fe7104debafaf5e63b2d32`  
		Last Modified: Wed, 16 Nov 2016 21:02:58 GMT  
		Size: 862.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0c5cee6940ad94eb78b84031edf9bb8b6a1d360b7639ce81c9bb0eac877a352`  
		Last Modified: Wed, 16 Nov 2016 21:02:57 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
