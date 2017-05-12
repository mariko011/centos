## `httpd:2-alpine`

```console
$ docker pull httpd@sha256:b0387a0c7595253da3ed437aa001aa9fba3c347e1bce3b222ddf5d540f59ba0d
```

-	Platforms:
	-	linux; amd64

### `httpd:2-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.5 MB (30470880 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a3ef8c72123c175e3d91c666123b131dbd195b7c28df1c54ee81d1c85d62bc09`
-	Default Command: `["httpd-foreground"]`

```dockerfile
# Wed, 10 May 2017 16:38:16 GMT
ADD file:63f63606d6e289eb607c90e31de81802258906712727e473a2898f0f1ae55bb5 in / 
# Wed, 10 May 2017 16:38:17 GMT
CMD ["/bin/sh"]
# Wed, 10 May 2017 21:39:10 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Wed, 10 May 2017 21:39:11 GMT
ENV HTTPD_PREFIX=/usr/local/apache2
# Wed, 10 May 2017 21:39:12 GMT
ENV PATH=/usr/local/apache2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 10 May 2017 21:39:13 GMT
RUN mkdir -p "$HTTPD_PREFIX" 	&& chown www-data:www-data "$HTTPD_PREFIX"
# Wed, 10 May 2017 21:39:14 GMT
WORKDIR /usr/local/apache2
# Wed, 10 May 2017 21:39:15 GMT
ENV HTTPD_VERSION=2.4.25
# Wed, 10 May 2017 21:39:16 GMT
ENV HTTPD_SHA1=bd6d138c31c109297da2346c6e7b93b9283993d2
# Wed, 10 May 2017 21:39:17 GMT
ENV HTTPD_BZ2_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=httpd/httpd-2.4.25.tar.bz2
# Wed, 10 May 2017 21:39:17 GMT
ENV HTTPD_ASC_URL=https://www.apache.org/dist/httpd/httpd-2.4.25.tar.bz2.asc
# Fri, 12 May 2017 05:00:32 GMT
RUN set -x 	&& runDeps=' 		apr-dev 		apr-util-dev 		perl 	' 	&& apk add --no-cache --virtual .build-deps 		$runDeps 		ca-certificates 		coreutils 		dpkg-dev dpkg 		gcc 		gnupg 		libc-dev 		libressl 		libressl-dev 		libxml2-dev 		lua-dev 		make 		nghttp2-dev 		pcre-dev 		tar 		zlib-dev 		&& wget -O httpd.tar.bz2 "$HTTPD_BZ2_URL" 	&& echo "$HTTPD_SHA1 *httpd.tar.bz2" | sha1sum -c - 	&& wget -O httpd.tar.bz2.asc "$HTTPD_ASC_URL" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys A93D62ECC3C8EA12DB220EC934EA76E6791485A8 	&& gpg --batch --verify httpd.tar.bz2.asc httpd.tar.bz2 	&& rm -r "$GNUPGHOME" httpd.tar.bz2.asc 		&& mkdir -p src 	&& tar -xf httpd.tar.bz2 -C src --strip-components=1 	&& rm httpd.tar.bz2 	&& cd src 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--prefix="$HTTPD_PREFIX" 		--enable-mods-shared=reallyall 	&& make -j "$(nproc)" 	&& make install 		&& cd .. 	&& rm -r src man manual 		&& sed -ri 		-e 's!^(\s*CustomLog)\s+\S+!\1 /proc/self/fd/1!g' 		-e 's!^(\s*ErrorLog)\s+\S+!\1 /proc/self/fd/2!g' 		"$HTTPD_PREFIX/conf/httpd.conf" 		&& runDeps="$runDeps $( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .httpd-rundeps $runDeps 	&& apk del .build-deps
# Fri, 12 May 2017 05:00:33 GMT
COPY file:761e313354b918b6cd7ea99975a4f6b53ff5381ba689bab2984aec4dab597215 in /usr/local/bin/ 
# Fri, 12 May 2017 05:00:34 GMT
EXPOSE 80/tcp
# Fri, 12 May 2017 05:00:35 GMT
CMD ["httpd-foreground"]
```

-	Layers:
	-	`sha256:cfc728c1c5584d8e0ae69368fc9c34d54d72651355573ba42554c2469a0a6299`  
		Last Modified: Wed, 10 May 2017 16:41:01 GMT  
		Size: 2.0 MB (1967906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df235d64828cf886f5c1a6a9f55075fc79c5ae72dffaa09bd3310bcb1cc03089`  
		Last Modified: Fri, 12 May 2017 05:04:32 GMT  
		Size: 1.2 KB (1250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1363746bf0f9745fcf6363be1515901db7de2b56b90184ad847814a3b963fdac`  
		Last Modified: Fri, 12 May 2017 05:04:31 GMT  
		Size: 140.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5713c5acc1bed3b6c97eb1fa5d09c01cd7729a220ac19c6a2511289ca3129736`  
		Last Modified: Fri, 12 May 2017 05:04:37 GMT  
		Size: 28.5 MB (28501303 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:302319fc1706b3930d3acc8577462ae4e90043343d112191d5a82e23dac14308`  
		Last Modified: Fri, 12 May 2017 05:04:31 GMT  
		Size: 281.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
