## `postgres:alpine`

```console
$ docker pull postgres@sha256:1a1d1fc88b44e89a7a6b7e116da6905bc82969e557342fd7aca4ae0f4274ca35
```

-	Platforms:
	-	linux; amd64

### `postgres:alpine` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.7 MB (15690372 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5005ef018d73aaa923aca25271163b5fdb0df087132bcf707b5986c52e1ce088`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Tue, 18 Oct 2016 20:31:22 GMT
ADD file:7afbc23fda8b0b3872623c16af8e3490b2cee951aed14b3794389c2f946cc8c7 in / 
# Tue, 15 Nov 2016 01:19:15 GMT
ENV LANG=en_US.utf8
# Tue, 15 Nov 2016 01:19:16 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 15 Nov 2016 01:19:16 GMT
ENV PG_MAJOR=9.6
# Tue, 15 Nov 2016 01:19:16 GMT
ENV PG_VERSION=9.6.1
# Tue, 15 Nov 2016 01:19:17 GMT
ENV PG_SHA256=e5101e0a49141fc12a7018c6dad594694d3a3325f5ab71e93e0e51bd94e51fcd
# Tue, 15 Nov 2016 01:21:19 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl 		util-linux-dev 		zlib-dev 		&& cd /usr/src/postgresql 	&& ./configure 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(getconf _NPROCESSORS_ONLN)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/include/* 	&& find /usr/local -name '*.a' -delete
# Tue, 15 Nov 2016 01:21:20 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Tue, 15 Nov 2016 01:21:21 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres /var/run/postgresql
# Tue, 15 Nov 2016 01:21:22 GMT
ENV PATH=/usr/lib/postgresql/9.6/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 15 Nov 2016 01:21:22 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 15 Nov 2016 01:21:22 GMT
VOLUME [/var/lib/postgresql/data]
# Tue, 15 Nov 2016 01:21:23 GMT
COPY file:92c6a119d6f4bf342ba2f140cfddd0f77c7e7f71a79a0c309322413cc95ddd6e in / 
# Tue, 15 Nov 2016 01:21:23 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 15 Nov 2016 01:21:24 GMT
EXPOSE 5432/tcp
# Tue, 15 Nov 2016 01:21:24 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:3690ec4760f95690944da86dc4496148a63d85c9e3100669a318110092f6862f`  
		Last Modified: Tue, 18 Oct 2016 20:32:39 GMT  
		Size: 2.3 MB (2312958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:978e5b6cebed046a846f73db43c3ba2c3fb6b2cee242c3248f8c2467609d7b8b`  
		Last Modified: Tue, 15 Nov 2016 01:30:10 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ecbce5d0620b974a3a9722b4a866e90fbab952fa22dcfe0cb8f10974397d382`  
		Last Modified: Tue, 15 Nov 2016 01:30:14 GMT  
		Size: 13.4 MB (13368766 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:452c2dc419e912e4098c23d22dfa9409aa6f87e872182d804125a9614a1007f2`  
		Last Modified: Tue, 15 Nov 2016 01:30:12 GMT  
		Size: 7.1 KB (7121 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9bedf49895a37d0c5634032916223f47028d47be77539f26a6574966e7cb677`  
		Last Modified: Tue, 15 Nov 2016 01:30:10 GMT  
		Size: 141.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e426ce4e11f90f712eacf14295204ff9d3120fc93ae95d59d7d39f7e974e2737`  
		Last Modified: Tue, 15 Nov 2016 01:30:09 GMT  
		Size: 1.3 KB (1272 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
