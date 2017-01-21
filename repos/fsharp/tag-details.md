<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `fsharp`

-	[`fsharp:4.0.0.4`](#fsharp4004)
-	[`fsharp:4.0.1.1`](#fsharp4011)
-	[`fsharp:latest`](#fsharplatest)

## `fsharp:4.0.0.4`

```console
$ docker pull fsharp@sha256:60da47b50265d59fa007299ddc16370e8f637092564b08a7ae8a9f940a6fcea7
```

-	Platforms:
	-	linux; amd64

### `fsharp:4.0.0.4` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **267.9 MB (267914216 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:68fb792142aedd240866d54fa1be304c1dedee0c1339289d81bb944487d59f64`
-	Default Command: `["fsharpi"]`

```dockerfile
# Fri, 20 Jan 2017 21:42:50 GMT
ADD file:c383f1cde338921411168cc34a10e3a221ae55e569768e1551274f8fddc54415 in / 
# Fri, 20 Jan 2017 21:42:52 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 20 Jan 2017 21:42:54 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 20 Jan 2017 21:42:55 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 20 Jan 2017 21:42:57 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 20 Jan 2017 21:42:57 GMT
CMD ["/bin/bash"]
# Fri, 20 Jan 2017 22:49:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 20 Jan 2017 22:50:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 20 Jan 2017 22:53:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Sat, 21 Jan 2017 00:06:15 GMT
MAINTAINER Henrik Feldt
# Sat, 21 Jan 2017 00:06:15 GMT
ENV MONO_VERSION=4.4.2.11
# Sat, 21 Jan 2017 00:06:18 GMT
RUN apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF &&     echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-xamarin.list
# Sat, 21 Jan 2017 00:06:19 GMT
ENV MONO_THREADS_PER_CPU=50
# Sat, 21 Jan 2017 00:07:18 GMT
RUN apt-get -y update &&     apt-get -y --no-install-recommends install nuget mono-devel ca-certificates-mono &&     rm -rf /var/lib/apt/lists/*
# Sat, 21 Jan 2017 00:07:27 GMT
ENV FSHARP_VERSION=4.0.0.4
# Sat, 21 Jan 2017 00:07:28 GMT
ENV FSHARP_PREFIX=/usr FSHARP_GACDIR=/usr/lib/mono/gac FSHARP_BASENAME=fsharp-4.0.0.4 FSHARP_ARCHIVE=4.0.0.4.tar.gz FSHARP_ARCHIVE_URL=https://github.com/fsharp/fsharp/archive/4.0.0.4.tar.gz
# Sat, 21 Jan 2017 00:12:34 GMT
RUN mkdir -p /tmp/src &&     cd /tmp/src &&     wget $FSHARP_ARCHIVE_URL &&     tar xf $FSHARP_ARCHIVE &&     cd $FSHARP_BASENAME &&     ./autogen.sh --prefix=$FSHARP_PREFIX --with-gacdir=$FSHARP_GACDIR &&     make &&     make install &&     cd ~ &&     rm -rf /tmp/src
# Sat, 21 Jan 2017 00:12:34 GMT
CMD ["fsharpi"]
```

-	Layers:
	-	`sha256:c60055a51d748f34ebd4a7c4872c5d727e0ef96fbf9cd9b248e931b222828c23`  
		Last Modified: Fri, 20 Jan 2017 21:48:47 GMT  
		Size: 65.7 MB (65693853 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:755da0cdb7d25b74b205ff1eccd26ea4eede693ec7cf2150ae4c1caafe6394b1`  
		Last Modified: Fri, 20 Jan 2017 21:48:27 GMT  
		Size: 71.6 KB (71553 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:969d017f67e62ae323a3e8077e3ac4a5b1bf4a27c349148c1f6c28bd6ca3bbb8`  
		Last Modified: Fri, 20 Jan 2017 21:48:27 GMT  
		Size: 358.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37c9a911359525fa28aa16715d36954723a8924492b5216cc97d1099251a5023`  
		Last Modified: Fri, 20 Jan 2017 21:48:26 GMT  
		Size: 681.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3d9f847978686a04b694253ea6c6873fb60a495dc742a92d097ccc3c2855641`  
		Last Modified: Fri, 20 Jan 2017 21:48:27 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4691e0946c9bbaf74eec3aaed3b99d9f3bcb20b86372fea61122a4ca48c4f1e`  
		Last Modified: Fri, 20 Jan 2017 23:04:49 GMT  
		Size: 4.6 MB (4600465 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cd576d474e9bbf7328a371295445ebb49458c45610a1dc3d13fc5aa0c3019bc`  
		Last Modified: Fri, 20 Jan 2017 23:05:20 GMT  
		Size: 29.0 MB (29009602 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63755f99c4d640bf55d816e047f7d77f95e69c0a4dbd68fe829d95b0c70a8576`  
		Last Modified: Fri, 20 Jan 2017 23:09:57 GMT  
		Size: 99.8 MB (99825317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bcba708b3cb5972e0084760ce7bd217c522b18cf502de6a4b49b5fd1a56b86f`  
		Last Modified: Sat, 21 Jan 2017 00:18:04 GMT  
		Size: 13.8 KB (13814 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a9ee97801205bda9f728a75d1ef9828b59557b6ebab94c882de990faf175df6`  
		Last Modified: Sat, 21 Jan 2017 00:18:25 GMT  
		Size: 59.6 MB (59644241 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66fe83113036e0f967929bd2c3b597e0de4c7a98c6d7b4366046154be53527f3`  
		Last Modified: Sat, 21 Jan 2017 00:18:08 GMT  
		Size: 9.1 MB (9054170 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `fsharp:4.0.1.1`

```console
$ docker pull fsharp@sha256:bf21b6745a684868ad62142cfc232fc660f789c85e6993ffd8fbedc8fa518504
```

-	Platforms:
	-	linux; amd64

### `fsharp:4.0.1.1` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **269.2 MB (269169760 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b3e65ecb901fdea73436ba402b0a677360be10c783865dd332d69cb1e27b1630`
-	Default Command: `["fsharpi"]`

```dockerfile
# Fri, 20 Jan 2017 21:42:50 GMT
ADD file:c383f1cde338921411168cc34a10e3a221ae55e569768e1551274f8fddc54415 in / 
# Fri, 20 Jan 2017 21:42:52 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 20 Jan 2017 21:42:54 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 20 Jan 2017 21:42:55 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 20 Jan 2017 21:42:57 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 20 Jan 2017 21:42:57 GMT
CMD ["/bin/bash"]
# Fri, 20 Jan 2017 22:49:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 20 Jan 2017 22:50:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 20 Jan 2017 22:53:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Sat, 21 Jan 2017 00:06:15 GMT
MAINTAINER Henrik Feldt
# Sat, 21 Jan 2017 00:06:15 GMT
ENV MONO_VERSION=4.4.2.11
# Sat, 21 Jan 2017 00:06:18 GMT
RUN apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF &&     echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-xamarin.list
# Sat, 21 Jan 2017 00:06:19 GMT
ENV MONO_THREADS_PER_CPU=50
# Sat, 21 Jan 2017 00:07:18 GMT
RUN apt-get -y update &&     apt-get -y --no-install-recommends install nuget mono-devel ca-certificates-mono &&     rm -rf /var/lib/apt/lists/*
# Sat, 21 Jan 2017 00:12:35 GMT
ENV FSHARP_VERSION=4.0.1.1
# Sat, 21 Jan 2017 00:12:35 GMT
ENV FSHARP_PREFIX=/usr FSHARP_GACDIR=/usr/lib/mono/gac FSHARP_BASENAME=fsharp-4.0.1.1 FSHARP_ARCHIVE=4.0.1.1.tar.gz FSHARP_ARCHIVE_URL=https://github.com/fsharp/fsharp/archive/4.0.1.1.tar.gz
# Sat, 21 Jan 2017 00:17:48 GMT
RUN mkdir -p /tmp/src &&     cd /tmp/src &&     wget $FSHARP_ARCHIVE_URL &&     tar xf $FSHARP_ARCHIVE &&     cd $FSHARP_BASENAME &&     ./autogen.sh --prefix=$FSHARP_PREFIX --with-gacdir=$FSHARP_GACDIR &&     make &&     make install &&     cd ~ &&     rm -rf /tmp/src
# Sat, 21 Jan 2017 00:17:48 GMT
WORKDIR /root
# Sat, 21 Jan 2017 00:17:48 GMT
CMD ["fsharpi"]
```

-	Layers:
	-	`sha256:c60055a51d748f34ebd4a7c4872c5d727e0ef96fbf9cd9b248e931b222828c23`  
		Last Modified: Fri, 20 Jan 2017 21:48:47 GMT  
		Size: 65.7 MB (65693853 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:755da0cdb7d25b74b205ff1eccd26ea4eede693ec7cf2150ae4c1caafe6394b1`  
		Last Modified: Fri, 20 Jan 2017 21:48:27 GMT  
		Size: 71.6 KB (71553 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:969d017f67e62ae323a3e8077e3ac4a5b1bf4a27c349148c1f6c28bd6ca3bbb8`  
		Last Modified: Fri, 20 Jan 2017 21:48:27 GMT  
		Size: 358.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37c9a911359525fa28aa16715d36954723a8924492b5216cc97d1099251a5023`  
		Last Modified: Fri, 20 Jan 2017 21:48:26 GMT  
		Size: 681.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3d9f847978686a04b694253ea6c6873fb60a495dc742a92d097ccc3c2855641`  
		Last Modified: Fri, 20 Jan 2017 21:48:27 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4691e0946c9bbaf74eec3aaed3b99d9f3bcb20b86372fea61122a4ca48c4f1e`  
		Last Modified: Fri, 20 Jan 2017 23:04:49 GMT  
		Size: 4.6 MB (4600465 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cd576d474e9bbf7328a371295445ebb49458c45610a1dc3d13fc5aa0c3019bc`  
		Last Modified: Fri, 20 Jan 2017 23:05:20 GMT  
		Size: 29.0 MB (29009602 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63755f99c4d640bf55d816e047f7d77f95e69c0a4dbd68fe829d95b0c70a8576`  
		Last Modified: Fri, 20 Jan 2017 23:09:57 GMT  
		Size: 99.8 MB (99825317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bcba708b3cb5972e0084760ce7bd217c522b18cf502de6a4b49b5fd1a56b86f`  
		Last Modified: Sat, 21 Jan 2017 00:18:04 GMT  
		Size: 13.8 KB (13814 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a9ee97801205bda9f728a75d1ef9828b59557b6ebab94c882de990faf175df6`  
		Last Modified: Sat, 21 Jan 2017 00:18:25 GMT  
		Size: 59.6 MB (59644241 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c856651467570b3acc6680829071ff3be3f7dc80d6aa9215f0ee6272538fe64`  
		Last Modified: Sat, 21 Jan 2017 00:18:49 GMT  
		Size: 10.3 MB (10309714 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `fsharp:latest`

```console
$ docker pull fsharp@sha256:bf21b6745a684868ad62142cfc232fc660f789c85e6993ffd8fbedc8fa518504
```

-	Platforms:
	-	linux; amd64

### `fsharp:latest` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **269.2 MB (269169760 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b3e65ecb901fdea73436ba402b0a677360be10c783865dd332d69cb1e27b1630`
-	Default Command: `["fsharpi"]`

```dockerfile
# Fri, 20 Jan 2017 21:42:50 GMT
ADD file:c383f1cde338921411168cc34a10e3a221ae55e569768e1551274f8fddc54415 in / 
# Fri, 20 Jan 2017 21:42:52 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 20 Jan 2017 21:42:54 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 20 Jan 2017 21:42:55 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 20 Jan 2017 21:42:57 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 20 Jan 2017 21:42:57 GMT
CMD ["/bin/bash"]
# Fri, 20 Jan 2017 22:49:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 20 Jan 2017 22:50:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 20 Jan 2017 22:53:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Sat, 21 Jan 2017 00:06:15 GMT
MAINTAINER Henrik Feldt
# Sat, 21 Jan 2017 00:06:15 GMT
ENV MONO_VERSION=4.4.2.11
# Sat, 21 Jan 2017 00:06:18 GMT
RUN apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF &&     echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-xamarin.list
# Sat, 21 Jan 2017 00:06:19 GMT
ENV MONO_THREADS_PER_CPU=50
# Sat, 21 Jan 2017 00:07:18 GMT
RUN apt-get -y update &&     apt-get -y --no-install-recommends install nuget mono-devel ca-certificates-mono &&     rm -rf /var/lib/apt/lists/*
# Sat, 21 Jan 2017 00:12:35 GMT
ENV FSHARP_VERSION=4.0.1.1
# Sat, 21 Jan 2017 00:12:35 GMT
ENV FSHARP_PREFIX=/usr FSHARP_GACDIR=/usr/lib/mono/gac FSHARP_BASENAME=fsharp-4.0.1.1 FSHARP_ARCHIVE=4.0.1.1.tar.gz FSHARP_ARCHIVE_URL=https://github.com/fsharp/fsharp/archive/4.0.1.1.tar.gz
# Sat, 21 Jan 2017 00:17:48 GMT
RUN mkdir -p /tmp/src &&     cd /tmp/src &&     wget $FSHARP_ARCHIVE_URL &&     tar xf $FSHARP_ARCHIVE &&     cd $FSHARP_BASENAME &&     ./autogen.sh --prefix=$FSHARP_PREFIX --with-gacdir=$FSHARP_GACDIR &&     make &&     make install &&     cd ~ &&     rm -rf /tmp/src
# Sat, 21 Jan 2017 00:17:48 GMT
WORKDIR /root
# Sat, 21 Jan 2017 00:17:48 GMT
CMD ["fsharpi"]
```

-	Layers:
	-	`sha256:c60055a51d748f34ebd4a7c4872c5d727e0ef96fbf9cd9b248e931b222828c23`  
		Last Modified: Fri, 20 Jan 2017 21:48:47 GMT  
		Size: 65.7 MB (65693853 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:755da0cdb7d25b74b205ff1eccd26ea4eede693ec7cf2150ae4c1caafe6394b1`  
		Last Modified: Fri, 20 Jan 2017 21:48:27 GMT  
		Size: 71.6 KB (71553 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:969d017f67e62ae323a3e8077e3ac4a5b1bf4a27c349148c1f6c28bd6ca3bbb8`  
		Last Modified: Fri, 20 Jan 2017 21:48:27 GMT  
		Size: 358.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37c9a911359525fa28aa16715d36954723a8924492b5216cc97d1099251a5023`  
		Last Modified: Fri, 20 Jan 2017 21:48:26 GMT  
		Size: 681.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3d9f847978686a04b694253ea6c6873fb60a495dc742a92d097ccc3c2855641`  
		Last Modified: Fri, 20 Jan 2017 21:48:27 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4691e0946c9bbaf74eec3aaed3b99d9f3bcb20b86372fea61122a4ca48c4f1e`  
		Last Modified: Fri, 20 Jan 2017 23:04:49 GMT  
		Size: 4.6 MB (4600465 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cd576d474e9bbf7328a371295445ebb49458c45610a1dc3d13fc5aa0c3019bc`  
		Last Modified: Fri, 20 Jan 2017 23:05:20 GMT  
		Size: 29.0 MB (29009602 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63755f99c4d640bf55d816e047f7d77f95e69c0a4dbd68fe829d95b0c70a8576`  
		Last Modified: Fri, 20 Jan 2017 23:09:57 GMT  
		Size: 99.8 MB (99825317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bcba708b3cb5972e0084760ce7bd217c522b18cf502de6a4b49b5fd1a56b86f`  
		Last Modified: Sat, 21 Jan 2017 00:18:04 GMT  
		Size: 13.8 KB (13814 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a9ee97801205bda9f728a75d1ef9828b59557b6ebab94c882de990faf175df6`  
		Last Modified: Sat, 21 Jan 2017 00:18:25 GMT  
		Size: 59.6 MB (59644241 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c856651467570b3acc6680829071ff3be3f7dc80d6aa9215f0ee6272538fe64`  
		Last Modified: Sat, 21 Jan 2017 00:18:49 GMT  
		Size: 10.3 MB (10309714 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
