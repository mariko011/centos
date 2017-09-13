## `ubuntu:zesty`

```console
$ docker pull ubuntu@sha256:21d87ba3fe93b224f65e4c57f99b86c8d4992cbc119425a70291356ed47b9b76
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
$ docker pull ubuntu@sha256:fc1247b787ddb736037af33ed1f130c27bd01670a35f9557f884b9afd0d7869a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.4 MB (38435916 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f83b3efab60e2246f32341e1eae310d082a3a39d54951d581ffde88f4fc1733a`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 13 Sep 2017 23:26:32 GMT
ADD file:54f74d6403e196a564cec6585845856c522a407ff9e880cf27ced1afcb06067d in / 
# Wed, 13 Sep 2017 23:26:33 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 13 Sep 2017 23:26:34 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 23:26:34 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 13 Sep 2017 23:26:35 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 13 Sep 2017 23:26:35 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:7206277c4df3546109d5c7b18b7ba8c4729b73d9eeb7838a070bf21ef1db1f2c`  
		Last Modified: Wed, 13 Sep 2017 23:27:43 GMT  
		Size: 38.4 MB (38433486 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a82e9ca590957b32d0bc7f0d7039f98ecd6c9c76707ab5dd0f8293e2fd4bb2f`  
		Last Modified: Wed, 13 Sep 2017 23:27:36 GMT  
		Size: 845.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11693776dd03b73e89938f85ddd66b45f059bf9b60d0b7da1b948a33891d24ac`  
		Last Modified: Wed, 13 Sep 2017 23:27:36 GMT  
		Size: 570.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2554ac6730ed8691b6bf5a10a14686786e4b9b81347a9009b89da9aa904f542b`  
		Last Modified: Wed, 13 Sep 2017 23:27:37 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9ba1a3e7209099e9bbe094412cad8e009410edd155a9116e440f7890e1e2fed`  
		Last Modified: Wed, 13 Sep 2017 23:27:36 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:zesty` - linux; arm variant v7

```console
$ docker pull ubuntu@sha256:27b85325a349062f3d49c3c4317f51fd237a7bf0ce585e3cf5217a551a9495c3
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.1 MB (34104407 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bdc55179839908b38837a2ae1f6cb888c5b3846381220e8b0c5689533c0ba398`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Sat, 09 Sep 2017 01:30:17 GMT
ADD file:c533c8838895abd08a8db97d9a7692f9af97a1d89b1300d6ee54c58604762049 in / 
# Sat, 09 Sep 2017 01:30:22 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 09 Sep 2017 01:30:25 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 09 Sep 2017 01:30:27 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Sat, 09 Sep 2017 01:30:29 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 09 Sep 2017 01:30:30 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:66dabed00d6e902c488f72c17cdb93bed861860cdfaac065004fb04f4f2d0f46`  
		Last Modified: Fri, 21 Jul 2017 14:00:37 GMT  
		Size: 34.1 MB (34101919 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:105e9c9d26615b417ed66b3f6fee3f5a6dc42aac8cf993e306001cfda75ce8db`  
		Last Modified: Sat, 09 Sep 2017 01:31:45 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3780aa486cdec9b0b6741fd36bf01e175b6c2fcca01c50adfde7ec1005b71f9c`  
		Last Modified: Sat, 09 Sep 2017 01:31:45 GMT  
		Size: 614.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73c14c4e096c94f454e92bb8d940e16d038f94f80d59282250dc9bd3e0419729`  
		Last Modified: Sat, 09 Sep 2017 01:31:45 GMT  
		Size: 856.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad827633869399e7f7e9fe9a27f5a42d07c962b49a2f3c3bbbca0572e12ab9bb`  
		Last Modified: Sat, 09 Sep 2017 01:31:45 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:zesty` - linux; arm64 variant v8

```console
$ docker pull ubuntu@sha256:3c379874d722ad62831aac874cea0975f7fd1260966efe7297fee80e35bac4ba
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.6 MB (35618128 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f769c4263c3b183ff6aa5dd04462c9320ea66283ddbf916a1e53f42cf4515968`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 13 Sep 2017 23:27:42 GMT
ADD file:64c75090656f016a8570c99a17c17fe0304320b09d995d0ef4b48eb7bc015490 in / 
# Wed, 13 Sep 2017 23:27:43 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 13 Sep 2017 23:27:45 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 23:27:46 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 13 Sep 2017 23:27:47 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 13 Sep 2017 23:27:48 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:7c877bb51e771f8d67c8956ed27738229651db84b834ca0ae779e061a0495cac`  
		Last Modified: Wed, 13 Sep 2017 23:29:59 GMT  
		Size: 35.6 MB (35615725 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc8f87e646954878795d43b4cd03c73cf61c42ee98d25020c65ad9531f815440`  
		Last Modified: Wed, 13 Sep 2017 23:29:47 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83375c8a6f1b0d7b8924513e89218e434fde03b353fb025d32d501facb816ee4`  
		Last Modified: Wed, 13 Sep 2017 23:29:47 GMT  
		Size: 538.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e467d01a051ec12f69c63eafe0ed3a5001ff921e3ba9dd49d8a1fe3880ed441e`  
		Last Modified: Wed, 13 Sep 2017 23:29:47 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3247c9d4ec85d8be1b91a4f7d6a826ba7dc39fe5782ac7f19875348380c6699`  
		Last Modified: Wed, 13 Sep 2017 23:29:47 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:zesty` - linux; 386

```console
$ docker pull ubuntu@sha256:8d399fe7ffe2567739d22631c09ab0fcca4696fc0ee84b0cccba73ed4153488e
```

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.8 MB (38825766 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:94e8fe14b918d20e4cadfcd3da9f04ca9b5c25bf60ebb12c9b1aea65a603ee59`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 13 Sep 2017 23:26:43 GMT
ADD file:8e0d75f8a90ecd4c5427caf2a4505ba3e446e05a7c8c19983f525ead8ee1be4a in / 
# Wed, 13 Sep 2017 23:26:44 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 13 Sep 2017 23:26:45 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 23:26:45 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 13 Sep 2017 23:26:46 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 13 Sep 2017 23:26:46 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:287b6d014791a924cb2886b352cf093e44cc654960a1cb5383857fe068ce3e3a`  
		Last Modified: Wed, 13 Sep 2017 23:28:02 GMT  
		Size: 38.8 MB (38823391 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a74ee27bbc1e33e9e7a72b09e16a806823569f8777f319a6d080d84df9a7b8c`  
		Last Modified: Wed, 13 Sep 2017 23:27:56 GMT  
		Size: 848.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa5391380ba247636597b4a58043768c2dad2962bedc5de51e08f8af1d832305`  
		Last Modified: Wed, 13 Sep 2017 23:27:56 GMT  
		Size: 513.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e544338944d9e76f6109519e0ffc452097dd1497593ae4b475270af6c7c3a0b`  
		Last Modified: Wed, 13 Sep 2017 23:27:57 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2bbd29fcd632b9baf3f78b299dd02305ba5aca171705395c945eed33152fdb56`  
		Last Modified: Wed, 13 Sep 2017 23:27:56 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:zesty` - linux; ppc64le

```console
$ docker pull ubuntu@sha256:1306b8babe88380d460c129238e19eef32f6ece5beed76608ca0c27ba91b7b93
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.4 MB (40446410 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:54079819b2824c9ce3d444315d65c82fb38ff91d3b097e30bf44ef11fb57f315`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 13 Sep 2017 23:29:07 GMT
ADD file:45445e712019078762c489d6e9cd7fd2f17f7970f425294589f448fb18043e71 in / 
# Wed, 13 Sep 2017 23:29:22 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 13 Sep 2017 23:29:26 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 23:29:38 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 13 Sep 2017 23:29:43 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 13 Sep 2017 23:29:45 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:130032f0c2a91c3f1be0be8b58bf7ef7485d7822d79fca9a4a19a9ff8aca45cb`  
		Last Modified: Wed, 13 Sep 2017 23:31:37 GMT  
		Size: 40.4 MB (40443953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6b3e945ed0ff749409dd5e2edb668ad3dab949e7a3931e7d612e3d7233a8fff`  
		Last Modified: Wed, 13 Sep 2017 23:31:26 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9134b724716494d0020a92fecdaff858acb0a7e121ee21b3e93d6b9bc0f95fb5`  
		Last Modified: Wed, 13 Sep 2017 23:31:26 GMT  
		Size: 562.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:147db563ff3312b8f3d2e81784976897d46e0a4121b4e6b3308e561f5e6f7553`  
		Last Modified: Wed, 13 Sep 2017 23:31:26 GMT  
		Size: 857.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35ccb888a77e4bd0ecb014add5f465330fb927d1d28a16ea2b69ab022536cde8`  
		Last Modified: Wed, 13 Sep 2017 23:31:26 GMT  
		Size: 185.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:zesty` - linux; s390x

```console
$ docker pull ubuntu@sha256:ac3fbd28cfddb1b8b9d4fb75a93db633484344f739f0417f1adaed0f3b360b2f
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.6 MB (37604714 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7f39abdad2e750e6da255b2f276bf88a3e7c01afb13dd7e33abd847cc53a501d`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 13 Sep 2017 23:26:30 GMT
ADD file:3584935e83541cb9e282a18d4701ada801101355eda5bb94ab1a9c66c9191ea7 in / 
# Wed, 13 Sep 2017 23:26:31 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 13 Sep 2017 23:26:31 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 23:26:32 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 13 Sep 2017 23:26:32 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 13 Sep 2017 23:26:33 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:842709ea31714ac6d32645d60833932b2cee9d2b4b06ae3d462c1ec6016fad00`  
		Last Modified: Wed, 13 Sep 2017 23:27:15 GMT  
		Size: 37.6 MB (37602309 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8c06d28c82b7a26d012c1d50755741794f3e8a34eac52bf96282bb872ba00fa`  
		Last Modified: Wed, 13 Sep 2017 23:27:06 GMT  
		Size: 848.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6b8c7665e7e3627fecced94ff48f5f5d489fc5fbe49ced9c2bd0c13bcc06411`  
		Last Modified: Wed, 13 Sep 2017 23:27:06 GMT  
		Size: 538.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07e76e10dcddba8ee98375caa489a8b3d30db6d760ec7976223172565b108ea7`  
		Last Modified: Wed, 13 Sep 2017 23:27:06 GMT  
		Size: 857.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fbc13489191008eca7b978c595acb4c8869fd962dc7864aef9e11fd20dbb5bb`  
		Last Modified: Wed, 13 Sep 2017 23:27:06 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
