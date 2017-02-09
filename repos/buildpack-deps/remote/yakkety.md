## `buildpack-deps:yakkety`

```console
$ docker pull buildpack-deps@sha256:e0ba9c98ce9aacad7dc3e10f89243b02f8b94d4f75bb96632216ab771d97cac3
```

-	Platforms:
	-	linux; amd64

### `buildpack-deps:yakkety` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **259.2 MB (259200873 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:43bee4373b51123672805b66c3aaa3c7e43e25a0eadea5153251a94c859c8163`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 20 Jan 2017 21:44:28 GMT
ADD file:eef57983bd66e3a118b47ebd754411714df861fd12aa9f292e26583747593d02 in / 
# Fri, 20 Jan 2017 21:44:41 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 20 Jan 2017 21:44:42 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 20 Jan 2017 21:45:01 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 20 Jan 2017 21:45:02 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 20 Jan 2017 21:45:02 GMT
CMD ["/bin/bash"]
# Fri, 20 Jan 2017 22:51:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 20 Jan 2017 22:51:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 09 Feb 2017 18:47:37 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:3a635c0fcefb5e1b7ea3963fb6e6b1124194e5914e7402937308ed44f7758700`  
		Last Modified: Fri, 20 Jan 2017 21:52:24 GMT  
		Size: 40.8 MB (40845445 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf3f7e9b4869ed2f872ffed29cc28109f5e789b37cc2714eed877fbf22ce65fa`  
		Last Modified: Fri, 20 Jan 2017 21:52:12 GMT  
		Size: 821.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad323864e1f85d17700ba6cdd9dfb704129f2bad61ae64c90de31a932ab95293`  
		Last Modified: Fri, 20 Jan 2017 21:52:11 GMT  
		Size: 448.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4d3fc870200efe46f0279de5d616e596980e49ff35ad023e07928fdff7f6d5f`  
		Last Modified: Fri, 20 Jan 2017 21:52:11 GMT  
		Size: 863.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e69d6ff0e5688af3aeefc9af3b6365eaeed61d00ffcc9f5bbef9e998a1440db`  
		Last Modified: Fri, 20 Jan 2017 21:52:11 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27c13053692abb11a4dcc57eb164ace14d6a17e577976f9f0c2ec9ae5d8b183b`  
		Last Modified: Fri, 20 Jan 2017 23:06:47 GMT  
		Size: 6.9 MB (6866291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6ac3e03a2e6df8874844d1e10f67ef43a248f8ca44ff69ceb0bd5b57307ab22`  
		Last Modified: Fri, 20 Jan 2017 23:07:23 GMT  
		Size: 42.4 MB (42395689 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a44afbb98a23db186b11b775f9b0790c7feeb4059af5a57599b985fcce613421`  
		Last Modified: Thu, 09 Feb 2017 19:13:43 GMT  
		Size: 169.1 MB (169091154 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
