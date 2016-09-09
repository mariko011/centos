## `httpd:alpine`

```console
$ docker pull httpd@sha256:ab6c63193c6ede52552686f06557b699142d88cdb633f565695f4fe5c88dd132
```

-	Platforms:
	-	linux; amd64

### `httpd:alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.4 MB (19360612 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8156b39ab7f8d45d5bdfea83e7ed6f9d3c67f756634d3d06f2683422b5d73f45`
-	Default Command: `["httpd-foreground"]`

```dockerfile
# Mon, 29 Aug 2016 23:49:14 GMT
ADD file:852e9d0cb9d906535af512a89339fc70b2873a0f94defbcbe41cd44942dd6ac8 in / 
# Tue, 30 Aug 2016 00:32:17 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Tue, 30 Aug 2016 00:32:18 GMT
ENV HTTPD_PREFIX=/usr/local/apache2
# Tue, 30 Aug 2016 00:32:18 GMT
ENV PATH=/usr/local/apache2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 30 Aug 2016 00:32:19 GMT
RUN mkdir -p "$HTTPD_PREFIX" 	&& chown www-data:www-data "$HTTPD_PREFIX"
# Tue, 30 Aug 2016 00:32:19 GMT
WORKDIR /usr/local/apache2
# Tue, 30 Aug 2016 00:33:46 GMT
ENV HTTPD_VERSION=2.4.23
# Tue, 30 Aug 2016 00:33:47 GMT
ENV HTTPD_SHA1=5101be34ac4a509b245adb70a56690a84fcc4e7f
# Tue, 30 Aug 2016 00:33:47 GMT
ENV HTTPD_BZ2_URL=https://www.apache.org/dist/httpd/httpd-2.4.23.tar.bz2
# Tue, 30 Aug 2016 00:34:35 GMT
RUN set -x 	&& runDeps=' 		apr-dev 		apr-util-dev 	' 	&& apk add --no-cache --virtual .build-deps 		$runDeps 		ca-certificates 		gcc 		gnupg 		libc-dev 		make 		openssl 		openssl-dev 		pcre-dev 		tar 		&& wget -O httpd.tar.bz2 "$HTTPD_BZ2_URL" 	&& echo "$HTTPD_SHA1 *httpd.tar.bz2" | sha1sum -c - 	&& wget -O httpd.tar.bz2.asc "$HTTPD_BZ2_URL.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys A93D62ECC3C8EA12DB220EC934EA76E6791485A8 	&& gpg --batch --verify httpd.tar.bz2.asc httpd.tar.bz2 	&& rm -r "$GNUPGHOME" httpd.tar.bz2.asc 		&& mkdir -p src 	&& tar -xvf httpd.tar.bz2 -C src --strip-components=1 	&& rm httpd.tar.bz2 	&& cd src 		&& ./configure 		--prefix="$HTTPD_PREFIX" 		--enable-mods-shared=reallyall 	&& make -j"$(getconf _NPROCESSORS_ONLN)" 	&& make install 		&& cd .. 	&& rm -r src 		&& sed -ri 		-e 's!^(\s*CustomLog)\s+\S+!\1 /proc/self/fd/1!g' 		-e 's!^(\s*ErrorLog)\s+\S+!\1 /proc/self/fd/2!g' 		"$HTTPD_PREFIX/conf/httpd.conf" 		&& runDeps="$runDeps $( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .httpd-rundeps $runDeps 	&& apk del .build-deps
# Tue, 30 Aug 2016 00:34:35 GMT
COPY file:761e313354b918b6cd7ea99975a4f6b53ff5381ba689bab2984aec4dab597215 in /usr/local/bin/ 
# Tue, 30 Aug 2016 00:34:36 GMT
EXPOSE 80/tcp
# Tue, 30 Aug 2016 00:34:36 GMT
CMD ["httpd-foreground"]
```

-	Layers:
	-	`sha256:e110a4a1794126ef308a49f2d65785af2f25538f06700721aad8283b81fdfa58`  
		Last Modified: Thu, 23 Jun 2016 19:56:16 GMT  
		Size: 2.3 MB (2310286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5bbf5efa77bb24cdc93a378ba115ed76c030a4eb4ce93d7b0e49ad9db2cd8555`  
		Last Modified: Thu, 08 Sep 2016 17:43:13 GMT  
		Size: 1.3 KB (1271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f55c24dc5345a01ef45730bdd11562ee806b537d82b56d8c20cdc36d909b9dc3`  
		Last Modified: Thu, 08 Sep 2016 17:43:13 GMT  
		Size: 140.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ba738bbfc3770fd598912851c4869ac589bb1966c27955acaca5352148d6dc3`  
		Last Modified: Thu, 08 Sep 2016 17:44:31 GMT  
		Size: 17.0 MB (17048634 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdb242f7d906d1eabe9f91578f358db36e7c7230fabd00ec7a3b9f9fa5f4259c`  
		Last Modified: Thu, 08 Sep 2016 17:44:22 GMT  
		Size: 281.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
