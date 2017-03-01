## `erlang:slim`

```console
$ docker pull erlang@sha256:bdbd924b08b389d807c0948eccc7be14b4ddd54fea8b5dc33d4ff61d7607bba3
```

-	Platforms:
	-	linux; amd64

### `erlang:slim` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **152.7 MB (152719460 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d911730ba6240e49571681f53a0e089f5697e8b9c2610ffc0a5d8e5cb1326bd7`
-	Default Command: `["erl"]`

```dockerfile
# Mon, 27 Feb 2017 20:34:36 GMT
ADD file:41ac8d85ee35954bf6c8353d9681a045ba260aa9a96dbbded7bcd6e37ee49bea in / 
# Mon, 27 Feb 2017 20:34:37 GMT
CMD ["/bin/bash"]
# Mon, 27 Feb 2017 23:24:58 GMT
ENV OTP_VERSION=19.2.3
# Mon, 27 Feb 2017 23:30:54 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="51dd3eda2b5e835588ed215328c3943b69bc353d892577411570641f37c51ad8" 	&& runtimeDeps=' 		libodbc1 		libssl1.0.0 		libsctp1 		libwxgtk3.0-0 	' 	&& buildDeps=' 		curl 		ca-certificates 		autoconf 		gcc 		make 		libncurses-dev 		unixodbc-dev 		libssl-dev 		libsctp-dev 		libwxgtk3.0-dev 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $runtimeDeps 	&& apt-get install -y --no-install-recommends $buildDeps 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256 otp-src.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/otp-src 	&& tar -xzf otp-src.tar.gz -C /usr/src/otp-src --strip-components=1 	&& rm otp-src.tar.gz 	&& cd /usr/src/otp-src 	&& ./otp_build autoconf 	&& ./configure 		--enable-sctp 		--enable-dirty-schedulers 	&& make -j$(nproc) 	&& make install 	&& find /usr/local -name examples | xargs rm -rf 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/otp-src /var/lib/apt/lists/*
# Mon, 27 Feb 2017 23:30:55 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:693502eb7dfbc6b94964ae66ebc72d3e32facd981c72995b09794f1e87bac184`  
		Last Modified: Mon, 27 Feb 2017 20:40:26 GMT  
		Size: 51.4 MB (51363374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8980cd139065a05735d1b90135d419fe050c8520b8a1e19e779b67ed1cd8709b`  
		Last Modified: Wed, 01 Mar 2017 23:25:23 GMT  
		Size: 101.4 MB (101356086 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
