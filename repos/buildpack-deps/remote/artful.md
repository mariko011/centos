## `buildpack-deps:artful`

```console
$ docker pull buildpack-deps@sha256:0e4553d57da1d84e925bcbfd6c87672ad778fa9ab4a45d415e56754ed461220f
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
$ docker pull buildpack-deps@sha256:243d26662e3523170afd8542efbe0f8fef81c965388087dc075deb28616af5d3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **262.3 MB (262309257 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:70c626d99a6cff05667af0f5479fdb160ca39d072d47273f5c4ea72303bddaaa`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 15 Jan 2018 20:58:35 GMT
ADD file:2c8e2bd2e3d2a37f9678092a250bd13e4264925882cd4310be53da65fb802713 in / 
# Mon, 15 Jan 2018 20:58:36 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 15 Jan 2018 20:58:59 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 15 Jan 2018 20:59:00 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Mon, 15 Jan 2018 20:59:01 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 15 Jan 2018 20:59:01 GMT
CMD ["/bin/bash"]
# Tue, 16 Jan 2018 01:27:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 01:27:18 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 16 Jan 2018 01:37:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 01:39:56 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:4e70ca06cf3af88c4edb0edb3fa4d316159bce37b6c3b2c933686378900aff51`  
		Last Modified: Mon, 15 Jan 2018 14:39:36 GMT  
		Size: 39.9 MB (39903725 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6926ea13ba88d0e2996062ae642dd60b90049517b13b503f2c2056027d9400e8`  
		Last Modified: Mon, 15 Jan 2018 21:12:58 GMT  
		Size: 838.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:857aa4a73a76526d2e4d6935b018564cc0ebaca761e37245561d39c8965729e7`  
		Last Modified: Mon, 15 Jan 2018 21:12:58 GMT  
		Size: 613.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f60160af846d1eaf1878305fa499f3ce6b7541f66f056739853c2a783de4e9a9`  
		Last Modified: Mon, 15 Jan 2018 21:12:58 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e64367655132b4ee03113e6388928b97c4cb03df040fee19754995ad9accff2`  
		Last Modified: Mon, 15 Jan 2018 21:12:58 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f5d4bbe9d8438f6bb913f3eea8c57bef37df9f1cee36ace54a3c9e464a61309`  
		Last Modified: Tue, 16 Jan 2018 02:43:28 GMT  
		Size: 6.1 MB (6053319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c8f44b9fc3f73cc2a1aa6dbf450bdda249112c82283dd4d4c0c44c387133442`  
		Last Modified: Tue, 16 Jan 2018 02:44:10 GMT  
		Size: 45.7 MB (45699945 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4533f1360dca6efdd793899231b3702412f93c16b5844e44e6631a9629d2d56`  
		Last Modified: Tue, 16 Jan 2018 02:45:10 GMT  
		Size: 170.6 MB (170649801 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:artful` - linux; arm variant v7

```console
$ docker pull buildpack-deps@sha256:f1e3d24b027c0066ee1e181e8d136c4f37efed667aa8b07c883806bb92797ff6
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **233.0 MB (232974029 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dfa238609f9847e4a82e11c66e63fe2b10bdc429d00522a2a47786f462c43d9a`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 17 Nov 2017 22:07:49 GMT
ADD file:5100202a112c638c04b324862ebd798e20a2adcba3ea797de7ed28582cc0c793 in / 
# Fri, 17 Nov 2017 22:07:50 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 17 Nov 2017 22:07:51 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 17 Nov 2017 22:07:52 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 17 Nov 2017 22:07:53 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 17 Nov 2017 22:07:53 GMT
CMD ["/bin/bash"]
# Fri, 17 Nov 2017 22:31:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 17 Nov 2017 22:31:25 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 17 Nov 2017 22:32:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 17 Nov 2017 22:35:34 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:88c405937d2f2779490eff14dabe7682ad8c8ad80a221c25c96401222bca72f9`  
		Last Modified: Fri, 17 Nov 2017 22:10:28 GMT  
		Size: 35.3 MB (35299641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1e06c9311825dc04b895c252cf6349c743ad1afa8b98084c9cccc190ca1ac40`  
		Last Modified: Fri, 17 Nov 2017 22:10:19 GMT  
		Size: 844.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bef923f9ed5342e816dde28007110f9b32611a5cd4e9f3300b83ca50bb01be28`  
		Last Modified: Fri, 17 Nov 2017 22:10:20 GMT  
		Size: 547.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2c49dd258dc94f7d2aefd7c27c5f1964d3ab806b314c24cb9d06e7a4c73ed18`  
		Last Modified: Fri, 17 Nov 2017 22:10:20 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37deca559c89043d1824eef84f666b7a8a4abe7bd89fbc30f2776219e975d6b9`  
		Last Modified: Fri, 17 Nov 2017 22:10:19 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b64c3c6431e3f98ac53de3a56c04522fbc1b2aa07f8f16ec8cde78d8eb0d727`  
		Last Modified: Fri, 17 Nov 2017 22:49:28 GMT  
		Size: 5.1 MB (5095384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b83ed5904f3467575c77a56ed198fcfde0bad9d63864533b734f82f303f7c857`  
		Last Modified: Fri, 17 Nov 2017 22:49:54 GMT  
		Size: 41.9 MB (41861252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ade92e0dd5c7b998baab01e7c451784659ee838d578ceaf7e963d2dd362673db`  
		Last Modified: Fri, 17 Nov 2017 22:50:49 GMT  
		Size: 150.7 MB (150715318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:artful` - linux; arm64 variant v8

```console
$ docker pull buildpack-deps@sha256:68e839d167659d0b3b69baec546a7a1e48bc9a395f5bdeb5c413a4be9950dd69
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **246.2 MB (246182620 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:931ce48151d29d651d0ab5270cd8507a3e76abddda86591c8d485c150b50a780`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 17 Nov 2017 22:08:11 GMT
ADD file:948a1feaf689d586a861ad7ec3a3ecff5f6c752018497dc24948284e4e521c08 in / 
# Fri, 17 Nov 2017 22:08:13 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 17 Nov 2017 22:08:15 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 17 Nov 2017 22:08:16 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 17 Nov 2017 22:08:18 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 17 Nov 2017 22:08:18 GMT
CMD ["/bin/bash"]
# Fri, 17 Nov 2017 22:37:20 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 17 Nov 2017 22:37:22 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 17 Nov 2017 22:38:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 17 Nov 2017 22:49:45 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:fad8ff0086dd1d26efbe73ff7a139d6ea7cfc29417ba1d87a1d8ee5e0e5aa27e`  
		Last Modified: Fri, 17 Nov 2017 22:12:15 GMT  
		Size: 36.5 MB (36457774 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f04e8279d88c197390c416e029223b78be147937b444a24068cb36f2e355ccce`  
		Last Modified: Fri, 17 Nov 2017 22:12:02 GMT  
		Size: 843.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9921e27905f9ae6944a34002db7b1406edf0347fe4c3cfd0908e88fbbb384c98`  
		Last Modified: Fri, 17 Nov 2017 22:12:02 GMT  
		Size: 505.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:015a1a3e9b0bcc651dbd3cb4d53a6988c3afdabd799f6e9588a1b0a07d095608`  
		Last Modified: Fri, 17 Nov 2017 22:12:03 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:beb69eea214a70d7c601e8fb101de6f0407615aa1032660da5779d90735739c5`  
		Last Modified: Fri, 17 Nov 2017 22:12:02 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8b47a927a2f623db7db9032f8fe361678fc06d7b63611b7b782a710a2bd89b3`  
		Last Modified: Fri, 17 Nov 2017 23:31:18 GMT  
		Size: 5.3 MB (5332501 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72a0c7c57bec7e681789320544744a364cc8978a4b667b19c63013aa51f2360c`  
		Last Modified: Fri, 17 Nov 2017 23:31:59 GMT  
		Size: 43.9 MB (43922056 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40834891ebfac2719a6b5f6bd9faa399b1a5bec310e6e3df0cf86be4821c19d8`  
		Last Modified: Fri, 17 Nov 2017 23:33:20 GMT  
		Size: 160.5 MB (160467927 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:artful` - linux; 386

```console
$ docker pull buildpack-deps@sha256:4f5ee06af29d758adadb0cfb13cc06d861a5fb5c4f365c0c38cc896d07378876
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **264.7 MB (264696943 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1cfb2f6e7c021a29a0ec49adc9255ba634dcc3ba679897d1bc35b39711e86de9`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 16 Jan 2018 04:48:33 GMT
ADD file:f1983e069027dd850a9d1b80c41749c67ee3e817aea107ab7c456046b051e96b in / 
# Tue, 16 Jan 2018 04:48:34 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 16 Jan 2018 04:48:35 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 04:48:36 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 16 Jan 2018 04:48:36 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 16 Jan 2018 04:48:37 GMT
CMD ["/bin/bash"]
# Tue, 16 Jan 2018 06:28:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 06:28:59 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 16 Jan 2018 06:41:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 06:53:30 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:d87f02d6ad887cdbec94b5f6c6ed9ae059676689dc8be223de4b134757d56f50`  
		Last Modified: Mon, 15 Jan 2018 14:40:51 GMT  
		Size: 40.7 MB (40714912 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8eb0e7ac020a5b5bfe700458d5879108017463cf7c00dd5d6f01c39ec72c2e04`  
		Last Modified: Tue, 16 Jan 2018 05:14:41 GMT  
		Size: 848.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86e2a73736eb5cb0216ebf9fb038bb9c8e8c98d5d900d364cfb0c838f5d8979e`  
		Last Modified: Tue, 16 Jan 2018 05:14:40 GMT  
		Size: 580.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2184b88c8f394ccbba072e69441d3d5070ed973cf56c3d68713b372987d0d7e7`  
		Last Modified: Tue, 16 Jan 2018 05:14:41 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:197d820b2667548ef44e5efe7013dc485774f3ed52b4d151b63df64459566c98`  
		Last Modified: Tue, 16 Jan 2018 05:14:41 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f112c2506594fb2ee8c81699c1ce8317b0ad3606df15bf47ad451945dc47e130`  
		Last Modified: Tue, 16 Jan 2018 08:47:58 GMT  
		Size: 6.1 MB (6106992 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e09ed78366c1c1977ed610a078f2fe3a13a5882aafb9b0336fde06e46eae0a4`  
		Last Modified: Tue, 16 Jan 2018 08:48:50 GMT  
		Size: 47.3 MB (47294651 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:035b186b91513b8f242cb49bad8821d9ae2b67a04a4c5ff677fb2124c03da777`  
		Last Modified: Tue, 16 Jan 2018 08:57:41 GMT  
		Size: 170.6 MB (170577947 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:artful` - linux; ppc64le

```console
$ docker pull buildpack-deps@sha256:f81d319f87bdd591b86c952df79b3d2eeee06d02cb4ff308a8304a49fc92fb6a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **283.2 MB (283211585 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa5c6926f846ee83031acddc53446cfc2938a911493e6c7f21022d50ecfd0c71`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 16 Jan 2018 03:39:49 GMT
ADD file:7f1ff391adc6dbb769b56d7b9b75a63f84f9a76735cbbc8299cbb2bae42130be in / 
# Tue, 16 Jan 2018 03:39:52 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 16 Jan 2018 03:39:57 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 03:40:01 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 16 Jan 2018 03:40:04 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 16 Jan 2018 03:40:06 GMT
CMD ["/bin/bash"]
# Tue, 16 Jan 2018 04:01:14 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 04:01:17 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 16 Jan 2018 04:04:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 04:15:43 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:02565bbc68811a7de1b822a7ab953a27caa044ff14c7eec44c9a3b329c1a0c58`  
		Last Modified: Tue, 16 Jan 2018 03:42:09 GMT  
		Size: 43.1 MB (43110761 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:853d1596174fe102b2761a886f595e2240cbb03378c35d483cc832c722667a00`  
		Last Modified: Tue, 16 Jan 2018 03:41:56 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f2856880f1a15c2676a111356e8fbe949826d43bb84aebb40e012f8b64b06b0`  
		Last Modified: Tue, 16 Jan 2018 03:41:56 GMT  
		Size: 579.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c05b8faaf796b6ac10a1b6441a84f3fc8e9f16c837e2c9598344f4ddc8336ad0`  
		Last Modified: Tue, 16 Jan 2018 03:41:56 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:701405981892860b2325e471f757ffb1f21402329905b310110048605ef16057`  
		Last Modified: Tue, 16 Jan 2018 03:41:57 GMT  
		Size: 189.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4aa23a2bceef943301603494d0a9d68f39e8ada6c93902e0cbd3ecaf25bf30a1`  
		Last Modified: Tue, 16 Jan 2018 04:56:11 GMT  
		Size: 6.1 MB (6126256 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8957d8262997620aac874cd87ffd4c571a4d9e70ff19fd801ee7076bbe26576`  
		Last Modified: Tue, 16 Jan 2018 04:56:35 GMT  
		Size: 53.2 MB (53229753 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2918498a36b9b44915deeb25ea412f08acfd3d3ef49278919fa30d4cdf951af`  
		Last Modified: Tue, 16 Jan 2018 04:57:29 GMT  
		Size: 180.7 MB (180742343 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:artful` - linux; s390x

```console
$ docker pull buildpack-deps@sha256:9df344bb55b86127db44b11b10d5af75958994cf28346185e143ae5c70f3746d
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **247.8 MB (247774415 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:067e45ab8a47a1a78bf049bea3fb3269b9d9f22ac6fe6e03e857750b00110bfe`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 17 Nov 2017 22:07:28 GMT
ADD file:b930922e765fe4cd0e19265f5f6c342340a5b2ee855198d99a445c0bd99a7d61 in / 
# Fri, 17 Nov 2017 22:07:29 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 17 Nov 2017 22:07:29 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 17 Nov 2017 22:07:30 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 17 Nov 2017 22:07:31 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 17 Nov 2017 22:07:31 GMT
CMD ["/bin/bash"]
# Fri, 17 Nov 2017 22:26:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 17 Nov 2017 22:26:39 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 17 Nov 2017 22:27:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 17 Nov 2017 22:29:02 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:f172841ba9f7d2c1c21c31504006aab693b4dca92706d268120c9401e0e54c9c`  
		Last Modified: Fri, 17 Nov 2017 22:08:41 GMT  
		Size: 38.3 MB (38251078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b249bdeb130c08219c1ac394fd12aef2f9a9d7a318904c1adf2a6b9d1ab1ba3`  
		Last Modified: Fri, 17 Nov 2017 22:08:35 GMT  
		Size: 835.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8242ed7a71bed64d2b07fd9756253c0ceb3cac059887d7c6f9a0d8874e1553f`  
		Last Modified: Fri, 17 Nov 2017 22:08:34 GMT  
		Size: 504.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30778f8e8bcaf294e36e0182071a5ba7d990bc20b17343bcc64e16a9c54dafe8`  
		Last Modified: Fri, 17 Nov 2017 22:08:34 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a1db6aa93b0ec59c26fcf939ccd8744a113ea48a883e323e8a0f631b7c46d8e`  
		Last Modified: Fri, 17 Nov 2017 22:08:35 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72469cf7519f2a03259836492b2d38e9d56c9293b75913d638d1d259dafb34e7`  
		Last Modified: Fri, 17 Nov 2017 22:34:19 GMT  
		Size: 5.7 MB (5738817 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10b9803128088058175dbe91db60ee91eeb9af1261e6f92d47e06770d1f66748`  
		Last Modified: Fri, 17 Nov 2017 22:34:37 GMT  
		Size: 45.6 MB (45633745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f4732f25c621705f371e2bb0ec19f0ced23032c4ffaf5a1d93fbd91baa8f1af`  
		Last Modified: Fri, 17 Nov 2017 22:35:13 GMT  
		Size: 158.1 MB (158148419 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
