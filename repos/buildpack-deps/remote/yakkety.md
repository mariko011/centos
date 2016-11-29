## `buildpack-deps:yakkety`

```console
$ docker pull buildpack-deps@sha256:63284c683384c7f0f163965be2e06087c975d8409098a27299f36fc84f0e22d6
```

-	Platforms:
	-	linux; amd64

### `buildpack-deps:yakkety` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **256.5 MB (256547489 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:223f319f34b5ea8d9a15170d191cb972afc7f2609ce12c9f735e4bb2273e49e6`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 29 Nov 2016 20:04:51 GMT
ADD file:77267db1a2bb96473690078902161cec29093c61eb5fc81bc3257fbc5b3bf29c in / 
# Tue, 29 Nov 2016 20:04:52 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 29 Nov 2016 20:04:53 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 29 Nov 2016 20:04:55 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 29 Nov 2016 20:04:56 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 29 Nov 2016 20:04:56 GMT
CMD ["/bin/bash"]
# Tue, 29 Nov 2016 22:19:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 29 Nov 2016 22:19:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 29 Nov 2016 22:29:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:97ad77101e35e988a8977420f2590d5ea7a1178a4b262a5f547cb7fa2264fd4b`  
		Last Modified: Tue, 29 Nov 2016 20:09:44 GMT  
		Size: 40.6 MB (40608988 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:782edfa648e788016ca402d1a69816c399b004767c9b665c3a908d3169e29391`  
		Last Modified: Tue, 29 Nov 2016 20:09:32 GMT  
		Size: 826.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:851dc20194f2d960480b24a826047467bcb3176940c15be88f9327c603c77183`  
		Last Modified: Tue, 29 Nov 2016 20:09:32 GMT  
		Size: 445.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58de67b64a248820b221a561d7920c04fc1775249cf0523f771849d5a132c11a`  
		Last Modified: Tue, 29 Nov 2016 20:09:32 GMT  
		Size: 864.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12d65e14203f573f153b8ec91879d75519b046cb855883c299076735191c074b`  
		Last Modified: Tue, 29 Nov 2016 20:09:32 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32db96c59a6605bbc728aeae71419015b2f7ba34761f5395a274992316539361`  
		Last Modified: Tue, 29 Nov 2016 22:35:19 GMT  
		Size: 6.9 MB (6864457 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b64939a6b5029c6d8c5bdb22e21c1371ecf70fe83ab44c6ec4632722bc9b1285`  
		Last Modified: Tue, 29 Nov 2016 22:36:00 GMT  
		Size: 42.4 MB (42394381 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97d7f7256856a36c09fce57a0da8a7489760f9413dc1bc1e2e73411b1828d056`  
		Last Modified: Tue, 29 Nov 2016 22:40:04 GMT  
		Size: 166.7 MB (166677366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
