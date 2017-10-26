## `postgres:alpine`

```console
$ docker pull postgres@sha256:155e0c5a077947a886c6af3a68b4feff14c91d9e5946f16a25b4bbab81efc58a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `postgres:alpine` - linux; amd64

```console
$ docker pull postgres@sha256:c272bb77c3c29063de59b968b5469b9d6fe715778515aa959936aac2579defb4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.4 MB (14352066 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a5dcfe010b3e326df4be42c8e3bc772b6bad07393826fe364b832cf7ce4ec704`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 25 Oct 2017 23:19:51 GMT
ADD file:1e87ff33d1b6765b793888cd50e01b2bd0dfe152b7dbb4048008bfc2658faea7 in / 
# Wed, 25 Oct 2017 23:19:51 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 02:29:26 GMT
RUN set -ex; 	postgresHome="$(getent passwd postgres)"; 	postgresHome="$(echo "$postgresHome" | cut -d: -f6)"; 	[ "$postgresHome" = '/var/lib/postgresql' ]; 	mkdir -p "$postgresHome"; 	chown -R postgres:postgres "$postgresHome"
# Thu, 26 Oct 2017 02:29:26 GMT
ENV LANG=en_US.utf8
# Thu, 26 Oct 2017 02:29:27 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 26 Oct 2017 02:29:28 GMT
ENV PG_MAJOR=10
# Thu, 26 Oct 2017 02:29:28 GMT
ENV PG_VERSION=10.0
# Thu, 26 Oct 2017 02:29:28 GMT
ENV PG_SHA256=712f5592e27b81c5b454df96b258c14d94b6b03836831e015c65d6deeae57fd1
# Thu, 26 Oct 2017 02:31:58 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl-utils 		perl-ipc-run 		util-linux-dev 		zlib-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& wget -O config/config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Thu, 26 Oct 2017 02:36:22 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Thu, 26 Oct 2017 02:36:22 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Thu, 26 Oct 2017 02:36:22 GMT
ENV PGDATA=/var/lib/postgresql/data
# Thu, 26 Oct 2017 02:36:23 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Thu, 26 Oct 2017 02:36:23 GMT
VOLUME [/var/lib/postgresql/data]
# Thu, 26 Oct 2017 02:36:24 GMT
COPY file:d5038a27fbcfa2f7c3a5e92ffdbfda1676a7a65ecb52a9b377a6041a59e1c1d7 in /usr/local/bin/ 
# Thu, 26 Oct 2017 02:36:24 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 26 Oct 2017 02:36:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 26 Oct 2017 02:36:25 GMT
EXPOSE 5432/tcp
# Thu, 26 Oct 2017 02:36:25 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:b56ae66c29370df48e7377c8f9baa744a3958058a766793f821dadcb144a4647`  
		Last Modified: Wed, 25 Oct 2017 23:21:25 GMT  
		Size: 2.0 MB (1991435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59f78960b1ff7ba58dc829a2527fe6fd833775dc07d3c8b4edf0f6b1afd98e85`  
		Last Modified: Thu, 26 Oct 2017 02:58:15 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6a941631c705f3f6cdb43afe8b24d6ff4ff18419841fb2b64c9714683bcaf6b`  
		Last Modified: Thu, 26 Oct 2017 02:58:15 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a38a77554d5a4767b7746cbb9024f69dcfa567d056efe1a376829b2fcdfed76`  
		Last Modified: Thu, 26 Oct 2017 02:58:24 GMT  
		Size: 12.4 MB (12350858 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72f4d638f9f5d714481621d02496d21e62f6829d86ce0c9ac763ff8a85bbae29`  
		Last Modified: Thu, 26 Oct 2017 02:58:13 GMT  
		Size: 7.3 KB (7268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46fa56e3a8f6c2f2575cca393637ae5b8b9dd929beb4b36034126a71d010fbce`  
		Last Modified: Thu, 26 Oct 2017 02:58:13 GMT  
		Size: 151.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdb4d89b1ac4951a65c57fbce576fdac1ef5922357f31b1e8f7208cdd55c0a56`  
		Last Modified: Thu, 26 Oct 2017 02:58:13 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3086735e41846d87c6f6a7d0f84688214641d28795315b1004be8d20b10b6da`  
		Last Modified: Thu, 26 Oct 2017 02:58:12 GMT  
		Size: 1.8 KB (1803 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c457d5fffc9eb9183235c18a07407f112f8b410291adf435d0d0a5ae9f01284f`  
		Last Modified: Thu, 26 Oct 2017 02:58:12 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
