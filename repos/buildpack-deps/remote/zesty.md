## `buildpack-deps:zesty`

```console
$ docker pull buildpack-deps@sha256:66a9232ab7b26513f98ec8738aea3eef60d129731d499fa83796e20beb819eae
```

-	Platforms:
	-	linux; amd64

### `buildpack-deps:zesty` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **263.8 MB (263793670 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:11e891458a4db05025f22fd24fce4f1529c0a44d4961ae37fefd439238291ebc`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 20 Jan 2017 21:45:37 GMT
ADD file:26b17eea6b51bdd55ef4b2312d87c81540209bc81aa37815596a6797053b9d79 in / 
# Fri, 20 Jan 2017 21:45:46 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 20 Jan 2017 21:45:47 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 20 Jan 2017 21:45:48 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 20 Jan 2017 21:46:02 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 20 Jan 2017 21:46:03 GMT
CMD ["/bin/bash"]
# Fri, 20 Jan 2017 22:52:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 20 Jan 2017 22:52:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 09 Feb 2017 18:49:56 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:2346ef5c33ce9077cd064def64d626fb1381a103ea3977c056109b831f2d39ab`  
		Last Modified: Fri, 20 Jan 2017 21:53:51 GMT  
		Size: 40.7 MB (40672715 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96cc92115e00df4f56f84397c9fdf8addf763cf21f692ee4dacd62ebb2d38fcb`  
		Last Modified: Fri, 20 Jan 2017 21:53:39 GMT  
		Size: 821.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39b0bd4f809c3fbf0c53ee6f6fe6cffe8aaf7cd572cc99cc5d0d068e6f4f62d5`  
		Last Modified: Fri, 20 Jan 2017 21:53:39 GMT  
		Size: 392.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2811130ab99016f212832b698e67b80a3c75fc3b0982c1fb55121fa555063c1`  
		Last Modified: Fri, 20 Jan 2017 21:53:39 GMT  
		Size: 856.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8467ecbdfd62f2995cb2065b135409c641224bdcd2caee84e6679c603db4976a`  
		Last Modified: Fri, 20 Jan 2017 21:53:39 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a78e8b28e34a0477dec3e1f6ddfbf711c229141c440fe52e6ae9d4b31c6f0c3b`  
		Last Modified: Fri, 20 Jan 2017 23:07:46 GMT  
		Size: 7.0 MB (6957313 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f986ae40aca635be76f8a5d1454b34d1bfb199113048cac5e7ea61648ac5d56`  
		Last Modified: Fri, 20 Jan 2017 23:08:22 GMT  
		Size: 42.9 MB (42861129 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff04cb79d49e8c2094a25fe034fa028037fa77e43bf1fcfe690db5bcdc34d82a`  
		Last Modified: Thu, 09 Feb 2017 19:15:42 GMT  
		Size: 173.3 MB (173300281 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
