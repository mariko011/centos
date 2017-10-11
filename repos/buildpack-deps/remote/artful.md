## `buildpack-deps:artful`

```console
$ docker pull buildpack-deps@sha256:5a0a0051dd96a674544ac597ef137a9ce27008af4b14e4ff5dc14aad299db4ed
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `buildpack-deps:artful` - linux; amd64

```console
$ docker pull buildpack-deps@sha256:bdf71dd0c20044ac059581475bed95c71d01e46adfa135860e1e6b34d18331a6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **261.2 MB (261239113 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b2ff9794613782d6132b6a09b7556eaf91c6e6001c826b81e124805d5534e1f0`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 10 Oct 2017 20:58:29 GMT
ADD file:817fdd6d6f5cbc7c69b79f45acfae07ae6671bcc0ddc382f585fba40851cd33e in / 
# Tue, 10 Oct 2017 20:58:30 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 10 Oct 2017 20:58:30 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 20:58:31 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 10 Oct 2017 20:58:32 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 10 Oct 2017 20:58:32 GMT
CMD ["/bin/bash"]
# Tue, 10 Oct 2017 21:26:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 21:26:59 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 10 Oct 2017 21:27:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 21:28:46 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:440fbc233b27ffe2cc20ec0be114c43c7acf6a04b36a3bf6ce58d5cd95b78cc4`  
		Last Modified: Tue, 10 Oct 2017 20:59:37 GMT  
		Size: 39.2 MB (39155564 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca3790c3240ff69b15d64b412f3732c718ca50f2a462fe6f5eb0ce545ffc69d5`  
		Last Modified: Tue, 10 Oct 2017 20:59:30 GMT  
		Size: 832.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:408cac6e9029f025b3f65fc638a9d2af505914202ddbeaf06dd721ae1dd17b87`  
		Last Modified: Tue, 10 Oct 2017 20:59:31 GMT  
		Size: 400.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e76ce51acfddce76f1e3502d0998371fa72cfeb4d72999b93399a7ebecb157f9`  
		Last Modified: Tue, 10 Oct 2017 20:59:31 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:220c15fc5b9df59745e579e43ac7dfb473f5290615615d4ad84633e3293f6c09`  
		Last Modified: Tue, 10 Oct 2017 20:59:30 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f041aba4769cceff0b1483dfee061cdd0727ab8531a53fee404c13808bb1fce7`  
		Last Modified: Tue, 10 Oct 2017 21:39:21 GMT  
		Size: 6.0 MB (6034627 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7737c89f8ebcc8248505d15b33ab133589fafb6ef4c56d7ffb6aa9bd2b5fc5ee`  
		Last Modified: Tue, 10 Oct 2017 21:39:45 GMT  
		Size: 45.7 MB (45697581 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1668b1c24aed5b4c47ffe5bf385309b6c2c75742caa597f24e9a3df4018cdc25`  
		Last Modified: Tue, 10 Oct 2017 21:40:36 GMT  
		Size: 170.3 MB (170349093 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:artful` - linux; arm variant v7

```console
$ docker pull buildpack-deps@sha256:0a36d6c510f7051e29c261c537b45e91704b7fda26a02ffb47e265acf29e5b65
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **232.6 MB (232615089 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0e3c8f5c5f272e1a8df4e3df3059661292e9177b5220fd2143398767351cfe1c`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 11 Oct 2017 12:50:35 GMT
ADD file:44bded50026536e6404b8fd6790895c1a1f9080df1f619f4a0dffb8b395f2c89 in / 
# Wed, 11 Oct 2017 12:50:36 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 11 Oct 2017 12:50:37 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 12:50:37 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 11 Oct 2017 12:50:38 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 11 Oct 2017 12:50:38 GMT
CMD ["/bin/bash"]
# Wed, 11 Oct 2017 13:09:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 13:09:17 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 11 Oct 2017 13:09:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 13:11:11 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:2a130a97d29a1726a93edaa3d4a79747413467b42e24c89636848828cf7615d7`  
		Last Modified: Wed, 11 Oct 2017 12:51:49 GMT  
		Size: 35.2 MB (35232878 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:572cc78d70415914a9a146d59f847572bb21281ceea870a87980f59f25abaa44`  
		Last Modified: Wed, 11 Oct 2017 12:51:40 GMT  
		Size: 841.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6b8395ea271db7d32b91e3497dd467ff44d76be79402d9ddff3040388ea301c`  
		Last Modified: Wed, 11 Oct 2017 12:51:40 GMT  
		Size: 389.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d120de3607f8726977c488b2b0566cf524df3b505bbd346d75ab7bcccc753acf`  
		Last Modified: Wed, 11 Oct 2017 12:51:41 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2c8840f6bdaf6d0d0ffa0209bea259d0429513d785bd0ac1f50eec2c766a3df`  
		Last Modified: Wed, 11 Oct 2017 12:51:40 GMT  
		Size: 186.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77a670016b8735b77cc945b655c99c0499b75fec6e7648437cb2cc837c7c9909`  
		Last Modified: Wed, 11 Oct 2017 13:15:36 GMT  
		Size: 5.1 MB (5101434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41cffc87a1ccd528b04c8e6da58e7e88b795730ed2e33c4a5e63d459014387cd`  
		Last Modified: Wed, 11 Oct 2017 13:16:01 GMT  
		Size: 41.9 MB (41860729 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c865d2666c7037e071093830fcbafb58ee0e3cc60376296879c18133a7d3faa7`  
		Last Modified: Wed, 11 Oct 2017 13:16:51 GMT  
		Size: 150.4 MB (150417779 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:artful` - linux; arm64 variant v8

```console
$ docker pull buildpack-deps@sha256:79d56e322cfee09a790d9bd6f7fe510945482bdfadaa13509f2bf83cf67b3000
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **245.1 MB (245051494 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a99e211bf78948a6f77fafa79bf88ac27095aaf093a06a705a200cde0d267fd2`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 11 Oct 2017 14:00:43 GMT
ADD file:602692c8dc1af37db55e6284244ffa55353c78df4a8cfa3b858f3d334ebc44b8 in / 
# Wed, 11 Oct 2017 14:00:45 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 11 Oct 2017 14:00:46 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 14:00:48 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 11 Oct 2017 14:00:49 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 11 Oct 2017 14:00:50 GMT
CMD ["/bin/bash"]
# Wed, 11 Oct 2017 14:23:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 14:23:28 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 11 Oct 2017 14:24:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 14:37:39 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:21d21f8952968904f80d411ab2a10c2ab1eba399f754269b6d37c48b681d5653`  
		Last Modified: Wed, 11 Oct 2017 14:02:54 GMT  
		Size: 36.1 MB (36123797 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58a0f12762bdacd25bf957952939d87df8a62880f8d3ffc0ce650962aa0836cd`  
		Last Modified: Wed, 11 Oct 2017 14:02:41 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fda691beb0448f3744f47b25ffe8de19121b7aa64e7e888ef5ba7602469ebf85`  
		Last Modified: Wed, 11 Oct 2017 14:02:41 GMT  
		Size: 377.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01223b051d0167c4afee79823c0952baec141f3f99002afc65676188b84ea1b4`  
		Last Modified: Wed, 11 Oct 2017 14:02:41 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cc84e353ec2edbad98d53adf7c324f9f8d389fcffb4b6aecb048291d059114d`  
		Last Modified: Wed, 11 Oct 2017 14:02:42 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88bf35d5780487d7a1acd595c68de3a3f3907f926da8a169fc6a6131ef7c016e`  
		Last Modified: Wed, 11 Oct 2017 14:53:53 GMT  
		Size: 5.3 MB (5298691 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2d07546acccd26772d20893ef44e1e6699017643984aad581c5610b2503e9d1`  
		Last Modified: Wed, 11 Oct 2017 14:54:27 GMT  
		Size: 43.9 MB (43920985 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2c663a80f5f9997d6bf896b1f39b6990ee96674b7a4ac6c9e5c4fb3e1394a87`  
		Last Modified: Wed, 11 Oct 2017 14:56:55 GMT  
		Size: 159.7 MB (159705779 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:artful` - linux; 386

```console
$ docker pull buildpack-deps@sha256:11eef2968675209d51cf02a8ed7c4054d56444376f4b4f4f40f5f5bff67bf08a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **263.1 MB (263102771 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6ffdd77b74df9af13367c98f664a6673d5c93b450e04e6d6f4c6812260edea9b`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 11 Oct 2017 03:38:13 GMT
ADD file:6d6d312ff95936842dda8a466896db698826440b3e66baed9ed2eeaef0bafe5b in / 
# Wed, 11 Oct 2017 03:38:15 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 11 Oct 2017 03:38:15 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 03:38:16 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 11 Oct 2017 03:38:17 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 11 Oct 2017 03:38:21 GMT
CMD ["/bin/bash"]
# Wed, 11 Oct 2017 04:00:14 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 04:00:14 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 11 Oct 2017 04:02:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 04:07:40 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:f21c96d337ca5b0f1c144aef5fa8a4b6bd3083bb21bb3dcecb47b2765121ea30`  
		Last Modified: Wed, 11 Oct 2017 03:42:42 GMT  
		Size: 39.8 MB (39848781 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4efde20fbe9202548fb7c4004874ffbd2c4fbd216d41e96c4073f8da26561606`  
		Last Modified: Wed, 11 Oct 2017 03:42:32 GMT  
		Size: 837.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca42b809358a5c230d779fb879b10a6e4f55604496ecfba66bf6feaab4266533`  
		Last Modified: Wed, 11 Oct 2017 03:42:33 GMT  
		Size: 392.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c509b05a3bd0c7ba8b51c127cc13a83e0deb4949257aab5682df78d47a3cf55b`  
		Last Modified: Wed, 11 Oct 2017 03:42:33 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b33ecc0c60e054bc1f145a22a833289eb95ced1e89f34d6822771b6cc0d89fe2`  
		Last Modified: Wed, 11 Oct 2017 03:42:32 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b15bfd724890e773b65871b60c7b7b0d71217f79a8ced3adb8a267db17c11592`  
		Last Modified: Wed, 11 Oct 2017 04:22:18 GMT  
		Size: 6.1 MB (6099707 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0a35b3e3dc4283aeac4b0ba517c67651e49609de50ee7b89c20bd8c82d7c111`  
		Last Modified: Wed, 11 Oct 2017 04:22:43 GMT  
		Size: 47.3 MB (47290917 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ca64a66876df91129753f399b64b7fe15a57ca6b9ce5bb1ca876d4bb44020bc`  
		Last Modified: Wed, 11 Oct 2017 04:23:32 GMT  
		Size: 169.9 MB (169861120 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:artful` - linux; ppc64le

```console
$ docker pull buildpack-deps@sha256:90f5227b35be214b34fbc47ab36e1bc75c5bb04a6f6614bb79de1795bf82e41c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **280.3 MB (280306738 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9300108419a775d592d1c91f1fd7783129316d5024877effaa72fcf8d70b25e7`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 11 Oct 2017 02:39:31 GMT
ADD file:f059c5050f2daefea81dd582ee2327e1d133b0512aa87f8159d7b44645120a15 in / 
# Wed, 11 Oct 2017 02:39:40 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 11 Oct 2017 02:40:00 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 02:40:09 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 11 Oct 2017 02:40:33 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 11 Oct 2017 02:40:37 GMT
CMD ["/bin/bash"]
# Wed, 11 Oct 2017 03:20:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 03:20:46 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 11 Oct 2017 03:24:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 03:48:48 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:260e268d8c3c260a0ae56cae646fff61572d772b43539399f68720e4bb677aac`  
		Last Modified: Wed, 11 Oct 2017 02:43:34 GMT  
		Size: 42.0 MB (41961096 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec506a98a8b4137f34d2713286b36e402c0e44995fe791c8cf75a7bcc92381fd`  
		Last Modified: Wed, 11 Oct 2017 02:43:23 GMT  
		Size: 845.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7e2be654d1a0bd32cd05595b9a18a370824546fa1e2112a1e91e4d5a7464a58`  
		Last Modified: Wed, 11 Oct 2017 02:43:23 GMT  
		Size: 376.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:153559c765cc3d72b1bbb7d4dfc327beefd22dd3d2ee681c6c1341e4cd4ef15c`  
		Last Modified: Wed, 11 Oct 2017 02:43:23 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffc2c66e90c4292c80824ccfc7a4be8e8146752da1bf292f1fc48c74cff0cf05`  
		Last Modified: Wed, 11 Oct 2017 02:43:23 GMT  
		Size: 189.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50a79460dff814c07d8335838bf88b6a3597fa7f1971255f353f23b59622b018`  
		Last Modified: Wed, 11 Oct 2017 04:16:08 GMT  
		Size: 5.9 MB (5943185 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae983c2bd84de70239316bf5f4289f52df37a7af6342bb8f7c43631181c8b9e1`  
		Last Modified: Wed, 11 Oct 2017 04:16:37 GMT  
		Size: 53.2 MB (53225973 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1da6472db2dd4a7b6a894d31295ce4f6181ea816a29fec1201c76e33a4413e3c`  
		Last Modified: Wed, 11 Oct 2017 04:17:35 GMT  
		Size: 179.2 MB (179174220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:artful` - linux; s390x

```console
$ docker pull buildpack-deps@sha256:c50fad6083e6f350a15b3d0ef330c3fac7ff5a45c184c4e080da33473b409b48
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **250.5 MB (250549806 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:13ec3516ea295695ff208b279cff9f2b0f0b0b1dbc6ed5e5e9774789384ee625`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 11 Oct 2017 13:15:31 GMT
ADD file:60730430a11bf23dc4ecece5b5e326afd465113727a51c9e0602a40aadce155d in / 
# Wed, 11 Oct 2017 13:15:32 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 11 Oct 2017 13:15:32 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 13:15:33 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 11 Oct 2017 13:15:34 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 11 Oct 2017 13:15:34 GMT
CMD ["/bin/bash"]
# Wed, 11 Oct 2017 13:33:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 13:33:02 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 11 Oct 2017 13:33:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 13:34:36 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:743e4e31ae0786a3a4a54abebd359bf6ccc479f9cd4e4c8cb4856627756882a7`  
		Last Modified: Wed, 11 Oct 2017 13:16:29 GMT  
		Size: 38.1 MB (38109352 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fccfbb04a00e1ebfd3804266506211e2b1b091a09846d4b66011fd68f115470`  
		Last Modified: Wed, 11 Oct 2017 13:16:21 GMT  
		Size: 842.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bda1ced3a2a36de6d7c454843ce339c844995d040e3af8eb2f253564e4ef636`  
		Last Modified: Wed, 11 Oct 2017 13:16:21 GMT  
		Size: 376.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca385dd1f141c57cf6f5fd84e1b8e9129ade344c1078d76c85320982620acf71`  
		Last Modified: Wed, 11 Oct 2017 13:16:21 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61bc0763441bcd5da3033bbdb84e2967778165ca1d1dd820fbb6446edcb5b4c3`  
		Last Modified: Wed, 11 Oct 2017 13:16:21 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a38af0dd0963aaf92da91259e5c163ce0f2b8c0769bd145fde2cf853ff69973`  
		Last Modified: Wed, 11 Oct 2017 13:37:32 GMT  
		Size: 5.7 MB (5730816 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e93143f1d1459965cc93209de5318ace7a4c4532171ec5bb373292880245c419`  
		Last Modified: Wed, 11 Oct 2017 13:37:49 GMT  
		Size: 45.6 MB (45632880 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c2a2684bbdb433736bf4a17c49b482052ea781e54a1904159ef5d2c3ecc8a52`  
		Last Modified: Wed, 11 Oct 2017 13:38:26 GMT  
		Size: 161.1 MB (161074524 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
