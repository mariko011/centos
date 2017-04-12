## `buildpack-deps:zesty`

```console
$ docker pull buildpack-deps@sha256:5481c12fc993f1af0c0a683143d17a011c8cd9470b28e4b482a0cc41d55e9420
```

-	Platforms:
	-	linux; amd64

### `buildpack-deps:zesty` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **254.6 MB (254574031 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:860e9c6584b2d65a6dff161c7e23f5216a5defad895d6287fec85909b904e2d9`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 12 Apr 2017 21:07:37 GMT
ADD file:b4fae90db905f0b1d13915ca9dd8481eeb9113102703cde8f061cd9a34531100 in / 
# Wed, 12 Apr 2017 21:07:39 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 12 Apr 2017 21:07:41 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 12 Apr 2017 21:07:42 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 12 Apr 2017 21:07:43 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 12 Apr 2017 21:07:44 GMT
CMD ["/bin/bash"]
# Wed, 12 Apr 2017 21:57:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 12 Apr 2017 21:57:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 12 Apr 2017 21:59:58 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:c425a4293a54b2339b8c163b2667bd243dce235c7a4819b52676c8dc9bc2ed2b`  
		Last Modified: Wed, 12 Apr 2017 21:14:47 GMT  
		Size: 36.4 MB (36406351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3d07380b513ebe880c4f7f1b95d5d0fe904c3684feb6faf4255299eaad5153c`  
		Last Modified: Wed, 12 Apr 2017 21:14:37 GMT  
		Size: 823.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf1780e996999e062e7fe3d3be9c3054c91aa9e45855e3266973dfab814a769c`  
		Last Modified: Wed, 12 Apr 2017 21:14:37 GMT  
		Size: 443.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:287ab591ade7e8546f8bd13703c3f5eb57cd088ffc99ca4fcef70b1452e34acc`  
		Last Modified: Wed, 12 Apr 2017 21:14:37 GMT  
		Size: 860.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25af23e064d341946147e3042919b2c9bccf10e3f76c13577ab77a9fbe1a9115`  
		Last Modified: Wed, 12 Apr 2017 21:14:37 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d14c6ff6a9a5fc3bb23f12686b1c809d8bc2749a21f61e7424180e215e2f45c`  
		Last Modified: Wed, 12 Apr 2017 22:20:29 GMT  
		Size: 7.4 MB (7393292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91020edd040104d46ad5d8dfb039ca17c3b441a2a8203fd6ce65d19368e7feb4`  
		Last Modified: Wed, 12 Apr 2017 22:21:33 GMT  
		Size: 43.2 MB (43213151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:726f8be38c3399e07da27f20c4323c90ef95ecb208cf61317c723ed7cc0aeb6f`  
		Last Modified: Wed, 12 Apr 2017 22:24:32 GMT  
		Size: 167.6 MB (167558949 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
