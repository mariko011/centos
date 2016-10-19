## `httpd:2-alpine`

```console
$ docker pull httpd@sha256:0cbc6830e1ebcef0cabbbd1d5abaff9eac5602f1d2eaf14c560effdc0fd6305e
```

-	Platforms:
	-	linux; amd64

### `httpd:2-alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.0 MB (30048239 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:90f065ad819a297892639940a0c98e562e286b6d1274396cbf6b2ffb6fda8ee5`
-	Default Command: `["httpd-foreground"]`

```dockerfile
# Tue, 18 Oct 2016 20:31:22 GMT
ADD file:7afbc23fda8b0b3872623c16af8e3490b2cee951aed14b3794389c2f946cc8c7 in / 
# Tue, 18 Oct 2016 23:21:51 GMT
RUN set -x 	&& addgroup -g 82 -S www-data 	&& adduser -u 82 -D -S -G www-data www-data
# Tue, 18 Oct 2016 23:21:51 GMT
ENV HTTPD_PREFIX=/usr/local/apache2
# Tue, 18 Oct 2016 23:21:52 GMT
ENV PATH=/usr/local/apache2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Oct 2016 23:21:52 GMT
RUN mkdir -p "$HTTPD_PREFIX" 	&& chown www-data:www-data "$HTTPD_PREFIX"
# Tue, 18 Oct 2016 23:21:53 GMT
WORKDIR /usr/local/apache2
# Tue, 18 Oct 2016 23:21:53 GMT
ENV HTTPD_VERSION=2.4.23
# Tue, 18 Oct 2016 23:21:53 GMT
ENV HTTPD_SHA1=5101be34ac4a509b245adb70a56690a84fcc4e7f
# Tue, 18 Oct 2016 23:21:54 GMT
ENV HTTPD_BZ2_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=httpd/httpd-2.4.23.tar.bz2
# Tue, 18 Oct 2016 23:21:54 GMT
ENV HTTPD_ASC_URL=https://www.apache.org/dist/httpd/httpd-2.4.23.tar.bz2.asc
# Tue, 18 Oct 2016 23:23:05 GMT
RUN set -x 	&& runDeps=' 		apr-dev 		apr-util-dev 		perl 	' 	&& apk add --no-cache --virtual .build-deps 		$runDeps 		ca-certificates 		gcc 		gnupg 		libc-dev 		make 		openssl 		openssl-dev 		pcre-dev 		tar 		&& wget -O httpd.tar.bz2 "$HTTPD_BZ2_URL" 	&& echo "$HTTPD_SHA1 *httpd.tar.bz2" | sha1sum -c - 	&& wget -O httpd.tar.bz2.asc "$HTTPD_ASC_URL" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys A93D62ECC3C8EA12DB220EC934EA76E6791485A8 	&& gpg --batch --verify httpd.tar.bz2.asc httpd.tar.bz2 	&& rm -r "$GNUPGHOME" httpd.tar.bz2.asc 		&& mkdir -p src 	&& tar -xvf httpd.tar.bz2 -C src --strip-components=1 	&& rm httpd.tar.bz2 	&& cd src 		&& ./configure 		--prefix="$HTTPD_PREFIX" 		--enable-mods-shared=reallyall 	&& make -j"$(getconf _NPROCESSORS_ONLN)" 	&& make install 		&& cd .. 	&& rm -r src 		&& sed -ri 		-e 's!^(\s*CustomLog)\s+\S+!\1 /proc/self/fd/1!g' 		-e 's!^(\s*ErrorLog)\s+\S+!\1 /proc/self/fd/2!g' 		"$HTTPD_PREFIX/conf/httpd.conf" 		&& runDeps="$runDeps $( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .httpd-rundeps $runDeps 	&& apk del .build-deps
# Tue, 18 Oct 2016 23:23:10 GMT
COPY file:761e313354b918b6cd7ea99975a4f6b53ff5381ba689bab2984aec4dab597215 in /usr/local/bin/ 
# Tue, 18 Oct 2016 23:23:15 GMT
EXPOSE 80/tcp
# Tue, 18 Oct 2016 23:23:20 GMT
CMD ["httpd-foreground"]
```

-	Layers:
	-	`sha256:3690ec4760f95690944da86dc4496148a63d85c9e3100669a318110092f6862f`  
		Last Modified: Tue, 18 Oct 2016 20:32:39 GMT  
		Size: 2.3 MB (2312958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57ecf90066392741028a17280e11b7391e768a97f4da5dc0ed20700fb34b2c94`  
		Last Modified: Tue, 18 Oct 2016 23:23:35 GMT  
		Size: 1.3 KB (1272 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c12bf5f8e773b1ba9ea65ce4cdd840ab337b65b302a29d50b9667ec2647f9507`  
		Last Modified: Tue, 18 Oct 2016 23:23:37 GMT  
		Size: 142.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58b88a88deba79ba7080c417dcec724ee0197e1fc7dd7852e167353c87f277f8`  
		Last Modified: Tue, 18 Oct 2016 23:23:45 GMT  
		Size: 27.7 MB (27733585 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6d3143095807857e657861ccbddad83a61f6086e0091897c3223cf6ba5ca70d`  
		Last Modified: Tue, 18 Oct 2016 23:23:37 GMT  
		Size: 282.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
