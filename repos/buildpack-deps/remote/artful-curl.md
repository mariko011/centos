## `buildpack-deps:artful-curl`

```console
$ docker pull buildpack-deps@sha256:d73ed27ab75611726985c6488a78e0755e67272b22d10135d4ff1f5f384fefca
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `buildpack-deps:artful-curl` - linux; amd64

```console
$ docker pull buildpack-deps@sha256:4620fdd96250d2f3a3c25dcab0930811b5fe26c8dcfc2732a5d07a7dbf4dba9d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.2 MB (45188804 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:91b09275908eed812b462565a5f85e802873e8a2e895b5303e74cd4a823cde99`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 18 Sep 2017 23:31:07 GMT
ADD file:0604a68f11f605ac8e211697a547b41a8e3838cf756d1da8d705dbc56c728b83 in / 
# Mon, 18 Sep 2017 23:31:07 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 18 Sep 2017 23:31:08 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 18 Sep 2017 23:31:09 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Mon, 18 Sep 2017 23:31:09 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 18 Sep 2017 23:31:09 GMT
CMD ["/bin/bash"]
# Mon, 18 Sep 2017 23:51:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 18 Sep 2017 23:51:19 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:0684026fc261ec9a73252927de71faa8ba563bec1f7c089b5d8c8b4a6439293a`  
		Last Modified: Mon, 18 Sep 2017 23:32:09 GMT  
		Size: 39.2 MB (39155669 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ad750f7aa72fdc15594de6442b839378d0a1b36a682fe41136c023502f9ed39`  
		Last Modified: Mon, 18 Sep 2017 23:32:02 GMT  
		Size: 840.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb7d47255ebc268f43a874aa06517c5a41872954ce2582f3c8f7e78c1c156c6d`  
		Last Modified: Mon, 18 Sep 2017 23:32:02 GMT  
		Size: 399.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbbf55c113f325c8f0530ffb4ff93ac59d43a9c35c6f7bec9a3066bc20c06b4b`  
		Last Modified: Mon, 18 Sep 2017 23:32:02 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2abcb5a4809bef786aa16618d5c88b489834aee2f71bc2d9b5b475af6c724452`  
		Last Modified: Mon, 18 Sep 2017 23:32:02 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f6094f01ee8d03ef0e96809aee0c5f7b6ffe6175b259159f2237ca55419e5c4`  
		Last Modified: Tue, 19 Sep 2017 00:00:26 GMT  
		Size: 6.0 MB (6030885 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:artful-curl` - linux; arm variant v7

```console
$ docker pull buildpack-deps@sha256:39d82ee311b87332d4bdd354c33f07bb4f750e8ce94f7d63f9fa9d2e04bdee58
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.0 MB (40032866 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ec56bb5577232b8b14b15a09f57579cb57401a97d35d87e4bda01c1c8db6221`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 17 Aug 2017 23:28:08 GMT
ADD file:589e1f29a32b67c1edc074c38abfe00fe124fd504410303c39829e035fdf5aba in / 
# Thu, 17 Aug 2017 23:28:12 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 17 Aug 2017 23:28:15 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 17 Aug 2017 23:28:18 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 17 Aug 2017 23:28:22 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 17 Aug 2017 23:28:24 GMT
CMD ["/bin/bash"]
# Tue, 22 Aug 2017 00:08:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 22 Aug 2017 00:08:49 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:73a97fa08bf16e9990b35ccd46357c8d9886de7da2894a77a1985f9ca417f186`  
		Last Modified: Thu, 17 Aug 2017 23:32:22 GMT  
		Size: 34.9 MB (34907565 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ff4d9a1bc4e0acdc4d646bb9082f4acf04dcdb1d2269b233409a3b6a3940d5e`  
		Last Modified: Thu, 17 Aug 2017 23:31:52 GMT  
		Size: 848.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08d8b2786e5c39c6489190cccbc315732cda425279d5a2c171309e8a8c9aee56`  
		Last Modified: Thu, 17 Aug 2017 23:31:55 GMT  
		Size: 388.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d37786de160f5c5d817535febd5434f581ab6104390e22aa77e0c86b6e37a309`  
		Last Modified: Thu, 17 Aug 2017 23:31:54 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:017c47e1803c0d2ad45113150ba595a82d22139275b4dfd10ae9004fd99bdba2`  
		Last Modified: Thu, 17 Aug 2017 23:31:53 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08918684f3731ca3f32efd0753c73eb9f4f27e8fc7d2dab56464593283d595a2`  
		Last Modified: Tue, 29 Aug 2017 20:24:08 GMT  
		Size: 5.1 MB (5123048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:artful-curl` - linux; arm64 variant v8

```console
$ docker pull buildpack-deps@sha256:407096c7ccb40f2693a3de127776ec0f9e021524d59a62dbcb76f055474596ce
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.6 MB (41560251 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:96d11c770b6f4f40ff1ac9a11c92ecf59b51e75c0ac2542a1af9e284e3ececd9`
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

### `buildpack-deps:artful-curl` - linux; 386

```console
$ docker pull buildpack-deps@sha256:fa3704bcec33aa25095c2b76209a6638f2fe15645e493767fbb33f297ec408d9
```

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.8 MB (45804090 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2d80204d2360febd6dae25e7c6699c89a49d6c786fb20ce01412f8044513614a`
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

### `buildpack-deps:artful-curl` - linux; ppc64le

```console
$ docker pull buildpack-deps@sha256:cb72c604c52a3da7b29f0c6e7edc1f74243eff7aacbdc587739e716d7893ed2f
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.7 MB (47662076 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a9409a6d6225c9e6a60b16f3747bf9c47e4190989f302cbd59e71ef66fb3c353`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 13 Sep 2017 23:27:01 GMT
ADD file:ec58784b3964c2479b4a6a38d29d3b8d3f5e11400abcdedabaff124118b1321b in / 
# Wed, 13 Sep 2017 23:27:15 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 13 Sep 2017 23:27:22 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 23:27:26 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 13 Sep 2017 23:27:30 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 13 Sep 2017 23:27:32 GMT
CMD ["/bin/bash"]
# Wed, 13 Sep 2017 23:49:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 23:49:46 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:a56226c478e8629bd6e9345e5a79fbd63b41284acaa10a1d4101b11fbac6f2f9`  
		Last Modified: Wed, 13 Sep 2017 23:30:16 GMT  
		Size: 41.7 MB (41723859 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a476a1916da583b9de6fd24587bedf3b3f698c2cd075feea2ee6404927a84144`  
		Last Modified: Wed, 13 Sep 2017 23:30:04 GMT  
		Size: 844.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b819816a298650cd56d887731d525f8f906509f3acca9d080c5f7c34e86e016d`  
		Last Modified: Wed, 13 Sep 2017 23:30:04 GMT  
		Size: 373.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a179c64d337ca4ec13fd291b1190b40f1702a5839ad5fd33fea0cb191c7a4c0c`  
		Last Modified: Wed, 13 Sep 2017 23:30:04 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a4298f053ec43f878c8f41862b739811460519aae1dfb20e04250e547d9ec83`  
		Last Modified: Wed, 13 Sep 2017 23:30:04 GMT  
		Size: 187.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38a91521719f6fdb964189348f3b9186cb28a0a6bef767a56bec7ac38dbc8da6`  
		Last Modified: Thu, 14 Sep 2017 22:16:19 GMT  
		Size: 5.9 MB (5935958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:artful-curl` - linux; s390x

```console
$ docker pull buildpack-deps@sha256:1d76419a95459256759242b071110728b4781296a8dcb58bb561855876f5194f
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.0 MB (44010556 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f00f2c801032ce1bab7ad7e1f0f11769dcd68250dd6b987ea94abf2869616506`
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
