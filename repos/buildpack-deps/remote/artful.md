## `buildpack-deps:artful`

```console
$ docker pull buildpack-deps@sha256:4350d6b6639b86e1540b42c496989a30465149422a13e8f40e48053247d1b3f1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `buildpack-deps:artful` - linux; amd64

```console
$ docker pull buildpack-deps@sha256:7950ca2f4ea5d24747b03f87df92c61a528a0c10b25d749f476eb164b47bc54d
```

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **425.3 MB (425289121 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4079beb4263776ac0e13458812840b9fed8799a6d116bde63290b2b965a2170e`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 10 Aug 2017 20:13:07 GMT
ADD file:2a1e5e38d6c5ea2409d79033b3fae8ee040d6cc93e603452995ecbd5e7279857 in / 
# Thu, 10 Aug 2017 20:13:07 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 10 Aug 2017 20:13:08 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 10 Aug 2017 20:13:09 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 10 Aug 2017 20:13:09 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 10 Aug 2017 20:13:10 GMT
CMD ["/bin/bash"]
# Thu, 10 Aug 2017 20:39:08 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 10 Aug 2017 20:39:09 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 10 Aug 2017 20:39:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 28 Aug 2017 23:27:47 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:fa25c181d49926efafed99906f587bbc8cf45431269fad25a93d18b3989d0105`  
		Last Modified: Thu, 10 Aug 2017 20:14:04 GMT  
		Size: 39.0 MB (38951300 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28ce23f691728aeb0909044b8a135b337d71e622b2416fa40bdf0c875902d9ca`  
		Last Modified: Thu, 10 Aug 2017 20:13:58 GMT  
		Size: 817.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f4d7e2c4339834d7e2df7a274270a5df53c2317690cf165759f8ae272b5b504`  
		Last Modified: Thu, 10 Aug 2017 20:13:58 GMT  
		Size: 387.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff9af7838ade9b019e3a8c056ebe52dfa2fdf06dfcbde7fa7dc776652f476535`  
		Last Modified: Thu, 10 Aug 2017 20:13:58 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:445d97ff05603473b155917c9593b026fe62eba6f62445afca53883b92da85a7`  
		Last Modified: Thu, 10 Aug 2017 20:13:58 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0066a2ede63543bb66dd1066dd3625044f48c540c4ad4e51b54b10c9010d8bf`  
		Last Modified: Thu, 10 Aug 2017 20:50:23 GMT  
		Size: 6.0 MB (6049446 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa994f460c655f76250cacb6011e9853bee65ac9ee8c793a58b3f52776dbe618`  
		Last Modified: Thu, 10 Aug 2017 20:50:48 GMT  
		Size: 46.3 MB (46268372 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17a5e8c83293d8d43e3c24e5ae2664fedee78c2fbb8085bd6c180f48bf3ed8a6`  
		Last Modified: Mon, 28 Aug 2017 23:54:50 GMT  
		Size: 334.0 MB (334017787 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:artful` - linux; arm variant v7

```console
$ docker pull buildpack-deps@sha256:08f9204deee11aee0ae15d618b8e79440ad882b204ad1e56a2fc42bfbcc91e03
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **386.4 MB (386425569 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ebc0c72d9dddb53287800ff48ffd255c30339369da4b83a42c84d5e477be32d4`
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
# Tue, 22 Aug 2017 00:11:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 29 Aug 2017 16:40:22 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
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
	-	`sha256:37e3cf6fe60a404049a7a2cc018deaa0a0feacfc530ac9d3a2d1653126fef81e`  
		Last Modified: Tue, 29 Aug 2017 20:24:58 GMT  
		Size: 44.5 MB (44479371 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0834817fc397d1205923686e0952351a26477a8737fd58752bc9896c89946107`  
		Last Modified: Tue, 29 Aug 2017 20:28:19 GMT  
		Size: 301.9 MB (301913332 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:artful` - linux; arm64 variant v8

```console
$ docker pull buildpack-deps@sha256:b10edf167318397c1b6afae4d5b7db62ab246548e94be9298d4a025473988237
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **392.6 MB (392579604 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d2352ffad4605bb0bf236dc66fe97ef951f0f79489149c15acbfe1d848ecf4d0`
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
# Fri, 11 Aug 2017 14:21:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 29 Aug 2017 09:37:07 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
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
	-	`sha256:01334f7ebffa45b4efff703463f9b477e6771d555f669f846ec2137d6f5eb610`  
		Last Modified: Tue, 29 Aug 2017 20:08:10 GMT  
		Size: 43.8 MB (43777031 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0343c714c0249740d91c4a53316635ead97575bd91a7d8c0d2f5f57f8aefbfc`  
		Last Modified: Tue, 29 Aug 2017 20:10:03 GMT  
		Size: 307.6 MB (307603380 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:artful` - linux; 386

```console
$ docker pull buildpack-deps@sha256:ce1e760dbb55b364fa731e593d811b824f7c6da02952468526e6fb62b58ea417
```

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **420.1 MB (420079520 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:45e39e66f4aabf8726fe7898026b17130f3bbdf5ea9ca1d34eaf02b06148d07c`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 11 Aug 2017 03:34:20 GMT
ADD file:1b15b4728f9200a675bdf6faa108a6041c9e2abc808b58445e561b18eceb42f9 in / 
# Fri, 11 Aug 2017 03:34:21 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 11 Aug 2017 03:34:22 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 11 Aug 2017 03:34:22 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 11 Aug 2017 03:34:23 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 11 Aug 2017 03:34:23 GMT
CMD ["/bin/bash"]
# Fri, 11 Aug 2017 03:52:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 11 Aug 2017 03:52:24 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 11 Aug 2017 03:52:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 29 Aug 2017 16:33:00 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:b76d66ed892ee1b00a303c6847a657191e34ffdae9dafd6fa99a2aa4284d01f9`  
		Last Modified: Fri, 11 Aug 2017 03:35:07 GMT  
		Size: 39.4 MB (39431556 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed66235e35802576b8a1d036d79397164b1129f3fb27b96914dc1872208e894a`  
		Last Modified: Fri, 11 Aug 2017 03:35:00 GMT  
		Size: 840.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e701dd5f27f99d9c68453dea1220e1193efa29bbb26b26a39805e6e2ad3a2ffa`  
		Last Modified: Fri, 11 Aug 2017 03:35:01 GMT  
		Size: 398.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99b43e323809cee4a15d7f2fb570889709a01aa1e568a77a6ac7c1c60de3c689`  
		Last Modified: Fri, 11 Aug 2017 03:35:01 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:003234f33ed8ed3feb58df0a94eaf55311d2abd7ca072b030819201af0fa8dd9`  
		Last Modified: Fri, 11 Aug 2017 03:35:01 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dea3ec5001dbf257ee57c1e67e100be24464969518547322acc74cf2d5033cf6`  
		Last Modified: Fri, 11 Aug 2017 04:03:02 GMT  
		Size: 6.1 MB (6113872 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1fc71fe7d940aa860fc084208f5b2f56893441caf56e612cc767fed19ddc610`  
		Last Modified: Fri, 11 Aug 2017 04:03:24 GMT  
		Size: 47.0 MB (46999341 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd405452e0b053b95503a98760976358915aed67f42e1f0f6684fe3db015dd56`  
		Last Modified: Tue, 29 Aug 2017 16:58:37 GMT  
		Size: 327.5 MB (327532499 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:artful` - linux; ppc64le

```console
$ docker pull buildpack-deps@sha256:2cf80eff77455d19252ca107ae16ed26a3e3e8e739c5e713b2891dbfd79797ec
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **422.2 MB (422239764 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2ad83d7170b2041308c398770c87d3e3fb6935979e712169b368575d1029526b`
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
# Fri, 11 Aug 2017 02:58:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 29 Aug 2017 15:48:29 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
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
	-	`sha256:08413591e06be912f1588d584b1930b6413555827afd311b4159785b046c9ada`  
		Last Modified: Tue, 29 Aug 2017 19:31:20 GMT  
		Size: 49.6 MB (49617256 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbdb15f93b4a8c806cfbe06404323f051977e2cb78bc73adfab3d837eb5a0740`  
		Last Modified: Tue, 29 Aug 2017 19:32:52 GMT  
		Size: 325.8 MB (325780832 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:artful` - linux; s390x

```console
$ docker pull buildpack-deps@sha256:fad9d9eb90dcc0233a3ca93d328deaeb827fa6cd02bd57b64cfa7ea2e239918b
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **397.1 MB (397147423 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:838785efc28e2e4525f9832928b2fd6a672f5df90edca4b3e95043372df8eca2`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 11 Aug 2017 13:15:23 GMT
ADD file:aab2bfb304c9744764e0ccbac806d0bdf7bc634f3d785588efd938909f3544ea in / 
# Fri, 11 Aug 2017 13:15:24 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 11 Aug 2017 13:15:25 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 11 Aug 2017 13:15:25 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 11 Aug 2017 13:15:26 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 11 Aug 2017 13:15:26 GMT
CMD ["/bin/bash"]
# Fri, 11 Aug 2017 13:31:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 11 Aug 2017 13:31:42 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 11 Aug 2017 13:32:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 29 Aug 2017 16:30:01 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:e32651335fe868d99a63e8f10f0f5299ef818397902bdae3ab95d8a38a0df563`  
		Last Modified: Fri, 11 Aug 2017 13:15:47 GMT  
		Size: 38.2 MB (38188591 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7198b0061abf7882752e22281456d907958588e21320057b4df79670388eb20`  
		Last Modified: Fri, 11 Aug 2017 13:15:40 GMT  
		Size: 841.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1867bcec350dda7f549e5d1088e12804c59980709fa88e65003b0141abf3560`  
		Last Modified: Fri, 11 Aug 2017 13:15:40 GMT  
		Size: 374.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa8b7743a740066591f0b6f7755cfd849d198a1ff4927d42b9cf157a22b364f0`  
		Last Modified: Fri, 11 Aug 2017 13:15:40 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6ae2a05ef6af713cec33118b73ecaa92e5277f8ac8e12e5cc4475ad3718c724`  
		Last Modified: Fri, 11 Aug 2017 13:15:40 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63de9a15dd2b32211ad8230088eb60af970465d8ef4c423f71cc5fae9d0d7ba3`  
		Last Modified: Fri, 11 Aug 2017 13:34:44 GMT  
		Size: 5.8 MB (5760160 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7d411d690e46103d49c629d58aa6847b2627afb0c493f4a7e5e860397d3178a`  
		Last Modified: Fri, 11 Aug 2017 13:35:00 GMT  
		Size: 46.4 MB (46402365 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3dcc2e61a4b735d2ffb86fdbc3bbe510155ce2082d2f69935ac69513832c6ad2`  
		Last Modified: Tue, 29 Aug 2017 16:38:15 GMT  
		Size: 306.8 MB (306794079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
