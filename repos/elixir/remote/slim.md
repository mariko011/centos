## `elixir:slim`

```console
$ docker pull elixir@sha256:0d60a4e5980c293279286e6ef23b8762992d9190be090cf7d5bb5096c7036653
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `elixir:slim` - linux; amd64

```console
$ docker pull elixir@sha256:8b31082a8fb64c7bbcea30a7f38cb74f21b21841871bea7c63419ef3bc05713c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **121.0 MB (120970055 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d2a4d7a05a3fa5dc73725b07ea670fe9b7e55e5f4778a19e3f2862b6afcebab9`
-	Default Command: `["iex"]`

```dockerfile
# Tue, 12 Dec 2017 01:41:12 GMT
ADD file:1dd78a123212328bdc72ef7888024ea27fe141a72e24e0ea7c3c92b63b73d8d1 in / 
# Tue, 12 Dec 2017 01:41:12 GMT
CMD ["bash"]
# Wed, 13 Dec 2017 18:56:14 GMT
ENV OTP_VERSION=20.2
# Wed, 13 Dec 2017 19:01:49 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="32c05e0fccc0a83f03266c05ced0294eb2da70ad8657718a1a917686c7b76aae" 	&& fetchDeps=' 		curl 		ca-certificates' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $fetchDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& runtimeDeps=' 		libodbc1 		libssl1.0.0 		libsctp1 	' 	&& buildDeps=' 		autoconf 		dpkg-dev 		gcc 		g++ 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 	' 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	  && ./configure --build="$gnuArch" 	  && make -j$(nproc) 	  && make install ) 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps $fetchDeps 	&& rm -rf $ERL_TOP /var/lib/apt/lists/*
# Wed, 13 Dec 2017 19:01:49 GMT
CMD ["erl"]
# Wed, 13 Dec 2017 19:32:06 GMT
ENV ELIXIR_VERSION=v1.5.2 LANG=C.UTF-8
# Wed, 13 Dec 2017 19:32:33 GMT
RUN set -xe 	&& ELIXIR_DOWNLOAD_URL="https://github.com/elixir-lang/elixir/releases/download/${ELIXIR_VERSION}/Precompiled.zip" 	&& ELIXIR_DOWNLOAD_SHA256="4ba8dd46998bee6cbcc2d9937776e241be82bc62d2b62b6235c310a44c87467e" 	&& buildDeps=' 		ca-certificates 		curl 		unzip 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o elixir-precompiled.zip $ELIXIR_DOWNLOAD_URL 	&& echo "$ELIXIR_DOWNLOAD_SHA256  elixir-precompiled.zip" | sha256sum -c - 	&& unzip -d /usr/local elixir-precompiled.zip 	&& rm elixir-precompiled.zip 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Dec 2017 19:32:35 GMT
CMD ["iex"]
```

-	Layers:
	-	`sha256:f49cf87b52c10aa83b4f4405800527a74400fb19ea1821d209293bc4d53966aa`  
		Last Modified: Tue, 12 Dec 2017 01:47:59 GMT  
		Size: 52.6 MB (52599697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b13ca7021e6a925cd9e27e6cef99a00ffaeb353d8feeb15575106f1c01a52f5`  
		Last Modified: Wed, 13 Dec 2017 19:12:16 GMT  
		Size: 64.0 MB (63992927 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:923ab2d25f4bf39281c7927e56529347cc5a56473087d40d4fa7bacbe8b6ffc0`  
		Last Modified: Wed, 13 Dec 2017 19:34:15 GMT  
		Size: 4.4 MB (4377431 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
