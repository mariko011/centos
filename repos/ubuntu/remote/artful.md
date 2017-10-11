## `ubuntu:artful`

```console
$ docker pull ubuntu@sha256:21c514fbb90dcfb527478e102684bc342fd3f603eff11f17610831bdbabe934f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `ubuntu:artful` - linux; amd64

```console
$ docker pull ubuntu@sha256:47e582b8d78ad0d1238b60437859f5c48877a140bc91ca532f972bc5c23a4c0d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.2 MB (39157812 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ccba26cf28748cde8f34e29f43e16f74c9eaa823f59504614b1b6f365031cf1a`
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

### `ubuntu:artful` - linux; arm variant v7

```console
$ docker pull ubuntu@sha256:f8a4c957e893665498cb103fa3e70adcbb5319a32e0158a3d84b57fa08b8c233
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.4 MB (35385066 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cbb2aeeaa0d684726b2a92638de024b50f04f34eb34bcc531f80ad8f5daec70e`
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

### `ubuntu:artful` - linux; arm64 variant v8

```console
$ docker pull ubuntu@sha256:03d02e336f8492ff96bef80b9fa83b4c3e969738455d03c7a810afb32ee903b1
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.3 MB (36264781 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ad7e0ba28e48d9eee75d0b818959d3fa1274d42f5c4c338608b2f46c35347109`
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

### `ubuntu:artful` - linux; 386

```console
$ docker pull ubuntu@sha256:33192da2cebd64b5b7761b7661c2747cc29f478c2d572b182c2c3c2875b4379e
```

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.7 MB (39708683 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:90c2b6f0ab588d3b2c520081d7ec9ae4e55529898c835f175ca33eabfd78879c`
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

### `ubuntu:artful` - linux; ppc64le

```console
$ docker pull ubuntu@sha256:d0132f2955b00492677c37e0435f17f0f1087e4f5d038b61a5b9a4fb17d55deb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **42.0 MB (41963360 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5d6700244984fccaa32850e4229ee3dab13d8babb43c56cc587efa4cc34139ab`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 11 Oct 2017 02:39:31 GMT
ADD file:f059c5050f2daefea81dd582ee2327e1d133b0512aa87f8159d7b44645120a15 in / 
# Wed, 11 Oct 2017 02:39:40 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 11 Oct 2017 02:40:00 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 02:40:09 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 11 Oct 2017 02:40:33 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 11 Oct 2017 02:40:37 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:260e268d8c3c260a0ae56cae646fff61572d772b43539399f68720e4bb677aac`  
		Last Modified: Wed, 11 Oct 2017 02:43:34 GMT  
		Size: 42.0 MB (41961096 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec506a98a8b4137f34d2713286b36e402c0e44995fe791c8cf75a7bcc92381fd`  
		Last Modified: Wed, 11 Oct 2017 02:43:23 GMT  
		Size: 845.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7e2be654d1a0bd32cd05595b9a18a370824546fa1e2112a1e91e4d5a7464a58`  
		Last Modified: Wed, 11 Oct 2017 02:43:23 GMT  
		Size: 376.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:153559c765cc3d72b1bbb7d4dfc327beefd22dd3d2ee681c6c1341e4cd4ef15c`  
		Last Modified: Wed, 11 Oct 2017 02:43:23 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffc2c66e90c4292c80824ccfc7a4be8e8146752da1bf292f1fc48c74cff0cf05`  
		Last Modified: Wed, 11 Oct 2017 02:43:23 GMT  
		Size: 189.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:artful` - linux; s390x

```console
$ docker pull ubuntu@sha256:5354d9bd4600cb6ba1ad38c287e853fa0ec5c0f2cf680d028800460d5857b339
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.3 MB (38282956 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2b2b00d586374817289991bed093c3dbd83569a14759d83ea328f80a00bcabd8`
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
