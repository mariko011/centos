## `erlang:alpine`

```console
$ docker pull erlang@sha256:7008ecf05114dac6a715e035302d24a04c33b6aea6bde4c507ebe4053f443a74
```

-	Platforms:
	-	linux; amd64

### `erlang:alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.5 MB (11487447 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2dd6f255469e84eb9a8eabf8968808ecc622886473981a7a1880879e58ab99f2`
-	Default Command: `["erl"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Wed, 05 Jul 2017 21:37:24 GMT
ENV OTP_VERSION=20.0.1
# Wed, 05 Jul 2017 21:41:39 GMT
RUN set -xe 	&& OTP_DOWNLOAD_URL="https://github.com/erlang/otp/archive/OTP-${OTP_VERSION}.tar.gz" 	&& OTP_DOWNLOAD_SHA256="8b121b38102acd43f89afd786055461741522c3a13ee17ef1a795c0dbf6aa281" 	&& apk add --no-cache --virtual .fetch-deps 		curl 		ca-certificates 	&& curl -fSL -o otp-src.tar.gz "$OTP_DOWNLOAD_URL" 	&& echo "$OTP_DOWNLOAD_SHA256  otp-src.tar.gz" | sha256sum -c - 	&& apk add --no-cache --virtual .build-deps 		gcc 		libc-dev 		make 		autoconf 		ncurses-dev 		tar 	&& export ERL_TOP="/usr/src/otp_src_${OTP_VERSION%%@*}" 	&& mkdir -vp $ERL_TOP 	&& tar -xzf otp-src.tar.gz -C $ERL_TOP --strip-components=1 	&& rm otp-src.tar.gz 	&& ( cd $ERL_TOP 	  && ./otp_build autoconf 	  && export OTP_SMALL_BUILD=true 	  && ./configure 		--enable-dirty-schedulers 	  && make -j$(getconf _NPROCESSORS_ONLN) 	  && make install ) 	&& rm -rf $ERL_TOP 	&& find /usr/local -regex '/usr/local/lib/erlang/\(lib/\|erts-\).*/\(man\|doc\|src\|info\|include\|examples\)' | xargs rm -rf 	&& rm -rf /usr/local/lib/erlang/lib/*tools* 		/usr/local/lib/erlang/lib/*test* 		/usr/local/lib/erlang/usr 		/usr/local/lib/erlang/misc 		/usr/local/lib/erlang/erts*/lib/lib*.a 		/usr/local/lib/erlang/erts*/lib/internal 	&& scanelf --nobanner -E ET_EXEC -BF '%F' --recursive /usr/local | xargs strip --strip-all 	&& scanelf --nobanner -E ET_DYN -BF '%F' --recursive /usr/local | xargs -r strip --strip-unneeded 	&& runDeps=$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	) 	&& apk add --virtual .erlang-rundeps $runDeps 	&& apk del .fetch-deps .build-deps
# Wed, 05 Jul 2017 21:42:01 GMT
CMD ["erl"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:481444b26ec55bd398e1774e64b8c770821bc9bea4b8c2a4bec16ca5bc744633`  
		Last Modified: Wed, 05 Jul 2017 21:46:03 GMT  
		Size: 9.5 MB (9497045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
