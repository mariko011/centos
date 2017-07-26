## `erlang:20-alpine`

```console
$ docker pull erlang@sha256:2e0d7317408bc99752b762c37e7fe388278177341de233ef46b65da828f70929
```

-	Platforms:
	-	linux; amd64

### `erlang:20-alpine` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **42.6 MB (42601610 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ce3daa2b3a328e24c2c79ec6332acf04cca658f545f6cfe28b9c71864eb06649`
-	Default Command: `["erl"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Wed, 05 Jul 2017 21:37:24 GMT
ENV OTP_VERSION=20.0.1
# Wed, 26 Jul 2017 20:28:55 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="8b121b38102acd43f89afd786055461741522c3a13ee17ef1a795c0dbf6aa281" 	&& apk add --no-cache --virtual .fetch-deps 		curl 		ca-certificates 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& apk add --no-cache --virtual .build-deps 		gcc 		libc-dev 		make 		autoconf 		ncurses-dev 		openssl-dev 		tar 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && ./configure 	  && make -j$(getconf _NPROCESSORS_ONLN) 	  && make install ) 	&& rm -rf $ERL_TOP 	&& find /usr/local -regex '/usr/local/lib/erlang/\(lib/\|erts-\).*/\(man\|doc\|src\|obj\|c_src\|emacs\|info\|examples\)' | xargs rm -rf 	&& rm -rf 		/usr/local/lib/erlang/erts*/lib/lib*.a 		/usr/local/lib/erlang/usr/lib/lib*.a 		/usr/local/lib/erlang/lib/*/lib/lib*.a 	&& scanelf --nobanner -E ET_EXEC -BF '%F' --recursive /usr/local | xargs strip --strip-all 	&& scanelf --nobanner -E ET_DYN -BF '%F' --recursive /usr/local | xargs -r strip --strip-unneeded 	&& runDeps=$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	) 	&& apk add --virtual .erlang-rundeps $runDeps 	&& apk del .fetch-deps .build-deps
# Wed, 26 Jul 2017 20:28:56 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0188c45e20a6bc819dc2c4f644be79ceded7d715dd4050cdcb35a27792e00bed`  
		Last Modified: Wed, 26 Jul 2017 20:31:45 GMT  
		Size: 40.6 MB (40611208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
