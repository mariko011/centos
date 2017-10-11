<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `ubuntu`

-	[`ubuntu:14.04`](#ubuntu1404)
-	[`ubuntu:16.04`](#ubuntu1604)
-	[`ubuntu:17.04`](#ubuntu1704)
-	[`ubuntu:17.10`](#ubuntu1710)
-	[`ubuntu:artful`](#ubuntuartful)
-	[`ubuntu:artful-20171006`](#ubuntuartful-20171006)
-	[`ubuntu:devel`](#ubuntudevel)
-	[`ubuntu:latest`](#ubuntulatest)
-	[`ubuntu:rolling`](#ubunturolling)
-	[`ubuntu:trusty`](#ubuntutrusty)
-	[`ubuntu:trusty-20170817`](#ubuntutrusty-20170817)
-	[`ubuntu:xenial`](#ubuntuxenial)
-	[`ubuntu:xenial-20171006`](#ubuntuxenial-20171006)
-	[`ubuntu:zesty`](#ubuntuzesty)
-	[`ubuntu:zesty-20170915`](#ubuntuzesty-20170915)

## `ubuntu:14.04`

```console
$ docker pull ubuntu@sha256:6e3e3f3c5c36a91ba17ea002f63e5607ed6a8c8e5fbbddb31ad3e15638b51ebc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le

### `ubuntu:14.04` - linux; amd64

```console
$ docker pull ubuntu@sha256:26c9774584d2ed076e83399307f4ef75ed3567e73fa9f7c65f68b0f720dcc56c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **67.2 MB (67188932 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dea1945146b96542e6e20642830c78df702d524a113605a906397db1db022703`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 13 Sep 2017 23:26:20 GMT
ADD file:8f997234193c2f587ac17bb4a8db2657103d2924813edb281eec7ba9883a2806 in / 
# Wed, 13 Sep 2017 23:26:21 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 13 Sep 2017 23:26:21 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 23:26:22 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 13 Sep 2017 23:26:22 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 13 Sep 2017 23:26:23 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:bae382666908fd87a3a3646d7eb7176fa42226027d3256cac38ee0b79bdb0491`  
		Last Modified: Wed, 13 Sep 2017 22:04:42 GMT  
		Size: 67.1 MB (67114903 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29ede3c02ff200fff7454ce59e1c3bb62f538847cefd5b8541e088ad22c42879`  
		Last Modified: Wed, 13 Sep 2017 23:27:09 GMT  
		Size: 72.6 KB (72648 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da4e69f33106a3131ce07d9ed4403593a7698be6dabd6cabd2c9c228599c8ce0`  
		Last Modified: Wed, 13 Sep 2017 23:27:09 GMT  
		Size: 364.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d43e5f5d27feb983909350fa3a008ebfb66436e172337cd543db358f5a01f1c`  
		Last Modified: Wed, 13 Sep 2017 23:27:09 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0de1abb17d6e07bcf1b68dc5c75acf0386405905ed735efe65a5235f29e756d`  
		Last Modified: Wed, 13 Sep 2017 23:27:09 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:14.04` - linux; arm variant v7

```console
$ docker pull ubuntu@sha256:0a92fed07024ea15648f92e3209a76276194087de3d15a17a7eedfcc070d1c84
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.5 MB (61533399 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4859790a66d87a06b3a99b9e65c686f6eb69de1d8ed98833163de1f88f76f60d`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 27 Sep 2017 04:14:46 GMT
ADD file:9269eeb4eb9940532bc07ce41e27a91f440fe57993b35cb2ccbabf18e6e08937 in / 
# Wed, 27 Sep 2017 04:14:47 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 27 Sep 2017 04:14:48 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 27 Sep 2017 04:14:50 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 27 Sep 2017 04:14:50 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 27 Sep 2017 04:14:51 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:187f4a01d8b8e7f7d189098d4bcec67814384806cd4c813fc7e4b377f145045a`  
		Last Modified: Wed, 27 Sep 2017 04:16:17 GMT  
		Size: 61.5 MB (61455216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:682e73a2927e06cb0dce96383ca5174e23b9f24ca554c8cfcec1e47c3941bfad`  
		Last Modified: Wed, 27 Sep 2017 04:15:56 GMT  
		Size: 76.8 KB (76773 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b564854d4c33a8370ba24496f183cbcd732c0da282e49512324c1816cd105dad`  
		Last Modified: Wed, 27 Sep 2017 04:15:56 GMT  
		Size: 363.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b48a5540d3c6fc9c465039823d1d0a07c4e038eba6875ca638b4e1d69133dbc4`  
		Last Modified: Wed, 27 Sep 2017 04:15:56 GMT  
		Size: 858.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:561af84b7f63d18054cfc85b75035f9a6bf64ddcba38af1bc3777416c9c754cf`  
		Last Modified: Wed, 27 Sep 2017 04:15:56 GMT  
		Size: 189.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:14.04` - linux; arm64 variant v8

```console
$ docker pull ubuntu@sha256:61de5c00451887fb0f98af9a1c989dd983e7c65f5b6c884d85ca8a5d49cdfc53
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **63.2 MB (63229037 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dbb6f732d326019e135cfedabcef425153a53081758db52af9cebbe4ecd65ef7`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 13 Sep 2017 23:27:01 GMT
ADD file:7ea2c29a53add06a8c5849caffdfcc5171d9cc0de439687b73167ee8c8c6a995 in / 
# Wed, 13 Sep 2017 23:27:03 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 13 Sep 2017 23:27:04 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 23:27:09 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 13 Sep 2017 23:27:10 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 13 Sep 2017 23:27:11 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:211fe73d577b3db63c2f5ce11a7f9403edecb4977eee8574e2a53fdf02fd42d3`  
		Last Modified: Wed, 13 Sep 2017 23:29:18 GMT  
		Size: 63.2 MB (63168561 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1dcade08d581afdb20d6dbca47eb05d2598554917f214718e928b70a48b54f39`  
		Last Modified: Wed, 13 Sep 2017 23:28:54 GMT  
		Size: 59.1 KB (59097 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:712265ae9a89af70df71abdfff24731189ca5339030894a8656a46dea59c7206`  
		Last Modified: Wed, 13 Sep 2017 23:28:54 GMT  
		Size: 360.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a26e33b782f6f9e0f19992a733d18b44cfcf53d86feea2ad3f55dfd7d652bba`  
		Last Modified: Wed, 13 Sep 2017 23:28:54 GMT  
		Size: 858.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d05d097f34378dbf6ca969f9256f553f25b24a3b11f6ee48651c6405a4e81abb`  
		Last Modified: Wed, 13 Sep 2017 23:28:53 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:14.04` - linux; 386

```console
$ docker pull ubuntu@sha256:1450570906d2ee1a87a61c3524d7275a33e8b13178ac683ca17eb1af1a13c527
```

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **64.9 MB (64898863 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:07a65d981ede1fe04f76aae7decaaf10eb793442a5327674f8fed1a518f27043`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 13 Sep 2017 23:26:25 GMT
ADD file:5ea4259718526648d5d282e8d9d1c2584e856b39c0f4b8594de9aa9f9985218b in / 
# Wed, 13 Sep 2017 23:26:25 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 13 Sep 2017 23:26:26 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 23:26:27 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 13 Sep 2017 23:26:27 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 13 Sep 2017 23:26:27 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:f783391c63c08ef35d2d6263d1009541806f2358ba987368c7abf8729cf5d577`  
		Last Modified: Wed, 06 Sep 2017 09:36:00 GMT  
		Size: 64.8 MB (64832640 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1a47d2c69876192779226a84caa6f71f9c15cf4151b85c06c3f6289423c5259`  
		Last Modified: Wed, 13 Sep 2017 23:27:26 GMT  
		Size: 64.9 KB (64851 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b00cd5494581ef496db53eae6ef74ee4589a5d2f2d53faede541254b65eee6a0`  
		Last Modified: Wed, 13 Sep 2017 23:27:25 GMT  
		Size: 357.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92f705fb93233929d4f280117ab56b4fa4666a06a975de96a8279bd985bd3f1e`  
		Last Modified: Wed, 13 Sep 2017 23:27:26 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfd11b43477b7c801f64151e30c383653655af3332787fed6204add3ab092753`  
		Last Modified: Wed, 13 Sep 2017 23:27:25 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:14.04` - linux; ppc64le

```console
$ docker pull ubuntu@sha256:cc5836604afdf422e82cb383611a30a00cef2b507da0187e715aeaa35c0b3248
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **69.8 MB (69765624 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d24e7893481921724c46a7e622bbebf49ec40cf0c68fcb5828937fa23494d8ad`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 13 Sep 2017 23:27:59 GMT
ADD file:ecdc3f73d8b16947cc3eee78b4e1f5a5431029720cabb5a589e91f72d560567b in / 
# Wed, 13 Sep 2017 23:28:06 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 13 Sep 2017 23:28:10 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 23:28:14 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 13 Sep 2017 23:28:30 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 13 Sep 2017 23:28:33 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:06cef575e03acca24a1e636f8d2ed694a09a1296706cce34cdab56ff4e6cdeec`  
		Last Modified: Wed, 13 Sep 2017 23:31:02 GMT  
		Size: 69.7 MB (69700798 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:037f9273c8ba936000db3a181323c6fd5591e70339a659470b90d4b0c1c9162d`  
		Last Modified: Wed, 13 Sep 2017 23:30:43 GMT  
		Size: 63.4 KB (63417 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25f10fea324280b832d0e4ff046f0269c66baa2eca54efc73917c6510c8be844`  
		Last Modified: Wed, 13 Sep 2017 23:30:43 GMT  
		Size: 360.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f301276d41ce9d2379e7b962e2ee5a3040e0f14eef21e66136125a3100fae46c`  
		Last Modified: Wed, 13 Sep 2017 23:30:43 GMT  
		Size: 861.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de5a488e2380e445d07718060469f8afc534131480e6b012179e2e5f5884e28c`  
		Last Modified: Wed, 13 Sep 2017 23:30:43 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ubuntu:16.04`

```console
$ docker pull ubuntu@sha256:506e2d5852de1d7c90d538c5332bd3cc33b9cbd26f6ca653875899c505c82687
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `ubuntu:16.04` - linux; amd64

```console
$ docker pull ubuntu@sha256:550f6e26da4b4cb8655a96dd6458ea01e2fb3dcb99d24e6dc427c08ea42c9785
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.6 MB (47619616 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:747cb2d60bbecbda48aff14a8be5c8b913ca69318a6067e57c697f8a78dda06e`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 10 Oct 2017 20:59:02 GMT
ADD file:5b334adf9d9a2256add2a801b49d4b23c93b0973ec22bb798973d571c948f102 in / 
# Tue, 10 Oct 2017 20:59:02 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 10 Oct 2017 20:59:03 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 20:59:04 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 10 Oct 2017 20:59:04 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 10 Oct 2017 20:59:05 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:ae79f251470513c2a0ec750117a81f2d58a50727901ca416efecf297b8a03913`  
		Last Modified: Fri, 06 Oct 2017 13:04:44 GMT  
		Size: 47.6 MB (47617129 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ad56d5fc14905886c560200ab69f905b5c5287eaf12f8f761a7ab54f7a61c1b`  
		Last Modified: Tue, 10 Oct 2017 21:00:10 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:170e558760e8b2e484a022b7d7272cf284fc4e1936ba7a0a671fc586440ad272`  
		Last Modified: Tue, 10 Oct 2017 21:00:10 GMT  
		Size: 618.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:395460e233f5bdcd910d618a3b615e0d881e09ad27d58f3065eef53ecae6a808`  
		Last Modified: Tue, 10 Oct 2017 21:00:10 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f01dc62e444044e3ce494269837ef0aedb80fef69c679416137f17812d2eb9c`  
		Last Modified: Tue, 10 Oct 2017 21:00:10 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:16.04` - linux; arm variant v7

```console
$ docker pull ubuntu@sha256:cd5266c6fbcf512714f7e6b34c341af20b44a3f905f7e0b0a2c27eaaa04f04af
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **42.4 MB (42447060 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:764826e73e32dae777d5fdf6d072cad47e131e63b0cb791d9e32424187141e33`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 11 Oct 2017 12:51:12 GMT
ADD file:b8b49b959bf907b482bdc24c3c6f159f7aed1a3fb73e8efa669b12800635d25f in / 
# Wed, 11 Oct 2017 12:51:13 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 11 Oct 2017 12:51:14 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 12:51:14 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 11 Oct 2017 12:51:15 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 11 Oct 2017 12:51:15 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:26e5736d414450f12f7c066ff59a208e9ea9311407c91de898505d1adbf01527`  
		Last Modified: Wed, 11 Oct 2017 12:52:25 GMT  
		Size: 42.4 MB (42444579 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3b2d7804592854a106e4cb6a8decdc17f84ce86673c5331ae4be08f6ddf9667`  
		Last Modified: Wed, 11 Oct 2017 12:52:14 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1e6e6dfa0c41d49186e1ef4cf4409826020371a07bc3a6b5509bb23e7004701`  
		Last Modified: Wed, 11 Oct 2017 12:52:15 GMT  
		Size: 614.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8b298e101bd87bb479bd9d268470b3060526668473413ad16a992f5a70b9b69`  
		Last Modified: Wed, 11 Oct 2017 12:52:14 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5da5730e907c71f6dad2a93757f203cea7518145a8d979508503cb906926d549`  
		Last Modified: Wed, 11 Oct 2017 12:52:14 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:16.04` - linux; arm64 variant v8

```console
$ docker pull ubuntu@sha256:d0f76cd78708e701d89eaee3bda1ba768500b98e7db80a5c3e45b7c0ac241428
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.4 MB (43428811 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:499b06aa549be29a3385abde517b6ddb07ab56818ca999aefe03f8a7e1b63055`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 11 Oct 2017 14:01:45 GMT
ADD file:17aebc392b3cf207dbe2809abd34b9eec60c3a0e8b39dcd04f8f29a863e966b3 in / 
# Wed, 11 Oct 2017 14:01:47 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 11 Oct 2017 14:01:49 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 14:01:50 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 11 Oct 2017 14:01:52 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 11 Oct 2017 14:01:52 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:aac43d4d6c83c61c78a7814ef7d2e02dc6c2f52dc110ff181aea144991711636`  
		Last Modified: Fri, 06 Oct 2017 22:13:46 GMT  
		Size: 43.4 MB (43426326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eed65d92515dfacf9a35d3301bc4847f1057d240f9ab3c442b573bdbb8452791`  
		Last Modified: Wed, 11 Oct 2017 14:03:45 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2de5574dca5eb5a1b9351c990c0865bbe18370da61e7169a539ba80bbdb058b2`  
		Last Modified: Wed, 11 Oct 2017 14:03:44 GMT  
		Size: 617.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5a76e352cce541b89ec31a527e09d2185c9427315f118b56573f79eb31b4c2b`  
		Last Modified: Wed, 11 Oct 2017 14:03:45 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2aceaacecb77ef3360c013ffcd305eecd6cf17a32bd143a72ca0b86b74721ba`  
		Last Modified: Wed, 11 Oct 2017 14:03:45 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:16.04` - linux; 386

```console
$ docker pull ubuntu@sha256:675537382e8755353a5d1f8a1ff18b01bd8574fb6d292b67b50db3ff0319522d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.9 MB (47876861 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a4a092435e2a9203f76a214bd8fec951db1513cc9f363709567662d368f03c0d`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 11 Oct 2017 03:42:05 GMT
ADD file:bb3bd5935b4d8a89a615b235edd9f2c8994892f80f4207a9be6f73d1e740fe99 in / 
# Wed, 11 Oct 2017 03:42:06 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 11 Oct 2017 03:42:07 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 03:42:08 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 11 Oct 2017 03:42:09 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 11 Oct 2017 03:42:09 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:acb0d27ac9b88e225bef09d7d5994961e9a35aa8c44e63211012e3e309faba08`  
		Last Modified: Wed, 11 Oct 2017 03:43:24 GMT  
		Size: 47.9 MB (47874409 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f9fbc97d20aafc373f030de956f2937231c0429b2afdb5bf29f37aa461dd48f`  
		Last Modified: Wed, 11 Oct 2017 03:43:13 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebd9d15ef132d78842e10e92e7a68bff76280e8b8dfdbe8ccc0847a08857fa69`  
		Last Modified: Wed, 11 Oct 2017 03:43:13 GMT  
		Size: 584.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92dbf3d41ac22221844d955b41a1c4e96a78f56e93ef0f2996d6173d4979720e`  
		Last Modified: Wed, 11 Oct 2017 03:43:13 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:babacea552509daca82b772dc265cb3120ac3a9b6dcad79724c8beebb932eb3a`  
		Last Modified: Wed, 11 Oct 2017 03:43:14 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:16.04` - linux; ppc64le

```console
$ docker pull ubuntu@sha256:fd389c79576f0f1f3a6b7bdc22b57e497841bd332f17729776278a8afdde1c14
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.6 MB (49632398 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cc36286630a239c66b97a0bcb9f7397b9576a3cecc1b7f8da42438b89da2f19b`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 11 Oct 2017 02:41:21 GMT
ADD file:576880950883a1e490209ab49495d7dc9f83e576a9669a99967c68316aa88672 in / 
# Wed, 11 Oct 2017 02:41:53 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 11 Oct 2017 02:42:19 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 02:42:28 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 11 Oct 2017 02:42:38 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 11 Oct 2017 02:42:45 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:84a41d801f0c785b93df653a9b96af1d8d3a33a4b029ed27947064aabf5bc52c`  
		Last Modified: Wed, 11 Oct 2017 02:44:12 GMT  
		Size: 49.6 MB (49629867 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bd19f106c49d8ac8a0f8ee614b3d8c3e76c173821be02d196509c657418a18a`  
		Last Modified: Wed, 11 Oct 2017 02:43:59 GMT  
		Size: 856.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dea09941130c03bf6098e0061a2085596e19b94e413525f4cb7a052e11557996`  
		Last Modified: Wed, 11 Oct 2017 02:43:59 GMT  
		Size: 648.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b537a0876ec5c925e698ed48743639a0130c45530d670b606a3bce4faa40f4b`  
		Last Modified: Wed, 11 Oct 2017 02:43:59 GMT  
		Size: 857.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a2f653825732a085aaed721c8f3ff35da9ea3854c84984ede13fd38c929e0be`  
		Last Modified: Wed, 11 Oct 2017 02:43:59 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:16.04` - linux; s390x

```console
$ docker pull ubuntu@sha256:18c5cc207f40260f85c88a27bf27f2a886b99719fea7bad867a6fd40b08d8c59
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.3 MB (46330386 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1e8fb7dd968bde7e26fc1e197b8e986fae879d4768fc790a5597068d0e5971e5`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 11 Oct 2017 13:15:47 GMT
ADD file:219f2adbad8a210a00a1a64e3a09575439c703ab5e1d0c3084a5721a12fbb79d in / 
# Wed, 11 Oct 2017 13:15:48 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 11 Oct 2017 13:15:48 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 13:15:49 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 11 Oct 2017 13:15:49 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 11 Oct 2017 13:15:50 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:dfc7cecdb13de6ca6252038d54f31238a7044cb9886808665a63a2dff5f7cd41`  
		Last Modified: Wed, 11 Oct 2017 13:16:53 GMT  
		Size: 46.3 MB (46327901 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c372dc102ed71a29b294b4f6d2d03ad6c498c6144a117abd265b9943446dd687`  
		Last Modified: Wed, 11 Oct 2017 13:16:45 GMT  
		Size: 844.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98990ad1a97e8b1eab0be323a49922046dcb5ae5da4099e8810393e61e062613`  
		Last Modified: Wed, 11 Oct 2017 13:16:45 GMT  
		Size: 617.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6107352341486a21448df418194f1118fdae66005d65bb6de75e935c3461c202`  
		Last Modified: Wed, 11 Oct 2017 13:16:45 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a1bbd20dbb2c77788d7d2e5e413059b7401e23c8bfc0b6dcbd1f5c2eac857ca`  
		Last Modified: Wed, 11 Oct 2017 13:16:45 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ubuntu:17.04`

```console
$ docker pull ubuntu@sha256:da2fd4e2e10e0ab991f251353a2d3e32d38c75a83a917dbca0a307efd8730f49
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `ubuntu:17.04` - linux; amd64

```console
$ docker pull ubuntu@sha256:12f61dc88c05bcf85210e98c471c7a841da72e453922d717c058aa0438fc1ed6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.4 MB (38440318 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6ca5545cc1efa0f860bf7d518d45132d1919b713b328ef2d7e61db76c4707047`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 18 Sep 2017 23:31:50 GMT
ADD file:4e2e1f8336bcc64e853e9f3462f0829ce85b34a32755dba06aa7bd0007eda4f0 in / 
# Mon, 18 Sep 2017 23:31:50 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 18 Sep 2017 23:31:51 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 18 Sep 2017 23:31:52 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Mon, 18 Sep 2017 23:31:52 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 18 Sep 2017 23:31:52 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:8b23367590c32dbb6954ab3cc9b6c451b9763556c72a893538efe88583f6a5dc`  
		Last Modified: Mon, 18 Sep 2017 23:33:09 GMT  
		Size: 38.4 MB (38437889 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7feb578947e4b86e0a0cff64b42489dc1305bbacdb3ed36d0afe95a19ebf845`  
		Last Modified: Mon, 18 Sep 2017 23:33:03 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac836f06379c8d7356e0d2e7dbb3e9f3924616527fa51b95545fb455eec31f08`  
		Last Modified: Mon, 18 Sep 2017 23:33:03 GMT  
		Size: 569.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be286dc472df31f16953d34151f836d0186fddeea6cd56dcefd2a6d46a992500`  
		Last Modified: Mon, 18 Sep 2017 23:33:03 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5533df5f353d9fbcbd081e9dd653fe7d8ddebed958d1f0e56fa4a87b216f13c1`  
		Last Modified: Mon, 18 Sep 2017 23:33:03 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:17.04` - linux; arm variant v7

```console
$ docker pull ubuntu@sha256:2af954832cc8de7971895f0315985980405797837b5cbc8d6a9dcbdc71661436
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.5 MB (34516354 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:364222e9711ccc1899c7d697b9cb90164f5915640c4ccd361f34f741ee62ce1e`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 27 Sep 2017 04:15:20 GMT
ADD file:96ad2a1d6e6271072bf9329d4088c5b1a3e07ce0900b96b5d19f9c94595fd347 in / 
# Wed, 27 Sep 2017 04:15:22 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 27 Sep 2017 04:15:24 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 27 Sep 2017 04:15:24 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 27 Sep 2017 04:15:25 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 27 Sep 2017 04:15:25 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:7d85563d7213aa3e9b75cb6a48f74e66c3e533542076fe29c855717cc74243af`  
		Last Modified: Wed, 27 Sep 2017 04:17:06 GMT  
		Size: 34.5 MB (34513849 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8f49ca2e01f9e434f04623a1851121b47bf655150f09fbd2a5cc3884363967a`  
		Last Modified: Wed, 27 Sep 2017 04:16:54 GMT  
		Size: 845.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ef587d007b98d3eb0a13444ff48ffae71dce3bb36a5d718c275924ee694d29d`  
		Last Modified: Wed, 27 Sep 2017 04:16:54 GMT  
		Size: 618.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c18b21e2f0bd99269b18440cbda901e969383ecf22923be85dfb3f7ade175884`  
		Last Modified: Wed, 27 Sep 2017 04:16:54 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ccc54109a7c8891a0231746695da8337f5c59228aa34b6736b0709c1d99bb44`  
		Last Modified: Wed, 27 Sep 2017 04:16:54 GMT  
		Size: 189.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:17.04` - linux; arm64 variant v8

```console
$ docker pull ubuntu@sha256:1d2185e32dcc14ce3ef85abfc7d61545f33b4c569bebc05d404e334166730005
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.6 MB (35618968 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:549331a667ba1f9323cae258a7f063097b7a957da335a5385fbb29103012851c`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 18 Sep 2017 23:34:46 GMT
ADD file:af30328c055db3d622d6fdb35bce0016a12998bd70635b4de72c891582608ce8 in / 
# Mon, 18 Sep 2017 23:34:48 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 18 Sep 2017 23:34:49 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 18 Sep 2017 23:34:50 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Mon, 18 Sep 2017 23:34:53 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 18 Sep 2017 23:34:53 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:a2c35bd1172470f907581f9586450b683e1498682c285e41f985b54430af5f6c`  
		Last Modified: Mon, 18 Sep 2017 23:37:08 GMT  
		Size: 35.6 MB (35616559 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:307fc7f15c2cc94311005503a5f81980d3d4de93f13d0d3be3370c3f2a047441`  
		Last Modified: Mon, 18 Sep 2017 23:36:55 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b738f5af4f1e0187e300ddb62091ead05283e9f57f60293c9eeca900edcbd007`  
		Last Modified: Mon, 18 Sep 2017 23:36:55 GMT  
		Size: 541.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7a2f3d48d043e4e2d51ae424ae18282d19af6b8741d4600a65d6c2748d3a450`  
		Last Modified: Mon, 18 Sep 2017 23:36:55 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e9d4b0c8e3c0863b9613bbbf4ca7be7e1453f8b5cc904f070bb42e751d2f264`  
		Last Modified: Mon, 18 Sep 2017 23:36:55 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:17.04` - linux; 386

```console
$ docker pull ubuntu@sha256:f34712d7c5ffe6546ec89c923c0e161f5e37c4e199d12ccc5f4534611da89c93
```

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.8 MB (38827601 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f061e77c87c5a23d804171bede92168ead7e3bc52b4cc8001b2fe3dfc609877b`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 18 Sep 2017 23:38:53 GMT
ADD file:9a9fa863d25cad892c2770f9d100180994183d757053a6a7a31d37a379c4fddc in / 
# Mon, 18 Sep 2017 23:38:54 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 18 Sep 2017 23:38:55 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 18 Sep 2017 23:38:56 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Mon, 18 Sep 2017 23:38:57 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 18 Sep 2017 23:38:57 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:5760633a5f49d5c4dbac614d2594419ee522f10d4ffff0acd0fb73e0f49a1d07`  
		Last Modified: Mon, 18 Sep 2017 15:56:13 GMT  
		Size: 38.8 MB (38825225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:581018bed0a2fad43bce32dd1c771e1236a692ae0bae43c3cdbf1b8ef23d6d4d`  
		Last Modified: Mon, 18 Sep 2017 23:40:22 GMT  
		Size: 848.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6472a3d79179eff2b6a24928ce97f32eb0069a6261306501d697f46670573ef`  
		Last Modified: Mon, 18 Sep 2017 23:40:23 GMT  
		Size: 515.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb7bbe1cbf845b35fd6c0c816a1fb9d18e72bf57a59fefca6b995b7cdf0717bf`  
		Last Modified: Mon, 18 Sep 2017 23:40:22 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05d826896f2a148ea8fa01eee5cab3c2bc33fce9c1be3701a7a4f3e349d6abd9`  
		Last Modified: Mon, 18 Sep 2017 23:40:23 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:17.04` - linux; ppc64le

```console
$ docker pull ubuntu@sha256:017a120029c660d8eab4500cfb9722ce992bc09720baf3ea6c1714aaff313cc9
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.4 MB (40446386 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:55f65f08621e08f47f8d12a51aebe8446fa8cece7b708a7b6f174cf3fe642de5`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 18 Sep 2017 23:35:49 GMT
ADD file:693811ca88983c96f1ae7b86b18c599a8d8498772a363456defef70ec0ecc5de in / 
# Mon, 18 Sep 2017 23:35:55 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 18 Sep 2017 23:35:59 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 18 Sep 2017 23:36:07 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Mon, 18 Sep 2017 23:36:11 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 18 Sep 2017 23:36:13 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:ecef4bb781567569118b0dbfb956c9faf2d38a4831438bf7e3fc8a24d095d6d9`  
		Last Modified: Mon, 18 Sep 2017 23:38:10 GMT  
		Size: 40.4 MB (40443928 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:972cd4164d3b34fb230909044a4d609b4da3064aec7c6710e2a315171203a54b`  
		Last Modified: Mon, 18 Sep 2017 23:37:57 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dcefc6c0022e15174c14c104384f7447e3eb207cd5a4f5d6938982d42489a74c`  
		Last Modified: Mon, 18 Sep 2017 23:37:57 GMT  
		Size: 562.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2dcede92304accd7e9c171974646b12f0248f7c385811f9ac0def8b9ae641f17`  
		Last Modified: Mon, 18 Sep 2017 23:37:57 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5eef80f237862df7588cbbf12c0e5eca49c2c4fbed34fdc08283050d5c90a811`  
		Last Modified: Mon, 18 Sep 2017 23:37:58 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:17.04` - linux; s390x

```console
$ docker pull ubuntu@sha256:330b7d8212de67f03836be1ec11cb45ea1d926ffe0da63d305c47b5a7604aa2f
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.6 MB (37607507 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fe17f2b831c0072167ec7112a1fb6c249b7198a64645e1715b39b62235e9bb46`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 18 Sep 2017 23:33:46 GMT
ADD file:d98500a574281bf0f63432a3c0c045843865b8c622dd692e223aefbe9f66af4e in / 
# Mon, 18 Sep 2017 23:33:47 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 18 Sep 2017 23:33:47 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 18 Sep 2017 23:33:48 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Mon, 18 Sep 2017 23:33:48 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 18 Sep 2017 23:33:49 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:b8635927930021e2056a2838002d2c677552e0b9b40ecedf74abd298e8eca0f9`  
		Last Modified: Mon, 18 Sep 2017 23:34:51 GMT  
		Size: 37.6 MB (37605103 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2877d097d6610dc9de2c9223c82beca790a55806f1af7dce3f9f1222e2996f53`  
		Last Modified: Mon, 18 Sep 2017 23:34:44 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0d83c0bd9638ca6c165f78b766c0e292c314e3e9564f85320f2a0ad51fbb088`  
		Last Modified: Mon, 18 Sep 2017 23:34:44 GMT  
		Size: 540.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d0332a6f65c9d15a7987c3e473253bc46fd95e794b808611c5e09b4d3ef0454`  
		Last Modified: Mon, 18 Sep 2017 23:34:44 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a6b8e2bdba618b1359768422eac2b288464e119b957e296078017f5c3648aa7`  
		Last Modified: Mon, 18 Sep 2017 23:34:44 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ubuntu:17.10`

```console
$ docker pull ubuntu@sha256:3ea1ca1aa8483a38081750953ad75046e6cc9f6b86ca97eba880ebf600d68608
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `ubuntu:17.10` - linux; amd64

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

### `ubuntu:17.10` - linux; arm variant v7

```console
$ docker pull ubuntu@sha256:5ed7bba95b4f9248cacfdf1505b4f365905179a5d92137416737a7d43d6a0191
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.2 MB (35235147 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7b52497140aaf0d5073b202d86a0b9b25c9f45945d9a63d9f13fa1aac93c306e`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 11 Oct 2017 12:50:35 GMT
ADD file:44bded50026536e6404b8fd6790895c1a1f9080df1f619f4a0dffb8b395f2c89 in / 
# Wed, 11 Oct 2017 12:50:36 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 11 Oct 2017 12:50:37 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 12:50:37 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 11 Oct 2017 12:50:38 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 11 Oct 2017 12:50:38 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:2a130a97d29a1726a93edaa3d4a79747413467b42e24c89636848828cf7615d7`  
		Last Modified: Wed, 11 Oct 2017 12:51:49 GMT  
		Size: 35.2 MB (35232878 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:572cc78d70415914a9a146d59f847572bb21281ceea870a87980f59f25abaa44`  
		Last Modified: Wed, 11 Oct 2017 12:51:40 GMT  
		Size: 841.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6b8395ea271db7d32b91e3497dd467ff44d76be79402d9ddff3040388ea301c`  
		Last Modified: Wed, 11 Oct 2017 12:51:40 GMT  
		Size: 389.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d120de3607f8726977c488b2b0566cf524df3b505bbd346d75ab7bcccc753acf`  
		Last Modified: Wed, 11 Oct 2017 12:51:41 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2c8840f6bdaf6d0d0ffa0209bea259d0429513d785bd0ac1f50eec2c766a3df`  
		Last Modified: Wed, 11 Oct 2017 12:51:40 GMT  
		Size: 186.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:17.10` - linux; arm64 variant v8

```console
$ docker pull ubuntu@sha256:cabef835bcaf567d57d5e85f04106d9f6a493794541923b8c3cf3820c561781e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.1 MB (36126039 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6a422a1508a005c5651f80575e4b6a245d7cd813c97755598c575a11e3e39552`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 11 Oct 2017 14:00:43 GMT
ADD file:602692c8dc1af37db55e6284244ffa55353c78df4a8cfa3b858f3d334ebc44b8 in / 
# Wed, 11 Oct 2017 14:00:45 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 11 Oct 2017 14:00:46 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 14:00:48 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 11 Oct 2017 14:00:49 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 11 Oct 2017 14:00:50 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:21d21f8952968904f80d411ab2a10c2ab1eba399f754269b6d37c48b681d5653`  
		Last Modified: Wed, 11 Oct 2017 14:02:54 GMT  
		Size: 36.1 MB (36123797 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58a0f12762bdacd25bf957952939d87df8a62880f8d3ffc0ce650962aa0836cd`  
		Last Modified: Wed, 11 Oct 2017 14:02:41 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fda691beb0448f3744f47b25ffe8de19121b7aa64e7e888ef5ba7602469ebf85`  
		Last Modified: Wed, 11 Oct 2017 14:02:41 GMT  
		Size: 377.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01223b051d0167c4afee79823c0952baec141f3f99002afc65676188b84ea1b4`  
		Last Modified: Wed, 11 Oct 2017 14:02:41 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cc84e353ec2edbad98d53adf7c324f9f8d389fcffb4b6aecb048291d059114d`  
		Last Modified: Wed, 11 Oct 2017 14:02:42 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:17.10` - linux; 386

```console
$ docker pull ubuntu@sha256:e35502b130e71b74920660e331f7d88f428f315c036e5cf3580c3c5173661bf3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.9 MB (39851027 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1acad729d8fef03ae05fae0eb4e65eee1428bad7c0fcf2d67dee5e145e84c733`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 11 Oct 2017 03:38:13 GMT
ADD file:6d6d312ff95936842dda8a466896db698826440b3e66baed9ed2eeaef0bafe5b in / 
# Wed, 11 Oct 2017 03:38:15 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 11 Oct 2017 03:38:15 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 03:38:16 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 11 Oct 2017 03:38:17 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 11 Oct 2017 03:38:21 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:f21c96d337ca5b0f1c144aef5fa8a4b6bd3083bb21bb3dcecb47b2765121ea30`  
		Last Modified: Wed, 11 Oct 2017 03:42:42 GMT  
		Size: 39.8 MB (39848781 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4efde20fbe9202548fb7c4004874ffbd2c4fbd216d41e96c4073f8da26561606`  
		Last Modified: Wed, 11 Oct 2017 03:42:32 GMT  
		Size: 837.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca42b809358a5c230d779fb879b10a6e4f55604496ecfba66bf6feaab4266533`  
		Last Modified: Wed, 11 Oct 2017 03:42:33 GMT  
		Size: 392.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c509b05a3bd0c7ba8b51c127cc13a83e0deb4949257aab5682df78d47a3cf55b`  
		Last Modified: Wed, 11 Oct 2017 03:42:33 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b33ecc0c60e054bc1f145a22a833289eb95ced1e89f34d6822771b6cc0d89fe2`  
		Last Modified: Wed, 11 Oct 2017 03:42:32 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:17.10` - linux; ppc64le

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

### `ubuntu:17.10` - linux; s390x

```console
$ docker pull ubuntu@sha256:6bc268f2428c3c2ba739b6ca29e239b160838487ba40e6d51fa23c7fcfff04fd
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.1 MB (38111586 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6eafb9fc66fd50938ee47bc4e8601826e3ae5e3a0b7a88c8b364e70b788f17cc`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 11 Oct 2017 13:15:31 GMT
ADD file:60730430a11bf23dc4ecece5b5e326afd465113727a51c9e0602a40aadce155d in / 
# Wed, 11 Oct 2017 13:15:32 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 11 Oct 2017 13:15:32 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 13:15:33 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 11 Oct 2017 13:15:34 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 11 Oct 2017 13:15:34 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:743e4e31ae0786a3a4a54abebd359bf6ccc479f9cd4e4c8cb4856627756882a7`  
		Last Modified: Wed, 11 Oct 2017 13:16:29 GMT  
		Size: 38.1 MB (38109352 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fccfbb04a00e1ebfd3804266506211e2b1b091a09846d4b66011fd68f115470`  
		Last Modified: Wed, 11 Oct 2017 13:16:21 GMT  
		Size: 842.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bda1ced3a2a36de6d7c454843ce339c844995d040e3af8eb2f253564e4ef636`  
		Last Modified: Wed, 11 Oct 2017 13:16:21 GMT  
		Size: 376.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca385dd1f141c57cf6f5fd84e1b8e9129ade344c1078d76c85320982620acf71`  
		Last Modified: Wed, 11 Oct 2017 13:16:21 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61bc0763441bcd5da3033bbdb84e2967778165ca1d1dd820fbb6446edcb5b4c3`  
		Last Modified: Wed, 11 Oct 2017 13:16:21 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ubuntu:artful`

```console
$ docker pull ubuntu@sha256:3ea1ca1aa8483a38081750953ad75046e6cc9f6b86ca97eba880ebf600d68608
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
$ docker pull ubuntu@sha256:5ed7bba95b4f9248cacfdf1505b4f365905179a5d92137416737a7d43d6a0191
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.2 MB (35235147 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7b52497140aaf0d5073b202d86a0b9b25c9f45945d9a63d9f13fa1aac93c306e`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 11 Oct 2017 12:50:35 GMT
ADD file:44bded50026536e6404b8fd6790895c1a1f9080df1f619f4a0dffb8b395f2c89 in / 
# Wed, 11 Oct 2017 12:50:36 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 11 Oct 2017 12:50:37 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 12:50:37 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 11 Oct 2017 12:50:38 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 11 Oct 2017 12:50:38 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:2a130a97d29a1726a93edaa3d4a79747413467b42e24c89636848828cf7615d7`  
		Last Modified: Wed, 11 Oct 2017 12:51:49 GMT  
		Size: 35.2 MB (35232878 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:572cc78d70415914a9a146d59f847572bb21281ceea870a87980f59f25abaa44`  
		Last Modified: Wed, 11 Oct 2017 12:51:40 GMT  
		Size: 841.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6b8395ea271db7d32b91e3497dd467ff44d76be79402d9ddff3040388ea301c`  
		Last Modified: Wed, 11 Oct 2017 12:51:40 GMT  
		Size: 389.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d120de3607f8726977c488b2b0566cf524df3b505bbd346d75ab7bcccc753acf`  
		Last Modified: Wed, 11 Oct 2017 12:51:41 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2c8840f6bdaf6d0d0ffa0209bea259d0429513d785bd0ac1f50eec2c766a3df`  
		Last Modified: Wed, 11 Oct 2017 12:51:40 GMT  
		Size: 186.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:artful` - linux; arm64 variant v8

```console
$ docker pull ubuntu@sha256:cabef835bcaf567d57d5e85f04106d9f6a493794541923b8c3cf3820c561781e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.1 MB (36126039 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6a422a1508a005c5651f80575e4b6a245d7cd813c97755598c575a11e3e39552`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 11 Oct 2017 14:00:43 GMT
ADD file:602692c8dc1af37db55e6284244ffa55353c78df4a8cfa3b858f3d334ebc44b8 in / 
# Wed, 11 Oct 2017 14:00:45 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 11 Oct 2017 14:00:46 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 14:00:48 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 11 Oct 2017 14:00:49 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 11 Oct 2017 14:00:50 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:21d21f8952968904f80d411ab2a10c2ab1eba399f754269b6d37c48b681d5653`  
		Last Modified: Wed, 11 Oct 2017 14:02:54 GMT  
		Size: 36.1 MB (36123797 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58a0f12762bdacd25bf957952939d87df8a62880f8d3ffc0ce650962aa0836cd`  
		Last Modified: Wed, 11 Oct 2017 14:02:41 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fda691beb0448f3744f47b25ffe8de19121b7aa64e7e888ef5ba7602469ebf85`  
		Last Modified: Wed, 11 Oct 2017 14:02:41 GMT  
		Size: 377.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01223b051d0167c4afee79823c0952baec141f3f99002afc65676188b84ea1b4`  
		Last Modified: Wed, 11 Oct 2017 14:02:41 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cc84e353ec2edbad98d53adf7c324f9f8d389fcffb4b6aecb048291d059114d`  
		Last Modified: Wed, 11 Oct 2017 14:02:42 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:artful` - linux; 386

```console
$ docker pull ubuntu@sha256:e35502b130e71b74920660e331f7d88f428f315c036e5cf3580c3c5173661bf3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.9 MB (39851027 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1acad729d8fef03ae05fae0eb4e65eee1428bad7c0fcf2d67dee5e145e84c733`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 11 Oct 2017 03:38:13 GMT
ADD file:6d6d312ff95936842dda8a466896db698826440b3e66baed9ed2eeaef0bafe5b in / 
# Wed, 11 Oct 2017 03:38:15 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 11 Oct 2017 03:38:15 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 03:38:16 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 11 Oct 2017 03:38:17 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 11 Oct 2017 03:38:21 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:f21c96d337ca5b0f1c144aef5fa8a4b6bd3083bb21bb3dcecb47b2765121ea30`  
		Last Modified: Wed, 11 Oct 2017 03:42:42 GMT  
		Size: 39.8 MB (39848781 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4efde20fbe9202548fb7c4004874ffbd2c4fbd216d41e96c4073f8da26561606`  
		Last Modified: Wed, 11 Oct 2017 03:42:32 GMT  
		Size: 837.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca42b809358a5c230d779fb879b10a6e4f55604496ecfba66bf6feaab4266533`  
		Last Modified: Wed, 11 Oct 2017 03:42:33 GMT  
		Size: 392.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c509b05a3bd0c7ba8b51c127cc13a83e0deb4949257aab5682df78d47a3cf55b`  
		Last Modified: Wed, 11 Oct 2017 03:42:33 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b33ecc0c60e054bc1f145a22a833289eb95ced1e89f34d6822771b6cc0d89fe2`  
		Last Modified: Wed, 11 Oct 2017 03:42:32 GMT  
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
$ docker pull ubuntu@sha256:6bc268f2428c3c2ba739b6ca29e239b160838487ba40e6d51fa23c7fcfff04fd
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.1 MB (38111586 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6eafb9fc66fd50938ee47bc4e8601826e3ae5e3a0b7a88c8b364e70b788f17cc`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 11 Oct 2017 13:15:31 GMT
ADD file:60730430a11bf23dc4ecece5b5e326afd465113727a51c9e0602a40aadce155d in / 
# Wed, 11 Oct 2017 13:15:32 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 11 Oct 2017 13:15:32 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 13:15:33 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 11 Oct 2017 13:15:34 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 11 Oct 2017 13:15:34 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:743e4e31ae0786a3a4a54abebd359bf6ccc479f9cd4e4c8cb4856627756882a7`  
		Last Modified: Wed, 11 Oct 2017 13:16:29 GMT  
		Size: 38.1 MB (38109352 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fccfbb04a00e1ebfd3804266506211e2b1b091a09846d4b66011fd68f115470`  
		Last Modified: Wed, 11 Oct 2017 13:16:21 GMT  
		Size: 842.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bda1ced3a2a36de6d7c454843ce339c844995d040e3af8eb2f253564e4ef636`  
		Last Modified: Wed, 11 Oct 2017 13:16:21 GMT  
		Size: 376.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca385dd1f141c57cf6f5fd84e1b8e9129ade344c1078d76c85320982620acf71`  
		Last Modified: Wed, 11 Oct 2017 13:16:21 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61bc0763441bcd5da3033bbdb84e2967778165ca1d1dd820fbb6446edcb5b4c3`  
		Last Modified: Wed, 11 Oct 2017 13:16:21 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ubuntu:artful-20171006`

```console
$ docker pull ubuntu@sha256:3ea1ca1aa8483a38081750953ad75046e6cc9f6b86ca97eba880ebf600d68608
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `ubuntu:artful-20171006` - linux; amd64

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

### `ubuntu:artful-20171006` - linux; arm variant v7

```console
$ docker pull ubuntu@sha256:5ed7bba95b4f9248cacfdf1505b4f365905179a5d92137416737a7d43d6a0191
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.2 MB (35235147 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7b52497140aaf0d5073b202d86a0b9b25c9f45945d9a63d9f13fa1aac93c306e`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 11 Oct 2017 12:50:35 GMT
ADD file:44bded50026536e6404b8fd6790895c1a1f9080df1f619f4a0dffb8b395f2c89 in / 
# Wed, 11 Oct 2017 12:50:36 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 11 Oct 2017 12:50:37 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 12:50:37 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 11 Oct 2017 12:50:38 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 11 Oct 2017 12:50:38 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:2a130a97d29a1726a93edaa3d4a79747413467b42e24c89636848828cf7615d7`  
		Last Modified: Wed, 11 Oct 2017 12:51:49 GMT  
		Size: 35.2 MB (35232878 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:572cc78d70415914a9a146d59f847572bb21281ceea870a87980f59f25abaa44`  
		Last Modified: Wed, 11 Oct 2017 12:51:40 GMT  
		Size: 841.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6b8395ea271db7d32b91e3497dd467ff44d76be79402d9ddff3040388ea301c`  
		Last Modified: Wed, 11 Oct 2017 12:51:40 GMT  
		Size: 389.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d120de3607f8726977c488b2b0566cf524df3b505bbd346d75ab7bcccc753acf`  
		Last Modified: Wed, 11 Oct 2017 12:51:41 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2c8840f6bdaf6d0d0ffa0209bea259d0429513d785bd0ac1f50eec2c766a3df`  
		Last Modified: Wed, 11 Oct 2017 12:51:40 GMT  
		Size: 186.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:artful-20171006` - linux; arm64 variant v8

```console
$ docker pull ubuntu@sha256:cabef835bcaf567d57d5e85f04106d9f6a493794541923b8c3cf3820c561781e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.1 MB (36126039 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6a422a1508a005c5651f80575e4b6a245d7cd813c97755598c575a11e3e39552`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 11 Oct 2017 14:00:43 GMT
ADD file:602692c8dc1af37db55e6284244ffa55353c78df4a8cfa3b858f3d334ebc44b8 in / 
# Wed, 11 Oct 2017 14:00:45 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 11 Oct 2017 14:00:46 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 14:00:48 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 11 Oct 2017 14:00:49 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 11 Oct 2017 14:00:50 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:21d21f8952968904f80d411ab2a10c2ab1eba399f754269b6d37c48b681d5653`  
		Last Modified: Wed, 11 Oct 2017 14:02:54 GMT  
		Size: 36.1 MB (36123797 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58a0f12762bdacd25bf957952939d87df8a62880f8d3ffc0ce650962aa0836cd`  
		Last Modified: Wed, 11 Oct 2017 14:02:41 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fda691beb0448f3744f47b25ffe8de19121b7aa64e7e888ef5ba7602469ebf85`  
		Last Modified: Wed, 11 Oct 2017 14:02:41 GMT  
		Size: 377.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01223b051d0167c4afee79823c0952baec141f3f99002afc65676188b84ea1b4`  
		Last Modified: Wed, 11 Oct 2017 14:02:41 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cc84e353ec2edbad98d53adf7c324f9f8d389fcffb4b6aecb048291d059114d`  
		Last Modified: Wed, 11 Oct 2017 14:02:42 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:artful-20171006` - linux; 386

```console
$ docker pull ubuntu@sha256:e35502b130e71b74920660e331f7d88f428f315c036e5cf3580c3c5173661bf3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.9 MB (39851027 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1acad729d8fef03ae05fae0eb4e65eee1428bad7c0fcf2d67dee5e145e84c733`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 11 Oct 2017 03:38:13 GMT
ADD file:6d6d312ff95936842dda8a466896db698826440b3e66baed9ed2eeaef0bafe5b in / 
# Wed, 11 Oct 2017 03:38:15 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 11 Oct 2017 03:38:15 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 03:38:16 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 11 Oct 2017 03:38:17 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 11 Oct 2017 03:38:21 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:f21c96d337ca5b0f1c144aef5fa8a4b6bd3083bb21bb3dcecb47b2765121ea30`  
		Last Modified: Wed, 11 Oct 2017 03:42:42 GMT  
		Size: 39.8 MB (39848781 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4efde20fbe9202548fb7c4004874ffbd2c4fbd216d41e96c4073f8da26561606`  
		Last Modified: Wed, 11 Oct 2017 03:42:32 GMT  
		Size: 837.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca42b809358a5c230d779fb879b10a6e4f55604496ecfba66bf6feaab4266533`  
		Last Modified: Wed, 11 Oct 2017 03:42:33 GMT  
		Size: 392.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c509b05a3bd0c7ba8b51c127cc13a83e0deb4949257aab5682df78d47a3cf55b`  
		Last Modified: Wed, 11 Oct 2017 03:42:33 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b33ecc0c60e054bc1f145a22a833289eb95ced1e89f34d6822771b6cc0d89fe2`  
		Last Modified: Wed, 11 Oct 2017 03:42:32 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:artful-20171006` - linux; ppc64le

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

### `ubuntu:artful-20171006` - linux; s390x

```console
$ docker pull ubuntu@sha256:6bc268f2428c3c2ba739b6ca29e239b160838487ba40e6d51fa23c7fcfff04fd
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.1 MB (38111586 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6eafb9fc66fd50938ee47bc4e8601826e3ae5e3a0b7a88c8b364e70b788f17cc`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 11 Oct 2017 13:15:31 GMT
ADD file:60730430a11bf23dc4ecece5b5e326afd465113727a51c9e0602a40aadce155d in / 
# Wed, 11 Oct 2017 13:15:32 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 11 Oct 2017 13:15:32 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 13:15:33 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 11 Oct 2017 13:15:34 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 11 Oct 2017 13:15:34 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:743e4e31ae0786a3a4a54abebd359bf6ccc479f9cd4e4c8cb4856627756882a7`  
		Last Modified: Wed, 11 Oct 2017 13:16:29 GMT  
		Size: 38.1 MB (38109352 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fccfbb04a00e1ebfd3804266506211e2b1b091a09846d4b66011fd68f115470`  
		Last Modified: Wed, 11 Oct 2017 13:16:21 GMT  
		Size: 842.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bda1ced3a2a36de6d7c454843ce339c844995d040e3af8eb2f253564e4ef636`  
		Last Modified: Wed, 11 Oct 2017 13:16:21 GMT  
		Size: 376.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca385dd1f141c57cf6f5fd84e1b8e9129ade344c1078d76c85320982620acf71`  
		Last Modified: Wed, 11 Oct 2017 13:16:21 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61bc0763441bcd5da3033bbdb84e2967778165ca1d1dd820fbb6446edcb5b4c3`  
		Last Modified: Wed, 11 Oct 2017 13:16:21 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ubuntu:devel`

```console
$ docker pull ubuntu@sha256:3ea1ca1aa8483a38081750953ad75046e6cc9f6b86ca97eba880ebf600d68608
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `ubuntu:devel` - linux; amd64

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

### `ubuntu:devel` - linux; arm variant v7

```console
$ docker pull ubuntu@sha256:5ed7bba95b4f9248cacfdf1505b4f365905179a5d92137416737a7d43d6a0191
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.2 MB (35235147 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7b52497140aaf0d5073b202d86a0b9b25c9f45945d9a63d9f13fa1aac93c306e`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 11 Oct 2017 12:50:35 GMT
ADD file:44bded50026536e6404b8fd6790895c1a1f9080df1f619f4a0dffb8b395f2c89 in / 
# Wed, 11 Oct 2017 12:50:36 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 11 Oct 2017 12:50:37 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 12:50:37 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 11 Oct 2017 12:50:38 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 11 Oct 2017 12:50:38 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:2a130a97d29a1726a93edaa3d4a79747413467b42e24c89636848828cf7615d7`  
		Last Modified: Wed, 11 Oct 2017 12:51:49 GMT  
		Size: 35.2 MB (35232878 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:572cc78d70415914a9a146d59f847572bb21281ceea870a87980f59f25abaa44`  
		Last Modified: Wed, 11 Oct 2017 12:51:40 GMT  
		Size: 841.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6b8395ea271db7d32b91e3497dd467ff44d76be79402d9ddff3040388ea301c`  
		Last Modified: Wed, 11 Oct 2017 12:51:40 GMT  
		Size: 389.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d120de3607f8726977c488b2b0566cf524df3b505bbd346d75ab7bcccc753acf`  
		Last Modified: Wed, 11 Oct 2017 12:51:41 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2c8840f6bdaf6d0d0ffa0209bea259d0429513d785bd0ac1f50eec2c766a3df`  
		Last Modified: Wed, 11 Oct 2017 12:51:40 GMT  
		Size: 186.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:devel` - linux; arm64 variant v8

```console
$ docker pull ubuntu@sha256:cabef835bcaf567d57d5e85f04106d9f6a493794541923b8c3cf3820c561781e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.1 MB (36126039 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6a422a1508a005c5651f80575e4b6a245d7cd813c97755598c575a11e3e39552`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 11 Oct 2017 14:00:43 GMT
ADD file:602692c8dc1af37db55e6284244ffa55353c78df4a8cfa3b858f3d334ebc44b8 in / 
# Wed, 11 Oct 2017 14:00:45 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 11 Oct 2017 14:00:46 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 14:00:48 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 11 Oct 2017 14:00:49 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 11 Oct 2017 14:00:50 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:21d21f8952968904f80d411ab2a10c2ab1eba399f754269b6d37c48b681d5653`  
		Last Modified: Wed, 11 Oct 2017 14:02:54 GMT  
		Size: 36.1 MB (36123797 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58a0f12762bdacd25bf957952939d87df8a62880f8d3ffc0ce650962aa0836cd`  
		Last Modified: Wed, 11 Oct 2017 14:02:41 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fda691beb0448f3744f47b25ffe8de19121b7aa64e7e888ef5ba7602469ebf85`  
		Last Modified: Wed, 11 Oct 2017 14:02:41 GMT  
		Size: 377.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01223b051d0167c4afee79823c0952baec141f3f99002afc65676188b84ea1b4`  
		Last Modified: Wed, 11 Oct 2017 14:02:41 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cc84e353ec2edbad98d53adf7c324f9f8d389fcffb4b6aecb048291d059114d`  
		Last Modified: Wed, 11 Oct 2017 14:02:42 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:devel` - linux; 386

```console
$ docker pull ubuntu@sha256:e35502b130e71b74920660e331f7d88f428f315c036e5cf3580c3c5173661bf3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.9 MB (39851027 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1acad729d8fef03ae05fae0eb4e65eee1428bad7c0fcf2d67dee5e145e84c733`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 11 Oct 2017 03:38:13 GMT
ADD file:6d6d312ff95936842dda8a466896db698826440b3e66baed9ed2eeaef0bafe5b in / 
# Wed, 11 Oct 2017 03:38:15 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 11 Oct 2017 03:38:15 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 03:38:16 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 11 Oct 2017 03:38:17 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 11 Oct 2017 03:38:21 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:f21c96d337ca5b0f1c144aef5fa8a4b6bd3083bb21bb3dcecb47b2765121ea30`  
		Last Modified: Wed, 11 Oct 2017 03:42:42 GMT  
		Size: 39.8 MB (39848781 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4efde20fbe9202548fb7c4004874ffbd2c4fbd216d41e96c4073f8da26561606`  
		Last Modified: Wed, 11 Oct 2017 03:42:32 GMT  
		Size: 837.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca42b809358a5c230d779fb879b10a6e4f55604496ecfba66bf6feaab4266533`  
		Last Modified: Wed, 11 Oct 2017 03:42:33 GMT  
		Size: 392.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c509b05a3bd0c7ba8b51c127cc13a83e0deb4949257aab5682df78d47a3cf55b`  
		Last Modified: Wed, 11 Oct 2017 03:42:33 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b33ecc0c60e054bc1f145a22a833289eb95ced1e89f34d6822771b6cc0d89fe2`  
		Last Modified: Wed, 11 Oct 2017 03:42:32 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:devel` - linux; ppc64le

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

### `ubuntu:devel` - linux; s390x

```console
$ docker pull ubuntu@sha256:6bc268f2428c3c2ba739b6ca29e239b160838487ba40e6d51fa23c7fcfff04fd
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.1 MB (38111586 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6eafb9fc66fd50938ee47bc4e8601826e3ae5e3a0b7a88c8b364e70b788f17cc`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 11 Oct 2017 13:15:31 GMT
ADD file:60730430a11bf23dc4ecece5b5e326afd465113727a51c9e0602a40aadce155d in / 
# Wed, 11 Oct 2017 13:15:32 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 11 Oct 2017 13:15:32 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 13:15:33 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 11 Oct 2017 13:15:34 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 11 Oct 2017 13:15:34 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:743e4e31ae0786a3a4a54abebd359bf6ccc479f9cd4e4c8cb4856627756882a7`  
		Last Modified: Wed, 11 Oct 2017 13:16:29 GMT  
		Size: 38.1 MB (38109352 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fccfbb04a00e1ebfd3804266506211e2b1b091a09846d4b66011fd68f115470`  
		Last Modified: Wed, 11 Oct 2017 13:16:21 GMT  
		Size: 842.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bda1ced3a2a36de6d7c454843ce339c844995d040e3af8eb2f253564e4ef636`  
		Last Modified: Wed, 11 Oct 2017 13:16:21 GMT  
		Size: 376.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca385dd1f141c57cf6f5fd84e1b8e9129ade344c1078d76c85320982620acf71`  
		Last Modified: Wed, 11 Oct 2017 13:16:21 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61bc0763441bcd5da3033bbdb84e2967778165ca1d1dd820fbb6446edcb5b4c3`  
		Last Modified: Wed, 11 Oct 2017 13:16:21 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ubuntu:latest`

```console
$ docker pull ubuntu@sha256:506e2d5852de1d7c90d538c5332bd3cc33b9cbd26f6ca653875899c505c82687
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `ubuntu:latest` - linux; amd64

```console
$ docker pull ubuntu@sha256:550f6e26da4b4cb8655a96dd6458ea01e2fb3dcb99d24e6dc427c08ea42c9785
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.6 MB (47619616 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:747cb2d60bbecbda48aff14a8be5c8b913ca69318a6067e57c697f8a78dda06e`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 10 Oct 2017 20:59:02 GMT
ADD file:5b334adf9d9a2256add2a801b49d4b23c93b0973ec22bb798973d571c948f102 in / 
# Tue, 10 Oct 2017 20:59:02 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 10 Oct 2017 20:59:03 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 20:59:04 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 10 Oct 2017 20:59:04 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 10 Oct 2017 20:59:05 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:ae79f251470513c2a0ec750117a81f2d58a50727901ca416efecf297b8a03913`  
		Last Modified: Fri, 06 Oct 2017 13:04:44 GMT  
		Size: 47.6 MB (47617129 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ad56d5fc14905886c560200ab69f905b5c5287eaf12f8f761a7ab54f7a61c1b`  
		Last Modified: Tue, 10 Oct 2017 21:00:10 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:170e558760e8b2e484a022b7d7272cf284fc4e1936ba7a0a671fc586440ad272`  
		Last Modified: Tue, 10 Oct 2017 21:00:10 GMT  
		Size: 618.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:395460e233f5bdcd910d618a3b615e0d881e09ad27d58f3065eef53ecae6a808`  
		Last Modified: Tue, 10 Oct 2017 21:00:10 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f01dc62e444044e3ce494269837ef0aedb80fef69c679416137f17812d2eb9c`  
		Last Modified: Tue, 10 Oct 2017 21:00:10 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:latest` - linux; arm variant v7

```console
$ docker pull ubuntu@sha256:cd5266c6fbcf512714f7e6b34c341af20b44a3f905f7e0b0a2c27eaaa04f04af
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **42.4 MB (42447060 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:764826e73e32dae777d5fdf6d072cad47e131e63b0cb791d9e32424187141e33`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 11 Oct 2017 12:51:12 GMT
ADD file:b8b49b959bf907b482bdc24c3c6f159f7aed1a3fb73e8efa669b12800635d25f in / 
# Wed, 11 Oct 2017 12:51:13 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 11 Oct 2017 12:51:14 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 12:51:14 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 11 Oct 2017 12:51:15 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 11 Oct 2017 12:51:15 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:26e5736d414450f12f7c066ff59a208e9ea9311407c91de898505d1adbf01527`  
		Last Modified: Wed, 11 Oct 2017 12:52:25 GMT  
		Size: 42.4 MB (42444579 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3b2d7804592854a106e4cb6a8decdc17f84ce86673c5331ae4be08f6ddf9667`  
		Last Modified: Wed, 11 Oct 2017 12:52:14 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1e6e6dfa0c41d49186e1ef4cf4409826020371a07bc3a6b5509bb23e7004701`  
		Last Modified: Wed, 11 Oct 2017 12:52:15 GMT  
		Size: 614.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8b298e101bd87bb479bd9d268470b3060526668473413ad16a992f5a70b9b69`  
		Last Modified: Wed, 11 Oct 2017 12:52:14 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5da5730e907c71f6dad2a93757f203cea7518145a8d979508503cb906926d549`  
		Last Modified: Wed, 11 Oct 2017 12:52:14 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:latest` - linux; arm64 variant v8

```console
$ docker pull ubuntu@sha256:d0f76cd78708e701d89eaee3bda1ba768500b98e7db80a5c3e45b7c0ac241428
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.4 MB (43428811 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:499b06aa549be29a3385abde517b6ddb07ab56818ca999aefe03f8a7e1b63055`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 11 Oct 2017 14:01:45 GMT
ADD file:17aebc392b3cf207dbe2809abd34b9eec60c3a0e8b39dcd04f8f29a863e966b3 in / 
# Wed, 11 Oct 2017 14:01:47 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 11 Oct 2017 14:01:49 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 14:01:50 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 11 Oct 2017 14:01:52 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 11 Oct 2017 14:01:52 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:aac43d4d6c83c61c78a7814ef7d2e02dc6c2f52dc110ff181aea144991711636`  
		Last Modified: Fri, 06 Oct 2017 22:13:46 GMT  
		Size: 43.4 MB (43426326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eed65d92515dfacf9a35d3301bc4847f1057d240f9ab3c442b573bdbb8452791`  
		Last Modified: Wed, 11 Oct 2017 14:03:45 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2de5574dca5eb5a1b9351c990c0865bbe18370da61e7169a539ba80bbdb058b2`  
		Last Modified: Wed, 11 Oct 2017 14:03:44 GMT  
		Size: 617.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5a76e352cce541b89ec31a527e09d2185c9427315f118b56573f79eb31b4c2b`  
		Last Modified: Wed, 11 Oct 2017 14:03:45 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2aceaacecb77ef3360c013ffcd305eecd6cf17a32bd143a72ca0b86b74721ba`  
		Last Modified: Wed, 11 Oct 2017 14:03:45 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:latest` - linux; 386

```console
$ docker pull ubuntu@sha256:675537382e8755353a5d1f8a1ff18b01bd8574fb6d292b67b50db3ff0319522d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.9 MB (47876861 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a4a092435e2a9203f76a214bd8fec951db1513cc9f363709567662d368f03c0d`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 11 Oct 2017 03:42:05 GMT
ADD file:bb3bd5935b4d8a89a615b235edd9f2c8994892f80f4207a9be6f73d1e740fe99 in / 
# Wed, 11 Oct 2017 03:42:06 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 11 Oct 2017 03:42:07 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 03:42:08 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 11 Oct 2017 03:42:09 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 11 Oct 2017 03:42:09 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:acb0d27ac9b88e225bef09d7d5994961e9a35aa8c44e63211012e3e309faba08`  
		Last Modified: Wed, 11 Oct 2017 03:43:24 GMT  
		Size: 47.9 MB (47874409 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f9fbc97d20aafc373f030de956f2937231c0429b2afdb5bf29f37aa461dd48f`  
		Last Modified: Wed, 11 Oct 2017 03:43:13 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebd9d15ef132d78842e10e92e7a68bff76280e8b8dfdbe8ccc0847a08857fa69`  
		Last Modified: Wed, 11 Oct 2017 03:43:13 GMT  
		Size: 584.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92dbf3d41ac22221844d955b41a1c4e96a78f56e93ef0f2996d6173d4979720e`  
		Last Modified: Wed, 11 Oct 2017 03:43:13 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:babacea552509daca82b772dc265cb3120ac3a9b6dcad79724c8beebb932eb3a`  
		Last Modified: Wed, 11 Oct 2017 03:43:14 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:latest` - linux; ppc64le

```console
$ docker pull ubuntu@sha256:fd389c79576f0f1f3a6b7bdc22b57e497841bd332f17729776278a8afdde1c14
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.6 MB (49632398 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cc36286630a239c66b97a0bcb9f7397b9576a3cecc1b7f8da42438b89da2f19b`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 11 Oct 2017 02:41:21 GMT
ADD file:576880950883a1e490209ab49495d7dc9f83e576a9669a99967c68316aa88672 in / 
# Wed, 11 Oct 2017 02:41:53 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 11 Oct 2017 02:42:19 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 02:42:28 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 11 Oct 2017 02:42:38 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 11 Oct 2017 02:42:45 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:84a41d801f0c785b93df653a9b96af1d8d3a33a4b029ed27947064aabf5bc52c`  
		Last Modified: Wed, 11 Oct 2017 02:44:12 GMT  
		Size: 49.6 MB (49629867 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bd19f106c49d8ac8a0f8ee614b3d8c3e76c173821be02d196509c657418a18a`  
		Last Modified: Wed, 11 Oct 2017 02:43:59 GMT  
		Size: 856.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dea09941130c03bf6098e0061a2085596e19b94e413525f4cb7a052e11557996`  
		Last Modified: Wed, 11 Oct 2017 02:43:59 GMT  
		Size: 648.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b537a0876ec5c925e698ed48743639a0130c45530d670b606a3bce4faa40f4b`  
		Last Modified: Wed, 11 Oct 2017 02:43:59 GMT  
		Size: 857.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a2f653825732a085aaed721c8f3ff35da9ea3854c84984ede13fd38c929e0be`  
		Last Modified: Wed, 11 Oct 2017 02:43:59 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:latest` - linux; s390x

```console
$ docker pull ubuntu@sha256:18c5cc207f40260f85c88a27bf27f2a886b99719fea7bad867a6fd40b08d8c59
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.3 MB (46330386 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1e8fb7dd968bde7e26fc1e197b8e986fae879d4768fc790a5597068d0e5971e5`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 11 Oct 2017 13:15:47 GMT
ADD file:219f2adbad8a210a00a1a64e3a09575439c703ab5e1d0c3084a5721a12fbb79d in / 
# Wed, 11 Oct 2017 13:15:48 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 11 Oct 2017 13:15:48 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 13:15:49 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 11 Oct 2017 13:15:49 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 11 Oct 2017 13:15:50 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:dfc7cecdb13de6ca6252038d54f31238a7044cb9886808665a63a2dff5f7cd41`  
		Last Modified: Wed, 11 Oct 2017 13:16:53 GMT  
		Size: 46.3 MB (46327901 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c372dc102ed71a29b294b4f6d2d03ad6c498c6144a117abd265b9943446dd687`  
		Last Modified: Wed, 11 Oct 2017 13:16:45 GMT  
		Size: 844.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98990ad1a97e8b1eab0be323a49922046dcb5ae5da4099e8810393e61e062613`  
		Last Modified: Wed, 11 Oct 2017 13:16:45 GMT  
		Size: 617.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6107352341486a21448df418194f1118fdae66005d65bb6de75e935c3461c202`  
		Last Modified: Wed, 11 Oct 2017 13:16:45 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a1bbd20dbb2c77788d7d2e5e413059b7401e23c8bfc0b6dcbd1f5c2eac857ca`  
		Last Modified: Wed, 11 Oct 2017 13:16:45 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ubuntu:rolling`

```console
$ docker pull ubuntu@sha256:da2fd4e2e10e0ab991f251353a2d3e32d38c75a83a917dbca0a307efd8730f49
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `ubuntu:rolling` - linux; amd64

```console
$ docker pull ubuntu@sha256:12f61dc88c05bcf85210e98c471c7a841da72e453922d717c058aa0438fc1ed6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.4 MB (38440318 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6ca5545cc1efa0f860bf7d518d45132d1919b713b328ef2d7e61db76c4707047`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 18 Sep 2017 23:31:50 GMT
ADD file:4e2e1f8336bcc64e853e9f3462f0829ce85b34a32755dba06aa7bd0007eda4f0 in / 
# Mon, 18 Sep 2017 23:31:50 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 18 Sep 2017 23:31:51 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 18 Sep 2017 23:31:52 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Mon, 18 Sep 2017 23:31:52 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 18 Sep 2017 23:31:52 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:8b23367590c32dbb6954ab3cc9b6c451b9763556c72a893538efe88583f6a5dc`  
		Last Modified: Mon, 18 Sep 2017 23:33:09 GMT  
		Size: 38.4 MB (38437889 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7feb578947e4b86e0a0cff64b42489dc1305bbacdb3ed36d0afe95a19ebf845`  
		Last Modified: Mon, 18 Sep 2017 23:33:03 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac836f06379c8d7356e0d2e7dbb3e9f3924616527fa51b95545fb455eec31f08`  
		Last Modified: Mon, 18 Sep 2017 23:33:03 GMT  
		Size: 569.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be286dc472df31f16953d34151f836d0186fddeea6cd56dcefd2a6d46a992500`  
		Last Modified: Mon, 18 Sep 2017 23:33:03 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5533df5f353d9fbcbd081e9dd653fe7d8ddebed958d1f0e56fa4a87b216f13c1`  
		Last Modified: Mon, 18 Sep 2017 23:33:03 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:rolling` - linux; arm variant v7

```console
$ docker pull ubuntu@sha256:2af954832cc8de7971895f0315985980405797837b5cbc8d6a9dcbdc71661436
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.5 MB (34516354 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:364222e9711ccc1899c7d697b9cb90164f5915640c4ccd361f34f741ee62ce1e`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 27 Sep 2017 04:15:20 GMT
ADD file:96ad2a1d6e6271072bf9329d4088c5b1a3e07ce0900b96b5d19f9c94595fd347 in / 
# Wed, 27 Sep 2017 04:15:22 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 27 Sep 2017 04:15:24 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 27 Sep 2017 04:15:24 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 27 Sep 2017 04:15:25 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 27 Sep 2017 04:15:25 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:7d85563d7213aa3e9b75cb6a48f74e66c3e533542076fe29c855717cc74243af`  
		Last Modified: Wed, 27 Sep 2017 04:17:06 GMT  
		Size: 34.5 MB (34513849 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8f49ca2e01f9e434f04623a1851121b47bf655150f09fbd2a5cc3884363967a`  
		Last Modified: Wed, 27 Sep 2017 04:16:54 GMT  
		Size: 845.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ef587d007b98d3eb0a13444ff48ffae71dce3bb36a5d718c275924ee694d29d`  
		Last Modified: Wed, 27 Sep 2017 04:16:54 GMT  
		Size: 618.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c18b21e2f0bd99269b18440cbda901e969383ecf22923be85dfb3f7ade175884`  
		Last Modified: Wed, 27 Sep 2017 04:16:54 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ccc54109a7c8891a0231746695da8337f5c59228aa34b6736b0709c1d99bb44`  
		Last Modified: Wed, 27 Sep 2017 04:16:54 GMT  
		Size: 189.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:rolling` - linux; arm64 variant v8

```console
$ docker pull ubuntu@sha256:1d2185e32dcc14ce3ef85abfc7d61545f33b4c569bebc05d404e334166730005
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.6 MB (35618968 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:549331a667ba1f9323cae258a7f063097b7a957da335a5385fbb29103012851c`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 18 Sep 2017 23:34:46 GMT
ADD file:af30328c055db3d622d6fdb35bce0016a12998bd70635b4de72c891582608ce8 in / 
# Mon, 18 Sep 2017 23:34:48 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 18 Sep 2017 23:34:49 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 18 Sep 2017 23:34:50 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Mon, 18 Sep 2017 23:34:53 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 18 Sep 2017 23:34:53 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:a2c35bd1172470f907581f9586450b683e1498682c285e41f985b54430af5f6c`  
		Last Modified: Mon, 18 Sep 2017 23:37:08 GMT  
		Size: 35.6 MB (35616559 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:307fc7f15c2cc94311005503a5f81980d3d4de93f13d0d3be3370c3f2a047441`  
		Last Modified: Mon, 18 Sep 2017 23:36:55 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b738f5af4f1e0187e300ddb62091ead05283e9f57f60293c9eeca900edcbd007`  
		Last Modified: Mon, 18 Sep 2017 23:36:55 GMT  
		Size: 541.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7a2f3d48d043e4e2d51ae424ae18282d19af6b8741d4600a65d6c2748d3a450`  
		Last Modified: Mon, 18 Sep 2017 23:36:55 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e9d4b0c8e3c0863b9613bbbf4ca7be7e1453f8b5cc904f070bb42e751d2f264`  
		Last Modified: Mon, 18 Sep 2017 23:36:55 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:rolling` - linux; 386

```console
$ docker pull ubuntu@sha256:f34712d7c5ffe6546ec89c923c0e161f5e37c4e199d12ccc5f4534611da89c93
```

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.8 MB (38827601 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f061e77c87c5a23d804171bede92168ead7e3bc52b4cc8001b2fe3dfc609877b`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 18 Sep 2017 23:38:53 GMT
ADD file:9a9fa863d25cad892c2770f9d100180994183d757053a6a7a31d37a379c4fddc in / 
# Mon, 18 Sep 2017 23:38:54 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 18 Sep 2017 23:38:55 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 18 Sep 2017 23:38:56 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Mon, 18 Sep 2017 23:38:57 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 18 Sep 2017 23:38:57 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:5760633a5f49d5c4dbac614d2594419ee522f10d4ffff0acd0fb73e0f49a1d07`  
		Last Modified: Mon, 18 Sep 2017 15:56:13 GMT  
		Size: 38.8 MB (38825225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:581018bed0a2fad43bce32dd1c771e1236a692ae0bae43c3cdbf1b8ef23d6d4d`  
		Last Modified: Mon, 18 Sep 2017 23:40:22 GMT  
		Size: 848.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6472a3d79179eff2b6a24928ce97f32eb0069a6261306501d697f46670573ef`  
		Last Modified: Mon, 18 Sep 2017 23:40:23 GMT  
		Size: 515.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb7bbe1cbf845b35fd6c0c816a1fb9d18e72bf57a59fefca6b995b7cdf0717bf`  
		Last Modified: Mon, 18 Sep 2017 23:40:22 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05d826896f2a148ea8fa01eee5cab3c2bc33fce9c1be3701a7a4f3e349d6abd9`  
		Last Modified: Mon, 18 Sep 2017 23:40:23 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:rolling` - linux; ppc64le

```console
$ docker pull ubuntu@sha256:017a120029c660d8eab4500cfb9722ce992bc09720baf3ea6c1714aaff313cc9
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.4 MB (40446386 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:55f65f08621e08f47f8d12a51aebe8446fa8cece7b708a7b6f174cf3fe642de5`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 18 Sep 2017 23:35:49 GMT
ADD file:693811ca88983c96f1ae7b86b18c599a8d8498772a363456defef70ec0ecc5de in / 
# Mon, 18 Sep 2017 23:35:55 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 18 Sep 2017 23:35:59 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 18 Sep 2017 23:36:07 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Mon, 18 Sep 2017 23:36:11 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 18 Sep 2017 23:36:13 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:ecef4bb781567569118b0dbfb956c9faf2d38a4831438bf7e3fc8a24d095d6d9`  
		Last Modified: Mon, 18 Sep 2017 23:38:10 GMT  
		Size: 40.4 MB (40443928 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:972cd4164d3b34fb230909044a4d609b4da3064aec7c6710e2a315171203a54b`  
		Last Modified: Mon, 18 Sep 2017 23:37:57 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dcefc6c0022e15174c14c104384f7447e3eb207cd5a4f5d6938982d42489a74c`  
		Last Modified: Mon, 18 Sep 2017 23:37:57 GMT  
		Size: 562.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2dcede92304accd7e9c171974646b12f0248f7c385811f9ac0def8b9ae641f17`  
		Last Modified: Mon, 18 Sep 2017 23:37:57 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5eef80f237862df7588cbbf12c0e5eca49c2c4fbed34fdc08283050d5c90a811`  
		Last Modified: Mon, 18 Sep 2017 23:37:58 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:rolling` - linux; s390x

```console
$ docker pull ubuntu@sha256:330b7d8212de67f03836be1ec11cb45ea1d926ffe0da63d305c47b5a7604aa2f
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.6 MB (37607507 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fe17f2b831c0072167ec7112a1fb6c249b7198a64645e1715b39b62235e9bb46`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 18 Sep 2017 23:33:46 GMT
ADD file:d98500a574281bf0f63432a3c0c045843865b8c622dd692e223aefbe9f66af4e in / 
# Mon, 18 Sep 2017 23:33:47 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 18 Sep 2017 23:33:47 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 18 Sep 2017 23:33:48 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Mon, 18 Sep 2017 23:33:48 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 18 Sep 2017 23:33:49 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:b8635927930021e2056a2838002d2c677552e0b9b40ecedf74abd298e8eca0f9`  
		Last Modified: Mon, 18 Sep 2017 23:34:51 GMT  
		Size: 37.6 MB (37605103 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2877d097d6610dc9de2c9223c82beca790a55806f1af7dce3f9f1222e2996f53`  
		Last Modified: Mon, 18 Sep 2017 23:34:44 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0d83c0bd9638ca6c165f78b766c0e292c314e3e9564f85320f2a0ad51fbb088`  
		Last Modified: Mon, 18 Sep 2017 23:34:44 GMT  
		Size: 540.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d0332a6f65c9d15a7987c3e473253bc46fd95e794b808611c5e09b4d3ef0454`  
		Last Modified: Mon, 18 Sep 2017 23:34:44 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a6b8e2bdba618b1359768422eac2b288464e119b957e296078017f5c3648aa7`  
		Last Modified: Mon, 18 Sep 2017 23:34:44 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ubuntu:trusty`

```console
$ docker pull ubuntu@sha256:6e3e3f3c5c36a91ba17ea002f63e5607ed6a8c8e5fbbddb31ad3e15638b51ebc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le

### `ubuntu:trusty` - linux; amd64

```console
$ docker pull ubuntu@sha256:26c9774584d2ed076e83399307f4ef75ed3567e73fa9f7c65f68b0f720dcc56c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **67.2 MB (67188932 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dea1945146b96542e6e20642830c78df702d524a113605a906397db1db022703`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 13 Sep 2017 23:26:20 GMT
ADD file:8f997234193c2f587ac17bb4a8db2657103d2924813edb281eec7ba9883a2806 in / 
# Wed, 13 Sep 2017 23:26:21 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 13 Sep 2017 23:26:21 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 23:26:22 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 13 Sep 2017 23:26:22 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 13 Sep 2017 23:26:23 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:bae382666908fd87a3a3646d7eb7176fa42226027d3256cac38ee0b79bdb0491`  
		Last Modified: Wed, 13 Sep 2017 22:04:42 GMT  
		Size: 67.1 MB (67114903 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29ede3c02ff200fff7454ce59e1c3bb62f538847cefd5b8541e088ad22c42879`  
		Last Modified: Wed, 13 Sep 2017 23:27:09 GMT  
		Size: 72.6 KB (72648 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da4e69f33106a3131ce07d9ed4403593a7698be6dabd6cabd2c9c228599c8ce0`  
		Last Modified: Wed, 13 Sep 2017 23:27:09 GMT  
		Size: 364.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d43e5f5d27feb983909350fa3a008ebfb66436e172337cd543db358f5a01f1c`  
		Last Modified: Wed, 13 Sep 2017 23:27:09 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0de1abb17d6e07bcf1b68dc5c75acf0386405905ed735efe65a5235f29e756d`  
		Last Modified: Wed, 13 Sep 2017 23:27:09 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:trusty` - linux; arm variant v7

```console
$ docker pull ubuntu@sha256:0a92fed07024ea15648f92e3209a76276194087de3d15a17a7eedfcc070d1c84
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.5 MB (61533399 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4859790a66d87a06b3a99b9e65c686f6eb69de1d8ed98833163de1f88f76f60d`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 27 Sep 2017 04:14:46 GMT
ADD file:9269eeb4eb9940532bc07ce41e27a91f440fe57993b35cb2ccbabf18e6e08937 in / 
# Wed, 27 Sep 2017 04:14:47 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 27 Sep 2017 04:14:48 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 27 Sep 2017 04:14:50 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 27 Sep 2017 04:14:50 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 27 Sep 2017 04:14:51 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:187f4a01d8b8e7f7d189098d4bcec67814384806cd4c813fc7e4b377f145045a`  
		Last Modified: Wed, 27 Sep 2017 04:16:17 GMT  
		Size: 61.5 MB (61455216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:682e73a2927e06cb0dce96383ca5174e23b9f24ca554c8cfcec1e47c3941bfad`  
		Last Modified: Wed, 27 Sep 2017 04:15:56 GMT  
		Size: 76.8 KB (76773 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b564854d4c33a8370ba24496f183cbcd732c0da282e49512324c1816cd105dad`  
		Last Modified: Wed, 27 Sep 2017 04:15:56 GMT  
		Size: 363.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b48a5540d3c6fc9c465039823d1d0a07c4e038eba6875ca638b4e1d69133dbc4`  
		Last Modified: Wed, 27 Sep 2017 04:15:56 GMT  
		Size: 858.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:561af84b7f63d18054cfc85b75035f9a6bf64ddcba38af1bc3777416c9c754cf`  
		Last Modified: Wed, 27 Sep 2017 04:15:56 GMT  
		Size: 189.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:trusty` - linux; arm64 variant v8

```console
$ docker pull ubuntu@sha256:61de5c00451887fb0f98af9a1c989dd983e7c65f5b6c884d85ca8a5d49cdfc53
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **63.2 MB (63229037 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dbb6f732d326019e135cfedabcef425153a53081758db52af9cebbe4ecd65ef7`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 13 Sep 2017 23:27:01 GMT
ADD file:7ea2c29a53add06a8c5849caffdfcc5171d9cc0de439687b73167ee8c8c6a995 in / 
# Wed, 13 Sep 2017 23:27:03 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 13 Sep 2017 23:27:04 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 23:27:09 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 13 Sep 2017 23:27:10 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 13 Sep 2017 23:27:11 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:211fe73d577b3db63c2f5ce11a7f9403edecb4977eee8574e2a53fdf02fd42d3`  
		Last Modified: Wed, 13 Sep 2017 23:29:18 GMT  
		Size: 63.2 MB (63168561 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1dcade08d581afdb20d6dbca47eb05d2598554917f214718e928b70a48b54f39`  
		Last Modified: Wed, 13 Sep 2017 23:28:54 GMT  
		Size: 59.1 KB (59097 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:712265ae9a89af70df71abdfff24731189ca5339030894a8656a46dea59c7206`  
		Last Modified: Wed, 13 Sep 2017 23:28:54 GMT  
		Size: 360.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a26e33b782f6f9e0f19992a733d18b44cfcf53d86feea2ad3f55dfd7d652bba`  
		Last Modified: Wed, 13 Sep 2017 23:28:54 GMT  
		Size: 858.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d05d097f34378dbf6ca969f9256f553f25b24a3b11f6ee48651c6405a4e81abb`  
		Last Modified: Wed, 13 Sep 2017 23:28:53 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:trusty` - linux; 386

```console
$ docker pull ubuntu@sha256:1450570906d2ee1a87a61c3524d7275a33e8b13178ac683ca17eb1af1a13c527
```

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **64.9 MB (64898863 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:07a65d981ede1fe04f76aae7decaaf10eb793442a5327674f8fed1a518f27043`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 13 Sep 2017 23:26:25 GMT
ADD file:5ea4259718526648d5d282e8d9d1c2584e856b39c0f4b8594de9aa9f9985218b in / 
# Wed, 13 Sep 2017 23:26:25 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 13 Sep 2017 23:26:26 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 23:26:27 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 13 Sep 2017 23:26:27 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 13 Sep 2017 23:26:27 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:f783391c63c08ef35d2d6263d1009541806f2358ba987368c7abf8729cf5d577`  
		Last Modified: Wed, 06 Sep 2017 09:36:00 GMT  
		Size: 64.8 MB (64832640 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1a47d2c69876192779226a84caa6f71f9c15cf4151b85c06c3f6289423c5259`  
		Last Modified: Wed, 13 Sep 2017 23:27:26 GMT  
		Size: 64.9 KB (64851 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b00cd5494581ef496db53eae6ef74ee4589a5d2f2d53faede541254b65eee6a0`  
		Last Modified: Wed, 13 Sep 2017 23:27:25 GMT  
		Size: 357.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92f705fb93233929d4f280117ab56b4fa4666a06a975de96a8279bd985bd3f1e`  
		Last Modified: Wed, 13 Sep 2017 23:27:26 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfd11b43477b7c801f64151e30c383653655af3332787fed6204add3ab092753`  
		Last Modified: Wed, 13 Sep 2017 23:27:25 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:trusty` - linux; ppc64le

```console
$ docker pull ubuntu@sha256:cc5836604afdf422e82cb383611a30a00cef2b507da0187e715aeaa35c0b3248
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **69.8 MB (69765624 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d24e7893481921724c46a7e622bbebf49ec40cf0c68fcb5828937fa23494d8ad`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 13 Sep 2017 23:27:59 GMT
ADD file:ecdc3f73d8b16947cc3eee78b4e1f5a5431029720cabb5a589e91f72d560567b in / 
# Wed, 13 Sep 2017 23:28:06 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 13 Sep 2017 23:28:10 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 23:28:14 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 13 Sep 2017 23:28:30 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 13 Sep 2017 23:28:33 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:06cef575e03acca24a1e636f8d2ed694a09a1296706cce34cdab56ff4e6cdeec`  
		Last Modified: Wed, 13 Sep 2017 23:31:02 GMT  
		Size: 69.7 MB (69700798 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:037f9273c8ba936000db3a181323c6fd5591e70339a659470b90d4b0c1c9162d`  
		Last Modified: Wed, 13 Sep 2017 23:30:43 GMT  
		Size: 63.4 KB (63417 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25f10fea324280b832d0e4ff046f0269c66baa2eca54efc73917c6510c8be844`  
		Last Modified: Wed, 13 Sep 2017 23:30:43 GMT  
		Size: 360.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f301276d41ce9d2379e7b962e2ee5a3040e0f14eef21e66136125a3100fae46c`  
		Last Modified: Wed, 13 Sep 2017 23:30:43 GMT  
		Size: 861.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de5a488e2380e445d07718060469f8afc534131480e6b012179e2e5f5884e28c`  
		Last Modified: Wed, 13 Sep 2017 23:30:43 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ubuntu:trusty-20170817`

```console
$ docker pull ubuntu@sha256:6e3e3f3c5c36a91ba17ea002f63e5607ed6a8c8e5fbbddb31ad3e15638b51ebc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le

### `ubuntu:trusty-20170817` - linux; amd64

```console
$ docker pull ubuntu@sha256:26c9774584d2ed076e83399307f4ef75ed3567e73fa9f7c65f68b0f720dcc56c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **67.2 MB (67188932 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dea1945146b96542e6e20642830c78df702d524a113605a906397db1db022703`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 13 Sep 2017 23:26:20 GMT
ADD file:8f997234193c2f587ac17bb4a8db2657103d2924813edb281eec7ba9883a2806 in / 
# Wed, 13 Sep 2017 23:26:21 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 13 Sep 2017 23:26:21 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 23:26:22 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 13 Sep 2017 23:26:22 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 13 Sep 2017 23:26:23 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:bae382666908fd87a3a3646d7eb7176fa42226027d3256cac38ee0b79bdb0491`  
		Last Modified: Wed, 13 Sep 2017 22:04:42 GMT  
		Size: 67.1 MB (67114903 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29ede3c02ff200fff7454ce59e1c3bb62f538847cefd5b8541e088ad22c42879`  
		Last Modified: Wed, 13 Sep 2017 23:27:09 GMT  
		Size: 72.6 KB (72648 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da4e69f33106a3131ce07d9ed4403593a7698be6dabd6cabd2c9c228599c8ce0`  
		Last Modified: Wed, 13 Sep 2017 23:27:09 GMT  
		Size: 364.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d43e5f5d27feb983909350fa3a008ebfb66436e172337cd543db358f5a01f1c`  
		Last Modified: Wed, 13 Sep 2017 23:27:09 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0de1abb17d6e07bcf1b68dc5c75acf0386405905ed735efe65a5235f29e756d`  
		Last Modified: Wed, 13 Sep 2017 23:27:09 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:trusty-20170817` - linux; arm variant v7

```console
$ docker pull ubuntu@sha256:0a92fed07024ea15648f92e3209a76276194087de3d15a17a7eedfcc070d1c84
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.5 MB (61533399 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4859790a66d87a06b3a99b9e65c686f6eb69de1d8ed98833163de1f88f76f60d`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 27 Sep 2017 04:14:46 GMT
ADD file:9269eeb4eb9940532bc07ce41e27a91f440fe57993b35cb2ccbabf18e6e08937 in / 
# Wed, 27 Sep 2017 04:14:47 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 27 Sep 2017 04:14:48 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 27 Sep 2017 04:14:50 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 27 Sep 2017 04:14:50 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 27 Sep 2017 04:14:51 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:187f4a01d8b8e7f7d189098d4bcec67814384806cd4c813fc7e4b377f145045a`  
		Last Modified: Wed, 27 Sep 2017 04:16:17 GMT  
		Size: 61.5 MB (61455216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:682e73a2927e06cb0dce96383ca5174e23b9f24ca554c8cfcec1e47c3941bfad`  
		Last Modified: Wed, 27 Sep 2017 04:15:56 GMT  
		Size: 76.8 KB (76773 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b564854d4c33a8370ba24496f183cbcd732c0da282e49512324c1816cd105dad`  
		Last Modified: Wed, 27 Sep 2017 04:15:56 GMT  
		Size: 363.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b48a5540d3c6fc9c465039823d1d0a07c4e038eba6875ca638b4e1d69133dbc4`  
		Last Modified: Wed, 27 Sep 2017 04:15:56 GMT  
		Size: 858.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:561af84b7f63d18054cfc85b75035f9a6bf64ddcba38af1bc3777416c9c754cf`  
		Last Modified: Wed, 27 Sep 2017 04:15:56 GMT  
		Size: 189.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:trusty-20170817` - linux; arm64 variant v8

```console
$ docker pull ubuntu@sha256:61de5c00451887fb0f98af9a1c989dd983e7c65f5b6c884d85ca8a5d49cdfc53
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **63.2 MB (63229037 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dbb6f732d326019e135cfedabcef425153a53081758db52af9cebbe4ecd65ef7`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 13 Sep 2017 23:27:01 GMT
ADD file:7ea2c29a53add06a8c5849caffdfcc5171d9cc0de439687b73167ee8c8c6a995 in / 
# Wed, 13 Sep 2017 23:27:03 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 13 Sep 2017 23:27:04 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 23:27:09 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 13 Sep 2017 23:27:10 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 13 Sep 2017 23:27:11 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:211fe73d577b3db63c2f5ce11a7f9403edecb4977eee8574e2a53fdf02fd42d3`  
		Last Modified: Wed, 13 Sep 2017 23:29:18 GMT  
		Size: 63.2 MB (63168561 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1dcade08d581afdb20d6dbca47eb05d2598554917f214718e928b70a48b54f39`  
		Last Modified: Wed, 13 Sep 2017 23:28:54 GMT  
		Size: 59.1 KB (59097 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:712265ae9a89af70df71abdfff24731189ca5339030894a8656a46dea59c7206`  
		Last Modified: Wed, 13 Sep 2017 23:28:54 GMT  
		Size: 360.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a26e33b782f6f9e0f19992a733d18b44cfcf53d86feea2ad3f55dfd7d652bba`  
		Last Modified: Wed, 13 Sep 2017 23:28:54 GMT  
		Size: 858.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d05d097f34378dbf6ca969f9256f553f25b24a3b11f6ee48651c6405a4e81abb`  
		Last Modified: Wed, 13 Sep 2017 23:28:53 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:trusty-20170817` - linux; 386

```console
$ docker pull ubuntu@sha256:1450570906d2ee1a87a61c3524d7275a33e8b13178ac683ca17eb1af1a13c527
```

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **64.9 MB (64898863 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:07a65d981ede1fe04f76aae7decaaf10eb793442a5327674f8fed1a518f27043`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 13 Sep 2017 23:26:25 GMT
ADD file:5ea4259718526648d5d282e8d9d1c2584e856b39c0f4b8594de9aa9f9985218b in / 
# Wed, 13 Sep 2017 23:26:25 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 13 Sep 2017 23:26:26 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 23:26:27 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 13 Sep 2017 23:26:27 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 13 Sep 2017 23:26:27 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:f783391c63c08ef35d2d6263d1009541806f2358ba987368c7abf8729cf5d577`  
		Last Modified: Wed, 06 Sep 2017 09:36:00 GMT  
		Size: 64.8 MB (64832640 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1a47d2c69876192779226a84caa6f71f9c15cf4151b85c06c3f6289423c5259`  
		Last Modified: Wed, 13 Sep 2017 23:27:26 GMT  
		Size: 64.9 KB (64851 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b00cd5494581ef496db53eae6ef74ee4589a5d2f2d53faede541254b65eee6a0`  
		Last Modified: Wed, 13 Sep 2017 23:27:25 GMT  
		Size: 357.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92f705fb93233929d4f280117ab56b4fa4666a06a975de96a8279bd985bd3f1e`  
		Last Modified: Wed, 13 Sep 2017 23:27:26 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfd11b43477b7c801f64151e30c383653655af3332787fed6204add3ab092753`  
		Last Modified: Wed, 13 Sep 2017 23:27:25 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:trusty-20170817` - linux; ppc64le

```console
$ docker pull ubuntu@sha256:cc5836604afdf422e82cb383611a30a00cef2b507da0187e715aeaa35c0b3248
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **69.8 MB (69765624 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d24e7893481921724c46a7e622bbebf49ec40cf0c68fcb5828937fa23494d8ad`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 13 Sep 2017 23:27:59 GMT
ADD file:ecdc3f73d8b16947cc3eee78b4e1f5a5431029720cabb5a589e91f72d560567b in / 
# Wed, 13 Sep 2017 23:28:06 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 13 Sep 2017 23:28:10 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 23:28:14 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 13 Sep 2017 23:28:30 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 13 Sep 2017 23:28:33 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:06cef575e03acca24a1e636f8d2ed694a09a1296706cce34cdab56ff4e6cdeec`  
		Last Modified: Wed, 13 Sep 2017 23:31:02 GMT  
		Size: 69.7 MB (69700798 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:037f9273c8ba936000db3a181323c6fd5591e70339a659470b90d4b0c1c9162d`  
		Last Modified: Wed, 13 Sep 2017 23:30:43 GMT  
		Size: 63.4 KB (63417 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25f10fea324280b832d0e4ff046f0269c66baa2eca54efc73917c6510c8be844`  
		Last Modified: Wed, 13 Sep 2017 23:30:43 GMT  
		Size: 360.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f301276d41ce9d2379e7b962e2ee5a3040e0f14eef21e66136125a3100fae46c`  
		Last Modified: Wed, 13 Sep 2017 23:30:43 GMT  
		Size: 861.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de5a488e2380e445d07718060469f8afc534131480e6b012179e2e5f5884e28c`  
		Last Modified: Wed, 13 Sep 2017 23:30:43 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ubuntu:xenial`

```console
$ docker pull ubuntu@sha256:506e2d5852de1d7c90d538c5332bd3cc33b9cbd26f6ca653875899c505c82687
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `ubuntu:xenial` - linux; amd64

```console
$ docker pull ubuntu@sha256:550f6e26da4b4cb8655a96dd6458ea01e2fb3dcb99d24e6dc427c08ea42c9785
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.6 MB (47619616 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:747cb2d60bbecbda48aff14a8be5c8b913ca69318a6067e57c697f8a78dda06e`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 10 Oct 2017 20:59:02 GMT
ADD file:5b334adf9d9a2256add2a801b49d4b23c93b0973ec22bb798973d571c948f102 in / 
# Tue, 10 Oct 2017 20:59:02 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 10 Oct 2017 20:59:03 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 20:59:04 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 10 Oct 2017 20:59:04 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 10 Oct 2017 20:59:05 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:ae79f251470513c2a0ec750117a81f2d58a50727901ca416efecf297b8a03913`  
		Last Modified: Fri, 06 Oct 2017 13:04:44 GMT  
		Size: 47.6 MB (47617129 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ad56d5fc14905886c560200ab69f905b5c5287eaf12f8f761a7ab54f7a61c1b`  
		Last Modified: Tue, 10 Oct 2017 21:00:10 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:170e558760e8b2e484a022b7d7272cf284fc4e1936ba7a0a671fc586440ad272`  
		Last Modified: Tue, 10 Oct 2017 21:00:10 GMT  
		Size: 618.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:395460e233f5bdcd910d618a3b615e0d881e09ad27d58f3065eef53ecae6a808`  
		Last Modified: Tue, 10 Oct 2017 21:00:10 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f01dc62e444044e3ce494269837ef0aedb80fef69c679416137f17812d2eb9c`  
		Last Modified: Tue, 10 Oct 2017 21:00:10 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:xenial` - linux; arm variant v7

```console
$ docker pull ubuntu@sha256:cd5266c6fbcf512714f7e6b34c341af20b44a3f905f7e0b0a2c27eaaa04f04af
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **42.4 MB (42447060 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:764826e73e32dae777d5fdf6d072cad47e131e63b0cb791d9e32424187141e33`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 11 Oct 2017 12:51:12 GMT
ADD file:b8b49b959bf907b482bdc24c3c6f159f7aed1a3fb73e8efa669b12800635d25f in / 
# Wed, 11 Oct 2017 12:51:13 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 11 Oct 2017 12:51:14 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 12:51:14 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 11 Oct 2017 12:51:15 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 11 Oct 2017 12:51:15 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:26e5736d414450f12f7c066ff59a208e9ea9311407c91de898505d1adbf01527`  
		Last Modified: Wed, 11 Oct 2017 12:52:25 GMT  
		Size: 42.4 MB (42444579 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3b2d7804592854a106e4cb6a8decdc17f84ce86673c5331ae4be08f6ddf9667`  
		Last Modified: Wed, 11 Oct 2017 12:52:14 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1e6e6dfa0c41d49186e1ef4cf4409826020371a07bc3a6b5509bb23e7004701`  
		Last Modified: Wed, 11 Oct 2017 12:52:15 GMT  
		Size: 614.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8b298e101bd87bb479bd9d268470b3060526668473413ad16a992f5a70b9b69`  
		Last Modified: Wed, 11 Oct 2017 12:52:14 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5da5730e907c71f6dad2a93757f203cea7518145a8d979508503cb906926d549`  
		Last Modified: Wed, 11 Oct 2017 12:52:14 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:xenial` - linux; arm64 variant v8

```console
$ docker pull ubuntu@sha256:d0f76cd78708e701d89eaee3bda1ba768500b98e7db80a5c3e45b7c0ac241428
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.4 MB (43428811 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:499b06aa549be29a3385abde517b6ddb07ab56818ca999aefe03f8a7e1b63055`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 11 Oct 2017 14:01:45 GMT
ADD file:17aebc392b3cf207dbe2809abd34b9eec60c3a0e8b39dcd04f8f29a863e966b3 in / 
# Wed, 11 Oct 2017 14:01:47 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 11 Oct 2017 14:01:49 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 14:01:50 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 11 Oct 2017 14:01:52 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 11 Oct 2017 14:01:52 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:aac43d4d6c83c61c78a7814ef7d2e02dc6c2f52dc110ff181aea144991711636`  
		Last Modified: Fri, 06 Oct 2017 22:13:46 GMT  
		Size: 43.4 MB (43426326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eed65d92515dfacf9a35d3301bc4847f1057d240f9ab3c442b573bdbb8452791`  
		Last Modified: Wed, 11 Oct 2017 14:03:45 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2de5574dca5eb5a1b9351c990c0865bbe18370da61e7169a539ba80bbdb058b2`  
		Last Modified: Wed, 11 Oct 2017 14:03:44 GMT  
		Size: 617.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5a76e352cce541b89ec31a527e09d2185c9427315f118b56573f79eb31b4c2b`  
		Last Modified: Wed, 11 Oct 2017 14:03:45 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2aceaacecb77ef3360c013ffcd305eecd6cf17a32bd143a72ca0b86b74721ba`  
		Last Modified: Wed, 11 Oct 2017 14:03:45 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:xenial` - linux; 386

```console
$ docker pull ubuntu@sha256:675537382e8755353a5d1f8a1ff18b01bd8574fb6d292b67b50db3ff0319522d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.9 MB (47876861 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a4a092435e2a9203f76a214bd8fec951db1513cc9f363709567662d368f03c0d`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 11 Oct 2017 03:42:05 GMT
ADD file:bb3bd5935b4d8a89a615b235edd9f2c8994892f80f4207a9be6f73d1e740fe99 in / 
# Wed, 11 Oct 2017 03:42:06 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 11 Oct 2017 03:42:07 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 03:42:08 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 11 Oct 2017 03:42:09 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 11 Oct 2017 03:42:09 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:acb0d27ac9b88e225bef09d7d5994961e9a35aa8c44e63211012e3e309faba08`  
		Last Modified: Wed, 11 Oct 2017 03:43:24 GMT  
		Size: 47.9 MB (47874409 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f9fbc97d20aafc373f030de956f2937231c0429b2afdb5bf29f37aa461dd48f`  
		Last Modified: Wed, 11 Oct 2017 03:43:13 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebd9d15ef132d78842e10e92e7a68bff76280e8b8dfdbe8ccc0847a08857fa69`  
		Last Modified: Wed, 11 Oct 2017 03:43:13 GMT  
		Size: 584.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92dbf3d41ac22221844d955b41a1c4e96a78f56e93ef0f2996d6173d4979720e`  
		Last Modified: Wed, 11 Oct 2017 03:43:13 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:babacea552509daca82b772dc265cb3120ac3a9b6dcad79724c8beebb932eb3a`  
		Last Modified: Wed, 11 Oct 2017 03:43:14 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:xenial` - linux; ppc64le

```console
$ docker pull ubuntu@sha256:fd389c79576f0f1f3a6b7bdc22b57e497841bd332f17729776278a8afdde1c14
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.6 MB (49632398 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cc36286630a239c66b97a0bcb9f7397b9576a3cecc1b7f8da42438b89da2f19b`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 11 Oct 2017 02:41:21 GMT
ADD file:576880950883a1e490209ab49495d7dc9f83e576a9669a99967c68316aa88672 in / 
# Wed, 11 Oct 2017 02:41:53 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 11 Oct 2017 02:42:19 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 02:42:28 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 11 Oct 2017 02:42:38 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 11 Oct 2017 02:42:45 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:84a41d801f0c785b93df653a9b96af1d8d3a33a4b029ed27947064aabf5bc52c`  
		Last Modified: Wed, 11 Oct 2017 02:44:12 GMT  
		Size: 49.6 MB (49629867 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bd19f106c49d8ac8a0f8ee614b3d8c3e76c173821be02d196509c657418a18a`  
		Last Modified: Wed, 11 Oct 2017 02:43:59 GMT  
		Size: 856.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dea09941130c03bf6098e0061a2085596e19b94e413525f4cb7a052e11557996`  
		Last Modified: Wed, 11 Oct 2017 02:43:59 GMT  
		Size: 648.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b537a0876ec5c925e698ed48743639a0130c45530d670b606a3bce4faa40f4b`  
		Last Modified: Wed, 11 Oct 2017 02:43:59 GMT  
		Size: 857.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a2f653825732a085aaed721c8f3ff35da9ea3854c84984ede13fd38c929e0be`  
		Last Modified: Wed, 11 Oct 2017 02:43:59 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:xenial` - linux; s390x

```console
$ docker pull ubuntu@sha256:18c5cc207f40260f85c88a27bf27f2a886b99719fea7bad867a6fd40b08d8c59
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.3 MB (46330386 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1e8fb7dd968bde7e26fc1e197b8e986fae879d4768fc790a5597068d0e5971e5`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 11 Oct 2017 13:15:47 GMT
ADD file:219f2adbad8a210a00a1a64e3a09575439c703ab5e1d0c3084a5721a12fbb79d in / 
# Wed, 11 Oct 2017 13:15:48 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 11 Oct 2017 13:15:48 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 13:15:49 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 11 Oct 2017 13:15:49 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 11 Oct 2017 13:15:50 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:dfc7cecdb13de6ca6252038d54f31238a7044cb9886808665a63a2dff5f7cd41`  
		Last Modified: Wed, 11 Oct 2017 13:16:53 GMT  
		Size: 46.3 MB (46327901 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c372dc102ed71a29b294b4f6d2d03ad6c498c6144a117abd265b9943446dd687`  
		Last Modified: Wed, 11 Oct 2017 13:16:45 GMT  
		Size: 844.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98990ad1a97e8b1eab0be323a49922046dcb5ae5da4099e8810393e61e062613`  
		Last Modified: Wed, 11 Oct 2017 13:16:45 GMT  
		Size: 617.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6107352341486a21448df418194f1118fdae66005d65bb6de75e935c3461c202`  
		Last Modified: Wed, 11 Oct 2017 13:16:45 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a1bbd20dbb2c77788d7d2e5e413059b7401e23c8bfc0b6dcbd1f5c2eac857ca`  
		Last Modified: Wed, 11 Oct 2017 13:16:45 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ubuntu:xenial-20171006`

```console
$ docker pull ubuntu@sha256:506e2d5852de1d7c90d538c5332bd3cc33b9cbd26f6ca653875899c505c82687
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `ubuntu:xenial-20171006` - linux; amd64

```console
$ docker pull ubuntu@sha256:550f6e26da4b4cb8655a96dd6458ea01e2fb3dcb99d24e6dc427c08ea42c9785
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.6 MB (47619616 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:747cb2d60bbecbda48aff14a8be5c8b913ca69318a6067e57c697f8a78dda06e`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 10 Oct 2017 20:59:02 GMT
ADD file:5b334adf9d9a2256add2a801b49d4b23c93b0973ec22bb798973d571c948f102 in / 
# Tue, 10 Oct 2017 20:59:02 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 10 Oct 2017 20:59:03 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 20:59:04 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 10 Oct 2017 20:59:04 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 10 Oct 2017 20:59:05 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:ae79f251470513c2a0ec750117a81f2d58a50727901ca416efecf297b8a03913`  
		Last Modified: Fri, 06 Oct 2017 13:04:44 GMT  
		Size: 47.6 MB (47617129 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ad56d5fc14905886c560200ab69f905b5c5287eaf12f8f761a7ab54f7a61c1b`  
		Last Modified: Tue, 10 Oct 2017 21:00:10 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:170e558760e8b2e484a022b7d7272cf284fc4e1936ba7a0a671fc586440ad272`  
		Last Modified: Tue, 10 Oct 2017 21:00:10 GMT  
		Size: 618.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:395460e233f5bdcd910d618a3b615e0d881e09ad27d58f3065eef53ecae6a808`  
		Last Modified: Tue, 10 Oct 2017 21:00:10 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f01dc62e444044e3ce494269837ef0aedb80fef69c679416137f17812d2eb9c`  
		Last Modified: Tue, 10 Oct 2017 21:00:10 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:xenial-20171006` - linux; arm variant v7

```console
$ docker pull ubuntu@sha256:cd5266c6fbcf512714f7e6b34c341af20b44a3f905f7e0b0a2c27eaaa04f04af
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **42.4 MB (42447060 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:764826e73e32dae777d5fdf6d072cad47e131e63b0cb791d9e32424187141e33`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 11 Oct 2017 12:51:12 GMT
ADD file:b8b49b959bf907b482bdc24c3c6f159f7aed1a3fb73e8efa669b12800635d25f in / 
# Wed, 11 Oct 2017 12:51:13 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 11 Oct 2017 12:51:14 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 12:51:14 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 11 Oct 2017 12:51:15 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 11 Oct 2017 12:51:15 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:26e5736d414450f12f7c066ff59a208e9ea9311407c91de898505d1adbf01527`  
		Last Modified: Wed, 11 Oct 2017 12:52:25 GMT  
		Size: 42.4 MB (42444579 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3b2d7804592854a106e4cb6a8decdc17f84ce86673c5331ae4be08f6ddf9667`  
		Last Modified: Wed, 11 Oct 2017 12:52:14 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1e6e6dfa0c41d49186e1ef4cf4409826020371a07bc3a6b5509bb23e7004701`  
		Last Modified: Wed, 11 Oct 2017 12:52:15 GMT  
		Size: 614.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8b298e101bd87bb479bd9d268470b3060526668473413ad16a992f5a70b9b69`  
		Last Modified: Wed, 11 Oct 2017 12:52:14 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5da5730e907c71f6dad2a93757f203cea7518145a8d979508503cb906926d549`  
		Last Modified: Wed, 11 Oct 2017 12:52:14 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:xenial-20171006` - linux; arm64 variant v8

```console
$ docker pull ubuntu@sha256:d0f76cd78708e701d89eaee3bda1ba768500b98e7db80a5c3e45b7c0ac241428
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.4 MB (43428811 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:499b06aa549be29a3385abde517b6ddb07ab56818ca999aefe03f8a7e1b63055`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 11 Oct 2017 14:01:45 GMT
ADD file:17aebc392b3cf207dbe2809abd34b9eec60c3a0e8b39dcd04f8f29a863e966b3 in / 
# Wed, 11 Oct 2017 14:01:47 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 11 Oct 2017 14:01:49 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 14:01:50 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 11 Oct 2017 14:01:52 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 11 Oct 2017 14:01:52 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:aac43d4d6c83c61c78a7814ef7d2e02dc6c2f52dc110ff181aea144991711636`  
		Last Modified: Fri, 06 Oct 2017 22:13:46 GMT  
		Size: 43.4 MB (43426326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eed65d92515dfacf9a35d3301bc4847f1057d240f9ab3c442b573bdbb8452791`  
		Last Modified: Wed, 11 Oct 2017 14:03:45 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2de5574dca5eb5a1b9351c990c0865bbe18370da61e7169a539ba80bbdb058b2`  
		Last Modified: Wed, 11 Oct 2017 14:03:44 GMT  
		Size: 617.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5a76e352cce541b89ec31a527e09d2185c9427315f118b56573f79eb31b4c2b`  
		Last Modified: Wed, 11 Oct 2017 14:03:45 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2aceaacecb77ef3360c013ffcd305eecd6cf17a32bd143a72ca0b86b74721ba`  
		Last Modified: Wed, 11 Oct 2017 14:03:45 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:xenial-20171006` - linux; 386

```console
$ docker pull ubuntu@sha256:675537382e8755353a5d1f8a1ff18b01bd8574fb6d292b67b50db3ff0319522d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.9 MB (47876861 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a4a092435e2a9203f76a214bd8fec951db1513cc9f363709567662d368f03c0d`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 11 Oct 2017 03:42:05 GMT
ADD file:bb3bd5935b4d8a89a615b235edd9f2c8994892f80f4207a9be6f73d1e740fe99 in / 
# Wed, 11 Oct 2017 03:42:06 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 11 Oct 2017 03:42:07 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 03:42:08 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 11 Oct 2017 03:42:09 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 11 Oct 2017 03:42:09 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:acb0d27ac9b88e225bef09d7d5994961e9a35aa8c44e63211012e3e309faba08`  
		Last Modified: Wed, 11 Oct 2017 03:43:24 GMT  
		Size: 47.9 MB (47874409 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f9fbc97d20aafc373f030de956f2937231c0429b2afdb5bf29f37aa461dd48f`  
		Last Modified: Wed, 11 Oct 2017 03:43:13 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebd9d15ef132d78842e10e92e7a68bff76280e8b8dfdbe8ccc0847a08857fa69`  
		Last Modified: Wed, 11 Oct 2017 03:43:13 GMT  
		Size: 584.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92dbf3d41ac22221844d955b41a1c4e96a78f56e93ef0f2996d6173d4979720e`  
		Last Modified: Wed, 11 Oct 2017 03:43:13 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:babacea552509daca82b772dc265cb3120ac3a9b6dcad79724c8beebb932eb3a`  
		Last Modified: Wed, 11 Oct 2017 03:43:14 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:xenial-20171006` - linux; ppc64le

```console
$ docker pull ubuntu@sha256:fd389c79576f0f1f3a6b7bdc22b57e497841bd332f17729776278a8afdde1c14
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.6 MB (49632398 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cc36286630a239c66b97a0bcb9f7397b9576a3cecc1b7f8da42438b89da2f19b`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 11 Oct 2017 02:41:21 GMT
ADD file:576880950883a1e490209ab49495d7dc9f83e576a9669a99967c68316aa88672 in / 
# Wed, 11 Oct 2017 02:41:53 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 11 Oct 2017 02:42:19 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 02:42:28 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 11 Oct 2017 02:42:38 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 11 Oct 2017 02:42:45 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:84a41d801f0c785b93df653a9b96af1d8d3a33a4b029ed27947064aabf5bc52c`  
		Last Modified: Wed, 11 Oct 2017 02:44:12 GMT  
		Size: 49.6 MB (49629867 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bd19f106c49d8ac8a0f8ee614b3d8c3e76c173821be02d196509c657418a18a`  
		Last Modified: Wed, 11 Oct 2017 02:43:59 GMT  
		Size: 856.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dea09941130c03bf6098e0061a2085596e19b94e413525f4cb7a052e11557996`  
		Last Modified: Wed, 11 Oct 2017 02:43:59 GMT  
		Size: 648.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b537a0876ec5c925e698ed48743639a0130c45530d670b606a3bce4faa40f4b`  
		Last Modified: Wed, 11 Oct 2017 02:43:59 GMT  
		Size: 857.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a2f653825732a085aaed721c8f3ff35da9ea3854c84984ede13fd38c929e0be`  
		Last Modified: Wed, 11 Oct 2017 02:43:59 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:xenial-20171006` - linux; s390x

```console
$ docker pull ubuntu@sha256:18c5cc207f40260f85c88a27bf27f2a886b99719fea7bad867a6fd40b08d8c59
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.3 MB (46330386 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1e8fb7dd968bde7e26fc1e197b8e986fae879d4768fc790a5597068d0e5971e5`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 11 Oct 2017 13:15:47 GMT
ADD file:219f2adbad8a210a00a1a64e3a09575439c703ab5e1d0c3084a5721a12fbb79d in / 
# Wed, 11 Oct 2017 13:15:48 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 11 Oct 2017 13:15:48 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 13:15:49 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 11 Oct 2017 13:15:49 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 11 Oct 2017 13:15:50 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:dfc7cecdb13de6ca6252038d54f31238a7044cb9886808665a63a2dff5f7cd41`  
		Last Modified: Wed, 11 Oct 2017 13:16:53 GMT  
		Size: 46.3 MB (46327901 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c372dc102ed71a29b294b4f6d2d03ad6c498c6144a117abd265b9943446dd687`  
		Last Modified: Wed, 11 Oct 2017 13:16:45 GMT  
		Size: 844.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98990ad1a97e8b1eab0be323a49922046dcb5ae5da4099e8810393e61e062613`  
		Last Modified: Wed, 11 Oct 2017 13:16:45 GMT  
		Size: 617.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6107352341486a21448df418194f1118fdae66005d65bb6de75e935c3461c202`  
		Last Modified: Wed, 11 Oct 2017 13:16:45 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a1bbd20dbb2c77788d7d2e5e413059b7401e23c8bfc0b6dcbd1f5c2eac857ca`  
		Last Modified: Wed, 11 Oct 2017 13:16:45 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ubuntu:zesty`

```console
$ docker pull ubuntu@sha256:da2fd4e2e10e0ab991f251353a2d3e32d38c75a83a917dbca0a307efd8730f49
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
$ docker pull ubuntu@sha256:12f61dc88c05bcf85210e98c471c7a841da72e453922d717c058aa0438fc1ed6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.4 MB (38440318 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6ca5545cc1efa0f860bf7d518d45132d1919b713b328ef2d7e61db76c4707047`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 18 Sep 2017 23:31:50 GMT
ADD file:4e2e1f8336bcc64e853e9f3462f0829ce85b34a32755dba06aa7bd0007eda4f0 in / 
# Mon, 18 Sep 2017 23:31:50 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 18 Sep 2017 23:31:51 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 18 Sep 2017 23:31:52 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Mon, 18 Sep 2017 23:31:52 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 18 Sep 2017 23:31:52 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:8b23367590c32dbb6954ab3cc9b6c451b9763556c72a893538efe88583f6a5dc`  
		Last Modified: Mon, 18 Sep 2017 23:33:09 GMT  
		Size: 38.4 MB (38437889 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7feb578947e4b86e0a0cff64b42489dc1305bbacdb3ed36d0afe95a19ebf845`  
		Last Modified: Mon, 18 Sep 2017 23:33:03 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac836f06379c8d7356e0d2e7dbb3e9f3924616527fa51b95545fb455eec31f08`  
		Last Modified: Mon, 18 Sep 2017 23:33:03 GMT  
		Size: 569.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be286dc472df31f16953d34151f836d0186fddeea6cd56dcefd2a6d46a992500`  
		Last Modified: Mon, 18 Sep 2017 23:33:03 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5533df5f353d9fbcbd081e9dd653fe7d8ddebed958d1f0e56fa4a87b216f13c1`  
		Last Modified: Mon, 18 Sep 2017 23:33:03 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:zesty` - linux; arm variant v7

```console
$ docker pull ubuntu@sha256:2af954832cc8de7971895f0315985980405797837b5cbc8d6a9dcbdc71661436
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.5 MB (34516354 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:364222e9711ccc1899c7d697b9cb90164f5915640c4ccd361f34f741ee62ce1e`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 27 Sep 2017 04:15:20 GMT
ADD file:96ad2a1d6e6271072bf9329d4088c5b1a3e07ce0900b96b5d19f9c94595fd347 in / 
# Wed, 27 Sep 2017 04:15:22 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 27 Sep 2017 04:15:24 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 27 Sep 2017 04:15:24 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 27 Sep 2017 04:15:25 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 27 Sep 2017 04:15:25 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:7d85563d7213aa3e9b75cb6a48f74e66c3e533542076fe29c855717cc74243af`  
		Last Modified: Wed, 27 Sep 2017 04:17:06 GMT  
		Size: 34.5 MB (34513849 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8f49ca2e01f9e434f04623a1851121b47bf655150f09fbd2a5cc3884363967a`  
		Last Modified: Wed, 27 Sep 2017 04:16:54 GMT  
		Size: 845.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ef587d007b98d3eb0a13444ff48ffae71dce3bb36a5d718c275924ee694d29d`  
		Last Modified: Wed, 27 Sep 2017 04:16:54 GMT  
		Size: 618.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c18b21e2f0bd99269b18440cbda901e969383ecf22923be85dfb3f7ade175884`  
		Last Modified: Wed, 27 Sep 2017 04:16:54 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ccc54109a7c8891a0231746695da8337f5c59228aa34b6736b0709c1d99bb44`  
		Last Modified: Wed, 27 Sep 2017 04:16:54 GMT  
		Size: 189.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:zesty` - linux; arm64 variant v8

```console
$ docker pull ubuntu@sha256:1d2185e32dcc14ce3ef85abfc7d61545f33b4c569bebc05d404e334166730005
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.6 MB (35618968 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:549331a667ba1f9323cae258a7f063097b7a957da335a5385fbb29103012851c`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 18 Sep 2017 23:34:46 GMT
ADD file:af30328c055db3d622d6fdb35bce0016a12998bd70635b4de72c891582608ce8 in / 
# Mon, 18 Sep 2017 23:34:48 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 18 Sep 2017 23:34:49 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 18 Sep 2017 23:34:50 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Mon, 18 Sep 2017 23:34:53 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 18 Sep 2017 23:34:53 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:a2c35bd1172470f907581f9586450b683e1498682c285e41f985b54430af5f6c`  
		Last Modified: Mon, 18 Sep 2017 23:37:08 GMT  
		Size: 35.6 MB (35616559 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:307fc7f15c2cc94311005503a5f81980d3d4de93f13d0d3be3370c3f2a047441`  
		Last Modified: Mon, 18 Sep 2017 23:36:55 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b738f5af4f1e0187e300ddb62091ead05283e9f57f60293c9eeca900edcbd007`  
		Last Modified: Mon, 18 Sep 2017 23:36:55 GMT  
		Size: 541.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7a2f3d48d043e4e2d51ae424ae18282d19af6b8741d4600a65d6c2748d3a450`  
		Last Modified: Mon, 18 Sep 2017 23:36:55 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e9d4b0c8e3c0863b9613bbbf4ca7be7e1453f8b5cc904f070bb42e751d2f264`  
		Last Modified: Mon, 18 Sep 2017 23:36:55 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:zesty` - linux; 386

```console
$ docker pull ubuntu@sha256:f34712d7c5ffe6546ec89c923c0e161f5e37c4e199d12ccc5f4534611da89c93
```

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.8 MB (38827601 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f061e77c87c5a23d804171bede92168ead7e3bc52b4cc8001b2fe3dfc609877b`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 18 Sep 2017 23:38:53 GMT
ADD file:9a9fa863d25cad892c2770f9d100180994183d757053a6a7a31d37a379c4fddc in / 
# Mon, 18 Sep 2017 23:38:54 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 18 Sep 2017 23:38:55 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 18 Sep 2017 23:38:56 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Mon, 18 Sep 2017 23:38:57 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 18 Sep 2017 23:38:57 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:5760633a5f49d5c4dbac614d2594419ee522f10d4ffff0acd0fb73e0f49a1d07`  
		Last Modified: Mon, 18 Sep 2017 15:56:13 GMT  
		Size: 38.8 MB (38825225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:581018bed0a2fad43bce32dd1c771e1236a692ae0bae43c3cdbf1b8ef23d6d4d`  
		Last Modified: Mon, 18 Sep 2017 23:40:22 GMT  
		Size: 848.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6472a3d79179eff2b6a24928ce97f32eb0069a6261306501d697f46670573ef`  
		Last Modified: Mon, 18 Sep 2017 23:40:23 GMT  
		Size: 515.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb7bbe1cbf845b35fd6c0c816a1fb9d18e72bf57a59fefca6b995b7cdf0717bf`  
		Last Modified: Mon, 18 Sep 2017 23:40:22 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05d826896f2a148ea8fa01eee5cab3c2bc33fce9c1be3701a7a4f3e349d6abd9`  
		Last Modified: Mon, 18 Sep 2017 23:40:23 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:zesty` - linux; ppc64le

```console
$ docker pull ubuntu@sha256:017a120029c660d8eab4500cfb9722ce992bc09720baf3ea6c1714aaff313cc9
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.4 MB (40446386 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:55f65f08621e08f47f8d12a51aebe8446fa8cece7b708a7b6f174cf3fe642de5`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 18 Sep 2017 23:35:49 GMT
ADD file:693811ca88983c96f1ae7b86b18c599a8d8498772a363456defef70ec0ecc5de in / 
# Mon, 18 Sep 2017 23:35:55 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 18 Sep 2017 23:35:59 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 18 Sep 2017 23:36:07 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Mon, 18 Sep 2017 23:36:11 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 18 Sep 2017 23:36:13 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:ecef4bb781567569118b0dbfb956c9faf2d38a4831438bf7e3fc8a24d095d6d9`  
		Last Modified: Mon, 18 Sep 2017 23:38:10 GMT  
		Size: 40.4 MB (40443928 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:972cd4164d3b34fb230909044a4d609b4da3064aec7c6710e2a315171203a54b`  
		Last Modified: Mon, 18 Sep 2017 23:37:57 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dcefc6c0022e15174c14c104384f7447e3eb207cd5a4f5d6938982d42489a74c`  
		Last Modified: Mon, 18 Sep 2017 23:37:57 GMT  
		Size: 562.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2dcede92304accd7e9c171974646b12f0248f7c385811f9ac0def8b9ae641f17`  
		Last Modified: Mon, 18 Sep 2017 23:37:57 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5eef80f237862df7588cbbf12c0e5eca49c2c4fbed34fdc08283050d5c90a811`  
		Last Modified: Mon, 18 Sep 2017 23:37:58 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:zesty` - linux; s390x

```console
$ docker pull ubuntu@sha256:330b7d8212de67f03836be1ec11cb45ea1d926ffe0da63d305c47b5a7604aa2f
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.6 MB (37607507 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fe17f2b831c0072167ec7112a1fb6c249b7198a64645e1715b39b62235e9bb46`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 18 Sep 2017 23:33:46 GMT
ADD file:d98500a574281bf0f63432a3c0c045843865b8c622dd692e223aefbe9f66af4e in / 
# Mon, 18 Sep 2017 23:33:47 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 18 Sep 2017 23:33:47 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 18 Sep 2017 23:33:48 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Mon, 18 Sep 2017 23:33:48 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 18 Sep 2017 23:33:49 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:b8635927930021e2056a2838002d2c677552e0b9b40ecedf74abd298e8eca0f9`  
		Last Modified: Mon, 18 Sep 2017 23:34:51 GMT  
		Size: 37.6 MB (37605103 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2877d097d6610dc9de2c9223c82beca790a55806f1af7dce3f9f1222e2996f53`  
		Last Modified: Mon, 18 Sep 2017 23:34:44 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0d83c0bd9638ca6c165f78b766c0e292c314e3e9564f85320f2a0ad51fbb088`  
		Last Modified: Mon, 18 Sep 2017 23:34:44 GMT  
		Size: 540.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d0332a6f65c9d15a7987c3e473253bc46fd95e794b808611c5e09b4d3ef0454`  
		Last Modified: Mon, 18 Sep 2017 23:34:44 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a6b8e2bdba618b1359768422eac2b288464e119b957e296078017f5c3648aa7`  
		Last Modified: Mon, 18 Sep 2017 23:34:44 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ubuntu:zesty-20170915`

```console
$ docker pull ubuntu@sha256:da2fd4e2e10e0ab991f251353a2d3e32d38c75a83a917dbca0a307efd8730f49
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `ubuntu:zesty-20170915` - linux; amd64

```console
$ docker pull ubuntu@sha256:12f61dc88c05bcf85210e98c471c7a841da72e453922d717c058aa0438fc1ed6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.4 MB (38440318 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6ca5545cc1efa0f860bf7d518d45132d1919b713b328ef2d7e61db76c4707047`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 18 Sep 2017 23:31:50 GMT
ADD file:4e2e1f8336bcc64e853e9f3462f0829ce85b34a32755dba06aa7bd0007eda4f0 in / 
# Mon, 18 Sep 2017 23:31:50 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 18 Sep 2017 23:31:51 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 18 Sep 2017 23:31:52 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Mon, 18 Sep 2017 23:31:52 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 18 Sep 2017 23:31:52 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:8b23367590c32dbb6954ab3cc9b6c451b9763556c72a893538efe88583f6a5dc`  
		Last Modified: Mon, 18 Sep 2017 23:33:09 GMT  
		Size: 38.4 MB (38437889 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7feb578947e4b86e0a0cff64b42489dc1305bbacdb3ed36d0afe95a19ebf845`  
		Last Modified: Mon, 18 Sep 2017 23:33:03 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac836f06379c8d7356e0d2e7dbb3e9f3924616527fa51b95545fb455eec31f08`  
		Last Modified: Mon, 18 Sep 2017 23:33:03 GMT  
		Size: 569.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be286dc472df31f16953d34151f836d0186fddeea6cd56dcefd2a6d46a992500`  
		Last Modified: Mon, 18 Sep 2017 23:33:03 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5533df5f353d9fbcbd081e9dd653fe7d8ddebed958d1f0e56fa4a87b216f13c1`  
		Last Modified: Mon, 18 Sep 2017 23:33:03 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:zesty-20170915` - linux; arm variant v7

```console
$ docker pull ubuntu@sha256:2af954832cc8de7971895f0315985980405797837b5cbc8d6a9dcbdc71661436
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.5 MB (34516354 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:364222e9711ccc1899c7d697b9cb90164f5915640c4ccd361f34f741ee62ce1e`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 27 Sep 2017 04:15:20 GMT
ADD file:96ad2a1d6e6271072bf9329d4088c5b1a3e07ce0900b96b5d19f9c94595fd347 in / 
# Wed, 27 Sep 2017 04:15:22 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 27 Sep 2017 04:15:24 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 27 Sep 2017 04:15:24 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 27 Sep 2017 04:15:25 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 27 Sep 2017 04:15:25 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:7d85563d7213aa3e9b75cb6a48f74e66c3e533542076fe29c855717cc74243af`  
		Last Modified: Wed, 27 Sep 2017 04:17:06 GMT  
		Size: 34.5 MB (34513849 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8f49ca2e01f9e434f04623a1851121b47bf655150f09fbd2a5cc3884363967a`  
		Last Modified: Wed, 27 Sep 2017 04:16:54 GMT  
		Size: 845.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ef587d007b98d3eb0a13444ff48ffae71dce3bb36a5d718c275924ee694d29d`  
		Last Modified: Wed, 27 Sep 2017 04:16:54 GMT  
		Size: 618.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c18b21e2f0bd99269b18440cbda901e969383ecf22923be85dfb3f7ade175884`  
		Last Modified: Wed, 27 Sep 2017 04:16:54 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ccc54109a7c8891a0231746695da8337f5c59228aa34b6736b0709c1d99bb44`  
		Last Modified: Wed, 27 Sep 2017 04:16:54 GMT  
		Size: 189.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:zesty-20170915` - linux; arm64 variant v8

```console
$ docker pull ubuntu@sha256:1d2185e32dcc14ce3ef85abfc7d61545f33b4c569bebc05d404e334166730005
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.6 MB (35618968 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:549331a667ba1f9323cae258a7f063097b7a957da335a5385fbb29103012851c`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 18 Sep 2017 23:34:46 GMT
ADD file:af30328c055db3d622d6fdb35bce0016a12998bd70635b4de72c891582608ce8 in / 
# Mon, 18 Sep 2017 23:34:48 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 18 Sep 2017 23:34:49 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 18 Sep 2017 23:34:50 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Mon, 18 Sep 2017 23:34:53 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 18 Sep 2017 23:34:53 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:a2c35bd1172470f907581f9586450b683e1498682c285e41f985b54430af5f6c`  
		Last Modified: Mon, 18 Sep 2017 23:37:08 GMT  
		Size: 35.6 MB (35616559 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:307fc7f15c2cc94311005503a5f81980d3d4de93f13d0d3be3370c3f2a047441`  
		Last Modified: Mon, 18 Sep 2017 23:36:55 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b738f5af4f1e0187e300ddb62091ead05283e9f57f60293c9eeca900edcbd007`  
		Last Modified: Mon, 18 Sep 2017 23:36:55 GMT  
		Size: 541.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7a2f3d48d043e4e2d51ae424ae18282d19af6b8741d4600a65d6c2748d3a450`  
		Last Modified: Mon, 18 Sep 2017 23:36:55 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e9d4b0c8e3c0863b9613bbbf4ca7be7e1453f8b5cc904f070bb42e751d2f264`  
		Last Modified: Mon, 18 Sep 2017 23:36:55 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:zesty-20170915` - linux; 386

```console
$ docker pull ubuntu@sha256:f34712d7c5ffe6546ec89c923c0e161f5e37c4e199d12ccc5f4534611da89c93
```

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.8 MB (38827601 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f061e77c87c5a23d804171bede92168ead7e3bc52b4cc8001b2fe3dfc609877b`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 18 Sep 2017 23:38:53 GMT
ADD file:9a9fa863d25cad892c2770f9d100180994183d757053a6a7a31d37a379c4fddc in / 
# Mon, 18 Sep 2017 23:38:54 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 18 Sep 2017 23:38:55 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 18 Sep 2017 23:38:56 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Mon, 18 Sep 2017 23:38:57 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 18 Sep 2017 23:38:57 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:5760633a5f49d5c4dbac614d2594419ee522f10d4ffff0acd0fb73e0f49a1d07`  
		Last Modified: Mon, 18 Sep 2017 15:56:13 GMT  
		Size: 38.8 MB (38825225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:581018bed0a2fad43bce32dd1c771e1236a692ae0bae43c3cdbf1b8ef23d6d4d`  
		Last Modified: Mon, 18 Sep 2017 23:40:22 GMT  
		Size: 848.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6472a3d79179eff2b6a24928ce97f32eb0069a6261306501d697f46670573ef`  
		Last Modified: Mon, 18 Sep 2017 23:40:23 GMT  
		Size: 515.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb7bbe1cbf845b35fd6c0c816a1fb9d18e72bf57a59fefca6b995b7cdf0717bf`  
		Last Modified: Mon, 18 Sep 2017 23:40:22 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05d826896f2a148ea8fa01eee5cab3c2bc33fce9c1be3701a7a4f3e349d6abd9`  
		Last Modified: Mon, 18 Sep 2017 23:40:23 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:zesty-20170915` - linux; ppc64le

```console
$ docker pull ubuntu@sha256:017a120029c660d8eab4500cfb9722ce992bc09720baf3ea6c1714aaff313cc9
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.4 MB (40446386 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:55f65f08621e08f47f8d12a51aebe8446fa8cece7b708a7b6f174cf3fe642de5`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 18 Sep 2017 23:35:49 GMT
ADD file:693811ca88983c96f1ae7b86b18c599a8d8498772a363456defef70ec0ecc5de in / 
# Mon, 18 Sep 2017 23:35:55 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 18 Sep 2017 23:35:59 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 18 Sep 2017 23:36:07 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Mon, 18 Sep 2017 23:36:11 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 18 Sep 2017 23:36:13 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:ecef4bb781567569118b0dbfb956c9faf2d38a4831438bf7e3fc8a24d095d6d9`  
		Last Modified: Mon, 18 Sep 2017 23:38:10 GMT  
		Size: 40.4 MB (40443928 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:972cd4164d3b34fb230909044a4d609b4da3064aec7c6710e2a315171203a54b`  
		Last Modified: Mon, 18 Sep 2017 23:37:57 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dcefc6c0022e15174c14c104384f7447e3eb207cd5a4f5d6938982d42489a74c`  
		Last Modified: Mon, 18 Sep 2017 23:37:57 GMT  
		Size: 562.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2dcede92304accd7e9c171974646b12f0248f7c385811f9ac0def8b9ae641f17`  
		Last Modified: Mon, 18 Sep 2017 23:37:57 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5eef80f237862df7588cbbf12c0e5eca49c2c4fbed34fdc08283050d5c90a811`  
		Last Modified: Mon, 18 Sep 2017 23:37:58 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:zesty-20170915` - linux; s390x

```console
$ docker pull ubuntu@sha256:330b7d8212de67f03836be1ec11cb45ea1d926ffe0da63d305c47b5a7604aa2f
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.6 MB (37607507 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fe17f2b831c0072167ec7112a1fb6c249b7198a64645e1715b39b62235e9bb46`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 18 Sep 2017 23:33:46 GMT
ADD file:d98500a574281bf0f63432a3c0c045843865b8c622dd692e223aefbe9f66af4e in / 
# Mon, 18 Sep 2017 23:33:47 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 18 Sep 2017 23:33:47 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 18 Sep 2017 23:33:48 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Mon, 18 Sep 2017 23:33:48 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 18 Sep 2017 23:33:49 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:b8635927930021e2056a2838002d2c677552e0b9b40ecedf74abd298e8eca0f9`  
		Last Modified: Mon, 18 Sep 2017 23:34:51 GMT  
		Size: 37.6 MB (37605103 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2877d097d6610dc9de2c9223c82beca790a55806f1af7dce3f9f1222e2996f53`  
		Last Modified: Mon, 18 Sep 2017 23:34:44 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0d83c0bd9638ca6c165f78b766c0e292c314e3e9564f85320f2a0ad51fbb088`  
		Last Modified: Mon, 18 Sep 2017 23:34:44 GMT  
		Size: 540.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d0332a6f65c9d15a7987c3e473253bc46fd95e794b808611c5e09b4d3ef0454`  
		Last Modified: Mon, 18 Sep 2017 23:34:44 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a6b8e2bdba618b1359768422eac2b288464e119b957e296078017f5c3648aa7`  
		Last Modified: Mon, 18 Sep 2017 23:34:44 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
