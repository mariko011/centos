<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `elixir`

-	[`elixir:1.4.2`](#elixir142)
-	[`elixir:1.4`](#elixir14)
-	[`elixir:latest`](#elixirlatest)
-	[`elixir:1.4.2-slim`](#elixir142-slim)
-	[`elixir:1.4-slim`](#elixir14-slim)
-	[`elixir:slim`](#elixirslim)
-	[`elixir:1.3.4`](#elixir134)
-	[`elixir:1.3`](#elixir13)
-	[`elixir:1.3.4-slim`](#elixir134-slim)
-	[`elixir:1.3-slim`](#elixir13-slim)
-	[`elixir:1.2.6`](#elixir126)
-	[`elixir:1.2`](#elixir12)
-	[`elixir:1.2.6-slim`](#elixir126-slim)
-	[`elixir:1.2-slim`](#elixir12-slim)

## `elixir:1.4.2`

```console
$ docker pull elixir@sha256:5b1e6469bbdd943ff3aa4138d654dabe770c7515e175bdc6275712480016327f
```

-	Platforms:
	-	linux; amd64

### `elixir:1.4.2` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **335.4 MB (335378858 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c83b24539405d2d750080ff9a4a06aa059dbd5b9350b8dfe3554f2f975ba2a32`
-	Default Command: `["iex"]`

```dockerfile
# Mon, 24 Apr 2017 19:20:41 GMT
ADD file:712c48086043553b85ffb031d8f6c5de857a2e53974df30cdfbc1e85c1b00a25 in / 
# Mon, 24 Apr 2017 19:20:42 GMT
CMD ["/bin/bash"]
# Mon, 24 Apr 2017 19:54:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Apr 2017 19:55:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Apr 2017 22:15:00 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 06:47:39 GMT
ENV OTP_VERSION=19.3.1
# Tue, 25 Apr 2017 06:54:38 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="618f19e4274150a107bea7621d871d96d386291759ffb57d1a3e60f1f243a509" 	&& runtimeDeps='libodbc1 			libsctp1 			libwxgtk3.0-0' 	&& buildDeps='unixodbc-dev 			libsctp-dev 			libwxgtk3.0-dev' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256 otp-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/otp-src 	&& tar -xzf otp-src.tar.gz -C /usr/src/otp-src --strip-components=1 	&& rm otp-src.tar.gz 	&& cd /usr/src/otp-src 	&& ./otp_build autoconf 	&& ./configure 		--enable-sctp 		--enable-dirty-schedulers 	&& make -j$(nproc) 	&& make install 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/otp-src /var/lib/apt/lists/*
# Tue, 25 Apr 2017 06:54:39 GMT
CMD ["erl"]
# Tue, 25 Apr 2017 06:54:40 GMT
ENV REBAR_VERSION=2.6.4
# Tue, 25 Apr 2017 06:54:43 GMT
RUN set -xe 	&& REBAR_DOWNLOAD_URL="https://github.com/rebar/rebar/archive/${REBAR_VERSION}.tar.gz" 	&& REBAR_DOWNLOAD_SHA256="577246bafa2eb2b2c3f1d0c157408650446884555bf87901508ce71d5cc0bd07" 	&& mkdir -p /usr/src/rebar-src 	&& curl -fSL -o rebar-src.tar.gz "$REBAR_DOWNLOAD_URL" 	&& echo "$REBAR_DOWNLOAD_SHA256 rebar-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar-src.tar.gz -C /usr/src/rebar-src --strip-components=1 	&& rm rebar-src.tar.gz 	&& cd /usr/src/rebar-src 	&& ./bootstrap 	&& install -v ./rebar /usr/local/bin/ 	&& rm -rf /usr/src/rebar-src
# Tue, 25 Apr 2017 06:54:44 GMT
ENV REBAR3_VERSION=3.3.6
# Tue, 25 Apr 2017 06:55:08 GMT
RUN set -xe 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="2a3a6f709433a11e3fca51cc106b66e0941e7e7067bbc3f8364cbbad0b40660e" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src
# Tue, 25 Apr 2017 15:02:10 GMT
ENV ELIXIR_VERSION=v1.4.2 LANG=C.UTF-8
# Tue, 25 Apr 2017 15:02:23 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/releases/download/${ELIXIR_VERSION}/Precompiled.zip" 	&& ELIXIR_DOWNLOAD_SHA256="3ff610166612db10d3f97895972882a6912e99628e31116d22406389c1de48cc"	&& buildDeps=' 		unzip 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o elixir-precompiled.zip $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256 elixir-precompiled.zip" | sha256sum -c - 	&& unzip -d /usr/local elixir-precompiled.zip 	&& rm elixir-precompiled.zip 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 15:02:31 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:cd0a524342efac6edff500c17e625735bbe479c926439b263bbe3c8518a0849c`  
		Last Modified: Mon, 24 Apr 2017 19:32:05 GMT  
		Size: 52.6 MB (52550276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e39c3ffe41332a7a3c7f85f57e547361ec90b6e0091dd6058e06acccde2217d4`  
		Last Modified: Mon, 24 Apr 2017 22:19:28 GMT  
		Size: 19.3 MB (19266225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85334a7c200103c122f3cbf56460f28fe688abc52655dc714afa939e49848ba8`  
		Last Modified: Mon, 24 Apr 2017 22:20:21 GMT  
		Size: 43.2 MB (43231315 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c546d9d6a84ca2a1b7459a47978abe757bf67096d9dd704a9a5a0a786d2d325`  
		Last Modified: Mon, 24 Apr 2017 22:21:26 GMT  
		Size: 131.8 MB (131793725 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a56695c10496ac6b11db0c36137ab9bfa878d9b54012cb53df27531de727e0b`  
		Last Modified: Tue, 25 Apr 2017 17:23:29 GMT  
		Size: 82.3 MB (82255580 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e55f8097e16eac08de81dbbd8ec884144e843bbcf35f0893d536bdfb3c93e754`  
		Last Modified: Tue, 25 Apr 2017 17:23:09 GMT  
		Size: 199.2 KB (199184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:711664406d8447ecb2ca71cad6ae18a14bc8c72cb4d569c520dca1d394c218d4`  
		Last Modified: Tue, 25 Apr 2017 17:23:09 GMT  
		Size: 2.3 MB (2300169 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ab2786d0c7fbb318cdb1d35d97c4f733ee51cd52a8cdf9df8a52ee8bf6b61eb`  
		Last Modified: Tue, 25 Apr 2017 19:54:23 GMT  
		Size: 3.8 MB (3782384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `elixir:1.4`

```console
$ docker pull elixir@sha256:5b1e6469bbdd943ff3aa4138d654dabe770c7515e175bdc6275712480016327f
```

-	Platforms:
	-	linux; amd64

### `elixir:1.4` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **335.4 MB (335378858 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c83b24539405d2d750080ff9a4a06aa059dbd5b9350b8dfe3554f2f975ba2a32`
-	Default Command: `["iex"]`

```dockerfile
# Mon, 24 Apr 2017 19:20:41 GMT
ADD file:712c48086043553b85ffb031d8f6c5de857a2e53974df30cdfbc1e85c1b00a25 in / 
# Mon, 24 Apr 2017 19:20:42 GMT
CMD ["/bin/bash"]
# Mon, 24 Apr 2017 19:54:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Apr 2017 19:55:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Apr 2017 22:15:00 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 06:47:39 GMT
ENV OTP_VERSION=19.3.1
# Tue, 25 Apr 2017 06:54:38 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="618f19e4274150a107bea7621d871d96d386291759ffb57d1a3e60f1f243a509" 	&& runtimeDeps='libodbc1 			libsctp1 			libwxgtk3.0-0' 	&& buildDeps='unixodbc-dev 			libsctp-dev 			libwxgtk3.0-dev' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256 otp-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/otp-src 	&& tar -xzf otp-src.tar.gz -C /usr/src/otp-src --strip-components=1 	&& rm otp-src.tar.gz 	&& cd /usr/src/otp-src 	&& ./otp_build autoconf 	&& ./configure 		--enable-sctp 		--enable-dirty-schedulers 	&& make -j$(nproc) 	&& make install 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/otp-src /var/lib/apt/lists/*
# Tue, 25 Apr 2017 06:54:39 GMT
CMD ["erl"]
# Tue, 25 Apr 2017 06:54:40 GMT
ENV REBAR_VERSION=2.6.4
# Tue, 25 Apr 2017 06:54:43 GMT
RUN set -xe 	&& REBAR_DOWNLOAD_URL="https://github.com/rebar/rebar/archive/${REBAR_VERSION}.tar.gz" 	&& REBAR_DOWNLOAD_SHA256="577246bafa2eb2b2c3f1d0c157408650446884555bf87901508ce71d5cc0bd07" 	&& mkdir -p /usr/src/rebar-src 	&& curl -fSL -o rebar-src.tar.gz "$REBAR_DOWNLOAD_URL" 	&& echo "$REBAR_DOWNLOAD_SHA256 rebar-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar-src.tar.gz -C /usr/src/rebar-src --strip-components=1 	&& rm rebar-src.tar.gz 	&& cd /usr/src/rebar-src 	&& ./bootstrap 	&& install -v ./rebar /usr/local/bin/ 	&& rm -rf /usr/src/rebar-src
# Tue, 25 Apr 2017 06:54:44 GMT
ENV REBAR3_VERSION=3.3.6
# Tue, 25 Apr 2017 06:55:08 GMT
RUN set -xe 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="2a3a6f709433a11e3fca51cc106b66e0941e7e7067bbc3f8364cbbad0b40660e" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src
# Tue, 25 Apr 2017 15:02:10 GMT
ENV ELIXIR_VERSION=v1.4.2 LANG=C.UTF-8
# Tue, 25 Apr 2017 15:02:23 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/releases/download/${ELIXIR_VERSION}/Precompiled.zip" 	&& ELIXIR_DOWNLOAD_SHA256="3ff610166612db10d3f97895972882a6912e99628e31116d22406389c1de48cc"	&& buildDeps=' 		unzip 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o elixir-precompiled.zip $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256 elixir-precompiled.zip" | sha256sum -c - 	&& unzip -d /usr/local elixir-precompiled.zip 	&& rm elixir-precompiled.zip 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 15:02:31 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:cd0a524342efac6edff500c17e625735bbe479c926439b263bbe3c8518a0849c`  
		Last Modified: Mon, 24 Apr 2017 19:32:05 GMT  
		Size: 52.6 MB (52550276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e39c3ffe41332a7a3c7f85f57e547361ec90b6e0091dd6058e06acccde2217d4`  
		Last Modified: Mon, 24 Apr 2017 22:19:28 GMT  
		Size: 19.3 MB (19266225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85334a7c200103c122f3cbf56460f28fe688abc52655dc714afa939e49848ba8`  
		Last Modified: Mon, 24 Apr 2017 22:20:21 GMT  
		Size: 43.2 MB (43231315 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c546d9d6a84ca2a1b7459a47978abe757bf67096d9dd704a9a5a0a786d2d325`  
		Last Modified: Mon, 24 Apr 2017 22:21:26 GMT  
		Size: 131.8 MB (131793725 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a56695c10496ac6b11db0c36137ab9bfa878d9b54012cb53df27531de727e0b`  
		Last Modified: Tue, 25 Apr 2017 17:23:29 GMT  
		Size: 82.3 MB (82255580 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e55f8097e16eac08de81dbbd8ec884144e843bbcf35f0893d536bdfb3c93e754`  
		Last Modified: Tue, 25 Apr 2017 17:23:09 GMT  
		Size: 199.2 KB (199184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:711664406d8447ecb2ca71cad6ae18a14bc8c72cb4d569c520dca1d394c218d4`  
		Last Modified: Tue, 25 Apr 2017 17:23:09 GMT  
		Size: 2.3 MB (2300169 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ab2786d0c7fbb318cdb1d35d97c4f733ee51cd52a8cdf9df8a52ee8bf6b61eb`  
		Last Modified: Tue, 25 Apr 2017 19:54:23 GMT  
		Size: 3.8 MB (3782384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `elixir:latest`

```console
$ docker pull elixir@sha256:5b1e6469bbdd943ff3aa4138d654dabe770c7515e175bdc6275712480016327f
```

-	Platforms:
	-	linux; amd64

### `elixir:latest` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **335.4 MB (335378858 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c83b24539405d2d750080ff9a4a06aa059dbd5b9350b8dfe3554f2f975ba2a32`
-	Default Command: `["iex"]`

```dockerfile
# Mon, 24 Apr 2017 19:20:41 GMT
ADD file:712c48086043553b85ffb031d8f6c5de857a2e53974df30cdfbc1e85c1b00a25 in / 
# Mon, 24 Apr 2017 19:20:42 GMT
CMD ["/bin/bash"]
# Mon, 24 Apr 2017 19:54:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Apr 2017 19:55:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Apr 2017 22:15:00 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 06:47:39 GMT
ENV OTP_VERSION=19.3.1
# Tue, 25 Apr 2017 06:54:38 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="618f19e4274150a107bea7621d871d96d386291759ffb57d1a3e60f1f243a509" 	&& runtimeDeps='libodbc1 			libsctp1 			libwxgtk3.0-0' 	&& buildDeps='unixodbc-dev 			libsctp-dev 			libwxgtk3.0-dev' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256 otp-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/otp-src 	&& tar -xzf otp-src.tar.gz -C /usr/src/otp-src --strip-components=1 	&& rm otp-src.tar.gz 	&& cd /usr/src/otp-src 	&& ./otp_build autoconf 	&& ./configure 		--enable-sctp 		--enable-dirty-schedulers 	&& make -j$(nproc) 	&& make install 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/otp-src /var/lib/apt/lists/*
# Tue, 25 Apr 2017 06:54:39 GMT
CMD ["erl"]
# Tue, 25 Apr 2017 06:54:40 GMT
ENV REBAR_VERSION=2.6.4
# Tue, 25 Apr 2017 06:54:43 GMT
RUN set -xe 	&& REBAR_DOWNLOAD_URL="https://github.com/rebar/rebar/archive/${REBAR_VERSION}.tar.gz" 	&& REBAR_DOWNLOAD_SHA256="577246bafa2eb2b2c3f1d0c157408650446884555bf87901508ce71d5cc0bd07" 	&& mkdir -p /usr/src/rebar-src 	&& curl -fSL -o rebar-src.tar.gz "$REBAR_DOWNLOAD_URL" 	&& echo "$REBAR_DOWNLOAD_SHA256 rebar-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar-src.tar.gz -C /usr/src/rebar-src --strip-components=1 	&& rm rebar-src.tar.gz 	&& cd /usr/src/rebar-src 	&& ./bootstrap 	&& install -v ./rebar /usr/local/bin/ 	&& rm -rf /usr/src/rebar-src
# Tue, 25 Apr 2017 06:54:44 GMT
ENV REBAR3_VERSION=3.3.6
# Tue, 25 Apr 2017 06:55:08 GMT
RUN set -xe 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="2a3a6f709433a11e3fca51cc106b66e0941e7e7067bbc3f8364cbbad0b40660e" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src
# Tue, 25 Apr 2017 15:02:10 GMT
ENV ELIXIR_VERSION=v1.4.2 LANG=C.UTF-8
# Tue, 25 Apr 2017 15:02:23 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/releases/download/${ELIXIR_VERSION}/Precompiled.zip" 	&& ELIXIR_DOWNLOAD_SHA256="3ff610166612db10d3f97895972882a6912e99628e31116d22406389c1de48cc"	&& buildDeps=' 		unzip 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o elixir-precompiled.zip $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256 elixir-precompiled.zip" | sha256sum -c - 	&& unzip -d /usr/local elixir-precompiled.zip 	&& rm elixir-precompiled.zip 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 15:02:31 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:cd0a524342efac6edff500c17e625735bbe479c926439b263bbe3c8518a0849c`  
		Last Modified: Mon, 24 Apr 2017 19:32:05 GMT  
		Size: 52.6 MB (52550276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e39c3ffe41332a7a3c7f85f57e547361ec90b6e0091dd6058e06acccde2217d4`  
		Last Modified: Mon, 24 Apr 2017 22:19:28 GMT  
		Size: 19.3 MB (19266225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85334a7c200103c122f3cbf56460f28fe688abc52655dc714afa939e49848ba8`  
		Last Modified: Mon, 24 Apr 2017 22:20:21 GMT  
		Size: 43.2 MB (43231315 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c546d9d6a84ca2a1b7459a47978abe757bf67096d9dd704a9a5a0a786d2d325`  
		Last Modified: Mon, 24 Apr 2017 22:21:26 GMT  
		Size: 131.8 MB (131793725 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a56695c10496ac6b11db0c36137ab9bfa878d9b54012cb53df27531de727e0b`  
		Last Modified: Tue, 25 Apr 2017 17:23:29 GMT  
		Size: 82.3 MB (82255580 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e55f8097e16eac08de81dbbd8ec884144e843bbcf35f0893d536bdfb3c93e754`  
		Last Modified: Tue, 25 Apr 2017 17:23:09 GMT  
		Size: 199.2 KB (199184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:711664406d8447ecb2ca71cad6ae18a14bc8c72cb4d569c520dca1d394c218d4`  
		Last Modified: Tue, 25 Apr 2017 17:23:09 GMT  
		Size: 2.3 MB (2300169 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ab2786d0c7fbb318cdb1d35d97c4f733ee51cd52a8cdf9df8a52ee8bf6b61eb`  
		Last Modified: Tue, 25 Apr 2017 19:54:23 GMT  
		Size: 3.8 MB (3782384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `elixir:1.4.2-slim`

```console
$ docker pull elixir@sha256:b28ae6c84785040e99a6202567ab30c44f98b741027c48892b62b47b821433b4
```

-	Platforms:
	-	linux; amd64

### `elixir:1.4.2-slim` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **159.6 MB (159612847 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:83d677c180c5913da30a14787c28bd67a3fc5d7979659246e380f763144a098f`
-	Default Command: `["iex"]`

```dockerfile
# Mon, 24 Apr 2017 19:20:41 GMT
ADD file:712c48086043553b85ffb031d8f6c5de857a2e53974df30cdfbc1e85c1b00a25 in / 
# Mon, 24 Apr 2017 19:20:42 GMT
CMD ["/bin/bash"]
# Mon, 24 Apr 2017 22:47:16 GMT
ENV OTP_VERSION=19.3.1
# Mon, 24 Apr 2017 22:54:01 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="618f19e4274150a107bea7621d871d96d386291759ffb57d1a3e60f1f243a509" 	&& runtimeDeps=' 		libodbc1 		libssl1.0.0 		libsctp1 		libwxgtk3.0-0 	' 	&& buildDeps=' 		curl 		ca-certificates 		autoconf 		gcc 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 		libwxgtk3.0-dev 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256 otp-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/otp-src 	&& tar -xzf otp-src.tar.gz -C /usr/src/otp-src --strip-components=1 	&& rm otp-src.tar.gz 	&& cd /usr/src/otp-src 	&& ./otp_build autoconf 	&& ./configure 		--enable-sctp 		--enable-dirty-schedulers 	&& make -j$(nproc) 	&& make install 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/otp-src /var/lib/apt/lists/*
# Mon, 24 Apr 2017 22:54:01 GMT
CMD ["erl"]
# Tue, 25 Apr 2017 06:34:01 GMT
ENV ELIXIR_VERSION=v1.4.2 LANG=C.UTF-8
# Tue, 25 Apr 2017 06:34:18 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/releases/download/${ELIXIR_VERSION}/Precompiled.zip" 	&& ELIXIR_DOWNLOAD_SHA256="3ff610166612db10d3f97895972882a6912e99628e31116d22406389c1de48cc"	&& buildDeps=' 		ca-certificates 		curl 		unzip 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o elixir-precompiled.zip $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256 elixir-precompiled.zip" | sha256sum -c - 	&& unzip -d /usr/local elixir-precompiled.zip 	&& rm elixir-precompiled.zip 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 06:34:19 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:cd0a524342efac6edff500c17e625735bbe479c926439b263bbe3c8518a0849c`  
		Last Modified: Mon, 24 Apr 2017 19:32:05 GMT  
		Size: 52.6 MB (52550276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb5771cdf7445db345ce4c503098a93a32126c753cbbedf21724a6e4ed77e473`  
		Last Modified: Tue, 25 Apr 2017 17:25:31 GMT  
		Size: 102.9 MB (102862587 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0947c029e2f1dbfae14ee43ebd2119423c6f95f905e9093d02ea976f5b3778f1`  
		Last Modified: Tue, 25 Apr 2017 19:55:24 GMT  
		Size: 4.2 MB (4199984 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `elixir:1.4-slim`

```console
$ docker pull elixir@sha256:b28ae6c84785040e99a6202567ab30c44f98b741027c48892b62b47b821433b4
```

-	Platforms:
	-	linux; amd64

### `elixir:1.4-slim` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **159.6 MB (159612847 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:83d677c180c5913da30a14787c28bd67a3fc5d7979659246e380f763144a098f`
-	Default Command: `["iex"]`

```dockerfile
# Mon, 24 Apr 2017 19:20:41 GMT
ADD file:712c48086043553b85ffb031d8f6c5de857a2e53974df30cdfbc1e85c1b00a25 in / 
# Mon, 24 Apr 2017 19:20:42 GMT
CMD ["/bin/bash"]
# Mon, 24 Apr 2017 22:47:16 GMT
ENV OTP_VERSION=19.3.1
# Mon, 24 Apr 2017 22:54:01 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="618f19e4274150a107bea7621d871d96d386291759ffb57d1a3e60f1f243a509" 	&& runtimeDeps=' 		libodbc1 		libssl1.0.0 		libsctp1 		libwxgtk3.0-0 	' 	&& buildDeps=' 		curl 		ca-certificates 		autoconf 		gcc 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 		libwxgtk3.0-dev 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256 otp-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/otp-src 	&& tar -xzf otp-src.tar.gz -C /usr/src/otp-src --strip-components=1 	&& rm otp-src.tar.gz 	&& cd /usr/src/otp-src 	&& ./otp_build autoconf 	&& ./configure 		--enable-sctp 		--enable-dirty-schedulers 	&& make -j$(nproc) 	&& make install 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/otp-src /var/lib/apt/lists/*
# Mon, 24 Apr 2017 22:54:01 GMT
CMD ["erl"]
# Tue, 25 Apr 2017 06:34:01 GMT
ENV ELIXIR_VERSION=v1.4.2 LANG=C.UTF-8
# Tue, 25 Apr 2017 06:34:18 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/releases/download/${ELIXIR_VERSION}/Precompiled.zip" 	&& ELIXIR_DOWNLOAD_SHA256="3ff610166612db10d3f97895972882a6912e99628e31116d22406389c1de48cc"	&& buildDeps=' 		ca-certificates 		curl 		unzip 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o elixir-precompiled.zip $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256 elixir-precompiled.zip" | sha256sum -c - 	&& unzip -d /usr/local elixir-precompiled.zip 	&& rm elixir-precompiled.zip 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 06:34:19 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:cd0a524342efac6edff500c17e625735bbe479c926439b263bbe3c8518a0849c`  
		Last Modified: Mon, 24 Apr 2017 19:32:05 GMT  
		Size: 52.6 MB (52550276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb5771cdf7445db345ce4c503098a93a32126c753cbbedf21724a6e4ed77e473`  
		Last Modified: Tue, 25 Apr 2017 17:25:31 GMT  
		Size: 102.9 MB (102862587 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0947c029e2f1dbfae14ee43ebd2119423c6f95f905e9093d02ea976f5b3778f1`  
		Last Modified: Tue, 25 Apr 2017 19:55:24 GMT  
		Size: 4.2 MB (4199984 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `elixir:slim`

```console
$ docker pull elixir@sha256:b28ae6c84785040e99a6202567ab30c44f98b741027c48892b62b47b821433b4
```

-	Platforms:
	-	linux; amd64

### `elixir:slim` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **159.6 MB (159612847 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:83d677c180c5913da30a14787c28bd67a3fc5d7979659246e380f763144a098f`
-	Default Command: `["iex"]`

```dockerfile
# Mon, 24 Apr 2017 19:20:41 GMT
ADD file:712c48086043553b85ffb031d8f6c5de857a2e53974df30cdfbc1e85c1b00a25 in / 
# Mon, 24 Apr 2017 19:20:42 GMT
CMD ["/bin/bash"]
# Mon, 24 Apr 2017 22:47:16 GMT
ENV OTP_VERSION=19.3.1
# Mon, 24 Apr 2017 22:54:01 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="618f19e4274150a107bea7621d871d96d386291759ffb57d1a3e60f1f243a509" 	&& runtimeDeps=' 		libodbc1 		libssl1.0.0 		libsctp1 		libwxgtk3.0-0 	' 	&& buildDeps=' 		curl 		ca-certificates 		autoconf 		gcc 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 		libwxgtk3.0-dev 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256 otp-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/otp-src 	&& tar -xzf otp-src.tar.gz -C /usr/src/otp-src --strip-components=1 	&& rm otp-src.tar.gz 	&& cd /usr/src/otp-src 	&& ./otp_build autoconf 	&& ./configure 		--enable-sctp 		--enable-dirty-schedulers 	&& make -j$(nproc) 	&& make install 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/otp-src /var/lib/apt/lists/*
# Mon, 24 Apr 2017 22:54:01 GMT
CMD ["erl"]
# Tue, 25 Apr 2017 06:34:01 GMT
ENV ELIXIR_VERSION=v1.4.2 LANG=C.UTF-8
# Tue, 25 Apr 2017 06:34:18 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/releases/download/${ELIXIR_VERSION}/Precompiled.zip" 	&& ELIXIR_DOWNLOAD_SHA256="3ff610166612db10d3f97895972882a6912e99628e31116d22406389c1de48cc"	&& buildDeps=' 		ca-certificates 		curl 		unzip 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o elixir-precompiled.zip $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256 elixir-precompiled.zip" | sha256sum -c - 	&& unzip -d /usr/local elixir-precompiled.zip 	&& rm elixir-precompiled.zip 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 06:34:19 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:cd0a524342efac6edff500c17e625735bbe479c926439b263bbe3c8518a0849c`  
		Last Modified: Mon, 24 Apr 2017 19:32:05 GMT  
		Size: 52.6 MB (52550276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb5771cdf7445db345ce4c503098a93a32126c753cbbedf21724a6e4ed77e473`  
		Last Modified: Tue, 25 Apr 2017 17:25:31 GMT  
		Size: 102.9 MB (102862587 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0947c029e2f1dbfae14ee43ebd2119423c6f95f905e9093d02ea976f5b3778f1`  
		Last Modified: Tue, 25 Apr 2017 19:55:24 GMT  
		Size: 4.2 MB (4199984 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `elixir:1.3.4`

```console
$ docker pull elixir@sha256:13f07c5ce0d0b805f80b463bf751b48ba9aa113592c000dcedd1e49345f2af8d
```

-	Platforms:
	-	linux; amd64

### `elixir:1.3.4` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **335.2 MB (335166313 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:60d4c8981dda17eabd1bd46a254da81c6227efb83020c5614350d0abb47cf3da`
-	Default Command: `["iex"]`

```dockerfile
# Mon, 24 Apr 2017 19:20:41 GMT
ADD file:712c48086043553b85ffb031d8f6c5de857a2e53974df30cdfbc1e85c1b00a25 in / 
# Mon, 24 Apr 2017 19:20:42 GMT
CMD ["/bin/bash"]
# Mon, 24 Apr 2017 19:54:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Apr 2017 19:55:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Apr 2017 22:15:00 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 06:47:39 GMT
ENV OTP_VERSION=19.3.1
# Tue, 25 Apr 2017 06:54:38 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="618f19e4274150a107bea7621d871d96d386291759ffb57d1a3e60f1f243a509" 	&& runtimeDeps='libodbc1 			libsctp1 			libwxgtk3.0-0' 	&& buildDeps='unixodbc-dev 			libsctp-dev 			libwxgtk3.0-dev' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256 otp-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/otp-src 	&& tar -xzf otp-src.tar.gz -C /usr/src/otp-src --strip-components=1 	&& rm otp-src.tar.gz 	&& cd /usr/src/otp-src 	&& ./otp_build autoconf 	&& ./configure 		--enable-sctp 		--enable-dirty-schedulers 	&& make -j$(nproc) 	&& make install 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/otp-src /var/lib/apt/lists/*
# Tue, 25 Apr 2017 06:54:39 GMT
CMD ["erl"]
# Tue, 25 Apr 2017 06:54:40 GMT
ENV REBAR_VERSION=2.6.4
# Tue, 25 Apr 2017 06:54:43 GMT
RUN set -xe 	&& REBAR_DOWNLOAD_URL="https://github.com/rebar/rebar/archive/${REBAR_VERSION}.tar.gz" 	&& REBAR_DOWNLOAD_SHA256="577246bafa2eb2b2c3f1d0c157408650446884555bf87901508ce71d5cc0bd07" 	&& mkdir -p /usr/src/rebar-src 	&& curl -fSL -o rebar-src.tar.gz "$REBAR_DOWNLOAD_URL" 	&& echo "$REBAR_DOWNLOAD_SHA256 rebar-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar-src.tar.gz -C /usr/src/rebar-src --strip-components=1 	&& rm rebar-src.tar.gz 	&& cd /usr/src/rebar-src 	&& ./bootstrap 	&& install -v ./rebar /usr/local/bin/ 	&& rm -rf /usr/src/rebar-src
# Tue, 25 Apr 2017 06:54:44 GMT
ENV REBAR3_VERSION=3.3.6
# Tue, 25 Apr 2017 06:55:08 GMT
RUN set -xe 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="2a3a6f709433a11e3fca51cc106b66e0941e7e7067bbc3f8364cbbad0b40660e" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src
# Tue, 25 Apr 2017 15:01:30 GMT
ENV ELIXIR_VERSION=v1.3.4 LANG=C.UTF-8
# Tue, 25 Apr 2017 15:01:45 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/releases/download/${ELIXIR_VERSION}/Precompiled.zip" 	&& ELIXIR_DOWNLOAD_SHA256="eac16c41b88e7293a31d6ca95b5d72eaec92349a1f16846344f7b88128587e10"	&& buildDeps=' 		unzip 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o elixir-precompiled.zip $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256 elixir-precompiled.zip" | sha256sum -c - 	&& unzip -d /usr/local elixir-precompiled.zip 	&& rm elixir-precompiled.zip 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 15:01:52 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:cd0a524342efac6edff500c17e625735bbe479c926439b263bbe3c8518a0849c`  
		Last Modified: Mon, 24 Apr 2017 19:32:05 GMT  
		Size: 52.6 MB (52550276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e39c3ffe41332a7a3c7f85f57e547361ec90b6e0091dd6058e06acccde2217d4`  
		Last Modified: Mon, 24 Apr 2017 22:19:28 GMT  
		Size: 19.3 MB (19266225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85334a7c200103c122f3cbf56460f28fe688abc52655dc714afa939e49848ba8`  
		Last Modified: Mon, 24 Apr 2017 22:20:21 GMT  
		Size: 43.2 MB (43231315 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c546d9d6a84ca2a1b7459a47978abe757bf67096d9dd704a9a5a0a786d2d325`  
		Last Modified: Mon, 24 Apr 2017 22:21:26 GMT  
		Size: 131.8 MB (131793725 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a56695c10496ac6b11db0c36137ab9bfa878d9b54012cb53df27531de727e0b`  
		Last Modified: Tue, 25 Apr 2017 17:23:29 GMT  
		Size: 82.3 MB (82255580 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e55f8097e16eac08de81dbbd8ec884144e843bbcf35f0893d536bdfb3c93e754`  
		Last Modified: Tue, 25 Apr 2017 17:23:09 GMT  
		Size: 199.2 KB (199184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:711664406d8447ecb2ca71cad6ae18a14bc8c72cb4d569c520dca1d394c218d4`  
		Last Modified: Tue, 25 Apr 2017 17:23:09 GMT  
		Size: 2.3 MB (2300169 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1360aa6fc9438bf7345f04af6e6bd437cb37a66c6bcba35b56b3c5704b3ce55`  
		Last Modified: Tue, 25 Apr 2017 19:52:55 GMT  
		Size: 3.6 MB (3569839 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `elixir:1.3`

```console
$ docker pull elixir@sha256:13f07c5ce0d0b805f80b463bf751b48ba9aa113592c000dcedd1e49345f2af8d
```

-	Platforms:
	-	linux; amd64

### `elixir:1.3` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **335.2 MB (335166313 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:60d4c8981dda17eabd1bd46a254da81c6227efb83020c5614350d0abb47cf3da`
-	Default Command: `["iex"]`

```dockerfile
# Mon, 24 Apr 2017 19:20:41 GMT
ADD file:712c48086043553b85ffb031d8f6c5de857a2e53974df30cdfbc1e85c1b00a25 in / 
# Mon, 24 Apr 2017 19:20:42 GMT
CMD ["/bin/bash"]
# Mon, 24 Apr 2017 19:54:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Apr 2017 19:55:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Apr 2017 22:15:00 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 06:47:39 GMT
ENV OTP_VERSION=19.3.1
# Tue, 25 Apr 2017 06:54:38 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="618f19e4274150a107bea7621d871d96d386291759ffb57d1a3e60f1f243a509" 	&& runtimeDeps='libodbc1 			libsctp1 			libwxgtk3.0-0' 	&& buildDeps='unixodbc-dev 			libsctp-dev 			libwxgtk3.0-dev' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256 otp-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/otp-src 	&& tar -xzf otp-src.tar.gz -C /usr/src/otp-src --strip-components=1 	&& rm otp-src.tar.gz 	&& cd /usr/src/otp-src 	&& ./otp_build autoconf 	&& ./configure 		--enable-sctp 		--enable-dirty-schedulers 	&& make -j$(nproc) 	&& make install 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/otp-src /var/lib/apt/lists/*
# Tue, 25 Apr 2017 06:54:39 GMT
CMD ["erl"]
# Tue, 25 Apr 2017 06:54:40 GMT
ENV REBAR_VERSION=2.6.4
# Tue, 25 Apr 2017 06:54:43 GMT
RUN set -xe 	&& REBAR_DOWNLOAD_URL="https://github.com/rebar/rebar/archive/${REBAR_VERSION}.tar.gz" 	&& REBAR_DOWNLOAD_SHA256="577246bafa2eb2b2c3f1d0c157408650446884555bf87901508ce71d5cc0bd07" 	&& mkdir -p /usr/src/rebar-src 	&& curl -fSL -o rebar-src.tar.gz "$REBAR_DOWNLOAD_URL" 	&& echo "$REBAR_DOWNLOAD_SHA256 rebar-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar-src.tar.gz -C /usr/src/rebar-src --strip-components=1 	&& rm rebar-src.tar.gz 	&& cd /usr/src/rebar-src 	&& ./bootstrap 	&& install -v ./rebar /usr/local/bin/ 	&& rm -rf /usr/src/rebar-src
# Tue, 25 Apr 2017 06:54:44 GMT
ENV REBAR3_VERSION=3.3.6
# Tue, 25 Apr 2017 06:55:08 GMT
RUN set -xe 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="2a3a6f709433a11e3fca51cc106b66e0941e7e7067bbc3f8364cbbad0b40660e" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src
# Tue, 25 Apr 2017 15:01:30 GMT
ENV ELIXIR_VERSION=v1.3.4 LANG=C.UTF-8
# Tue, 25 Apr 2017 15:01:45 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/releases/download/${ELIXIR_VERSION}/Precompiled.zip" 	&& ELIXIR_DOWNLOAD_SHA256="eac16c41b88e7293a31d6ca95b5d72eaec92349a1f16846344f7b88128587e10"	&& buildDeps=' 		unzip 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o elixir-precompiled.zip $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256 elixir-precompiled.zip" | sha256sum -c - 	&& unzip -d /usr/local elixir-precompiled.zip 	&& rm elixir-precompiled.zip 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 15:01:52 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:cd0a524342efac6edff500c17e625735bbe479c926439b263bbe3c8518a0849c`  
		Last Modified: Mon, 24 Apr 2017 19:32:05 GMT  
		Size: 52.6 MB (52550276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e39c3ffe41332a7a3c7f85f57e547361ec90b6e0091dd6058e06acccde2217d4`  
		Last Modified: Mon, 24 Apr 2017 22:19:28 GMT  
		Size: 19.3 MB (19266225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85334a7c200103c122f3cbf56460f28fe688abc52655dc714afa939e49848ba8`  
		Last Modified: Mon, 24 Apr 2017 22:20:21 GMT  
		Size: 43.2 MB (43231315 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c546d9d6a84ca2a1b7459a47978abe757bf67096d9dd704a9a5a0a786d2d325`  
		Last Modified: Mon, 24 Apr 2017 22:21:26 GMT  
		Size: 131.8 MB (131793725 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a56695c10496ac6b11db0c36137ab9bfa878d9b54012cb53df27531de727e0b`  
		Last Modified: Tue, 25 Apr 2017 17:23:29 GMT  
		Size: 82.3 MB (82255580 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e55f8097e16eac08de81dbbd8ec884144e843bbcf35f0893d536bdfb3c93e754`  
		Last Modified: Tue, 25 Apr 2017 17:23:09 GMT  
		Size: 199.2 KB (199184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:711664406d8447ecb2ca71cad6ae18a14bc8c72cb4d569c520dca1d394c218d4`  
		Last Modified: Tue, 25 Apr 2017 17:23:09 GMT  
		Size: 2.3 MB (2300169 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1360aa6fc9438bf7345f04af6e6bd437cb37a66c6bcba35b56b3c5704b3ce55`  
		Last Modified: Tue, 25 Apr 2017 19:52:55 GMT  
		Size: 3.6 MB (3569839 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `elixir:1.3.4-slim`

```console
$ docker pull elixir@sha256:c2524096252f0682b727edfa16358101da95fb99f2d0d922ba84fef15291edc1
```

-	Platforms:
	-	linux; amd64

### `elixir:1.3.4-slim` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **159.4 MB (159398998 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7e056c1826db3c10f13bf3ce6cf0f39f53817c2ffd82e8dc3d139f015ee59850`
-	Default Command: `["iex"]`

```dockerfile
# Mon, 24 Apr 2017 19:20:41 GMT
ADD file:712c48086043553b85ffb031d8f6c5de857a2e53974df30cdfbc1e85c1b00a25 in / 
# Mon, 24 Apr 2017 19:20:42 GMT
CMD ["/bin/bash"]
# Mon, 24 Apr 2017 22:47:16 GMT
ENV OTP_VERSION=19.3.1
# Mon, 24 Apr 2017 22:54:01 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="618f19e4274150a107bea7621d871d96d386291759ffb57d1a3e60f1f243a509" 	&& runtimeDeps=' 		libodbc1 		libssl1.0.0 		libsctp1 		libwxgtk3.0-0 	' 	&& buildDeps=' 		curl 		ca-certificates 		autoconf 		gcc 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 		libwxgtk3.0-dev 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256 otp-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/otp-src 	&& tar -xzf otp-src.tar.gz -C /usr/src/otp-src --strip-components=1 	&& rm otp-src.tar.gz 	&& cd /usr/src/otp-src 	&& ./otp_build autoconf 	&& ./configure 		--enable-sctp 		--enable-dirty-schedulers 	&& make -j$(nproc) 	&& make install 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/otp-src /var/lib/apt/lists/*
# Mon, 24 Apr 2017 22:54:01 GMT
CMD ["erl"]
# Tue, 25 Apr 2017 06:33:24 GMT
ENV ELIXIR_VERSION=v1.3.4 LANG=C.UTF-8
# Tue, 25 Apr 2017 06:33:43 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/releases/download/${ELIXIR_VERSION}/Precompiled.zip" 	&& ELIXIR_DOWNLOAD_SHA256="eac16c41b88e7293a31d6ca95b5d72eaec92349a1f16846344f7b88128587e10" 	&& buildDeps=' 		ca-certificates 		curl 		unzip 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o elixir-precompiled.zip $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256 elixir-precompiled.zip" | sha256sum -c - 	&& unzip -d /usr/local elixir-precompiled.zip 	&& rm elixir-precompiled.zip 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 06:33:44 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:cd0a524342efac6edff500c17e625735bbe479c926439b263bbe3c8518a0849c`  
		Last Modified: Mon, 24 Apr 2017 19:32:05 GMT  
		Size: 52.6 MB (52550276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb5771cdf7445db345ce4c503098a93a32126c753cbbedf21724a6e4ed77e473`  
		Last Modified: Tue, 25 Apr 2017 17:25:31 GMT  
		Size: 102.9 MB (102862587 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8e23fc2713788e42d75f6ec896cb8f1d71db4941c7550c7d17e1056242b554f`  
		Last Modified: Tue, 25 Apr 2017 19:53:38 GMT  
		Size: 4.0 MB (3986135 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `elixir:1.3-slim`

```console
$ docker pull elixir@sha256:c2524096252f0682b727edfa16358101da95fb99f2d0d922ba84fef15291edc1
```

-	Platforms:
	-	linux; amd64

### `elixir:1.3-slim` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **159.4 MB (159398998 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7e056c1826db3c10f13bf3ce6cf0f39f53817c2ffd82e8dc3d139f015ee59850`
-	Default Command: `["iex"]`

```dockerfile
# Mon, 24 Apr 2017 19:20:41 GMT
ADD file:712c48086043553b85ffb031d8f6c5de857a2e53974df30cdfbc1e85c1b00a25 in / 
# Mon, 24 Apr 2017 19:20:42 GMT
CMD ["/bin/bash"]
# Mon, 24 Apr 2017 22:47:16 GMT
ENV OTP_VERSION=19.3.1
# Mon, 24 Apr 2017 22:54:01 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="618f19e4274150a107bea7621d871d96d386291759ffb57d1a3e60f1f243a509" 	&& runtimeDeps=' 		libodbc1 		libssl1.0.0 		libsctp1 		libwxgtk3.0-0 	' 	&& buildDeps=' 		curl 		ca-certificates 		autoconf 		gcc 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 		libwxgtk3.0-dev 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256 otp-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/otp-src 	&& tar -xzf otp-src.tar.gz -C /usr/src/otp-src --strip-components=1 	&& rm otp-src.tar.gz 	&& cd /usr/src/otp-src 	&& ./otp_build autoconf 	&& ./configure 		--enable-sctp 		--enable-dirty-schedulers 	&& make -j$(nproc) 	&& make install 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/otp-src /var/lib/apt/lists/*
# Mon, 24 Apr 2017 22:54:01 GMT
CMD ["erl"]
# Tue, 25 Apr 2017 06:33:24 GMT
ENV ELIXIR_VERSION=v1.3.4 LANG=C.UTF-8
# Tue, 25 Apr 2017 06:33:43 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/releases/download/${ELIXIR_VERSION}/Precompiled.zip" 	&& ELIXIR_DOWNLOAD_SHA256="eac16c41b88e7293a31d6ca95b5d72eaec92349a1f16846344f7b88128587e10" 	&& buildDeps=' 		ca-certificates 		curl 		unzip 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o elixir-precompiled.zip $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256 elixir-precompiled.zip" | sha256sum -c - 	&& unzip -d /usr/local elixir-precompiled.zip 	&& rm elixir-precompiled.zip 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 06:33:44 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:cd0a524342efac6edff500c17e625735bbe479c926439b263bbe3c8518a0849c`  
		Last Modified: Mon, 24 Apr 2017 19:32:05 GMT  
		Size: 52.6 MB (52550276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb5771cdf7445db345ce4c503098a93a32126c753cbbedf21724a6e4ed77e473`  
		Last Modified: Tue, 25 Apr 2017 17:25:31 GMT  
		Size: 102.9 MB (102862587 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8e23fc2713788e42d75f6ec896cb8f1d71db4941c7550c7d17e1056242b554f`  
		Last Modified: Tue, 25 Apr 2017 19:53:38 GMT  
		Size: 4.0 MB (3986135 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `elixir:1.2.6`

```console
$ docker pull elixir@sha256:c197525296480270f0df8b65175ebe2221579a10d231ac182b954a62703be81b
```

-	Platforms:
	-	linux; amd64

### `elixir:1.2.6` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **311.0 MB (311041864 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9a39f4a5e2840701f8212454ebe74bcf538f1cf1b9d95cf69aa77bcf87d60546`
-	Default Command: `["iex"]`

```dockerfile
# Mon, 24 Apr 2017 19:20:41 GMT
ADD file:712c48086043553b85ffb031d8f6c5de857a2e53974df30cdfbc1e85c1b00a25 in / 
# Mon, 24 Apr 2017 19:20:42 GMT
CMD ["/bin/bash"]
# Mon, 24 Apr 2017 19:54:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Apr 2017 19:55:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Apr 2017 22:15:00 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 06:40:55 GMT
ENV OTP_VERSION=18.3.4.5
# Tue, 25 Apr 2017 06:46:48 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-$OTP_VERSION.tar.gz" 	&& OTP_DOWNLOAD_SHA256="a27b8ff057f77305e7c9f2dbcd002232856438fd1fdf3822edd27c6f77a60ca1" 	&& runtimeDeps='libodbc1 			libsctp1' 	&& buildDeps='unixodbc-dev 			libsctp-dev' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256 otp-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/otp-src 	&& tar -xzf otp-src.tar.gz -C /usr/src/otp-src --strip-components=1 	&& rm otp-src.tar.gz 	&& cd /usr/src/otp-src 	&& ./otp_build autoconf 	&& ./configure --enable-sctp 	&& make -j$(nproc) 	&& make install 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/otp-src /var/lib/apt/lists/*
# Tue, 25 Apr 2017 06:46:49 GMT
CMD ["erl"]
# Tue, 25 Apr 2017 06:46:49 GMT
ENV REBAR_VERSION=2.6.4
# Tue, 25 Apr 2017 06:46:53 GMT
RUN set -xe 	&& REBAR_DOWNLOAD_URL="https://github.com/rebar/rebar/archive/${REBAR_VERSION##*@}.tar.gz" 	&& REBAR_DOWNLOAD_SHA256="577246bafa2eb2b2c3f1d0c157408650446884555bf87901508ce71d5cc0bd07" 	&& mkdir -p /usr/src/rebar-src 	&& curl -fSL -o rebar-src.tar.gz "$REBAR_DOWNLOAD_URL" 	&& echo "$REBAR_DOWNLOAD_SHA256 rebar-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar-src.tar.gz -C /usr/src/rebar-src --strip-components=1 	&& rm rebar-src.tar.gz 	&& cd /usr/src/rebar-src 	&& ./bootstrap 	&& install -v ./rebar /usr/local/bin/ 	&& rm -rf /usr/src/rebar-src
# Tue, 25 Apr 2017 06:46:54 GMT
ENV REBAR3_VERSION=3.3.4
# Tue, 25 Apr 2017 06:47:22 GMT
RUN set -xe 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION##*@}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="a7ad962617f1e91347257b7c6c69612aee564e1172b8507947e173b8846a204d" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src
# Tue, 25 Apr 2017 15:00:34 GMT
ENV ELIXIR_VERSION=v1.2.6 LANG=C.UTF-8
# Tue, 25 Apr 2017 15:00:49 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/releases/download/${ELIXIR_VERSION#*@}/Precompiled.zip" 	&& ELIXIR_DOWNLOAD_SHA256="bb4324eb7c9568fa30f0f2ed3c1b86ebbd5251f7c820f1beb0e5eed5fb8a9729" 	&& buildDeps=' 		unzip 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o elixir-precompiled.zip $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256 elixir-precompiled.zip" | sha256sum -c - 	&& unzip -d /usr/local elixir-precompiled.zip 	&& rm elixir-precompiled.zip 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 15:00:56 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:cd0a524342efac6edff500c17e625735bbe479c926439b263bbe3c8518a0849c`  
		Last Modified: Mon, 24 Apr 2017 19:32:05 GMT  
		Size: 52.6 MB (52550276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e39c3ffe41332a7a3c7f85f57e547361ec90b6e0091dd6058e06acccde2217d4`  
		Last Modified: Mon, 24 Apr 2017 22:19:28 GMT  
		Size: 19.3 MB (19266225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85334a7c200103c122f3cbf56460f28fe688abc52655dc714afa939e49848ba8`  
		Last Modified: Mon, 24 Apr 2017 22:20:21 GMT  
		Size: 43.2 MB (43231315 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c546d9d6a84ca2a1b7459a47978abe757bf67096d9dd704a9a5a0a786d2d325`  
		Last Modified: Mon, 24 Apr 2017 22:21:26 GMT  
		Size: 131.8 MB (131793725 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:346383d373b362092f12cbdfc6b4657d224fc62d7e31fd55be356242b985d492`  
		Last Modified: Tue, 25 Apr 2017 17:19:21 GMT  
		Size: 58.4 MB (58404788 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85d4453fb16c12cc83adb1716aa478bbd1eb913ab67bd43440d95be63f19b1f7`  
		Last Modified: Tue, 25 Apr 2017 17:19:09 GMT  
		Size: 200.3 KB (200346 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2375cf89a36c768cbc5664402893b9075bd5878fc4415a68add36173ef69cd1`  
		Last Modified: Tue, 25 Apr 2017 17:19:09 GMT  
		Size: 2.3 MB (2299625 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3787484df4c4cd271d8f15a3a23374df11b10a7c72be6c3ec1e8bdd36db4aa0`  
		Last Modified: Tue, 25 Apr 2017 19:51:29 GMT  
		Size: 3.3 MB (3295564 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `elixir:1.2`

```console
$ docker pull elixir@sha256:c197525296480270f0df8b65175ebe2221579a10d231ac182b954a62703be81b
```

-	Platforms:
	-	linux; amd64

### `elixir:1.2` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **311.0 MB (311041864 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9a39f4a5e2840701f8212454ebe74bcf538f1cf1b9d95cf69aa77bcf87d60546`
-	Default Command: `["iex"]`

```dockerfile
# Mon, 24 Apr 2017 19:20:41 GMT
ADD file:712c48086043553b85ffb031d8f6c5de857a2e53974df30cdfbc1e85c1b00a25 in / 
# Mon, 24 Apr 2017 19:20:42 GMT
CMD ["/bin/bash"]
# Mon, 24 Apr 2017 19:54:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Apr 2017 19:55:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Apr 2017 22:15:00 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 06:40:55 GMT
ENV OTP_VERSION=18.3.4.5
# Tue, 25 Apr 2017 06:46:48 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-$OTP_VERSION.tar.gz" 	&& OTP_DOWNLOAD_SHA256="a27b8ff057f77305e7c9f2dbcd002232856438fd1fdf3822edd27c6f77a60ca1" 	&& runtimeDeps='libodbc1 			libsctp1' 	&& buildDeps='unixodbc-dev 			libsctp-dev' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256 otp-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/otp-src 	&& tar -xzf otp-src.tar.gz -C /usr/src/otp-src --strip-components=1 	&& rm otp-src.tar.gz 	&& cd /usr/src/otp-src 	&& ./otp_build autoconf 	&& ./configure --enable-sctp 	&& make -j$(nproc) 	&& make install 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/otp-src /var/lib/apt/lists/*
# Tue, 25 Apr 2017 06:46:49 GMT
CMD ["erl"]
# Tue, 25 Apr 2017 06:46:49 GMT
ENV REBAR_VERSION=2.6.4
# Tue, 25 Apr 2017 06:46:53 GMT
RUN set -xe 	&& REBAR_DOWNLOAD_URL="https://github.com/rebar/rebar/archive/${REBAR_VERSION##*@}.tar.gz" 	&& REBAR_DOWNLOAD_SHA256="577246bafa2eb2b2c3f1d0c157408650446884555bf87901508ce71d5cc0bd07" 	&& mkdir -p /usr/src/rebar-src 	&& curl -fSL -o rebar-src.tar.gz "$REBAR_DOWNLOAD_URL" 	&& echo "$REBAR_DOWNLOAD_SHA256 rebar-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar-src.tar.gz -C /usr/src/rebar-src --strip-components=1 	&& rm rebar-src.tar.gz 	&& cd /usr/src/rebar-src 	&& ./bootstrap 	&& install -v ./rebar /usr/local/bin/ 	&& rm -rf /usr/src/rebar-src
# Tue, 25 Apr 2017 06:46:54 GMT
ENV REBAR3_VERSION=3.3.4
# Tue, 25 Apr 2017 06:47:22 GMT
RUN set -xe 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION##*@}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="a7ad962617f1e91347257b7c6c69612aee564e1172b8507947e173b8846a204d" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src
# Tue, 25 Apr 2017 15:00:34 GMT
ENV ELIXIR_VERSION=v1.2.6 LANG=C.UTF-8
# Tue, 25 Apr 2017 15:00:49 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/releases/download/${ELIXIR_VERSION#*@}/Precompiled.zip" 	&& ELIXIR_DOWNLOAD_SHA256="bb4324eb7c9568fa30f0f2ed3c1b86ebbd5251f7c820f1beb0e5eed5fb8a9729" 	&& buildDeps=' 		unzip 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o elixir-precompiled.zip $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256 elixir-precompiled.zip" | sha256sum -c - 	&& unzip -d /usr/local elixir-precompiled.zip 	&& rm elixir-precompiled.zip 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 15:00:56 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:cd0a524342efac6edff500c17e625735bbe479c926439b263bbe3c8518a0849c`  
		Last Modified: Mon, 24 Apr 2017 19:32:05 GMT  
		Size: 52.6 MB (52550276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e39c3ffe41332a7a3c7f85f57e547361ec90b6e0091dd6058e06acccde2217d4`  
		Last Modified: Mon, 24 Apr 2017 22:19:28 GMT  
		Size: 19.3 MB (19266225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85334a7c200103c122f3cbf56460f28fe688abc52655dc714afa939e49848ba8`  
		Last Modified: Mon, 24 Apr 2017 22:20:21 GMT  
		Size: 43.2 MB (43231315 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c546d9d6a84ca2a1b7459a47978abe757bf67096d9dd704a9a5a0a786d2d325`  
		Last Modified: Mon, 24 Apr 2017 22:21:26 GMT  
		Size: 131.8 MB (131793725 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:346383d373b362092f12cbdfc6b4657d224fc62d7e31fd55be356242b985d492`  
		Last Modified: Tue, 25 Apr 2017 17:19:21 GMT  
		Size: 58.4 MB (58404788 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85d4453fb16c12cc83adb1716aa478bbd1eb913ab67bd43440d95be63f19b1f7`  
		Last Modified: Tue, 25 Apr 2017 17:19:09 GMT  
		Size: 200.3 KB (200346 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2375cf89a36c768cbc5664402893b9075bd5878fc4415a68add36173ef69cd1`  
		Last Modified: Tue, 25 Apr 2017 17:19:09 GMT  
		Size: 2.3 MB (2299625 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3787484df4c4cd271d8f15a3a23374df11b10a7c72be6c3ec1e8bdd36db4aa0`  
		Last Modified: Tue, 25 Apr 2017 19:51:29 GMT  
		Size: 3.3 MB (3295564 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `elixir:1.2.6-slim`

```console
$ docker pull elixir@sha256:1fa2f659fe843a2a3c3d4ddd2706470dc65ac77800111ec970863faa3061a487
```

-	Platforms:
	-	linux; amd64

### `elixir:1.2.6-slim` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **122.3 MB (122261384 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9e2e6ffa01e3711af23ae739804181245239c5144bf114b72f43af8461501425`
-	Default Command: `["iex"]`

```dockerfile
# Mon, 24 Apr 2017 19:20:41 GMT
ADD file:712c48086043553b85ffb031d8f6c5de857a2e53974df30cdfbc1e85c1b00a25 in / 
# Mon, 24 Apr 2017 19:20:42 GMT
CMD ["/bin/bash"]
# Mon, 24 Apr 2017 22:40:54 GMT
ENV OTP_VERSION=18.3.4.5
# Mon, 24 Apr 2017 22:46:58 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-$OTP_VERSION.tar.gz" 	&& OTP_DOWNLOAD_SHA256="a27b8ff057f77305e7c9f2dbcd002232856438fd1fdf3822edd27c6f77a60ca1" 	&& runtimeDeps=' 		libodbc1 		libssl1.0.0 		libsctp1 	' 	&& buildDeps=' 		curl 		ca-certificates 		autoconf 		gcc 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256 otp-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/otp-src 	&& tar -xzf otp-src.tar.gz -C /usr/src/otp-src --strip-components=1 	&& rm otp-src.tar.gz 	&& cd /usr/src/otp-src 	&& ./otp_build autoconf 	&& ./configure --enable-sctp 	&& make -j$(nproc) 	&& make install 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/otp-src /var/lib/apt/lists/*
# Mon, 24 Apr 2017 22:46:59 GMT
CMD ["erl"]
# Tue, 25 Apr 2017 06:32:44 GMT
ENV ELIXIR_VERSION=v1.2.6 LANG=C.UTF-8
# Tue, 25 Apr 2017 06:33:06 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/releases/download/${ELIXIR_VERSION#*@}/Precompiled.zip" 	&& ELIXIR_DOWNLOAD_SHA256="bb4324eb7c9568fa30f0f2ed3c1b86ebbd5251f7c820f1beb0e5eed5fb8a9729" 	&& buildDeps=' 		ca-certificates 		curl 		unzip 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o elixir-precompiled.zip $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256 elixir-precompiled.zip" | sha256sum -c - 	&& unzip -d /usr/local elixir-precompiled.zip 	&& rm elixir-precompiled.zip 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 06:33:06 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:cd0a524342efac6edff500c17e625735bbe479c926439b263bbe3c8518a0849c`  
		Last Modified: Mon, 24 Apr 2017 19:32:05 GMT  
		Size: 52.6 MB (52550276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:812e2459edfaee5069d73bcae45c2787b8c6b58505dced4ac209b8aa58e86748`  
		Last Modified: Tue, 25 Apr 2017 17:21:20 GMT  
		Size: 66.1 MB (66112004 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe69290aee5b9abcf6af1f49f5b78ca090df26ed18874c7774a0e4c800a5a824`  
		Last Modified: Tue, 25 Apr 2017 19:52:13 GMT  
		Size: 3.6 MB (3599104 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `elixir:1.2-slim`

```console
$ docker pull elixir@sha256:1fa2f659fe843a2a3c3d4ddd2706470dc65ac77800111ec970863faa3061a487
```

-	Platforms:
	-	linux; amd64

### `elixir:1.2-slim` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **122.3 MB (122261384 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9e2e6ffa01e3711af23ae739804181245239c5144bf114b72f43af8461501425`
-	Default Command: `["iex"]`

```dockerfile
# Mon, 24 Apr 2017 19:20:41 GMT
ADD file:712c48086043553b85ffb031d8f6c5de857a2e53974df30cdfbc1e85c1b00a25 in / 
# Mon, 24 Apr 2017 19:20:42 GMT
CMD ["/bin/bash"]
# Mon, 24 Apr 2017 22:40:54 GMT
ENV OTP_VERSION=18.3.4.5
# Mon, 24 Apr 2017 22:46:58 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-$OTP_VERSION.tar.gz" 	&& OTP_DOWNLOAD_SHA256="a27b8ff057f77305e7c9f2dbcd002232856438fd1fdf3822edd27c6f77a60ca1" 	&& runtimeDeps=' 		libodbc1 		libssl1.0.0 		libsctp1 	' 	&& buildDeps=' 		curl 		ca-certificates 		autoconf 		gcc 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256 otp-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/otp-src 	&& tar -xzf otp-src.tar.gz -C /usr/src/otp-src --strip-components=1 	&& rm otp-src.tar.gz 	&& cd /usr/src/otp-src 	&& ./otp_build autoconf 	&& ./configure --enable-sctp 	&& make -j$(nproc) 	&& make install 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/otp-src /var/lib/apt/lists/*
# Mon, 24 Apr 2017 22:46:59 GMT
CMD ["erl"]
# Tue, 25 Apr 2017 06:32:44 GMT
ENV ELIXIR_VERSION=v1.2.6 LANG=C.UTF-8
# Tue, 25 Apr 2017 06:33:06 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/releases/download/${ELIXIR_VERSION#*@}/Precompiled.zip" 	&& ELIXIR_DOWNLOAD_SHA256="bb4324eb7c9568fa30f0f2ed3c1b86ebbd5251f7c820f1beb0e5eed5fb8a9729" 	&& buildDeps=' 		ca-certificates 		curl 		unzip 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o elixir-precompiled.zip $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256 elixir-precompiled.zip" | sha256sum -c - 	&& unzip -d /usr/local elixir-precompiled.zip 	&& rm elixir-precompiled.zip 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 06:33:06 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:cd0a524342efac6edff500c17e625735bbe479c926439b263bbe3c8518a0849c`  
		Last Modified: Mon, 24 Apr 2017 19:32:05 GMT  
		Size: 52.6 MB (52550276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:812e2459edfaee5069d73bcae45c2787b8c6b58505dced4ac209b8aa58e86748`  
		Last Modified: Tue, 25 Apr 2017 17:21:20 GMT  
		Size: 66.1 MB (66112004 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe69290aee5b9abcf6af1f49f5b78ca090df26ed18874c7774a0e4c800a5a824`  
		Last Modified: Tue, 25 Apr 2017 19:52:13 GMT  
		Size: 3.6 MB (3599104 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
