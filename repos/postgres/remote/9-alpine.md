## `postgres:9-alpine`

```console
$ docker pull postgres@sha256:fa48df82694141793fb0cd52b9a93a3618ba03e5814e11dbf0dd43797f4d4cf7
```

-	Platforms:
	-	linux; amd64

### `postgres:9-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.4 MB (14365118 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a47bdf2113e9a02e55899a26adebe3f5c64a3bd5c6e7e8abec39f18237607cf8`
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
# Fri, 27 Jan 2017 23:35:34 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl 		util-linux-dev 		zlib-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& ./configure 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(getconf _NPROCESSORS_ONLN)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Fri, 27 Jan 2017 23:35:35 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Fri, 27 Jan 2017 23:35:37 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod g+s /var/run/postgresql
# Fri, 27 Jan 2017 23:35:37 GMT
ENV PATH=/usr/lib/postgresql/9.6/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 27 Jan 2017 23:35:38 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 27 Jan 2017 23:35:39 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 27 Jan 2017 23:35:39 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 27 Jan 2017 23:35:40 GMT
COPY file:f9a2410e9ac1ac1f8eaaa7097935e1bc01697a3aea28753ca0ff43bcb928e743 in / 
# Fri, 27 Jan 2017 23:35:41 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 27 Jan 2017 23:35:41 GMT
EXPOSE 5432/tcp
# Fri, 27 Jan 2017 23:35:42 GMT
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
	-	`sha256:ba55801edf3d9e64df4061dfaef7e6ec047a927b050b1a58a573a4bc8c31cd17`  
		Last Modified: Fri, 27 Jan 2017 23:45:05 GMT  
		Size: 12.5 MB (12453891 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f132014bbab8431b12b6f44259d9ba8e44df9aa5e78651ff17b18b9f80fccc62`  
		Last Modified: Fri, 27 Jan 2017 23:45:02 GMT  
		Size: 7.1 KB (7125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9775497ec4a591f6f581c28d783f37b3a7a01b7da9f9df1c6cae016767c0341f`  
		Last Modified: Fri, 27 Jan 2017 23:45:02 GMT  
		Size: 144.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:678be380896e6c0eb0153a57b0ae8467fcaca960873414763f548a8afedcb114`  
		Last Modified: Fri, 27 Jan 2017 23:45:01 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31e4998cc9ecf593079ca8a9c67f340e1bd0127bc7fc2d357252643e0fcfe9de`  
		Last Modified: Fri, 27 Jan 2017 23:45:01 GMT  
		Size: 1.6 KB (1618 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
