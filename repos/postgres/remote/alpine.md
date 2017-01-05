## `postgres:alpine`

```console
$ docker pull postgres@sha256:1490b1cbe2f9af4b111b2dc48e10c9559dbe7c82540155c704dfcb656f4f3116
```

-	Platforms:
	-	linux; amd64

### `postgres:alpine` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.1 MB (13089108 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bc154cc681dd22be67b561e29fd8b65920affe9a4cf6002ac2e106f98ca0ef40`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:25 GMT
ADD file:92ab746eb22dd3ed2b87469c719adf3c1bed7302653bbd76baafd7cfd95e911e in / 
# Wed, 04 Jan 2017 21:12:51 GMT
ENV LANG=en_US.utf8
# Wed, 04 Jan 2017 21:12:52 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 04 Jan 2017 21:12:52 GMT
ENV PG_MAJOR=9.6
# Wed, 04 Jan 2017 21:12:53 GMT
ENV PG_VERSION=9.6.1
# Wed, 04 Jan 2017 21:12:53 GMT
ENV PG_SHA256=e5101e0a49141fc12a7018c6dad594694d3a3325f5ab71e93e0e51bd94e51fcd
# Wed, 04 Jan 2017 21:15:04 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl 		util-linux-dev 		zlib-dev 		&& cd /usr/src/postgresql 	&& ./configure 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(getconf _NPROCESSORS_ONLN)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/include/* 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Wed, 04 Jan 2017 21:15:05 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Wed, 04 Jan 2017 21:15:06 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres /var/run/postgresql
# Wed, 04 Jan 2017 21:15:07 GMT
ENV PATH=/usr/lib/postgresql/9.6/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 04 Jan 2017 21:15:07 GMT
ENV PGDATA=/var/lib/postgresql/data
# Wed, 04 Jan 2017 21:15:07 GMT
VOLUME [/var/lib/postgresql/data]
# Wed, 04 Jan 2017 21:15:08 GMT
COPY file:aac9c9cf495b26b1edb61976da546521ef55bc2bb8bf30227c9de6e93313afce in / 
# Wed, 04 Jan 2017 21:15:08 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 04 Jan 2017 21:15:08 GMT
EXPOSE 5432/tcp
# Wed, 04 Jan 2017 21:15:09 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:0a8490d0dfd399b3a50e9aaa81dba0d425c3868762d46526b41be00886bcc28b`  
		Last Modified: Tue, 27 Dec 2016 18:19:22 GMT  
		Size: 1.9 MB (1902063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6475055d17e005d634c9d02e63e4154e7c4435a6437afa80bef303e6c6efb7d`  
		Last Modified: Thu, 05 Jan 2017 00:25:52 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22c89890fd4b1b8a86ab150d125e5acec6692e75daec55af09ed84235dc2ff7f`  
		Last Modified: Thu, 05 Jan 2017 00:26:01 GMT  
		Size: 11.2 MB (11178145 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f11f146ae400ac26b84e91141f6a7226f4f7594f533159a2a303644c0f99b72`  
		Last Modified: Thu, 05 Jan 2017 00:25:53 GMT  
		Size: 7.1 KB (7123 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a28fd5d5b93aa4e60c22f194eeda128746ce106873f6464e24b246e88161919`  
		Last Modified: Thu, 05 Jan 2017 00:25:53 GMT  
		Size: 140.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bf71628b0d045af1e97ed651b316aeb0308123c3eb1600048ec741b8a4abaad`  
		Last Modified: Thu, 05 Jan 2017 00:25:53 GMT  
		Size: 1.5 KB (1523 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
