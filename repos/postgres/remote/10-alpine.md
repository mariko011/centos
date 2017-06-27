## `postgres:10-alpine`

```console
$ docker pull postgres@sha256:bdb73afe3bfb5d750ee9cd4520f411625a8eadc230193e5f0908a1cc7691d380
```

-	Platforms:
	-	linux; amd64

### `postgres:10-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.7 MB (14716196 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6115ca66325d0a1b355892ae7d9d53604dc7e80fc591f9aff99455bd0944a1eb`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 19 Jun 2017 16:58:00 GMT
ADD file:90d7b7a4bad6a39f91c8e1c988e5ee0a7fb9f28b6364b50b6d74dada40258cca in / 
# Mon, 19 Jun 2017 16:58:46 GMT
CMD ["/bin/sh"]
# Tue, 27 Jun 2017 17:30:14 GMT
RUN set -ex; 	postgresHome="$(getent passwd postgres)"; 	postgresHome="$(echo "$postgresHome" | cut -d: -f6)"; 	[ "$postgresHome" = '/var/lib/postgresql' ]; 	mkdir -p "$postgresHome"; 	chown -R postgres:postgres "$postgresHome"
# Tue, 27 Jun 2017 17:30:15 GMT
ENV LANG=en_US.utf8
# Tue, 27 Jun 2017 17:30:16 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 27 Jun 2017 17:30:17 GMT
ENV PG_MAJOR=10
# Tue, 27 Jun 2017 17:30:18 GMT
ENV PG_VERSION=10beta1
# Tue, 27 Jun 2017 17:30:19 GMT
ENV PG_SHA256=7eee02e6f6646c7d4d6e78893a4ff638cfa5f1025b706712da8c6ef2257b5e29
# Tue, 27 Jun 2017 17:32:39 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl-utils 		util-linux-dev 		zlib-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& wget -O config/config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Tue, 27 Jun 2017 17:32:41 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Tue, 27 Jun 2017 17:32:42 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Tue, 27 Jun 2017 17:32:43 GMT
ENV PATH=/usr/lib/postgresql/10/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 27 Jun 2017 17:32:44 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 27 Jun 2017 17:32:45 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Tue, 27 Jun 2017 17:32:46 GMT
VOLUME [/var/lib/postgresql/data]
# Tue, 27 Jun 2017 17:32:47 GMT
COPY file:0db93797e962937881947161a43da7695835a2b6d5ad1184d0886e35249b5e39 in /usr/local/bin/ 
# Tue, 27 Jun 2017 17:32:49 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 27 Jun 2017 17:32:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Jun 2017 17:32:50 GMT
EXPOSE 5432/tcp
# Tue, 27 Jun 2017 17:32:51 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:43d680a959df2b2131639a5e0915cc03e6eeeaba1a22abf3d8881136728bc2ee`  
		Last Modified: Mon, 19 Jun 2017 17:09:10 GMT  
		Size: 2.0 MB (1990164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c346bcd46b0cfbc6959e0415f214f3ad3a6632d04463bc942430687c488ccf2`  
		Last Modified: Tue, 27 Jun 2017 17:44:00 GMT  
		Size: 141.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1a96732ec5d808740ae5ccf65a66fb700fa724e4f095fd4fdc1d1b4859f6c88`  
		Last Modified: Tue, 27 Jun 2017 17:44:01 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5fcd636c64680d3f7f858cc7f9b21bc1854694925c75b63f3359fb7d73a76fb`  
		Last Modified: Tue, 27 Jun 2017 17:44:04 GMT  
		Size: 12.7 MB (12716308 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de03ff4616c5707b6d07c9f4637561fd009a1e05829f65ff90246cf338aaaa23`  
		Last Modified: Tue, 27 Jun 2017 17:43:58 GMT  
		Size: 7.3 KB (7253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:157882a011a7683e230da5cb02939102a6f8bd3bfb61b63789d763580f03f867`  
		Last Modified: Tue, 27 Jun 2017 17:43:57 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9217e0db22cd59df86a8adec4733aae953eaaab9cffce9e1ca5f71158bf61d0f`  
		Last Modified: Tue, 27 Jun 2017 17:43:57 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bbd95b3f63b4a06a410bedce7dc90e0c2be12667c558f833941408c999cae8f`  
		Last Modified: Tue, 27 Jun 2017 17:43:57 GMT  
		Size: 1.8 KB (1789 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d748053ab47c847f9eca630748ebbda9505eb5eab81d6b98c566c2e79930c28f`  
		Last Modified: Tue, 27 Jun 2017 17:43:57 GMT  
		Size: 118.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
