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
