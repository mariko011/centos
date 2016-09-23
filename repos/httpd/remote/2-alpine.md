## `httpd:2-alpine`

```console
$ docker pull httpd@sha256:c99ac14ff8e50e35c0f4edcff74cc2f10a37ad6276f54f3cb189b0f6ef26530c
```

-	Platforms:
	-	linux; amd64

### `httpd:2-alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.0 MB (30048027 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bd9650b0a477cb341b4d5fed06a36d584ba8449e4e51614bfab3759de0bc1584`
-	Default Command: `["httpd-foreground"]`

```dockerfile
# Fri, 23 Sep 2016 16:29:57 GMT
ADD file:d6ee3ba7a4d59b161917082cc7242c660c61bb3f3cc1549c7e2dfff2b0de7104 in / 
# Fri, 23 Sep 2016 16:53:40 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Fri, 23 Sep 2016 16:53:41 GMT
ENV HTTPD_PREFIX=/usr/local/apache2
# Fri, 23 Sep 2016 16:53:41 GMT
ENV PATH=/usr/local/apache2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Sep 2016 16:53:42 GMT
RUN mkdir -p "$HTTPD_PREFIX" 	&& chown www-data:www-data "$HTTPD_PREFIX"
# Fri, 23 Sep 2016 16:53:42 GMT
WORKDIR /usr/local/apache2
# Fri, 23 Sep 2016 16:53:42 GMT
ENV HTTPD_VERSION=2.4.23
# Fri, 23 Sep 2016 16:53:43 GMT
ENV HTTPD_SHA1=5101be34ac4a509b245adb70a56690a84fcc4e7f
# Fri, 23 Sep 2016 16:53:43 GMT
ENV HTTPD_BZ2_URL=https://www.apache.org/dist/httpd/httpd-2.4.23.tar.bz2
# Fri, 23 Sep 2016 16:54:37 GMT
RUN set -x 	&& runDeps=' 		apr-dev 		apr-util-dev 		perl 	' 	&& apk add --no-cache --virtual .build-deps 		$runDeps 		ca-certificates 		gcc 		gnupg 		libc-dev 		make 		openssl 		openssl-dev 		pcre-dev 		tar 		&& wget -O httpd.tar.bz2 "$HTTPD_BZ2_URL" 	&& echo "$HTTPD_SHA1 *httpd.tar.bz2" | sha1sum -c - 	&& wget -O httpd.tar.bz2.asc "$HTTPD_BZ2_URL.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys A93D62ECC3C8EA12DB220EC934EA76E6791485A8 	&& gpg --batch --verify httpd.tar.bz2.asc httpd.tar.bz2 	&& rm -r "$GNUPGHOME" httpd.tar.bz2.asc 		&& mkdir -p src 	&& tar -xvf httpd.tar.bz2 -C src --strip-components=1 	&& rm httpd.tar.bz2 	&& cd src 		&& ./configure 		--prefix="$HTTPD_PREFIX" 		--enable-mods-shared=reallyall 	&& make -j"$(getconf _NPROCESSORS_ONLN)" 	&& make install 		&& cd .. 	&& rm -r src 		&& sed -ri 		-e 's!^(\s*CustomLog)\s+\S+!\1 /proc/self/fd/1!g' 		-e 's!^(\s*ErrorLog)\s+\S+!\1 /proc/self/fd/2!g' 		"$HTTPD_PREFIX/conf/httpd.conf" 		&& runDeps="$runDeps $( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .httpd-rundeps $runDeps 	&& apk del .build-deps
# Fri, 23 Sep 2016 16:54:37 GMT
COPY file:761e313354b918b6cd7ea99975a4f6b53ff5381ba689bab2984aec4dab597215 in /usr/local/bin/ 
# Fri, 23 Sep 2016 16:54:38 GMT
EXPOSE 80/tcp
# Fri, 23 Sep 2016 16:54:38 GMT
CMD ["httpd-foreground"]
```

-	Layers:
	-	`sha256:c0cb142e43453ebb1f82b905aa472e6e66017efd43872135bc5372e4fac04031`  
		Last Modified: Fri, 23 Sep 2016 16:30:54 GMT  
		Size: 2.3 MB (2312930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de45dc8398a52fc01695993a3e651816cabdebb0861ba8b6c5aa3dfbfc77ab8b`  
		Last Modified: Fri, 23 Sep 2016 16:54:46 GMT  
		Size: 1.3 KB (1272 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acfe8914727b6a722d22b827c06ad518db609263e54cdc92a7bde0a62dd158bc`  
		Last Modified: Fri, 23 Sep 2016 16:54:46 GMT  
		Size: 141.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18306ccfd3af4fdc9839a3a9e40e25a8d33257b82a9dbe2f440dbcae67e58a72`  
		Last Modified: Fri, 23 Sep 2016 16:54:54 GMT  
		Size: 27.7 MB (27733403 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1803d69f1ea0b6df6098a8d19b4207ad58c3024ee9ca0e79f3f5fe7c0ac223b`  
		Last Modified: Fri, 23 Sep 2016 16:54:45 GMT  
		Size: 281.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
