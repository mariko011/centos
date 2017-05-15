## `postgres:alpine`

```console
$ docker pull postgres@sha256:ac1615bc3ada70b3e9abe0c9cda81c3deec1b1b3a051ffadde32a17973f631f4
```

-	Platforms:
	-	linux; amd64

### `postgres:alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.7 MB (14663961 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:727b7f7ac52a1e21cbd2b23cb3440b86d331d3dab1ab0188bd268e73f7734d3f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 10 May 2017 16:38:16 GMT
ADD file:63f63606d6e289eb607c90e31de81802258906712727e473a2898f0f1ae55bb5 in / 
# Wed, 10 May 2017 16:38:17 GMT
CMD ["/bin/sh"]
# Wed, 10 May 2017 22:44:19 GMT
RUN set -ex; 	postgresHome="$(getent passwd postgres)"; 	postgresHome="$(echo "$postgresHome" | cut -d: -f6)"; 	[ "$postgresHome" = '/var/lib/postgresql' ]; 	mkdir -p "$postgresHome"; 	chown -R postgres:postgres "$postgresHome"
# Wed, 10 May 2017 22:44:20 GMT
ENV LANG=en_US.utf8
# Wed, 10 May 2017 22:44:21 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 10 May 2017 22:44:22 GMT
ENV PG_MAJOR=9.6
# Mon, 15 May 2017 21:19:34 GMT
ENV PG_VERSION=9.6.3
# Mon, 15 May 2017 21:19:35 GMT
ENV PG_SHA256=1645b3736901f6d854e695a937389e68ff2066ce0cde9d73919d6ab7c995b9c6
# Mon, 15 May 2017 21:21:50 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl 		util-linux-dev 		zlib-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess "http://git.savannah.gnu.org/gitweb/?p=config.git;a=blob_plain;f=config.guess;hb=HEAD" 	&& wget -O config/config.sub "http://git.savannah.gnu.org/gitweb/?p=config.git;a=blob_plain;f=config.sub;hb=HEAD" 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Mon, 15 May 2017 21:21:51 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Mon, 15 May 2017 21:21:53 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod g+s /var/run/postgresql
# Mon, 15 May 2017 21:21:54 GMT
ENV PATH=/usr/lib/postgresql/9.6/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 15 May 2017 21:21:54 GMT
ENV PGDATA=/var/lib/postgresql/data
# Mon, 15 May 2017 21:21:56 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Mon, 15 May 2017 21:21:57 GMT
VOLUME [/var/lib/postgresql/data]
# Mon, 15 May 2017 21:21:58 GMT
COPY file:b7f16d53ff9b4f99d3e3c8fd87c7ffb72ffdcb5ddd9b0773ca122008aba3de5d in /usr/local/bin/ 
# Mon, 15 May 2017 21:21:59 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Mon, 15 May 2017 21:22:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 15 May 2017 21:22:01 GMT
EXPOSE 5432/tcp
# Mon, 15 May 2017 21:22:02 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:cfc728c1c5584d8e0ae69368fc9c34d54d72651355573ba42554c2469a0a6299`  
		Last Modified: Wed, 10 May 2017 16:41:01 GMT  
		Size: 2.0 MB (1967906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b749e72b24f9914e9c03f0cd76903382375d2080c19aacdb90e2a56267b64af7`  
		Last Modified: Thu, 11 May 2017 18:15:41 GMT  
		Size: 142.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0abdb8c9c36be26aa6f66e5496998f32a5ab79b3b65ce2ffe0abdf2c877ebbeb`  
		Last Modified: Thu, 11 May 2017 18:15:41 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2582819537b744558c7fba75a65d469b76a5eda8083d059c38eaca4c0792a98c`  
		Last Modified: Mon, 15 May 2017 21:39:08 GMT  
		Size: 12.7 MB (12686525 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb8a3b83da3b9346ed3eca97c1a53a99b4d5ed663a09a689b27861abce96e024`  
		Last Modified: Mon, 15 May 2017 21:39:05 GMT  
		Size: 7.1 KB (7062 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d66b6da6fb5e2929eef36fbc9d66c8cdb9d40908f608461cb8f248d3505f29e9`  
		Last Modified: Mon, 15 May 2017 21:39:05 GMT  
		Size: 144.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e8b98e4a698184fd4d4f8a22b914b72de6428df3bce8aa5eb50180cb3543900`  
		Last Modified: Mon, 15 May 2017 21:39:06 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7dec7279bf3042341bfb96b1c00c4f7027409cdc26ac48c91939617c3a7ca69`  
		Last Modified: Mon, 15 May 2017 21:39:05 GMT  
		Size: 1.8 KB (1786 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91a8d91a2c11242e92d6e7c37ff2e06d8066d91d626358563fd5afd389f81e53`  
		Last Modified: Mon, 15 May 2017 21:39:07 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
