## `buildpack-deps:zesty`

```console
$ docker pull buildpack-deps@sha256:3f1c009f223afc3ef9260def84fe6f97686846e27b9f6cd7ab2227a5ed700367
```

-	Platforms:
	-	linux; amd64

### `buildpack-deps:zesty` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **260.4 MB (260375816 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7840ea652412b4b0c2e236332b3d918fea5da1f269629d495edb94a259158ea5`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 02 Jun 2017 16:18:19 GMT
ADD file:8a34103fd0d5ba2249a68982a5b014f98a23ac4c0aa5272edc50fd43ed815058 in / 
# Fri, 02 Jun 2017 16:18:20 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 02 Jun 2017 16:18:22 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 02 Jun 2017 16:18:23 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 02 Jun 2017 16:18:25 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 02 Jun 2017 16:18:26 GMT
CMD ["/bin/bash"]
# Fri, 02 Jun 2017 17:21:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 02 Jun 2017 17:22:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 02 Jun 2017 17:23:46 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:3a60afdc1b87f7442bee5d2f735e0dea80d10f509cbc50b5b7bb6e5db03df044`  
		Last Modified: Fri, 02 Jun 2017 16:27:50 GMT  
		Size: 37.7 MB (37730783 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0d0385528d58296244ebf6fdf45c8fc710618b95c6fcaed5aa37f5a59a58a67`  
		Last Modified: Fri, 02 Jun 2017 16:27:33 GMT  
		Size: 817.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10d008b46e10bab6283606ce8dc497db29d84123a5abe373273c5ea859969e74`  
		Last Modified: Fri, 02 Jun 2017 16:27:33 GMT  
		Size: 440.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:866eb2fcfdf00d1d079e44ac1da049d40f43448941dc015308ac62148d2ee6ba`  
		Last Modified: Fri, 02 Jun 2017 16:27:33 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e45f7c925a98e816a67df94e506248441a913c7b5664908a17f5ab6d73b8a186`  
		Last Modified: Fri, 02 Jun 2017 16:27:34 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8776d6ed762325e16a436720e9e0323c960e7edfcae101685a5e87f080b11b20`  
		Last Modified: Fri, 02 Jun 2017 17:39:36 GMT  
		Size: 7.6 MB (7570975 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:036aa3fc3bd5424a70a4a884ca6a3608cba99d1adaf43515d3a22cf5c902bc7d`  
		Last Modified: Fri, 02 Jun 2017 17:40:26 GMT  
		Size: 44.0 MB (43957208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9372f8eed01d2ceeffb88e457460d3ddb33dff12571260bd74e7589b2ef29a61`  
		Last Modified: Fri, 02 Jun 2017 17:41:48 GMT  
		Size: 171.1 MB (171114580 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
