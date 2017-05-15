## `buildpack-deps:yakkety`

```console
$ docker pull buildpack-deps@sha256:c1148980375c88d39cfa93000985d3a9c8e7bb477c983efc7536e369086c2c7c
```

-	Platforms:
	-	linux; amd64

### `buildpack-deps:yakkety` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **263.0 MB (263006497 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1f8e38c089cef79e66be0cc20d94091ac904b9aab12af901e0a815328a0df768`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 15 May 2017 16:44:25 GMT
ADD file:9e2eabb7b05f940d68140837f1ece7fc6850820bd4122716910cff0bf68f0aeb in / 
# Mon, 15 May 2017 16:44:27 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 15 May 2017 16:44:28 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 15 May 2017 16:44:30 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Mon, 15 May 2017 16:44:31 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 15 May 2017 16:44:32 GMT
CMD ["/bin/bash"]
# Mon, 15 May 2017 17:27:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 15 May 2017 17:28:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 15 May 2017 17:31:23 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:869d7e479fb806bc6dd4a699dbabbe1195e8aaaf0d93db34cd95d6ed99f1e72c`  
		Last Modified: Mon, 15 May 2017 16:50:49 GMT  
		Size: 42.6 MB (42594839 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcde8cc75da46cf424a03c821ce9873ab3a54263c9d5dcfab87e95993650e820`  
		Last Modified: Mon, 15 May 2017 16:50:43 GMT  
		Size: 816.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9d18efd03befb8d6d68e2ea3d2008c5bb827a9f322d8b8c4540a05c003d992f`  
		Last Modified: Mon, 15 May 2017 16:50:43 GMT  
		Size: 516.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95ed9114795ec37d3e3bb7184f91d295a16cafaef52eb4209e8e49e1519717b0`  
		Last Modified: Mon, 15 May 2017 16:50:43 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63ec97b2b19c22d93ec61e470d48209e569f0fb1d56335da1edc08c4b0257e5c`  
		Last Modified: Mon, 15 May 2017 16:50:43 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0ae77bda9e62fba086d540a9148d6a214cc693f48b62899d9e91c51f59d531b`  
		Last Modified: Mon, 15 May 2017 17:59:11 GMT  
		Size: 7.0 MB (7041960 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2e61226e53d6296c00a689d3d8eb1eac4aa26aefc4369bc8888089a66a0948e`  
		Last Modified: Mon, 15 May 2017 18:00:00 GMT  
		Size: 43.1 MB (43110952 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9004df51c52c4aa61e28c28f433b1dba022d5ee93801178fb9948633ba82f5e3`  
		Last Modified: Mon, 15 May 2017 18:01:58 GMT  
		Size: 170.3 MB (170256401 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
