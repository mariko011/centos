<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `neurodebian`

-	[`neurodebian:trusty`](#neurodebiantrusty)
-	[`neurodebian:nd14.04`](#neurodebiannd1404)
-	[`neurodebian:xenial`](#neurodebianxenial)
-	[`neurodebian:nd16.04`](#neurodebiannd1604)
-	[`neurodebian:yakkety`](#neurodebianyakkety)
-	[`neurodebian:nd16.10`](#neurodebiannd1610)
-	[`neurodebian:zesty`](#neurodebianzesty)
-	[`neurodebian:nd17.04`](#neurodebiannd1704)
-	[`neurodebian:artful`](#neurodebianartful)
-	[`neurodebian:nd17.10`](#neurodebiannd1710)
-	[`neurodebian:wheezy`](#neurodebianwheezy)
-	[`neurodebian:nd70`](#neurodebiannd70)
-	[`neurodebian:jessie`](#neurodebianjessie)
-	[`neurodebian:nd80`](#neurodebiannd80)
-	[`neurodebian:stretch`](#neurodebianstretch)
-	[`neurodebian:nd90`](#neurodebiannd90)
-	[`neurodebian:sid`](#neurodebiansid)
-	[`neurodebian:nd`](#neurodebiannd)

## `neurodebian:trusty`

```console
$ docker pull neurodebian@sha256:8f7e15b5ef7c23570daa73e65fa617aecafe4258b026de1eb323647ac600e9f9
```

-	Platforms:
	-	linux; amd64

### `neurodebian:trusty` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **67.2 MB (67191974 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f7fd8970c5b470b5b767d8d0dd00444ce8c100ecb08ac49781f10c5c66662f66`
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
# Fri, 23 Jun 2017 00:49:08 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg2 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 00:49:11 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& gpg --export DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/trusted.gpg.d/neurodebian.gpg 	&& rm -rf "$GNUPGHOME" 	&& apt-key list | grep neurodebian
# Fri, 23 Jun 2017 00:49:13 GMT
RUN { 	echo 'deb http://neuro.debian.net/debian trusty main'; 	echo 'deb http://neuro.debian.net/debian data main'; 	echo '#deb-src http://neuro.debian.net/debian-devel trusty main'; } > /etc/apt/sources.list.d/neurodebian.sources.list
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
	-	`sha256:76419d9014fd15712b0d91207f54618e741a467474a5e66d8451bbc78e82e3ca`  
		Last Modified: Sat, 24 Jun 2017 13:41:27 GMT  
		Size: 255.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84735524a02f4a2383aeb771413bee5e815670ab0ee34cb2938e0c74c3c73fd5`  
		Last Modified: Sat, 24 Jun 2017 13:41:26 GMT  
		Size: 3.1 KB (3138 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:665721c5bb42dad79b793e0915f54f4c84877b09032cf39c66df437daacc9f53`  
		Last Modified: Sat, 24 Jun 2017 13:41:26 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neurodebian:nd14.04`

```console
$ docker pull neurodebian@sha256:8f7e15b5ef7c23570daa73e65fa617aecafe4258b026de1eb323647ac600e9f9
```

-	Platforms:
	-	linux; amd64

### `neurodebian:nd14.04` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **67.2 MB (67191974 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f7fd8970c5b470b5b767d8d0dd00444ce8c100ecb08ac49781f10c5c66662f66`
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
# Fri, 23 Jun 2017 00:49:08 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg2 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 00:49:11 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& gpg --export DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/trusted.gpg.d/neurodebian.gpg 	&& rm -rf "$GNUPGHOME" 	&& apt-key list | grep neurodebian
# Fri, 23 Jun 2017 00:49:13 GMT
RUN { 	echo 'deb http://neuro.debian.net/debian trusty main'; 	echo 'deb http://neuro.debian.net/debian data main'; 	echo '#deb-src http://neuro.debian.net/debian-devel trusty main'; } > /etc/apt/sources.list.d/neurodebian.sources.list
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
	-	`sha256:76419d9014fd15712b0d91207f54618e741a467474a5e66d8451bbc78e82e3ca`  
		Last Modified: Sat, 24 Jun 2017 13:41:27 GMT  
		Size: 255.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84735524a02f4a2383aeb771413bee5e815670ab0ee34cb2938e0c74c3c73fd5`  
		Last Modified: Sat, 24 Jun 2017 13:41:26 GMT  
		Size: 3.1 KB (3138 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:665721c5bb42dad79b793e0915f54f4c84877b09032cf39c66df437daacc9f53`  
		Last Modified: Sat, 24 Jun 2017 13:41:26 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neurodebian:xenial`

```console
$ docker pull neurodebian@sha256:1d0ce9e36ab4c4aa537fa57277dfc3ffbd30e5eafcfbf1caf4cf51e20c07bb9a
```

-	Platforms:
	-	linux; amd64

### `neurodebian:xenial` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.1 MB (47109258 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:26765927b2ec41d5d31b0c9d668165068ceae6e9024a9ce43fcdf040438b2a92`
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
# Fri, 23 Jun 2017 00:49:44 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg2 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 00:49:46 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& gpg --export DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/trusted.gpg.d/neurodebian.gpg 	&& rm -rf "$GNUPGHOME" 	&& apt-key list | grep neurodebian
# Fri, 23 Jun 2017 00:49:48 GMT
RUN { 	echo 'deb http://neuro.debian.net/debian xenial main'; 	echo 'deb http://neuro.debian.net/debian data main'; 	echo '#deb-src http://neuro.debian.net/debian-devel xenial main'; } > /etc/apt/sources.list.d/neurodebian.sources.list
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
	-	`sha256:de6bcde126f3b1089044c005c5d9eaf09fcb2ae959d3bc879f769a9fe902e42a`  
		Last Modified: Sat, 24 Jun 2017 13:42:27 GMT  
		Size: 250.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7711e55fe3e96743f391cca81c13e722736c2e477ecd99146cccee66e9886407`  
		Last Modified: Sat, 24 Jun 2017 13:42:26 GMT  
		Size: 3.1 KB (3136 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99c5477c3f9d6e4e5b40bfcceee312fd9f020b371c1957191226efc5906598d2`  
		Last Modified: Sat, 24 Jun 2017 13:42:26 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neurodebian:nd16.04`

```console
$ docker pull neurodebian@sha256:1d0ce9e36ab4c4aa537fa57277dfc3ffbd30e5eafcfbf1caf4cf51e20c07bb9a
```

-	Platforms:
	-	linux; amd64

### `neurodebian:nd16.04` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.1 MB (47109258 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:26765927b2ec41d5d31b0c9d668165068ceae6e9024a9ce43fcdf040438b2a92`
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
# Fri, 23 Jun 2017 00:49:44 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg2 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 00:49:46 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& gpg --export DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/trusted.gpg.d/neurodebian.gpg 	&& rm -rf "$GNUPGHOME" 	&& apt-key list | grep neurodebian
# Fri, 23 Jun 2017 00:49:48 GMT
RUN { 	echo 'deb http://neuro.debian.net/debian xenial main'; 	echo 'deb http://neuro.debian.net/debian data main'; 	echo '#deb-src http://neuro.debian.net/debian-devel xenial main'; } > /etc/apt/sources.list.d/neurodebian.sources.list
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
	-	`sha256:de6bcde126f3b1089044c005c5d9eaf09fcb2ae959d3bc879f769a9fe902e42a`  
		Last Modified: Sat, 24 Jun 2017 13:42:27 GMT  
		Size: 250.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7711e55fe3e96743f391cca81c13e722736c2e477ecd99146cccee66e9886407`  
		Last Modified: Sat, 24 Jun 2017 13:42:26 GMT  
		Size: 3.1 KB (3136 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99c5477c3f9d6e4e5b40bfcceee312fd9f020b371c1957191226efc5906598d2`  
		Last Modified: Sat, 24 Jun 2017 13:42:26 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neurodebian:yakkety`

```console
$ docker pull neurodebian@sha256:eb14bb8a28860b9a1791cd16dda8c4d541d5f0b4e2755214c338462a8ada1760
```

-	Platforms:
	-	linux; amd64

### `neurodebian:yakkety` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.0 MB (46006310 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de73b8decef213b62ff0b6bdaf1516c132837574dacdb93f99a5dbd72c9c5a5f`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 20 Jun 2017 23:19:57 GMT
ADD file:e4c6632231dabc7399cf6466d1c4c9e89d78b731101eb1fd29d23e21fddc5acb in / 
# Tue, 20 Jun 2017 23:20:19 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 20 Jun 2017 23:20:20 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 20 Jun 2017 23:20:45 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 20 Jun 2017 23:20:46 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 20 Jun 2017 23:21:10 GMT
CMD ["/bin/bash"]
# Fri, 23 Jun 2017 00:50:25 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg2 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 00:50:29 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& gpg --export DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/trusted.gpg.d/neurodebian.gpg 	&& rm -rf "$GNUPGHOME" 	&& apt-key list | grep neurodebian
# Fri, 23 Jun 2017 00:50:31 GMT
RUN { 	echo 'deb http://neuro.debian.net/debian yakkety main'; 	echo 'deb http://neuro.debian.net/debian data main'; 	echo '#deb-src http://neuro.debian.net/debian-devel yakkety main'; } > /etc/apt/sources.list.d/neurodebian.sources.list
```

-	Layers:
	-	`sha256:a55d728810805fb84bc7c40f0621ae3ea4869203e0a6bce5456d125c17e56520`  
		Last Modified: Tue, 20 Jun 2017 23:33:21 GMT  
		Size: 42.8 MB (42754848 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05af1ccb9c1ebcf1385563d3b4764f0b829970c547b02c938325dd3acd5f0588`  
		Last Modified: Tue, 20 Jun 2017 23:33:09 GMT  
		Size: 817.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03f1e1a31b68748a5372a572e748107e11ef2ddb49bc6fac5ebdd43af45a0c64`  
		Last Modified: Tue, 20 Jun 2017 23:33:09 GMT  
		Size: 512.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e79f1c2fa96ca331ffd7d43919af5fc94ffc7e7cebd1e93d5327808d1e56860e`  
		Last Modified: Tue, 20 Jun 2017 23:33:10 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c290e5b582d7528f4b96cd8347b9a6cdf52db4c3fa5d2780aeb9a20212e94e82`  
		Last Modified: Tue, 20 Jun 2017 23:33:09 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75612bb4049f3c728340ffe1a2313db8b9d8d58d66c34925837a5d2580d2ceef`  
		Last Modified: Sat, 24 Jun 2017 13:43:26 GMT  
		Size: 3.2 MB (3245737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4adce3656ed4a33678dae4fec5770c6acd8fb4f692352dcf348ccddb93222baf`  
		Last Modified: Sat, 24 Jun 2017 13:43:26 GMT  
		Size: 3.1 KB (3140 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:646f80722602bf2c99ce2bce1d2f9982b28cfdca901a4d8c86e8a62e63dc250a`  
		Last Modified: Sat, 24 Jun 2017 13:43:26 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neurodebian:nd16.10`

```console
$ docker pull neurodebian@sha256:eb14bb8a28860b9a1791cd16dda8c4d541d5f0b4e2755214c338462a8ada1760
```

-	Platforms:
	-	linux; amd64

### `neurodebian:nd16.10` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.0 MB (46006310 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de73b8decef213b62ff0b6bdaf1516c132837574dacdb93f99a5dbd72c9c5a5f`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 20 Jun 2017 23:19:57 GMT
ADD file:e4c6632231dabc7399cf6466d1c4c9e89d78b731101eb1fd29d23e21fddc5acb in / 
# Tue, 20 Jun 2017 23:20:19 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 20 Jun 2017 23:20:20 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 20 Jun 2017 23:20:45 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 20 Jun 2017 23:20:46 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 20 Jun 2017 23:21:10 GMT
CMD ["/bin/bash"]
# Fri, 23 Jun 2017 00:50:25 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg2 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 00:50:29 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& gpg --export DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/trusted.gpg.d/neurodebian.gpg 	&& rm -rf "$GNUPGHOME" 	&& apt-key list | grep neurodebian
# Fri, 23 Jun 2017 00:50:31 GMT
RUN { 	echo 'deb http://neuro.debian.net/debian yakkety main'; 	echo 'deb http://neuro.debian.net/debian data main'; 	echo '#deb-src http://neuro.debian.net/debian-devel yakkety main'; } > /etc/apt/sources.list.d/neurodebian.sources.list
```

-	Layers:
	-	`sha256:a55d728810805fb84bc7c40f0621ae3ea4869203e0a6bce5456d125c17e56520`  
		Last Modified: Tue, 20 Jun 2017 23:33:21 GMT  
		Size: 42.8 MB (42754848 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05af1ccb9c1ebcf1385563d3b4764f0b829970c547b02c938325dd3acd5f0588`  
		Last Modified: Tue, 20 Jun 2017 23:33:09 GMT  
		Size: 817.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03f1e1a31b68748a5372a572e748107e11ef2ddb49bc6fac5ebdd43af45a0c64`  
		Last Modified: Tue, 20 Jun 2017 23:33:09 GMT  
		Size: 512.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e79f1c2fa96ca331ffd7d43919af5fc94ffc7e7cebd1e93d5327808d1e56860e`  
		Last Modified: Tue, 20 Jun 2017 23:33:10 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c290e5b582d7528f4b96cd8347b9a6cdf52db4c3fa5d2780aeb9a20212e94e82`  
		Last Modified: Tue, 20 Jun 2017 23:33:09 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75612bb4049f3c728340ffe1a2313db8b9d8d58d66c34925837a5d2580d2ceef`  
		Last Modified: Sat, 24 Jun 2017 13:43:26 GMT  
		Size: 3.2 MB (3245737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4adce3656ed4a33678dae4fec5770c6acd8fb4f692352dcf348ccddb93222baf`  
		Last Modified: Sat, 24 Jun 2017 13:43:26 GMT  
		Size: 3.1 KB (3140 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:646f80722602bf2c99ce2bce1d2f9982b28cfdca901a4d8c86e8a62e63dc250a`  
		Last Modified: Sat, 24 Jun 2017 13:43:26 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neurodebian:zesty`

```console
$ docker pull neurodebian@sha256:1da82a5e484d2025c2a3cee1e0bfe7bea1dd9c650edba3def0b9c71919fdb5dd
```

-	Platforms:
	-	linux; amd64

### `neurodebian:zesty` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.2 MB (41238066 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8f28a567d41a4be4bbb34181a102fed565c6ba6d201111b30b8d2beb0a9d5b6c`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 20 Jun 2017 23:22:25 GMT
ADD file:94a0566394ac9766d151c52101cff87f96da6cae0b5f41d46f594673fab4da2c in / 
# Tue, 20 Jun 2017 23:22:47 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 20 Jun 2017 23:22:48 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 20 Jun 2017 23:22:50 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 20 Jun 2017 23:23:14 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 20 Jun 2017 23:23:15 GMT
CMD ["/bin/bash"]
# Fri, 23 Jun 2017 00:51:08 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg2 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 00:51:12 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& gpg --export DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/trusted.gpg.d/neurodebian.gpg 	&& rm -rf "$GNUPGHOME" 	&& apt-key list | grep neurodebian
# Fri, 23 Jun 2017 00:51:14 GMT
RUN { 	echo 'deb http://neuro.debian.net/debian zesty main'; 	echo 'deb http://neuro.debian.net/debian data main'; 	echo '#deb-src http://neuro.debian.net/debian-devel zesty main'; } > /etc/apt/sources.list.d/neurodebian.sources.list
```

-	Layers:
	-	`sha256:19cb2bca2aca987341d3e6a6d833b6038b9d659f24a4a546971178f3287f30fb`  
		Last Modified: Tue, 20 Jun 2017 23:35:40 GMT  
		Size: 38.0 MB (37963396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:875ccedcbf3f87631342d821bf3d910439a81eeae761d3fc6358a09a91b71093`  
		Last Modified: Tue, 20 Jun 2017 23:35:30 GMT  
		Size: 814.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6449dd44f2655df824a9a7bc27ae50fca28ea03a3348beefdd5e9783f7b9e689`  
		Last Modified: Tue, 20 Jun 2017 23:35:30 GMT  
		Size: 507.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09719d1aba4ad7e72b61a4bafb7bc1ee1dcc6bab71144e99661fbf7598aa5cd8`  
		Last Modified: Tue, 20 Jun 2017 23:35:29 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da0d7f3ddeb81003a37dd64e93d71cc7067ceade18bcd9c5458bcb154930d47f`  
		Last Modified: Tue, 20 Jun 2017 23:35:29 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecff5ee7824a68e781e0746606db2dc5de7629811c6720a2d62c3952113df360`  
		Last Modified: Sat, 24 Jun 2017 13:44:25 GMT  
		Size: 3.3 MB (3268965 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c506f95cb84db944c75093bce06ccedd846f4ef63a0f576a7413d1e0d0e6942e`  
		Last Modified: Sat, 24 Jun 2017 13:44:24 GMT  
		Size: 3.1 KB (3135 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ac89120bece2463580d7d58fdfcc08c73155057fde720512dd990650d5c4437`  
		Last Modified: Sat, 24 Jun 2017 13:44:25 GMT  
		Size: 236.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neurodebian:nd17.04`

```console
$ docker pull neurodebian@sha256:1da82a5e484d2025c2a3cee1e0bfe7bea1dd9c650edba3def0b9c71919fdb5dd
```

-	Platforms:
	-	linux; amd64

### `neurodebian:nd17.04` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.2 MB (41238066 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8f28a567d41a4be4bbb34181a102fed565c6ba6d201111b30b8d2beb0a9d5b6c`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 20 Jun 2017 23:22:25 GMT
ADD file:94a0566394ac9766d151c52101cff87f96da6cae0b5f41d46f594673fab4da2c in / 
# Tue, 20 Jun 2017 23:22:47 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 20 Jun 2017 23:22:48 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 20 Jun 2017 23:22:50 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 20 Jun 2017 23:23:14 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 20 Jun 2017 23:23:15 GMT
CMD ["/bin/bash"]
# Fri, 23 Jun 2017 00:51:08 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg2 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 00:51:12 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& gpg --export DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/trusted.gpg.d/neurodebian.gpg 	&& rm -rf "$GNUPGHOME" 	&& apt-key list | grep neurodebian
# Fri, 23 Jun 2017 00:51:14 GMT
RUN { 	echo 'deb http://neuro.debian.net/debian zesty main'; 	echo 'deb http://neuro.debian.net/debian data main'; 	echo '#deb-src http://neuro.debian.net/debian-devel zesty main'; } > /etc/apt/sources.list.d/neurodebian.sources.list
```

-	Layers:
	-	`sha256:19cb2bca2aca987341d3e6a6d833b6038b9d659f24a4a546971178f3287f30fb`  
		Last Modified: Tue, 20 Jun 2017 23:35:40 GMT  
		Size: 38.0 MB (37963396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:875ccedcbf3f87631342d821bf3d910439a81eeae761d3fc6358a09a91b71093`  
		Last Modified: Tue, 20 Jun 2017 23:35:30 GMT  
		Size: 814.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6449dd44f2655df824a9a7bc27ae50fca28ea03a3348beefdd5e9783f7b9e689`  
		Last Modified: Tue, 20 Jun 2017 23:35:30 GMT  
		Size: 507.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09719d1aba4ad7e72b61a4bafb7bc1ee1dcc6bab71144e99661fbf7598aa5cd8`  
		Last Modified: Tue, 20 Jun 2017 23:35:29 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da0d7f3ddeb81003a37dd64e93d71cc7067ceade18bcd9c5458bcb154930d47f`  
		Last Modified: Tue, 20 Jun 2017 23:35:29 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecff5ee7824a68e781e0746606db2dc5de7629811c6720a2d62c3952113df360`  
		Last Modified: Sat, 24 Jun 2017 13:44:25 GMT  
		Size: 3.3 MB (3268965 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c506f95cb84db944c75093bce06ccedd846f4ef63a0f576a7413d1e0d0e6942e`  
		Last Modified: Sat, 24 Jun 2017 13:44:24 GMT  
		Size: 3.1 KB (3135 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ac89120bece2463580d7d58fdfcc08c73155057fde720512dd990650d5c4437`  
		Last Modified: Sat, 24 Jun 2017 13:44:25 GMT  
		Size: 236.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neurodebian:artful`

```console
$ docker pull neurodebian@sha256:a79c560c648f23395c4ad567daa771fb0542f69a57cc8379b70645ae1a31d755
```

-	Platforms:
	-	linux; amd64

### `neurodebian:artful` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.5 MB (40532820 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9dfe8879396bcac8d6b72fd22b87c86cbf35594e6484603eb6ca8934b615af27`
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
# Fri, 23 Jun 2017 00:51:52 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg2 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 00:51:56 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& gpg --export DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/trusted.gpg.d/neurodebian.gpg 	&& rm -rf "$GNUPGHOME" 	&& apt-key list | grep neurodebian
# Fri, 23 Jun 2017 00:51:57 GMT
RUN { 	echo 'deb http://neuro.debian.net/debian artful main'; 	echo 'deb http://neuro.debian.net/debian data main'; 	echo '#deb-src http://neuro.debian.net/debian-devel artful main'; } > /etc/apt/sources.list.d/neurodebian.sources.list
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
	-	`sha256:e723093524602693f1b8d5a512e2851d784901686674ea2ae86f89da7dc405f9`  
		Last Modified: Sat, 24 Jun 2017 13:45:27 GMT  
		Size: 3.3 MB (3334782 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6406239f5f8c46c5bce7836e414933bd07d5d17a02af6be2dc2afe1ee639981`  
		Last Modified: Sat, 24 Jun 2017 13:45:26 GMT  
		Size: 3.1 KB (3136 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d8c760c21cc1a67132f91c18a7cb5a79dc7957a72d60d6447eb931bcd8edc39`  
		Last Modified: Sat, 24 Jun 2017 13:45:26 GMT  
		Size: 236.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neurodebian:nd17.10`

```console
$ docker pull neurodebian@sha256:a79c560c648f23395c4ad567daa771fb0542f69a57cc8379b70645ae1a31d755
```

-	Platforms:
	-	linux; amd64

### `neurodebian:nd17.10` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.5 MB (40532820 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9dfe8879396bcac8d6b72fd22b87c86cbf35594e6484603eb6ca8934b615af27`
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
# Fri, 23 Jun 2017 00:51:52 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg2 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 00:51:56 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& gpg --export DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/trusted.gpg.d/neurodebian.gpg 	&& rm -rf "$GNUPGHOME" 	&& apt-key list | grep neurodebian
# Fri, 23 Jun 2017 00:51:57 GMT
RUN { 	echo 'deb http://neuro.debian.net/debian artful main'; 	echo 'deb http://neuro.debian.net/debian data main'; 	echo '#deb-src http://neuro.debian.net/debian-devel artful main'; } > /etc/apt/sources.list.d/neurodebian.sources.list
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
	-	`sha256:e723093524602693f1b8d5a512e2851d784901686674ea2ae86f89da7dc405f9`  
		Last Modified: Sat, 24 Jun 2017 13:45:27 GMT  
		Size: 3.3 MB (3334782 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6406239f5f8c46c5bce7836e414933bd07d5d17a02af6be2dc2afe1ee639981`  
		Last Modified: Sat, 24 Jun 2017 13:45:26 GMT  
		Size: 3.1 KB (3136 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d8c760c21cc1a67132f91c18a7cb5a79dc7957a72d60d6447eb931bcd8edc39`  
		Last Modified: Sat, 24 Jun 2017 13:45:26 GMT  
		Size: 236.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neurodebian:wheezy`

```console
$ docker pull neurodebian@sha256:2391339c4b024ba686d7fbd18db39f982a320081a3bf7436717782e31825ba76
```

-	Platforms:
	-	linux; amd64

### `neurodebian:wheezy` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.1 MB (38107232 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c158d99a0d4f3bebed008a6e1e2917855d98e39f10e3aaf0eda3a17c0a97333f`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Jun 2017 20:29:57 GMT
ADD file:e58836121f9e162887b70de3a328bb9ff8944a1307cf5f05b9d768a1a49afe60 in / 
# Tue, 20 Jun 2017 20:29:58 GMT
CMD ["bash"]
# Fri, 23 Jun 2017 00:52:29 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg2 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 00:52:31 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& gpg --export DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/trusted.gpg.d/neurodebian.gpg 	&& rm -rf "$GNUPGHOME" 	&& apt-key list | grep neurodebian
# Fri, 23 Jun 2017 00:52:32 GMT
RUN { 	echo 'deb http://neuro.debian.net/debian wheezy main'; 	echo 'deb http://neuro.debian.net/debian data main'; 	echo '#deb-src http://neuro.debian.net/debian-devel wheezy main'; } > /etc/apt/sources.list.d/neurodebian.sources.list
```

-	Layers:
	-	`sha256:5b825a4651ef2855128f8b498adaf68d54840a4b4b66c406e4ea30ede531f1fd`  
		Last Modified: Tue, 20 Jun 2017 21:02:17 GMT  
		Size: 38.1 MB (38103640 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76bb50c802593f7ae49f4ca0184494c4c52c69203938c68e5477692708d840e2`  
		Last Modified: Sat, 24 Jun 2017 13:46:25 GMT  
		Size: 217.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25d58bc6f00e13fa60997e51629fbc9f2a8fa592eb77863d8495afa4ea18ad00`  
		Last Modified: Sat, 24 Jun 2017 13:46:25 GMT  
		Size: 3.1 KB (3136 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa518dfcd7c2f302c11819bc4fed579d07335822f72ff074db37b6102bc6e5a9`  
		Last Modified: Sat, 24 Jun 2017 13:46:25 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neurodebian:nd70`

```console
$ docker pull neurodebian@sha256:2391339c4b024ba686d7fbd18db39f982a320081a3bf7436717782e31825ba76
```

-	Platforms:
	-	linux; amd64

### `neurodebian:nd70` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.1 MB (38107232 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c158d99a0d4f3bebed008a6e1e2917855d98e39f10e3aaf0eda3a17c0a97333f`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Jun 2017 20:29:57 GMT
ADD file:e58836121f9e162887b70de3a328bb9ff8944a1307cf5f05b9d768a1a49afe60 in / 
# Tue, 20 Jun 2017 20:29:58 GMT
CMD ["bash"]
# Fri, 23 Jun 2017 00:52:29 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg2 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 00:52:31 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& gpg --export DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/trusted.gpg.d/neurodebian.gpg 	&& rm -rf "$GNUPGHOME" 	&& apt-key list | grep neurodebian
# Fri, 23 Jun 2017 00:52:32 GMT
RUN { 	echo 'deb http://neuro.debian.net/debian wheezy main'; 	echo 'deb http://neuro.debian.net/debian data main'; 	echo '#deb-src http://neuro.debian.net/debian-devel wheezy main'; } > /etc/apt/sources.list.d/neurodebian.sources.list
```

-	Layers:
	-	`sha256:5b825a4651ef2855128f8b498adaf68d54840a4b4b66c406e4ea30ede531f1fd`  
		Last Modified: Tue, 20 Jun 2017 21:02:17 GMT  
		Size: 38.1 MB (38103640 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76bb50c802593f7ae49f4ca0184494c4c52c69203938c68e5477692708d840e2`  
		Last Modified: Sat, 24 Jun 2017 13:46:25 GMT  
		Size: 217.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25d58bc6f00e13fa60997e51629fbc9f2a8fa592eb77863d8495afa4ea18ad00`  
		Last Modified: Sat, 24 Jun 2017 13:46:25 GMT  
		Size: 3.1 KB (3136 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa518dfcd7c2f302c11819bc4fed579d07335822f72ff074db37b6102bc6e5a9`  
		Last Modified: Sat, 24 Jun 2017 13:46:25 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neurodebian:jessie`

```console
$ docker pull neurodebian@sha256:c432cca1399905244e0845e94b91c8cc234910c1095026e8ec9d6d149fbbeaa0
```

-	Platforms:
	-	linux; amd64

### `neurodebian:jessie` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.6 MB (52618431 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d39c30cb93c525da6700251220a42b7f455fbd35e4819d1ef6e9c5d1f7947df4`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Jun 2017 20:13:32 GMT
ADD file:9c48682ff75c756544d4491472081a078edf5dd0bb5038d1cb850a1f9c480e3e in / 
# Tue, 20 Jun 2017 20:13:34 GMT
CMD ["bash"]
# Fri, 23 Jun 2017 00:53:02 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg2 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 00:53:05 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& gpg --export DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/trusted.gpg.d/neurodebian.gpg 	&& rm -rf "$GNUPGHOME" 	&& apt-key list | grep neurodebian
# Fri, 23 Jun 2017 00:53:06 GMT
RUN { 	echo 'deb http://neuro.debian.net/debian jessie main'; 	echo 'deb http://neuro.debian.net/debian data main'; 	echo '#deb-src http://neuro.debian.net/debian-devel jessie main'; } > /etc/apt/sources.list.d/neurodebian.sources.list
```

-	Layers:
	-	`sha256:9f0706ba7422412cd468804fee456786f88bed94bf9aea6dde2a47f770d19d27`  
		Last Modified: Tue, 20 Jun 2017 20:35:47 GMT  
		Size: 52.6 MB (52614808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e83b98cbe335b9d1ef79d3d434e7f84619df8b9f83870d62feb04c014e2f726`  
		Last Modified: Sat, 24 Jun 2017 13:47:22 GMT  
		Size: 235.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b5f40c8c5ab00626965c972018bf1dcc406a6c8ce6d471eb0a20bb5d78f180d`  
		Last Modified: Sat, 24 Jun 2017 13:47:21 GMT  
		Size: 3.2 KB (3152 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c789205b6bdf593d63b55215423f10f791cdab5ae397bf86978d1744d5ec8daa`  
		Last Modified: Sat, 24 Jun 2017 13:47:22 GMT  
		Size: 236.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neurodebian:nd80`

```console
$ docker pull neurodebian@sha256:c432cca1399905244e0845e94b91c8cc234910c1095026e8ec9d6d149fbbeaa0
```

-	Platforms:
	-	linux; amd64

### `neurodebian:nd80` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.6 MB (52618431 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d39c30cb93c525da6700251220a42b7f455fbd35e4819d1ef6e9c5d1f7947df4`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Jun 2017 20:13:32 GMT
ADD file:9c48682ff75c756544d4491472081a078edf5dd0bb5038d1cb850a1f9c480e3e in / 
# Tue, 20 Jun 2017 20:13:34 GMT
CMD ["bash"]
# Fri, 23 Jun 2017 00:53:02 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg2 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 00:53:05 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& gpg --export DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/trusted.gpg.d/neurodebian.gpg 	&& rm -rf "$GNUPGHOME" 	&& apt-key list | grep neurodebian
# Fri, 23 Jun 2017 00:53:06 GMT
RUN { 	echo 'deb http://neuro.debian.net/debian jessie main'; 	echo 'deb http://neuro.debian.net/debian data main'; 	echo '#deb-src http://neuro.debian.net/debian-devel jessie main'; } > /etc/apt/sources.list.d/neurodebian.sources.list
```

-	Layers:
	-	`sha256:9f0706ba7422412cd468804fee456786f88bed94bf9aea6dde2a47f770d19d27`  
		Last Modified: Tue, 20 Jun 2017 20:35:47 GMT  
		Size: 52.6 MB (52614808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e83b98cbe335b9d1ef79d3d434e7f84619df8b9f83870d62feb04c014e2f726`  
		Last Modified: Sat, 24 Jun 2017 13:47:22 GMT  
		Size: 235.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b5f40c8c5ab00626965c972018bf1dcc406a6c8ce6d471eb0a20bb5d78f180d`  
		Last Modified: Sat, 24 Jun 2017 13:47:21 GMT  
		Size: 3.2 KB (3152 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c789205b6bdf593d63b55215423f10f791cdab5ae397bf86978d1744d5ec8daa`  
		Last Modified: Sat, 24 Jun 2017 13:47:22 GMT  
		Size: 236.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neurodebian:stretch`

```console
$ docker pull neurodebian@sha256:f9f467e4f7b6e4f1577e3f543443c69c0e94049b463068d4cecc975587b083f6
```

-	Platforms:
	-	linux; amd64

### `neurodebian:stretch` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.2 MB (52172649 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9715ebe297b57f786c21cd62c54ae65ac3060a8598a4690c8754a09d50209416`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Jun 2017 20:24:09 GMT
ADD file:93a0dbb6973bc13e5478292bfe283ff91745ca6e23b6fd3363f0661c45deb1ec in / 
# Tue, 20 Jun 2017 20:24:10 GMT
CMD ["bash"]
# Fri, 23 Jun 2017 00:53:40 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg2 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 00:53:44 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& gpg --export DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/trusted.gpg.d/neurodebian.gpg 	&& rm -rf "$GNUPGHOME" 	&& apt-key list | grep neurodebian
# Fri, 23 Jun 2017 00:53:46 GMT
RUN { 	echo 'deb http://neuro.debian.net/debian stretch main'; 	echo 'deb http://neuro.debian.net/debian data main'; 	echo '#deb-src http://neuro.debian.net/debian-devel stretch main'; } > /etc/apt/sources.list.d/neurodebian.sources.list
```

-	Layers:
	-	`sha256:c75480ad9aafadef6c7faf829ede40cf2fa990c9308d6cd354d53041b01a7cda`  
		Last Modified: Tue, 20 Jun 2017 20:51:29 GMT  
		Size: 45.1 MB (45139825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac44f58a11d175c3a018ee8fa1c654af905467ed945aeaed4a8c49590c6027df`  
		Last Modified: Sat, 24 Jun 2017 13:48:20 GMT  
		Size: 7.0 MB (7029449 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:011e3ce3b7fa4b1cca3e14c5259714e5af8d9dc3effbfede5b923aeada03577e`  
		Last Modified: Sat, 24 Jun 2017 13:48:19 GMT  
		Size: 3.1 KB (3140 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a275467e8e1dd6b16df72101103b00471f57808d4717fd8889787f52c12b14d7`  
		Last Modified: Sat, 24 Jun 2017 13:48:19 GMT  
		Size: 235.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neurodebian:nd90`

```console
$ docker pull neurodebian@sha256:f9f467e4f7b6e4f1577e3f543443c69c0e94049b463068d4cecc975587b083f6
```

-	Platforms:
	-	linux; amd64

### `neurodebian:nd90` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.2 MB (52172649 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9715ebe297b57f786c21cd62c54ae65ac3060a8598a4690c8754a09d50209416`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Jun 2017 20:24:09 GMT
ADD file:93a0dbb6973bc13e5478292bfe283ff91745ca6e23b6fd3363f0661c45deb1ec in / 
# Tue, 20 Jun 2017 20:24:10 GMT
CMD ["bash"]
# Fri, 23 Jun 2017 00:53:40 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg2 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 00:53:44 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& gpg --export DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/trusted.gpg.d/neurodebian.gpg 	&& rm -rf "$GNUPGHOME" 	&& apt-key list | grep neurodebian
# Fri, 23 Jun 2017 00:53:46 GMT
RUN { 	echo 'deb http://neuro.debian.net/debian stretch main'; 	echo 'deb http://neuro.debian.net/debian data main'; 	echo '#deb-src http://neuro.debian.net/debian-devel stretch main'; } > /etc/apt/sources.list.d/neurodebian.sources.list
```

-	Layers:
	-	`sha256:c75480ad9aafadef6c7faf829ede40cf2fa990c9308d6cd354d53041b01a7cda`  
		Last Modified: Tue, 20 Jun 2017 20:51:29 GMT  
		Size: 45.1 MB (45139825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac44f58a11d175c3a018ee8fa1c654af905467ed945aeaed4a8c49590c6027df`  
		Last Modified: Sat, 24 Jun 2017 13:48:20 GMT  
		Size: 7.0 MB (7029449 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:011e3ce3b7fa4b1cca3e14c5259714e5af8d9dc3effbfede5b923aeada03577e`  
		Last Modified: Sat, 24 Jun 2017 13:48:19 GMT  
		Size: 3.1 KB (3140 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a275467e8e1dd6b16df72101103b00471f57808d4717fd8889787f52c12b14d7`  
		Last Modified: Sat, 24 Jun 2017 13:48:19 GMT  
		Size: 235.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neurodebian:sid`

```console
$ docker pull neurodebian@sha256:de099cdea81dd4a0c4b412a1e60a38935ffaaae843218c75629c0e9e0bb34488
```

-	Platforms:
	-	linux; amd64

### `neurodebian:sid` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.6 MB (52637659 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8eb5103b0d889c9ef582a86159f6741349b2177c6da72908037ced9c2e07249f`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Jun 2017 20:20:10 GMT
ADD file:f1ecd61b58b0033ca44bae2e926027ea8f983690afae114fa2d6909514c1e660 in / 
# Tue, 20 Jun 2017 20:20:11 GMT
CMD ["bash"]
# Fri, 23 Jun 2017 00:54:20 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg2 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 00:54:24 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& gpg --export DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/trusted.gpg.d/neurodebian.gpg 	&& rm -rf "$GNUPGHOME" 	&& apt-key list | grep neurodebian
# Fri, 23 Jun 2017 00:54:26 GMT
RUN { 	echo 'deb http://neuro.debian.net/debian sid main'; 	echo 'deb http://neuro.debian.net/debian data main'; 	echo '#deb-src http://neuro.debian.net/debian-devel sid main'; } > /etc/apt/sources.list.d/neurodebian.sources.list
```

-	Layers:
	-	`sha256:f836f6e9bd1ef868da87e8fdcd0443c718f899e6da05effb84bb370ddc2c039f`  
		Last Modified: Tue, 20 Jun 2017 20:43:38 GMT  
		Size: 45.2 MB (45198775 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36da88e31a81552a55c7a2243d8ceff7c94fbe483f58fd10a064c438e3405a0e`  
		Last Modified: Sat, 24 Jun 2017 13:49:20 GMT  
		Size: 7.4 MB (7435512 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36d89eb8c6c1e812f9f4914319cd7da4d959f49973b556a715e5c50e656bed3a`  
		Last Modified: Sat, 24 Jun 2017 13:49:18 GMT  
		Size: 3.1 KB (3138 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6eec0a333704b2ff4197cd32810314f0eb0c801980055a7314713a437a79d569`  
		Last Modified: Sat, 24 Jun 2017 13:49:18 GMT  
		Size: 234.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neurodebian:nd`

```console
$ docker pull neurodebian@sha256:de099cdea81dd4a0c4b412a1e60a38935ffaaae843218c75629c0e9e0bb34488
```

-	Platforms:
	-	linux; amd64

### `neurodebian:nd` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.6 MB (52637659 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8eb5103b0d889c9ef582a86159f6741349b2177c6da72908037ced9c2e07249f`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Jun 2017 20:20:10 GMT
ADD file:f1ecd61b58b0033ca44bae2e926027ea8f983690afae114fa2d6909514c1e660 in / 
# Tue, 20 Jun 2017 20:20:11 GMT
CMD ["bash"]
# Fri, 23 Jun 2017 00:54:20 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg2 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 00:54:24 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& gpg --export DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/trusted.gpg.d/neurodebian.gpg 	&& rm -rf "$GNUPGHOME" 	&& apt-key list | grep neurodebian
# Fri, 23 Jun 2017 00:54:26 GMT
RUN { 	echo 'deb http://neuro.debian.net/debian sid main'; 	echo 'deb http://neuro.debian.net/debian data main'; 	echo '#deb-src http://neuro.debian.net/debian-devel sid main'; } > /etc/apt/sources.list.d/neurodebian.sources.list
```

-	Layers:
	-	`sha256:f836f6e9bd1ef868da87e8fdcd0443c718f899e6da05effb84bb370ddc2c039f`  
		Last Modified: Tue, 20 Jun 2017 20:43:38 GMT  
		Size: 45.2 MB (45198775 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36da88e31a81552a55c7a2243d8ceff7c94fbe483f58fd10a064c438e3405a0e`  
		Last Modified: Sat, 24 Jun 2017 13:49:20 GMT  
		Size: 7.4 MB (7435512 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36d89eb8c6c1e812f9f4914319cd7da4d959f49973b556a715e5c50e656bed3a`  
		Last Modified: Sat, 24 Jun 2017 13:49:18 GMT  
		Size: 3.1 KB (3138 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6eec0a333704b2ff4197cd32810314f0eb0c801980055a7314713a437a79d569`  
		Last Modified: Sat, 24 Jun 2017 13:49:18 GMT  
		Size: 234.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
