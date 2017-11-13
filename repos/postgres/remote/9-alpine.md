## `postgres:9-alpine`

```console
$ docker pull postgres@sha256:f90f0beba0b453dae3940a96cf8a433510c5b2109888bb62f7b2d8b1a3c9324b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `postgres:9-alpine` - linux; amd64

```console
$ docker pull postgres@sha256:73a7c25415b615d0b4fe7058ef2c99841c49a26b0dba626fe242b1308c0cffe2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.7 MB (14691657 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e20de79981614d597a4df2667494d6f982d1a8f0e3b80c451247c1c4ce39f2de`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Fri, 03 Nov 2017 22:10:27 GMT
ADD file:92bfed3f8dfbee01eab85c6a1d6bc6894c5a75f9a4e2c414e9b4d05b9fcd19d0 in / 
# Fri, 03 Nov 2017 22:10:27 GMT
CMD ["/bin/sh"]
# Sat, 04 Nov 2017 09:10:49 GMT
RUN set -ex; 	postgresHome="$(getent passwd postgres)"; 	postgresHome="$(echo "$postgresHome" | cut -d: -f6)"; 	[ "$postgresHome" = '/var/lib/postgresql' ]; 	mkdir -p "$postgresHome"; 	chown -R postgres:postgres "$postgresHome"
# Sat, 04 Nov 2017 09:10:49 GMT
ENV LANG=en_US.utf8
# Sat, 04 Nov 2017 09:10:50 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Sat, 04 Nov 2017 09:10:50 GMT
ENV PG_MAJOR=9.6
# Mon, 13 Nov 2017 16:17:38 GMT
ENV PG_VERSION=9.6.6
# Mon, 13 Nov 2017 16:17:38 GMT
ENV PG_SHA256=399cdffcb872f785ba67e25d275463d74521566318cfef8fe219050d063c8154
# Mon, 13 Nov 2017 16:21:27 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl 		perl-ipc-run 		util-linux-dev 		zlib-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& wget -O config/config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Mon, 13 Nov 2017 16:21:27 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Mon, 13 Nov 2017 16:21:28 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Mon, 13 Nov 2017 16:21:28 GMT
ENV PGDATA=/var/lib/postgresql/data
# Mon, 13 Nov 2017 16:21:29 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Mon, 13 Nov 2017 16:21:29 GMT
VOLUME [/var/lib/postgresql/data]
# Mon, 13 Nov 2017 16:21:30 GMT
COPY file:d5038a27fbcfa2f7c3a5e92ffdbfda1676a7a65ecb52a9b377a6041a59e1c1d7 in /usr/local/bin/ 
# Mon, 13 Nov 2017 16:21:30 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Mon, 13 Nov 2017 16:21:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 13 Nov 2017 16:21:31 GMT
EXPOSE 5432/tcp
# Mon, 13 Nov 2017 16:21:31 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:b1f00a6a160cd3696edba6f13ebd1d6a5808216a78ec4b753444ab8f30483b1f`  
		Last Modified: Wed, 25 Oct 2017 23:22:48 GMT  
		Size: 2.0 MB (1970236 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25a88a2feda9fd9c11a4e26126bdb3c7b35e03f06fc60232e8146ab66c6e3fbe`  
		Last Modified: Sat, 04 Nov 2017 09:26:35 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcd866a92fb72cb1d8102afcef8d01e8751f657b317d150bfaa34a8fe61b2f11`  
		Last Modified: Sat, 04 Nov 2017 09:26:35 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f51117524406c3d0ca878fe3e9a9f182ac753667c3f937ba6837de0b06fc677`  
		Last Modified: Mon, 13 Nov 2017 16:36:57 GMT  
		Size: 12.7 MB (12711840 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ebed1cae086687c98e7d4dc50d520c3165cbe288fbe30ac18d71940b97927e8`  
		Last Modified: Mon, 13 Nov 2017 16:36:51 GMT  
		Size: 7.1 KB (7071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfba8057a35498955429fedafc435b2aeb4a857f57fb64f3636b40d00e28f371`  
		Last Modified: Mon, 13 Nov 2017 16:36:51 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0eb338c9df5e8e254cb3940df153dd9b35db473c831d063c99ae6f4446c3de0`  
		Last Modified: Mon, 13 Nov 2017 16:36:51 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4aa7632b4dad4c1e8e42eed2bd63419d0eaee646fa35c7492732d7c8ec03337a`  
		Last Modified: Mon, 13 Nov 2017 16:36:51 GMT  
		Size: 1.8 KB (1802 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20560a78883f99bcc12444af1b08f2573ab591cc3971eb4e9afdfff971c52aed`  
		Last Modified: Mon, 13 Nov 2017 16:36:51 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
