## `httpd:2-alpine`

```console
$ docker pull httpd@sha256:1d6876c2a004efa34e8ab3e3622dacfcc9a33c59e55224c478ad33dea7fe3651
```

-	Platforms:
	-	linux; amd64

### `httpd:2-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.3 MB (28267175 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:74837e606d2dd01df31bade3375b1ce57ba3e2fa91a280f4cc6c9bee50bed872`
-	Default Command: `["httpd-foreground"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Tue, 27 Jun 2017 21:42:06 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Tue, 27 Jun 2017 21:42:07 GMT
ENV HTTPD_PREFIX=/usr/local/apache2
# Tue, 27 Jun 2017 21:42:07 GMT
ENV PATH=/usr/local/apache2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 27 Jun 2017 21:42:09 GMT
RUN mkdir -p "$HTTPD_PREFIX" 	&& chown www-data:www-data "$HTTPD_PREFIX"
# Tue, 27 Jun 2017 21:42:10 GMT
WORKDIR /usr/local/apache2
# Tue, 27 Jun 2017 21:42:11 GMT
ENV HTTPD_VERSION=2.4.25
# Tue, 27 Jun 2017 21:42:12 GMT
ENV HTTPD_SHA1=bd6d138c31c109297da2346c6e7b93b9283993d2
# Tue, 27 Jun 2017 21:42:13 GMT
ENV HTTPD_BZ2_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=httpd/httpd-2.4.25.tar.bz2
# Tue, 27 Jun 2017 21:42:14 GMT
ENV HTTPD_ASC_URL=https://www.apache.org/dist/httpd/httpd-2.4.25.tar.bz2.asc
# Tue, 11 Jul 2017 19:23:16 GMT
ENV HTTPD_BZ2_FALLBACK_URL=https://archive.apache.org/dist/httpd/httpd-2.4.25.tar.bz2
# Tue, 11 Jul 2017 19:23:16 GMT
ENV HTTPD_ASC_FALLBACK_URL=https://archive.apache.org/dist/httpd/httpd-2.4.25.tar.bz2.asc
# Tue, 11 Jul 2017 19:24:13 GMT
RUN set -x 	&& runDeps=' 		apr-dev 		apr-util-dev 		perl 	' 	&& apk add --no-cache --virtual .build-deps 		$runDeps 		ca-certificates 		coreutils 		dpkg-dev dpkg 		gcc 		gnupg 		libc-dev 		libressl 		libressl-dev 		libxml2-dev 		lua-dev 		make 		nghttp2-dev 		pcre-dev 		tar 		zlib-dev 		&& { 		wget -O httpd.tar.bz2 "$HTTPD_BZ2_URL" 		|| wget -O httpd.tar.bz2 "$HTTPD_BZ2_FALLBACK_URL" 	; } 	&& echo "$HTTPD_SHA1 *httpd.tar.bz2" | sha1sum -c - 	&& { 		wget -O httpd.tar.bz2.asc "$HTTPD_ASC_URL" 		|| wget -O httpd.tar.bz2.asc "$HTTPD_ASC_FALLBACK_URL" 	; } 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys A93D62ECC3C8EA12DB220EC934EA76E6791485A8 	&& gpg --batch --verify httpd.tar.bz2.asc httpd.tar.bz2 	&& rm -rf "$GNUPGHOME" httpd.tar.bz2.asc 		&& mkdir -p src 	&& tar -xf httpd.tar.bz2 -C src --strip-components=1 	&& rm httpd.tar.bz2 	&& cd src 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--prefix="$HTTPD_PREFIX" 		--enable-mods-shared=reallyall 	&& make -j "$(nproc)" 	&& make install 		&& cd .. 	&& rm -r src man manual 		&& sed -ri 		-e 's!^(\s*CustomLog)\s+\S+!\1 /proc/self/fd/1!g' 		-e 's!^(\s*ErrorLog)\s+\S+!\1 /proc/self/fd/2!g' 		"$HTTPD_PREFIX/conf/httpd.conf" 		&& runDeps="$runDeps $( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .httpd-rundeps $runDeps 	&& apk del .build-deps
# Tue, 11 Jul 2017 19:24:13 GMT
COPY file:761e313354b918b6cd7ea99975a4f6b53ff5381ba689bab2984aec4dab597215 in /usr/local/bin/ 
# Tue, 11 Jul 2017 19:24:14 GMT
EXPOSE 80/tcp
# Tue, 11 Jul 2017 19:24:14 GMT
CMD ["httpd-foreground"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:744e41c53ade1b9e5287688ebff2b8b49ee2b84dffde818268dbd91b0eb0aff5`  
		Last Modified: Thu, 29 Jun 2017 21:07:14 GMT  
		Size: 1.2 KB (1249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a81940df563cce585e059b00d4c37d0462e5649d45ecd43899db85fe5c50e960`  
		Last Modified: Thu, 29 Jun 2017 21:07:13 GMT  
		Size: 140.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a6051aab8581b79683cbbc2ce087dea447bd5bf2717872ee683b44b5bfccc97`  
		Last Modified: Tue, 11 Jul 2017 19:26:06 GMT  
		Size: 26.3 MB (26275102 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d303459535a5cd21aa53a2d16d503b038c862e6b08692362df16ac9b7af0e288`  
		Last Modified: Tue, 11 Jul 2017 19:26:00 GMT  
		Size: 282.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
