## `buildpack-deps:zesty`

```console
$ docker pull buildpack-deps@sha256:f634f12bb68938be6879eb0a5272f5cafed6b164e42d32ae54ec720396005431
```

-	Platforms:
	-	linux; amd64

### `buildpack-deps:zesty` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **260.1 MB (260098397 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a6124b2802a6848ce8bc2a58c48d6153d17610d35c9d3b387866a3db1a82fe44`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 24 Apr 2017 22:58:36 GMT
ADD file:0580427668b7fda8b57b8191d117f8bbda00acd9e921beef670800838c9e57c1 in / 
# Mon, 24 Apr 2017 22:58:52 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 24 Apr 2017 22:58:55 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 24 Apr 2017 22:58:56 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Mon, 24 Apr 2017 22:58:58 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 24 Apr 2017 22:58:58 GMT
CMD ["/bin/bash"]
# Mon, 24 Apr 2017 23:21:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Apr 2017 23:22:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Apr 2017 23:24:22 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:6a5614abc69121e3be2e6f070ee104cf18e716d860d5ac8dc7f5d4b0b45d4eeb`  
		Last Modified: Mon, 24 Apr 2017 23:04:56 GMT  
		Size: 37.5 MB (37469402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa4d067130d8e89de718726a2c26184b3906f191139887e034bc53fa2b2a0323`  
		Last Modified: Mon, 24 Apr 2017 23:04:49 GMT  
		Size: 816.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:831c7598833c1494ca1cf9f342daefdfd37f1dabff9518ef579b09fa643c3aa2`  
		Last Modified: Mon, 24 Apr 2017 23:04:49 GMT  
		Size: 446.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a410fc1d3bfe19c7c29a947bcdcd46a44bc2e2756d977ae7a6f154bc22fa92a`  
		Last Modified: Mon, 24 Apr 2017 23:04:49 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3271f041ee12253944506a40ac433c9642778b8f13d54fa782f19dc1f5ee160c`  
		Last Modified: Mon, 24 Apr 2017 23:04:49 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08079e3ac12445fd00928811ce8fe19f2fc552acd95ddfaaaed4420bb518d1af`  
		Last Modified: Mon, 24 Apr 2017 23:37:48 GMT  
		Size: 7.6 MB (7569871 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:552e4243cac1260b9a042ca293f67f57811f28156b995d6995de212822d297ae`  
		Last Modified: Mon, 24 Apr 2017 23:38:34 GMT  
		Size: 44.0 MB (43955533 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55801a59defa5d7ffab5fc4c030b3ddd68f84db0b24de5a5a39d94a0885dc40d`  
		Last Modified: Mon, 24 Apr 2017 23:39:41 GMT  
		Size: 171.1 MB (171101316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
