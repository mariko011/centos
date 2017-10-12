## `elixir:slim`

```console
$ docker pull elixir@sha256:ef5fda4a68e142969b92c744dfadbf0cccd63c736b216fae194c7f4f7ea541c5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `elixir:slim` - linux; amd64

```console
$ docker pull elixir@sha256:255efd10600cf4beb0df479f2739b996635f59c082f23362701aa81137ca8cd6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **120.8 MB (120823194 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e1a597e4c53689c331fa3b6380d810647d36ba3ab1aeef34b10576e71fa0c7da`
-	Default Command: `["iex"]`

```dockerfile
# Mon, 09 Oct 2017 21:30:05 GMT
ADD file:55b071e2cfc3ea2f4bbf048d7d676e3c06a77a9a98d63f7af291f3decb495ec8 in / 
# Mon, 09 Oct 2017 21:30:05 GMT
CMD ["bash"]
# Thu, 12 Oct 2017 17:02:56 GMT
ENV OTP_VERSION=20.1.2
# Thu, 12 Oct 2017 17:09:30 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="f3d370015c3544503cb76cfaf0bfc8de0f35d89eee206db9f1b9603cbffd8907" 	&& fetchDeps=' 		curl 		ca-certificates' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $fetchDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& runtimeDeps=' 		libodbc1 		libssl1.0.0 		libsctp1 	' 	&& buildDeps=' 		autoconf 		dpkg-dev 		gcc 		g++ 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 	' 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps $fetchDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/*
# Thu, 12 Oct 2017 17:09:30 GMT
CMD ["erl"]
# Thu, 12 Oct 2017 17:37:11 GMT
ENV ELIXIR_VERSION=v1.5.2 LANG=C.UTF-8
# Thu, 12 Oct 2017 17:37:40 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/releases/download/${ELIXIR_VERSION}/Precompiled.zip" 	&& ELIXIR_DOWNLOAD_SHA256="4ba8dd46998bee6cbcc2d9937776e241be82bc62d2b62b6235c310a44c87467e" 	&& buildDeps=' 		ca-certificates 		curl 		unzip 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o elixir-precompiled.zip $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256  elixir-precompiled.zip" | sha256sum -c - 	&& unzip -d /usr/local elixir-precompiled.zip 	&& rm elixir-precompiled.zip 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 12 Oct 2017 17:37:40 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:85b1f47fba49da65256f07c8790542a3880e9216f9c491965040f35ce2c6ca7a`  
		Last Modified: Mon, 09 Oct 2017 21:36:40 GMT  
		Size: 52.6 MB (52595124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88452903b560967ce50bc9c259b4446f6d9c6d7c8264aaed1f05bf6568ca7cb9`  
		Last Modified: Thu, 12 Oct 2017 17:19:01 GMT  
		Size: 63.9 MB (63850642 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a34ff80b1700285fafd5c8c005452ff27f73c602077b2f574d3f71007be57d33`  
		Last Modified: Thu, 12 Oct 2017 17:38:41 GMT  
		Size: 4.4 MB (4377428 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
