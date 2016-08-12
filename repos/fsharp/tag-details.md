<!-- THIS FILE IS GENERATED VIA './update-tag-details.sh' -->

# Tags of `fsharp`

-	[`fsharp:4.0.0.4`](#fsharp4004)
-	[`fsharp:4.0.1.1`](#fsharp4011)
-	[`fsharp:latest`](#fsharplatest)

## `fsharp:4.0.0.4`

```console
$ docker pull fsharp@sha256:6a38522f0d1690bc69c374b129c8d893e0791f672beb4b106a423a3ef806bcd7
```

-	Platforms:
	-	linux; amd64

### `fsharp:4.0.0.4` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **267.9 MB (267867070 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6626de08a73c1a166b4025ae286ec6372033c1fe35c4a6de6b79bf1618ce1481`
-	Default Command: `["fsharpi"]`

```dockerfile
# Fri, 22 Jul 2016 15:18:56 GMT
ADD file:dc3b1b2c44af75026bc24b3f3a5bd5f45b9ca7ed395b91dfacd1b47fe0545fb5 in /
# Fri, 22 Jul 2016 15:18:58 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 22 Jul 2016 15:19:00 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 22 Jul 2016 15:19:02 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 22 Jul 2016 15:19:02 GMT
CMD ["/bin/bash"]
# Fri, 22 Jul 2016 16:56:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 22 Jul 2016 16:57:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 22 Jul 2016 16:59:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Fri, 22 Jul 2016 17:40:00 GMT
MAINTAINER Henrik Feldt
# Thu, 11 Aug 2016 22:28:57 GMT
ENV MONO_VERSION=4.4.2.11
# Thu, 11 Aug 2016 22:29:15 GMT
RUN apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF &&     echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-xamarin.list
# Thu, 11 Aug 2016 22:29:15 GMT
ENV MONO_THREADS_PER_CPU=50
# Thu, 11 Aug 2016 22:31:03 GMT
RUN apt-get -y update &&     apt-get -y --no-install-recommends install nuget mono-devel ca-certificates-mono &&     rm -rf /var/lib/apt/lists/*
# Thu, 11 Aug 2016 22:31:03 GMT
ENV FSHARP_VERSION=4.0.0.4
# Thu, 11 Aug 2016 22:31:04 GMT
ENV FSHARP_PREFIX=/usr FSHARP_GACDIR=/usr/lib/mono/gac FSHARP_BASENAME=fsharp-4.0.0.4 FSHARP_ARCHIVE=4.0.0.4.tar.gz FSHARP_ARCHIVE_URL=https://github.com/fsharp/fsharp/archive/4.0.0.4.tar.gz
# Thu, 11 Aug 2016 22:38:19 GMT
RUN mkdir -p /tmp/src &&     cd /tmp/src &&     wget $FSHARP_ARCHIVE_URL &&     tar xf $FSHARP_ARCHIVE &&     cd $FSHARP_BASENAME &&     ./autogen.sh --prefix=$FSHARP_PREFIX --with-gacdir=$FSHARP_GACDIR &&     make &&     make install &&     cd ~ &&     rm -rf /tmp/src
# Thu, 11 Aug 2016 22:38:19 GMT
CMD ["fsharpi"]
```

-	Layers:
	-	`sha256:96c6a1f3c3b0183063a9dad891fe6d8ec466c2fdf9571a0c19b3319ea8a58871`  
		Last Modified: Mon, 18 Jul 2016 17:36:54 GMT  
		Size: 65.7 MB (65699069 bytes)
	-	`sha256:ed40d4bcb31369df1a018c64e560e94dfd106d0b2851db25f921d3708d64fac5`  
		Last Modified: Fri, 22 Jul 2016 15:21:07 GMT  
		Size: 71.6 KB (71563 bytes)
	-	`sha256:b171f9dbc13b68a99386e4d54e28e26144688973ad7bbdd9ec1f822dc8b0ac0a`  
		Last Modified: Fri, 22 Jul 2016 15:21:06 GMT  
		Size: 365.0 B
	-	`sha256:ccfc4df4fbba7d591c1eff4972018e67c1142b21b64bc36fba3f93bd33f2ebd9`  
		Last Modified: Fri, 22 Jul 2016 15:21:07 GMT  
		Size: 680.0 B
	-	`sha256:5036c705f4c89d1622d6199f627d63b89766bd9d524093d750c2e13b119c12dd`  
		Last Modified: Fri, 22 Jul 2016 17:27:58 GMT  
		Size: 4.6 MB (4598315 bytes)
	-	`sha256:a4f5a357f49fcc813854779c9fba583dff945e30bd330bdbc5d0bbc7f3c156eb`  
		Last Modified: Fri, 22 Jul 2016 17:28:09 GMT  
		Size: 29.0 MB (29004589 bytes)
	-	`sha256:b4dc22b2034a5a8736e3d7cb07f589eb19ca6aa203b7a5f5de044366fa2e4e98`  
		Last Modified: Fri, 22 Jul 2016 17:28:21 GMT  
		Size: 99.8 MB (99788535 bytes)
	-	`sha256:0d1d097f6d518016b960ebe08e034758945330159a67ebc4d84094fee8e98dc4`  
		Last Modified: Thu, 11 Aug 2016 22:45:53 GMT  
		Size: 13.5 KB (13537 bytes)
	-	`sha256:bbabfdbfb17f6e3527ce361b13ec4d917a1c4c08dbda2a587e0d3b9b0242c7cd`  
		Last Modified: Thu, 11 Aug 2016 22:46:12 GMT  
		Size: 59.6 MB (59636210 bytes)
	-	`sha256:f73d8022a014f08baeb40660b1e4178c72674bd853a5c2257a562bbd378a6d2d`  
		Last Modified: Thu, 11 Aug 2016 22:45:56 GMT  
		Size: 9.1 MB (9054207 bytes)

## `fsharp:4.0.1.1`

```console
$ docker pull fsharp@sha256:dba1f120db1b0be93c43ae1869f3b1cf60ca7c8d385ab329d236ad31cd5c2ab4
```

-	Platforms:
	-	linux; amd64

### `fsharp:4.0.1.1` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **269.1 MB (269122588 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e28ef46d75566cdaa3940318a9a991256fdd4ecf771005bd90c556c6c05ffea1`
-	Default Command: `["fsharpi"]`

```dockerfile
# Fri, 22 Jul 2016 15:18:56 GMT
ADD file:dc3b1b2c44af75026bc24b3f3a5bd5f45b9ca7ed395b91dfacd1b47fe0545fb5 in /
# Fri, 22 Jul 2016 15:18:58 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 22 Jul 2016 15:19:00 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 22 Jul 2016 15:19:02 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 22 Jul 2016 15:19:02 GMT
CMD ["/bin/bash"]
# Fri, 22 Jul 2016 16:56:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 22 Jul 2016 16:57:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 22 Jul 2016 16:59:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Fri, 22 Jul 2016 17:40:00 GMT
MAINTAINER Henrik Feldt
# Thu, 11 Aug 2016 22:28:57 GMT
ENV MONO_VERSION=4.4.2.11
# Thu, 11 Aug 2016 22:29:15 GMT
RUN apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF &&     echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-xamarin.list
# Thu, 11 Aug 2016 22:29:15 GMT
ENV MONO_THREADS_PER_CPU=50
# Thu, 11 Aug 2016 22:31:03 GMT
RUN apt-get -y update &&     apt-get -y --no-install-recommends install nuget mono-devel ca-certificates-mono &&     rm -rf /var/lib/apt/lists/*
# Thu, 11 Aug 2016 22:38:20 GMT
ENV FSHARP_VERSION=4.0.1.1
# Thu, 11 Aug 2016 22:38:20 GMT
ENV FSHARP_PREFIX=/usr FSHARP_GACDIR=/usr/lib/mono/gac FSHARP_BASENAME=fsharp-4.0.1.1 FSHARP_ARCHIVE=4.0.1.1.tar.gz FSHARP_ARCHIVE_URL=https://github.com/fsharp/fsharp/archive/4.0.1.1.tar.gz
# Thu, 11 Aug 2016 22:45:41 GMT
RUN mkdir -p /tmp/src &&     cd /tmp/src &&     wget $FSHARP_ARCHIVE_URL &&     tar xf $FSHARP_ARCHIVE &&     cd $FSHARP_BASENAME &&     ./autogen.sh --prefix=$FSHARP_PREFIX --with-gacdir=$FSHARP_GACDIR &&     make &&     make install &&     cd ~ &&     rm -rf /tmp/src
# Thu, 11 Aug 2016 22:45:42 GMT
WORKDIR /root
# Thu, 11 Aug 2016 22:45:42 GMT
CMD ["fsharpi"]
```

-	Layers:
	-	`sha256:96c6a1f3c3b0183063a9dad891fe6d8ec466c2fdf9571a0c19b3319ea8a58871`  
		Last Modified: Mon, 18 Jul 2016 17:36:54 GMT  
		Size: 65.7 MB (65699069 bytes)
	-	`sha256:ed40d4bcb31369df1a018c64e560e94dfd106d0b2851db25f921d3708d64fac5`  
		Last Modified: Fri, 22 Jul 2016 15:21:07 GMT  
		Size: 71.6 KB (71563 bytes)
	-	`sha256:b171f9dbc13b68a99386e4d54e28e26144688973ad7bbdd9ec1f822dc8b0ac0a`  
		Last Modified: Fri, 22 Jul 2016 15:21:06 GMT  
		Size: 365.0 B
	-	`sha256:ccfc4df4fbba7d591c1eff4972018e67c1142b21b64bc36fba3f93bd33f2ebd9`  
		Last Modified: Fri, 22 Jul 2016 15:21:07 GMT  
		Size: 680.0 B
	-	`sha256:5036c705f4c89d1622d6199f627d63b89766bd9d524093d750c2e13b119c12dd`  
		Last Modified: Fri, 22 Jul 2016 17:27:58 GMT  
		Size: 4.6 MB (4598315 bytes)
	-	`sha256:a4f5a357f49fcc813854779c9fba583dff945e30bd330bdbc5d0bbc7f3c156eb`  
		Last Modified: Fri, 22 Jul 2016 17:28:09 GMT  
		Size: 29.0 MB (29004589 bytes)
	-	`sha256:b4dc22b2034a5a8736e3d7cb07f589eb19ca6aa203b7a5f5de044366fa2e4e98`  
		Last Modified: Fri, 22 Jul 2016 17:28:21 GMT  
		Size: 99.8 MB (99788535 bytes)
	-	`sha256:0d1d097f6d518016b960ebe08e034758945330159a67ebc4d84094fee8e98dc4`  
		Last Modified: Thu, 11 Aug 2016 22:45:53 GMT  
		Size: 13.5 KB (13537 bytes)
	-	`sha256:bbabfdbfb17f6e3527ce361b13ec4d917a1c4c08dbda2a587e0d3b9b0242c7cd`  
		Last Modified: Thu, 11 Aug 2016 22:46:12 GMT  
		Size: 59.6 MB (59636210 bytes)
	-	`sha256:10b3c292c72aff9a92d691efe4e24fc4bbdafac90e16481a29be7eb653e289de`  
		Last Modified: Thu, 11 Aug 2016 22:46:32 GMT  
		Size: 10.3 MB (10309725 bytes)

## `fsharp:latest`

```console
$ docker pull fsharp@sha256:dba1f120db1b0be93c43ae1869f3b1cf60ca7c8d385ab329d236ad31cd5c2ab4
```

-	Platforms:
	-	linux; amd64

### `fsharp:latest` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **269.1 MB (269122588 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e28ef46d75566cdaa3940318a9a991256fdd4ecf771005bd90c556c6c05ffea1`
-	Default Command: `["fsharpi"]`

```dockerfile
# Fri, 22 Jul 2016 15:18:56 GMT
ADD file:dc3b1b2c44af75026bc24b3f3a5bd5f45b9ca7ed395b91dfacd1b47fe0545fb5 in /
# Fri, 22 Jul 2016 15:18:58 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 22 Jul 2016 15:19:00 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 22 Jul 2016 15:19:02 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 22 Jul 2016 15:19:02 GMT
CMD ["/bin/bash"]
# Fri, 22 Jul 2016 16:56:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 22 Jul 2016 16:57:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 22 Jul 2016 16:59:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Fri, 22 Jul 2016 17:40:00 GMT
MAINTAINER Henrik Feldt
# Thu, 11 Aug 2016 22:28:57 GMT
ENV MONO_VERSION=4.4.2.11
# Thu, 11 Aug 2016 22:29:15 GMT
RUN apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF &&     echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-xamarin.list
# Thu, 11 Aug 2016 22:29:15 GMT
ENV MONO_THREADS_PER_CPU=50
# Thu, 11 Aug 2016 22:31:03 GMT
RUN apt-get -y update &&     apt-get -y --no-install-recommends install nuget mono-devel ca-certificates-mono &&     rm -rf /var/lib/apt/lists/*
# Thu, 11 Aug 2016 22:38:20 GMT
ENV FSHARP_VERSION=4.0.1.1
# Thu, 11 Aug 2016 22:38:20 GMT
ENV FSHARP_PREFIX=/usr FSHARP_GACDIR=/usr/lib/mono/gac FSHARP_BASENAME=fsharp-4.0.1.1 FSHARP_ARCHIVE=4.0.1.1.tar.gz FSHARP_ARCHIVE_URL=https://github.com/fsharp/fsharp/archive/4.0.1.1.tar.gz
# Thu, 11 Aug 2016 22:45:41 GMT
RUN mkdir -p /tmp/src &&     cd /tmp/src &&     wget $FSHARP_ARCHIVE_URL &&     tar xf $FSHARP_ARCHIVE &&     cd $FSHARP_BASENAME &&     ./autogen.sh --prefix=$FSHARP_PREFIX --with-gacdir=$FSHARP_GACDIR &&     make &&     make install &&     cd ~ &&     rm -rf /tmp/src
# Thu, 11 Aug 2016 22:45:42 GMT
WORKDIR /root
# Thu, 11 Aug 2016 22:45:42 GMT
CMD ["fsharpi"]
```

-	Layers:
	-	`sha256:96c6a1f3c3b0183063a9dad891fe6d8ec466c2fdf9571a0c19b3319ea8a58871`  
		Last Modified: Mon, 18 Jul 2016 17:36:54 GMT  
		Size: 65.7 MB (65699069 bytes)
	-	`sha256:ed40d4bcb31369df1a018c64e560e94dfd106d0b2851db25f921d3708d64fac5`  
		Last Modified: Fri, 22 Jul 2016 15:21:07 GMT  
		Size: 71.6 KB (71563 bytes)
	-	`sha256:b171f9dbc13b68a99386e4d54e28e26144688973ad7bbdd9ec1f822dc8b0ac0a`  
		Last Modified: Fri, 22 Jul 2016 15:21:06 GMT  
		Size: 365.0 B
	-	`sha256:ccfc4df4fbba7d591c1eff4972018e67c1142b21b64bc36fba3f93bd33f2ebd9`  
		Last Modified: Fri, 22 Jul 2016 15:21:07 GMT  
		Size: 680.0 B
	-	`sha256:5036c705f4c89d1622d6199f627d63b89766bd9d524093d750c2e13b119c12dd`  
		Last Modified: Fri, 22 Jul 2016 17:27:58 GMT  
		Size: 4.6 MB (4598315 bytes)
	-	`sha256:a4f5a357f49fcc813854779c9fba583dff945e30bd330bdbc5d0bbc7f3c156eb`  
		Last Modified: Fri, 22 Jul 2016 17:28:09 GMT  
		Size: 29.0 MB (29004589 bytes)
	-	`sha256:b4dc22b2034a5a8736e3d7cb07f589eb19ca6aa203b7a5f5de044366fa2e4e98`  
		Last Modified: Fri, 22 Jul 2016 17:28:21 GMT  
		Size: 99.8 MB (99788535 bytes)
	-	`sha256:0d1d097f6d518016b960ebe08e034758945330159a67ebc4d84094fee8e98dc4`  
		Last Modified: Thu, 11 Aug 2016 22:45:53 GMT  
		Size: 13.5 KB (13537 bytes)
	-	`sha256:bbabfdbfb17f6e3527ce361b13ec4d917a1c4c08dbda2a587e0d3b9b0242c7cd`  
		Last Modified: Thu, 11 Aug 2016 22:46:12 GMT  
		Size: 59.6 MB (59636210 bytes)
	-	`sha256:10b3c292c72aff9a92d691efe4e24fc4bbdafac90e16481a29be7eb653e289de`  
		Last Modified: Thu, 11 Aug 2016 22:46:32 GMT  
		Size: 10.3 MB (10309725 bytes)
