## `buildpack-deps:trusty`

```console
$ docker pull buildpack-deps@sha256:6555bdc1e58012b15eb73a0d7dfec638ddd5c747cd9445936e06a7974d0a4571
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le

### `buildpack-deps:trusty` - linux; amd64

```console
$ docker pull buildpack-deps@sha256:6359782a32d74c3cf7b48e0799d87e56f59d7fb92fac251fe3e829a39f5d70f1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **213.8 MB (213803444 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bc2345a3d3ba6f6dba7e21259a63e83747ca5acab56bdc3aa820c2627fbe10ea`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 14 Dec 2017 20:59:20 GMT
ADD file:1e105449468a2d88e99909d47bb68f49b2da9303f9f5289721720b3a30308f8e in / 
# Thu, 14 Dec 2017 20:59:21 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 14 Dec 2017 20:59:22 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 14 Dec 2017 20:59:23 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 14 Dec 2017 20:59:23 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 14 Dec 2017 20:59:24 GMT
CMD ["/bin/bash"]
# Thu, 14 Dec 2017 21:52:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 14 Dec 2017 21:52:14 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 14 Dec 2017 21:52:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 14 Dec 2017 21:54:25 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:050aa9ae81a93949af7c06a5fd6b1f0f995dc8c1b082882b14b1892c74ba23f2`  
		Last Modified: Thu, 14 Dec 2017 21:01:25 GMT  
		Size: 72.9 MB (72888752 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1eb2c989bc049f8d7234a7b25d7cef4aaa2e85370b22a1626060c5cfe59b0a95`  
		Last Modified: Thu, 14 Dec 2017 21:01:14 GMT  
		Size: 72.6 KB (72649 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5e83780ccda0924d2154d8aaf10fe15a413cb3fd20ffe7ee41890a53693d4e6`  
		Last Modified: Thu, 14 Dec 2017 21:01:15 GMT  
		Size: 630.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2dec31d7323cfebc7ae2dcb7851fe852ba9a8f935c0012df62ade3063a1c8cea`  
		Last Modified: Thu, 14 Dec 2017 21:01:14 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:286f32949bdc7850bd03deeda0128f84c48a6ccac548642e88747fa025d4af76`  
		Last Modified: Thu, 14 Dec 2017 21:01:14 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c9a46ed169e507bf312a6f980eb11fab42dcd38e17e93fccd03f6bae9de5c92`  
		Last Modified: Thu, 14 Dec 2017 22:04:58 GMT  
		Size: 4.7 MB (4657817 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25e8e7c84eab394db72e904935de43d779296751d418ec834a12de2c12bf6f59`  
		Last Modified: Thu, 14 Dec 2017 22:05:21 GMT  
		Size: 29.6 MB (29554577 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a1140f8bfb9453b3ecfd757cde10e1beccd1997d9a444bbc8f747428eb203e7`  
		Last Modified: Thu, 14 Dec 2017 22:06:17 GMT  
		Size: 106.6 MB (106628006 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:trusty` - linux; arm variant v7

```console
$ docker pull buildpack-deps@sha256:57dc40a1f12a3780a6f7f93c92a47ca951a43fcc489a4cb5826f1b029ccf50d7
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **184.1 MB (184125577 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0f06e0566a95dc27e47d922ade72ff15ca55a52f6d242c62f393e219b328ef06`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 17 Nov 2017 22:08:56 GMT
ADD file:16a99c4c03e0f828d3d1f5824c796f99c24b90034db64e6ab21335559e94288c in / 
# Fri, 17 Nov 2017 22:08:57 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 17 Nov 2017 22:08:58 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 17 Nov 2017 22:08:59 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 17 Nov 2017 22:09:00 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 17 Nov 2017 22:09:00 GMT
CMD ["/bin/bash"]
# Fri, 17 Nov 2017 22:37:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 17 Nov 2017 22:37:17 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 17 Nov 2017 22:38:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 17 Nov 2017 22:40:21 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:98ab4a8d51bcdd96e2e2ddf9b580397602ad3d0f1c1698b312ddb73efa5cb9b5`  
		Last Modified: Fri, 17 Nov 2017 22:12:14 GMT  
		Size: 66.4 MB (66364411 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e535fdb12f7f2c7f5a17bef15275021c0dc8fd2b4602bd93bdced6e8745c194`  
		Last Modified: Fri, 17 Nov 2017 22:11:53 GMT  
		Size: 76.8 KB (76771 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be9e47cc03dbabaa23fd59fdade4ef1497ebb214115ad94e7ab736a6026779aa`  
		Last Modified: Fri, 17 Nov 2017 22:11:53 GMT  
		Size: 625.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4509b19277f66f4fa9d6c7fc9a652885b3e8c7cf793fb8688757179550010d4d`  
		Last Modified: Fri, 17 Nov 2017 22:11:53 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a68f56fab19c7569cb5381e33dacccf85762e98290a65fa78469a895ea681854`  
		Last Modified: Fri, 17 Nov 2017 22:11:53 GMT  
		Size: 187.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa9e5b048f18570f0dcc14e8065a6a45409558e9108f52f1805760c69bd6039e`  
		Last Modified: Fri, 17 Nov 2017 22:51:06 GMT  
		Size: 4.2 MB (4246338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f9021ad8df4ba4744f944c40667f85d777748b215ea3c0338f4114ec35cf12d`  
		Last Modified: Fri, 17 Nov 2017 22:51:25 GMT  
		Size: 27.1 MB (27080176 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4db8951a7cb27a93b1f9832d8f12aa0e02cec49eb49b6d44106173185f79284d`  
		Last Modified: Fri, 17 Nov 2017 22:52:00 GMT  
		Size: 86.4 MB (86356214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:trusty` - linux; arm64 variant v8

```console
$ docker pull buildpack-deps@sha256:3e7a945095f903372b99a429b82db892d8228dbcd5ac802adc5d79962ec21571
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **188.6 MB (188644495 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7af9c1cdac5e2f022679fcc69aa9a04848329bc11163d497b1674ab9acb26b8e`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 17 Nov 2017 22:09:51 GMT
ADD file:2c581fd650b6cde52b66f6a6dc3a2db7b7e4d30ee6781dcef2467bca18f6ffbb in / 
# Fri, 17 Nov 2017 22:09:53 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 17 Nov 2017 22:09:55 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 17 Nov 2017 22:09:56 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 17 Nov 2017 22:09:58 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 17 Nov 2017 22:09:59 GMT
CMD ["/bin/bash"]
# Fri, 17 Nov 2017 22:52:02 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 17 Nov 2017 22:52:04 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 17 Nov 2017 22:54:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 17 Nov 2017 23:01:34 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:32def973e5965e117faac512a5cc95919f34527f169ce198c1a97b2c5cf48ec9`  
		Last Modified: Fri, 17 Nov 2017 22:14:57 GMT  
		Size: 67.7 MB (67655796 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ba5d9dfc7ba1f25dc96252f13f4a37846d59795b2ad8fac7ff874a5bad55b65`  
		Last Modified: Fri, 17 Nov 2017 22:14:34 GMT  
		Size: 59.1 KB (59086 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31315e734769c8f99dadef6eeb3bab6fae722204b1205abf03690405646ba19f`  
		Last Modified: Fri, 17 Nov 2017 22:14:33 GMT  
		Size: 625.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b29b36e76d00f3fc5dfc8ca483dba597967044aa1822aa5d524900942d70caf`  
		Last Modified: Fri, 17 Nov 2017 22:14:34 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2eb32fe21d48f9378bca3c77caec9ee4d13ec23b9d021567a4cf908068f1ae29`  
		Last Modified: Fri, 17 Nov 2017 22:14:33 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41f2a8c441f387965da7980c77dac7349b7b4d699615867b696c71793c8368c3`  
		Last Modified: Fri, 17 Nov 2017 23:33:47 GMT  
		Size: 4.4 MB (4371304 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3d2b8c47f374e43657bfcf4a376458d306f2f37784cc54c84b4b1988ba19b6d`  
		Last Modified: Fri, 17 Nov 2017 23:34:16 GMT  
		Size: 28.0 MB (27981123 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a347d4d3e28be3f81a8878fb00f7b1b1d23af8b9d01a34603c26cb4e1ee12b7d`  
		Last Modified: Fri, 17 Nov 2017 23:35:11 GMT  
		Size: 88.6 MB (88575546 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:trusty` - linux; 386

```console
$ docker pull buildpack-deps@sha256:33d0c4dc91476b0b699d8e02d9b5616062f1fa67a3120b31fd0ad063d3d1bc00
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **207.9 MB (207920123 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3d3ba85b0ebb03fad249875ba337bdbdcdc7a50699af90ddc315311634553ac8`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 17 Nov 2017 22:47:53 GMT
ADD file:3b8ebf83252a69b7c015947afc1279b8196f36e8da7112ff1774bdd555f152e3 in / 
# Fri, 17 Nov 2017 22:47:54 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 17 Nov 2017 22:47:54 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 17 Nov 2017 22:47:55 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 17 Nov 2017 22:47:56 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 17 Nov 2017 22:47:56 GMT
CMD ["/bin/bash"]
# Fri, 17 Nov 2017 23:30:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 17 Nov 2017 23:31:12 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 17 Nov 2017 23:32:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 17 Nov 2017 23:33:38 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:2ea4ead2018985747e489e9fb9e7aae7cbca97c18a37f5f19f1dd8da2dd143cd`  
		Last Modified: Fri, 17 Nov 2017 22:54:26 GMT  
		Size: 70.2 MB (70229493 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0a013164b6f5486c5684db1fe174717d8c1e61a1a8272b9dbdddebdb2e35622`  
		Last Modified: Fri, 17 Nov 2017 22:54:03 GMT  
		Size: 64.8 KB (64848 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8fa882c7edaa9988a9c552f4003ad7d4b7352e1127cc6f97cb1635e06e00792`  
		Last Modified: Fri, 17 Nov 2017 22:54:04 GMT  
		Size: 594.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08d854497a0d463ddea136f1892f98059c5b393943867110b57107a9dd494d97`  
		Last Modified: Fri, 17 Nov 2017 22:54:03 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c3b8788ba08191b85828fa40f9f3fed550051ec6ea6a1e7af5e4dbe4317b630`  
		Last Modified: Fri, 17 Nov 2017 22:54:04 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3619e3b4adce70491e72bbe7181cba6dab5480863eb290e13aa8e1341baf9dae`  
		Last Modified: Fri, 17 Nov 2017 23:50:20 GMT  
		Size: 4.6 MB (4645067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efd87f3338a364b8f54769a2cadc13eafd5ccecb4464522821ea3f1d911e9f8a`  
		Last Modified: Fri, 17 Nov 2017 23:50:48 GMT  
		Size: 29.2 MB (29183431 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a87ad6821d84cf170789016fde75d6d9211779484c9e8923461d951816579eb`  
		Last Modified: Fri, 17 Nov 2017 23:51:30 GMT  
		Size: 103.8 MB (103795673 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:trusty` - linux; ppc64le

```console
$ docker pull buildpack-deps@sha256:192de4d0304e8142f3c47a025ed2bf5e55a5a71a1ef4f903c5e094d7f4758992
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **214.1 MB (214052579 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9a09785544166761532ae40b71e9e132d402bd9da8ab62abe9b0e3e777b1c237`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 17 Nov 2017 22:09:08 GMT
ADD file:fc89ab40d078921c19d3aa26664f7df149ee276ab04db21f8bad2d0424394e42 in / 
# Fri, 17 Nov 2017 22:09:13 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 17 Nov 2017 22:09:22 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 17 Nov 2017 22:09:25 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 17 Nov 2017 22:09:29 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 17 Nov 2017 22:09:31 GMT
CMD ["/bin/bash"]
# Fri, 17 Nov 2017 22:48:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 17 Nov 2017 22:48:53 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 17 Nov 2017 22:50:22 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 17 Nov 2017 23:00:45 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:aaa873a909821bb57bcac96f3bc1981003536b05eb4a3ebf04068a917bec55da`  
		Last Modified: Fri, 17 Nov 2017 22:12:17 GMT  
		Size: 74.3 MB (74340563 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42b7f47d1c5903c8aa102c1366c25a1fd5beba012865e666378634f29e4bd70c`  
		Last Modified: Fri, 17 Nov 2017 22:11:58 GMT  
		Size: 63.4 KB (63422 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c61568c0da24b41deeb389a865382ba97ea0403e377e1950188c521e0a19732`  
		Last Modified: Fri, 17 Nov 2017 22:11:58 GMT  
		Size: 658.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7cea9f6ad5475febf1ed3b647ba02c5adfcd71c35d543f1160812f63e726f5a`  
		Last Modified: Fri, 17 Nov 2017 22:11:58 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a72bd0c4c97f4c8116c34312a431a79d70595f1545a09fdfd0cb1e1b3fde8bcd`  
		Last Modified: Fri, 17 Nov 2017 22:11:58 GMT  
		Size: 189.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8de42e2ad4b40828f3cd5c4e4e06041f2f1f367994e461f40ddea33d8ec1f86f`  
		Last Modified: Fri, 17 Nov 2017 23:41:04 GMT  
		Size: 4.7 MB (4713435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f0680be587a76064a0527757d4558c4f2552f7b63f597e856b651ed07fef8cc`  
		Last Modified: Fri, 17 Nov 2017 23:41:22 GMT  
		Size: 32.0 MB (31987699 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b8b73cf6b13b0ba821a5db908cfdab6b51585d4a36188c9be4854fbd89b5558`  
		Last Modified: Fri, 17 Nov 2017 23:42:08 GMT  
		Size: 102.9 MB (102945758 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
