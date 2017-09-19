## `postgres:10-alpine`

```console
$ docker pull postgres@sha256:9ab99815d86e834a96975680af69a9d44833a1bfbcfda6e549ad1db0aca99856
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `postgres:10-alpine` - linux; amd64

```console
$ docker pull postgres@sha256:ded7efd756e171d27b4b2e23fc82564e895b885baf79cf6713281737984d1d34
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.7 MB (14714827 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8192d2f57c03942f6a0a527ba251d8f168ecbc3149777e99d5b3424cf02417d0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 13 Sep 2017 14:32:25 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Wed, 13 Sep 2017 14:32:26 GMT
CMD ["/bin/sh"]
# Tue, 19 Sep 2017 06:58:46 GMT
RUN set -ex; 	postgresHome="$(getent passwd postgres)"; 	postgresHome="$(echo "$postgresHome" | cut -d: -f6)"; 	[ "$postgresHome" = '/var/lib/postgresql' ]; 	mkdir -p "$postgresHome"; 	chown -R postgres:postgres "$postgresHome"
# Tue, 19 Sep 2017 06:58:46 GMT
ENV LANG=en_US.utf8
# Tue, 19 Sep 2017 06:58:47 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 19 Sep 2017 06:58:47 GMT
ENV PG_MAJOR=10
# Tue, 19 Sep 2017 06:58:47 GMT
ENV PG_VERSION=10beta4
# Tue, 19 Sep 2017 06:58:47 GMT
ENV PG_SHA256=e70ffa84d439033533279ccb3ae7beaa0278585b2b176a767bcd0cbddb1252d2
# Tue, 19 Sep 2017 07:01:11 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl-utils 		perl-ipc-run 		util-linux-dev 		zlib-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& wget -O config/config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Tue, 19 Sep 2017 07:01:12 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Tue, 19 Sep 2017 07:01:13 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Tue, 19 Sep 2017 07:01:13 GMT
ENV PATH=/usr/lib/postgresql/10/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 19 Sep 2017 07:01:13 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 19 Sep 2017 07:01:14 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Tue, 19 Sep 2017 07:01:14 GMT
VOLUME [/var/lib/postgresql/data]
# Tue, 19 Sep 2017 07:01:14 GMT
COPY file:d5038a27fbcfa2f7c3a5e92ffdbfda1676a7a65ecb52a9b377a6041a59e1c1d7 in /usr/local/bin/ 
# Tue, 19 Sep 2017 07:01:15 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 19 Sep 2017 07:01:15 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 19 Sep 2017 07:01:15 GMT
EXPOSE 5432/tcp
# Tue, 19 Sep 2017 07:01:15 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa0663cc3571cd215c0ad68c5d378c230336fba3c7f5a2391ce5790bde7a0a3d`  
		Last Modified: Tue, 19 Sep 2017 07:20:25 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:722e8fb4277b34359e26676fb6b5acb3eb1b8c8382f162b831ec8e3e89cf6be9`  
		Last Modified: Tue, 19 Sep 2017 07:20:25 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83a72d2c12c8dc86387fb9509839350a65ca2569dd0d38778e52e3482b3ef0fa`  
		Last Modified: Tue, 19 Sep 2017 07:20:31 GMT  
		Size: 12.7 MB (12714647 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ccd9e312fa3e48bd44f5129271597b33ddd98a0fc3919f9065b406b2c751e9c`  
		Last Modified: Tue, 19 Sep 2017 07:20:23 GMT  
		Size: 7.3 KB (7271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4a25465ff809b779efba5e1b66abdb078a6f50f90cb13a9ae4f487ace14abc5`  
		Last Modified: Tue, 19 Sep 2017 07:20:23 GMT  
		Size: 152.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d772747c1026966c9475d757302d6859cb58084494d20c37f3b9308dcc419bcd`  
		Last Modified: Tue, 19 Sep 2017 07:20:23 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84a5791eb3e66c55a512eb3d43672ae998f9a131e1a166514500b8133c1c7531`  
		Last Modified: Tue, 19 Sep 2017 07:20:23 GMT  
		Size: 1.8 KB (1801 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:358da2c5e2d679c381e20fbf6d61a79c4206f777fce0aeb80b388dcc36fb59f1`  
		Last Modified: Tue, 19 Sep 2017 07:20:23 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
