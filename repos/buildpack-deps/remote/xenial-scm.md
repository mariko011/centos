## `buildpack-deps:xenial-scm`

```console
$ docker pull buildpack-deps@sha256:6ab99cb83c864cba07e6aadf08df37accf82794fbdaa909f86368d0aee7e84f9
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
$ docker pull buildpack-deps@sha256:61ddedf83344e2e07c76d766fb58269751bd704c18e9e05f75b9e914dacd5396
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **92.0 MB (91966965 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ef948258f184ae94152739950f4f4ba0c36b1aabd1fa010c2c90d3774c06b277`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 25 Jan 2018 18:23:30 GMT
ADD file:a3344b835ea6fdc5692df23826c970403656c6947342e117b2ac1a05956679af in / 
# Thu, 25 Jan 2018 18:23:39 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 25 Jan 2018 18:23:39 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 25 Jan 2018 18:23:50 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 25 Jan 2018 18:23:51 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 25 Jan 2018 18:23:51 GMT
CMD ["/bin/bash"]
# Thu, 25 Jan 2018 23:29:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 25 Jan 2018 23:29:49 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 25 Jan 2018 23:31:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:1be7f2b886e89a58e59c4e685fcc5905a26ddef3201f290b96f1eff7d778e122`  
		Last Modified: Wed, 24 Jan 2018 23:46:22 GMT  
		Size: 42.9 MB (42863496 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fbc4a21b806838b63b774b338c6ad19d696a9e655f50b4e358cc4006c3baa79`  
		Last Modified: Thu, 25 Jan 2018 18:27:26 GMT  
		Size: 846.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c71a6f8e13782fed125f2247931c3eb20cc0e6428a5d79edb546f1f1405f0e49`  
		Last Modified: Thu, 25 Jan 2018 18:27:27 GMT  
		Size: 620.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4be3072e5a37392e32f632bb234c0b461ff5675ab7e362afad6359fbd36884af`  
		Last Modified: Thu, 25 Jan 2018 18:27:26 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06c6d2f5970057aef3aef6da60f0fde280db1c077f0cd88ca33ec1a70a9c7b58`  
		Last Modified: Thu, 25 Jan 2018 18:27:26 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2adfa3a2557b67fd7b46170f49413754ecaea0cb42f65b92ffbfb3db77bbe46f`  
		Last Modified: Fri, 26 Jan 2018 00:03:44 GMT  
		Size: 7.3 MB (7316764 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f93e47371d853c942477099654f25068f1c33810f6f8c6fa4becca2342c12c6f`  
		Last Modified: Fri, 26 Jan 2018 00:04:17 GMT  
		Size: 41.8 MB (41784214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:xenial-scm` - linux; arm variant v7

```console
$ docker pull buildpack-deps@sha256:43b784fae5925dc6ab9edf49ac7b6394694eec907976590558f4274a202d2cfe
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **82.2 MB (82224027 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2cfbf1cfc6ab19ab76086e825b272d01083cdc588e3d29c14e285fda876fcdc4`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 26 Jan 2018 13:51:58 GMT
ADD file:9112e35921c3b641ad47919bdc8714a0d0be15bdbdc15a1e207432a25744d35d in / 
# Fri, 26 Jan 2018 13:51:59 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 26 Jan 2018 13:52:00 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 26 Jan 2018 13:52:01 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 26 Jan 2018 13:52:01 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 26 Jan 2018 13:52:01 GMT
CMD ["/bin/bash"]
# Fri, 26 Jan 2018 14:29:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 26 Jan 2018 14:29:19 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 26 Jan 2018 14:30:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:12d2fa1549d508f00ed32951a1fcd8b191e6bec2784877898d41941206da2060`  
		Last Modified: Fri, 26 Jan 2018 13:54:16 GMT  
		Size: 38.0 MB (37987982 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b66e47c4b68f45f59db81ad00e6d6cb9de49eb7f597c5034c1aae41f9315e88`  
		Last Modified: Fri, 26 Jan 2018 13:54:06 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:039f9b32d330c6e3d372892b5b40329172b2a2cf520afc1d081b9d5381eadf5c`  
		Last Modified: Fri, 26 Jan 2018 13:54:07 GMT  
		Size: 612.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cabb4c40729a408cc528ca027a0569f1ff71b2b1c3bc48ec87492749fb6fbbd2`  
		Last Modified: Fri, 26 Jan 2018 13:54:06 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c83576329d6df4a4e78e211f037e1845fd4442a3b5a0cf1249d4454eb58aa514`  
		Last Modified: Fri, 26 Jan 2018 13:54:06 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d67f08db2d45ecda7ee86f193a8c7eb15fbe38cf64f70fb48dd9ed0f8f5bb60`  
		Last Modified: Fri, 26 Jan 2018 14:36:03 GMT  
		Size: 6.2 MB (6164129 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f99606c03a433b59a4d9132eb37329f60c1c871ca43633c936399e71e739dd29`  
		Last Modified: Fri, 26 Jan 2018 14:36:27 GMT  
		Size: 38.1 MB (38069432 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:xenial-scm` - linux; arm64 variant v8

```console
$ docker pull buildpack-deps@sha256:eabac5b28ce6f1ccb60b3134e820cc98f6545b2bf80b35630b9739e77d0a1113
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **85.1 MB (85148268 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2a573f78e514619873a9051ae4628ac7a989f302df9e33321a580f0bbbc7e396`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 16 Jan 2018 15:02:22 GMT
ADD file:d2ccf106244f289655b29bd948b43a8c7bac56bcd379ec4bbb81e61e7b052882 in / 
# Tue, 16 Jan 2018 15:02:24 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 16 Jan 2018 15:02:25 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 15:02:27 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 16 Jan 2018 15:02:28 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 16 Jan 2018 15:02:28 GMT
CMD ["/bin/bash"]
# Tue, 16 Jan 2018 16:05:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 16:05:20 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 16 Jan 2018 16:07:10 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:e21ebf059e036f6320cea1ea17196b2f5c44a1faf8bd99041710e4115faace73`  
		Last Modified: Tue, 16 Jan 2018 15:05:46 GMT  
		Size: 39.1 MB (39070411 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ab02f059ae81639d8c41defd72263d017013e2457d59f2856a3a5895dec436a`  
		Last Modified: Tue, 16 Jan 2018 15:05:34 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f23382a925578a9b55592f20f9c69b1e8e784077e9f5ab2ed18c1b2f434382f`  
		Last Modified: Tue, 16 Jan 2018 15:05:34 GMT  
		Size: 612.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5094ef2c147bf29b3c920392313be82fa48fc73a411ee787cdfea1692e76665`  
		Last Modified: Tue, 16 Jan 2018 15:05:34 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cea44e2552b58a42b8361c71d5c7f5393c7f4c3683e812eebf25a1d87ee79ed1`  
		Last Modified: Tue, 16 Jan 2018 15:05:35 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8aecc59d68efbe20783dc75d4e12530ade824326b7bea7cf317b847786bcf0b`  
		Last Modified: Tue, 16 Jan 2018 16:23:51 GMT  
		Size: 6.4 MB (6371510 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c374cea55349c7e213ae6bdfe5091e179778f61bfa63ca4fd33a7b4b1066d6e7`  
		Last Modified: Tue, 16 Jan 2018 16:24:19 GMT  
		Size: 39.7 MB (39703861 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:xenial-scm` - linux; 386

```console
$ docker pull buildpack-deps@sha256:e41eb32482fa0fc07cf170105f5aa04abc95478ac51b5d6a1356fc1514f9a3de
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **93.4 MB (93425210 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d603179f9c4b6cf98622e709763165a83f2e911cd0919298c06e3abb214accb3`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 26 Jan 2018 05:28:53 GMT
ADD file:a2fdeed58b54171aafdc4d0d63bbc2233b05616df11ca447de69925eb2544458 in / 
# Fri, 26 Jan 2018 05:28:54 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 26 Jan 2018 05:28:55 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 26 Jan 2018 05:28:56 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 26 Jan 2018 05:28:56 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 26 Jan 2018 05:28:57 GMT
CMD ["/bin/bash"]
# Fri, 26 Jan 2018 09:13:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 26 Jan 2018 09:13:51 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 26 Jan 2018 09:14:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:69bfba48bfd5dab360bc002520a76059d75c25a05130328fdd48cc9a6661c6bd`  
		Last Modified: Fri, 26 Jan 2018 06:02:06 GMT  
		Size: 43.2 MB (43189118 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4135ad7a18f392f5676d43b00b3662be9c56308b19ffbbe5dac1cd4ce13c3386`  
		Last Modified: Fri, 26 Jan 2018 06:01:50 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08ac84c4380a8c58145cd5563c2edecb0894b6a269bf9e88282cb1280fe4fe57`  
		Last Modified: Fri, 26 Jan 2018 06:01:50 GMT  
		Size: 583.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78e68e48a9a4dc516c724d5aca5ea687dddfca2426ba5bd53edd733f8de37790`  
		Last Modified: Fri, 26 Jan 2018 06:01:50 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e3e7a06bcfb60f6c102866e83fb5998ef9b99f2baa2497da175df01f2a3bf03`  
		Last Modified: Fri, 26 Jan 2018 06:01:50 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b75c9101ede4fcb0487fc71eb2258508a43a30e73fee1393444deb0671e6d4f5`  
		Last Modified: Fri, 26 Jan 2018 10:46:15 GMT  
		Size: 7.5 MB (7457068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3eeb0b542d97d3afb9473f59c2bfd755a6626f8663cf414b21044214024e9db`  
		Last Modified: Fri, 26 Jan 2018 10:46:55 GMT  
		Size: 42.8 MB (42776566 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:xenial-scm` - linux; ppc64le

```console
$ docker pull buildpack-deps@sha256:32ab16f9b5414749162c2bb04c302b2e803ac7c018b1d04e99f68d2cc35c34e5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **97.6 MB (97570247 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1c6ef31d885e3048280105ff1c0260518ecedad07ece544e03f0078929747862`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 26 Jan 2018 03:41:19 GMT
ADD file:7bb1badf2ddc010aa8511773b3116d31f6c0e7752d9a5fb4d51d3239ac648013 in / 
# Fri, 26 Jan 2018 03:41:23 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 26 Jan 2018 03:41:26 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 26 Jan 2018 03:41:29 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 26 Jan 2018 03:41:32 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 26 Jan 2018 03:41:34 GMT
CMD ["/bin/bash"]
# Fri, 26 Jan 2018 04:35:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 26 Jan 2018 04:35:53 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 26 Jan 2018 04:37:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:0ee828c1a6b9931787bac2eb1e3d18afb13755be0354a6d602bd7113a54bf77b`  
		Last Modified: Fri, 26 Jan 2018 03:43:47 GMT  
		Size: 45.3 MB (45288935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8729e11c4446b648e4410135637565cce4779fc24e3f0580f7dfe06121ac40ee`  
		Last Modified: Fri, 26 Jan 2018 03:43:33 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2409d39f3293be5f0d6732e6f078aaaf34adeaffd20d3d424229f7d1d63d8e2b`  
		Last Modified: Fri, 26 Jan 2018 03:43:34 GMT  
		Size: 646.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4098a4920a587b4d23814c5ad76a2876ddf59ed187558b9a55b577df2a365ec8`  
		Last Modified: Fri, 26 Jan 2018 03:43:34 GMT  
		Size: 857.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7aafbe2bba3c8b964fab243e2c86b4ab84fc06465267d79d4e817b47e33d4b10`  
		Last Modified: Fri, 26 Jan 2018 03:43:33 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e03b2091d04128e07ec5e8c5b5ab6c396b15d4e52dc8ddbd4c9fa2afa43ed6c`  
		Last Modified: Fri, 26 Jan 2018 04:51:14 GMT  
		Size: 7.2 MB (7218590 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f839f8db3265159f206d4fb37242c0fec60731ec906a9ec04cc4067a1e1cf20`  
		Last Modified: Fri, 26 Jan 2018 04:51:35 GMT  
		Size: 45.1 MB (45060198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:xenial-scm` - linux; s390x

```console
$ docker pull buildpack-deps@sha256:9f20e4f0b9702a74000dd2b1445014904888e699018b8a3e0e169a9f5f4a3811
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **91.6 MB (91595181 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7ad04b418a4cff56597d20f72d40d2adba600bf692f75f45673a68ddc709a94b`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 26 Jan 2018 14:15:44 GMT
ADD file:f981fcb775310ce0cf30f037ab72494e51ec03ee704617f95f2f2d324a5075fa in / 
# Fri, 26 Jan 2018 14:15:45 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 26 Jan 2018 14:15:45 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 26 Jan 2018 14:15:46 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 26 Jan 2018 14:15:46 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 26 Jan 2018 14:15:47 GMT
CMD ["/bin/bash"]
# Fri, 26 Jan 2018 14:36:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 26 Jan 2018 14:36:25 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 26 Jan 2018 14:36:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:43b18e89cbaed260beaf040713aeb6dffcd9863f30ae9aceb3e07dfe2c08d0f7`  
		Last Modified: Fri, 26 Jan 2018 14:16:45 GMT  
		Size: 42.0 MB (41952249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a7bf346a9767979d87f9cbc89e6c6f896a0aa6cdf7e4e40aa10408a7cc70fd2`  
		Last Modified: Fri, 26 Jan 2018 14:16:37 GMT  
		Size: 842.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7cba14c7fd1df11ef843ea83e937accf9351d5e0f413bbdfb88f4adea42b2847`  
		Last Modified: Fri, 26 Jan 2018 14:16:38 GMT  
		Size: 617.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25b3be61aa5dc1c2132b4a5dfddeb3fe0e0e49521c64565f9c0f3662850afd12`  
		Last Modified: Fri, 26 Jan 2018 14:16:38 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16ecf42732558b6296cc0450a556d0af95c831d12ee437da72f718bfecdcfce7`  
		Last Modified: Fri, 26 Jan 2018 14:16:38 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9badc167f3b17858773d787f788781fec04233aead3552a2ec63cf7d25fa86fc`  
		Last Modified: Fri, 26 Jan 2018 14:39:42 GMT  
		Size: 7.1 MB (7052261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05d19c9b7c8f701f354284ea1ac5b9fe7f0a49cab22576dfef69fb77c6a523ae`  
		Last Modified: Fri, 26 Jan 2018 14:39:54 GMT  
		Size: 42.6 MB (42588189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
