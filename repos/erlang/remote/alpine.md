## `erlang:alpine`

```console
$ docker pull erlang@sha256:4056dff497ee4b3f559da61ba5959c1b33ce35e63a190d1726d06a15e9b6d839
```

-	Platforms:
	-	linux; amd64

### `erlang:alpine` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **42.6 MB (42602187 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e57e9f4461945c4d5986db78fbf9c9838fac4b8c67e2cd1a84fea147a90b82ec`
-	Default Command: `["erl"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Mon, 31 Jul 2017 18:16:44 GMT
ENV OTP_VERSION=20.0.2
# Mon, 31 Jul 2017 18:22:31 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="8a6020138eeecc015ac5d12ccb2b2c543e975559e669c376702723a2a67dc105" 	&& apk add --no-cache --virtual .fetch-deps 		curl 		ca-certificates 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& apk add --no-cache --virtual .build-deps 		gcc 		libc-dev 		make 		autoconf 		ncurses-dev 		openssl-dev 		tar 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && ./configure 	  && make -j$(getconf _NPROCESSORS_ONLN) 	  && make install ) 	&& rm -rf $ERL_TOP 	&& find /usr/local -regex '/usr/local/lib/erlang/\(lib/\|erts-\).*/\(man\|doc\|src\|obj\|c_src\|emacs\|info\|examples\)' | xargs rm -rf 	&& rm -rf 		/usr/local/lib/erlang/erts*/lib/lib*.a 		/usr/local/lib/erlang/usr/lib/lib*.a 		/usr/local/lib/erlang/lib/*/lib/lib*.a 	&& scanelf --nobanner -E ET_EXEC -BF '%F' --recursive /usr/local | xargs strip --strip-all 	&& scanelf --nobanner -E ET_DYN -BF '%F' --recursive /usr/local | xargs -r strip --strip-unneeded 	&& runDeps=$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	) 	&& apk add --virtual .erlang-rundeps $runDeps 	&& apk del .fetch-deps .build-deps
# Mon, 31 Jul 2017 18:22:31 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2833929146c14b0fbe57f8bdced18a281d06420c1c6325290fa311282807d86a`  
		Last Modified: Mon, 31 Jul 2017 18:43:17 GMT  
		Size: 40.6 MB (40611785 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
