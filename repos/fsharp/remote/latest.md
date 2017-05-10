## `fsharp:latest`

```console
$ docker pull fsharp@sha256:6ecba695bba03f69c0a1d352e42ad4c908f522ce345f23be8990900bde44c326
```

-	Platforms:
	-	linux; amd64

### `fsharp:latest` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **332.9 MB (332866229 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:57f08a1c0a3e56417aefeece302b0d21ac43427f7956c675c3d89f9a32b58a61`
-	Default Command: `["fsharpi"]`

```dockerfile
# Wed, 12 Apr 2017 21:05:58 GMT
ADD file:cd830d3aacc66aa750a588e56d835663908f7fbb855cb96d00aa01feb9567948 in / 
# Wed, 12 Apr 2017 21:06:00 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 12 Apr 2017 21:06:02 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 12 Apr 2017 21:06:03 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 12 Apr 2017 21:06:07 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 12 Apr 2017 21:06:08 GMT
CMD ["/bin/bash"]
# Wed, 12 Apr 2017 21:46:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 12 Apr 2017 21:47:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 12 Apr 2017 21:49:32 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 17:06:47 GMT
LABEL maintainer=Dave Curylo <dave@curylo.org>, Steve Desmond <steve@stevedesmond.ca>
# Wed, 10 May 2017 17:06:48 GMT
ENV MONO_VERSION=4.8.1.0
# Wed, 10 May 2017 17:06:55 GMT
RUN apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF &&     echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-xamarin.list
# Wed, 10 May 2017 17:06:56 GMT
ENV MONO_THREADS_PER_CPU=50
# Wed, 10 May 2017 17:08:09 GMT
RUN apt-get -y update &&     apt-get -y --no-install-recommends install nuget mono-devel ca-certificates-mono &&     rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 17:12:10 GMT
ENV FSHARP_VERSION=4.1.18
# Wed, 10 May 2017 17:12:31 GMT
ENV FSHARP_PREFIX=/usr FSHARP_GACDIR=/usr/lib/mono/gac FSHARP_BASENAME=fsharp-4.1.18 FSHARP_ARCHIVE=4.1.18.tar.gz FSHARP_ARCHIVE_URL=https://github.com/fsharp/fsharp/archive/4.1.18.tar.gz
# Wed, 10 May 2017 17:22:04 GMT
RUN mkdir -p /tmp/src &&     cd /tmp/src &&     wget $FSHARP_ARCHIVE_URL &&     tar xf $FSHARP_ARCHIVE &&     cd $FSHARP_BASENAME &&     ./autogen.sh --prefix=$FSHARP_PREFIX --with-gacdir=$FSHARP_GACDIR &&     make &&     make install &&     cd ~ &&     rm -rf /tmp/src
# Wed, 10 May 2017 17:37:33 GMT
WORKDIR /root
# Wed, 10 May 2017 17:37:33 GMT
CMD ["fsharpi"]
```

-	Layers:
	-	`sha256:8f229c550c2e1d5736aa23d1b3b5e10a70f9db72e4246867fd73271c11284b45`  
		Last Modified: Mon, 03 Apr 2017 14:21:42 GMT  
		Size: 65.7 MB (65703403 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e1fb71e8df6645b62584c22e511df7717c8fcc1c111b5dea1df60eda9b22c42`  
		Last Modified: Wed, 12 Apr 2017 21:09:42 GMT  
		Size: 71.6 KB (71565 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f75a345868568d65d520f0ca596863dc6906460eb1ce68209fc9f85bb1ccf04d`  
		Last Modified: Wed, 12 Apr 2017 21:09:42 GMT  
		Size: 365.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8744e322b832a60fc910434a6cb371a45e176fc08c93604878357302b709945c`  
		Last Modified: Wed, 12 Apr 2017 21:09:42 GMT  
		Size: 682.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5165bfce78f4e197b6aedf3bcae095bd466ed7f7de688cd0710fa6875a699ab`  
		Last Modified: Wed, 12 Apr 2017 21:09:42 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01e7154138c72cb322c393eabd699cfd7ba899875697623ef91f1fc5400c3296`  
		Last Modified: Wed, 12 Apr 2017 22:08:38 GMT  
		Size: 4.6 MB (4600124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0d476a023136488cdbaef7f079743b09988c47e3215e342153f85d69b28408c`  
		Last Modified: Wed, 12 Apr 2017 22:09:23 GMT  
		Size: 29.0 MB (29004314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ea0cf9a9849fd950edaef3b4b16b2a3a392fb4a499eac72187ad4ff991c44e6`  
		Last Modified: Wed, 12 Apr 2017 22:10:43 GMT  
		Size: 99.8 MB (99843753 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bddbc17efc44b8f0bd50289c36fb901192a773afc5e3c09bc51df3a690dc3649`  
		Last Modified: Wed, 10 May 2017 18:02:20 GMT  
		Size: 13.8 KB (13819 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54365688f1003fa641b4f4f7432ec04a450d6f00e557603a2b7e35bcb84f876b`  
		Last Modified: Wed, 10 May 2017 18:02:37 GMT  
		Size: 54.9 MB (54935474 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:516cb386602bd07e5a8e5411c91d8196ebce4407a07e8349a3a913d325b1d69f`  
		Last Modified: Wed, 10 May 2017 18:02:40 GMT  
		Size: 78.7 MB (78692567 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
