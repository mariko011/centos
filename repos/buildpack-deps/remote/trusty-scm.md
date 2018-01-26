## `buildpack-deps:trusty-scm`

```console
$ docker pull buildpack-deps@sha256:30224951864768cc89aa966de1241283b57acdde36cfa882782e6b35e98bf5a3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le

### `buildpack-deps:trusty-scm` - linux; amd64

```console
$ docker pull buildpack-deps@sha256:46acdc655da344e1fdf491186639cc382dba01dd602b6eb6ffcfda7e0224daa2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **107.2 MB (107241035 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:42d928b769a2f994908901338cdd111212ab5c69de9e175388192a40ccae7126`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 25 Jan 2018 18:22:16 GMT
ADD file:636a7d1b374fb6ccd672a92e56b1e811652a0bf56d64a2d08282850110db548f in / 
# Thu, 25 Jan 2018 18:22:22 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 25 Jan 2018 18:22:23 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 25 Jan 2018 18:22:34 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 25 Jan 2018 18:22:34 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 25 Jan 2018 18:22:45 GMT
CMD ["/bin/bash"]
# Thu, 25 Jan 2018 23:24:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 25 Jan 2018 23:24:58 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 25 Jan 2018 23:25:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:c954d15f947c57e059f67a156ff2e4c36f4f3e59b37467ff865214a88ebc54d6`  
		Last Modified: Thu, 25 Jan 2018 18:26:39 GMT  
		Size: 73.0 MB (72952953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3688624ef2b94ab3981564e23e1f48df8f1b988519373ccfb79d7974017cb85`  
		Last Modified: Thu, 25 Jan 2018 18:26:29 GMT  
		Size: 72.6 KB (72649 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:848fe4263b3b44987f0eacdb2fc0469ae6ff04b2311e759985dfd27ae5d3641d`  
		Last Modified: Thu, 25 Jan 2018 18:26:28 GMT  
		Size: 629.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23b4459d3b04aa0bc7cb7f7021e4d7bbb5e87aa74a6a5f57475a0e8badbd9a26`  
		Last Modified: Thu, 25 Jan 2018 18:26:28 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36ab3b56c8f1a3188464886cbe41f42a969e6f9374e040f13803d796ed27b0ec`  
		Last Modified: Thu, 25 Jan 2018 18:26:28 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7361ae9cd8bfbfa001a5b3c34e3265202ebb0e164e15943c34787f87d1b98275`  
		Last Modified: Fri, 26 Jan 2018 00:01:41 GMT  
		Size: 4.7 MB (4657857 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b9dba1c60ce07c433da00107af3285f6de8d023da3aa71828ba36b905def4e9`  
		Last Modified: Fri, 26 Jan 2018 00:02:23 GMT  
		Size: 29.6 MB (29555932 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:trusty-scm` - linux; arm variant v7

```console
$ docker pull buildpack-deps@sha256:cc793fdff006e9ed599ba2de38e6928cd8c92ae1155da80038124ca203e0ba06
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **97.8 MB (97826125 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0e3b12776dc5a586014bda54bded70f1932b932760ca618b6e3f96b257100b3c`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 16 Jan 2018 13:51:22 GMT
ADD file:1e67423f9306298be02b7e94e177bea31b1d7f7eaa1a35773dda58e7137d3791 in / 
# Tue, 16 Jan 2018 13:51:23 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 16 Jan 2018 13:51:24 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 13:51:25 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 16 Jan 2018 13:51:25 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 16 Jan 2018 13:51:25 GMT
CMD ["/bin/bash"]
# Tue, 16 Jan 2018 14:25:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 14:25:44 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 16 Jan 2018 14:27:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:68e89cb912d19028b9acb0e228cfbb5008d4e5b81b475dde5233d1d1c55110b0`  
		Last Modified: Tue, 16 Jan 2018 13:53:26 GMT  
		Size: 66.4 MB (66436079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5b71eaac9586e51b0c384bd33f3750a326ba9936a645677bb6fa76b4b36c720`  
		Last Modified: Tue, 16 Jan 2018 13:53:05 GMT  
		Size: 76.8 KB (76766 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61958df0bcde798f1cce68b5c42a7b8484a8e8f852c2660833ae3c4f0e4d2937`  
		Last Modified: Tue, 16 Jan 2018 13:53:05 GMT  
		Size: 628.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:421048a89c722b707950036d37570e690354ac204734a7cd3138481519595e30`  
		Last Modified: Tue, 16 Jan 2018 13:53:05 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf6bd95c7cabe9d6c95083fa676a09a512c84b065e8bfe29d33719c1b9272c9f`  
		Last Modified: Tue, 16 Jan 2018 13:53:05 GMT  
		Size: 189.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:176f01c93ce421e0f3955cd8a8c394ffa3080d87ff11a6b2ae7be532623b7501`  
		Last Modified: Tue, 16 Jan 2018 14:34:25 GMT  
		Size: 4.2 MB (4246364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2877a6217d6707b403d9c1c35c7bc3acce78c62f29264ec9722e1638f74a4efe`  
		Last Modified: Tue, 16 Jan 2018 14:34:41 GMT  
		Size: 27.1 MB (27065247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:trusty-scm` - linux; arm64 variant v8

```console
$ docker pull buildpack-deps@sha256:f1d7c963e5b175f85e06af32b59bcd86ae9e7d574b409aec83a503bf05cff100
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **100.1 MB (100129416 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d0f711cae4d20830b3aff1c967f02966311aa654612c6ba29fdacbb11346c46b`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 16 Jan 2018 15:01:50 GMT
ADD file:58156da5ac2a056211ef8abee655c5ebaf8770354cd6eef94b7467d3b99f8bbe in / 
# Tue, 16 Jan 2018 15:01:52 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 16 Jan 2018 15:01:53 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 15:01:55 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 16 Jan 2018 15:01:56 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 16 Jan 2018 15:01:57 GMT
CMD ["/bin/bash"]
# Tue, 16 Jan 2018 15:50:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 15:50:45 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 16 Jan 2018 15:52:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:8d6db2511a7fc78894ceefa577fc348fbe1498d6c6ea0ce645bf51032bdf57e1`  
		Last Modified: Tue, 16 Jan 2018 15:05:03 GMT  
		Size: 67.7 MB (67716369 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0250587b8805f3ba1ee7cfb740b6b843942252648ceb4dd1cfcea04043f56f5`  
		Last Modified: Tue, 16 Jan 2018 15:04:29 GMT  
		Size: 59.1 KB (59091 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:842925c7a13fc6c25659000b78a41cae52bd2e7fb89bb2debdd4a22178290e95`  
		Last Modified: Tue, 16 Jan 2018 15:04:29 GMT  
		Size: 625.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8e6cb70a6da3ae10d55fa978c31345a2fd97c1c30bbb4d0ab6c65e96796b236`  
		Last Modified: Tue, 16 Jan 2018 15:04:29 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b353c20f9ce6c7b9ec134bb7e59cfe3ba204361e35bdd17dbd136526a6dac31`  
		Last Modified: Tue, 16 Jan 2018 15:04:29 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18083c7f451d0927b9d42c4499570b77ea7494837d019c2022455a3a91dc3458`  
		Last Modified: Tue, 16 Jan 2018 16:22:23 GMT  
		Size: 4.4 MB (4371290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c2858c8f9b7ee0464b3192785cfe7d1dab1f25fae7e12eccd73b78f8b6a1a7a`  
		Last Modified: Tue, 16 Jan 2018 16:22:49 GMT  
		Size: 28.0 MB (27981027 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:trusty-scm` - linux; 386

```console
$ docker pull buildpack-deps@sha256:2d0360b418ea2d550f002abeff10df19f23e56784f29ac839a59124189e85b8d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.2 MB (104184385 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e14cf3309cb631f780be023eb007d81802ad7a2c7c77641b642ff8af90ef2b2d`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 16 Jan 2018 05:01:08 GMT
ADD file:98e5416d76ae80d1f2b87b2cb87fedbbfea1f60064b1b993d71317684b0cf54e in / 
# Tue, 16 Jan 2018 05:01:09 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 16 Jan 2018 05:01:10 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 05:01:10 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 16 Jan 2018 05:01:11 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 16 Jan 2018 05:01:11 GMT
CMD ["/bin/bash"]
# Tue, 16 Jan 2018 07:29:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 07:29:54 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 16 Jan 2018 07:39:14 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:5ed64485df98e30aba692d7b7042ca8864a86ca03100f926988f735a9ab8c193`  
		Last Modified: Mon, 15 Jan 2018 14:44:03 GMT  
		Size: 70.3 MB (70302974 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9a65abe160b228b908d8384abfa1dc62556dadbc032b40feba51ebd687bcfaf`  
		Last Modified: Tue, 16 Jan 2018 05:37:51 GMT  
		Size: 64.9 KB (64854 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5511748640f5d19c480d797da4619c8f744be7a773bc3fe3d21796d9c6f9d3a`  
		Last Modified: Tue, 16 Jan 2018 05:37:49 GMT  
		Size: 595.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c6132ab49b5bef00b5cc3ab03f6264f8ad2b5e08df924fd3b7d5013dd18b370`  
		Last Modified: Tue, 16 Jan 2018 05:37:49 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0434ee06fbe22ca33b0afd1e005b6308c805df1437c3a43ae57998a635991564`  
		Last Modified: Tue, 16 Jan 2018 05:37:49 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:585b5db3d1fe577fc4a35ac9006bc0df00f2c4e8e6f41da84197681d3f910baa`  
		Last Modified: Tue, 16 Jan 2018 09:26:29 GMT  
		Size: 4.6 MB (4645120 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8808f6cfaee40064027ed39be40f976d4a4f82210ea55a0fc3590dd66db6e658`  
		Last Modified: Tue, 16 Jan 2018 09:27:01 GMT  
		Size: 29.2 MB (29169828 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:trusty-scm` - linux; ppc64le

```console
$ docker pull buildpack-deps@sha256:b61dc24433d9755e09a09166de8e062d46425cf6a97ac0a3247c94b8cec76bbb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **111.1 MB (111147923 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d7ac82d799563f32c3cf7a97dd08a30c1e7b5a6d51c312cb2754331f21daddd9`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 16 Jan 2018 03:40:57 GMT
ADD file:9c2219ef863cfae20210a8f06472251c61f471eb305e0f4da1687ef9a0799df5 in / 
# Tue, 16 Jan 2018 03:41:03 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 16 Jan 2018 03:41:06 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 03:41:10 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 16 Jan 2018 03:41:12 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 16 Jan 2018 03:41:14 GMT
CMD ["/bin/bash"]
# Tue, 16 Jan 2018 04:33:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 04:33:30 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 16 Jan 2018 04:35:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:9a7801d94d3a668643f7ffb464f6950c02bf56ef5f553e1934c732058702d2e2`  
		Last Modified: Tue, 16 Jan 2018 03:43:16 GMT  
		Size: 74.4 MB (74381693 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d9244ad82ba14e77ca1e0e0329748724b5f35ffb94fd623192728a867242f55`  
		Last Modified: Tue, 16 Jan 2018 03:42:57 GMT  
		Size: 63.4 KB (63420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6c1f1bec3b5b18cd0653231a4f69bc98ca76bd5f8b0e5159a5d294be968b8ff`  
		Last Modified: Tue, 16 Jan 2018 03:42:57 GMT  
		Size: 659.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bccadace21601f3fd6cc6e93be449adf7f71decf0666b2028602e5a63bacba78`  
		Last Modified: Tue, 16 Jan 2018 03:42:57 GMT  
		Size: 856.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f741e9b8a9cb81d9373b4ea9bf079a4de284173fb185bdcadb5c4cc51634a0ac`  
		Last Modified: Tue, 16 Jan 2018 03:42:56 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2fa612a7e9d65d0be2e7764bdb6b621ee0dccbd761108cf2da9796bc03fab76`  
		Last Modified: Tue, 16 Jan 2018 04:59:06 GMT  
		Size: 4.7 MB (4713387 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:746e28da5c5917191da90224b3f8c7692b245973516c7c5f2a42ba7cec80a24f`  
		Last Modified: Tue, 16 Jan 2018 04:59:21 GMT  
		Size: 32.0 MB (31987720 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
