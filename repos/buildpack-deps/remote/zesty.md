## `buildpack-deps:zesty`

```console
$ docker pull buildpack-deps@sha256:6be150ccd22152fb556635c406bda33f5c9b51bd0350c9e8cfe1fc8dedda54d4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `buildpack-deps:zesty` - linux; amd64

```console
$ docker pull buildpack-deps@sha256:990d5aa293b8c5cb7e551a52622bd0e1f94ff256f64908fea57682ff353a8644
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **261.2 MB (261239344 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:30b594b5d875782b4d7092d59a5ada56dd6d2faa1a89b10350864f79f52c3915`
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
# Wed, 13 Sep 2017 23:54:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 23:54:47 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 13 Sep 2017 23:55:10 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 23:57:15 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
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
	-	`sha256:885c5f7b688400d5bd6ce7a88d6a62404fda8f9a1fd01d9dc0b8446046cbcee4`  
		Last Modified: Thu, 14 Sep 2017 00:01:40 GMT  
		Size: 7.6 MB (7573809 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b9659d1a219623ef62ccf4853ff372c325e3e48b70027cfaed2e796a5a1317b`  
		Last Modified: Thu, 14 Sep 2017 00:02:03 GMT  
		Size: 44.0 MB (43957269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc758306161f492d3797cfc41e5cc3086fe507174cd97199f5165ae007c211e0`  
		Last Modified: Thu, 14 Sep 2017 00:02:53 GMT  
		Size: 171.3 MB (171272350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:zesty` - linux; arm variant v7

```console
$ docker pull buildpack-deps@sha256:8075c29f5272bff7d2428c9f91306884fed89e123880df5ec7931c61c082294c
```

-	Docker Version: 17.07.0-ce-rc2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **231.0 MB (231047466 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bebc424bfdb6e526b00d6a543932c9ee94f320e8294f6a83301eb4795e749246`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 21 Jul 2017 13:56:39 GMT
ADD file:c533c8838895abd08a8db97d9a7692f9af97a1d89b1300d6ee54c58604762049 in / 
# Fri, 21 Jul 2017 13:56:44 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 21 Jul 2017 13:56:46 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 21 Jul 2017 13:56:49 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 21 Jul 2017 13:56:50 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 21 Jul 2017 13:56:51 GMT
CMD ["/bin/bash"]
# Fri, 11 Aug 2017 18:32:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 11 Aug 2017 18:32:55 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 11 Aug 2017 18:34:30 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 11 Aug 2017 18:41:32 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:66dabed00d6e902c488f72c17cdb93bed861860cdfaac065004fb04f4f2d0f46`  
		Last Modified: Fri, 21 Jul 2017 14:00:37 GMT  
		Size: 34.1 MB (34101919 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92ac516f9258e4c050467739830d1d071ae9105eafa6b23125146358166aed32`  
		Last Modified: Fri, 21 Jul 2017 14:00:15 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b962c29187c105f0dccfe3129fc48ed4c1add5ec1a61e203c1583826d003079`  
		Last Modified: Fri, 21 Jul 2017 14:00:16 GMT  
		Size: 614.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:853607c23a1ae0781a098f3dd40786037bb2c95287650b457a60cc67e6118426`  
		Last Modified: Fri, 21 Jul 2017 14:00:15 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6105f4b106de7e861b41815358a8b829950ca18721daf17c1976cb9deb75311`  
		Last Modified: Fri, 21 Jul 2017 14:00:15 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e15ea11e607bd76fe613326d525acf4816304dfc33923c15698a11513fdb7a6`  
		Last Modified: Fri, 11 Aug 2017 19:04:53 GMT  
		Size: 6.5 MB (6491222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c95c09e640476b696755ffdd95a076aff96b177121fd57df8da5c95b6077a90`  
		Last Modified: Fri, 11 Aug 2017 19:05:32 GMT  
		Size: 39.6 MB (39551563 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8dcca6108cd2cdd4996c87f3b40a22a11f20b16f76b2e58593a85f32282586d9`  
		Last Modified: Fri, 11 Aug 2017 19:07:24 GMT  
		Size: 150.9 MB (150900278 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:zesty` - linux; arm64 variant v8

```console
$ docker pull buildpack-deps@sha256:0e2c4dfebbca1f9f10116d8f3f41fdbe7ae2a13988caf209cc59d8ec16aa7748
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **242.1 MB (242134995 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bdb59e6174953799fc0e1884241c5e7467c48f83718aca642c66a6a4801298ac`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 21 Jul 2017 14:51:58 GMT
ADD file:5ae6deb1b4d662ef63a39a2e9506cfaf00cf6f5963ce493b8201ff03f0b78c48 in / 
# Fri, 21 Jul 2017 14:52:01 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 21 Jul 2017 14:52:04 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 21 Jul 2017 14:52:08 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 21 Jul 2017 14:52:11 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 21 Jul 2017 14:52:12 GMT
CMD ["/bin/bash"]
# Fri, 21 Jul 2017 16:38:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 21 Jul 2017 16:38:59 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 21 Jul 2017 16:40:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 21 Jul 2017 16:49:57 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:b32a7f52ce86452f6c6df5c37b4f125c3fc057a6bfc3167072ae433c5d80a945`  
		Last Modified: Fri, 21 Jul 2017 14:55:24 GMT  
		Size: 35.3 MB (35253889 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b79a1bd986d80254bede923020dedc294ff6bdf0cbd3e428913eff0e14ce669f`  
		Last Modified: Fri, 21 Jul 2017 14:55:00 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf217302f4e67b32ad1ab3d30ee2ec4254ef0f2271a10ecf3bb8f19d0f28d139`  
		Last Modified: Fri, 21 Jul 2017 14:55:00 GMT  
		Size: 540.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c527d1367ee515cf4ac25f73a3a51282af26dd8bba15c1fd09015f38286ca26`  
		Last Modified: Fri, 21 Jul 2017 14:55:00 GMT  
		Size: 856.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75877cfab08ad8ddb1a4253c0f28bbc4178782e8f935bcf973ed04d9ffad7334`  
		Last Modified: Fri, 21 Jul 2017 14:55:00 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60faf617a755fd39632bb5fbee88cc3a4ad3e8aa6fabe1c105a8973997943b05`  
		Last Modified: Fri, 21 Jul 2017 16:59:08 GMT  
		Size: 6.7 MB (6681844 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:723e9e324af6823863539612945394a1a73ca460441c66f136fad4aaba4e26b9`  
		Last Modified: Fri, 21 Jul 2017 16:59:52 GMT  
		Size: 41.6 MB (41645241 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c5e226fd3e08f088ee7d86b16582f4337e2d407358f7245a32b30809987c076`  
		Last Modified: Fri, 21 Jul 2017 17:01:57 GMT  
		Size: 158.6 MB (158551613 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:zesty` - linux; 386

```console
$ docker pull buildpack-deps@sha256:578e53e69c35a94969ec6d6d82d7dbb8fc477421fd0c8b06601d80c9a969dabd
```

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **260.9 MB (260893706 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:78bdbd94dd984bda3ffc4b47eb5c10067054628429065d257c464d482e5df04b`
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
# Wed, 13 Sep 2017 23:52:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 23:52:59 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 13 Sep 2017 23:54:08 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 23:55:54 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
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
	-	`sha256:4f413bb13ead8b84cddb48775c351318754fcc34205b3fd23ae49fd6bda04376`  
		Last Modified: Thu, 14 Sep 2017 00:05:06 GMT  
		Size: 7.7 MB (7710764 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78b77b46e8f42a22f5174b68473d84c0f4eaf7e2956da753f5b0144efe26161e`  
		Last Modified: Thu, 14 Sep 2017 00:05:27 GMT  
		Size: 44.5 MB (44544449 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36a6004dfb7a3ec8aa88c5d576105d68ce0dd51c966f1b1dc40c2938690f2163`  
		Last Modified: Thu, 14 Sep 2017 00:06:15 GMT  
		Size: 169.8 MB (169812727 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:zesty` - linux; ppc64le

```console
$ docker pull buildpack-deps@sha256:1060b4e514af77694097148a3dbfa4404ee04c74d198df9ef1fc1084ccac010d
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **268.8 MB (268782953 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6df45fbc1f137a021450e074414ddbe7cd6e1ab41e7fbecc6a3812ed1e513159`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 21 Jul 2017 02:40:01 GMT
ADD file:0a8332254eb6b28cbc3d2f733d8a6dc3827b45ae870225150c1b38b08229ecb5 in / 
# Fri, 21 Jul 2017 02:40:02 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 21 Jul 2017 02:40:03 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 21 Jul 2017 02:40:03 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 21 Jul 2017 02:40:04 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 21 Jul 2017 02:40:04 GMT
CMD ["/bin/bash"]
# Fri, 21 Jul 2017 03:18:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 21 Jul 2017 03:18:22 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 21 Jul 2017 03:18:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 21 Jul 2017 03:20:45 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:80cd303c7ef2b80532a9b48243e89d7db3000ade0f278e3299712d07c35bc7fe`  
		Last Modified: Fri, 21 Jul 2017 02:41:51 GMT  
		Size: 40.1 MB (40078675 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:201d5a3bd418822478d20cdf8de1357c0b066c08af3daf25e6dd12960deef546`  
		Last Modified: Fri, 21 Jul 2017 02:41:39 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41c083a6fbd522ac327a54dcaf344423ab3117a10662ab11dbf4b4fd99bf199e`  
		Last Modified: Fri, 21 Jul 2017 02:41:39 GMT  
		Size: 561.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc88fc0cf9423be54ceccb7daa7bc7c69a59f0223322482331794038810ad46e`  
		Last Modified: Fri, 21 Jul 2017 02:41:39 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23457918976fe195f4230a828c66a10234d0ba8b76992db9259701fc94deb2b2`  
		Last Modified: Fri, 21 Jul 2017 02:41:39 GMT  
		Size: 187.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a45b697a2d9e9a5c2d6dc8acb6ded891712aa2cd9a0308b080b7cb248625dde`  
		Last Modified: Fri, 21 Jul 2017 03:31:47 GMT  
		Size: 7.4 MB (7443753 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2832fe401e5e58aafdab1212b46bf53dee527df6b8894363283a79e087fc5e51`  
		Last Modified: Fri, 21 Jul 2017 03:32:08 GMT  
		Size: 47.4 MB (47380768 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:646e59d3aad65cc1ff65abf3896860a742d53cd43fbe4c9f0ab4207e9e4fafd8`  
		Last Modified: Fri, 21 Jul 2017 03:33:01 GMT  
		Size: 173.9 MB (173877307 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:zesty` - linux; s390x

```console
$ docker pull buildpack-deps@sha256:d5076333014a978fde53a6d859e48bf1b3b133af3e92cbe1428df16ec36a0116
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **250.7 MB (250657490 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b2b017bf3d116f4b40df8836a42112ba8c73777b57ea267db528fbcd3a5e7a89`
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
# Wed, 13 Sep 2017 23:45:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 23:45:34 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 13 Sep 2017 23:46:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 23:48:01 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
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
	-	`sha256:2f39d62c03815c376296f0fea08fd1d4f6fbda1325b35151d1b08719207d5b77`  
		Last Modified: Wed, 13 Sep 2017 23:51:35 GMT  
		Size: 7.3 MB (7257933 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:326809b80e9dbc9ba79260cd3f912d05446b686f7d5e3d669953371f81ed5f79`  
		Last Modified: Wed, 13 Sep 2017 23:53:07 GMT  
		Size: 44.1 MB (44127053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14e346b71c5caa5e62c2da474a3caccc646a9dab5b029633c2a9b2d1ce53789f`  
		Last Modified: Wed, 13 Sep 2017 23:58:37 GMT  
		Size: 161.7 MB (161667790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
