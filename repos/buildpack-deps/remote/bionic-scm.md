## `buildpack-deps:bionic-scm`

```console
$ docker pull buildpack-deps@sha256:0c7cfe717d64c74e5eb4e6b6af0f012f759acdaaa6196f892d73eb07d5cd4b85
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `buildpack-deps:bionic-scm` - linux; amd64

```console
$ docker pull buildpack-deps@sha256:5a0195f95cb2206947e1114de6ba3b6385028f013acc9039f6e7821bdcdad78b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **82.7 MB (82740513 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9b09bff5b123763a309de4fad5576e10e36270e0d555e1f512054dfd946a6036`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 25 Jan 2018 18:21:18 GMT
ADD file:579db95ff66ce23ac7389e2255e9cc18c0183f30f9b22b2d62b5374f1801ef1f in / 
# Thu, 25 Jan 2018 18:21:27 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 25 Jan 2018 18:21:28 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 25 Jan 2018 18:21:29 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 25 Jan 2018 18:21:29 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 25 Jan 2018 18:21:30 GMT
CMD ["/bin/bash"]
# Thu, 25 Jan 2018 23:05:02 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 25 Jan 2018 23:05:03 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 25 Jan 2018 23:05:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:fe2aebf5d506a25f30f34d42fbd8e3eb456d9b5be93bfc5a36e4710416692370`  
		Last Modified: Thu, 25 Jan 2018 18:25:28 GMT  
		Size: 31.8 MB (31835301 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:092d9419b898db967082b545be925694041a80c77cef75e80f6d22a2117eaa4d`  
		Last Modified: Thu, 25 Jan 2018 18:25:25 GMT  
		Size: 839.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55b1a71b0f4c9f395b8b9a80c089b0d3b4afce7aa7b4a5ed821ffb1f1c492dd5`  
		Last Modified: Thu, 25 Jan 2018 18:25:24 GMT  
		Size: 398.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65e00a3d2e0f4f7ae7407e7ef74e9ec26e6c850eb9529a69c04080db5244024b`  
		Last Modified: Thu, 25 Jan 2018 18:25:23 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b87e7aec96844ed589fa43774e80667815fdb5f5cd0df486afb56fe464dc2751`  
		Last Modified: Thu, 25 Jan 2018 18:25:23 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:109231005fac936280bffeb2b58790f29a67e76442ece888c77f804ca6821283`  
		Last Modified: Thu, 25 Jan 2018 23:48:38 GMT  
		Size: 5.8 MB (5750452 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e800d4f206cf9353f9570e3dda30348a4cb9258dc591eedcb27d223b51568ead`  
		Last Modified: Thu, 25 Jan 2018 23:49:27 GMT  
		Size: 45.2 MB (45152511 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:bionic-scm` - linux; arm variant v7

```console
$ docker pull buildpack-deps@sha256:11e98611149d997659d97fe7eec5cc6de56cfd8951332fa17a4a7fc6315a6721
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **80.1 MB (80110348 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a017e88a5e9a920d66e9bd21c8f489f8ab8a14ed963557b099e22b4341b90983`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 16 Jan 2018 13:50:53 GMT
ADD file:eccbbd8db41f0b510fe80b71a90b492bcfd1f437b5932e01ef961815e97edd22 in / 
# Tue, 16 Jan 2018 13:50:54 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 16 Jan 2018 13:50:55 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 13:50:56 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 16 Jan 2018 13:50:56 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 16 Jan 2018 13:50:57 GMT
CMD ["/bin/bash"]
# Tue, 16 Jan 2018 14:19:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 14:19:52 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 16 Jan 2018 14:20:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:9859fd9367e1d9861095c4f489e707d6ea8b3d03e2aebb058011333bc20a1a83`  
		Last Modified: Tue, 16 Jan 2018 13:52:43 GMT  
		Size: 31.6 MB (31619985 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fcf71ef72c832ae5d0f583ca58602d2d375f021e36e915775d1dd6a8b581465`  
		Last Modified: Tue, 16 Jan 2018 13:52:35 GMT  
		Size: 843.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d198607d7dc9fae22d0b0c8dd3bdf66863decbc2d5d86a90a94634d6c0370a6`  
		Last Modified: Tue, 16 Jan 2018 13:52:35 GMT  
		Size: 388.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6bcae9fff469a5c8937957b988234825a5ceaf9f031287c6517b0497f28e39ad`  
		Last Modified: Tue, 16 Jan 2018 13:52:35 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f747fab8c59fa50788218275f7be1e686991172029426e38300fca078a51bef`  
		Last Modified: Tue, 16 Jan 2018 13:52:35 GMT  
		Size: 189.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04bb377d5b77e5329b9829ab02f3693589b65c599e4c953ea1ad32948fd45b2a`  
		Last Modified: Tue, 16 Jan 2018 14:32:59 GMT  
		Size: 5.2 MB (5199445 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:376d97839f188052030bf1aa2e241ca527dd0dad929d5e8b31d90f383024e620`  
		Last Modified: Tue, 16 Jan 2018 14:33:23 GMT  
		Size: 43.3 MB (43288646 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:bionic-scm` - linux; arm64 variant v8

```console
$ docker pull buildpack-deps@sha256:f470079398315f1d1ce64745523a488ac102d30d2628f0d9e939cc03e48f05df
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **84.1 MB (84127887 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:11e320f5590cb083b0b9902115902fbc018e75a31a1719911f5dc3b6ca30c0bb`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 16 Jan 2018 15:01:12 GMT
ADD file:21418f73f7edc29bb429a4968e18bcba0c1634ab86cb849d973dcb2f24d7ad63 in / 
# Tue, 16 Jan 2018 15:01:13 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 16 Jan 2018 15:01:15 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 15:01:16 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 16 Jan 2018 15:01:18 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 16 Jan 2018 15:01:18 GMT
CMD ["/bin/bash"]
# Tue, 16 Jan 2018 15:38:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 15:38:53 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 16 Jan 2018 15:40:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:d8ed088661bf6b9646e4594a66dfecc1729504b3fcb8dc40ee44fd2c57db43f2`  
		Last Modified: Mon, 25 Dec 2017 14:41:01 GMT  
		Size: 33.1 MB (33081551 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48b1c47483536f4a2e822739d6416fb6a45aea4bf5c200737fe55b2770f61c27`  
		Last Modified: Tue, 16 Jan 2018 15:03:38 GMT  
		Size: 843.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b8265af1c0e7c8ba086a5f74e836795ae164be86ddc81bf15065712ece57dca`  
		Last Modified: Tue, 16 Jan 2018 15:03:38 GMT  
		Size: 375.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ab27522f34a5db056eff51468bcf82ed8ebe101dee688aa8b0ddab58a68496a`  
		Last Modified: Tue, 16 Jan 2018 15:03:37 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84dcbd7d0f433be325870621e13763daf39b85de1ddb21f4013e6033dc45b8cf`  
		Last Modified: Tue, 16 Jan 2018 15:03:37 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09918ae0a7b856c19a474704ce6c7ed9a524aac971ce69fc0aa99415b4b88216`  
		Last Modified: Tue, 16 Jan 2018 16:20:20 GMT  
		Size: 5.5 MB (5475880 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74f7300c6f66ff1b30474a8c7210f6d5556e79a57f02310e25d4b7007f2fca3b`  
		Last Modified: Tue, 16 Jan 2018 16:20:56 GMT  
		Size: 45.6 MB (45568221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:bionic-scm` - linux; 386

```console
$ docker pull buildpack-deps@sha256:8062f4df2d7b2d49db436e63bcf0ecfc9578e69e2f904737fc074784c3120e35
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **92.0 MB (92003864 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:38b789669bfa8301f6b8ba9ac22e1d334d947d1c89771554e6dcd097a0f924a9`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 16 Jan 2018 04:56:30 GMT
ADD file:85016009d5bea2894670b1f10908e3283304567a5f62c060f21c70a030a00116 in / 
# Tue, 16 Jan 2018 04:56:31 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 16 Jan 2018 04:56:31 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 04:56:32 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 16 Jan 2018 04:56:33 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 16 Jan 2018 04:56:33 GMT
CMD ["/bin/bash"]
# Tue, 16 Jan 2018 07:04:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 07:04:28 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 16 Jan 2018 07:05:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:97990048465aad46202d89a1b570d66f0c2b8616c169557a0b6b836487ccb5c9`  
		Last Modified: Mon, 25 Dec 2017 14:42:01 GMT  
		Size: 36.8 MB (36773148 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4531761202fda96ba0ec15c6722ca04fb0d85a10cce63068285bf50b5e283779`  
		Last Modified: Tue, 16 Jan 2018 05:17:44 GMT  
		Size: 839.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb14fdb6b0fb3660ff73225ddc4f6401e790c667b3ef0f3374aee4252021f213`  
		Last Modified: Tue, 16 Jan 2018 05:17:44 GMT  
		Size: 394.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d70e03ec212d6901a446936da968a062f01666f8314240f402a98e6ef1ec97ae`  
		Last Modified: Tue, 16 Jan 2018 05:17:45 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10c8f1a481e0b4dbbbf7352d26b9e0b6fb74c3743497108e775d7eef29eefccc`  
		Last Modified: Tue, 16 Jan 2018 05:17:44 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b197941123e23f417de518c524c8d728defcbb1a78c1a4fd5e251b978405b48`  
		Last Modified: Tue, 16 Jan 2018 09:07:44 GMT  
		Size: 6.2 MB (6241807 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc503b802018be826a1fa2a64eb4587257512c22431879a42fe3972127849472`  
		Last Modified: Tue, 16 Jan 2018 09:08:25 GMT  
		Size: 49.0 MB (48986661 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:bionic-scm` - linux; ppc64le

```console
$ docker pull buildpack-deps@sha256:d824239f5a54eda42617860b45fb8a514de422d5abc0b3f721f7183e389890fc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **101.1 MB (101107831 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:63dcc371a505f56579df03f6572b79d7959750743084ef340661a75637b13fc2`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 16 Jan 2018 03:40:19 GMT
ADD file:a18e55144d424bb1d36ba6dd45ab4f47be22699aa6c62a48faba8802e634860e in / 
# Tue, 16 Jan 2018 03:40:25 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 16 Jan 2018 03:40:28 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 03:40:31 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 16 Jan 2018 03:40:35 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 16 Jan 2018 03:40:36 GMT
CMD ["/bin/bash"]
# Tue, 16 Jan 2018 04:18:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 04:18:26 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 16 Jan 2018 04:21:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:d7c8fa713d0882fb1da6e507fcc7ea79967676b8c800915623710647440bf0de`  
		Last Modified: Tue, 16 Jan 2018 03:42:37 GMT  
		Size: 39.5 MB (39538170 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bfafa64aaed137580688aa8af0ef0a67daf8d37334459cba3225e6023b689b1`  
		Last Modified: Tue, 16 Jan 2018 03:42:27 GMT  
		Size: 845.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72ee8fa239f42f9615bb004f59dfb9efcd8100cdbf7292a575604ed3cdd863cb`  
		Last Modified: Tue, 16 Jan 2018 03:42:27 GMT  
		Size: 375.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88df7d97d50b4ff3b70a0dab6c95fe3f38266266622462eb762d4059644f9fa9`  
		Last Modified: Tue, 16 Jan 2018 03:42:27 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1021d61bd03395c07c5dab315a979ee5dbd56d827d961e7330faa16e86f8e9a`  
		Last Modified: Tue, 16 Jan 2018 03:42:28 GMT  
		Size: 189.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:479a40b59f159b87a3c30d981d5451989175c0580e49d8808b6e417f6aba567d`  
		Last Modified: Tue, 16 Jan 2018 04:57:42 GMT  
		Size: 6.3 MB (6346901 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d01493eb86e71af706050c69bd5ee737287b5ef970fe4e7425786ac963de0a2a`  
		Last Modified: Tue, 16 Jan 2018 04:58:06 GMT  
		Size: 55.2 MB (55220498 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:bionic-scm` - linux; s390x

```console
$ docker pull buildpack-deps@sha256:88b229de2f3c9fd761add46309e7f99fe0bfb765a96c64a8bc91f4e9ac95911e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **88.0 MB (88014417 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b5aeebc1d82fa1cb14f5690c503168cf5d0f471a86495b3b81d2da51a12d34a3`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 16 Jan 2018 14:15:32 GMT
ADD file:ddbd70e3356e909b25360837d7c4644c9713292794a349f66fef29de04c43cb1 in / 
# Tue, 16 Jan 2018 14:15:33 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 16 Jan 2018 14:15:33 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 14:15:34 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 16 Jan 2018 14:15:34 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 16 Jan 2018 14:15:35 GMT
CMD ["/bin/bash"]
# Tue, 16 Jan 2018 14:34:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 14:34:07 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 16 Jan 2018 14:34:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:883ee4447835dfd830968ab1e96c4da280aa3f7e0a2d82371ddc562ea690f837`  
		Last Modified: Tue, 16 Jan 2018 14:16:18 GMT  
		Size: 34.9 MB (34912136 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8944109ccae6590ddf65cc5c591df20aa49636c6ffc50c03adab6b23cbb2056`  
		Last Modified: Tue, 16 Jan 2018 14:16:12 GMT  
		Size: 835.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39551b28929f4a0af4685a57ed32c2722c838789cf6806fb02f4e63571f7c694`  
		Last Modified: Tue, 16 Jan 2018 14:16:12 GMT  
		Size: 376.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ba1945a47de994f43dc9576a78f13286a302e04b145b77400c1440e480185c4`  
		Last Modified: Tue, 16 Jan 2018 14:16:12 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b23e4543408e9474cf632d9021b117e141382374e6b3809472ba6979d5cd5da`  
		Last Modified: Tue, 16 Jan 2018 14:16:12 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36ef9c70a6e4dff758ebb368590de008c2f55d8129d8d7b0b0177cb46bd64cc5`  
		Last Modified: Tue, 16 Jan 2018 14:39:03 GMT  
		Size: 5.9 MB (5856030 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a27d56a916f652a0afff03c053b42162897e374564e5eb9253e765dd0d7b0791`  
		Last Modified: Tue, 16 Jan 2018 14:39:18 GMT  
		Size: 47.2 MB (47244022 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
