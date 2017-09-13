## `postgres:10-alpine`

```console
$ docker pull postgres@sha256:32a95e340dcb9d9a9faa19b23574d1932e27306b9c07793cfe9f362c4c9fdd48
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `postgres:10-alpine` - linux; amd64

```console
$ docker pull postgres@sha256:e5d9d9e63365f50ebc55eceaea3463ade5a2d7954e174b503e0a21ce455b2f57
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.7 MB (14714828 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:753150afa401b745e4db932ce5a60d324754d61e94b923eb317abd77db09f8bb`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Wed, 13 Sep 2017 06:55:21 GMT
RUN set -ex; 	postgresHome="$(getent passwd postgres)"; 	postgresHome="$(echo "$postgresHome" | cut -d: -f6)"; 	[ "$postgresHome" = '/var/lib/postgresql' ]; 	mkdir -p "$postgresHome"; 	chown -R postgres:postgres "$postgresHome"
# Wed, 13 Sep 2017 06:55:21 GMT
ENV LANG=en_US.utf8
# Wed, 13 Sep 2017 06:55:22 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 13 Sep 2017 06:55:22 GMT
ENV PG_MAJOR=10
# Wed, 13 Sep 2017 06:55:22 GMT
ENV PG_VERSION=10beta4
# Wed, 13 Sep 2017 06:55:22 GMT
ENV PG_SHA256=e70ffa84d439033533279ccb3ae7beaa0278585b2b176a767bcd0cbddb1252d2
# Wed, 13 Sep 2017 06:57:50 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl-utils 		perl-ipc-run 		util-linux-dev 		zlib-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& wget -O config/config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Wed, 13 Sep 2017 06:57:51 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Wed, 13 Sep 2017 06:57:52 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Wed, 13 Sep 2017 06:57:52 GMT
ENV PATH=/usr/lib/postgresql/10/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 13 Sep 2017 06:57:52 GMT
ENV PGDATA=/var/lib/postgresql/data
# Wed, 13 Sep 2017 06:57:53 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Wed, 13 Sep 2017 06:57:53 GMT
VOLUME [/var/lib/postgresql/data]
# Wed, 13 Sep 2017 06:57:53 GMT
COPY file:d5038a27fbcfa2f7c3a5e92ffdbfda1676a7a65ecb52a9b377a6041a59e1c1d7 in /usr/local/bin/ 
# Wed, 13 Sep 2017 06:57:54 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 13 Sep 2017 06:57:54 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 13 Sep 2017 06:57:54 GMT
EXPOSE 5432/tcp
# Wed, 13 Sep 2017 06:57:54 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c39e7de06b8dcbdb9b117cc9e25e9a12410eca9018f5205d4f58a0c32ce573d`  
		Last Modified: Wed, 13 Sep 2017 07:15:39 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3287e509355884b6758d156e1c81abd39e505a582fe43b93f51f8a3110af9be`  
		Last Modified: Wed, 13 Sep 2017 07:15:38 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5cf67d77181391f6e2943aa7c92babfa022709c21fd1d213e8e95d2596b0e3f`  
		Last Modified: Wed, 13 Sep 2017 07:15:44 GMT  
		Size: 12.7 MB (12714650 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2e952b19374764ead66dad90134ac35ba42763990e058051de36e1ca6a84256`  
		Last Modified: Wed, 13 Sep 2017 07:15:36 GMT  
		Size: 7.3 KB (7268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb06cf50a39fc8242c06620689ba57ff4c09b9d4c27b1445fce58b53588bfa33`  
		Last Modified: Wed, 13 Sep 2017 07:15:38 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2d5d50bf2b1460750e98d0b1ad53f2fa9b759757d7be72ddcc2225324cfcb38`  
		Last Modified: Wed, 13 Sep 2017 07:15:36 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e4439f46d2adff594a6a20390041543d8f56cf59e133eedc3ffbc8bd4e113cf`  
		Last Modified: Wed, 13 Sep 2017 07:15:37 GMT  
		Size: 1.8 KB (1799 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a29a6449e6195ce89e9e0b92d118f8932dc09b9bb999dd97372d07a42deb492`  
		Last Modified: Wed, 13 Sep 2017 07:15:35 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
