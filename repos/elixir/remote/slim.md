## `elixir:slim`

```console
$ docker pull elixir@sha256:04430edb2acce359d555513eab224316eb6cc5cf305f3745233e1d9f0dd26f0e
```

-	Platforms:
	-	linux; amd64

### `elixir:slim` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **157.1 MB (157105755 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a220ce349d7487a97baa63dc2733fda3534fb382f8ba27175d5c62ebc6d7dd92`
-	Default Command: `["iex"]`

```dockerfile
# Tue, 21 Mar 2017 18:28:51 GMT
ADD file:4eedf861fb567fffb2694b65ebdd58d5e371a2c28c3863f363f333cb34e5eb7b in / 
# Tue, 21 Mar 2017 18:29:05 GMT
CMD ["/bin/bash"]
# Tue, 21 Mar 2017 20:28:45 GMT
ENV OTP_VERSION=19.3
# Tue, 21 Mar 2017 20:34:54 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="fc82c5377ad9e84a37f67f2b2b50b27fe4e689440ae9e5d0f5dcfb440a9487ac" 	&& runtimeDeps=' 		libodbc1 		libssl1.0.0 		libsctp1 		libwxgtk3.0-0 	' 	&& buildDeps=' 		curl 		ca-certificates 		autoconf 		gcc 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 		libwxgtk3.0-dev 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256 otp-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/otp-src 	&& tar -xzf otp-src.tar.gz -C /usr/src/otp-src --strip-components=1 	&& rm otp-src.tar.gz 	&& cd /usr/src/otp-src 	&& ./otp_build autoconf 	&& ./configure 		--enable-sctp 		--enable-dirty-schedulers 	&& make -j$(nproc) 	&& make install 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/otp-src /var/lib/apt/lists/*
# Tue, 21 Mar 2017 20:34:55 GMT
CMD ["erl"]
# Wed, 22 Mar 2017 18:14:49 GMT
ENV ELIXIR_VERSION=v1.4.2 LANG=C.UTF-8
# Wed, 22 Mar 2017 18:15:02 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/releases/download/${ELIXIR_VERSION}/Precompiled.zip" 	&& ELIXIR_DOWNLOAD_SHA256="3ff610166612db10d3f97895972882a6912e99628e31116d22406389c1de48cc"	&& buildDeps=' 		ca-certificates 		curl 		unzip 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o elixir-precompiled.zip $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256 elixir-precompiled.zip" | sha256sum -c - 	&& unzip -d /usr/local elixir-precompiled.zip 	&& rm elixir-precompiled.zip 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 22 Mar 2017 18:15:03 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:6d827a3ef358f4fa21ef8251f95492e667da826653fd43641cef5a877dc03a70`  
		Last Modified: Tue, 21 Mar 2017 18:38:18 GMT  
		Size: 51.4 MB (51438476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba394179a9706c1a55e0506ddc46ab65c44b61788b391bee435dfe4f728e66a0`  
		Last Modified: Thu, 23 Mar 2017 18:01:19 GMT  
		Size: 101.5 MB (101525024 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3229ead05732f59345afcd684706eaf019e100a2138e986ce338acf4e53c568d`  
		Last Modified: Fri, 24 Mar 2017 01:57:10 GMT  
		Size: 4.1 MB (4142255 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
