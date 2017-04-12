## `buildpack-deps:xenial`

```console
$ docker pull buildpack-deps@sha256:f2c6520d8e24c5e58eae0b75076286088b5203fb7ff8b192fd5621ad6191df73
```

-	Platforms:
	-	linux; amd64

### `buildpack-deps:xenial` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **230.1 MB (230084547 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7a42bfe09d063e1ac86e341ec7e7e34376ce1a687690f79b3246bcceab6ae7b1`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 12 Apr 2017 21:06:34 GMT
ADD file:b8a2c16d65e533a2bcb5820d2bae70f5a80bd2d8c982c93d9a6cdbf22f8f8ee8 in / 
# Wed, 12 Apr 2017 21:06:36 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 12 Apr 2017 21:06:37 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 12 Apr 2017 21:06:38 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 12 Apr 2017 21:06:40 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 12 Apr 2017 21:06:42 GMT
CMD ["/bin/bash"]
# Wed, 12 Apr 2017 21:49:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 12 Apr 2017 21:50:20 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 12 Apr 2017 21:52:31 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:c62795f78da9ad31d9669cb4feb4e8fba995a299a0b2bd0f05b10fdc05b1f35e`  
		Last Modified: Wed, 12 Apr 2017 21:11:37 GMT  
		Size: 45.6 MB (45562642 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4fceeeb758e5103c39daf44c73404bf476ef6fd6b7a9a11e2260fcc1797c806`  
		Last Modified: Wed, 12 Apr 2017 21:11:24 GMT  
		Size: 823.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c9125a401ae0cf5a5b4128633e7a4e84230d3eb4c541c661618a70e5d29aeff`  
		Last Modified: Wed, 12 Apr 2017 21:11:24 GMT  
		Size: 514.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0062f774e9942f61d13928855ab8111adc27def6f41bd6f7902c329ec836882b`  
		Last Modified: Wed, 12 Apr 2017 21:11:23 GMT  
		Size: 860.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b33fd031facf4d7dd97afeea8a93260c2f15c3e795eeccd8969198a3d52678d`  
		Last Modified: Wed, 12 Apr 2017 21:11:26 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:733bba938e4c6473ddf7435c729b34f12a7a0d7c34dbe121a2a9e92c0596230e`  
		Last Modified: Wed, 12 Apr 2017 22:12:13 GMT  
		Size: 7.2 MB (7170591 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4bb8a4dccd81c1bfc20e52c8d387a2f75e1d1f7f1889ad4647e0bc0e1676005`  
		Last Modified: Wed, 12 Apr 2017 22:13:07 GMT  
		Size: 41.1 MB (41148148 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d54daed0f15c2cc1b0287882d630c186b81446d0e7a73ab06b69ace32b11834`  
		Last Modified: Wed, 12 Apr 2017 22:14:46 GMT  
		Size: 136.2 MB (136200808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
