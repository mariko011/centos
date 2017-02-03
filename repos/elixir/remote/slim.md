## `elixir:slim`

```console
$ docker pull elixir@sha256:b263807eb6dae8555be8a9f23b686e4828257c6be0244416ca8f9cfa56b42e7c
```

-	Platforms:
	-	linux; amd64

### `elixir:slim` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **156.8 MB (156765318 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c12c7064270c7cfe96f1d7324769c2c4fc1913d35e724e28031a398fd2b1d890`
-	Default Command: `["iex"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Fri, 03 Feb 2017 19:16:56 GMT
ENV OTP_VERSION=19.2.2
# Fri, 03 Feb 2017 19:22:46 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="1875ebcf4a83274757b02ea41070e73bb03eed49e5fa822fbf527ce9d1a28157" 	&& runtimeDeps=' 		libodbc1 		libssl1.0.0 		libsctp1 		libwxgtk3.0-0 	' 	&& buildDeps=' 		curl 		ca-certificates 		autoconf 		gcc 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 		libwxgtk3.0-dev 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256 otp-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/otp-src 	&& tar -xzf otp-src.tar.gz -C /usr/src/otp-src --strip-components=1 	&& rm otp-src.tar.gz 	&& cd /usr/src/otp-src 	&& ./otp_build autoconf 	&& ./configure 		--enable-sctp 		--enable-dirty-schedulers 	&& make -j$(nproc) 	&& make install 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/otp-src /var/lib/apt/lists/*
# Fri, 03 Feb 2017 19:22:46 GMT
CMD ["erl"]
# Fri, 03 Feb 2017 19:54:51 GMT
ENV ELIXIR_VERSION=v1.4.1 LANG=C.UTF-8
# Fri, 03 Feb 2017 19:55:04 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/releases/download/${ELIXIR_VERSION}/Precompiled.zip" 	&& ELIXIR_DOWNLOAD_SHA256="c057da76e0fed7097cce468eb6e22993901f888ca32af363ac542c11a674d805"	&& buildDeps=' 		ca-certificates 		curl 		unzip 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o elixir-precompiled.zip $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256 elixir-precompiled.zip" | sha256sum -c - 	&& unzip -d /usr/local elixir-precompiled.zip 	&& rm elixir-precompiled.zip 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 03 Feb 2017 19:55:05 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d912d2783ad167c69da358cd4b79294cccfe2c9efa8aafde51516e20b962c36`  
		Last Modified: Fri, 03 Feb 2017 19:36:47 GMT  
		Size: 101.4 MB (101355935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f203f9c013494dcde75fead43109ed3477f0c797ed5bc5c91d272212e96f162`  
		Last Modified: Fri, 03 Feb 2017 19:58:38 GMT  
		Size: 4.0 MB (4048173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
