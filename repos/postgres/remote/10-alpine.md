## `postgres:10-alpine`

```console
$ docker pull postgres@sha256:d594858e4f56ab08421af189137265f32437fe4581b9589efb57de7326e2d8a1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `postgres:10-alpine` - linux; amd64

```console
$ docker pull postgres@sha256:90abf34eb3868a82ae4f625d763aa5cf861708d4b96ff1c5e0af599137f3f0ba
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.7 MB (14722077 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2aee41fdbf9e83cb15606ac8be6737fe73261e0b032ba3a3980b2c3a13a31595`
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
# Tue, 26 Sep 2017 01:04:27 GMT
ENV PG_VERSION=10rc1
# Tue, 26 Sep 2017 01:04:27 GMT
ENV PG_SHA256=ebdb44dccb64a31c9c524f996121e7d58c21045826d6c36e3a5ea46afbb2445b
# Tue, 26 Sep 2017 01:07:09 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl-utils 		perl-ipc-run 		util-linux-dev 		zlib-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& wget -O config/config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Tue, 26 Sep 2017 01:07:10 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Tue, 26 Sep 2017 01:07:11 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Tue, 26 Sep 2017 01:07:11 GMT
ENV PATH=/usr/lib/postgresql/10/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 26 Sep 2017 01:07:11 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 26 Sep 2017 01:07:12 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Tue, 26 Sep 2017 01:07:12 GMT
VOLUME [/var/lib/postgresql/data]
# Tue, 26 Sep 2017 01:07:12 GMT
COPY file:d5038a27fbcfa2f7c3a5e92ffdbfda1676a7a65ecb52a9b377a6041a59e1c1d7 in /usr/local/bin/ 
# Tue, 26 Sep 2017 01:07:13 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 26 Sep 2017 01:07:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 26 Sep 2017 01:07:13 GMT
EXPOSE 5432/tcp
# Tue, 26 Sep 2017 01:07:13 GMT
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
	-	`sha256:efc5781ec456ca4ceb37b8a27206d26eb60e9522dac44ab91eb8a9186d2a0ad5`  
		Last Modified: Tue, 26 Sep 2017 01:30:16 GMT  
		Size: 12.7 MB (12721900 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6c248bf965c42b1d65836805a1b7fc4249223305e0ef34273de09f9cca19076`  
		Last Modified: Tue, 26 Sep 2017 01:30:07 GMT  
		Size: 7.3 KB (7266 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a412e28a6dc728d3f83e32307e54a837e5537dcec02e157ff00cf392fe4bae0e`  
		Last Modified: Tue, 26 Sep 2017 01:30:07 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef7d35139b0300be1c2e175e47dd49f9817f6f92ea20fb5cd6a9e980268bcd99`  
		Last Modified: Tue, 26 Sep 2017 01:30:08 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3810ea12e8ceff326aabdc35e848bfb48e1aceff81a338f6c3d16682be8aac41`  
		Last Modified: Tue, 26 Sep 2017 01:30:08 GMT  
		Size: 1.8 KB (1801 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:035b27856304db09656fff71b4b2425e747c12a1d188200f2e841fc9ce86e769`  
		Last Modified: Tue, 26 Sep 2017 01:30:07 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
