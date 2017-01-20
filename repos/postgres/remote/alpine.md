## `postgres:alpine`

```console
$ docker pull postgres@sha256:d1ebe8ea9d9126bf25e1d2c47dc88ca9213efe971266104c3f54de263783b4ca
```

-	Platforms:
	-	linux; amd64

### `postgres:alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.1 MB (13089537 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3a95c146036d7b16d12dbd3842883faa1f6d7d8cc31a85c220d08c3ffbafeee1`
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
# Fri, 20 Jan 2017 22:08:48 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl 		util-linux-dev 		zlib-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& ./configure 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(getconf _NPROCESSORS_ONLN)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/include/* 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Fri, 20 Jan 2017 22:08:49 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Fri, 20 Jan 2017 22:08:50 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod g+s /var/run/postgresql
# Fri, 20 Jan 2017 22:08:51 GMT
ENV PATH=/usr/lib/postgresql/9.6/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 20 Jan 2017 22:08:51 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 20 Jan 2017 22:08:52 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 20 Jan 2017 22:08:53 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 20 Jan 2017 22:08:54 GMT
COPY file:f9a2410e9ac1ac1f8eaaa7097935e1bc01697a3aea28753ca0ff43bcb928e743 in / 
# Fri, 20 Jan 2017 22:08:54 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 20 Jan 2017 22:08:55 GMT
EXPOSE 5432/tcp
# Fri, 20 Jan 2017 22:08:55 GMT
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
	-	`sha256:1ef545a15f4b71bae2531771f7519fb8180e2083476f543fa166fa74db0da46e`  
		Last Modified: Fri, 20 Jan 2017 22:24:57 GMT  
		Size: 11.2 MB (11178312 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2512f4ad1f1c76e10006daf182d828fbf7a5567d5b6b7bb38c635f9bf9519ccc`  
		Last Modified: Fri, 20 Jan 2017 22:24:52 GMT  
		Size: 7.1 KB (7123 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8a8689a3384dbb95c711b29d7eb9ede59fe202c3641b78ed65fe86bf68dcc05`  
		Last Modified: Fri, 20 Jan 2017 22:24:52 GMT  
		Size: 145.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a88c564ca9ec9fc8befa6747ba6afb97e108de5b6abf88c858031f39e2860c2b`  
		Last Modified: Fri, 20 Jan 2017 22:24:52 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b04f6b201981e14803a630375e56f4df03a2bf65507e835d1e3cc2aae7630520`  
		Last Modified: Fri, 20 Jan 2017 22:24:52 GMT  
		Size: 1.6 KB (1617 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
