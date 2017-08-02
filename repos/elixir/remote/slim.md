## `elixir:slim`

```console
$ docker pull elixir@sha256:f1ed69e01935540615ff056211e9b2d5d07f8010d4243e0da8fb868ecbc004d3
```

-	Platforms:
	-	linux; amd64

### `elixir:slim` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **155.9 MB (155904121 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9e3e8cedba0ed834d11e3f3a57b525f208c390e93a1d3b945c9875bd3dfd2bd9`
-	Default Command: `["iex"]`

```dockerfile
# Mon, 24 Jul 2017 16:51:25 GMT
ADD file:a023a99f7d01868b164d63bfaf8aabc7f271659c69939c3854f041f5a3217428 in / 
# Mon, 24 Jul 2017 16:51:25 GMT
CMD ["bash"]
# Mon, 31 Jul 2017 18:08:11 GMT
ENV OTP_VERSION=20.0.2
# Mon, 31 Jul 2017 18:15:10 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="8a6020138eeecc015ac5d12ccb2b2c543e975559e669c376702723a2a67dc105" 	&& fetchDeps=' 		curl 		ca-certificates' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $fetchDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& runtimeDeps=' 		libodbc1 		libssl1.0.0 		libsctp1 		libwxgtk3.0-0 	' 	&& buildDeps=' 		autoconf 		gcc 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 		libwxgtk3.0-dev 	' 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && ./configure 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps $fetchDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/*
# Mon, 31 Jul 2017 18:15:10 GMT
CMD ["erl"]
# Wed, 02 Aug 2017 00:05:42 GMT
ENV ELIXIR_VERSION=v1.5.1 LANG=C.UTF-8
# Wed, 02 Aug 2017 00:06:17 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/releases/download/${ELIXIR_VERSION}/Precompiled.zip" 	&& ELIXIR_DOWNLOAD_SHA256="84af6eb4cb68d0f60b3edf4e275eb024f8eb8cccae91b18c2bbbc4b70a88934f" 	&& buildDeps=' 		ca-certificates 		curl 		unzip 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o elixir-precompiled.zip $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256  elixir-precompiled.zip" | sha256sum -c - 	&& unzip -d /usr/local elixir-precompiled.zip 	&& rm elixir-precompiled.zip 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 02 Aug 2017 00:06:17 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:ad74af05f5a24bcf9459ae1cf7718628c2aeb6b587eb51b6eeaf639aca3e566f`  
		Last Modified: Mon, 24 Jul 2017 16:55:21 GMT  
		Size: 52.6 MB (52605632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5844c6407e9e866c212d9ad13ce651e9a7ee8c035d81e659318950d38ad46b8`  
		Last Modified: Mon, 31 Jul 2017 18:42:44 GMT  
		Size: 98.8 MB (98799365 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d01a687ecb25164dcb440653b39d2a07363d62642db2e2886dd21a446d056bc4`  
		Last Modified: Wed, 02 Aug 2017 00:06:58 GMT  
		Size: 4.5 MB (4499124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
