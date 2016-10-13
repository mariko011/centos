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
$ docker pull neurodebian@sha256:b96996b8596d081bb7170cc6409c0f6b698d8135677651d2f6ff3dec04c02f6d
```

-	Platforms:
	-	linux; amd64

### `neurodebian:wheezy` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.2 MB (37247334 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cc19588d2fedcfa1e0babcd134659851e163c9cbe4a85e438083e2bb037ec949`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 19 Sep 2016 17:43:34 GMT
ADD file:b06eab13504d045bfba673dde1c6f5831a875e95146504a385baa101124f58f5 in / 
# Mon, 19 Sep 2016 17:43:35 GMT
CMD ["/bin/bash"]
# Mon, 19 Sep 2016 23:16:13 GMT
RUN which gpg || { apt-get update && apt-get install -y --no-install-recommends gnupg dirmngr && rm -rf /var/lib/apt/lists/*; }
# Mon, 19 Sep 2016 23:16:14 GMT
RUN echo 'deb http://neuro.debian.net/debian wheezy main' > /etc/apt/sources.list.d/neurodebian.sources.list
# Mon, 19 Sep 2016 23:16:14 GMT
RUN echo 'deb http://neuro.debian.net/debian data main' >> /etc/apt/sources.list.d/neurodebian.sources.list
# Mon, 19 Sep 2016 23:16:15 GMT
RUN echo '#deb-src http://neuro.debian.net/debian-devel wheezy main' >> /etc/apt/sources.list.d/neurodebian.sources.list
# Mon, 19 Sep 2016 23:16:16 GMT
RUN apt-key adv --recv-keys --keyserver pgp.mit.edu 0xA5D32F012649A5A9
```

-	Layers:
	-	`sha256:0fbab137f56aaa195d66eae971694eb98df3e4ff6a91eb4fa9905994ef40e5a1`  
		Last Modified: Mon, 19 Sep 2016 17:48:55 GMT  
		Size: 37.2 MB (37214522 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f3645783c47a40e1b7e6758cd3998c627be1acfe150a8da4748e9434147d4ce`  
		Last Modified: Fri, 23 Sep 2016 20:50:19 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04002ab370cabf68d7ce700752d47840e9fadb1008c5331a2fb39041ec380511`  
		Last Modified: Fri, 23 Sep 2016 20:50:18 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:568ea35d1c0de4bcc08950706620fe007645ea4e28fae2c7bb809eeeb90c4c58`  
		Last Modified: Fri, 23 Sep 2016 20:50:18 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:488bbeec3f481f1eccced31af55505077d147021c77bf17e24dca88c02258bed`  
		Last Modified: Fri, 23 Sep 2016 20:50:19 GMT  
		Size: 32.1 KB (32132 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neurodebian:nd70`

```console
$ docker pull neurodebian@sha256:b96996b8596d081bb7170cc6409c0f6b698d8135677651d2f6ff3dec04c02f6d
```

-	Platforms:
	-	linux; amd64

### `neurodebian:nd70` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.2 MB (37247334 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cc19588d2fedcfa1e0babcd134659851e163c9cbe4a85e438083e2bb037ec949`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 19 Sep 2016 17:43:34 GMT
ADD file:b06eab13504d045bfba673dde1c6f5831a875e95146504a385baa101124f58f5 in / 
# Mon, 19 Sep 2016 17:43:35 GMT
CMD ["/bin/bash"]
# Mon, 19 Sep 2016 23:16:13 GMT
RUN which gpg || { apt-get update && apt-get install -y --no-install-recommends gnupg dirmngr && rm -rf /var/lib/apt/lists/*; }
# Mon, 19 Sep 2016 23:16:14 GMT
RUN echo 'deb http://neuro.debian.net/debian wheezy main' > /etc/apt/sources.list.d/neurodebian.sources.list
# Mon, 19 Sep 2016 23:16:14 GMT
RUN echo 'deb http://neuro.debian.net/debian data main' >> /etc/apt/sources.list.d/neurodebian.sources.list
# Mon, 19 Sep 2016 23:16:15 GMT
RUN echo '#deb-src http://neuro.debian.net/debian-devel wheezy main' >> /etc/apt/sources.list.d/neurodebian.sources.list
# Mon, 19 Sep 2016 23:16:16 GMT
RUN apt-key adv --recv-keys --keyserver pgp.mit.edu 0xA5D32F012649A5A9
```

-	Layers:
	-	`sha256:0fbab137f56aaa195d66eae971694eb98df3e4ff6a91eb4fa9905994ef40e5a1`  
		Last Modified: Mon, 19 Sep 2016 17:48:55 GMT  
		Size: 37.2 MB (37214522 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f3645783c47a40e1b7e6758cd3998c627be1acfe150a8da4748e9434147d4ce`  
		Last Modified: Fri, 23 Sep 2016 20:50:19 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04002ab370cabf68d7ce700752d47840e9fadb1008c5331a2fb39041ec380511`  
		Last Modified: Fri, 23 Sep 2016 20:50:18 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:568ea35d1c0de4bcc08950706620fe007645ea4e28fae2c7bb809eeeb90c4c58`  
		Last Modified: Fri, 23 Sep 2016 20:50:18 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:488bbeec3f481f1eccced31af55505077d147021c77bf17e24dca88c02258bed`  
		Last Modified: Fri, 23 Sep 2016 20:50:19 GMT  
		Size: 32.1 KB (32132 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neurodebian:jessie`

```console
$ docker pull neurodebian@sha256:a29107b1e9df310d567aff987fda03ac5ad167e22834dca8027049dc673356c7
```

-	Platforms:
	-	linux; amd64

### `neurodebian:jessie` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.4 MB (51358204 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e734160d3b3a0f89ecbaa709d650bba277bf1cf9d38f45c75e7776c50f090852`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 20:49:05 GMT
RUN which gpg || { apt-get update && apt-get install -y --no-install-recommends gnupg dirmngr && rm -rf /var/lib/apt/lists/*; }
# Fri, 23 Sep 2016 20:49:06 GMT
RUN echo 'deb http://neuro.debian.net/debian jessie main' > /etc/apt/sources.list.d/neurodebian.sources.list
# Fri, 23 Sep 2016 20:49:06 GMT
RUN echo 'deb http://neuro.debian.net/debian data main' >> /etc/apt/sources.list.d/neurodebian.sources.list
# Fri, 23 Sep 2016 20:49:07 GMT
RUN echo '#deb-src http://neuro.debian.net/debian-devel jessie main' >> /etc/apt/sources.list.d/neurodebian.sources.list
# Fri, 23 Sep 2016 20:49:08 GMT
RUN apt-key adv --recv-keys --keyserver pgp.mit.edu 0xA5D32F012649A5A9
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35030452da95817043071c08285ec55c6caef93013fabdc9bc501901ae1d8532`  
		Last Modified: Fri, 23 Sep 2016 20:49:16 GMT  
		Size: 214.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91b00bf8773afc235e7c75f015c1117d4f1217f7d3ad34c852838e1d761d5931`  
		Last Modified: Fri, 23 Sep 2016 20:49:16 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2010075f25befecf9840b6017b016595b9283a0f5ae96425c17daac90e44877`  
		Last Modified: Fri, 23 Sep 2016 20:49:16 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f453478092aa83c134bafbfa060b741ab595e6109e7071caf77b011177b0132e`  
		Last Modified: Fri, 23 Sep 2016 20:49:16 GMT  
		Size: 3.2 KB (3167 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neurodebian:nd80`

```console
$ docker pull neurodebian@sha256:a29107b1e9df310d567aff987fda03ac5ad167e22834dca8027049dc673356c7
```

-	Platforms:
	-	linux; amd64

### `neurodebian:nd80` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.4 MB (51358204 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e734160d3b3a0f89ecbaa709d650bba277bf1cf9d38f45c75e7776c50f090852`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 20:49:05 GMT
RUN which gpg || { apt-get update && apt-get install -y --no-install-recommends gnupg dirmngr && rm -rf /var/lib/apt/lists/*; }
# Fri, 23 Sep 2016 20:49:06 GMT
RUN echo 'deb http://neuro.debian.net/debian jessie main' > /etc/apt/sources.list.d/neurodebian.sources.list
# Fri, 23 Sep 2016 20:49:06 GMT
RUN echo 'deb http://neuro.debian.net/debian data main' >> /etc/apt/sources.list.d/neurodebian.sources.list
# Fri, 23 Sep 2016 20:49:07 GMT
RUN echo '#deb-src http://neuro.debian.net/debian-devel jessie main' >> /etc/apt/sources.list.d/neurodebian.sources.list
# Fri, 23 Sep 2016 20:49:08 GMT
RUN apt-key adv --recv-keys --keyserver pgp.mit.edu 0xA5D32F012649A5A9
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35030452da95817043071c08285ec55c6caef93013fabdc9bc501901ae1d8532`  
		Last Modified: Fri, 23 Sep 2016 20:49:16 GMT  
		Size: 214.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91b00bf8773afc235e7c75f015c1117d4f1217f7d3ad34c852838e1d761d5931`  
		Last Modified: Fri, 23 Sep 2016 20:49:16 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2010075f25befecf9840b6017b016595b9283a0f5ae96425c17daac90e44877`  
		Last Modified: Fri, 23 Sep 2016 20:49:16 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f453478092aa83c134bafbfa060b741ab595e6109e7071caf77b011177b0132e`  
		Last Modified: Fri, 23 Sep 2016 20:49:16 GMT  
		Size: 3.2 KB (3167 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neurodebian:stretch`

```console
$ docker pull neurodebian@sha256:8eddac390e6696a4e6795963e52d3c33e911833ad828cbc1125a3d7c61ceee10
```

-	Platforms:
	-	linux; amd64

### `neurodebian:stretch` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.1 MB (48062309 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8f4bd63ddf33b3e3f257e769018c8eb6c6f632c51a2c09f9e6d5cee0b795a57d`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 23 Sep 2016 18:09:28 GMT
ADD file:7ce6519c11433fef38ac7510dc2d21c40998ab6534cdea84a05c7901b03312b0 in / 
# Fri, 23 Sep 2016 18:09:29 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 20:50:44 GMT
RUN which gpg || { apt-get update && apt-get install -y --no-install-recommends gnupg dirmngr && rm -rf /var/lib/apt/lists/*; }
# Fri, 23 Sep 2016 20:50:45 GMT
RUN echo 'deb http://neuro.debian.net/debian stretch main' > /etc/apt/sources.list.d/neurodebian.sources.list
# Fri, 23 Sep 2016 20:50:46 GMT
RUN echo 'deb http://neuro.debian.net/debian data main' >> /etc/apt/sources.list.d/neurodebian.sources.list
# Fri, 23 Sep 2016 20:50:46 GMT
RUN echo '#deb-src http://neuro.debian.net/debian-devel stretch main' >> /etc/apt/sources.list.d/neurodebian.sources.list
# Fri, 23 Sep 2016 20:50:48 GMT
RUN apt-key adv --recv-keys --keyserver pgp.mit.edu 0xA5D32F012649A5A9
```

-	Layers:
	-	`sha256:1c8605a31c0121c5be301d0e0941e101cf3a2e97d241a5c63665eb1e5f45a8cf`  
		Last Modified: Fri, 23 Sep 2016 18:13:08 GMT  
		Size: 42.6 MB (42646885 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:945eab8fe099e92c5e78407750d152ed9813d0a423dc756df6450810086d2285`  
		Last Modified: Fri, 23 Sep 2016 20:50:57 GMT  
		Size: 5.4 MB (5411648 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3730d71f0c17fbbdfb7a89582e6d9b11932c6e87260895ba06eb565b8e373a2`  
		Last Modified: Fri, 23 Sep 2016 20:50:55 GMT  
		Size: 213.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dce1a92c3666a8dd61140c3d135006a51c18c12a2ef40e41f06e50ec5ef96bb7`  
		Last Modified: Fri, 23 Sep 2016 20:50:55 GMT  
		Size: 220.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e72177e977de0ce46f4c4ffa3b23ad9431fca1f8cdaf45b46512d3b71c442ab`  
		Last Modified: Fri, 23 Sep 2016 20:50:56 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:146e8f2158910aa0d9efa39ac3eb31a088cee744c0cffc4b58c09b69e5d3b2ab`  
		Last Modified: Fri, 23 Sep 2016 20:50:55 GMT  
		Size: 3.1 KB (3105 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neurodebian:nd90`

```console
$ docker pull neurodebian@sha256:8eddac390e6696a4e6795963e52d3c33e911833ad828cbc1125a3d7c61ceee10
```

-	Platforms:
	-	linux; amd64

### `neurodebian:nd90` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.1 MB (48062309 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8f4bd63ddf33b3e3f257e769018c8eb6c6f632c51a2c09f9e6d5cee0b795a57d`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 23 Sep 2016 18:09:28 GMT
ADD file:7ce6519c11433fef38ac7510dc2d21c40998ab6534cdea84a05c7901b03312b0 in / 
# Fri, 23 Sep 2016 18:09:29 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 20:50:44 GMT
RUN which gpg || { apt-get update && apt-get install -y --no-install-recommends gnupg dirmngr && rm -rf /var/lib/apt/lists/*; }
# Fri, 23 Sep 2016 20:50:45 GMT
RUN echo 'deb http://neuro.debian.net/debian stretch main' > /etc/apt/sources.list.d/neurodebian.sources.list
# Fri, 23 Sep 2016 20:50:46 GMT
RUN echo 'deb http://neuro.debian.net/debian data main' >> /etc/apt/sources.list.d/neurodebian.sources.list
# Fri, 23 Sep 2016 20:50:46 GMT
RUN echo '#deb-src http://neuro.debian.net/debian-devel stretch main' >> /etc/apt/sources.list.d/neurodebian.sources.list
# Fri, 23 Sep 2016 20:50:48 GMT
RUN apt-key adv --recv-keys --keyserver pgp.mit.edu 0xA5D32F012649A5A9
```

-	Layers:
	-	`sha256:1c8605a31c0121c5be301d0e0941e101cf3a2e97d241a5c63665eb1e5f45a8cf`  
		Last Modified: Fri, 23 Sep 2016 18:13:08 GMT  
		Size: 42.6 MB (42646885 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:945eab8fe099e92c5e78407750d152ed9813d0a423dc756df6450810086d2285`  
		Last Modified: Fri, 23 Sep 2016 20:50:57 GMT  
		Size: 5.4 MB (5411648 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3730d71f0c17fbbdfb7a89582e6d9b11932c6e87260895ba06eb565b8e373a2`  
		Last Modified: Fri, 23 Sep 2016 20:50:55 GMT  
		Size: 213.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dce1a92c3666a8dd61140c3d135006a51c18c12a2ef40e41f06e50ec5ef96bb7`  
		Last Modified: Fri, 23 Sep 2016 20:50:55 GMT  
		Size: 220.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e72177e977de0ce46f4c4ffa3b23ad9431fca1f8cdaf45b46512d3b71c442ab`  
		Last Modified: Fri, 23 Sep 2016 20:50:56 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:146e8f2158910aa0d9efa39ac3eb31a088cee744c0cffc4b58c09b69e5d3b2ab`  
		Last Modified: Fri, 23 Sep 2016 20:50:55 GMT  
		Size: 3.1 KB (3105 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neurodebian:sid`

```console
$ docker pull neurodebian@sha256:04f474e7f840aa3dd22850f3c5df78609db7760b4668ff29a41e7e09c65ec239
```

-	Platforms:
	-	linux; amd64

### `neurodebian:sid` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.0 MB (48972434 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2f692edd2a9ae789e311e7a0a1c9012ae8ddaca2565fdc21ab43e19424d9f2ad`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 23 Sep 2016 18:09:05 GMT
ADD file:38fc3f9aecc8de28ee67c48e4f26a9dd74b238023b7f92c19da2f642b9d0fc14 in / 
# Fri, 23 Sep 2016 18:09:06 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 20:49:42 GMT
RUN which gpg || { apt-get update && apt-get install -y --no-install-recommends gnupg dirmngr && rm -rf /var/lib/apt/lists/*; }
# Fri, 23 Sep 2016 20:49:43 GMT
RUN echo 'deb http://neuro.debian.net/debian sid main' > /etc/apt/sources.list.d/neurodebian.sources.list
# Fri, 23 Sep 2016 20:49:43 GMT
RUN echo 'deb http://neuro.debian.net/debian data main' >> /etc/apt/sources.list.d/neurodebian.sources.list
# Fri, 23 Sep 2016 20:49:44 GMT
RUN echo '#deb-src http://neuro.debian.net/debian-devel sid main' >> /etc/apt/sources.list.d/neurodebian.sources.list
# Fri, 23 Sep 2016 20:49:48 GMT
RUN apt-key adv --recv-keys --keyserver pgp.mit.edu 0xA5D32F012649A5A9
```

-	Layers:
	-	`sha256:8d7c8b969090899eedb896dfcdfc11e08596be2a94b1ae77609086ede354ab53`  
		Last Modified: Fri, 23 Sep 2016 18:11:54 GMT  
		Size: 43.1 MB (43149672 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be51a2ce539ed6e162963358273e445361a39522fcb1500bf1bd94ce38142130`  
		Last Modified: Fri, 23 Sep 2016 20:49:56 GMT  
		Size: 5.8 MB (5818993 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c0a90c9759705d032197a920971807107255d9db3e281baf45e508922bc16eb`  
		Last Modified: Fri, 23 Sep 2016 20:49:55 GMT  
		Size: 210.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2282d1d12acf21e84f067555b24f5f6e7d0b94805a8e3493ff51c751a4da93f1`  
		Last Modified: Fri, 23 Sep 2016 20:49:55 GMT  
		Size: 220.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6febf55fcd65c7af430b108e3b8484a95a528fce01d2d7839c60cac55ff086c9`  
		Last Modified: Fri, 23 Sep 2016 20:49:55 GMT  
		Size: 234.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3077bd4066c7d5e395a773c7f8a0d4206fcdf1a751a734624e0081817327bfa9`  
		Last Modified: Fri, 23 Sep 2016 20:49:55 GMT  
		Size: 3.1 KB (3105 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neurodebian:nd`

```console
$ docker pull neurodebian@sha256:04f474e7f840aa3dd22850f3c5df78609db7760b4668ff29a41e7e09c65ec239
```

-	Platforms:
	-	linux; amd64

### `neurodebian:nd` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.0 MB (48972434 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2f692edd2a9ae789e311e7a0a1c9012ae8ddaca2565fdc21ab43e19424d9f2ad`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 23 Sep 2016 18:09:05 GMT
ADD file:38fc3f9aecc8de28ee67c48e4f26a9dd74b238023b7f92c19da2f642b9d0fc14 in / 
# Fri, 23 Sep 2016 18:09:06 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 20:49:42 GMT
RUN which gpg || { apt-get update && apt-get install -y --no-install-recommends gnupg dirmngr && rm -rf /var/lib/apt/lists/*; }
# Fri, 23 Sep 2016 20:49:43 GMT
RUN echo 'deb http://neuro.debian.net/debian sid main' > /etc/apt/sources.list.d/neurodebian.sources.list
# Fri, 23 Sep 2016 20:49:43 GMT
RUN echo 'deb http://neuro.debian.net/debian data main' >> /etc/apt/sources.list.d/neurodebian.sources.list
# Fri, 23 Sep 2016 20:49:44 GMT
RUN echo '#deb-src http://neuro.debian.net/debian-devel sid main' >> /etc/apt/sources.list.d/neurodebian.sources.list
# Fri, 23 Sep 2016 20:49:48 GMT
RUN apt-key adv --recv-keys --keyserver pgp.mit.edu 0xA5D32F012649A5A9
```

-	Layers:
	-	`sha256:8d7c8b969090899eedb896dfcdfc11e08596be2a94b1ae77609086ede354ab53`  
		Last Modified: Fri, 23 Sep 2016 18:11:54 GMT  
		Size: 43.1 MB (43149672 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be51a2ce539ed6e162963358273e445361a39522fcb1500bf1bd94ce38142130`  
		Last Modified: Fri, 23 Sep 2016 20:49:56 GMT  
		Size: 5.8 MB (5818993 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c0a90c9759705d032197a920971807107255d9db3e281baf45e508922bc16eb`  
		Last Modified: Fri, 23 Sep 2016 20:49:55 GMT  
		Size: 210.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2282d1d12acf21e84f067555b24f5f6e7d0b94805a8e3493ff51c751a4da93f1`  
		Last Modified: Fri, 23 Sep 2016 20:49:55 GMT  
		Size: 220.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6febf55fcd65c7af430b108e3b8484a95a528fce01d2d7839c60cac55ff086c9`  
		Last Modified: Fri, 23 Sep 2016 20:49:55 GMT  
		Size: 234.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3077bd4066c7d5e395a773c7f8a0d4206fcdf1a751a734624e0081817327bfa9`  
		Last Modified: Fri, 23 Sep 2016 20:49:55 GMT  
		Size: 3.1 KB (3105 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
