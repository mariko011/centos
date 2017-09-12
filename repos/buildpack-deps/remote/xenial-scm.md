## `buildpack-deps:xenial-scm`

```console
$ docker pull buildpack-deps@sha256:ee710b9c0ac7e9ae88af7d10627660081f51e1f44b49910f1d18ef1b919520f4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `buildpack-deps:xenial-scm` - linux; amd64

```console
$ docker pull buildpack-deps@sha256:65d5222e9ba35cf01b9e1ecda1dfd1df7643df6a3842b73d07cafe66f418d696
```

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **96.4 MB (96433220 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6298eab0fcd24b8e8ff44e4c4a6388147fc69c506c0f6d882f648a0656980f46`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 10 Aug 2017 20:13:38 GMT
ADD file:39d3593ea220e686d5450244ef9dd6c934e3b288a29212d332ec33942b7bf218 in / 
# Thu, 10 Aug 2017 20:13:39 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 10 Aug 2017 20:13:40 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 10 Aug 2017 20:13:41 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 10 Aug 2017 20:13:41 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 10 Aug 2017 20:13:42 GMT
CMD ["/bin/bash"]
# Thu, 10 Aug 2017 20:48:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 10 Aug 2017 20:48:36 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 10 Aug 2017 20:48:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:d5c6f90da05dc7e77d2e5fef63c341ab05ba2a03396ab5ae8f18814a7bbf5265`  
		Last Modified: Thu, 03 Aug 2017 11:51:31 GMT  
		Size: 47.3 MB (47258703 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1300883d87d5ae0582a4e0f3f86ad93985b18676e8d829f6f3b4990403fdf145`  
		Last Modified: Thu, 10 Aug 2017 20:15:08 GMT  
		Size: 816.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c220aa3cfc1bff0c1df733eac869a66476ea35136c69d881da1e297ed8d0af2f`  
		Last Modified: Thu, 10 Aug 2017 20:15:08 GMT  
		Size: 515.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e9398f099dcc5a3e5521205e1f55ee5d7665e203193cf48b32553eabcca323c`  
		Last Modified: Thu, 10 Aug 2017 20:15:08 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc27a084064fee108f4d486469939bbfa6a5b16f6d6d3c6b5b2475e938f4c71e`  
		Last Modified: Thu, 10 Aug 2017 20:15:08 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc161c70fb2c9cb36adcebe3f9ab84876b4ae05895db0cafe8bab51ffc2985b8`  
		Last Modified: Thu, 10 Aug 2017 20:56:16 GMT  
		Size: 7.4 MB (7358571 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58d136bfb6d0dc6189bd0da3e8793710e2ebed4928f740b3a200d2aff084a045`  
		Last Modified: Thu, 10 Aug 2017 20:56:39 GMT  
		Size: 41.8 MB (41813602 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:xenial-scm` - linux; arm variant v7

```console
$ docker pull buildpack-deps@sha256:3da837cd4f7b6c5c6a8ee83c16b6247251a4d6fb32a83194173318e64f39a1a5
```

-	Docker Version: 17.07.0-ce-rc2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **86.4 MB (86421507 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:38debdfbf98fa32823c43ef9fade78042a5f5f6f9c040dc45faccd9a5ada1ff0`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 21 Jul 2017 13:56:00 GMT
ADD file:06173fea0bccfc2303fccb6d16d3b27cad148f80b8fc0ae1c913d876b507aa53 in / 
# Fri, 21 Jul 2017 13:56:02 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 21 Jul 2017 13:56:04 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 21 Jul 2017 13:56:06 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 21 Jul 2017 13:56:08 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 21 Jul 2017 13:56:09 GMT
CMD ["/bin/bash"]
# Fri, 11 Aug 2017 18:23:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 11 Aug 2017 18:23:36 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 11 Aug 2017 18:25:10 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:b0ee14a4c27beda0233d0ea66c08f5c639ce1eee06a9e37bf809a624f5159b5e`  
		Last Modified: Fri, 21 Jul 2017 13:59:50 GMT  
		Size: 42.1 MB (42069496 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ed5a8079a0f7e154e9960d3b2eb05ff904439c8cdcff3f7f5ca10460220d562`  
		Last Modified: Fri, 21 Jul 2017 13:59:24 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4b375d0a9e399b6d03c9c2f7e72bd78dc74cf99a8cae67eca5164f9c6baa6f5`  
		Last Modified: Fri, 21 Jul 2017 13:59:24 GMT  
		Size: 610.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2872ff6ebfe95c49392cb414bcac0465f38edc41fa8841358085608a7b515fac`  
		Last Modified: Fri, 21 Jul 2017 13:59:23 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c96eb6b89db489464c963d3e7816742981dedbc8057e35818117b9b0a4c4d43c`  
		Last Modified: Fri, 21 Jul 2017 13:59:24 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71b21f3ebfdc977b7c7bd5dfbece4beccbc8e75d5fd7875c2c6bd0a63efd7e3a`  
		Last Modified: Fri, 11 Aug 2017 19:02:40 GMT  
		Size: 6.2 MB (6206644 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a64285c524f685463402cf8628c2afa6f0d0ac0b6330ad72d29bc3def292471`  
		Last Modified: Fri, 11 Aug 2017 19:03:19 GMT  
		Size: 38.1 MB (38142880 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:xenial-scm` - linux; arm64 variant v8

```console
$ docker pull buildpack-deps@sha256:0f5a92349c36266ca0287c380c5cffea4f89e0f05bdd3ab1931611ac46ec25a3
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **89.2 MB (89188914 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4a035b3d4361147cf7cac2133b66376858210a0508a0ec806a10a8448d3eb652`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 21 Jul 2017 14:51:23 GMT
ADD file:c9206024a1cfa571bdfbae00fa24d39bbf53c8526b37519de4674613fe030e80 in / 
# Fri, 21 Jul 2017 14:51:27 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 21 Jul 2017 14:51:30 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 21 Jul 2017 14:51:32 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 21 Jul 2017 14:51:36 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 21 Jul 2017 14:51:37 GMT
CMD ["/bin/bash"]
# Fri, 21 Jul 2017 16:27:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 21 Jul 2017 16:27:48 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 21 Jul 2017 16:28:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:11085ec3697cd5705bdd572514612a1de1298f804ccb7ec4d0a1d72c09a74614`  
		Last Modified: Fri, 14 Jul 2017 22:16:34 GMT  
		Size: 43.1 MB (43071299 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25fa2048175ee293e1a0c2c02deff3f2d6e98ce7290d118217d0d876f7d94ec7`  
		Last Modified: Fri, 21 Jul 2017 14:54:10 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fb764469826607aef24313f459285d588b9ac3964df31645c0b49645c3b2529`  
		Last Modified: Fri, 21 Jul 2017 14:54:11 GMT  
		Size: 541.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62c80e112a9d6fbc9c54694dafec13017064ab596178080ddca7e758ab2fa3ef`  
		Last Modified: Fri, 21 Jul 2017 14:54:10 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1bae89f734928c0cf5bd6bdc1d7aec4f0737570d2a70914a0cca2d8dd141760`  
		Last Modified: Fri, 21 Jul 2017 14:54:10 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b533269c710fbe8982d55c0542e0cbc731ef4fbd1182e49c3d09acccc8d5d749`  
		Last Modified: Fri, 21 Jul 2017 16:56:35 GMT  
		Size: 6.4 MB (6414366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75b65c06447726a479f77e6f69ccf2dcfa661e47c53add72ca2ef5bdd5f50bfe`  
		Last Modified: Fri, 21 Jul 2017 16:57:16 GMT  
		Size: 39.7 MB (39700831 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:xenial-scm` - linux; 386

```console
$ docker pull buildpack-deps@sha256:9448af773e42ae429520cea5462604c2db6843e6d5015bc237660cc38e9e56f2
```

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **97.9 MB (97935048 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5ffef85590580f19c485472ccb44d447de810e1c4364ca0c7d1bc77ef2032846`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 11 Aug 2017 03:34:46 GMT
ADD file:36463abfbe0384b162416921470ec5307766fb081baf05d633ca8a1dbeded473 in / 
# Fri, 11 Aug 2017 03:34:47 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 11 Aug 2017 03:34:47 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 11 Aug 2017 03:34:48 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 11 Aug 2017 03:34:49 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 11 Aug 2017 03:34:49 GMT
CMD ["/bin/bash"]
# Fri, 11 Aug 2017 03:59:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 11 Aug 2017 03:59:50 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 11 Aug 2017 04:00:10 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:386cf91244766a15867d7c4d5145a74812938e2870ec5cf26f0adaea9965b921`  
		Last Modified: Mon, 07 Aug 2017 14:40:47 GMT  
		Size: 47.6 MB (47564734 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd05fe57b1dd5621709bbd7242f7d2fb06be680434764e95aa414393d8d70bd5`  
		Last Modified: Fri, 11 Aug 2017 03:35:55 GMT  
		Size: 848.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d9c27aeef149b035f5b7c003a8c67826570b1399fb46a802d9550613b075b17`  
		Last Modified: Fri, 11 Aug 2017 03:35:56 GMT  
		Size: 514.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:900fca59e30903ebb5b4071fbc78182b6684957890eb1d5d38404d4188175ac8`  
		Last Modified: Fri, 11 Aug 2017 03:35:55 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36c0ed06b6c5db10ec1ae1fe56ac96358b863c5556df005d6d684b3d60e8b497`  
		Last Modified: Fri, 11 Aug 2017 03:35:55 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69ddfe3b3afd2bd11a6d18b58f857a4c5110b845758d5d9fe092c0ab20197766`  
		Last Modified: Fri, 11 Aug 2017 04:09:18 GMT  
		Size: 7.5 MB (7503135 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b15dd71ad02f82bbb79de6b31d43d4082a90c2c78ff1d3da22fe19d0fdbc806b`  
		Last Modified: Fri, 11 Aug 2017 04:09:40 GMT  
		Size: 42.9 MB (42864792 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:xenial-scm` - linux; ppc64le

```console
$ docker pull buildpack-deps@sha256:7cd7862a45671c7add34722401317dd144c7862c9dc00a9930e2e5ed8cff1f3c
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **101.6 MB (101625162 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f96f0d996e6bb60ff0c315b8100ace7565f933b3ec05f8f420aebc39dcfd1400`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 21 Jul 2017 02:39:50 GMT
ADD file:7660e3164e464cfd5b3a0db9339aa49de9f091db9ba2b60bc75b9b5125e7959a in / 
# Fri, 21 Jul 2017 02:39:50 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 21 Jul 2017 02:39:51 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 21 Jul 2017 02:39:52 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 21 Jul 2017 02:39:53 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 21 Jul 2017 02:39:53 GMT
CMD ["/bin/bash"]
# Fri, 21 Jul 2017 03:15:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 21 Jul 2017 03:15:54 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 21 Jul 2017 03:16:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:dcc105d37a542f9b6a87eb924520933eb83a3e2ea425dcfe4e85da5f2a000ac5`  
		Last Modified: Fri, 21 Jul 2017 02:41:24 GMT  
		Size: 49.3 MB (49276707 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81a62c6a126b8736a237f38d6b8925ec997f3c919747a82b91b002cc0423b042`  
		Last Modified: Fri, 21 Jul 2017 02:41:11 GMT  
		Size: 848.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01f1f94d14729265d85bf22d53ea8240cd93956b7fd6e4c71b0450cb03a072a0`  
		Last Modified: Fri, 21 Jul 2017 02:41:11 GMT  
		Size: 579.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40643fc40313d2287cc76064a4d38f99342f435c6281653e60fb23fbe71c165e`  
		Last Modified: Fri, 21 Jul 2017 02:41:11 GMT  
		Size: 856.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0255995d6f0bf249e6843f03e8267c28b612aaf3c6f5c7b5f4da4cd54c1e95a5`  
		Last Modified: Fri, 21 Jul 2017 02:41:11 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b30102fe9843bb14617ce95097358ae2b2f98f79a002dc68a913b1352ec389a`  
		Last Modified: Fri, 21 Jul 2017 03:30:30 GMT  
		Size: 7.3 MB (7260955 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06863423e99426ac169c08b524baa8478afdef2645362316794d2317ffa5775c`  
		Last Modified: Fri, 21 Jul 2017 03:30:51 GMT  
		Size: 45.1 MB (45085049 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:xenial-scm` - linux; s390x

```console
$ docker pull buildpack-deps@sha256:5f37153e028c852d96c49bacb07c39c08097a5cf896e7ca6b8ac2addbb92daef
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **95.7 MB (95746419 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a3ef5211912a922a6589d26287b597bbdc23e19297b139273937580da453f647`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 11 Aug 2017 13:15:30 GMT
ADD file:cec23aa004485764d66fea0ea06bc3512403ad85f2a2004c90355e814f6a972d in / 
# Fri, 11 Aug 2017 13:15:31 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 11 Aug 2017 13:15:32 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 11 Aug 2017 13:15:32 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 11 Aug 2017 13:15:33 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 11 Aug 2017 13:15:33 GMT
CMD ["/bin/bash"]
# Fri, 11 Aug 2017 13:33:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 11 Aug 2017 13:33:26 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 11 Aug 2017 13:33:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:c58ca33e0c246871d07f22fecd3fe2b3fccd6176c69d03dc3e7ccfeb4ad51173`  
		Last Modified: Fri, 11 Aug 2017 13:16:02 GMT  
		Size: 46.1 MB (46067253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc3fd4e627556d1102bbe48fd34cbbb4aaee8fe726133cc81e0045cfb7a9b722`  
		Last Modified: Fri, 11 Aug 2017 13:15:55 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c7fa8f00fe2e7e69d9f4182cb28fdc934581a9d653d7f3bd9b8e9ec3548474a`  
		Last Modified: Fri, 11 Aug 2017 13:15:54 GMT  
		Size: 537.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1618266695ce48a7ff8ae992c8bc490e2b327d2475417bba860461d52961d810`  
		Last Modified: Fri, 11 Aug 2017 13:15:54 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c037ccce0cbbbb5a51347a125b519fb0dd842d976543be03c1edef564f9a3a9`  
		Last Modified: Fri, 11 Aug 2017 13:15:54 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81c881a73f5b2ae93b996155709410434fb20d2583663e18c77e676b5f7d96a2`  
		Last Modified: Fri, 11 Aug 2017 13:36:33 GMT  
		Size: 7.1 MB (7093570 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44387f8f5fd0e3f4dd396cd86bad37348c2ab1a23c991dc3a0cf432952d48ebc`  
		Last Modified: Fri, 11 Aug 2017 13:36:46 GMT  
		Size: 42.6 MB (42583185 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
