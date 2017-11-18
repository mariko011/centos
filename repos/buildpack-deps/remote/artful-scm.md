## `buildpack-deps:artful-scm`

```console
$ docker pull buildpack-deps@sha256:62e32ca94fb6107aa9de945b8ef8b91e4f18df3ea3a2e47f32c8fba8c4ed9d0e
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
$ docker pull buildpack-deps@sha256:52eaef2fa7316654ab6046909855c4e5f886a877579af54618214f07cb892b4b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **91.0 MB (90953934 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:56e8e478ce1e6f1898762650727c374a3f0efa4b4bac032117a4f2b727489f36`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Sat, 04 Nov 2017 09:44:56 GMT
ADD file:c5fd97d776dc13116460fbfe9516f1a028ba5788ea39ee71d8e9cfe7caed676f in / 
# Sat, 04 Nov 2017 09:44:58 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 04 Nov 2017 09:44:59 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 09:45:00 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Sat, 04 Nov 2017 09:45:01 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 04 Nov 2017 09:45:01 GMT
CMD ["/bin/bash"]
# Sat, 04 Nov 2017 15:16:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 15:16:36 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 04 Nov 2017 15:17:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:d26cfb4142faf488780cb8080f737aa1e5db91805163d83448842f64084bb724`  
		Last Modified: Thu, 19 Oct 2017 16:50:57 GMT  
		Size: 39.2 MB (39215977 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9061f2867f7e61c3f5420eb574ba2fa334667501e4fff59037fff42e236126cf`  
		Last Modified: Sat, 04 Nov 2017 09:45:56 GMT  
		Size: 843.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:916f09e6daf78c64326ce6338926259c67a94bda705094f4f5a4de7ffa760d7b`  
		Last Modified: Sat, 04 Nov 2017 09:45:57 GMT  
		Size: 398.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fae7d54d2d8cfbed3fb28e0d50d4d1c7efc8c74cfe0a932f8de266e9ac19b18`  
		Last Modified: Sat, 04 Nov 2017 09:45:56 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e69eda9a0dde47b44b877d1c561a490c6f581f4185be674d0228d0000c5c9c5`  
		Last Modified: Sat, 04 Nov 2017 09:45:56 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f50e4cf3d1d3f4191a1a4161e180a5f74966b61486552e655b5eec35c0ce21a0`  
		Last Modified: Sat, 04 Nov 2017 15:41:10 GMT  
		Size: 6.0 MB (6037253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5795a02adb91bb3d50d3a4caf7e511ec2bec283799b0f1f8268585448cb2d666`  
		Last Modified: Sat, 04 Nov 2017 15:41:38 GMT  
		Size: 45.7 MB (45698451 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:artful-scm` - linux; arm variant v7

```console
$ docker pull buildpack-deps@sha256:7b9b459a64c5db6c3a53b2242e6361cd2289208931c8513b5735d0d283503634
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **82.0 MB (82019011 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:20d551d32a0f058040ad8ab7a11e9ff97b91ab168a8b3cef6c626daa16cdea1d`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 19 Oct 2017 16:55:51 GMT
ADD file:e295a2804e9021d3aebf237c767f9f2130874c00153f74ffdeba3eaab30fbaac in / 
# Thu, 19 Oct 2017 16:55:52 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 19 Oct 2017 16:55:52 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 19 Oct 2017 16:55:53 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 19 Oct 2017 16:55:54 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 19 Oct 2017 16:55:54 GMT
CMD ["/bin/bash"]
# Thu, 19 Oct 2017 17:13:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 00:06:24 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 03 Nov 2017 00:06:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:6aee42d1a16f080f5e31ecdb42ad2cd6f4a207e0a500a908cf7bfda5ff192992`  
		Last Modified: Thu, 19 Oct 2017 16:56:56 GMT  
		Size: 35.1 MB (35054496 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc204a5c135c178768b589f1b3ba0b7bb133676a405801d33a046bab704808cd`  
		Last Modified: Thu, 19 Oct 2017 16:56:47 GMT  
		Size: 837.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:875211a9caba9133760f30d72afd4d4d26c5cd02c41842e0c1c2ea3eb4b3e99c`  
		Last Modified: Thu, 19 Oct 2017 16:56:47 GMT  
		Size: 390.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7239c8aa2ef420bca9bd3ad2a162ec45b8326c4445ee6a04d2bc7db21062b34`  
		Last Modified: Thu, 19 Oct 2017 16:56:47 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3296b67840d45438ac734401161bf6344bbb00228c9a13cefb2d87d769fbf9f5`  
		Last Modified: Thu, 19 Oct 2017 16:56:47 GMT  
		Size: 189.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9056c14ebd1e3f1737712ae8bc184cac07a2cd941a3859a14852404bc7bb9890`  
		Last Modified: Thu, 19 Oct 2017 17:17:59 GMT  
		Size: 5.1 MB (5101409 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4eba2b9a7968a54f18b586e32b719167016a7986e1134c77308512b490b564b6`  
		Last Modified: Fri, 03 Nov 2017 00:25:26 GMT  
		Size: 41.9 MB (41860839 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:artful-scm` - linux; arm64 variant v8

```console
$ docker pull buildpack-deps@sha256:d0f796c029db773ade19f35c99833af018bdef084c9bdf517c955004449da9cb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **85.4 MB (85436510 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b50c374e5bd827be5b520af1c8766ad52eea3f0e0cb2e77126abc15e87479819`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 19 Oct 2017 16:56:03 GMT
ADD file:910e149f9bb1b98604e675d9e071d6de38047c2a16daf5352e66c7916b8f01f2 in / 
# Thu, 19 Oct 2017 16:56:05 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 19 Oct 2017 16:56:06 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 19 Oct 2017 16:56:08 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 19 Oct 2017 16:56:09 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 19 Oct 2017 16:56:10 GMT
CMD ["/bin/bash"]
# Thu, 19 Oct 2017 17:18:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 09:31:21 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 03 Nov 2017 09:32:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:e5b0ba60fd18373323fbf61d66aadd15f7f147f73b6d9123fda3f14ea88c83c4`  
		Last Modified: Thu, 19 Oct 2017 16:58:07 GMT  
		Size: 36.2 MB (36214016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ffa0e39786f334992f3365c97ca0618d3616fdb61cb35c320e38376b2ac9f3a`  
		Last Modified: Thu, 19 Oct 2017 16:57:55 GMT  
		Size: 845.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b855c81f8b3ebe0829512446549542bdbfa6bf01395779ce92bd73a70c804abb`  
		Last Modified: Thu, 19 Oct 2017 16:57:55 GMT  
		Size: 375.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3894de6a565f29a27d72202ceff1e27c6827932cd8502734b58d0a4aca81c34e`  
		Last Modified: Thu, 19 Oct 2017 16:57:55 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8331bf35497522328c16f2d7305b6bfb1d6df9c987d7e48611083cb9fae96996`  
		Last Modified: Thu, 19 Oct 2017 16:56:56 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6facbff585a5109624d1b150e3dcd167deccf602968fdbf0f9a0e43f5fef3b0`  
		Last Modified: Thu, 19 Oct 2017 17:33:18 GMT  
		Size: 5.3 MB (5298614 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4e2d4686bfda58bf7a83cfa79ce30bdd80db4d37a28a36147e1fc7f8e761b29`  
		Last Modified: Fri, 03 Nov 2017 10:43:22 GMT  
		Size: 43.9 MB (43921644 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:artful-scm` - linux; 386

```console
$ docker pull buildpack-deps@sha256:5d4c197986ef8033e7366a6a55ac820ce1baa9da59cf3421404bbc480ae33fb9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **93.4 MB (93430627 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:19282c94ddac14c7a522e0e6a9b0398e54fe9b00054fe2d04f8e76d6f29a454f`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 19 Oct 2017 16:56:07 GMT
ADD file:076cee6466bce5b77bbc3b6b359831aa5810b3497b7ebdfbfa18b455ebd31a29 in / 
# Thu, 19 Oct 2017 16:56:08 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 19 Oct 2017 16:56:08 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 19 Oct 2017 16:56:09 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 19 Oct 2017 16:56:10 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 19 Oct 2017 16:56:10 GMT
CMD ["/bin/bash"]
# Thu, 19 Oct 2017 17:13:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 02 Nov 2017 23:06:47 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 02 Nov 2017 23:07:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:5a83e1d13695f175cd2f542162df4f77ac453af29c8e6bd7eb98d7a7e7ab3828`  
		Last Modified: Thu, 19 Oct 2017 16:57:02 GMT  
		Size: 40.0 MB (40037962 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:beb63f1ac3d814a8a905b9b349010f37e65d877d7c1282f54c1758690253b4bd`  
		Last Modified: Thu, 19 Oct 2017 16:56:57 GMT  
		Size: 845.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77dd6cd1aef7efb5c960f2bf83aaec92bff425fc042ee74ee716e5c05f5c5dd5`  
		Last Modified: Thu, 19 Oct 2017 16:56:57 GMT  
		Size: 394.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6bf247371706b0726dc00efbb0855246efa3d866f5d0a2260422457ef01424e0`  
		Last Modified: Thu, 19 Oct 2017 16:56:56 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8331bf35497522328c16f2d7305b6bfb1d6df9c987d7e48611083cb9fae96996`  
		Last Modified: Thu, 19 Oct 2017 16:56:56 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08155ce50231367d35326ae407be7c4493064f6baf53f29e4054caa3ed9198ec`  
		Last Modified: Thu, 19 Oct 2017 17:19:56 GMT  
		Size: 6.1 MB (6099489 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2589f012033d9311c9a90a25ff9c70200985ec0d0657df3eec55b2f77e2a985`  
		Last Modified: Fri, 03 Nov 2017 00:04:39 GMT  
		Size: 47.3 MB (47290921 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:artful-scm` - linux; ppc64le

```console
$ docker pull buildpack-deps@sha256:8120068b386cdd7571b3a1ed9e97ce20701ac9ad0603536c4a13530424c7b29d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **101.6 MB (101623619 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:962ebe220ae703d9c04993472a1343fb0d71bc2bfebdc6c77364ddc5ccbd7c94`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 19 Oct 2017 16:56:00 GMT
ADD file:b74122be4f1003f3a8afd759e1e56733eb7d8ac02698486b65556e831ffe5627 in / 
# Thu, 19 Oct 2017 16:56:07 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 19 Oct 2017 16:56:14 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 19 Oct 2017 16:56:21 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 19 Oct 2017 16:56:30 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 19 Oct 2017 16:56:32 GMT
CMD ["/bin/bash"]
# Thu, 19 Oct 2017 17:15:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 02 Nov 2017 15:45:59 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 02 Nov 2017 15:48:08 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:2337aaea32bf8cd758fe4f931358024fd68cb4d79019859326d9665a66b75cb9`  
		Last Modified: Thu, 19 Oct 2017 16:57:30 GMT  
		Size: 42.4 MB (42449498 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6bf02bb6c20cfc307d42493dfa9d2e410a32dde821ac248ed69dd6a7df9d6562`  
		Last Modified: Thu, 19 Oct 2017 16:57:18 GMT  
		Size: 842.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac491d4677a40ab6396a4d562f9bb4868bbf37be3378f57066d9ff744e373888`  
		Last Modified: Thu, 19 Oct 2017 16:57:18 GMT  
		Size: 374.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ccc3af7278f5db8e08c2fe132c9e86c0d39929e7831d4786ce45f0fc836a186`  
		Last Modified: Thu, 19 Oct 2017 16:57:18 GMT  
		Size: 856.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee67224a68dabad14949e47b84419539dfca9cf70927d64d056c78a6069626ea`  
		Last Modified: Thu, 19 Oct 2017 16:57:18 GMT  
		Size: 189.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6c760aca2ed3fc46dfc8364aa48c8e4e2a922526bc410f825a61514784cd706`  
		Last Modified: Thu, 19 Oct 2017 17:49:56 GMT  
		Size: 5.9 MB (5943028 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b675027b088b366164b7a8fca516ad52db46d727f61cebf78dde5d833a60040`  
		Last Modified: Thu, 02 Nov 2017 17:45:01 GMT  
		Size: 53.2 MB (53228832 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:artful-scm` - linux; s390x

```console
$ docker pull buildpack-deps@sha256:77e4ebf6503e0e62a4f3f1be6ff6d5137234fbc10ae2a8a18aa64c41fc7f6373
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **89.6 MB (89625996 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cd1c1f383ec59101de91d9bde3477a5e51cef932b4fd27cc90b917e4afe9f4a8`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 17 Nov 2017 22:07:28 GMT
ADD file:b930922e765fe4cd0e19265f5f6c342340a5b2ee855198d99a445c0bd99a7d61 in / 
# Fri, 17 Nov 2017 22:07:29 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 17 Nov 2017 22:07:29 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 17 Nov 2017 22:07:30 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 17 Nov 2017 22:07:31 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 17 Nov 2017 22:07:31 GMT
CMD ["/bin/bash"]
# Fri, 17 Nov 2017 22:26:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 17 Nov 2017 22:26:39 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 17 Nov 2017 22:27:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:f172841ba9f7d2c1c21c31504006aab693b4dca92706d268120c9401e0e54c9c`  
		Last Modified: Fri, 17 Nov 2017 22:08:41 GMT  
		Size: 38.3 MB (38251078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b249bdeb130c08219c1ac394fd12aef2f9a9d7a318904c1adf2a6b9d1ab1ba3`  
		Last Modified: Fri, 17 Nov 2017 22:08:35 GMT  
		Size: 835.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8242ed7a71bed64d2b07fd9756253c0ceb3cac059887d7c6f9a0d8874e1553f`  
		Last Modified: Fri, 17 Nov 2017 22:08:34 GMT  
		Size: 504.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30778f8e8bcaf294e36e0182071a5ba7d990bc20b17343bcc64e16a9c54dafe8`  
		Last Modified: Fri, 17 Nov 2017 22:08:34 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a1db6aa93b0ec59c26fcf939ccd8744a113ea48a883e323e8a0f631b7c46d8e`  
		Last Modified: Fri, 17 Nov 2017 22:08:35 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72469cf7519f2a03259836492b2d38e9d56c9293b75913d638d1d259dafb34e7`  
		Last Modified: Fri, 17 Nov 2017 22:34:19 GMT  
		Size: 5.7 MB (5738817 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10b9803128088058175dbe91db60ee91eeb9af1261e6f92d47e06770d1f66748`  
		Last Modified: Fri, 17 Nov 2017 22:34:37 GMT  
		Size: 45.6 MB (45633745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
