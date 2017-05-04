## `elixir:latest`

```console
$ docker pull elixir@sha256:0d1f1aa115a79779eeec62c2f13f6cc9be923fe68b629e2aa26e049998e4babe
```

-	Platforms:
	-	linux; amd64

### `elixir:latest` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **335.4 MB (335406679 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:374c711b8b929fb73ba78576a9dacce2ce2818d2f063cd49009a466610adefb3`
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
# Thu, 04 May 2017 17:02:30 GMT
ENV OTP_VERSION=19.3.3
# Thu, 04 May 2017 17:11:49 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="0f7247dc50c8a81897823f54f4a6daa3269d29c192a7eb594ea38722f6bb3bf3" 	&& runtimeDeps='libodbc1 			libsctp1 			libwxgtk3.0-0' 	&& buildDeps='unixodbc-dev 			libsctp-dev 			libwxgtk3.0-dev' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256 otp-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/otp-src 	&& tar -xzf otp-src.tar.gz -C /usr/src/otp-src --strip-components=1 	&& rm otp-src.tar.gz 	&& cd /usr/src/otp-src 	&& ./otp_build autoconf 	&& ./configure 		--enable-sctp 		--enable-dirty-schedulers 	&& make -j$(nproc) 	&& make install 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/otp-src /var/lib/apt/lists/*
# Thu, 04 May 2017 17:17:24 GMT
CMD ["erl"]
# Thu, 04 May 2017 17:17:24 GMT
ENV REBAR_VERSION=2.6.4
# Thu, 04 May 2017 17:17:28 GMT
RUN set -xe 	&& REBAR_DOWNLOAD_URL="https://github.com/rebar/rebar/archive/${REBAR_VERSION}.tar.gz" 	&& REBAR_DOWNLOAD_SHA256="577246bafa2eb2b2c3f1d0c157408650446884555bf87901508ce71d5cc0bd07" 	&& mkdir -p /usr/src/rebar-src 	&& curl -fSL -o rebar-src.tar.gz "$REBAR_DOWNLOAD_URL" 	&& echo "$REBAR_DOWNLOAD_SHA256 rebar-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar-src.tar.gz -C /usr/src/rebar-src --strip-components=1 	&& rm rebar-src.tar.gz 	&& cd /usr/src/rebar-src 	&& ./bootstrap 	&& install -v ./rebar /usr/local/bin/ 	&& rm -rf /usr/src/rebar-src
# Thu, 04 May 2017 17:17:29 GMT
ENV REBAR3_VERSION=3.3.6
# Thu, 04 May 2017 17:17:56 GMT
RUN set -xe 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="2a3a6f709433a11e3fca51cc106b66e0941e7e7067bbc3f8364cbbad0b40660e" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src
# Thu, 04 May 2017 20:23:31 GMT
ENV ELIXIR_VERSION=v1.4.2 LANG=C.UTF-8
# Thu, 04 May 2017 20:23:44 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/releases/download/${ELIXIR_VERSION}/Precompiled.zip" 	&& ELIXIR_DOWNLOAD_SHA256="3ff610166612db10d3f97895972882a6912e99628e31116d22406389c1de48cc"	&& buildDeps=' 		unzip 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o elixir-precompiled.zip $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256 elixir-precompiled.zip" | sha256sum -c - 	&& unzip -d /usr/local elixir-precompiled.zip 	&& rm elixir-precompiled.zip 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 04 May 2017 20:23:45 GMT
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
	-	`sha256:8a3cff2151146f0802640a26c6c603eee83ebe9d7c0bb39bd113bf8aab90006e`  
		Last Modified: Thu, 04 May 2017 17:28:15 GMT  
		Size: 82.3 MB (82255340 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da74c398e077894ee8627a7276b7ea0eef0781398ef6d04a6a294a53f580239e`  
		Last Modified: Thu, 04 May 2017 17:27:57 GMT  
		Size: 199.2 KB (199195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2aff80ac1e82de09a8b1548da743a78413442c40b4c46605c7b948e8446a9f7`  
		Last Modified: Thu, 04 May 2017 17:27:57 GMT  
		Size: 2.3 MB (2328198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f38d436da513c858683d363387f60a8274bfa1b859f53735a3e229dce44f0a9`  
		Last Modified: Thu, 04 May 2017 20:27:34 GMT  
		Size: 3.8 MB (3782405 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
