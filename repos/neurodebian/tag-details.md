<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

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
$ docker pull neurodebian@sha256:b6bca32e516fad6309b5cb634941e5cded5be0bbbb6ee7df650966afd775de51
```

-	Platforms:
	-	linux; amd64

### `neurodebian:precise` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.2 MB (39156597 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:53336aea67008ff7aec29f424e3ac718a75c2511173606ade919efe66c0feffc`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 26 Sep 2016 21:25:47 GMT
ADD file:bdf72fc0b3a15cd302c82805976b19db5411813d254365a8c4747ea725f996f2 in / 
# Mon, 26 Sep 2016 21:25:48 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 26 Sep 2016 21:25:49 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 26 Sep 2016 21:25:50 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Mon, 26 Sep 2016 21:25:51 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 26 Sep 2016 21:25:51 GMT
CMD ["/bin/bash"]
# Mon, 26 Sep 2016 21:54:25 GMT
RUN which gpg || { apt-get update && apt-get install -y --no-install-recommends gnupg dirmngr && rm -rf /var/lib/apt/lists/*; }
# Mon, 26 Sep 2016 21:54:26 GMT
RUN echo 'deb http://neuro.debian.net/debian precise main' > /etc/apt/sources.list.d/neurodebian.sources.list
# Mon, 26 Sep 2016 21:54:27 GMT
RUN echo 'deb http://neuro.debian.net/debian data main' >> /etc/apt/sources.list.d/neurodebian.sources.list
# Mon, 26 Sep 2016 21:54:28 GMT
RUN echo '#deb-src http://neuro.debian.net/debian-devel precise main' >> /etc/apt/sources.list.d/neurodebian.sources.list
# Mon, 26 Sep 2016 21:54:29 GMT
RUN apt-key adv --recv-keys --keyserver pgp.mit.edu 0xA5D32F012649A5A9
```

-	Layers:
	-	`sha256:36cef014d5d470035ece40ed7cd930edc93631b6dae147886c90370b514e82af`  
		Last Modified: Mon, 26 Sep 2016 21:26:57 GMT  
		Size: 39.1 MB (39081844 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d99ad4de1d223a1da439939c2dbaefcdd4629deaccf1a226e90192d77010ebb`  
		Last Modified: Mon, 26 Sep 2016 21:26:47 GMT  
		Size: 57.9 KB (57935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e32dbf1ab94979e94b82c84cf144b48588d5171593546170307e1709d7de76c`  
		Last Modified: Mon, 26 Sep 2016 21:26:46 GMT  
		Size: 419.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44710c456ffc78f0534a26c5981042772cfbc6006a59bffbebecf98cf953c476`  
		Last Modified: Mon, 26 Sep 2016 21:26:46 GMT  
		Size: 682.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56e70ac3b314500b3da39498c9489030e953cbf928637869ae3fad475a29c47b`  
		Last Modified: Mon, 26 Sep 2016 21:26:46 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cea1cde563099f7792060702c2d07af81fad99402862beda9feedbf4b146946c`  
		Last Modified: Mon, 26 Sep 2016 21:54:38 GMT  
		Size: 212.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5b20526abc17c25bb145c7a30c560047c4935c565b25f6b30abd8559d27b43d`  
		Last Modified: Mon, 26 Sep 2016 21:54:38 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ebca6a69838d9070f16beb068b83a1ecd4b5fe4433daaa89fcf8cf0931ccc86`  
		Last Modified: Mon, 26 Sep 2016 21:54:37 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64dcdf222b8efc49a155e9e331fa970649490dd3d4a6111855becf501e688f9e`  
		Last Modified: Mon, 26 Sep 2016 21:54:38 GMT  
		Size: 14.9 KB (14883 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neurodebian:nd12.04`

```console
$ docker pull neurodebian@sha256:b6bca32e516fad6309b5cb634941e5cded5be0bbbb6ee7df650966afd775de51
```

-	Platforms:
	-	linux; amd64

### `neurodebian:nd12.04` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.2 MB (39156597 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:53336aea67008ff7aec29f424e3ac718a75c2511173606ade919efe66c0feffc`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 26 Sep 2016 21:25:47 GMT
ADD file:bdf72fc0b3a15cd302c82805976b19db5411813d254365a8c4747ea725f996f2 in / 
# Mon, 26 Sep 2016 21:25:48 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 26 Sep 2016 21:25:49 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 26 Sep 2016 21:25:50 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Mon, 26 Sep 2016 21:25:51 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 26 Sep 2016 21:25:51 GMT
CMD ["/bin/bash"]
# Mon, 26 Sep 2016 21:54:25 GMT
RUN which gpg || { apt-get update && apt-get install -y --no-install-recommends gnupg dirmngr && rm -rf /var/lib/apt/lists/*; }
# Mon, 26 Sep 2016 21:54:26 GMT
RUN echo 'deb http://neuro.debian.net/debian precise main' > /etc/apt/sources.list.d/neurodebian.sources.list
# Mon, 26 Sep 2016 21:54:27 GMT
RUN echo 'deb http://neuro.debian.net/debian data main' >> /etc/apt/sources.list.d/neurodebian.sources.list
# Mon, 26 Sep 2016 21:54:28 GMT
RUN echo '#deb-src http://neuro.debian.net/debian-devel precise main' >> /etc/apt/sources.list.d/neurodebian.sources.list
# Mon, 26 Sep 2016 21:54:29 GMT
RUN apt-key adv --recv-keys --keyserver pgp.mit.edu 0xA5D32F012649A5A9
```

-	Layers:
	-	`sha256:36cef014d5d470035ece40ed7cd930edc93631b6dae147886c90370b514e82af`  
		Last Modified: Mon, 26 Sep 2016 21:26:57 GMT  
		Size: 39.1 MB (39081844 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d99ad4de1d223a1da439939c2dbaefcdd4629deaccf1a226e90192d77010ebb`  
		Last Modified: Mon, 26 Sep 2016 21:26:47 GMT  
		Size: 57.9 KB (57935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e32dbf1ab94979e94b82c84cf144b48588d5171593546170307e1709d7de76c`  
		Last Modified: Mon, 26 Sep 2016 21:26:46 GMT  
		Size: 419.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44710c456ffc78f0534a26c5981042772cfbc6006a59bffbebecf98cf953c476`  
		Last Modified: Mon, 26 Sep 2016 21:26:46 GMT  
		Size: 682.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56e70ac3b314500b3da39498c9489030e953cbf928637869ae3fad475a29c47b`  
		Last Modified: Mon, 26 Sep 2016 21:26:46 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cea1cde563099f7792060702c2d07af81fad99402862beda9feedbf4b146946c`  
		Last Modified: Mon, 26 Sep 2016 21:54:38 GMT  
		Size: 212.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5b20526abc17c25bb145c7a30c560047c4935c565b25f6b30abd8559d27b43d`  
		Last Modified: Mon, 26 Sep 2016 21:54:38 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ebca6a69838d9070f16beb068b83a1ecd4b5fe4433daaa89fcf8cf0931ccc86`  
		Last Modified: Mon, 26 Sep 2016 21:54:37 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64dcdf222b8efc49a155e9e331fa970649490dd3d4a6111855becf501e688f9e`  
		Last Modified: Mon, 26 Sep 2016 21:54:38 GMT  
		Size: 14.9 KB (14883 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neurodebian:trusty`

```console
$ docker pull neurodebian@sha256:91357ae9e095f6ba919e04c03a91dba99c73c23a104d1d8199d2ee8b6ab11ebf
```

-	Platforms:
	-	linux; amd64

### `neurodebian:trusty` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **65.8 MB (65791210 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c9a87a01ec67b8f6a2f8e149ceb7b3b72084e9b694a4b2db18d5a3ba638fa11d`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 13 Oct 2016 21:13:01 GMT
ADD file:bc2e0eb31424a88aadc42486b6762c321e3457527daa43bcad45819d38c3a2ed in / 
# Thu, 13 Oct 2016 21:13:02 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 13 Oct 2016 21:13:03 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 13 Oct 2016 21:13:04 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 13 Oct 2016 21:13:05 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 13 Oct 2016 21:13:06 GMT
CMD ["/bin/bash"]
# Thu, 13 Oct 2016 22:01:02 GMT
RUN which gpg || { apt-get update && apt-get install -y --no-install-recommends gnupg dirmngr && rm -rf /var/lib/apt/lists/*; }
# Thu, 13 Oct 2016 22:01:03 GMT
RUN echo 'deb http://neuro.debian.net/debian trusty main' > /etc/apt/sources.list.d/neurodebian.sources.list
# Thu, 13 Oct 2016 22:01:04 GMT
RUN echo 'deb http://neuro.debian.net/debian data main' >> /etc/apt/sources.list.d/neurodebian.sources.list
# Thu, 13 Oct 2016 22:01:05 GMT
RUN echo '#deb-src http://neuro.debian.net/debian-devel trusty main' >> /etc/apt/sources.list.d/neurodebian.sources.list
# Thu, 13 Oct 2016 22:01:06 GMT
RUN apt-key adv --recv-keys --keyserver pgp.mit.edu 0xA5D32F012649A5A9
```

-	Layers:
	-	`sha256:bf5d463153227eaf2c0a3d3f479bb5f2357f060fbce8088e61b2329d3d312d0c`  
		Last Modified: Thu, 13 Oct 2016 21:14:45 GMT  
		Size: 65.7 MB (65703010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f13e0ac480c2c862ae7aca8536bf2250b4d410468e6d33dc2f8ade1d368e184`  
		Last Modified: Thu, 13 Oct 2016 21:14:23 GMT  
		Size: 71.5 KB (71550 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8988b5b3097ba5b9f10f45cd3545adea8b70bf9779f987d5b99cca08be818c3`  
		Last Modified: Thu, 13 Oct 2016 21:14:22 GMT  
		Size: 364.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40af181810e71ae2b871c81aed2bc990d2748f0e11adedda056f12cb4af08712`  
		Last Modified: Thu, 13 Oct 2016 21:14:23 GMT  
		Size: 678.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6f7c7e5c03ef6687a44551a4675336e6500f5379f4cc7e5b14b20ac05f127c4`  
		Last Modified: Thu, 13 Oct 2016 21:14:22 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc8e2b509dcaad161b30a66ea1273afbaabe04906bfab8d7a886a67f1ca1d725`  
		Last Modified: Thu, 13 Oct 2016 22:01:15 GMT  
		Size: 211.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6dd33b9541271e698e6897ad6d8d7f31ff8ea9176288a99d8fea33354fe68d42`  
		Last Modified: Thu, 13 Oct 2016 22:01:15 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a67b3347fe9039c3bbdd35dd486c23592c2a99bcf7f1380304d7b01963eec7f6`  
		Last Modified: Thu, 13 Oct 2016 22:01:15 GMT  
		Size: 236.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbe17865e01d71b8bfb1f07ad750a6e9de9aed88fc8547d8f5db4db96be103c9`  
		Last Modified: Thu, 13 Oct 2016 22:01:15 GMT  
		Size: 14.8 KB (14777 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neurodebian:nd14.04`

```console
$ docker pull neurodebian@sha256:91357ae9e095f6ba919e04c03a91dba99c73c23a104d1d8199d2ee8b6ab11ebf
```

-	Platforms:
	-	linux; amd64

### `neurodebian:nd14.04` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **65.8 MB (65791210 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c9a87a01ec67b8f6a2f8e149ceb7b3b72084e9b694a4b2db18d5a3ba638fa11d`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 13 Oct 2016 21:13:01 GMT
ADD file:bc2e0eb31424a88aadc42486b6762c321e3457527daa43bcad45819d38c3a2ed in / 
# Thu, 13 Oct 2016 21:13:02 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 13 Oct 2016 21:13:03 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 13 Oct 2016 21:13:04 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 13 Oct 2016 21:13:05 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 13 Oct 2016 21:13:06 GMT
CMD ["/bin/bash"]
# Thu, 13 Oct 2016 22:01:02 GMT
RUN which gpg || { apt-get update && apt-get install -y --no-install-recommends gnupg dirmngr && rm -rf /var/lib/apt/lists/*; }
# Thu, 13 Oct 2016 22:01:03 GMT
RUN echo 'deb http://neuro.debian.net/debian trusty main' > /etc/apt/sources.list.d/neurodebian.sources.list
# Thu, 13 Oct 2016 22:01:04 GMT
RUN echo 'deb http://neuro.debian.net/debian data main' >> /etc/apt/sources.list.d/neurodebian.sources.list
# Thu, 13 Oct 2016 22:01:05 GMT
RUN echo '#deb-src http://neuro.debian.net/debian-devel trusty main' >> /etc/apt/sources.list.d/neurodebian.sources.list
# Thu, 13 Oct 2016 22:01:06 GMT
RUN apt-key adv --recv-keys --keyserver pgp.mit.edu 0xA5D32F012649A5A9
```

-	Layers:
	-	`sha256:bf5d463153227eaf2c0a3d3f479bb5f2357f060fbce8088e61b2329d3d312d0c`  
		Last Modified: Thu, 13 Oct 2016 21:14:45 GMT  
		Size: 65.7 MB (65703010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f13e0ac480c2c862ae7aca8536bf2250b4d410468e6d33dc2f8ade1d368e184`  
		Last Modified: Thu, 13 Oct 2016 21:14:23 GMT  
		Size: 71.5 KB (71550 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8988b5b3097ba5b9f10f45cd3545adea8b70bf9779f987d5b99cca08be818c3`  
		Last Modified: Thu, 13 Oct 2016 21:14:22 GMT  
		Size: 364.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40af181810e71ae2b871c81aed2bc990d2748f0e11adedda056f12cb4af08712`  
		Last Modified: Thu, 13 Oct 2016 21:14:23 GMT  
		Size: 678.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6f7c7e5c03ef6687a44551a4675336e6500f5379f4cc7e5b14b20ac05f127c4`  
		Last Modified: Thu, 13 Oct 2016 21:14:22 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc8e2b509dcaad161b30a66ea1273afbaabe04906bfab8d7a886a67f1ca1d725`  
		Last Modified: Thu, 13 Oct 2016 22:01:15 GMT  
		Size: 211.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6dd33b9541271e698e6897ad6d8d7f31ff8ea9176288a99d8fea33354fe68d42`  
		Last Modified: Thu, 13 Oct 2016 22:01:15 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a67b3347fe9039c3bbdd35dd486c23592c2a99bcf7f1380304d7b01963eec7f6`  
		Last Modified: Thu, 13 Oct 2016 22:01:15 GMT  
		Size: 236.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbe17865e01d71b8bfb1f07ad750a6e9de9aed88fc8547d8f5db4db96be103c9`  
		Last Modified: Thu, 13 Oct 2016 22:01:15 GMT  
		Size: 14.8 KB (14777 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neurodebian:xenial`

```console
$ docker pull neurodebian@sha256:437dcb9abe74194f729f3e04247272b31a0f4a5fe49601471b8f4c2dcb2478e5
```

-	Platforms:
	-	linux; amd64

### `neurodebian:xenial` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.9 MB (49884482 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee701bb5a3c54af249bb65ae9ef78824aabd202dfe0e4c7ba15aa756ebfe2f5c`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 13 Oct 2016 21:13:17 GMT
ADD file:b1cd0e54ba28cb1d6db4b93f98d5e02f5e2bcd96c55cb91731ba499861001e30 in / 
# Thu, 13 Oct 2016 21:13:18 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 13 Oct 2016 21:13:19 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 13 Oct 2016 21:13:20 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 13 Oct 2016 21:13:21 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 13 Oct 2016 21:13:21 GMT
CMD ["/bin/bash"]
# Thu, 13 Oct 2016 22:01:34 GMT
RUN which gpg || { apt-get update && apt-get install -y --no-install-recommends gnupg dirmngr && rm -rf /var/lib/apt/lists/*; }
# Thu, 13 Oct 2016 22:01:35 GMT
RUN echo 'deb http://neuro.debian.net/debian xenial main' > /etc/apt/sources.list.d/neurodebian.sources.list
# Thu, 13 Oct 2016 22:01:36 GMT
RUN echo 'deb http://neuro.debian.net/debian data main' >> /etc/apt/sources.list.d/neurodebian.sources.list
# Thu, 13 Oct 2016 22:01:37 GMT
RUN echo '#deb-src http://neuro.debian.net/debian-devel xenial main' >> /etc/apt/sources.list.d/neurodebian.sources.list
# Thu, 13 Oct 2016 22:01:38 GMT
RUN apt-key adv --recv-keys --keyserver pgp.mit.edu 0xA5D32F012649A5A9
```

-	Layers:
	-	`sha256:6bbedd9b76a496816d86a0af731ea984f40467ef8fb23be752f801cb80436ac6`  
		Last Modified: Wed, 12 Oct 2016 16:22:30 GMT  
		Size: 49.9 MB (49866926 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc19d60a83f11bbddc7bd2dfca6095b49100314bfde61d83729112a6b6e11d48`  
		Last Modified: Thu, 13 Oct 2016 21:15:32 GMT  
		Size: 824.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de413bb911fd848383ef2e5068a42c258c898d6ee869fb441fb2391eb327b576`  
		Last Modified: Thu, 13 Oct 2016 21:15:31 GMT  
		Size: 444.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2879a7ad31445fe2cea410b8ba76704003c11ee05c0a4d32d1113009ea1a1aae`  
		Last Modified: Thu, 13 Oct 2016 21:15:31 GMT  
		Size: 678.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:668604fde02e75dddb4b44c80d4ce20baaac4832c41c3a945f4a236cd7d2f164`  
		Last Modified: Thu, 13 Oct 2016 21:15:31 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63121d3e14ee6651cf75bef96bbb43c0ed0339c0c348012ffdd012540aba1d43`  
		Last Modified: Thu, 13 Oct 2016 22:01:46 GMT  
		Size: 211.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7324fd1256fc4ca8bc91c3ee0fe365dda889efc4ba95d381f199e15ad011a6a6`  
		Last Modified: Thu, 13 Oct 2016 22:01:46 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15636027c6e37d6a19563dc876539e12a53851f1599233fa8e047f0f9aac264d`  
		Last Modified: Thu, 13 Oct 2016 22:01:46 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e82292bc0c615784b16e893d7aa26471efafe5475759da4355ea11474ea2b8af`  
		Last Modified: Thu, 13 Oct 2016 22:01:46 GMT  
		Size: 14.8 KB (14783 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neurodebian:nd16.04`

```console
$ docker pull neurodebian@sha256:437dcb9abe74194f729f3e04247272b31a0f4a5fe49601471b8f4c2dcb2478e5
```

-	Platforms:
	-	linux; amd64

### `neurodebian:nd16.04` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.9 MB (49884482 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee701bb5a3c54af249bb65ae9ef78824aabd202dfe0e4c7ba15aa756ebfe2f5c`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 13 Oct 2016 21:13:17 GMT
ADD file:b1cd0e54ba28cb1d6db4b93f98d5e02f5e2bcd96c55cb91731ba499861001e30 in / 
# Thu, 13 Oct 2016 21:13:18 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 13 Oct 2016 21:13:19 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 13 Oct 2016 21:13:20 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 13 Oct 2016 21:13:21 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 13 Oct 2016 21:13:21 GMT
CMD ["/bin/bash"]
# Thu, 13 Oct 2016 22:01:34 GMT
RUN which gpg || { apt-get update && apt-get install -y --no-install-recommends gnupg dirmngr && rm -rf /var/lib/apt/lists/*; }
# Thu, 13 Oct 2016 22:01:35 GMT
RUN echo 'deb http://neuro.debian.net/debian xenial main' > /etc/apt/sources.list.d/neurodebian.sources.list
# Thu, 13 Oct 2016 22:01:36 GMT
RUN echo 'deb http://neuro.debian.net/debian data main' >> /etc/apt/sources.list.d/neurodebian.sources.list
# Thu, 13 Oct 2016 22:01:37 GMT
RUN echo '#deb-src http://neuro.debian.net/debian-devel xenial main' >> /etc/apt/sources.list.d/neurodebian.sources.list
# Thu, 13 Oct 2016 22:01:38 GMT
RUN apt-key adv --recv-keys --keyserver pgp.mit.edu 0xA5D32F012649A5A9
```

-	Layers:
	-	`sha256:6bbedd9b76a496816d86a0af731ea984f40467ef8fb23be752f801cb80436ac6`  
		Last Modified: Wed, 12 Oct 2016 16:22:30 GMT  
		Size: 49.9 MB (49866926 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc19d60a83f11bbddc7bd2dfca6095b49100314bfde61d83729112a6b6e11d48`  
		Last Modified: Thu, 13 Oct 2016 21:15:32 GMT  
		Size: 824.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de413bb911fd848383ef2e5068a42c258c898d6ee869fb441fb2391eb327b576`  
		Last Modified: Thu, 13 Oct 2016 21:15:31 GMT  
		Size: 444.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2879a7ad31445fe2cea410b8ba76704003c11ee05c0a4d32d1113009ea1a1aae`  
		Last Modified: Thu, 13 Oct 2016 21:15:31 GMT  
		Size: 678.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:668604fde02e75dddb4b44c80d4ce20baaac4832c41c3a945f4a236cd7d2f164`  
		Last Modified: Thu, 13 Oct 2016 21:15:31 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63121d3e14ee6651cf75bef96bbb43c0ed0339c0c348012ffdd012540aba1d43`  
		Last Modified: Thu, 13 Oct 2016 22:01:46 GMT  
		Size: 211.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7324fd1256fc4ca8bc91c3ee0fe365dda889efc4ba95d381f199e15ad011a6a6`  
		Last Modified: Thu, 13 Oct 2016 22:01:46 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15636027c6e37d6a19563dc876539e12a53851f1599233fa8e047f0f9aac264d`  
		Last Modified: Thu, 13 Oct 2016 22:01:46 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e82292bc0c615784b16e893d7aa26471efafe5475759da4355ea11474ea2b8af`  
		Last Modified: Thu, 13 Oct 2016 22:01:46 GMT  
		Size: 14.8 KB (14783 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neurodebian:yakkety`

```console
$ docker pull neurodebian@sha256:0a351102befcbaaa63d11968e791880bdbc96d28357a563df442ff5ab2b63e6f
```

-	Platforms:
	-	linux; amd64

### `neurodebian:yakkety` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.7 MB (38677073 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aadde1ac1410dadd8a1ae6c6f58105db9d7fdc3a5917f891d3a668f55b3f2da8`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 26 Aug 2016 18:50:47 GMT
ADD file:4129088380d8c54cbb9b6f3499246785b46ec2f7a98ff7164ff438f1713984bd in /
# Fri, 26 Aug 2016 18:50:55 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 26 Aug 2016 18:50:57 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 26 Aug 2016 18:50:59 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 26 Aug 2016 18:51:01 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 26 Aug 2016 18:51:02 GMT
CMD ["/bin/bash"]
# Fri, 26 Aug 2016 22:00:03 GMT
RUN which gpg || { apt-get update && apt-get install -y --no-install-recommends gnupg dirmngr && rm -rf /var/lib/apt/lists/*; }
# Fri, 26 Aug 2016 22:00:06 GMT
RUN echo 'deb http://neuro.debian.net/debian yakkety main' > /etc/apt/sources.list.d/neurodebian.sources.list
# Fri, 26 Aug 2016 22:00:09 GMT
RUN echo 'deb http://neuro.debian.net/debian data main' >> /etc/apt/sources.list.d/neurodebian.sources.list
# Fri, 26 Aug 2016 22:00:12 GMT
RUN echo '#deb-src http://neuro.debian.net/debian-devel yakkety main' >> /etc/apt/sources.list.d/neurodebian.sources.list
# Fri, 26 Aug 2016 22:00:16 GMT
RUN apt-key adv --recv-keys --keyserver pgp.mit.edu 0xA5D32F012649A5A9
```

-	Layers:
	-	`sha256:f583af237fda4b58cc915a396ebda2f5b70ff2eb414fae363d15dc5839adb790`  
		Last Modified: Fri, 26 Aug 2016 18:56:49 GMT  
		Size: 38.7 MB (38659368 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a3c71f0cd1be4b7325bfbed108eb201096ac0d6e51bfbee5bec6620ddb404d3`  
		Last Modified: Fri, 26 Aug 2016 18:56:35 GMT  
		Size: 825.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6821ef4963983cd8dee14e1c92cc84d7ccd3c8a7b7b7272802bdb88a9a6570a`  
		Last Modified: Fri, 26 Aug 2016 18:56:35 GMT  
		Size: 395.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:505805ea72be433807b287fcdfbc2d5b48b046bde34586bcaac5d961b375c61d`  
		Last Modified: Fri, 26 Aug 2016 18:56:37 GMT  
		Size: 863.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe9cafb0d27b5357597cf2fe4ba0e4d08f0009d5cf38953a30298ab2867ecc87`  
		Last Modified: Fri, 26 Aug 2016 18:56:35 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e912f15ee96835b4b79ca848bd719a6e5b91e41437ae9dcd2dd146d24894f99`  
		Last Modified: Fri, 26 Aug 2016 22:03:36 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a88d1eced1870e4a0cb9532b143a79358ef1cac1d010fe836025c2bc77fea7c7`  
		Last Modified: Fri, 26 Aug 2016 22:03:36 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c62dbf7d2fc19572d04c9decf5071cfbe7cdda1e2550e85e22fd47742046a51`  
		Last Modified: Fri, 26 Aug 2016 22:03:37 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29e3d4af3849a8a1c65a5294641ca833a1c2fe1dcae20c82500671d64afd383a`  
		Last Modified: Fri, 26 Aug 2016 22:03:36 GMT  
		Size: 14.8 KB (14782 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neurodebian:nd16.10`

```console
$ docker pull neurodebian@sha256:0a351102befcbaaa63d11968e791880bdbc96d28357a563df442ff5ab2b63e6f
```

-	Platforms:
	-	linux; amd64

### `neurodebian:nd16.10` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.7 MB (38677073 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aadde1ac1410dadd8a1ae6c6f58105db9d7fdc3a5917f891d3a668f55b3f2da8`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 26 Aug 2016 18:50:47 GMT
ADD file:4129088380d8c54cbb9b6f3499246785b46ec2f7a98ff7164ff438f1713984bd in /
# Fri, 26 Aug 2016 18:50:55 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 26 Aug 2016 18:50:57 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 26 Aug 2016 18:50:59 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 26 Aug 2016 18:51:01 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 26 Aug 2016 18:51:02 GMT
CMD ["/bin/bash"]
# Fri, 26 Aug 2016 22:00:03 GMT
RUN which gpg || { apt-get update && apt-get install -y --no-install-recommends gnupg dirmngr && rm -rf /var/lib/apt/lists/*; }
# Fri, 26 Aug 2016 22:00:06 GMT
RUN echo 'deb http://neuro.debian.net/debian yakkety main' > /etc/apt/sources.list.d/neurodebian.sources.list
# Fri, 26 Aug 2016 22:00:09 GMT
RUN echo 'deb http://neuro.debian.net/debian data main' >> /etc/apt/sources.list.d/neurodebian.sources.list
# Fri, 26 Aug 2016 22:00:12 GMT
RUN echo '#deb-src http://neuro.debian.net/debian-devel yakkety main' >> /etc/apt/sources.list.d/neurodebian.sources.list
# Fri, 26 Aug 2016 22:00:16 GMT
RUN apt-key adv --recv-keys --keyserver pgp.mit.edu 0xA5D32F012649A5A9
```

-	Layers:
	-	`sha256:f583af237fda4b58cc915a396ebda2f5b70ff2eb414fae363d15dc5839adb790`  
		Last Modified: Fri, 26 Aug 2016 18:56:49 GMT  
		Size: 38.7 MB (38659368 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a3c71f0cd1be4b7325bfbed108eb201096ac0d6e51bfbee5bec6620ddb404d3`  
		Last Modified: Fri, 26 Aug 2016 18:56:35 GMT  
		Size: 825.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6821ef4963983cd8dee14e1c92cc84d7ccd3c8a7b7b7272802bdb88a9a6570a`  
		Last Modified: Fri, 26 Aug 2016 18:56:35 GMT  
		Size: 395.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:505805ea72be433807b287fcdfbc2d5b48b046bde34586bcaac5d961b375c61d`  
		Last Modified: Fri, 26 Aug 2016 18:56:37 GMT  
		Size: 863.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe9cafb0d27b5357597cf2fe4ba0e4d08f0009d5cf38953a30298ab2867ecc87`  
		Last Modified: Fri, 26 Aug 2016 18:56:35 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e912f15ee96835b4b79ca848bd719a6e5b91e41437ae9dcd2dd146d24894f99`  
		Last Modified: Fri, 26 Aug 2016 22:03:36 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a88d1eced1870e4a0cb9532b143a79358ef1cac1d010fe836025c2bc77fea7c7`  
		Last Modified: Fri, 26 Aug 2016 22:03:36 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c62dbf7d2fc19572d04c9decf5071cfbe7cdda1e2550e85e22fd47742046a51`  
		Last Modified: Fri, 26 Aug 2016 22:03:37 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29e3d4af3849a8a1c65a5294641ca833a1c2fe1dcae20c82500671d64afd383a`  
		Last Modified: Fri, 26 Aug 2016 22:03:36 GMT  
		Size: 14.8 KB (14782 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neurodebian:wheezy`

```console
$ docker pull neurodebian@sha256:895764057ace95587705a012c473c5088a2bb1d6cb437eac985d37f8dac004b6
```

-	Platforms:
	-	linux; amd64

### `neurodebian:wheezy` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.2 MB (37241396 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f8c4364b2cac180e8920e9092515c32b2f8c7ce48d42819369a48f70483b53b3`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 07 Nov 2016 20:33:23 GMT
ADD file:6fdd763c7bbd245e1c98a3c937b10dcc9b5383d5d0bcda22e8cbfeb6746932da in / 
# Mon, 07 Nov 2016 20:33:24 GMT
CMD ["/bin/bash"]
# Tue, 08 Nov 2016 22:36:54 GMT
RUN which gpg || { apt-get update && apt-get install -y --no-install-recommends gnupg dirmngr && rm -rf /var/lib/apt/lists/*; }
# Tue, 08 Nov 2016 22:37:03 GMT
RUN echo 'deb http://neuro.debian.net/debian wheezy main' > /etc/apt/sources.list.d/neurodebian.sources.list
# Tue, 08 Nov 2016 22:37:11 GMT
RUN echo 'deb http://neuro.debian.net/debian data main' >> /etc/apt/sources.list.d/neurodebian.sources.list
# Tue, 08 Nov 2016 22:37:19 GMT
RUN echo '#deb-src http://neuro.debian.net/debian-devel wheezy main' >> /etc/apt/sources.list.d/neurodebian.sources.list
# Tue, 08 Nov 2016 22:37:28 GMT
RUN apt-key adv --recv-keys --keyserver pgp.mit.edu 0xA5D32F012649A5A9
```

-	Layers:
	-	`sha256:c952bb7239f0af4620e24e9dd88d56be7d4469563f840a911c7721321431d9cb`  
		Last Modified: Mon, 07 Nov 2016 20:42:41 GMT  
		Size: 37.2 MB (37208582 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e118f55972e94668e22128479b1490adf25abaddd9148e6bfc0297f957d15e9b`  
		Last Modified: Tue, 08 Nov 2016 22:37:53 GMT  
		Size: 214.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14c4cfdd579c0045d420c3ef4e8c9f3311cae220257dc0d6f581bcc5f9d5c853`  
		Last Modified: Tue, 08 Nov 2016 22:37:53 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26a257649bd9800871daa330640d01f01f2f9686ba18274705813bdf48701474`  
		Last Modified: Tue, 08 Nov 2016 22:37:54 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39dc51495b3f6c24c7572a8e39ebfd67de72278e24657fdc2b70ea80235eb88c`  
		Last Modified: Tue, 08 Nov 2016 22:37:54 GMT  
		Size: 32.1 KB (32137 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neurodebian:nd70`

```console
$ docker pull neurodebian@sha256:895764057ace95587705a012c473c5088a2bb1d6cb437eac985d37f8dac004b6
```

-	Platforms:
	-	linux; amd64

### `neurodebian:nd70` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.2 MB (37241396 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f8c4364b2cac180e8920e9092515c32b2f8c7ce48d42819369a48f70483b53b3`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 07 Nov 2016 20:33:23 GMT
ADD file:6fdd763c7bbd245e1c98a3c937b10dcc9b5383d5d0bcda22e8cbfeb6746932da in / 
# Mon, 07 Nov 2016 20:33:24 GMT
CMD ["/bin/bash"]
# Tue, 08 Nov 2016 22:36:54 GMT
RUN which gpg || { apt-get update && apt-get install -y --no-install-recommends gnupg dirmngr && rm -rf /var/lib/apt/lists/*; }
# Tue, 08 Nov 2016 22:37:03 GMT
RUN echo 'deb http://neuro.debian.net/debian wheezy main' > /etc/apt/sources.list.d/neurodebian.sources.list
# Tue, 08 Nov 2016 22:37:11 GMT
RUN echo 'deb http://neuro.debian.net/debian data main' >> /etc/apt/sources.list.d/neurodebian.sources.list
# Tue, 08 Nov 2016 22:37:19 GMT
RUN echo '#deb-src http://neuro.debian.net/debian-devel wheezy main' >> /etc/apt/sources.list.d/neurodebian.sources.list
# Tue, 08 Nov 2016 22:37:28 GMT
RUN apt-key adv --recv-keys --keyserver pgp.mit.edu 0xA5D32F012649A5A9
```

-	Layers:
	-	`sha256:c952bb7239f0af4620e24e9dd88d56be7d4469563f840a911c7721321431d9cb`  
		Last Modified: Mon, 07 Nov 2016 20:42:41 GMT  
		Size: 37.2 MB (37208582 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e118f55972e94668e22128479b1490adf25abaddd9148e6bfc0297f957d15e9b`  
		Last Modified: Tue, 08 Nov 2016 22:37:53 GMT  
		Size: 214.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14c4cfdd579c0045d420c3ef4e8c9f3311cae220257dc0d6f581bcc5f9d5c853`  
		Last Modified: Tue, 08 Nov 2016 22:37:53 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26a257649bd9800871daa330640d01f01f2f9686ba18274705813bdf48701474`  
		Last Modified: Tue, 08 Nov 2016 22:37:54 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39dc51495b3f6c24c7572a8e39ebfd67de72278e24657fdc2b70ea80235eb88c`  
		Last Modified: Tue, 08 Nov 2016 22:37:54 GMT  
		Size: 32.1 KB (32137 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neurodebian:jessie`

```console
$ docker pull neurodebian@sha256:59c7557b59bf23ebaf75147e4d2a5a2bf5aaa033f69be9b93dc71887acfbab5f
```

-	Platforms:
	-	linux; amd64

### `neurodebian:jessie` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.4 MB (51360827 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:67dced07ab2168ccd386a4730296410fe58355d5140c584bb51f64521968c5df`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 07 Nov 2016 20:30:25 GMT
ADD file:41ea5187c50116884c38d9ec51d920d79cfaeb2a61c52e07a97f457419a10a4f in / 
# Mon, 07 Nov 2016 20:30:26 GMT
CMD ["/bin/bash"]
# Tue, 08 Nov 2016 22:34:31 GMT
RUN which gpg || { apt-get update && apt-get install -y --no-install-recommends gnupg dirmngr && rm -rf /var/lib/apt/lists/*; }
# Tue, 08 Nov 2016 22:34:32 GMT
RUN echo 'deb http://neuro.debian.net/debian jessie main' > /etc/apt/sources.list.d/neurodebian.sources.list
# Tue, 08 Nov 2016 22:34:40 GMT
RUN echo 'deb http://neuro.debian.net/debian data main' >> /etc/apt/sources.list.d/neurodebian.sources.list
# Tue, 08 Nov 2016 22:34:47 GMT
RUN echo '#deb-src http://neuro.debian.net/debian-devel jessie main' >> /etc/apt/sources.list.d/neurodebian.sources.list
# Tue, 08 Nov 2016 22:34:49 GMT
RUN apt-key adv --recv-keys --keyserver pgp.mit.edu 0xA5D32F012649A5A9
```

-	Layers:
	-	`sha256:386a066cd84a33a04d560c42bef66d1dd64ebfc76de78550e5fd0f8d57778bca`  
		Last Modified: Mon, 07 Nov 2016 20:34:04 GMT  
		Size: 51.4 MB (51356989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71e845620a9411f8e713b9934842d232f4d23e11c832da212bf780b1d3785961`  
		Last Modified: Tue, 08 Nov 2016 22:35:15 GMT  
		Size: 214.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:112076a7b6b7b8ce8111c93fb98f793c7c43532fa02801343ed6a27c71ceedd5`  
		Last Modified: Tue, 08 Nov 2016 22:35:15 GMT  
		Size: 220.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83b63aae6b53ec1c7b3d12980f7d3f7daab13987338edc66135e4360f7c841b1`  
		Last Modified: Tue, 08 Nov 2016 22:35:14 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb1f5ddb763886087c41ad0369c8d5cec79164b6ce32feea7abab59e1d61f670`  
		Last Modified: Tue, 08 Nov 2016 22:35:14 GMT  
		Size: 3.2 KB (3167 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neurodebian:nd80`

```console
$ docker pull neurodebian@sha256:59c7557b59bf23ebaf75147e4d2a5a2bf5aaa033f69be9b93dc71887acfbab5f
```

-	Platforms:
	-	linux; amd64

### `neurodebian:nd80` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.4 MB (51360827 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:67dced07ab2168ccd386a4730296410fe58355d5140c584bb51f64521968c5df`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 07 Nov 2016 20:30:25 GMT
ADD file:41ea5187c50116884c38d9ec51d920d79cfaeb2a61c52e07a97f457419a10a4f in / 
# Mon, 07 Nov 2016 20:30:26 GMT
CMD ["/bin/bash"]
# Tue, 08 Nov 2016 22:34:31 GMT
RUN which gpg || { apt-get update && apt-get install -y --no-install-recommends gnupg dirmngr && rm -rf /var/lib/apt/lists/*; }
# Tue, 08 Nov 2016 22:34:32 GMT
RUN echo 'deb http://neuro.debian.net/debian jessie main' > /etc/apt/sources.list.d/neurodebian.sources.list
# Tue, 08 Nov 2016 22:34:40 GMT
RUN echo 'deb http://neuro.debian.net/debian data main' >> /etc/apt/sources.list.d/neurodebian.sources.list
# Tue, 08 Nov 2016 22:34:47 GMT
RUN echo '#deb-src http://neuro.debian.net/debian-devel jessie main' >> /etc/apt/sources.list.d/neurodebian.sources.list
# Tue, 08 Nov 2016 22:34:49 GMT
RUN apt-key adv --recv-keys --keyserver pgp.mit.edu 0xA5D32F012649A5A9
```

-	Layers:
	-	`sha256:386a066cd84a33a04d560c42bef66d1dd64ebfc76de78550e5fd0f8d57778bca`  
		Last Modified: Mon, 07 Nov 2016 20:34:04 GMT  
		Size: 51.4 MB (51356989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71e845620a9411f8e713b9934842d232f4d23e11c832da212bf780b1d3785961`  
		Last Modified: Tue, 08 Nov 2016 22:35:15 GMT  
		Size: 214.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:112076a7b6b7b8ce8111c93fb98f793c7c43532fa02801343ed6a27c71ceedd5`  
		Last Modified: Tue, 08 Nov 2016 22:35:15 GMT  
		Size: 220.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83b63aae6b53ec1c7b3d12980f7d3f7daab13987338edc66135e4360f7c841b1`  
		Last Modified: Tue, 08 Nov 2016 22:35:14 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb1f5ddb763886087c41ad0369c8d5cec79164b6ce32feea7abab59e1d61f670`  
		Last Modified: Tue, 08 Nov 2016 22:35:14 GMT  
		Size: 3.2 KB (3167 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neurodebian:stretch`

```console
$ docker pull neurodebian@sha256:7e7c1303b6a1a9473f73b635ef416b6839b09d968bac6564e9bf6532591c39f2
```

-	Platforms:
	-	linux; amd64

### `neurodebian:stretch` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.1 MB (49127066 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8083da31be0163d23851b2309fe0d6a082acff1bc7fc8a9674c3e0122965ab06`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 07 Nov 2016 20:32:09 GMT
ADD file:de2806ecf4d136cd7c460d60fea41c6870c8ab6e418e8795696aabe598706b1f in / 
# Mon, 07 Nov 2016 20:32:10 GMT
CMD ["/bin/bash"]
# Tue, 08 Nov 2016 22:38:55 GMT
RUN which gpg || { apt-get update && apt-get install -y --no-install-recommends gnupg dirmngr && rm -rf /var/lib/apt/lists/*; }
# Tue, 08 Nov 2016 22:39:00 GMT
RUN echo 'deb http://neuro.debian.net/debian stretch main' > /etc/apt/sources.list.d/neurodebian.sources.list
# Tue, 08 Nov 2016 22:39:08 GMT
RUN echo 'deb http://neuro.debian.net/debian data main' >> /etc/apt/sources.list.d/neurodebian.sources.list
# Tue, 08 Nov 2016 22:39:16 GMT
RUN echo '#deb-src http://neuro.debian.net/debian-devel stretch main' >> /etc/apt/sources.list.d/neurodebian.sources.list
# Tue, 08 Nov 2016 22:39:19 GMT
RUN apt-key adv --recv-keys --keyserver pgp.mit.edu 0xA5D32F012649A5A9
```

-	Layers:
	-	`sha256:e643679981aeea654a0348b1e068356da942b158b26e3e89a3e0956a1bab37cd`  
		Last Modified: Mon, 07 Nov 2016 20:39:41 GMT  
		Size: 43.2 MB (43247274 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee02f341f4f290ce329d015dadf58fe22bd3bc87e9d21774320fa4f04ca8014c`  
		Last Modified: Tue, 08 Nov 2016 22:39:36 GMT  
		Size: 5.9 MB (5876023 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15b72269a4944083c8ce9f8b5b3439adfff7eb645bdab3b88e3d4f0502bc857e`  
		Last Modified: Tue, 08 Nov 2016 22:39:33 GMT  
		Size: 210.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4edfb8349a6215644f610fa295cee558d64d6fd3e65c86d10c94f6bb852de90a`  
		Last Modified: Tue, 08 Nov 2016 22:39:31 GMT  
		Size: 220.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f1cabf7ce059d1b15feee02fead7ef4c36de8d71bebf05bbe00d44d02929a18`  
		Last Modified: Tue, 08 Nov 2016 22:39:32 GMT  
		Size: 235.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1697a725319c8f8ba296293d0dc6e1e84434c28db7a77b50bdf7f433052ee30`  
		Last Modified: Tue, 08 Nov 2016 22:39:31 GMT  
		Size: 3.1 KB (3104 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neurodebian:nd90`

```console
$ docker pull neurodebian@sha256:b00bb6b606691ec26e7d085f5a5e9ec0dedf34e532118e49cebc30ad62e0ebd8
```

-	Platforms:
	-	linux; amd64

### `neurodebian:nd90` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.0 MB (49979366 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:01cc457b4c2a10281d9679a7b70ee6fadb901e5d1eab5757f74aad45578b8113`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 13 Dec 2016 22:13:38 GMT
ADD file:b8661e5bd7179ac7b23f0013637df93301390246609d446f45217ead261c33bf in / 
# Tue, 13 Dec 2016 22:13:43 GMT
CMD ["/bin/bash"]
# Wed, 14 Dec 2016 20:53:19 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg2 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Dec 2016 21:18:09 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& gpg --export DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/trusted.gpg.d/neurodebian.gpg 	&& rm -r "$GNUPGHOME"
# Wed, 14 Dec 2016 21:18:10 GMT
RUN { 	echo 'deb http://neuro.debian.net/debian stretch main'; 	echo 'deb http://neuro.debian.net/debian data main'; 	echo '#deb-src http://neuro.debian.net/debian-devel stretch main'; } > /etc/apt/sources.list.d/neurodebian.sources.list
```

-	Layers:
	-	`sha256:ca67a6a92c6d53b4eea40b8e1f63130784c8751379ffdc08b680768c57e510bc`  
		Last Modified: Tue, 13 Dec 2016 22:23:25 GMT  
		Size: 43.7 MB (43673589 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e90be1ed2e21cee1a28521e30a6f70d22d584ad01c3f4109b5146002a9a1224`  
		Last Modified: Wed, 14 Dec 2016 21:24:47 GMT  
		Size: 6.3 MB (6302410 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3262aa487958d866f37f3b73a9181c5395b611eab911ffa52338cf1933bc6142`  
		Last Modified: Wed, 14 Dec 2016 21:24:43 GMT  
		Size: 3.1 KB (3132 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7727f024c0e4aeaa70cfffd37b75f56f7cf6474902f652bf041a4238766a38e`  
		Last Modified: Wed, 14 Dec 2016 21:24:42 GMT  
		Size: 235.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neurodebian:sid`

```console
$ docker pull neurodebian@sha256:7bc608be720610ed5e6e1a97decab042ef4c3d493d37fb69bbb2f4658f4584c5
```

-	Platforms:
	-	linux; amd64

### `neurodebian:sid` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.3 MB (50250339 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4b1894cb62fef5005dfeb95e93908af94a3bb3741f0e71aa926056231da73669`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 13 Dec 2016 22:12:19 GMT
ADD file:1ec9813ae98ad32fbb472ab2d0a10bfffc02970b272ce3595007bf94381ea99d in / 
# Tue, 13 Dec 2016 22:12:20 GMT
CMD ["/bin/bash"]
# Wed, 14 Dec 2016 21:18:24 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg2 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Dec 2016 21:20:49 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& gpg --export DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/trusted.gpg.d/neurodebian.gpg 	&& rm -r "$GNUPGHOME"
# Wed, 14 Dec 2016 21:20:49 GMT
RUN { 	echo 'deb http://neuro.debian.net/debian sid main'; 	echo 'deb http://neuro.debian.net/debian data main'; 	echo '#deb-src http://neuro.debian.net/debian-devel sid main'; } > /etc/apt/sources.list.d/neurodebian.sources.list
```

-	Layers:
	-	`sha256:96adffeba9716172608de9e458530715467b8d8a3d22b249de6f7d2f0c6e9f55`  
		Last Modified: Tue, 13 Dec 2016 22:20:27 GMT  
		Size: 43.9 MB (43866938 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:220c04629b2396201aa005a4276b6c6db53b62196848081129209fd822919833`  
		Last Modified: Wed, 14 Dec 2016 21:25:26 GMT  
		Size: 6.4 MB (6380034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b06296a153007d57c9c03477f755af5d2e4887628971815a370e5e290be76d47`  
		Last Modified: Wed, 14 Dec 2016 21:25:26 GMT  
		Size: 3.1 KB (3133 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc82b0db0b9a371f03e1acd7026323df3d851f243c053d491fff26983c5cd844`  
		Last Modified: Wed, 14 Dec 2016 21:25:25 GMT  
		Size: 234.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neurodebian:nd`

```console
$ docker pull neurodebian@sha256:874ccb38d6deec7d0b6425fb96202e66a3ba6a01165d8a5440be7780b7efb19d
```

-	Platforms:
	-	linux; amd64

### `neurodebian:nd` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.2 MB (49156069 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa1c70a710e15544a7896ac5656e95cf22e93b5c707d67af8b8e9ef3a876c452`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 07 Nov 2016 20:31:17 GMT
ADD file:4946b2fd6ad8f6dad8ce2007df355ffa80fbc0d560ac45600bc0305c812bc331 in / 
# Mon, 07 Nov 2016 20:31:17 GMT
CMD ["/bin/bash"]
# Tue, 08 Nov 2016 22:35:55 GMT
RUN which gpg || { apt-get update && apt-get install -y --no-install-recommends gnupg dirmngr && rm -rf /var/lib/apt/lists/*; }
# Tue, 08 Nov 2016 22:35:59 GMT
RUN echo 'deb http://neuro.debian.net/debian sid main' > /etc/apt/sources.list.d/neurodebian.sources.list
# Tue, 08 Nov 2016 22:36:00 GMT
RUN echo 'deb http://neuro.debian.net/debian data main' >> /etc/apt/sources.list.d/neurodebian.sources.list
# Tue, 08 Nov 2016 22:36:01 GMT
RUN echo '#deb-src http://neuro.debian.net/debian-devel sid main' >> /etc/apt/sources.list.d/neurodebian.sources.list
# Tue, 08 Nov 2016 22:36:05 GMT
RUN apt-key adv --recv-keys --keyserver pgp.mit.edu 0xA5D32F012649A5A9
```

-	Layers:
	-	`sha256:2c2697cc54a4087031e91659113de235e6bd969754303465add193727dc03fa6`  
		Last Modified: Mon, 07 Nov 2016 20:37:10 GMT  
		Size: 43.3 MB (43262401 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a385648b3520025a9bb60d6a18b473628fd034b9fb78fe160b176bbce393644`  
		Last Modified: Tue, 08 Nov 2016 22:36:27 GMT  
		Size: 5.9 MB (5889900 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07cf0c0bb1d5f9322e60651349c382fe1859e31682398601e0a897b2dc5156d9`  
		Last Modified: Tue, 08 Nov 2016 22:36:27 GMT  
		Size: 211.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96b5f8be0176c0cc9babfc56afe3c38f68644fc32e28203c3cbefe5d7e418504`  
		Last Modified: Tue, 08 Nov 2016 22:36:26 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e6cae4cfd8b0603aedeec13fc8f92b2e3f17d4769efa55522d9af814aee4450`  
		Last Modified: Tue, 08 Nov 2016 22:36:26 GMT  
		Size: 234.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddecd010024cb6cada9294701dfa2a126d40e0d55a4374d4eee507bd587b217a`  
		Last Modified: Tue, 08 Nov 2016 22:36:25 GMT  
		Size: 3.1 KB (3104 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
