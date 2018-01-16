## `buildpack-deps:bionic`

```console
$ docker pull buildpack-deps@sha256:1a66de93ee0f53ac800028d2b54c9a2b19e32e31ff7fdd9b28af46f765a5d45b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `buildpack-deps:bionic` - linux; amd64

```console
$ docker pull buildpack-deps@sha256:9994425e3150026aba0b0af42b653c7b4b129d760ac34eba21ff0a9aef5f7d91
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **240.4 MB (240414765 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c321b78c8e9ed0096f183e7923b578a74f77f0dceb4584bea2fbdc0b8a2f467a`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 15 Jan 2018 20:59:40 GMT
ADD file:81c7bdfe2aee6946e562f1aade5ffa848e279abdfd2be64ac847c95ceb8e7fb9 in / 
# Mon, 15 Jan 2018 21:00:17 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 15 Jan 2018 21:00:18 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 15 Jan 2018 21:00:18 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Mon, 15 Jan 2018 21:00:29 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 15 Jan 2018 21:00:29 GMT
CMD ["/bin/bash"]
# Tue, 16 Jan 2018 01:51:30 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 01:51:30 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 16 Jan 2018 01:52:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 01:53:57 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:9dc28067479e2b7c91fa5fec831950029198b4f7f022200ed9b8acfb0c7620f7`  
		Last Modified: Mon, 25 Dec 2017 14:40:20 GMT  
		Size: 35.9 MB (35932715 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f93236311d4c173df39d858435fc953d78dc715241077aab62ea65821596d52`  
		Last Modified: Mon, 15 Jan 2018 21:14:27 GMT  
		Size: 846.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:674d470597e37d03fd7ecadfd9918c2e69bc8c6fb6aca455f9e0123cfd5a2c08`  
		Last Modified: Mon, 15 Jan 2018 21:14:26 GMT  
		Size: 398.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:616c777d0c1c96037214ba208d86d4bd9990cf28d13755d88003dcaf98e29939`  
		Last Modified: Mon, 15 Jan 2018 21:14:26 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:787cd08ca56c2d9fa26ab334a62e9cb8f6be62b1beda14d030c1693c93b51c2d`  
		Last Modified: Mon, 15 Jan 2018 21:14:27 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72a43405a0f114cb7ffc206e409146e6d02f9413cb22890e8b5a2f874693ef22`  
		Last Modified: Tue, 16 Jan 2018 02:57:46 GMT  
		Size: 6.2 MB (6182133 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84439ab53cd5ce4e801b9e1d3c43e8d26803333af4cf846ff306a0328eb6295e`  
		Last Modified: Tue, 16 Jan 2018 02:58:19 GMT  
		Size: 47.4 MB (47398047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19b57c3911e0fb067a717eed44ecefa8a169fb419333b1f84b41b86ea231b0dc`  
		Last Modified: Tue, 16 Jan 2018 02:59:11 GMT  
		Size: 150.9 MB (150899613 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:bionic` - linux; arm variant v7

```console
$ docker pull buildpack-deps@sha256:bf2a52d4af6f03ed6efbd3302a95d81d91da3fffe02baee1febd3e3724ea3952
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **217.8 MB (217795050 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3bec69f40b1a5f611406a89e8279fb2e48f5754e5de24627fdc78e975a02fc5d`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 15 Dec 2017 13:51:14 GMT
ADD file:c2c634c888fc3d7aa93449cfb6dce9b3b34ebe445d5a597adb8abc3486a64c10 in / 
# Fri, 15 Dec 2017 13:51:15 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 15 Dec 2017 13:51:16 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 13:51:17 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 15 Dec 2017 13:51:18 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 15 Dec 2017 13:51:18 GMT
CMD ["/bin/bash"]
# Fri, 15 Dec 2017 14:10:30 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 14:10:31 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 15 Dec 2017 14:12:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 14:15:04 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:ac67c1d6f28989fd2430c1a5d3372a89333ce9796458f0a13e1821a4c4b7ea27`  
		Last Modified: Fri, 15 Dec 2017 13:52:37 GMT  
		Size: 31.6 MB (31622603 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7322c5c377162efa8d14b0f03e93123fa1675b99abc23df5d419f354546283fa`  
		Last Modified: Fri, 15 Dec 2017 13:52:29 GMT  
		Size: 845.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37d3367664f6b0bc483dadd12f6592cc1d6a7ef9e7fc8cbe625ec60e95b8ac3f`  
		Last Modified: Fri, 15 Dec 2017 13:52:29 GMT  
		Size: 389.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c870de691041a2a561405ce54db14eaad74cc989409464827cecdc20d69f4814`  
		Last Modified: Fri, 15 Dec 2017 13:52:29 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da10b2a98faeddb68eb10b4b1c054e7dc72c6887d747454d6f534ade68b2844c`  
		Last Modified: Fri, 15 Dec 2017 13:52:29 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0d1756b7c39625fde9679ce67ae04f47e18f1b9f02203d89f1b9362543cd7c5`  
		Last Modified: Fri, 15 Dec 2017 14:28:07 GMT  
		Size: 5.2 MB (5202393 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60000010924bf463ea1f0c4b7e5a182919c6c636fab888d745f7be38e848e9da`  
		Last Modified: Fri, 15 Dec 2017 14:28:26 GMT  
		Size: 42.0 MB (41966913 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:651ce71e33d494573fae6b828e9495774192b16061d7d0b861503f1a4aba3aab`  
		Last Modified: Fri, 15 Dec 2017 14:29:09 GMT  
		Size: 139.0 MB (139000866 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:bionic` - linux; arm64 variant v8

```console
$ docker pull buildpack-deps@sha256:012966f58e6a3d67efa64448fd3db881bf197a3ed1537c8b4ed6fcdbb81111b9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **233.2 MB (233228486 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:28afda3febd179b6651bb57536b52c813b032b10282f5e69f96b0a385862b42c`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 15 Dec 2017 15:00:46 GMT
ADD file:80c8f6c0061b49738a17cd026d3dec428d93ac30529a6b18715732565146d6e9 in / 
# Fri, 15 Dec 2017 15:00:48 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 15 Dec 2017 15:00:52 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 15:00:53 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 15 Dec 2017 15:00:55 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 15 Dec 2017 15:00:55 GMT
CMD ["/bin/bash"]
# Fri, 15 Dec 2017 15:23:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 15:23:19 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 15 Dec 2017 15:25:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 15:38:45 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:efa93c02cd20eb11df78d04f5f6cb800abcce81e3faa83a59b7fb4d8fb300145`  
		Last Modified: Fri, 15 Dec 2017 15:02:52 GMT  
		Size: 33.1 MB (33082132 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bd9f9c6acb60ce25084268f598ac81cd5a1ef487dd79d80a24b27126c0779f4`  
		Last Modified: Fri, 15 Dec 2017 15:02:41 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2271881359ad864a180ee2cc5a66f3c12470249c9677a67853b5a53a68bb8c79`  
		Last Modified: Fri, 15 Dec 2017 15:02:41 GMT  
		Size: 375.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1306c122365d388ce7f7d95107ed52873b1c418bcba5f0fcaa74dfa65df927e`  
		Last Modified: Fri, 15 Dec 2017 15:02:44 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50b6288a534c38bf240e0d285343f1ba227298df71777bdbf6b89a8f208aeb20`  
		Last Modified: Fri, 15 Dec 2017 15:02:42 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67ec7d21ae0835d8b35b4111f9344c0526a31009e6c75fd39ea8b6c60ac73a34`  
		Last Modified: Fri, 15 Dec 2017 17:11:53 GMT  
		Size: 5.5 MB (5475778 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abecad7ff59bdcfbc909057d02c777fe56cacd1f6ecf837a35a9a38fde8d957f`  
		Last Modified: Fri, 15 Dec 2017 17:12:19 GMT  
		Size: 44.0 MB (44022146 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01e4dda6bac55cc8f0fd0b0dc0cf79d624c540746d018909239fe4ac4c19c6c0`  
		Last Modified: Fri, 15 Dec 2017 17:13:19 GMT  
		Size: 150.6 MB (150646190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:bionic` - linux; 386

```console
$ docker pull buildpack-deps@sha256:90b0ba4c4ad0278febfdf5e16265def4a6bef28ea61718c0559c70283ab5d04a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **250.5 MB (250495875 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:26174ea5540dbc893c5d85f3a1093dae5492c1f147fe7d86daf5e803f2bc09a7`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 15 Dec 2017 04:41:41 GMT
ADD file:8252e0d663ed3e61fc552d81d1041a2c787d25831c7efe9ac797b04f0c5b5110 in / 
# Fri, 15 Dec 2017 04:41:41 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 15 Dec 2017 04:41:42 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 04:41:43 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 15 Dec 2017 04:41:44 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 15 Dec 2017 04:41:44 GMT
CMD ["/bin/bash"]
# Fri, 15 Dec 2017 05:29:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 05:36:08 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 15 Dec 2017 05:37:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 05:49:29 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:38d2ee014b2e675129e5ddceb3342c626077e6770c20a62e3f398ebaed40b6ec`  
		Last Modified: Fri, 15 Dec 2017 04:52:34 GMT  
		Size: 36.8 MB (36775976 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8caea13c80a1f30a37ab48042731e6063e2e2d90b4cc7bc63388dad9ccdfc4ae`  
		Last Modified: Fri, 15 Dec 2017 04:52:23 GMT  
		Size: 838.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1fcddab1d038dd353bf00bc59d34919835ca77763b0793934be5145ae4251b4`  
		Last Modified: Fri, 15 Dec 2017 04:52:23 GMT  
		Size: 391.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3139387fc067136a14d14d961184140c4e658ee1d6395499bb6b40ac67c0ab5`  
		Last Modified: Fri, 15 Dec 2017 04:52:23 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c62f2c77a5d82f439f69d08c88b1eff60a10a4195b52134b0d9f006c443e99c`  
		Last Modified: Fri, 15 Dec 2017 04:52:23 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:778e1410bf7c5f69c8b1fd06fc671e2f202eee91ab3991ae31666a0212e2ae33`  
		Last Modified: Fri, 15 Dec 2017 06:46:24 GMT  
		Size: 6.2 MB (6241610 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55537735a5d790ef7c98146df699812b85a097f0a4350374ad9691fba368a24b`  
		Last Modified: Fri, 15 Dec 2017 06:46:59 GMT  
		Size: 47.4 MB (47400551 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d96167996c7efab67560f82a2b7040fc5e911bac06d82d2aaeb568a44ed20c3`  
		Last Modified: Fri, 15 Dec 2017 06:48:24 GMT  
		Size: 160.1 MB (160075496 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:bionic` - linux; ppc64le

```console
$ docker pull buildpack-deps@sha256:80ab09c7001f79e0ffffbb0e1b162a0c5616e8934feb446f78adfd3ba2005ac7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **260.3 MB (260253209 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1bb7e8b0066ddfbd57eebb5db91dc47ff929a3eca8086212c12886b39220d89b`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 16 Jan 2018 03:40:19 GMT
ADD file:a18e55144d424bb1d36ba6dd45ab4f47be22699aa6c62a48faba8802e634860e in / 
# Tue, 16 Jan 2018 03:40:25 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 16 Jan 2018 03:40:28 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 03:40:31 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 16 Jan 2018 03:40:35 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 16 Jan 2018 03:40:36 GMT
CMD ["/bin/bash"]
# Tue, 16 Jan 2018 04:18:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 04:18:26 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 16 Jan 2018 04:21:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 04:31:33 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:d7c8fa713d0882fb1da6e507fcc7ea79967676b8c800915623710647440bf0de`  
		Last Modified: Tue, 16 Jan 2018 03:42:37 GMT  
		Size: 39.5 MB (39538170 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bfafa64aaed137580688aa8af0ef0a67daf8d37334459cba3225e6023b689b1`  
		Last Modified: Tue, 16 Jan 2018 03:42:27 GMT  
		Size: 845.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72ee8fa239f42f9615bb004f59dfb9efcd8100cdbf7292a575604ed3cdd863cb`  
		Last Modified: Tue, 16 Jan 2018 03:42:27 GMT  
		Size: 375.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88df7d97d50b4ff3b70a0dab6c95fe3f38266266622462eb762d4059644f9fa9`  
		Last Modified: Tue, 16 Jan 2018 03:42:27 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1021d61bd03395c07c5dab315a979ee5dbd56d827d961e7330faa16e86f8e9a`  
		Last Modified: Tue, 16 Jan 2018 03:42:28 GMT  
		Size: 189.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:479a40b59f159b87a3c30d981d5451989175c0580e49d8808b6e417f6aba567d`  
		Last Modified: Tue, 16 Jan 2018 04:57:42 GMT  
		Size: 6.3 MB (6346901 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d01493eb86e71af706050c69bd5ee737287b5ef970fe4e7425786ac963de0a2a`  
		Last Modified: Tue, 16 Jan 2018 04:58:06 GMT  
		Size: 55.2 MB (55220498 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20c0955c90cea8414263aee6336207a1c3f10f49fd875509a0266c669fb51f2f`  
		Last Modified: Tue, 16 Jan 2018 04:58:52 GMT  
		Size: 159.1 MB (159145378 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:bionic` - linux; s390x

```console
$ docker pull buildpack-deps@sha256:13c66a485c82f6042c41f4436743f944d2cc88b6b928a78a9545fb0c08b256ac
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **226.4 MB (226444995 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1ea9ff701f89ddffeebb6cbff8be488a2fc13cf9f9dfefd208b50ecf61e5bfb7`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Sun, 07 Jan 2018 06:21:18 GMT
ADD file:43906c1bbfabe0f5ed482f2cfe99630fd8cd08f8e191aad3db9a24b7e9d2342a in / 
# Sun, 07 Jan 2018 06:21:19 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sun, 07 Jan 2018 06:21:20 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sun, 07 Jan 2018 06:21:20 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Sun, 07 Jan 2018 06:21:21 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sun, 07 Jan 2018 06:21:21 GMT
CMD ["/bin/bash"]
# Sun, 07 Jan 2018 11:50:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sun, 07 Jan 2018 11:50:46 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sun, 07 Jan 2018 11:51:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sun, 07 Jan 2018 11:52:16 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:5fe2ce98a997cde3b8a8377d988cb64484f44385270fa90b1673b3417496c6f6`  
		Last Modified: Sun, 07 Jan 2018 06:22:17 GMT  
		Size: 34.9 MB (34914998 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c9ca4a4e10899ca791894bc19a9b4871f8037501a1c5629c35d1515be2301dd`  
		Last Modified: Sun, 07 Jan 2018 06:22:12 GMT  
		Size: 837.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f4e244a1eff9636cca599fa044a1d67c6bed61bf9fd52002ea6b6eee87f7a8d`  
		Last Modified: Sun, 07 Jan 2018 06:22:11 GMT  
		Size: 375.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8abf5c04db1171c4fb6c936bb81d920ba179cdcf9ef90585bb86cfd707affee4`  
		Last Modified: Sun, 07 Jan 2018 06:22:11 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c09bcf450adee2616c27659f89cb2335e8df19a40b26f82bc000b73b89fd8259`  
		Last Modified: Sun, 07 Jan 2018 06:22:12 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8f896d0a8811d4197d1034a429661a3793447fd093da5058b2e5df105798908`  
		Last Modified: Sun, 07 Jan 2018 11:57:21 GMT  
		Size: 5.9 MB (5856125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43430df85fc333ef9aa16acfb2dce508371e8c5ef02a521d1d1ca20cf647728e`  
		Last Modified: Sun, 07 Jan 2018 11:57:40 GMT  
		Size: 47.2 MB (47243747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81b46885a5942b214f66e53392a2dd5bb45b4d0ed27391fd46a2f2383a20485e`  
		Last Modified: Sun, 07 Jan 2018 11:58:13 GMT  
		Size: 138.4 MB (138427897 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
