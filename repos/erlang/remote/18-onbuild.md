## `erlang:18-onbuild`

```console
$ docker pull erlang@sha256:99b6f3f04b21c01c0acfecccc8e1aac046a69bd0b028176a5e6a6df1510df75e
```

-	Platforms:
	-	linux; amd64

### `erlang:18-onbuild` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **302.7 MB (302692268 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e53cbd06211da6d5c3c8746e0e3b52f05336558f3f1908168518a47a7b5114bd`
-	Default Command: `["rebar3","shell"]`

```dockerfile
# Tue, 21 Mar 2017 18:28:51 GMT
ADD file:4eedf861fb567fffb2694b65ebdd58d5e371a2c28c3863f363f333cb34e5eb7b in / 
# Tue, 21 Mar 2017 18:29:05 GMT
CMD ["/bin/bash"]
# Tue, 21 Mar 2017 19:10:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 19:11:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 19:12:14 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 22 Mar 2017 18:20:50 GMT
ENV OTP_VERSION=18.3.4.5
# Wed, 22 Mar 2017 18:26:25 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-$OTP_VERSION.tar.gz" 	&& OTP_DOWNLOAD_SHA256="a27b8ff057f77305e7c9f2dbcd002232856438fd1fdf3822edd27c6f77a60ca1" 	&& runtimeDeps='libodbc1 			libsctp1' 	&& buildDeps='unixodbc-dev 			libsctp-dev' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256 otp-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/otp-src 	&& tar -xzf otp-src.tar.gz -C /usr/src/otp-src --strip-components=1 	&& rm otp-src.tar.gz 	&& cd /usr/src/otp-src 	&& ./otp_build autoconf 	&& ./configure --enable-sctp 	&& make -j$(nproc) 	&& make install 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/otp-src /var/lib/apt/lists/*
# Wed, 22 Mar 2017 18:26:25 GMT
CMD ["erl"]
# Wed, 22 Mar 2017 18:26:26 GMT
ENV REBAR_VERSION=2.6.4
# Wed, 22 Mar 2017 18:26:29 GMT
RUN set -xe 	&& REBAR_DOWNLOAD_URL="https://github.com/rebar/rebar/archive/${REBAR_VERSION##*@}.tar.gz" 	&& REBAR_DOWNLOAD_SHA256="577246bafa2eb2b2c3f1d0c157408650446884555bf87901508ce71d5cc0bd07" 	&& mkdir -p /usr/src/rebar-src 	&& curl -fSL -o rebar-src.tar.gz "$REBAR_DOWNLOAD_URL" 	&& echo "$REBAR_DOWNLOAD_SHA256 rebar-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar-src.tar.gz -C /usr/src/rebar-src --strip-components=1 	&& rm rebar-src.tar.gz 	&& cd /usr/src/rebar-src 	&& ./bootstrap 	&& install -v ./rebar /usr/local/bin/ 	&& rm -rf /usr/src/rebar-src
# Wed, 22 Mar 2017 18:26:30 GMT
ENV REBAR3_VERSION=3.3.4
# Wed, 22 Mar 2017 18:26:55 GMT
RUN set -xe 	&& REBAR3_DOWNLOAD_URL="https://github.com/erlang/rebar3/archive/${REBAR3_VERSION##*@}.tar.gz" 	&& REBAR3_DOWNLOAD_SHA256="a7ad962617f1e91347257b7c6c69612aee564e1172b8507947e173b8846a204d" 	&& mkdir -p /usr/src/rebar3-src 	&& curl -fSL -o rebar3-src.tar.gz "$REBAR3_DOWNLOAD_URL" 	&& echo "$REBAR3_DOWNLOAD_SHA256 rebar3-src.tar.gz" | sha256sum -c - 	&& tar -xzf rebar3-src.tar.gz -C /usr/src/rebar3-src --strip-components=1 	&& rm rebar3-src.tar.gz 	&& cd /usr/src/rebar3-src 	&& HOME=$PWD ./bootstrap 	&& install -v ./rebar3 /usr/local/bin/ 	&& rm -rf /usr/src/rebar3-src
# Wed, 22 Mar 2017 18:26:56 GMT
RUN mkdir -p /usr/src/app
# Wed, 22 Mar 2017 18:26:57 GMT
WORKDIR /usr/src/app
# Wed, 22 Mar 2017 18:26:57 GMT
ONBUILD COPY rebar.config /usr/src/app/
# Wed, 22 Mar 2017 18:26:57 GMT
ONBUILD RUN rebar3 update
# Wed, 22 Mar 2017 18:26:58 GMT
ONBUILD COPY . /usr/src/app
# Wed, 22 Mar 2017 18:26:58 GMT
ONBUILD RUN rebar3 release
# Wed, 22 Mar 2017 18:26:58 GMT
CMD ["rebar3" "shell"]
```

-	Layers:
	-	`sha256:6d827a3ef358f4fa21ef8251f95492e667da826653fd43641cef5a877dc03a70`  
		Last Modified: Tue, 21 Mar 2017 18:38:18 GMT  
		Size: 51.4 MB (51438476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2726297beaf19be957416750338c095ae15b94adc0e8c1306cebbf113f8b9a5c`  
		Last Modified: Tue, 21 Mar 2017 19:58:58 GMT  
		Size: 18.6 MB (18606479 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d27bd3d7fecb89d4028f4afa3ee866d2262c5105fc37f57aa82af918dc2f84c`  
		Last Modified: Tue, 21 Mar 2017 19:59:57 GMT  
		Size: 42.6 MB (42571803 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44ae682c18a31909b5b2e1c0e95d4a05cdf032e983a0e8dc36cc329fc32b53cd`  
		Last Modified: Tue, 21 Mar 2017 20:01:18 GMT  
		Size: 129.9 MB (129934333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dcc214a9936fd731069afa9f648bde8d5a1965d62db1019e11efc23026ad20cc`  
		Last Modified: Thu, 23 Mar 2017 17:53:03 GMT  
		Size: 57.7 MB (57735442 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd604b66858852a302b33b071cdc1819fb37b42734a311c1f0ee276e8fe80202`  
		Last Modified: Thu, 23 Mar 2017 17:52:47 GMT  
		Size: 200.4 KB (200370 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7037a898ecd531e19d3ee6e205a9cfdea41812fa704dc8bc3643e13ab378cc3`  
		Last Modified: Thu, 23 Mar 2017 17:52:47 GMT  
		Size: 2.2 MB (2205239 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e465d188c091bbcf699d98892750eaa367446d7ded860f244e58aad4c617b435`  
		Last Modified: Thu, 23 Mar 2017 17:54:25 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
