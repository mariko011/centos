## `buildpack-deps:yakkety`

```console
$ docker pull buildpack-deps@sha256:b56092dde89ab2729eec49ad6d990dd98002050167646f539a861474f94f18a7
```

-	Platforms:
	-	linux; amd64

### `buildpack-deps:yakkety` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **262.9 MB (262925631 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c819faed7ec3f186d030b736ef2ea669778c4d6de732a75cfab215d82108b167`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 24 Apr 2017 22:57:48 GMT
ADD file:06609423c35881998d648352702e91a90aac71a764d875e8548774906d24447c in / 
# Mon, 24 Apr 2017 22:57:51 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 24 Apr 2017 22:57:53 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 24 Apr 2017 22:57:56 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Mon, 24 Apr 2017 22:57:58 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 24 Apr 2017 22:57:59 GMT
CMD ["/bin/bash"]
# Mon, 24 Apr 2017 23:17:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Apr 2017 23:18:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Apr 2017 23:20:01 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:c33899b2bc22cb5fa3fd6762134c9ae61a02d82c40e4e505b2217a7128fecf85`  
		Last Modified: Mon, 24 Apr 2017 23:03:52 GMT  
		Size: 42.5 MB (42504878 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86c357a45506793dea5b84d4ba9f5f2ae1702d8d8cc684189ab4983a338b5369`  
		Last Modified: Mon, 24 Apr 2017 23:03:45 GMT  
		Size: 816.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c9ad21462d47b4dce2d58dfdcea2b0a91e07eed747909103a2880354f7dd882`  
		Last Modified: Mon, 24 Apr 2017 23:03:45 GMT  
		Size: 516.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f53272eb5cbaf78e89734e2b4467fea5d631b426042ca7349ecf22b5162d2880`  
		Last Modified: Mon, 24 Apr 2017 23:03:46 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0367354b20baabf1bd0e5336b500585eb5d53978297469bcd7c6a5854394a6de`  
		Last Modified: Mon, 24 Apr 2017 23:03:46 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40d5021fc7109ca00adce3df5d58f7a1673aad9e090ae4cabbf1b4b3644600d9`  
		Last Modified: Mon, 24 Apr 2017 23:35:00 GMT  
		Size: 7.0 MB (7041649 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5133eb957a2c06252eb651a169a1af2270fcdc02a43c5d5144e9a2c8eb378ba9`  
		Last Modified: Mon, 24 Apr 2017 23:35:40 GMT  
		Size: 43.1 MB (43108492 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:018a0605164f5eba65da5ed960c33a847d23e3b11a3fd03bdbf46ccac3b7a668`  
		Last Modified: Mon, 24 Apr 2017 23:37:09 GMT  
		Size: 170.3 MB (170268264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
