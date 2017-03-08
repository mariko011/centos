## `postgres:alpine`

```console
$ docker pull postgres@sha256:d0b0909bbf3ac0d9defab0bfc3359e91e8a21cd66ce6e8e33b3d3c5cd84761e1
```

-	Platforms:
	-	linux; amd64

### `postgres:alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.0 MB (13993240 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:914df4e1aa1c0efc8b9697c8213961c156ebdce2c1cf1100deddfff87df25e75`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:37 GMT
ADD file:730030a984f5f0c5dc9b15ab61da161082b5c0f6e112a9c921b42321140c3927 in / 
# Fri, 03 Mar 2017 23:12:20 GMT
ENV LANG=en_US.utf8
# Fri, 03 Mar 2017 23:12:21 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 03 Mar 2017 23:12:21 GMT
ENV PG_MAJOR=9.6
# Fri, 03 Mar 2017 23:12:21 GMT
ENV PG_VERSION=9.6.2
# Fri, 03 Mar 2017 23:12:22 GMT
ENV PG_SHA256=0187b5184be1c09034e74e44761505e52357248451b0c854dddec6c231fe50c9
# Tue, 07 Mar 2017 23:45:57 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl 		util-linux-dev 		zlib-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& ./configure 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Tue, 07 Mar 2017 23:45:58 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Tue, 07 Mar 2017 23:45:59 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod g+s /var/run/postgresql
# Tue, 07 Mar 2017 23:45:59 GMT
ENV PATH=/usr/lib/postgresql/9.6/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 07 Mar 2017 23:46:00 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 07 Mar 2017 23:46:01 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Tue, 07 Mar 2017 23:46:01 GMT
VOLUME [/var/lib/postgresql/data]
# Tue, 07 Mar 2017 23:46:02 GMT
COPY file:f9a2410e9ac1ac1f8eaaa7097935e1bc01697a3aea28753ca0ff43bcb928e743 in /usr/local/bin/ 
# Tue, 07 Mar 2017 23:46:03 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 07 Mar 2017 23:46:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 07 Mar 2017 23:46:03 GMT
EXPOSE 5432/tcp
# Tue, 07 Mar 2017 23:46:04 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:627beaf3eaaff1c0bc3311d60fb933c17ad04fe377e1043d9593646d8ae3bfe1`  
		Last Modified: Fri, 03 Mar 2017 20:34:41 GMT  
		Size: 1.9 MB (1905270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d555ba539f475d381bd03abd3e00bc4ca815118f0e3d65a679b7c63f1c78fd6`  
		Last Modified: Sat, 04 Mar 2017 05:36:11 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f829d456f997b8d438f1d24a1174527d75f2a70fb9b4cd96523178f1d96657bc`  
		Last Modified: Tue, 07 Mar 2017 23:55:45 GMT  
		Size: 12.1 MB (12078647 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ed44e989a3a6d74a152d24111ae4fccda786bcd5c0adedb09de2f56d08a9654`  
		Last Modified: Tue, 07 Mar 2017 23:55:39 GMT  
		Size: 7.1 KB (7096 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64960f1d9c234d497eea1abf9ec25a8998d6e89a36294255010a54ac9b41f5c6`  
		Last Modified: Tue, 07 Mar 2017 23:55:39 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:299245faa0f075e147e925da4eb2e7eb1fbe71d508547a4bba72102cc9b65590`  
		Last Modified: Tue, 07 Mar 2017 23:55:39 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1cc132bbbc97bf0bf707d262d69c9b80940f7fa797a75535dabd6baa07d14b8c`  
		Last Modified: Tue, 07 Mar 2017 23:55:39 GMT  
		Size: 1.7 KB (1684 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fbb27e2a66b2277b64d322b227679a3eb64263751cf6eb4e792d73862b384ec`  
		Last Modified: Tue, 07 Mar 2017 23:55:40 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
