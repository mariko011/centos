## `buildpack-deps:precise`

```console
$ docker pull buildpack-deps@sha256:1e11fc79f92c5438031ee5018bc41b85c45a8c9f0c0c632a8cb4ae5f3b3b4607
```

-	Platforms:
	-	linux; amd64

### `buildpack-deps:precise` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **157.3 MB (157258098 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ec0ef8d4413f46e67ea1d9707851995f23038cbe7ea9585a258bddd9e87a6e1`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 30 Aug 2016 17:47:45 GMT
ADD file:d6b1a91e82e43a901a56cf7351a169fde2dcd04e3403a8155af2c15dddfe61ab in / 
# Tue, 30 Aug 2016 17:47:46 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 30 Aug 2016 17:47:47 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 17:47:48 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 30 Aug 2016 17:47:49 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 30 Aug 2016 17:47:49 GMT
CMD ["/bin/bash"]
# Tue, 30 Aug 2016 18:03:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 18:03:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 18:04:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:4bae8cb7faf89c9d322388130ba308bedf824dbaec91f7002663787acd905aa0`  
		Last Modified: Fri, 26 Aug 2016 18:52:23 GMT  
		Size: 39.1 MB (39081874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f6907f8c14cb83ed5bfec5449c6ad02bf6934f11e1316a7b2681c2f0a6aedb9`  
		Last Modified: Mon, 19 Sep 2016 17:01:38 GMT  
		Size: 57.9 KB (57942 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66f8c8a8de764a2eed74be71963e0b34a14fbe6b775aa7e5a13b4f82a515f8b6`  
		Last Modified: Mon, 19 Sep 2016 17:01:40 GMT  
		Size: 423.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:152584f5dd5b53cbdf14cd8521604f223ede3a865a56cbdef1117f146d185376`  
		Last Modified: Mon, 19 Sep 2016 17:01:40 GMT  
		Size: 681.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9cfdc2d88d1e3103377419f4d7685906591c944a4c4f7f440c2c74c1014ccef`  
		Last Modified: Mon, 19 Sep 2016 17:01:38 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db0a8c5b731945bb70dd227d3973fbeda397c5ae2d25b75274011f37a0a6ebed`  
		Last Modified: Mon, 19 Sep 2016 17:10:30 GMT  
		Size: 5.1 MB (5111030 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d46b3ae0ecd47c2d5b8c55109cbd6a6433983b925e6ba04c9ab11e59cecbd9d`  
		Last Modified: Mon, 19 Sep 2016 17:10:42 GMT  
		Size: 30.8 MB (30846515 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fadfb6c1b975c968ec14ca64989366146df3b1ab6e7cbe8075e497e3b5a8f9b6`  
		Last Modified: Mon, 19 Sep 2016 17:10:57 GMT  
		Size: 82.2 MB (82159471 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
