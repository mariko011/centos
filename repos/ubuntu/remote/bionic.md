## `ubuntu:bionic`

```console
$ docker pull ubuntu@sha256:2bdfcbaee60bb5990ed46312a48ba97d6360d235c3923322a982b4c5024efc13
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `ubuntu:bionic` - linux; amd64

```console
$ docker pull ubuntu@sha256:c85bd29d8f66d8331fe84acb261c3253a819f5b7849617fecbd910c6d6602696
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.9 MB (35937350 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cae0c1b0b49a5dd8e5340d32482bbcde6bde5b9889ff7ffbcf79826639244142`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 14 Dec 2017 20:58:56 GMT
ADD file:579eedbd8efe0e6086b4f3e0b28ec442f2a2f819a9eb583579c3a91647bf4c19 in / 
# Thu, 14 Dec 2017 20:58:57 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 14 Dec 2017 20:58:58 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 14 Dec 2017 20:58:58 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 14 Dec 2017 20:58:59 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 14 Dec 2017 20:58:59 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:a837485b028280fa0f96cabc90c2fe23dcfcec0a93dd2efb2ac955f9b7ba1c25`  
		Last Modified: Thu, 14 Dec 2017 21:00:32 GMT  
		Size: 35.9 MB (35935092 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f672112e0c4298bedbb5b340f52a106f10de5ffaa6e79d873ffe16316733d6fa`  
		Last Modified: Thu, 14 Dec 2017 21:00:26 GMT  
		Size: 845.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d984837afd0dfccc598e9138d7935c037620f7d4871a4f92b9c46deae8d9849b`  
		Last Modified: Thu, 14 Dec 2017 21:00:28 GMT  
		Size: 399.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7901c5641402a8660691944375a2f252b00507de035911058f3fbd8144c6f071`  
		Last Modified: Thu, 14 Dec 2017 21:00:26 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:785af1eaea4a1a88c03ef1b05f7c0acd3e0c3ffb4f25d0b3fc1fd216ec7dddd7`  
		Last Modified: Thu, 14 Dec 2017 21:00:26 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:bionic` - linux; arm variant v7

```console
$ docker pull ubuntu@sha256:4becb94726993a036b3ff9707b4f8df50693e79dd913a4210933884e0fb79d5d
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **31.6 MB (31624878 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d1129fd9d463ed7fdb3441bdab0c2f2d176c9812001b000fc7d0ca6156d023bf`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 15 Dec 2017 13:51:14 GMT
ADD file:c2c634c888fc3d7aa93449cfb6dce9b3b34ebe445d5a597adb8abc3486a64c10 in / 
# Fri, 15 Dec 2017 13:51:15 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 15 Dec 2017 13:51:16 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 13:51:17 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 15 Dec 2017 13:51:18 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 15 Dec 2017 13:51:18 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:ac67c1d6f28989fd2430c1a5d3372a89333ce9796458f0a13e1821a4c4b7ea27`  
		Last Modified: Fri, 15 Dec 2017 13:52:37 GMT  
		Size: 31.6 MB (31622603 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7322c5c377162efa8d14b0f03e93123fa1675b99abc23df5d419f354546283fa`  
		Last Modified: Fri, 15 Dec 2017 13:52:29 GMT  
		Size: 845.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37d3367664f6b0bc483dadd12f6592cc1d6a7ef9e7fc8cbe625ec60e95b8ac3f`  
		Last Modified: Fri, 15 Dec 2017 13:52:29 GMT  
		Size: 389.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c870de691041a2a561405ce54db14eaad74cc989409464827cecdc20d69f4814`  
		Last Modified: Fri, 15 Dec 2017 13:52:29 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da10b2a98faeddb68eb10b4b1c054e7dc72c6887d747454d6f534ade68b2844c`  
		Last Modified: Fri, 15 Dec 2017 13:52:29 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:bionic` - linux; arm64 variant v8

```console
$ docker pull ubuntu@sha256:1a882ad7a446f07e31d9f3bdaa463e615d85581032597c30b3f94e9c4d8cd861
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.1 MB (33084372 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:96a43cbc6c03c16fe5f8b704bce1516913c82a9cff262e85c4ee7a2b057fdc6a`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 15 Dec 2017 15:00:46 GMT
ADD file:80c8f6c0061b49738a17cd026d3dec428d93ac30529a6b18715732565146d6e9 in / 
# Fri, 15 Dec 2017 15:00:48 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 15 Dec 2017 15:00:52 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 15:00:53 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 15 Dec 2017 15:00:55 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 15 Dec 2017 15:00:55 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:efa93c02cd20eb11df78d04f5f6cb800abcce81e3faa83a59b7fb4d8fb300145`  
		Last Modified: Fri, 15 Dec 2017 15:02:52 GMT  
		Size: 33.1 MB (33082132 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bd9f9c6acb60ce25084268f598ac81cd5a1ef487dd79d80a24b27126c0779f4`  
		Last Modified: Fri, 15 Dec 2017 15:02:41 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2271881359ad864a180ee2cc5a66f3c12470249c9677a67853b5a53a68bb8c79`  
		Last Modified: Fri, 15 Dec 2017 15:02:41 GMT  
		Size: 375.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1306c122365d388ce7f7d95107ed52873b1c418bcba5f0fcaa74dfa65df927e`  
		Last Modified: Fri, 15 Dec 2017 15:02:44 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50b6288a534c38bf240e0d285343f1ba227298df71777bdbf6b89a8f208aeb20`  
		Last Modified: Fri, 15 Dec 2017 15:02:42 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:bionic` - linux; 386

```console
$ docker pull ubuntu@sha256:95c78b67a85f1efa23c2727b804e3b08b43460f9aa64d39b06db034bc88d834a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.8 MB (36778218 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:054a0b27861b930ee3283d43fbf13363110a9cb2d3e869231cd4512e5f1d4bca`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 15 Dec 2017 04:41:41 GMT
ADD file:8252e0d663ed3e61fc552d81d1041a2c787d25831c7efe9ac797b04f0c5b5110 in / 
# Fri, 15 Dec 2017 04:41:41 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 15 Dec 2017 04:41:42 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 04:41:43 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 15 Dec 2017 04:41:44 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 15 Dec 2017 04:41:44 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:38d2ee014b2e675129e5ddceb3342c626077e6770c20a62e3f398ebaed40b6ec`  
		Last Modified: Fri, 15 Dec 2017 04:52:34 GMT  
		Size: 36.8 MB (36775976 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8caea13c80a1f30a37ab48042731e6063e2e2d90b4cc7bc63388dad9ccdfc4ae`  
		Last Modified: Fri, 15 Dec 2017 04:52:23 GMT  
		Size: 838.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1fcddab1d038dd353bf00bc59d34919835ca77763b0793934be5145ae4251b4`  
		Last Modified: Fri, 15 Dec 2017 04:52:23 GMT  
		Size: 391.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3139387fc067136a14d14d961184140c4e658ee1d6395499bb6b40ac67c0ab5`  
		Last Modified: Fri, 15 Dec 2017 04:52:23 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c62f2c77a5d82f439f69d08c88b1eff60a10a4195b52134b0d9f006c443e99c`  
		Last Modified: Fri, 15 Dec 2017 04:52:23 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:bionic` - linux; ppc64le

```console
$ docker pull ubuntu@sha256:db7b7db7d3b3b9a426e742890d561f0f3f456c212a5a46f741a50ae9418857af
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.5 MB (39543059 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aa635cead490559ea53e2f80e314e6f550ac159818a7397f3dfdb2ca4eee2966`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 15 Dec 2017 03:40:09 GMT
ADD file:53ab2f237068555abcd705dc34c7065ae17d8a9bb97bdc50104f7eb9c3b9b248 in / 
# Fri, 15 Dec 2017 03:40:20 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 15 Dec 2017 03:40:23 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 03:40:26 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 15 Dec 2017 03:40:30 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 15 Dec 2017 03:40:32 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:85247852c16bae500c333f2dc0b14da087fcc206aedaa0dc34b9e32434536490`  
		Last Modified: Fri, 15 Dec 2017 03:43:17 GMT  
		Size: 39.5 MB (39540802 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09094c7320c08f4959157a6661e6682e738f2d6380a759de6deebee699043ffc`  
		Last Modified: Fri, 15 Dec 2017 03:43:07 GMT  
		Size: 841.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef9f957e9672e97f8a9dd2f59d58b63e98a254a66ab91e3cbf15171331db46f6`  
		Last Modified: Fri, 15 Dec 2017 03:43:07 GMT  
		Size: 374.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4178a712f4c8df99ba5d8c8e8c7e7e1f60947195702e7195639ca3c8b536bb77`  
		Last Modified: Fri, 15 Dec 2017 03:43:07 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a5533155838c1c949990517ec5e7dde2bd5c30a08b899463cebf7ba1c0222e9`  
		Last Modified: Fri, 15 Dec 2017 03:43:07 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:bionic` - linux; s390x

```console
$ docker pull ubuntu@sha256:f6d03c7073038c04581f95447895c707d07be19daa0092ec29108af1613b9877
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.9 MB (34917226 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:842ce4cfbc6f16af88bf22acb5d460bbda95e553931dd5fcdd070881c02bf185`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Sun, 07 Jan 2018 06:21:18 GMT
ADD file:43906c1bbfabe0f5ed482f2cfe99630fd8cd08f8e191aad3db9a24b7e9d2342a in / 
# Sun, 07 Jan 2018 06:21:19 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sun, 07 Jan 2018 06:21:20 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sun, 07 Jan 2018 06:21:20 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Sun, 07 Jan 2018 06:21:21 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sun, 07 Jan 2018 06:21:21 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:5fe2ce98a997cde3b8a8377d988cb64484f44385270fa90b1673b3417496c6f6`  
		Last Modified: Sun, 07 Jan 2018 06:22:17 GMT  
		Size: 34.9 MB (34914998 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c9ca4a4e10899ca791894bc19a9b4871f8037501a1c5629c35d1515be2301dd`  
		Last Modified: Sun, 07 Jan 2018 06:22:12 GMT  
		Size: 837.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f4e244a1eff9636cca599fa044a1d67c6bed61bf9fd52002ea6b6eee87f7a8d`  
		Last Modified: Sun, 07 Jan 2018 06:22:11 GMT  
		Size: 375.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8abf5c04db1171c4fb6c936bb81d920ba179cdcf9ef90585bb86cfd707affee4`  
		Last Modified: Sun, 07 Jan 2018 06:22:11 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c09bcf450adee2616c27659f89cb2335e8df19a40b26f82bc000b73b89fd8259`  
		Last Modified: Sun, 07 Jan 2018 06:22:12 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
