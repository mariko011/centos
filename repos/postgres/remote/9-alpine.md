## `postgres:9-alpine`

```console
$ docker pull postgres@sha256:e5a01132f93e26e25426714b7414c5d2e25c369ee2418df3305b56b151a959eb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `postgres:9-alpine` - linux; amd64

```console
$ docker pull postgres@sha256:4d47b1bb6637403cf796d868bc93ab5939546c49c2af177772c499ccf11615a1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.7 MB (14668872 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9a8a4c38c16ab0cc9395f27ac120e3bc4b8eb0d063a5724af687960e1cd39e34`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Tue, 27 Jun 2017 18:39:21 GMT
ADD file:9d67752278c0e5a1298cd2d6603ebaaab2aa342e27ddf191ee0fde138f82698c in / 
# Tue, 27 Jun 2017 18:39:45 GMT
CMD ["/bin/sh"]
# Wed, 13 Sep 2017 06:59:39 GMT
RUN set -ex; 	postgresHome="$(getent passwd postgres)"; 	postgresHome="$(echo "$postgresHome" | cut -d: -f6)"; 	[ "$postgresHome" = '/var/lib/postgresql' ]; 	mkdir -p "$postgresHome"; 	chown -R postgres:postgres "$postgresHome"
# Wed, 13 Sep 2017 06:59:39 GMT
ENV LANG=en_US.utf8
# Wed, 13 Sep 2017 06:59:39 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 13 Sep 2017 06:59:39 GMT
ENV PG_MAJOR=9.6
# Wed, 13 Sep 2017 06:59:40 GMT
ENV PG_VERSION=9.6.5
# Wed, 13 Sep 2017 06:59:40 GMT
ENV PG_SHA256=06da12a7e3dddeb803962af8309fa06da9d6989f49e22865335f0a14bad0744c
# Wed, 13 Sep 2017 07:01:57 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl 		perl-ipc-run 		util-linux-dev 		zlib-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& wget -O config/config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Wed, 13 Sep 2017 07:01:58 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Wed, 13 Sep 2017 07:01:59 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Wed, 13 Sep 2017 07:01:59 GMT
ENV PATH=/usr/lib/postgresql/9.6/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 13 Sep 2017 07:01:59 GMT
ENV PGDATA=/var/lib/postgresql/data
# Wed, 13 Sep 2017 07:02:00 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Wed, 13 Sep 2017 07:02:00 GMT
VOLUME [/var/lib/postgresql/data]
# Wed, 13 Sep 2017 07:02:00 GMT
COPY file:d5038a27fbcfa2f7c3a5e92ffdbfda1676a7a65ecb52a9b377a6041a59e1c1d7 in /usr/local/bin/ 
# Wed, 13 Sep 2017 07:02:01 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 13 Sep 2017 07:02:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 13 Sep 2017 07:02:01 GMT
EXPOSE 5432/tcp
# Wed, 13 Sep 2017 07:02:01 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:019300c8a437a2d60248f27c206795930626dfe7ddc0323d734143bd5eb131a6`  
		Last Modified: Tue, 27 Jun 2017 18:48:47 GMT  
		Size: 2.0 MB (1970271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93be6bb23909cb5486e4b47dd365fff5b21933db9834d45eddd84d3a12cb6259`  
		Last Modified: Wed, 13 Sep 2017 07:16:26 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f20afa908bd6c8e4ea7ef53c65d9fa4aac1aec524d9ebd1af252102facb01b4e`  
		Last Modified: Wed, 13 Sep 2017 07:16:26 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63da6b86fc162756c94ca8c6122d98f70221d5ca74b8d343b13cd686baf783d7`  
		Last Modified: Wed, 13 Sep 2017 07:16:29 GMT  
		Size: 12.7 MB (12689018 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1543866b0ec68cc864c77a5e69de41cc63f077c272c95ddb1c675f281d87008`  
		Last Modified: Wed, 13 Sep 2017 07:16:24 GMT  
		Size: 7.1 KB (7074 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecdcae2c2aa3afc3b098155c9bd80c0ea75616369cea4516d775bbaef81714db`  
		Last Modified: Wed, 13 Sep 2017 07:16:25 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1afbad3e8e6d42d31c39bcf7a9c887d705de3141ee7cd2d2b06c1abdeaf0e318`  
		Last Modified: Wed, 13 Sep 2017 07:16:24 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d18711b1a269b276ec19e0a70b14c1079bbdfd338cec2e7b407513401e79e6b2`  
		Last Modified: Wed, 13 Sep 2017 07:16:24 GMT  
		Size: 1.8 KB (1801 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5db66b2a2dbf54a515cae256486725efda71baa2260272a79306362e6a60720c`  
		Last Modified: Wed, 13 Sep 2017 07:16:24 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
