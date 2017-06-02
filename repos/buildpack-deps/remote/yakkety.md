## `buildpack-deps:yakkety`

```console
$ docker pull buildpack-deps@sha256:67dac61d73b340f99715c3500e880ebf1efb77de2a6f193eb12243540069d578
```

-	Platforms:
	-	linux; amd64

### `buildpack-deps:yakkety` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **263.0 MB (263040146 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d1bdf72335dad4514dffca1ba56696dfc751a9c1111b2e4a4eb107fb62c5de24`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 02 Jun 2017 16:17:26 GMT
ADD file:0ef16a3f41673e08936332e3fc6e0f274347d10b1dd46b5327df0ee18f02e8b3 in / 
# Fri, 02 Jun 2017 16:17:27 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 02 Jun 2017 16:17:29 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 02 Jun 2017 16:17:30 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 02 Jun 2017 16:17:32 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 02 Jun 2017 16:17:33 GMT
CMD ["/bin/bash"]
# Fri, 02 Jun 2017 17:16:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 02 Jun 2017 17:17:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 02 Jun 2017 17:19:39 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:62f959364870c00a62465c8fd1e66042521cfd1295a3b9e4b974c68f6571753d`  
		Last Modified: Fri, 02 Jun 2017 16:25:47 GMT  
		Size: 42.6 MB (42623555 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:636f405834a6531db41aa7575e05311f67686fd194eea885e606027f1bd35ed0`  
		Last Modified: Fri, 02 Jun 2017 16:25:37 GMT  
		Size: 817.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d10a21395fd67fa485eafbf5d01e8432a0b2e17ea882a7144744730ea42d6f3`  
		Last Modified: Fri, 02 Jun 2017 16:25:37 GMT  
		Size: 515.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a1614b55dc6cf1538d3ae1cd59beef15056db1e2a92c4e1364835dcbe10fff3`  
		Last Modified: Fri, 02 Jun 2017 16:25:37 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:613c15d05cfae809241c607929dcbe2329e8beac970b9991d10eed5987ddbd88`  
		Last Modified: Fri, 02 Jun 2017 16:25:37 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20e2023272231e466105234d5f0592ae1ffd8ba104a64c19c91b07e3be13fafd`  
		Last Modified: Fri, 02 Jun 2017 17:36:50 GMT  
		Size: 7.0 MB (7041860 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3adbd9efa29acd7cd7d16b4ed12bda9530a2d3b0bda83250e3fb10282d9c8ca`  
		Last Modified: Fri, 02 Jun 2017 17:37:44 GMT  
		Size: 43.1 MB (43110989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e905e922e5f4a5071d50dcadc31eacebd44befdaf3642d91483b980e9ff23629`  
		Last Modified: Fri, 02 Jun 2017 17:38:55 GMT  
		Size: 170.3 MB (170261394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
