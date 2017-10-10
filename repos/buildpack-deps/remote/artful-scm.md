## `buildpack-deps:artful-scm`

```console
$ docker pull buildpack-deps@sha256:2e2d97adb9019c0e295fa7a89e4c3644d19ab2466c8f327d5509bf10243c01b2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `buildpack-deps:artful-scm` - linux; amd64

```console
$ docker pull buildpack-deps@sha256:d8d70631cd75d43a3702809ab73b7893b3d52a1cd166825f0737dde78c14d8fc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **90.9 MB (90890020 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:47e5b908527b61a0b85fca708e691be51b7787f005bba7d4b9de1853e9efaa37`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 10 Oct 2017 20:58:29 GMT
ADD file:817fdd6d6f5cbc7c69b79f45acfae07ae6671bcc0ddc382f585fba40851cd33e in / 
# Tue, 10 Oct 2017 20:58:30 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 10 Oct 2017 20:58:30 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 20:58:31 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 10 Oct 2017 20:58:32 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 10 Oct 2017 20:58:32 GMT
CMD ["/bin/bash"]
# Tue, 10 Oct 2017 21:26:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 21:26:59 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 10 Oct 2017 21:27:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:440fbc233b27ffe2cc20ec0be114c43c7acf6a04b36a3bf6ce58d5cd95b78cc4`  
		Last Modified: Tue, 10 Oct 2017 20:59:37 GMT  
		Size: 39.2 MB (39155564 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca3790c3240ff69b15d64b412f3732c718ca50f2a462fe6f5eb0ce545ffc69d5`  
		Last Modified: Tue, 10 Oct 2017 20:59:30 GMT  
		Size: 832.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:408cac6e9029f025b3f65fc638a9d2af505914202ddbeaf06dd721ae1dd17b87`  
		Last Modified: Tue, 10 Oct 2017 20:59:31 GMT  
		Size: 400.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e76ce51acfddce76f1e3502d0998371fa72cfeb4d72999b93399a7ebecb157f9`  
		Last Modified: Tue, 10 Oct 2017 20:59:31 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:220c15fc5b9df59745e579e43ac7dfb473f5290615615d4ad84633e3293f6c09`  
		Last Modified: Tue, 10 Oct 2017 20:59:30 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f041aba4769cceff0b1483dfee061cdd0727ab8531a53fee404c13808bb1fce7`  
		Last Modified: Tue, 10 Oct 2017 21:39:21 GMT  
		Size: 6.0 MB (6034627 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7737c89f8ebcc8248505d15b33ab133589fafb6ef4c56d7ffb6aa9bd2b5fc5ee`  
		Last Modified: Tue, 10 Oct 2017 21:39:45 GMT  
		Size: 45.7 MB (45697581 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:artful-scm` - linux; arm variant v7

```console
$ docker pull buildpack-deps@sha256:02c764b62c128750498bf3501ad74c7afca1362542ed14410cd2c331a284894c
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **83.5 MB (83524512 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:43aff75016034730a9c6d05f429865329d254e5d8c75870e393b602851faa916`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 27 Sep 2017 04:14:24 GMT
ADD file:1147c8a49122ad926e6f73ab0fb78f008fc538da1e40a50ca7b7c796bf937525 in / 
# Wed, 27 Sep 2017 04:14:25 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 27 Sep 2017 04:14:26 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 27 Sep 2017 04:14:26 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 27 Sep 2017 04:14:27 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 27 Sep 2017 04:14:27 GMT
CMD ["/bin/bash"]
# Wed, 27 Sep 2017 04:33:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Sep 2017 04:33:08 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Sep 2017 04:33:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:ccc56231d203c1b30118c72272fe076bf427379d0c0f99beac9f20659915ecd4`  
		Last Modified: Wed, 27 Sep 2017 04:15:45 GMT  
		Size: 35.4 MB (35382792 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9dff7099d1dc3858f5e9b817713b87cb55f475e631b5be05de9c8c5883778cd8`  
		Last Modified: Wed, 27 Sep 2017 04:15:35 GMT  
		Size: 844.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27a097eeb549e3ce3245783ef6e323260bdd3ff524f9d42e2aade0b9689d876e`  
		Last Modified: Wed, 27 Sep 2017 04:15:35 GMT  
		Size: 390.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a91ed7005f3c1463db2543836395c1887ba857d1f59168469a6b2399e62791dc`  
		Last Modified: Wed, 27 Sep 2017 04:15:35 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad92a74e07048216dcc844026d7f2a4c13f3527046933239e242bbfe74d4ec96`  
		Last Modified: Wed, 27 Sep 2017 04:15:35 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:324db25ecac038cbc7534ccb18f3cb75d47ef6d4a62c0f748c197c7f6ca87d0d`  
		Last Modified: Wed, 27 Sep 2017 04:54:27 GMT  
		Size: 5.1 MB (5097866 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e51208bf134ba3b9707a5ca722dee204fe19d0cb52d955f0bded7872c3a262c`  
		Last Modified: Wed, 27 Sep 2017 04:54:51 GMT  
		Size: 43.0 MB (43041580 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:artful-scm` - linux; arm64 variant v8

```console
$ docker pull buildpack-deps@sha256:ec14f4a1c574caeebcc8593a0b8af0526b62149b2bea0878dba915befc4f917b
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **85.0 MB (85040565 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:81a50d8d675f66d3b3c90b4f07926c0c31c4ecf33aa4ca84db4073d1680184b6`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 18 Sep 2017 23:33:28 GMT
ADD file:a21038af99ca7798879a376e07a4fd488d19440437c6c97f098acb07b066eaa3 in / 
# Mon, 18 Sep 2017 23:33:30 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 18 Sep 2017 23:33:31 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 18 Sep 2017 23:33:33 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Mon, 18 Sep 2017 23:33:34 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 18 Sep 2017 23:33:35 GMT
CMD ["/bin/bash"]
# Mon, 18 Sep 2017 23:55:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 18 Sep 2017 23:55:15 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 18 Sep 2017 23:56:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:8210b4fcd6e3a4317d8a70d6725038ccc4619acd85b3e6c8b1b93ae1b3904a0f`  
		Last Modified: Mon, 18 Sep 2017 23:35:23 GMT  
		Size: 36.3 MB (36262542 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:557754541182cb7a1f4fb9e9f2d1a0c335e20ccb7d1fa4e3a2710b7a1c56a8a7`  
		Last Modified: Mon, 18 Sep 2017 23:35:11 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4bb87f5f2994c7cbfc55246587efd76ad85430daf4257791031826e3a4b27bd`  
		Last Modified: Mon, 18 Sep 2017 23:35:11 GMT  
		Size: 376.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:763102aa35abcbc5f816ecc7108e152556cfb636a7551f9a1ff871c0fd42b60c`  
		Last Modified: Mon, 18 Sep 2017 23:35:11 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65bc441ab0b7de9a42ee399ac888c6c65d1715e99d513e2fd90bf4bacab85be4`  
		Last Modified: Mon, 18 Sep 2017 23:35:11 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed49f8ec0d3a65fd15fdeafbac7fc984c9449629cd0003ec9d4fda76a21f7cf2`  
		Last Modified: Tue, 19 Sep 2017 00:31:35 GMT  
		Size: 5.3 MB (5295470 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6cc616b04874b6e4f178978e5321e52053da6dd6e7cdc5242db6ba0962347500`  
		Last Modified: Tue, 19 Sep 2017 00:32:06 GMT  
		Size: 43.5 MB (43480314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:artful-scm` - linux; 386

```console
$ docker pull buildpack-deps@sha256:60bbdea16cce9f1132eb4d9c7af153cbc3c68e77204ce6e0f5c68d4a1690537f
```

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **92.6 MB (92621372 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:03fcb3244e273106548be540f1c659a1d5a6b9065985fe2eedeba2fdeea71354`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 18 Sep 2017 23:38:06 GMT
ADD file:a4edd8ad5e1bc5d6ec2ec57138c57f2e757e9301d8667b941569b68f0f48119d in / 
# Mon, 18 Sep 2017 23:38:07 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 18 Sep 2017 23:38:08 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 18 Sep 2017 23:38:09 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Mon, 18 Sep 2017 23:38:10 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 18 Sep 2017 23:38:10 GMT
CMD ["/bin/bash"]
# Mon, 18 Sep 2017 23:58:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 18 Sep 2017 23:58:52 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 18 Sep 2017 23:59:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:0b69a11c4f6800eb8e5012aa024d97c5b3af38b9a9c026cc4d9542f54f558ba4`  
		Last Modified: Mon, 18 Sep 2017 14:58:46 GMT  
		Size: 39.7 MB (39706429 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6239459b019982327a44e6ed48510f1974e4b782dc540d443aa7f793f4cfa8a6`  
		Last Modified: Mon, 18 Sep 2017 23:39:13 GMT  
		Size: 846.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f64198b81b51e4c478e7ba6682688f8b60213effa621e3ed95715cb0666f4131`  
		Last Modified: Mon, 18 Sep 2017 23:39:13 GMT  
		Size: 396.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47d59d2adec6b63a2881eefb708c437aa19ff2ff55864af4a62b80007624e5f9`  
		Last Modified: Mon, 18 Sep 2017 23:39:13 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b789b22787f08ff9140223fb1775db954f55b6faa52cb8746cea5a5bb2f6d5d`  
		Last Modified: Mon, 18 Sep 2017 23:39:13 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5dcd0fb87629ca520d38e03103ccebcb9be32fc28331fbd1224b2d7a80da06f`  
		Last Modified: Tue, 19 Sep 2017 00:18:38 GMT  
		Size: 6.1 MB (6095407 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa166fc272b26d7be440c7f62a0dd043b11759bb1934cc065c3b92bcf91b992d`  
		Last Modified: Tue, 19 Sep 2017 00:19:03 GMT  
		Size: 46.8 MB (46817282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:artful-scm` - linux; ppc64le

```console
$ docker pull buildpack-deps@sha256:810067aa17e715979ccf8e95d2827296b4201011a3675127eb61a62ef2b73ef4
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **100.4 MB (100414824 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:43f2d438c693bc6879959fa26dff6ecac4c113528a347398f9f499ebd17bcc28`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 18 Sep 2017 23:34:20 GMT
ADD file:76bd277f670f9c23d269a782a4e4fd0b5092197603f7116bcd7c961b76c3f47c in / 
# Mon, 18 Sep 2017 23:34:25 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 18 Sep 2017 23:34:31 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 18 Sep 2017 23:34:36 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Mon, 18 Sep 2017 23:34:40 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 18 Sep 2017 23:34:42 GMT
CMD ["/bin/bash"]
# Mon, 18 Sep 2017 23:56:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 18 Sep 2017 23:56:56 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 19 Sep 2017 00:00:10 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:388e3751d9c8878aa39e3474da53a9e62f4b43bd8cba74a667972d76628e11bb`  
		Last Modified: Mon, 18 Sep 2017 23:36:44 GMT  
		Size: 41.9 MB (41922187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:454085e8e2fdea3a146d443b101af8d03136758bac2817108435ba15d0da28ea`  
		Last Modified: Mon, 18 Sep 2017 23:36:34 GMT  
		Size: 843.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2964a2737b0200d140dc069ef14a20e84a2d4004948148e59e593c58f66675aa`  
		Last Modified: Mon, 18 Sep 2017 23:36:34 GMT  
		Size: 374.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed83ed2c2dd4cef63c3e8e1bff2e788a42d62c82f482b0affe8c04695f33392f`  
		Last Modified: Mon, 18 Sep 2017 23:36:33 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:479274faad59127447148c3af0c4edfbda0ac719e8380b6c9def03cb3da41379`  
		Last Modified: Mon, 18 Sep 2017 23:36:34 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86d36c9955b36b22c128987eaf554e583e8555d6c717f05a1466bd654771b842`  
		Last Modified: Tue, 19 Sep 2017 01:15:27 GMT  
		Size: 5.9 MB (5936030 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e8fce054294fc29d00e50812e250291dcf2f3298d465d7dc8318dcdc86c0195`  
		Last Modified: Tue, 19 Sep 2017 01:15:55 GMT  
		Size: 52.6 MB (52554348 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:artful-scm` - linux; s390x

```console
$ docker pull buildpack-deps@sha256:47f106c580e0dba4b7717dbc1df50770028f18aa5484a96feee5de5d49648c0d
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **89.2 MB (89183090 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ead25981ad82316922731441d581e96ce2eb7c1f6b1ad283035493b53ec05284`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 18 Sep 2017 23:33:23 GMT
ADD file:0be97ef5a414aad061cf969f392905fb325f0afe50396375da83f1fd0eca56e7 in / 
# Mon, 18 Sep 2017 23:33:24 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 18 Sep 2017 23:33:24 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 18 Sep 2017 23:33:25 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Mon, 18 Sep 2017 23:33:26 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 18 Sep 2017 23:33:26 GMT
CMD ["/bin/bash"]
# Mon, 18 Sep 2017 23:50:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 18 Sep 2017 23:50:47 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 18 Sep 2017 23:51:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:ffdc10484d0af13a6c01ae1bdf439ffd65447ff1e9f93af122109a0dc9ce8249`  
		Last Modified: Mon, 18 Sep 2017 23:34:06 GMT  
		Size: 38.3 MB (38280723 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1cfc84af9098b30441cf85d10f07172a00aa5efc5b083cb3f08f921adf4889e`  
		Last Modified: Mon, 18 Sep 2017 23:33:59 GMT  
		Size: 839.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b4be9cff15bac5695781f2d672405ef6f52cd2f566e55f5d6c828e7db919bc6`  
		Last Modified: Mon, 18 Sep 2017 23:33:59 GMT  
		Size: 378.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27723e688c791571b9e79c713521e0110e26e0c038437c00741e39bc5a364ff4`  
		Last Modified: Mon, 18 Sep 2017 23:33:58 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cf64fa876571fd96d3ae4758cb63a4f732abea289e0920a99202b04a33884d8`  
		Last Modified: Mon, 18 Sep 2017 23:33:59 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4936535584685c3325f0ec6a39992bdf6824d528459fe72d4bc703089b0a69f7`  
		Last Modified: Tue, 19 Sep 2017 00:03:23 GMT  
		Size: 5.7 MB (5727600 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b482c89b4fe82356412a96830b0ea26466d4187f6cb458316dc11cd330b4d934`  
		Last Modified: Tue, 19 Sep 2017 00:03:38 GMT  
		Size: 45.2 MB (45172534 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
