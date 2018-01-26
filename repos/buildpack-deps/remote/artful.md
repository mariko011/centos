## `buildpack-deps:artful`

```console
$ docker pull buildpack-deps@sha256:b74b9022a2fece70d7d84415e28efd8a9db32625fa16b9b1ccf2c768847f3ef4
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
$ docker pull buildpack-deps@sha256:59e7f4ca7f18523cce7d52b5e1072a870b5a46551ce7d3f487eda9e9ad19b19e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **262.4 MB (262372007 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:15aabadeaee692c9484e3b740ae901e87bbc52ba0211cede780128dd16a334c8`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 25 Jan 2018 18:03:48 GMT
ADD file:ec58ed9c4227aa7839c3472e7f02851c76b81bd0c3e6b946871f919de8a6af99 in / 
# Thu, 25 Jan 2018 18:03:49 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 25 Jan 2018 18:03:50 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 25 Jan 2018 18:03:51 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 25 Jan 2018 18:03:52 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 25 Jan 2018 18:03:52 GMT
CMD ["/bin/bash"]
# Thu, 25 Jan 2018 22:47:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 25 Jan 2018 22:47:50 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 25 Jan 2018 22:49:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 25 Jan 2018 22:53:57 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:18c8f805be45ea0f336b99a253692a8c974b07369f94f769feaa663e74d62881`  
		Last Modified: Thu, 25 Jan 2018 18:24:28 GMT  
		Size: 40.0 MB (39976211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7869fb3b98c44f3394fd0386abc807b877b34b2b2ba918707fa2729748d45d6`  
		Last Modified: Thu, 25 Jan 2018 18:24:15 GMT  
		Size: 846.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f75000414ffb1e6f1b193b08d62d1367e9dff9290dd758f507f4ce88d655af8d`  
		Last Modified: Thu, 25 Jan 2018 18:24:15 GMT  
		Size: 616.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c27c5092058d85ad4e9c133a1ce883777890baae684f6f43c8de9cc5650b066c`  
		Last Modified: Thu, 25 Jan 2018 18:24:15 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:add65c7404ea79525338412ae724d5b866d1c53cd3ce592cbaac85cef6093f61`  
		Last Modified: Thu, 25 Jan 2018 18:24:15 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:077d47163a8169582edd522db971ed5c21ba4b192240f0272cc39b370f3934e1`  
		Last Modified: Thu, 25 Jan 2018 23:37:10 GMT  
		Size: 6.1 MB (6056396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2bf7912836d599e5293e050379b55b0f21d709a694d4efc79841212cbcb718d`  
		Last Modified: Thu, 25 Jan 2018 23:37:44 GMT  
		Size: 45.7 MB (45742104 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7dff99104cbf027d7b0fbd0b1c27f99305b5c5bd3ba413ffe501cb823a6981c7`  
		Last Modified: Thu, 25 Jan 2018 23:38:46 GMT  
		Size: 170.6 MB (170594819 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:artful` - linux; arm variant v7

```console
$ docker pull buildpack-deps@sha256:139fd1d3437e39e5cea0ad3a953f2f7de54b9e4d1ecf4ec3e9759be6d2427b38
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **233.4 MB (233407575 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:75b78a856782ccc9315da6c7dd373c5e2007a0523fe7b007d4d3f014019fb8a9`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 26 Jan 2018 13:50:36 GMT
ADD file:16c5fbf097c774c1aeef960ef6ab8c4ad71fff4f1af49a15c70d17ce943cc9e2 in / 
# Fri, 26 Jan 2018 13:50:37 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 26 Jan 2018 13:50:38 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 26 Jan 2018 13:50:39 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 26 Jan 2018 13:50:39 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 26 Jan 2018 13:50:40 GMT
CMD ["/bin/bash"]
# Fri, 26 Jan 2018 14:11:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 26 Jan 2018 14:11:24 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 26 Jan 2018 14:12:02 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 26 Jan 2018 14:15:07 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:add171a4aa5d25515d1d289e1042587a541dbe262ff9a116c9384f4022b6b47d`  
		Last Modified: Fri, 26 Jan 2018 13:52:24 GMT  
		Size: 35.8 MB (35785933 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d044d57ca34ebbb756fbe9976fc39f04f306c5a1b9398ff9380f76357b38bf45`  
		Last Modified: Fri, 26 Jan 2018 13:52:15 GMT  
		Size: 844.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10a5494025075f7dfebcd3582394f74075ec0f49fc54741dd727d0a80e1d7a20`  
		Last Modified: Fri, 26 Jan 2018 13:52:15 GMT  
		Size: 609.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d418e86e1953e34729085053d7de7a8ee0c5b8243cefe81e23fedcc982a0a606`  
		Last Modified: Fri, 26 Jan 2018 13:52:15 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:894b58f4939abe46aee4804244663ba60b559b870a54bca8f2bf79dc0681a14c`  
		Last Modified: Fri, 26 Jan 2018 13:52:17 GMT  
		Size: 189.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8223c328ec4de3db1788c3b73043c145f0a63dd9b93165af5aa908bcf151590`  
		Last Modified: Fri, 26 Jan 2018 14:32:20 GMT  
		Size: 5.1 MB (5098961 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a51defff311edf26960bc66996ebd312a5ef90734d2c519bcc11e6783695e203`  
		Last Modified: Fri, 26 Jan 2018 14:32:44 GMT  
		Size: 41.9 MB (41851270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0c29ab08d93ce65d8548c594769322df20daa6165cf6ccb122b3a213942e339`  
		Last Modified: Fri, 26 Jan 2018 14:33:35 GMT  
		Size: 150.7 MB (150668916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:artful` - linux; arm64 variant v8

```console
$ docker pull buildpack-deps@sha256:ad7949eae327aa0abea32c341454d5ed150a21196bcfee159939963edbf6a1b8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **246.6 MB (246605780 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:164e615a72cf1dba3ea909069da97e8f40991aa2f4087911c02a83f15f575bca`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 16 Jan 2018 15:00:39 GMT
ADD file:264a9c75a8f3b0d589f56198def6c118f4342e1e3ebceb5fc7414c2cc9a5636a in / 
# Tue, 16 Jan 2018 15:00:41 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 16 Jan 2018 15:00:42 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 15:00:44 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 16 Jan 2018 15:00:45 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 16 Jan 2018 15:00:46 GMT
CMD ["/bin/bash"]
# Tue, 16 Jan 2018 15:24:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 15:24:13 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 16 Jan 2018 15:25:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 15:37:37 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:e3b4cb52ecb7af5532afedb2b77f0543885ad2fd1300306143ccb38bd9d147a6`  
		Last Modified: Mon, 15 Jan 2018 14:39:55 GMT  
		Size: 36.9 MB (36867642 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93861abd7bd66e61ec24dfc51775e7c8898b1dada75e3dd32f08265164347781`  
		Last Modified: Tue, 16 Jan 2018 15:02:47 GMT  
		Size: 841.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76edc039c0ad4f6f153daf2b46dd4d20d22870bacb67177fbd6f91a3c0b138d6`  
		Last Modified: Tue, 16 Jan 2018 15:02:49 GMT  
		Size: 535.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:849a8c096a71591750e3239c97777b798ccc0f76b79cdabaead40a2a6cc3387b`  
		Last Modified: Tue, 16 Jan 2018 15:02:48 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ed39cef3c0a630a7cda94353999f0027c341d334a5297750bf32e7fc1caab7a`  
		Last Modified: Tue, 16 Jan 2018 15:02:47 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4eb38ec2f4ed06383c60d487e485c4cb7faee16cb63676c900e421c9eb2a6867`  
		Last Modified: Tue, 16 Jan 2018 16:18:21 GMT  
		Size: 5.3 MB (5332512 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5420cd33f70aca40ef09a5f37ee82391be869d1269d37f68a62d991edd82a5c`  
		Last Modified: Tue, 16 Jan 2018 16:18:51 GMT  
		Size: 43.9 MB (43922121 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f0187567ef5fa5dfb322173230fa82c2540eed1b262d9488386d5cffec9176d`  
		Last Modified: Tue, 16 Jan 2018 16:20:02 GMT  
		Size: 160.5 MB (160481111 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:artful` - linux; 386

```console
$ docker pull buildpack-deps@sha256:e6022727284bbadca1409c78b46399838106e1b4b2c5dff4fe254a45228cb6df
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **264.7 MB (264746486 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d32ca9db190fda60a7194abfada8b00ce86d21f0432804d577ca84907794b0ec`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 26 Jan 2018 04:46:02 GMT
ADD file:8df5954491d410ef706a7ee9777a43b2b4eb537dab6624991120fffa50dbd4a9 in / 
# Fri, 26 Jan 2018 04:46:03 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 26 Jan 2018 04:46:04 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 26 Jan 2018 04:46:04 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 26 Jan 2018 04:46:05 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 26 Jan 2018 04:46:05 GMT
CMD ["/bin/bash"]
# Fri, 26 Jan 2018 07:58:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 26 Jan 2018 07:58:45 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 26 Jan 2018 07:59:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 26 Jan 2018 08:09:30 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:c72cd87dc0a80e71756a6b7d061f860dc89b03038145ead07a9e1c3297480f23`  
		Last Modified: Fri, 26 Jan 2018 05:38:34 GMT  
		Size: 40.8 MB (40788939 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fbaf237fa8472491aded309190fd4d39a17ce8528e910286b3f528238973f0f`  
		Last Modified: Fri, 26 Jan 2018 05:38:18 GMT  
		Size: 839.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:584e47ac45bfb7676978cd82b88996d676c04fef450d81664b62d1bdd10d612f`  
		Last Modified: Fri, 26 Jan 2018 05:38:18 GMT  
		Size: 577.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c88369684dc1e966d2dc8cb45a4207262fff1d61be73eeb1a73149f074aeb59a`  
		Last Modified: Fri, 26 Jan 2018 05:38:18 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d229cb8cf5afa9f212ad5d1af159d811a970e31cb77022568695fa08f529df8`  
		Last Modified: Fri, 26 Jan 2018 05:38:18 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0158c216dafbcda46b9fc6bc5dffdf3cb34345951bb6c960e91ea67d21541957`  
		Last Modified: Fri, 26 Jan 2018 09:39:02 GMT  
		Size: 6.1 MB (6110342 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:919d61362d63b720d1078e4f35e8cb43a7df14e355d6759ee91d1d3504b07c08`  
		Last Modified: Fri, 26 Jan 2018 09:47:44 GMT  
		Size: 47.3 MB (47349238 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f32f8502461627c7a8ababf8e313d9387b2ccc9acd83d40e80807aa184d0ce1`  
		Last Modified: Fri, 26 Jan 2018 09:50:22 GMT  
		Size: 170.5 MB (170495538 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:artful` - linux; ppc64le

```console
$ docker pull buildpack-deps@sha256:b47f195a2d835186de616acbe2d31c6b57f02f71c5d02f20f5a91dd4efa5f585
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **283.3 MB (283300470 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9fb7ad3866f274a25b6241530fff356ee21a6486c774179cc49868639ece3ba6`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 26 Jan 2018 03:39:26 GMT
ADD file:dbc41942f2c0a1878986d510a8b356aba5b8c6a2d6bae0382fa95147e158ed91 in / 
# Fri, 26 Jan 2018 03:39:29 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 26 Jan 2018 03:39:32 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 26 Jan 2018 03:39:37 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 26 Jan 2018 03:39:40 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 26 Jan 2018 03:39:45 GMT
CMD ["/bin/bash"]
# Fri, 26 Jan 2018 04:00:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 26 Jan 2018 04:01:00 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 26 Jan 2018 04:02:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 26 Jan 2018 04:11:36 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:2e46125f5e240ed2ce4b5fc53006238d7841a1ab2302fc8849590378691af042`  
		Last Modified: Fri, 26 Jan 2018 03:41:59 GMT  
		Size: 43.2 MB (43178612 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:167aa3fa99c6922d4aea0a6f9ffbb37d26c54a83cd1321d1645392f5af1cf269`  
		Last Modified: Fri, 26 Jan 2018 03:41:47 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:964fc38588591a61e53b9d7417e2995fff64f41c3503321dcffaf32eb1aaf4b5`  
		Last Modified: Fri, 26 Jan 2018 03:41:47 GMT  
		Size: 581.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ca94695917e8f7cc8d237ec1b13915c27342ae8054d33d20a46cf74dee0ffd3`  
		Last Modified: Fri, 26 Jan 2018 03:41:47 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0402bff2b28216dec30e75567ad2177e38571adf301bb746c717b15d353fbaaa`  
		Last Modified: Fri, 26 Jan 2018 03:41:47 GMT  
		Size: 189.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f80ea885fbfefc5a5ca3c6ca06ee93c292243618c83e5911fc86a89c61449831`  
		Last Modified: Fri, 26 Jan 2018 04:47:01 GMT  
		Size: 6.1 MB (6129664 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be10b54d7f5b434088809ee87e49fbca6fd5160b67a4193a037b78f0bdfef0f8`  
		Last Modified: Fri, 26 Jan 2018 04:47:26 GMT  
		Size: 53.3 MB (53298191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab8f9e3738e973b1ee90d1780e26cf52371f226304d47e43ccf8d01ca9cf6249`  
		Last Modified: Fri, 26 Jan 2018 04:48:25 GMT  
		Size: 180.7 MB (180691531 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:artful` - linux; s390x

```console
$ docker pull buildpack-deps@sha256:187afa83c4743173716624005a45eb0ecee3ae18e5b5862fd44da7313063c43d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **248.2 MB (248217037 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:520750a3e721d7edfb04c534536a2fa503e9bc4502afc1d75ac7e521b89fc724`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 26 Jan 2018 14:15:25 GMT
ADD file:ce2fc343ce9ce59bf14e4d01df5ec72b6954323b0e74bab3d608dc7d9aa89494 in / 
# Fri, 26 Jan 2018 14:15:26 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 26 Jan 2018 14:15:26 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 26 Jan 2018 14:15:26 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 26 Jan 2018 14:15:27 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 26 Jan 2018 14:15:27 GMT
CMD ["/bin/bash"]
# Fri, 26 Jan 2018 14:32:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 26 Jan 2018 14:32:34 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 26 Jan 2018 14:32:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 26 Jan 2018 14:33:53 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:e14223442e09c33da04a729961b6efe41dc6c0559a31acc3780a9527b38c288d`  
		Last Modified: Fri, 26 Jan 2018 14:16:07 GMT  
		Size: 38.7 MB (38697775 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0f0163c96ad8a32651efe3d24296c37e9ac1dacff4f111e16756c1f992d2704`  
		Last Modified: Fri, 26 Jan 2018 14:15:56 GMT  
		Size: 844.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5bf7eff8d6a6b663f50952f04ebaea184f771a69286fa798355ee3efcc9a7707`  
		Last Modified: Fri, 26 Jan 2018 14:15:56 GMT  
		Size: 539.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:223950c60c9c54933018b1dae8b27a2f01f5ff95d286450ac8705e9ef76fe5ff`  
		Last Modified: Fri, 26 Jan 2018 14:15:56 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e5e8977386f8286e8ea57d55cf2d68e4593895a741535ae77908b9ec1dcb9d3`  
		Last Modified: Fri, 26 Jan 2018 14:15:56 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a708f96c30c9dfbd1155ffc8e5baa159554c88c62425421945809b25c3a035b2`  
		Last Modified: Fri, 26 Jan 2018 14:37:49 GMT  
		Size: 5.7 MB (5742152 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01a0314b3e074fdf9383fcd531e3d88a9804fb75fca1abae7bd790114a6f5beb`  
		Last Modified: Fri, 26 Jan 2018 14:38:05 GMT  
		Size: 45.7 MB (45679257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6f70fa42fea8aa6cc815bdbe3c54e16057107e16129199941c84b5312c0e5c3`  
		Last Modified: Fri, 26 Jan 2018 14:38:39 GMT  
		Size: 158.1 MB (158095455 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
