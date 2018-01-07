## `ubuntu:zesty`

```console
$ docker pull ubuntu@sha256:5d41c289942008211c2964bca72800f5c9d5ea5aa4057528da617fb36463d4ab
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `ubuntu:zesty` - linux; amd64

```console
$ docker pull ubuntu@sha256:213e05583a7cb8756a3f998e6dd65204ddb6b4c128e2175dcdf174cdf1877459
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.6 MB (38642634 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fe1cc5b9183012672af35205799ac5b6a70bc68762011fe82257d5dabf5ba966`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 14 Dec 2017 21:00:08 GMT
ADD file:796db5dd87a82ef3448e235015cbe46f6e917199753ab9fa0a7fc03d14da91b0 in / 
# Thu, 14 Dec 2017 21:00:09 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 14 Dec 2017 21:00:09 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 14 Dec 2017 21:00:10 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 14 Dec 2017 21:00:11 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 14 Dec 2017 21:00:11 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:c2ca09a1934b951505ecc4d6b2e4ab7f9bf27bcdfb8999d0181deca74daf7683`  
		Last Modified: Thu, 14 Dec 2017 21:02:52 GMT  
		Size: 38.6 MB (38640200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6c3619d2153ffdefa4a9c19f15c5d566ce271b397a84537baa9ee45b24178f2`  
		Last Modified: Thu, 14 Dec 2017 21:02:46 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0efe07335a049e6afcd757db2d17ba37a12b717eb807acb03ddf3cd756b9fc2a`  
		Last Modified: Thu, 14 Dec 2017 21:02:46 GMT  
		Size: 570.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b1bb01b3a3b72463ae8ac5666d57b28f1a21d5256271910ac8df841aa04ecd1`  
		Last Modified: Thu, 14 Dec 2017 21:02:46 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43a98c1873995475a895f3d79f405232ef5230076b3f610c949c2e8341743af7`  
		Last Modified: Thu, 14 Dec 2017 21:02:46 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:zesty` - linux; arm variant v7

```console
$ docker pull ubuntu@sha256:7d4a022c8d5cd7c91e3e6e31d4707882c7cba1e1babe79045a07a08e9a8d5fab
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.7 MB (34735825 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:39890c3696510c9d3fbfbddc6782b93d9abb55f2230a2ca946e57a790cdc0c44`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 15 Dec 2017 13:52:14 GMT
ADD file:468b2e4a0fd7ea913b4e7d994386b681c91ab1e70c21bcab82f5797a872c3c82 in / 
# Fri, 15 Dec 2017 13:52:15 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 15 Dec 2017 13:52:16 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 13:52:17 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 15 Dec 2017 13:52:18 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 15 Dec 2017 13:52:18 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:2e0f466634c63e74d54807a35d61f20a1ab982dc589a25b3deb8264224a4faad`  
		Last Modified: Fri, 15 Dec 2017 13:53:55 GMT  
		Size: 34.7 MB (34733316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24a911b9006ced25c14c716df5dd26476260f2d5a402b49bf212023c5e023613`  
		Last Modified: Fri, 15 Dec 2017 13:53:46 GMT  
		Size: 846.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1b259f31566aadd9bf41121b23df32b6f6110368e0707bdf3572301107b3e40`  
		Last Modified: Fri, 15 Dec 2017 13:53:45 GMT  
		Size: 618.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c937cc4161299908f0af2ec2b15eaf7bce520c049c646438582c341d8792e1a7`  
		Last Modified: Fri, 15 Dec 2017 13:53:45 GMT  
		Size: 856.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7cacc2d32d784036421b76fc3019c857f361e7b70c4da255cadd4427cba776f`  
		Last Modified: Fri, 15 Dec 2017 13:53:45 GMT  
		Size: 189.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:zesty` - linux; arm64 variant v8

```console
$ docker pull ubuntu@sha256:ea65878d686232eb82eaaffd68676c7334af43446e0005d0c2810f34c9f9d376
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.8 MB (35798548 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:96ad946778d8c777aeb78278e22fb0c1c6de37315e6bfce21654210dc648d789`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 15 Dec 2017 15:02:19 GMT
ADD file:437da04c289775c0fd2bf5fe678fd7affe514262920a1ead1fba87c0475f20bb in / 
# Fri, 15 Dec 2017 15:02:21 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 15 Dec 2017 15:02:22 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 15:02:24 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 15 Dec 2017 15:02:26 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 15 Dec 2017 15:02:26 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:dec7072e8ec5718e527d5c9de1313867b72446297190172e1e3d9de0c5b830ee`  
		Last Modified: Fri, 15 Dec 2017 15:04:41 GMT  
		Size: 35.8 MB (35796134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a52218c98a190f0cb50bd8f73946e55694027b173c9a6efcb59cfb76b4e3668c`  
		Last Modified: Fri, 15 Dec 2017 15:04:29 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34ce812f23df9ecae2602041e53b5b15980e5521f521ac7a4833f848854d03ff`  
		Last Modified: Fri, 15 Dec 2017 15:04:29 GMT  
		Size: 539.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9142cb3047dbb70fdd2c60157b6bd70ba97968ab81ff34b169127d6441ce3e46`  
		Last Modified: Fri, 15 Dec 2017 15:04:29 GMT  
		Size: 857.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e18adfafeca523e759b123ac97d8a04bd4e71dbf398d8026e7c501a650277d6c`  
		Last Modified: Fri, 15 Dec 2017 15:04:29 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:zesty` - linux; 386

```console
$ docker pull ubuntu@sha256:f83a18c1aa495eb9431065ed32dae60079d7909df01b17130a0b120f50a5a1b7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.0 MB (39027292 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:abfe82a137bc78acf2c2133e269653381e1bb2b665f87bfea896897a4ae3b0db`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 15 Dec 2017 04:50:14 GMT
ADD file:02a2ae9e6b1c33e7bc54ffc32ee1105bd46bec9510653c595b4f6dd39172808d in / 
# Fri, 15 Dec 2017 04:50:15 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 15 Dec 2017 04:50:15 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 04:50:16 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 15 Dec 2017 04:50:17 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 15 Dec 2017 04:50:17 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:1930638a30d3325e8f94efd14ea4d2efcd03f5f11338c40a3eecd124141fa527`  
		Last Modified: Fri, 15 Dec 2017 04:59:50 GMT  
		Size: 39.0 MB (39024856 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0759345ffa466ac2d57dfcb3f28d028fe00aee3e2fde6a2cb55dc9ae08c6c368`  
		Last Modified: Fri, 15 Dec 2017 04:59:40 GMT  
		Size: 848.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49fc58495f18eacb4537b1d3464a87cfcbd34de403bc01029dc721727c5f04ac`  
		Last Modified: Fri, 15 Dec 2017 04:59:39 GMT  
		Size: 569.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:054d6b94f4699e6e3c5fa5d2a2145309c1c7f76c827d996a7641cae46169f9cf`  
		Last Modified: Fri, 15 Dec 2017 04:59:39 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97b9498a3ec304ae9a862492da732b9d9be564def2f89b0c3a98e29315d7a8b2`  
		Last Modified: Fri, 15 Dec 2017 04:59:41 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:zesty` - linux; ppc64le

```console
$ docker pull ubuntu@sha256:f5792c6fb6aa241d7a3338351e1214fe38fea283dbca216655bb1df94d9bf25d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.6 MB (40621202 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ad7571dd93b886900cc00bb87583b85f7547a8d9844b26118fe012765e933002`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 15 Dec 2017 03:42:33 GMT
ADD file:e7442c816bae646920455b53eb326a0b7dfeda241c4d287233931d3a5841c0b2 in / 
# Fri, 15 Dec 2017 03:42:37 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 15 Dec 2017 03:42:40 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 03:42:43 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 15 Dec 2017 03:42:47 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 15 Dec 2017 03:42:48 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:a233a0ead57fb19020ecf2dad9cdc4e577b112651c100c04f1406b77a590bf45`  
		Last Modified: Fri, 15 Dec 2017 03:45:20 GMT  
		Size: 40.6 MB (40618741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:035f502b6f6dfa6c653ef9628e559c6aefa9a4618be26f3064c74038ff9f3570`  
		Last Modified: Fri, 15 Dec 2017 03:45:10 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be2c5d4f6c6d84c174faf8768365094e17c6b9c331e2dfd6375ed43ae8afc6ab`  
		Last Modified: Fri, 15 Dec 2017 03:45:10 GMT  
		Size: 564.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23dc1641764381f2c480196eb093784ed8d145bd6a359e2f55ca4c0a178e08ae`  
		Last Modified: Fri, 15 Dec 2017 03:45:10 GMT  
		Size: 856.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f53ae3326d3eb8033288633bd9e925dc5afb7a0d78ee786b3bbb94549c01a4c4`  
		Last Modified: Fri, 15 Dec 2017 03:45:11 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:zesty` - linux; s390x

```console
$ docker pull ubuntu@sha256:76f09b0156ce631c6c578a7aa2723c5fe66b6f25c49861603b2fdca2f3524be3
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.8 MB (37768391 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:003521dfdf484d81b8b2f0a2153e7806a123c222962addfa08801618a7deb44b`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Sun, 07 Jan 2018 06:21:52 GMT
ADD file:1890f1d008b3ad4902f7fb3fafdce0015c9da36cbc1093ede664018dce740342 in / 
# Sun, 07 Jan 2018 06:21:54 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sun, 07 Jan 2018 06:21:58 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sun, 07 Jan 2018 06:21:58 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Sun, 07 Jan 2018 06:21:59 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sun, 07 Jan 2018 06:21:59 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:6aaaf3fff58d3869d12ff2ef50af9c7ec969fe5d96e3fa701e7ca446fed260b9`  
		Last Modified: Sun, 07 Jan 2018 06:23:20 GMT  
		Size: 37.8 MB (37765983 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f734fffeb02f82a76dc1ef33ab8d19a86c2291c7346b9f7c8a27f18418d97be`  
		Last Modified: Sun, 07 Jan 2018 06:23:12 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ecc466e030129de2455ec4b746808822b9444751d0ce75cf4f390675756a593`  
		Last Modified: Sun, 07 Jan 2018 06:23:14 GMT  
		Size: 541.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f56caf1cc6bb045be5e058e0b5451c8c5a8821e7de26f8e41d5662722bf065f7`  
		Last Modified: Sun, 07 Jan 2018 06:23:12 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d499ff8c274e2f50db5ebbca986304c335ef5cc3fdf7d2a21cc8a2de0d740e6d`  
		Last Modified: Sun, 07 Jan 2018 06:23:12 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
