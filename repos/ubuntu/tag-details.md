<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `ubuntu`

-	[`ubuntu:17.10`](#ubuntu1710)
-	[`ubuntu:artful-20170619`](#ubuntuartful-20170619)
-	[`ubuntu:artful`](#ubuntuartful)
-	[`ubuntu:devel`](#ubuntudevel)
-	[`ubuntu:14.04`](#ubuntu1404)
-	[`ubuntu:trusty-20170620`](#ubuntutrusty-20170620)
-	[`ubuntu:trusty`](#ubuntutrusty)
-	[`ubuntu:16.04`](#ubuntu1604)
-	[`ubuntu:xenial-20170619`](#ubuntuxenial-20170619)
-	[`ubuntu:xenial`](#ubuntuxenial)
-	[`ubuntu:latest`](#ubuntulatest)
-	[`ubuntu:16.10`](#ubuntu1610)
-	[`ubuntu:yakkety-20170619`](#ubuntuyakkety-20170619)
-	[`ubuntu:yakkety`](#ubuntuyakkety)
-	[`ubuntu:17.04`](#ubuntu1704)
-	[`ubuntu:zesty-20170619`](#ubuntuzesty-20170619)
-	[`ubuntu:zesty`](#ubuntuzesty)
-	[`ubuntu:rolling`](#ubunturolling)

## `ubuntu:17.10`

```console
$ docker pull ubuntu@sha256:1db2680203d6f0b6803bdbc7e978b4a6120d62c0d70137d07c3815ddd38e7a87
```

-	Platforms:
	-	linux; amd64

### `ubuntu:17.10` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.2 MB (37194666 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7cd123799e2cb7f93bb6cde48288f10c7556bfc248f6a6a14e7af4d14b7dc8a6`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 20 Jun 2017 23:13:58 GMT
ADD file:ebdeda024c30477d2928d2e6bb92dd39a9fb8276e8864d44372816356ad82158 in / 
# Tue, 20 Jun 2017 23:14:20 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 20 Jun 2017 23:14:21 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 20 Jun 2017 23:14:46 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 20 Jun 2017 23:14:47 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 20 Jun 2017 23:14:48 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:8af00e88d4bc788983893e4beb7dd920debaad51ba3a3d479c315c2c1791294e`  
		Last Modified: Tue, 20 Jun 2017 23:24:17 GMT  
		Size: 37.2 MB (37192449 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:310fe2e3fa5a4438d2b37e645440995117d1db0ca7977520d81d541cd69194cb`  
		Last Modified: Tue, 20 Jun 2017 23:24:07 GMT  
		Size: 813.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4eea1299fe194aa023a6ef3636a94a090c7ce31ad5a75d2b98bad1c5ad1640a`  
		Last Modified: Tue, 20 Jun 2017 23:24:07 GMT  
		Size: 391.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffaa8c18e8b4b47964eef54cc19fd1120a3b7b809574056f932b1efacb54e1be`  
		Last Modified: Tue, 20 Jun 2017 23:24:07 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:839f90116431fe664c6f33df088eec97c669ea108c699e59e0d721632ba32281`  
		Last Modified: Tue, 20 Jun 2017 23:24:07 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ubuntu:artful-20170619`

```console
$ docker pull ubuntu@sha256:1db2680203d6f0b6803bdbc7e978b4a6120d62c0d70137d07c3815ddd38e7a87
```

-	Platforms:
	-	linux; amd64

### `ubuntu:artful-20170619` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.2 MB (37194666 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7cd123799e2cb7f93bb6cde48288f10c7556bfc248f6a6a14e7af4d14b7dc8a6`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 20 Jun 2017 23:13:58 GMT
ADD file:ebdeda024c30477d2928d2e6bb92dd39a9fb8276e8864d44372816356ad82158 in / 
# Tue, 20 Jun 2017 23:14:20 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 20 Jun 2017 23:14:21 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 20 Jun 2017 23:14:46 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 20 Jun 2017 23:14:47 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 20 Jun 2017 23:14:48 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:8af00e88d4bc788983893e4beb7dd920debaad51ba3a3d479c315c2c1791294e`  
		Last Modified: Tue, 20 Jun 2017 23:24:17 GMT  
		Size: 37.2 MB (37192449 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:310fe2e3fa5a4438d2b37e645440995117d1db0ca7977520d81d541cd69194cb`  
		Last Modified: Tue, 20 Jun 2017 23:24:07 GMT  
		Size: 813.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4eea1299fe194aa023a6ef3636a94a090c7ce31ad5a75d2b98bad1c5ad1640a`  
		Last Modified: Tue, 20 Jun 2017 23:24:07 GMT  
		Size: 391.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffaa8c18e8b4b47964eef54cc19fd1120a3b7b809574056f932b1efacb54e1be`  
		Last Modified: Tue, 20 Jun 2017 23:24:07 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:839f90116431fe664c6f33df088eec97c669ea108c699e59e0d721632ba32281`  
		Last Modified: Tue, 20 Jun 2017 23:24:07 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ubuntu:artful`

```console
$ docker pull ubuntu@sha256:1db2680203d6f0b6803bdbc7e978b4a6120d62c0d70137d07c3815ddd38e7a87
```

-	Platforms:
	-	linux; amd64

### `ubuntu:artful` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.2 MB (37194666 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7cd123799e2cb7f93bb6cde48288f10c7556bfc248f6a6a14e7af4d14b7dc8a6`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 20 Jun 2017 23:13:58 GMT
ADD file:ebdeda024c30477d2928d2e6bb92dd39a9fb8276e8864d44372816356ad82158 in / 
# Tue, 20 Jun 2017 23:14:20 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 20 Jun 2017 23:14:21 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 20 Jun 2017 23:14:46 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 20 Jun 2017 23:14:47 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 20 Jun 2017 23:14:48 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:8af00e88d4bc788983893e4beb7dd920debaad51ba3a3d479c315c2c1791294e`  
		Last Modified: Tue, 20 Jun 2017 23:24:17 GMT  
		Size: 37.2 MB (37192449 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:310fe2e3fa5a4438d2b37e645440995117d1db0ca7977520d81d541cd69194cb`  
		Last Modified: Tue, 20 Jun 2017 23:24:07 GMT  
		Size: 813.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4eea1299fe194aa023a6ef3636a94a090c7ce31ad5a75d2b98bad1c5ad1640a`  
		Last Modified: Tue, 20 Jun 2017 23:24:07 GMT  
		Size: 391.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffaa8c18e8b4b47964eef54cc19fd1120a3b7b809574056f932b1efacb54e1be`  
		Last Modified: Tue, 20 Jun 2017 23:24:07 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:839f90116431fe664c6f33df088eec97c669ea108c699e59e0d721632ba32281`  
		Last Modified: Tue, 20 Jun 2017 23:24:07 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ubuntu:devel`

```console
$ docker pull ubuntu@sha256:1db2680203d6f0b6803bdbc7e978b4a6120d62c0d70137d07c3815ddd38e7a87
```

-	Platforms:
	-	linux; amd64

### `ubuntu:devel` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.2 MB (37194666 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7cd123799e2cb7f93bb6cde48288f10c7556bfc248f6a6a14e7af4d14b7dc8a6`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 20 Jun 2017 23:13:58 GMT
ADD file:ebdeda024c30477d2928d2e6bb92dd39a9fb8276e8864d44372816356ad82158 in / 
# Tue, 20 Jun 2017 23:14:20 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 20 Jun 2017 23:14:21 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 20 Jun 2017 23:14:46 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 20 Jun 2017 23:14:47 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 20 Jun 2017 23:14:48 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:8af00e88d4bc788983893e4beb7dd920debaad51ba3a3d479c315c2c1791294e`  
		Last Modified: Tue, 20 Jun 2017 23:24:17 GMT  
		Size: 37.2 MB (37192449 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:310fe2e3fa5a4438d2b37e645440995117d1db0ca7977520d81d541cd69194cb`  
		Last Modified: Tue, 20 Jun 2017 23:24:07 GMT  
		Size: 813.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4eea1299fe194aa023a6ef3636a94a090c7ce31ad5a75d2b98bad1c5ad1640a`  
		Last Modified: Tue, 20 Jun 2017 23:24:07 GMT  
		Size: 391.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffaa8c18e8b4b47964eef54cc19fd1120a3b7b809574056f932b1efacb54e1be`  
		Last Modified: Tue, 20 Jun 2017 23:24:07 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:839f90116431fe664c6f33df088eec97c669ea108c699e59e0d721632ba32281`  
		Last Modified: Tue, 20 Jun 2017 23:24:07 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ubuntu:14.04`

```console
$ docker pull ubuntu@sha256:5faf6cb681da2be979a177b60d8c18497f962e3d82268c49db6c74008d0c294d
```

-	Platforms:
	-	linux; amd64

### `ubuntu:14.04` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **67.2 MB (67188344 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4a2820e686c449bc943eab8492df4b4eb7f7e8fabda5258d7bc551fec5790436`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 20 Jun 2017 23:16:09 GMT
ADD file:8c7b62577f9147353650fd7fe54e3fc119f7f39441b3b03fbba3e97e6de4a52a in / 
# Tue, 20 Jun 2017 23:16:28 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 20 Jun 2017 23:16:30 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 20 Jun 2017 23:16:55 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 20 Jun 2017 23:16:57 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 20 Jun 2017 23:16:57 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:cb56c90f0b30751153cb2c317de31d102631db364a68eefe5c4cfd9f62a8c9df`  
		Last Modified: Tue, 20 Jun 2017 23:27:36 GMT  
		Size: 67.1 MB (67114523 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0acc551e5716c235426294464414cbf9850455193f716fada6ef54307f7939af`  
		Last Modified: Tue, 20 Jun 2017 23:27:14 GMT  
		Size: 72.6 KB (72624 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8956dcd35143057f60f158c2e425e03aabd4425302a5e0ff17a927baf83e1178`  
		Last Modified: Tue, 20 Jun 2017 23:27:14 GMT  
		Size: 358.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9082427212149330be15339e16f9a9130ffc7ae005974a78235fb0ee8ea45b11`  
		Last Modified: Tue, 20 Jun 2017 23:27:14 GMT  
		Size: 675.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b44ff14dd3bbdf87d487f60d1da9ffbde069fbfa782aa8d02997b5a013e10479`  
		Last Modified: Tue, 20 Jun 2017 23:27:14 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ubuntu:trusty-20170620`

```console
$ docker pull ubuntu@sha256:5faf6cb681da2be979a177b60d8c18497f962e3d82268c49db6c74008d0c294d
```

-	Platforms:
	-	linux; amd64

### `ubuntu:trusty-20170620` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **67.2 MB (67188344 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4a2820e686c449bc943eab8492df4b4eb7f7e8fabda5258d7bc551fec5790436`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 20 Jun 2017 23:16:09 GMT
ADD file:8c7b62577f9147353650fd7fe54e3fc119f7f39441b3b03fbba3e97e6de4a52a in / 
# Tue, 20 Jun 2017 23:16:28 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 20 Jun 2017 23:16:30 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 20 Jun 2017 23:16:55 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 20 Jun 2017 23:16:57 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 20 Jun 2017 23:16:57 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:cb56c90f0b30751153cb2c317de31d102631db364a68eefe5c4cfd9f62a8c9df`  
		Last Modified: Tue, 20 Jun 2017 23:27:36 GMT  
		Size: 67.1 MB (67114523 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0acc551e5716c235426294464414cbf9850455193f716fada6ef54307f7939af`  
		Last Modified: Tue, 20 Jun 2017 23:27:14 GMT  
		Size: 72.6 KB (72624 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8956dcd35143057f60f158c2e425e03aabd4425302a5e0ff17a927baf83e1178`  
		Last Modified: Tue, 20 Jun 2017 23:27:14 GMT  
		Size: 358.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9082427212149330be15339e16f9a9130ffc7ae005974a78235fb0ee8ea45b11`  
		Last Modified: Tue, 20 Jun 2017 23:27:14 GMT  
		Size: 675.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b44ff14dd3bbdf87d487f60d1da9ffbde069fbfa782aa8d02997b5a013e10479`  
		Last Modified: Tue, 20 Jun 2017 23:27:14 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ubuntu:trusty`

```console
$ docker pull ubuntu@sha256:5faf6cb681da2be979a177b60d8c18497f962e3d82268c49db6c74008d0c294d
```

-	Platforms:
	-	linux; amd64

### `ubuntu:trusty` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **67.2 MB (67188344 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4a2820e686c449bc943eab8492df4b4eb7f7e8fabda5258d7bc551fec5790436`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 20 Jun 2017 23:16:09 GMT
ADD file:8c7b62577f9147353650fd7fe54e3fc119f7f39441b3b03fbba3e97e6de4a52a in / 
# Tue, 20 Jun 2017 23:16:28 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 20 Jun 2017 23:16:30 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 20 Jun 2017 23:16:55 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 20 Jun 2017 23:16:57 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 20 Jun 2017 23:16:57 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:cb56c90f0b30751153cb2c317de31d102631db364a68eefe5c4cfd9f62a8c9df`  
		Last Modified: Tue, 20 Jun 2017 23:27:36 GMT  
		Size: 67.1 MB (67114523 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0acc551e5716c235426294464414cbf9850455193f716fada6ef54307f7939af`  
		Last Modified: Tue, 20 Jun 2017 23:27:14 GMT  
		Size: 72.6 KB (72624 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8956dcd35143057f60f158c2e425e03aabd4425302a5e0ff17a927baf83e1178`  
		Last Modified: Tue, 20 Jun 2017 23:27:14 GMT  
		Size: 358.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9082427212149330be15339e16f9a9130ffc7ae005974a78235fb0ee8ea45b11`  
		Last Modified: Tue, 20 Jun 2017 23:27:14 GMT  
		Size: 675.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b44ff14dd3bbdf87d487f60d1da9ffbde069fbfa782aa8d02997b5a013e10479`  
		Last Modified: Tue, 20 Jun 2017 23:27:14 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ubuntu:16.04`

```console
$ docker pull ubuntu@sha256:a0ee7647e24c8494f1cf6b94f1a3cd127f423268293c25d924fbe18fd82db5a4
```

-	Platforms:
	-	linux; amd64

### `ubuntu:16.04` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.1 MB (47105635 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d355ed3537e94e76389fd78b77241eeba58a11b8faa501594bc82d723eb1c7f2`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 20 Jun 2017 23:18:13 GMT
ADD file:c251a21fbe3a651352aff2e222db19b7b179e1640cf4e9b75f55fd6f85f40366 in / 
# Tue, 20 Jun 2017 23:18:35 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 20 Jun 2017 23:18:37 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 20 Jun 2017 23:18:39 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 20 Jun 2017 23:19:03 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 20 Jun 2017 23:19:04 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:75c416ea735c42a4a0b2c8f31946a1918adc7853373c411abbec424391fb989c`  
		Last Modified: Tue, 20 Jun 2017 23:30:15 GMT  
		Size: 47.1 MB (47103294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6ff40b6d658359b7b428e76db4b9f6f921e47dda0a9a25537c09cc0f031c206`  
		Last Modified: Tue, 20 Jun 2017 23:30:01 GMT  
		Size: 814.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7050fc1f338be18d965236f3bf937073e82d3846e362b4525815be483984ffb`  
		Last Modified: Tue, 20 Jun 2017 23:30:01 GMT  
		Size: 513.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0ffb5cf6ba990b18c314f5758f6e68609f1e32b3d35769b74264150d317b728`  
		Last Modified: Tue, 20 Jun 2017 23:30:01 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be232718519c940b04bc576366a58df53418d8e8bdb605f4e3ca66775735fdca`  
		Last Modified: Tue, 20 Jun 2017 23:30:01 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ubuntu:xenial-20170619`

**does not exist** (yet?)

## `ubuntu:xenial`

```console
$ docker pull ubuntu@sha256:ea1d854d38be82f54d39efe2c67000bed1b03348bcc2f3dc094f260855dff368
```

-	Platforms:
	-	linux; amd64

### `ubuntu:xenial` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.9 MB (46935571 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7b9b13f7b9c086adfb6be4d2d264f90f16b4d1d5b3ab9f955caa728c3675c8a2`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 02 Jun 2017 16:16:32 GMT
ADD file:5aff8c59a70783352d1d5d5b24ddd27b77d9cdc5917992febe9d92901f78a8b3 in / 
# Fri, 02 Jun 2017 16:16:33 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 02 Jun 2017 16:16:35 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 02 Jun 2017 16:16:36 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 02 Jun 2017 16:16:38 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 02 Jun 2017 16:16:38 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:bd97b43c27e332fc4e00edf827bbc26369ad375187ce6eee91c616ad275884b1`  
		Last Modified: Fri, 19 May 2017 22:35:30 GMT  
		Size: 46.9 MB (46933232 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6960dc1aba1816652969986284410927a5d942bf8042e077a3ebc8d1c58bb432`  
		Last Modified: Fri, 02 Jun 2017 16:23:28 GMT  
		Size: 814.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b61829b0db5f4033ff48cbf3495271c8410c76e6396b56f15a79c3f7b5b7845`  
		Last Modified: Fri, 02 Jun 2017 16:23:27 GMT  
		Size: 512.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f88dc826b144c661a8d1d08561e1ff3711f527042955505e9f3e563bdb2281f`  
		Last Modified: Fri, 02 Jun 2017 16:23:28 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73b3859b1e43f3ff32f10055951a568a9ad5ab6dc4ab61818b117b6912088f3d`  
		Last Modified: Fri, 02 Jun 2017 16:23:28 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ubuntu:latest`

```console
$ docker pull ubuntu@sha256:ea1d854d38be82f54d39efe2c67000bed1b03348bcc2f3dc094f260855dff368
```

-	Platforms:
	-	linux; amd64

### `ubuntu:latest` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.9 MB (46935571 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7b9b13f7b9c086adfb6be4d2d264f90f16b4d1d5b3ab9f955caa728c3675c8a2`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 02 Jun 2017 16:16:32 GMT
ADD file:5aff8c59a70783352d1d5d5b24ddd27b77d9cdc5917992febe9d92901f78a8b3 in / 
# Fri, 02 Jun 2017 16:16:33 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 02 Jun 2017 16:16:35 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 02 Jun 2017 16:16:36 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 02 Jun 2017 16:16:38 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 02 Jun 2017 16:16:38 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:bd97b43c27e332fc4e00edf827bbc26369ad375187ce6eee91c616ad275884b1`  
		Last Modified: Fri, 19 May 2017 22:35:30 GMT  
		Size: 46.9 MB (46933232 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6960dc1aba1816652969986284410927a5d942bf8042e077a3ebc8d1c58bb432`  
		Last Modified: Fri, 02 Jun 2017 16:23:28 GMT  
		Size: 814.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b61829b0db5f4033ff48cbf3495271c8410c76e6396b56f15a79c3f7b5b7845`  
		Last Modified: Fri, 02 Jun 2017 16:23:27 GMT  
		Size: 512.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f88dc826b144c661a8d1d08561e1ff3711f527042955505e9f3e563bdb2281f`  
		Last Modified: Fri, 02 Jun 2017 16:23:28 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73b3859b1e43f3ff32f10055951a568a9ad5ab6dc4ab61818b117b6912088f3d`  
		Last Modified: Fri, 02 Jun 2017 16:23:28 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ubuntu:16.10`

```console
$ docker pull ubuntu@sha256:251f7bc8c154fbdf1e342ba7b6fa847dbe66b89e4d35cb313e93a04bc17ea6ea
```

-	Platforms:
	-	linux; amd64

### `ubuntu:16.10` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **42.6 MB (42625903 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:19d5aca0ccd49604d1a5eb5c4d8bd2c9e1d78c67a36beaada1e40db63b1168dd`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 02 Jun 2017 16:17:26 GMT
ADD file:0ef16a3f41673e08936332e3fc6e0f274347d10b1dd46b5327df0ee18f02e8b3 in / 
# Fri, 02 Jun 2017 16:17:27 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 02 Jun 2017 16:17:29 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 02 Jun 2017 16:17:30 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 02 Jun 2017 16:17:32 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 02 Jun 2017 16:17:33 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:62f959364870c00a62465c8fd1e66042521cfd1295a3b9e4b974c68f6571753d`  
		Last Modified: Fri, 02 Jun 2017 16:25:47 GMT  
		Size: 42.6 MB (42623555 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:636f405834a6531db41aa7575e05311f67686fd194eea885e606027f1bd35ed0`  
		Last Modified: Fri, 02 Jun 2017 16:25:37 GMT  
		Size: 817.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d10a21395fd67fa485eafbf5d01e8432a0b2e17ea882a7144744730ea42d6f3`  
		Last Modified: Fri, 02 Jun 2017 16:25:37 GMT  
		Size: 515.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a1614b55dc6cf1538d3ae1cd59beef15056db1e2a92c4e1364835dcbe10fff3`  
		Last Modified: Fri, 02 Jun 2017 16:25:37 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:613c15d05cfae809241c607929dcbe2329e8beac970b9991d10eed5987ddbd88`  
		Last Modified: Fri, 02 Jun 2017 16:25:37 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ubuntu:yakkety-20170619`

**does not exist** (yet?)

## `ubuntu:yakkety`

```console
$ docker pull ubuntu@sha256:251f7bc8c154fbdf1e342ba7b6fa847dbe66b89e4d35cb313e93a04bc17ea6ea
```

-	Platforms:
	-	linux; amd64

### `ubuntu:yakkety` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **42.6 MB (42625903 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:19d5aca0ccd49604d1a5eb5c4d8bd2c9e1d78c67a36beaada1e40db63b1168dd`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 02 Jun 2017 16:17:26 GMT
ADD file:0ef16a3f41673e08936332e3fc6e0f274347d10b1dd46b5327df0ee18f02e8b3 in / 
# Fri, 02 Jun 2017 16:17:27 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 02 Jun 2017 16:17:29 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 02 Jun 2017 16:17:30 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 02 Jun 2017 16:17:32 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 02 Jun 2017 16:17:33 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:62f959364870c00a62465c8fd1e66042521cfd1295a3b9e4b974c68f6571753d`  
		Last Modified: Fri, 02 Jun 2017 16:25:47 GMT  
		Size: 42.6 MB (42623555 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:636f405834a6531db41aa7575e05311f67686fd194eea885e606027f1bd35ed0`  
		Last Modified: Fri, 02 Jun 2017 16:25:37 GMT  
		Size: 817.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d10a21395fd67fa485eafbf5d01e8432a0b2e17ea882a7144744730ea42d6f3`  
		Last Modified: Fri, 02 Jun 2017 16:25:37 GMT  
		Size: 515.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a1614b55dc6cf1538d3ae1cd59beef15056db1e2a92c4e1364835dcbe10fff3`  
		Last Modified: Fri, 02 Jun 2017 16:25:37 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:613c15d05cfae809241c607929dcbe2329e8beac970b9991d10eed5987ddbd88`  
		Last Modified: Fri, 02 Jun 2017 16:25:37 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ubuntu:17.04`

```console
$ docker pull ubuntu@sha256:d5244a87cbe9f4bc3d8979b2bf1505f2aaa57053a5ecf3f8e724dc596c9c3c97
```

-	Platforms:
	-	linux; amd64

### `ubuntu:17.04` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.7 MB (37733053 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:49d40961099da4da723cfdbcbded2a519b7e0b6c226bf2845b4bd628a2de1510`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 02 Jun 2017 16:18:19 GMT
ADD file:8a34103fd0d5ba2249a68982a5b014f98a23ac4c0aa5272edc50fd43ed815058 in / 
# Fri, 02 Jun 2017 16:18:20 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 02 Jun 2017 16:18:22 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 02 Jun 2017 16:18:23 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 02 Jun 2017 16:18:25 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 02 Jun 2017 16:18:26 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:3a60afdc1b87f7442bee5d2f735e0dea80d10f509cbc50b5b7bb6e5db03df044`  
		Last Modified: Fri, 02 Jun 2017 16:27:50 GMT  
		Size: 37.7 MB (37730783 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0d0385528d58296244ebf6fdf45c8fc710618b95c6fcaed5aa37f5a59a58a67`  
		Last Modified: Fri, 02 Jun 2017 16:27:33 GMT  
		Size: 817.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10d008b46e10bab6283606ce8dc497db29d84123a5abe373273c5ea859969e74`  
		Last Modified: Fri, 02 Jun 2017 16:27:33 GMT  
		Size: 440.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:866eb2fcfdf00d1d079e44ac1da049d40f43448941dc015308ac62148d2ee6ba`  
		Last Modified: Fri, 02 Jun 2017 16:27:33 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e45f7c925a98e816a67df94e506248441a913c7b5664908a17f5ab6d73b8a186`  
		Last Modified: Fri, 02 Jun 2017 16:27:34 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ubuntu:zesty-20170619`

**does not exist** (yet?)

## `ubuntu:zesty`

```console
$ docker pull ubuntu@sha256:d5244a87cbe9f4bc3d8979b2bf1505f2aaa57053a5ecf3f8e724dc596c9c3c97
```

-	Platforms:
	-	linux; amd64

### `ubuntu:zesty` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.7 MB (37733053 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:49d40961099da4da723cfdbcbded2a519b7e0b6c226bf2845b4bd628a2de1510`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 02 Jun 2017 16:18:19 GMT
ADD file:8a34103fd0d5ba2249a68982a5b014f98a23ac4c0aa5272edc50fd43ed815058 in / 
# Fri, 02 Jun 2017 16:18:20 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 02 Jun 2017 16:18:22 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 02 Jun 2017 16:18:23 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 02 Jun 2017 16:18:25 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 02 Jun 2017 16:18:26 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:3a60afdc1b87f7442bee5d2f735e0dea80d10f509cbc50b5b7bb6e5db03df044`  
		Last Modified: Fri, 02 Jun 2017 16:27:50 GMT  
		Size: 37.7 MB (37730783 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0d0385528d58296244ebf6fdf45c8fc710618b95c6fcaed5aa37f5a59a58a67`  
		Last Modified: Fri, 02 Jun 2017 16:27:33 GMT  
		Size: 817.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10d008b46e10bab6283606ce8dc497db29d84123a5abe373273c5ea859969e74`  
		Last Modified: Fri, 02 Jun 2017 16:27:33 GMT  
		Size: 440.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:866eb2fcfdf00d1d079e44ac1da049d40f43448941dc015308ac62148d2ee6ba`  
		Last Modified: Fri, 02 Jun 2017 16:27:33 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e45f7c925a98e816a67df94e506248441a913c7b5664908a17f5ab6d73b8a186`  
		Last Modified: Fri, 02 Jun 2017 16:27:34 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ubuntu:rolling`

```console
$ docker pull ubuntu@sha256:d5244a87cbe9f4bc3d8979b2bf1505f2aaa57053a5ecf3f8e724dc596c9c3c97
```

-	Platforms:
	-	linux; amd64

### `ubuntu:rolling` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.7 MB (37733053 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:49d40961099da4da723cfdbcbded2a519b7e0b6c226bf2845b4bd628a2de1510`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 02 Jun 2017 16:18:19 GMT
ADD file:8a34103fd0d5ba2249a68982a5b014f98a23ac4c0aa5272edc50fd43ed815058 in / 
# Fri, 02 Jun 2017 16:18:20 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 02 Jun 2017 16:18:22 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 02 Jun 2017 16:18:23 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 02 Jun 2017 16:18:25 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 02 Jun 2017 16:18:26 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:3a60afdc1b87f7442bee5d2f735e0dea80d10f509cbc50b5b7bb6e5db03df044`  
		Last Modified: Fri, 02 Jun 2017 16:27:50 GMT  
		Size: 37.7 MB (37730783 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0d0385528d58296244ebf6fdf45c8fc710618b95c6fcaed5aa37f5a59a58a67`  
		Last Modified: Fri, 02 Jun 2017 16:27:33 GMT  
		Size: 817.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10d008b46e10bab6283606ce8dc497db29d84123a5abe373273c5ea859969e74`  
		Last Modified: Fri, 02 Jun 2017 16:27:33 GMT  
		Size: 440.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:866eb2fcfdf00d1d079e44ac1da049d40f43448941dc015308ac62148d2ee6ba`  
		Last Modified: Fri, 02 Jun 2017 16:27:33 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e45f7c925a98e816a67df94e506248441a913c7b5664908a17f5ab6d73b8a186`  
		Last Modified: Fri, 02 Jun 2017 16:27:34 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
