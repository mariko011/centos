## `buildpack-deps:artful-curl`

```console
$ docker pull buildpack-deps@sha256:a6aa25c0874fbcde5dc964370e39324f778cefea6e0c1238f73d19ea3bac74ed
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
$ docker pull buildpack-deps@sha256:7f1bf84100ae02fdfef0d85f87756a89395d4270f8ebc0b733885a830d6c766d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.1 MB (45126275 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9b07b2f2c0e04df31e5ef686c75968bdcc788407d46438f5afc0135260776593`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 13 Sep 2017 23:26:09 GMT
ADD file:ea2169fb61fcc568b9fdd19c087a5bef0304d0a8cb6ef7ba041d030651b524f2 in / 
# Wed, 13 Sep 2017 23:26:09 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 13 Sep 2017 23:26:10 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 23:26:11 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 13 Sep 2017 23:26:11 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 13 Sep 2017 23:26:11 GMT
CMD ["/bin/bash"]
# Wed, 13 Sep 2017 23:43:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 23:43:50 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:06577912c3a1ac51c4cee4e67a2092b08f05f41b5889893490cb481ff6094582`  
		Last Modified: Wed, 13 Sep 2017 23:26:51 GMT  
		Size: 39.1 MB (39093272 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:974ebf946b53a325802ca8e95264896985e88e3636c60ea9f0bff170dbac1125`  
		Last Modified: Wed, 13 Sep 2017 23:26:44 GMT  
		Size: 842.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e731a5b72c957af699a057565fe293d31d9ff7ec61eaa3339574aba9faa91cf`  
		Last Modified: Wed, 13 Sep 2017 23:26:44 GMT  
		Size: 396.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0c55dda557e06b2745b4eeedc802ec109f12653019e9a9d5dd2f0460e87942d`  
		Last Modified: Wed, 13 Sep 2017 23:26:44 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7f4445e6f7cf7e033555aaaa2f093c1f95eb6e5244c9d212731dfd788d75796`  
		Last Modified: Wed, 13 Sep 2017 23:26:44 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7661680321dac3c5aed9edd5b80c5f358978c74794ef4b259536100fff8d2d5f`  
		Last Modified: Wed, 13 Sep 2017 23:58:41 GMT  
		Size: 6.0 MB (6030752 bytes)  
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
$ docker pull buildpack-deps@sha256:e3da68323a025ad41f4a701d9828e2d3df74ba41a9c2993096ad38b55062849f
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.2 MB (41199193 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a5a9840cd7e8548ad470e1d647cd0dfa9f9d218affbdce120eb3159bf6c8f06a`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 11 Aug 2017 14:00:31 GMT
ADD file:72e827402c17763c330327d51dc25ae401f860f89e8e372b3be40aa2d66d4b66 in / 
# Fri, 11 Aug 2017 14:00:33 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 11 Aug 2017 14:00:34 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 11 Aug 2017 14:00:35 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 11 Aug 2017 14:00:37 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 11 Aug 2017 14:00:37 GMT
CMD ["/bin/bash"]
# Fri, 11 Aug 2017 14:20:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 11 Aug 2017 14:20:06 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:e3cbf6b761fc79229763c2ca811300fe67b03823ac587cfef771f06a30160671`  
		Last Modified: Fri, 11 Aug 2017 14:01:58 GMT  
		Size: 35.9 MB (35881128 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89ede9e3306686b1fc131013cb4637dab6b688b4195e2ced7701a0775491f9bb`  
		Last Modified: Fri, 11 Aug 2017 14:01:45 GMT  
		Size: 848.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:657a57ea6a9f776614fa9c4144d273d151330c8a1704a4d9ed0d8961481c51dc`  
		Last Modified: Fri, 11 Aug 2017 14:01:45 GMT  
		Size: 376.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d655fcf500eba157a952d9aa6274092d31beed52027245147b796fb9458cd343`  
		Last Modified: Fri, 11 Aug 2017 14:01:45 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71c96957e92b57ba82aa0dd5523ce4cf2a68a256079a6026e780e291374f1a48`  
		Last Modified: Fri, 11 Aug 2017 14:01:45 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ee846ab4b7e9e4f7be14c5df454791689726811b1e4890a91b68da5d406b465`  
		Last Modified: Tue, 29 Aug 2017 20:07:41 GMT  
		Size: 5.3 MB (5315824 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:artful-curl` - linux; 386

```console
$ docker pull buildpack-deps@sha256:72f87483b60c101fca86431479f482424b128060911373c292cf4b976299c468
```

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.7 MB (45734692 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9cd260c803b004b31eafbd1788baa277920114b1f35e0f3dc674cd30e2f0ee53`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 13 Sep 2017 23:26:11 GMT
ADD file:5a41561881197321505472bd5d851554c88a7724237c3a405c8d82e21f75fab9 in / 
# Wed, 13 Sep 2017 23:26:12 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 13 Sep 2017 23:26:12 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 23:26:13 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 13 Sep 2017 23:26:13 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 13 Sep 2017 23:26:14 GMT
CMD ["/bin/bash"]
# Wed, 13 Sep 2017 23:44:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 23:44:27 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:d46ca5861f3e19c22aa486460c2402c7bbdfd440352bb2c01c450d0a7351aa6d`  
		Last Modified: Wed, 06 Sep 2017 13:52:01 GMT  
		Size: 39.6 MB (39637175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23d08e6f954204de1d08cc12d794014862d1bbbf151ff6c5c314e459eaf350ac`  
		Last Modified: Wed, 13 Sep 2017 23:26:59 GMT  
		Size: 834.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66d99cb7c42b9a95f75721977b6485b00002c6be53193fb1bd0569a05fe1ec78`  
		Last Modified: Wed, 13 Sep 2017 23:26:57 GMT  
		Size: 392.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8239d458a682d311f1f979da95e97ef8f31f1669475566a2593fd494d54e447`  
		Last Modified: Wed, 13 Sep 2017 23:26:56 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:354740a7972a09026fb27c0789963d209c1cc1c6e3377901e46db13236100af7`  
		Last Modified: Wed, 13 Sep 2017 23:26:56 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42d8b2a62d0304e243b0e16d552c5228aba13c3963f6b3637a6e8fbd7e7774d2`  
		Last Modified: Wed, 13 Sep 2017 23:59:16 GMT  
		Size: 6.1 MB (6095275 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:artful-curl` - linux; ppc64le

```console
$ docker pull buildpack-deps@sha256:8b6c589fc4d462447d3df074cc0627cc472897d363c9b2017277c81644b8ea61
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.8 MB (46841676 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:edaaf33bf3800cb50313b2723d6b5173b8df9281287eade640d8d829960d4392`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 11 Aug 2017 02:39:27 GMT
ADD file:a03e7aa0b0a85482e96c4f92980fb85c04ad6e053caa856b7509d4aef9ed70de in / 
# Fri, 11 Aug 2017 02:39:27 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 11 Aug 2017 02:39:28 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 11 Aug 2017 02:39:29 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 11 Aug 2017 02:39:30 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 11 Aug 2017 02:39:30 GMT
CMD ["/bin/bash"]
# Fri, 11 Aug 2017 02:58:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 11 Aug 2017 02:58:04 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:511a7bad4a579a3019eeb61af52833aea6cdcbb0d7b8eaf8fa9a25fc4613f018`  
		Last Modified: Fri, 11 Aug 2017 02:40:28 GMT  
		Size: 40.9 MB (40912591 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a386526123fb3d4a2673e4d3af8aa2cd309c23c5ae2db30c7f021f1d77889809`  
		Last Modified: Fri, 11 Aug 2017 02:40:17 GMT  
		Size: 841.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8132c13b93273fa891fe2111bfd12bdb3757255d24c90f36eff38ed21ab581cd`  
		Last Modified: Fri, 11 Aug 2017 02:40:17 GMT  
		Size: 373.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d51cda79ce86676065083ebec39ec5228407b7f244d470ea2a5101353217893f`  
		Last Modified: Fri, 11 Aug 2017 02:40:17 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2848a524956ea4f920faf113d94effffd4cff86f9e1867f7356ab22e21e64bc`  
		Last Modified: Fri, 11 Aug 2017 02:40:17 GMT  
		Size: 187.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c2bf3310387b8e7321fc2c0d94a0310ac805f247b2d2d9b502894c21d65310b`  
		Last Modified: Tue, 29 Aug 2017 19:30:39 GMT  
		Size: 5.9 MB (5926830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:artful-curl` - linux; s390x

```console
$ docker pull buildpack-deps@sha256:3ca2115ac50d5b416866a52753d02ef8405f199576e8205b9a6bcdc3c025e3a6
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.0 MB (43987111 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a31178c73f97dc7d8b08c8887cdfac2096dd3863f0ef6799cddc94f807593e42`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 13 Sep 2017 23:26:17 GMT
ADD file:2498da36d02adbf86b0f95624afad84cb43851bff9d415a5b93ae30ec7de3769 in / 
# Wed, 13 Sep 2017 23:26:18 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 13 Sep 2017 23:26:19 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 23:26:19 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 13 Sep 2017 23:26:20 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 13 Sep 2017 23:26:20 GMT
CMD ["/bin/bash"]
# Wed, 13 Sep 2017 23:43:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 23:43:09 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:1ba169dd49ccf3dff2f3d863ac05bd1b99558b7b7276e07f8a0ed01104a7d917`  
		Last Modified: Wed, 13 Sep 2017 23:26:52 GMT  
		Size: 38.3 MB (38257399 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:030cf4f82384dfe30010d05af8472d23a34d790b16b8a59eb4a665eaa75abe05`  
		Last Modified: Wed, 13 Sep 2017 23:26:42 GMT  
		Size: 838.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a61166fe5dcefea3200cd0a9d5c134306b55461d1d26c17cf9231a3999d15505`  
		Last Modified: Wed, 13 Sep 2017 23:26:42 GMT  
		Size: 373.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8845e247dea8662a306453dd0aeae5488d60be4d0ce58ef6eef6622456a7e8e5`  
		Last Modified: Wed, 13 Sep 2017 23:26:42 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77a1b93716c2bde66c0e40d7cbed3493a03bf9ea3428b8d8d8e8e04492122bd3`  
		Last Modified: Wed, 13 Sep 2017 23:26:42 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d64d9647ce982b001e052b7ab2b4d2d299e68c3d8f18c3273c197558b4008e39`  
		Last Modified: Wed, 13 Sep 2017 23:48:20 GMT  
		Size: 5.7 MB (5727485 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
