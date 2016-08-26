<!-- THIS FILE IS GENERATED VIA './update-tag-details.sh' -->

# Tags of `neurodebian`

-	[`neurodebian:precise`](#neurodebianprecise)
-	[`neurodebian:nd12.04`](#neurodebiannd1204)
-	[`neurodebian:trusty`](#neurodebiantrusty)
-	[`neurodebian:nd14.04`](#neurodebiannd1404)
-	[`neurodebian:xenial`](#neurodebianxenial)
-	[`neurodebian:nd16.04`](#neurodebiannd1604)
-	[`neurodebian:yakkety`](#neurodebianyakkety)
-	[`neurodebian:nd16.10`](#neurodebiannd1610)
-	[`neurodebian:wheezy`](#neurodebianwheezy)
-	[`neurodebian:nd70`](#neurodebiannd70)
-	[`neurodebian:jessie`](#neurodebianjessie)
-	[`neurodebian:nd80`](#neurodebiannd80)
-	[`neurodebian:stretch`](#neurodebianstretch)
-	[`neurodebian:nd90`](#neurodebiannd90)
-	[`neurodebian:sid`](#neurodebiansid)
-	[`neurodebian:nd`](#neurodebiannd)

## `neurodebian:precise`

```console
$ docker pull neurodebian@sha256:9d2b3182dee2f48187dc922abffddab6d1ed92f1fa3445a8712321efd61e84d6
```

-	Platforms:
	-	linux; amd64

### `neurodebian:precise` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.2 MB (39156627 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a38adf03cc1ed6eadaf8e9661b90bb677b6ade7b99ab3fa21b9dbe8363fde2db`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 26 Aug 2016 18:49:04 GMT
ADD file:d6b1a91e82e43a901a56cf7351a169fde2dcd04e3403a8155af2c15dddfe61ab in /
# Fri, 26 Aug 2016 18:49:12 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 26 Aug 2016 18:49:14 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 26 Aug 2016 18:49:18 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 26 Aug 2016 18:49:20 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 26 Aug 2016 18:49:21 GMT
CMD ["/bin/bash"]
# Fri, 26 Aug 2016 20:49:05 GMT
RUN echo 'deb http://neuro.debian.net/debian precise main' > /etc/apt/sources.list.d/neurodebian.sources.list
# Fri, 26 Aug 2016 20:49:07 GMT
RUN echo 'deb http://neuro.debian.net/debian data main' >> /etc/apt/sources.list.d/neurodebian.sources.list
# Fri, 26 Aug 2016 20:49:10 GMT
RUN echo '#deb-src http://neuro.debian.net/debian-devel precise main' >> /etc/apt/sources.list.d/neurodebian.sources.list
# Fri, 26 Aug 2016 20:49:12 GMT
RUN apt-key adv --recv-keys --keyserver pgp.mit.edu 0xA5D32F012649A5A9
```

-	Layers:
	-	`sha256:4bae8cb7faf89c9d322388130ba308bedf824dbaec91f7002663787acd905aa0`  
		Last Modified: Fri, 26 Aug 2016 18:52:23 GMT  
		Size: 39.1 MB (39081874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fdbc48ff694c1f28e349a0df1e8a0680b4ca2349f8a7ffb92054021ba855049`  
		Last Modified: Fri, 26 Aug 2016 18:52:07 GMT  
		Size: 57.9 KB (57934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76b89518fcb84072fbf348d79632b0218ebc633499af9d28ad8ef22ef64d8664`  
		Last Modified: Fri, 26 Aug 2016 18:52:07 GMT  
		Size: 423.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e24f10461f800446cd4fd61cecb58472338cb47443ab6e3b71e9aea48dc1c667`  
		Last Modified: Fri, 26 Aug 2016 18:52:08 GMT  
		Size: 680.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f76cfd9cb68c9ad04dfa12be2599e74677feab8e7f99061e153516dddd14d58`  
		Last Modified: Fri, 26 Aug 2016 18:52:07 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c9c3705b3ee12d45fed033047edc3f3a4c1a5072726e03e027561218d9d8629`  
		Last Modified: Fri, 26 Aug 2016 20:49:25 GMT  
		Size: 213.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efc0902a5daba82eb96ddcf62c3d404c68a9b5c282237cccf4436b1e0c3029ad`  
		Last Modified: Fri, 26 Aug 2016 20:49:25 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48c2b5b8ca93b0593bf3fe5c4568cc0a9959d33520551e3eba0bbc511b2c9bde`  
		Last Modified: Fri, 26 Aug 2016 20:49:26 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f20aaa433b04a962aa4cbdd929bbd3f1ebb9e8b5523d9d9f311a797fc4176539`  
		Last Modified: Fri, 26 Aug 2016 20:49:25 GMT  
		Size: 14.9 KB (14883 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neurodebian:nd12.04`

```console
$ docker pull neurodebian@sha256:9d2b3182dee2f48187dc922abffddab6d1ed92f1fa3445a8712321efd61e84d6
```

-	Platforms:
	-	linux; amd64

### `neurodebian:nd12.04` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.2 MB (39156627 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a38adf03cc1ed6eadaf8e9661b90bb677b6ade7b99ab3fa21b9dbe8363fde2db`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 26 Aug 2016 18:49:04 GMT
ADD file:d6b1a91e82e43a901a56cf7351a169fde2dcd04e3403a8155af2c15dddfe61ab in /
# Fri, 26 Aug 2016 18:49:12 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 26 Aug 2016 18:49:14 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 26 Aug 2016 18:49:18 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 26 Aug 2016 18:49:20 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 26 Aug 2016 18:49:21 GMT
CMD ["/bin/bash"]
# Fri, 26 Aug 2016 20:49:05 GMT
RUN echo 'deb http://neuro.debian.net/debian precise main' > /etc/apt/sources.list.d/neurodebian.sources.list
# Fri, 26 Aug 2016 20:49:07 GMT
RUN echo 'deb http://neuro.debian.net/debian data main' >> /etc/apt/sources.list.d/neurodebian.sources.list
# Fri, 26 Aug 2016 20:49:10 GMT
RUN echo '#deb-src http://neuro.debian.net/debian-devel precise main' >> /etc/apt/sources.list.d/neurodebian.sources.list
# Fri, 26 Aug 2016 20:49:12 GMT
RUN apt-key adv --recv-keys --keyserver pgp.mit.edu 0xA5D32F012649A5A9
```

-	Layers:
	-	`sha256:4bae8cb7faf89c9d322388130ba308bedf824dbaec91f7002663787acd905aa0`  
		Last Modified: Fri, 26 Aug 2016 18:52:23 GMT  
		Size: 39.1 MB (39081874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fdbc48ff694c1f28e349a0df1e8a0680b4ca2349f8a7ffb92054021ba855049`  
		Last Modified: Fri, 26 Aug 2016 18:52:07 GMT  
		Size: 57.9 KB (57934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76b89518fcb84072fbf348d79632b0218ebc633499af9d28ad8ef22ef64d8664`  
		Last Modified: Fri, 26 Aug 2016 18:52:07 GMT  
		Size: 423.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e24f10461f800446cd4fd61cecb58472338cb47443ab6e3b71e9aea48dc1c667`  
		Last Modified: Fri, 26 Aug 2016 18:52:08 GMT  
		Size: 680.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f76cfd9cb68c9ad04dfa12be2599e74677feab8e7f99061e153516dddd14d58`  
		Last Modified: Fri, 26 Aug 2016 18:52:07 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c9c3705b3ee12d45fed033047edc3f3a4c1a5072726e03e027561218d9d8629`  
		Last Modified: Fri, 26 Aug 2016 20:49:25 GMT  
		Size: 213.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efc0902a5daba82eb96ddcf62c3d404c68a9b5c282237cccf4436b1e0c3029ad`  
		Last Modified: Fri, 26 Aug 2016 20:49:25 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48c2b5b8ca93b0593bf3fe5c4568cc0a9959d33520551e3eba0bbc511b2c9bde`  
		Last Modified: Fri, 26 Aug 2016 20:49:26 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f20aaa433b04a962aa4cbdd929bbd3f1ebb9e8b5523d9d9f311a797fc4176539`  
		Last Modified: Fri, 26 Aug 2016 20:49:25 GMT  
		Size: 14.9 KB (14883 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neurodebian:trusty`

```console
$ docker pull neurodebian@sha256:a79c452b0c2ba7e08c5c39eb342e9eff6e9e406ab10ae4b7ab8282cb58c568a6
```

-	Platforms:
	-	linux; amd64

### `neurodebian:trusty` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **65.8 MB (65789138 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:884556ce513867c3fa6727c584e85b8caaffd3a010867b5bcdea54e68194c27a`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 26 Aug 2016 18:49:43 GMT
ADD file:ada91758a31d8de3c78ea0065fbc866430a71eb58bf5c4cb403d47052b1cade0 in /
# Fri, 26 Aug 2016 18:49:45 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 26 Aug 2016 18:49:47 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 26 Aug 2016 18:49:49 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 26 Aug 2016 18:49:51 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 26 Aug 2016 18:49:52 GMT
CMD ["/bin/bash"]
# Fri, 26 Aug 2016 20:49:51 GMT
RUN echo 'deb http://neuro.debian.net/debian trusty main' > /etc/apt/sources.list.d/neurodebian.sources.list
# Fri, 26 Aug 2016 20:49:54 GMT
RUN echo 'deb http://neuro.debian.net/debian data main' >> /etc/apt/sources.list.d/neurodebian.sources.list
# Fri, 26 Aug 2016 20:49:57 GMT
RUN echo '#deb-src http://neuro.debian.net/debian-devel trusty main' >> /etc/apt/sources.list.d/neurodebian.sources.list
# Fri, 26 Aug 2016 20:50:20 GMT
RUN apt-key adv --recv-keys --keyserver pgp.mit.edu 0xA5D32F012649A5A9
```

-	Layers:
	-	`sha256:862a3e9af0aeffe79345b790bad31baaa61e9402b6e616bff17babed6b053b54`  
		Last Modified: Fri, 26 Aug 2016 18:53:56 GMT  
		Size: 65.7 MB (65700923 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6498e51874bfd453352b79b1a3f669109795134b7adcd1a02d0ce69001f4e05b`  
		Last Modified: Fri, 26 Aug 2016 18:53:28 GMT  
		Size: 71.6 KB (71552 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:159ebdd1959b09a7284ceb22bbb7e383049466ece0503f66197e7843aad1da47`  
		Last Modified: Fri, 26 Aug 2016 18:53:27 GMT  
		Size: 364.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0fdbedd3771a99a8df8fe8edd26c62366a0d59496b2685330d9754680f339693`  
		Last Modified: Fri, 26 Aug 2016 18:53:27 GMT  
		Size: 680.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a1f7116d1e3a87e389da7767ee68f5731c05dbb1a4d4dbd45166b3a8412f1c6`  
		Last Modified: Fri, 26 Aug 2016 18:53:27 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e06aad365a84bb61c130edd101ef90e658dc07c001e8a19bb0fbba11965c5c7`  
		Last Modified: Fri, 26 Aug 2016 20:50:36 GMT  
		Size: 215.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55fabfd3aa7b404bbe2a825441985b57c86237e38c2f52f2403b8444ec292657`  
		Last Modified: Fri, 26 Aug 2016 20:50:36 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02c5af087d1ad4c0a81ce73dcf37093c7f25b21101b5d94bace50d94a477c61a`  
		Last Modified: Fri, 26 Aug 2016 20:50:36 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93f610eb16571c8c001b0d102f37b97247e646ef7263ef48fa13c1d50963fa2d`  
		Last Modified: Fri, 26 Aug 2016 20:50:36 GMT  
		Size: 14.8 KB (14781 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neurodebian:nd14.04`

```console
$ docker pull neurodebian@sha256:a79c452b0c2ba7e08c5c39eb342e9eff6e9e406ab10ae4b7ab8282cb58c568a6
```

-	Platforms:
	-	linux; amd64

### `neurodebian:nd14.04` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **65.8 MB (65789138 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:884556ce513867c3fa6727c584e85b8caaffd3a010867b5bcdea54e68194c27a`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 26 Aug 2016 18:49:43 GMT
ADD file:ada91758a31d8de3c78ea0065fbc866430a71eb58bf5c4cb403d47052b1cade0 in /
# Fri, 26 Aug 2016 18:49:45 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 26 Aug 2016 18:49:47 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 26 Aug 2016 18:49:49 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 26 Aug 2016 18:49:51 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 26 Aug 2016 18:49:52 GMT
CMD ["/bin/bash"]
# Fri, 26 Aug 2016 20:49:51 GMT
RUN echo 'deb http://neuro.debian.net/debian trusty main' > /etc/apt/sources.list.d/neurodebian.sources.list
# Fri, 26 Aug 2016 20:49:54 GMT
RUN echo 'deb http://neuro.debian.net/debian data main' >> /etc/apt/sources.list.d/neurodebian.sources.list
# Fri, 26 Aug 2016 20:49:57 GMT
RUN echo '#deb-src http://neuro.debian.net/debian-devel trusty main' >> /etc/apt/sources.list.d/neurodebian.sources.list
# Fri, 26 Aug 2016 20:50:20 GMT
RUN apt-key adv --recv-keys --keyserver pgp.mit.edu 0xA5D32F012649A5A9
```

-	Layers:
	-	`sha256:862a3e9af0aeffe79345b790bad31baaa61e9402b6e616bff17babed6b053b54`  
		Last Modified: Fri, 26 Aug 2016 18:53:56 GMT  
		Size: 65.7 MB (65700923 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6498e51874bfd453352b79b1a3f669109795134b7adcd1a02d0ce69001f4e05b`  
		Last Modified: Fri, 26 Aug 2016 18:53:28 GMT  
		Size: 71.6 KB (71552 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:159ebdd1959b09a7284ceb22bbb7e383049466ece0503f66197e7843aad1da47`  
		Last Modified: Fri, 26 Aug 2016 18:53:27 GMT  
		Size: 364.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0fdbedd3771a99a8df8fe8edd26c62366a0d59496b2685330d9754680f339693`  
		Last Modified: Fri, 26 Aug 2016 18:53:27 GMT  
		Size: 680.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a1f7116d1e3a87e389da7767ee68f5731c05dbb1a4d4dbd45166b3a8412f1c6`  
		Last Modified: Fri, 26 Aug 2016 18:53:27 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e06aad365a84bb61c130edd101ef90e658dc07c001e8a19bb0fbba11965c5c7`  
		Last Modified: Fri, 26 Aug 2016 20:50:36 GMT  
		Size: 215.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55fabfd3aa7b404bbe2a825441985b57c86237e38c2f52f2403b8444ec292657`  
		Last Modified: Fri, 26 Aug 2016 20:50:36 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02c5af087d1ad4c0a81ce73dcf37093c7f25b21101b5d94bace50d94a477c61a`  
		Last Modified: Fri, 26 Aug 2016 20:50:36 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93f610eb16571c8c001b0d102f37b97247e646ef7263ef48fa13c1d50963fa2d`  
		Last Modified: Fri, 26 Aug 2016 20:50:36 GMT  
		Size: 14.8 KB (14781 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neurodebian:xenial`

**does not exist** (yet?)

## `neurodebian:nd16.04`

**does not exist** (yet?)

## `neurodebian:yakkety`

**does not exist** (yet?)

## `neurodebian:nd16.10`

**does not exist** (yet?)

## `neurodebian:wheezy`

```console
$ docker pull neurodebian@sha256:0c982f819c3b34e864fefd6b16fe6975956f0cc814ecdeaa741ab3a8c612f031
```

-	Platforms:
	-	linux; amd64

### `neurodebian:wheezy` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.2 MB (37242358 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:203840048607f61502d7a60493200f7e48077bbdd5f617df89e25bc7877aa4e8`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 09 Jun 2016 21:30:19 GMT
ADD file:add5fc8cb18678647f395d0a743c4ca93466b70b9e42847d850aa206b7ad0d8d in /
# Thu, 09 Jun 2016 21:30:20 GMT
CMD ["/bin/bash"]
# Fri, 10 Jun 2016 15:00:21 GMT
RUN echo 'deb http://neuro.debian.net/debian wheezy main' > /etc/apt/sources.list.d/neurodebian.sources.list
# Fri, 10 Jun 2016 15:00:22 GMT
RUN echo 'deb http://neuro.debian.net/debian data main' >> /etc/apt/sources.list.d/neurodebian.sources.list
# Fri, 10 Jun 2016 15:00:23 GMT
RUN echo '#deb-src http://neuro.debian.net/debian-devel wheezy main' >> /etc/apt/sources.list.d/neurodebian.sources.list
# Fri, 10 Jun 2016 15:00:35 GMT
RUN apt-key adv --recv-keys --keyserver pgp.mit.edu 0xA5D32F012649A5A9
```

-	Layers:
	-	`sha256:8ceedfe606fc6a2449001a47b33357a1aefaa3538bff8ce98af64fc6cd810225`  
		Last Modified: Thu, 09 Jun 2016 21:34:10 GMT  
		Size: 37.2 MB (37209549 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58e446ae9292a5333d1fe36c32322ae0f68428d892edc7d1912f44891e6c7ee1`  
		Last Modified: Thu, 21 Jul 2016 20:30:31 GMT  
		Size: 215.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4f356d2e88552d7754ef67bfa5bea281ffc3eac9dc88eaa7b7d531e28c9342b`  
		Last Modified: Thu, 21 Jul 2016 20:30:31 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82863c327d80e2a47651ecfb6da53196e00245f9b487cb91a423baf270600548`  
		Last Modified: Thu, 21 Jul 2016 20:30:31 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:989c12f183a2f99ecea8fbbde35423313b785a422041722354f49480eeadc3cc`  
		Last Modified: Thu, 21 Jul 2016 20:30:31 GMT  
		Size: 32.1 KB (32132 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neurodebian:nd70`

```console
$ docker pull neurodebian@sha256:0c982f819c3b34e864fefd6b16fe6975956f0cc814ecdeaa741ab3a8c612f031
```

-	Platforms:
	-	linux; amd64

### `neurodebian:nd70` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.2 MB (37242358 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:203840048607f61502d7a60493200f7e48077bbdd5f617df89e25bc7877aa4e8`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 09 Jun 2016 21:30:19 GMT
ADD file:add5fc8cb18678647f395d0a743c4ca93466b70b9e42847d850aa206b7ad0d8d in /
# Thu, 09 Jun 2016 21:30:20 GMT
CMD ["/bin/bash"]
# Fri, 10 Jun 2016 15:00:21 GMT
RUN echo 'deb http://neuro.debian.net/debian wheezy main' > /etc/apt/sources.list.d/neurodebian.sources.list
# Fri, 10 Jun 2016 15:00:22 GMT
RUN echo 'deb http://neuro.debian.net/debian data main' >> /etc/apt/sources.list.d/neurodebian.sources.list
# Fri, 10 Jun 2016 15:00:23 GMT
RUN echo '#deb-src http://neuro.debian.net/debian-devel wheezy main' >> /etc/apt/sources.list.d/neurodebian.sources.list
# Fri, 10 Jun 2016 15:00:35 GMT
RUN apt-key adv --recv-keys --keyserver pgp.mit.edu 0xA5D32F012649A5A9
```

-	Layers:
	-	`sha256:8ceedfe606fc6a2449001a47b33357a1aefaa3538bff8ce98af64fc6cd810225`  
		Last Modified: Thu, 09 Jun 2016 21:34:10 GMT  
		Size: 37.2 MB (37209549 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58e446ae9292a5333d1fe36c32322ae0f68428d892edc7d1912f44891e6c7ee1`  
		Last Modified: Thu, 21 Jul 2016 20:30:31 GMT  
		Size: 215.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4f356d2e88552d7754ef67bfa5bea281ffc3eac9dc88eaa7b7d531e28c9342b`  
		Last Modified: Thu, 21 Jul 2016 20:30:31 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82863c327d80e2a47651ecfb6da53196e00245f9b487cb91a423baf270600548`  
		Last Modified: Thu, 21 Jul 2016 20:30:31 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:989c12f183a2f99ecea8fbbde35423313b785a422041722354f49480eeadc3cc`  
		Last Modified: Thu, 21 Jul 2016 20:30:31 GMT  
		Size: 32.1 KB (32132 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neurodebian:jessie`

```console
$ docker pull neurodebian@sha256:044b256c7bbad6cb39394898926cd7f3cda19ee92b68c674289d7b73b097be53
```

-	Platforms:
	-	linux; amd64

### `neurodebian:jessie` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.4 MB (51369452 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aad57bbff3a005131d2d126ae031ee482270e1ec3d538598f0426d8613b9f998`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 28 Jul 2016 17:47:54 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in /
# Thu, 28 Jul 2016 17:47:55 GMT
CMD ["/bin/bash"]
# Mon, 01 Aug 2016 17:31:52 GMT
RUN echo 'deb http://neuro.debian.net/debian jessie main' > /etc/apt/sources.list.d/neurodebian.sources.list
# Mon, 01 Aug 2016 17:31:54 GMT
RUN echo 'deb http://neuro.debian.net/debian data main' >> /etc/apt/sources.list.d/neurodebian.sources.list
# Mon, 01 Aug 2016 17:31:55 GMT
RUN echo '#deb-src http://neuro.debian.net/debian-devel jessie main' >> /etc/apt/sources.list.d/neurodebian.sources.list
# Mon, 01 Aug 2016 17:32:14 GMT
RUN apt-key adv --recv-keys --keyserver pgp.mit.edu 0xA5D32F012649A5A9
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb95ab5480340193a679f58c726e208ce0a14a881cc48f3ec6b68490ca768abe`  
		Last Modified: Mon, 01 Aug 2016 17:32:24 GMT  
		Size: 213.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfc27603e46bd3d4ee9b3e08f58b6a6b577c6cb5a6cb31ddc38937117f8d847f`  
		Last Modified: Mon, 01 Aug 2016 17:32:24 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7e997984e865e5dc9a44099240240b68e5315cfe2fa33fe0536c4a69bb384a9`  
		Last Modified: Mon, 01 Aug 2016 17:32:24 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d16185ca875cfc73da65eb0621e3cb38544a728079f7b6aa3f9c0cc2eaf05ef2`  
		Last Modified: Mon, 01 Aug 2016 17:32:25 GMT  
		Size: 3.2 KB (3168 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neurodebian:nd80`

```console
$ docker pull neurodebian@sha256:044b256c7bbad6cb39394898926cd7f3cda19ee92b68c674289d7b73b097be53
```

-	Platforms:
	-	linux; amd64

### `neurodebian:nd80` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.4 MB (51369452 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aad57bbff3a005131d2d126ae031ee482270e1ec3d538598f0426d8613b9f998`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 28 Jul 2016 17:47:54 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in /
# Thu, 28 Jul 2016 17:47:55 GMT
CMD ["/bin/bash"]
# Mon, 01 Aug 2016 17:31:52 GMT
RUN echo 'deb http://neuro.debian.net/debian jessie main' > /etc/apt/sources.list.d/neurodebian.sources.list
# Mon, 01 Aug 2016 17:31:54 GMT
RUN echo 'deb http://neuro.debian.net/debian data main' >> /etc/apt/sources.list.d/neurodebian.sources.list
# Mon, 01 Aug 2016 17:31:55 GMT
RUN echo '#deb-src http://neuro.debian.net/debian-devel jessie main' >> /etc/apt/sources.list.d/neurodebian.sources.list
# Mon, 01 Aug 2016 17:32:14 GMT
RUN apt-key adv --recv-keys --keyserver pgp.mit.edu 0xA5D32F012649A5A9
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb95ab5480340193a679f58c726e208ce0a14a881cc48f3ec6b68490ca768abe`  
		Last Modified: Mon, 01 Aug 2016 17:32:24 GMT  
		Size: 213.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfc27603e46bd3d4ee9b3e08f58b6a6b577c6cb5a6cb31ddc38937117f8d847f`  
		Last Modified: Mon, 01 Aug 2016 17:32:24 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7e997984e865e5dc9a44099240240b68e5315cfe2fa33fe0536c4a69bb384a9`  
		Last Modified: Mon, 01 Aug 2016 17:32:24 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d16185ca875cfc73da65eb0621e3cb38544a728079f7b6aa3f9c0cc2eaf05ef2`  
		Last Modified: Mon, 01 Aug 2016 17:32:25 GMT  
		Size: 3.2 KB (3168 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neurodebian:stretch`

```console
$ docker pull neurodebian@sha256:87a8bb64118fc991baab3d469adc72ab384e5589c706f16a1b6ec2f7c0522c95
```

-	Platforms:
	-	linux; amd64

### `neurodebian:stretch` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.1 MB (44110817 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cf505aaa8d4cb95685c05861b02cd18edd1035683322173ec51ade031534a0ea`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 09 Jun 2016 21:29:38 GMT
ADD file:e91fa3dd38b229ee62e6a72db099274d69a22affdae34e06276400a0824255bf in /
# Thu, 09 Jun 2016 21:29:39 GMT
CMD ["/bin/bash"]
# Fri, 10 Jun 2016 15:01:02 GMT
RUN echo 'deb http://neuro.debian.net/debian stretch main' > /etc/apt/sources.list.d/neurodebian.sources.list
# Fri, 10 Jun 2016 15:01:03 GMT
RUN echo 'deb http://neuro.debian.net/debian data main' >> /etc/apt/sources.list.d/neurodebian.sources.list
# Fri, 10 Jun 2016 15:01:04 GMT
RUN echo '#deb-src http://neuro.debian.net/debian-devel stretch main' >> /etc/apt/sources.list.d/neurodebian.sources.list
# Fri, 10 Jun 2016 15:01:06 GMT
RUN apt-key adv --recv-keys --keyserver pgp.mit.edu 0xA5D32F012649A5A9
```

-	Layers:
	-	`sha256:c12270f957b9db8fe01efad59a55d34a28364597c051658e92590dfc22f18db8`  
		Last Modified: Thu, 09 Jun 2016 21:33:01 GMT  
		Size: 44.1 MB (44107040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5bc7644d4b2324a3571798dbc818ea9c6f447962cd5c95f48fea9059b195888e`  
		Last Modified: Thu, 21 Jul 2016 20:31:23 GMT  
		Size: 211.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4f9481c998e09442d19fba1e7544971cf6a37edb0f9253bcba224d686db34fd`  
		Last Modified: Thu, 21 Jul 2016 20:31:23 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d91acccc3b79849cf7ac75d750f95764c46041795851f411140d3e2d1108b0f3`  
		Last Modified: Thu, 21 Jul 2016 20:31:23 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f39cb50ab98eed22e00aec4e8e89bc425811f2404c64a5db629b24806fe0ffd3`  
		Last Modified: Thu, 21 Jul 2016 20:31:23 GMT  
		Size: 3.1 KB (3107 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neurodebian:nd90`

```console
$ docker pull neurodebian@sha256:87a8bb64118fc991baab3d469adc72ab384e5589c706f16a1b6ec2f7c0522c95
```

-	Platforms:
	-	linux; amd64

### `neurodebian:nd90` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.1 MB (44110817 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cf505aaa8d4cb95685c05861b02cd18edd1035683322173ec51ade031534a0ea`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 09 Jun 2016 21:29:38 GMT
ADD file:e91fa3dd38b229ee62e6a72db099274d69a22affdae34e06276400a0824255bf in /
# Thu, 09 Jun 2016 21:29:39 GMT
CMD ["/bin/bash"]
# Fri, 10 Jun 2016 15:01:02 GMT
RUN echo 'deb http://neuro.debian.net/debian stretch main' > /etc/apt/sources.list.d/neurodebian.sources.list
# Fri, 10 Jun 2016 15:01:03 GMT
RUN echo 'deb http://neuro.debian.net/debian data main' >> /etc/apt/sources.list.d/neurodebian.sources.list
# Fri, 10 Jun 2016 15:01:04 GMT
RUN echo '#deb-src http://neuro.debian.net/debian-devel stretch main' >> /etc/apt/sources.list.d/neurodebian.sources.list
# Fri, 10 Jun 2016 15:01:06 GMT
RUN apt-key adv --recv-keys --keyserver pgp.mit.edu 0xA5D32F012649A5A9
```

-	Layers:
	-	`sha256:c12270f957b9db8fe01efad59a55d34a28364597c051658e92590dfc22f18db8`  
		Last Modified: Thu, 09 Jun 2016 21:33:01 GMT  
		Size: 44.1 MB (44107040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5bc7644d4b2324a3571798dbc818ea9c6f447962cd5c95f48fea9059b195888e`  
		Last Modified: Thu, 21 Jul 2016 20:31:23 GMT  
		Size: 211.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4f9481c998e09442d19fba1e7544971cf6a37edb0f9253bcba224d686db34fd`  
		Last Modified: Thu, 21 Jul 2016 20:31:23 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d91acccc3b79849cf7ac75d750f95764c46041795851f411140d3e2d1108b0f3`  
		Last Modified: Thu, 21 Jul 2016 20:31:23 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f39cb50ab98eed22e00aec4e8e89bc425811f2404c64a5db629b24806fe0ffd3`  
		Last Modified: Thu, 21 Jul 2016 20:31:23 GMT  
		Size: 3.1 KB (3107 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neurodebian:sid`

```console
$ docker pull neurodebian@sha256:6698e9fd6337b81cef7e83d22c0972926cbe9c72b49b0eb622c8fbb42be240b7
```

-	Platforms:
	-	linux; amd64

### `neurodebian:sid` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.1 MB (44112288 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d75f4e568e9623979b72bd63217192e2535ab56c39ea035e7bd3293641163974`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 09 Jun 2016 21:29:06 GMT
ADD file:8fdc004f9416952c9e1590e8cabcbb49792bbd424d6ee25dae34e39fb952832b in /
# Thu, 09 Jun 2016 21:29:06 GMT
CMD ["/bin/bash"]
# Fri, 10 Jun 2016 18:34:02 GMT
RUN echo 'deb http://neuro.debian.net/debian sid main' > /etc/apt/sources.list.d/neurodebian.sources.list
# Fri, 10 Jun 2016 18:34:04 GMT
RUN echo 'deb http://neuro.debian.net/debian data main' >> /etc/apt/sources.list.d/neurodebian.sources.list
# Fri, 10 Jun 2016 18:34:05 GMT
RUN echo '#deb-src http://neuro.debian.net/debian-devel sid main' >> /etc/apt/sources.list.d/neurodebian.sources.list
# Fri, 10 Jun 2016 18:34:08 GMT
RUN apt-key adv --recv-keys --keyserver pgp.mit.edu 0xA5D32F012649A5A9
```

-	Layers:
	-	`sha256:2346a4d49ad1b9c5274a3f172de0791bc0a0dd146df3f2a860a7d471c06ebf6e`  
		Last Modified: Thu, 09 Jun 2016 21:32:04 GMT  
		Size: 44.1 MB (44108517 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08f566bec2f17dac9c057403aa121125f097d6415c255c720aa1f62abea831ca`  
		Last Modified: Thu, 21 Jul 2016 20:31:45 GMT  
		Size: 211.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ff09a67acd3d9984b8b1b8624f713fd48fa30e0511ec3a09a9ce34daf48a51f`  
		Last Modified: Thu, 21 Jul 2016 20:31:45 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b32e216ef40b69d4296400a43c4fc65b4eac9c5bfcaf0d08b2adcc0becb824e0`  
		Last Modified: Thu, 21 Jul 2016 20:31:45 GMT  
		Size: 235.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14665702eec8e180b735c5b6911d54ef788829b55b2002948366670c9219ba20`  
		Last Modified: Thu, 21 Jul 2016 20:31:45 GMT  
		Size: 3.1 KB (3106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neurodebian:nd`

```console
$ docker pull neurodebian@sha256:6698e9fd6337b81cef7e83d22c0972926cbe9c72b49b0eb622c8fbb42be240b7
```

-	Platforms:
	-	linux; amd64

### `neurodebian:nd` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.1 MB (44112288 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d75f4e568e9623979b72bd63217192e2535ab56c39ea035e7bd3293641163974`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 09 Jun 2016 21:29:06 GMT
ADD file:8fdc004f9416952c9e1590e8cabcbb49792bbd424d6ee25dae34e39fb952832b in /
# Thu, 09 Jun 2016 21:29:06 GMT
CMD ["/bin/bash"]
# Fri, 10 Jun 2016 18:34:02 GMT
RUN echo 'deb http://neuro.debian.net/debian sid main' > /etc/apt/sources.list.d/neurodebian.sources.list
# Fri, 10 Jun 2016 18:34:04 GMT
RUN echo 'deb http://neuro.debian.net/debian data main' >> /etc/apt/sources.list.d/neurodebian.sources.list
# Fri, 10 Jun 2016 18:34:05 GMT
RUN echo '#deb-src http://neuro.debian.net/debian-devel sid main' >> /etc/apt/sources.list.d/neurodebian.sources.list
# Fri, 10 Jun 2016 18:34:08 GMT
RUN apt-key adv --recv-keys --keyserver pgp.mit.edu 0xA5D32F012649A5A9
```

-	Layers:
	-	`sha256:2346a4d49ad1b9c5274a3f172de0791bc0a0dd146df3f2a860a7d471c06ebf6e`  
		Last Modified: Thu, 09 Jun 2016 21:32:04 GMT  
		Size: 44.1 MB (44108517 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08f566bec2f17dac9c057403aa121125f097d6415c255c720aa1f62abea831ca`  
		Last Modified: Thu, 21 Jul 2016 20:31:45 GMT  
		Size: 211.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ff09a67acd3d9984b8b1b8624f713fd48fa30e0511ec3a09a9ce34daf48a51f`  
		Last Modified: Thu, 21 Jul 2016 20:31:45 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b32e216ef40b69d4296400a43c4fc65b4eac9c5bfcaf0d08b2adcc0becb824e0`  
		Last Modified: Thu, 21 Jul 2016 20:31:45 GMT  
		Size: 235.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14665702eec8e180b735c5b6911d54ef788829b55b2002948366670c9219ba20`  
		Last Modified: Thu, 21 Jul 2016 20:31:45 GMT  
		Size: 3.1 KB (3106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
