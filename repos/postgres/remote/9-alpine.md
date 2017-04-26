## `postgres:9-alpine`

```console
$ docker pull postgres@sha256:7f3a59bc91a4c80c9a3ff0430ec012f7ce82f906ab0a2d7176fcbbf24ea9f893
```

-	Platforms:
	-	linux; amd64

### `postgres:9-alpine` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.6 MB (14593576 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:953120eb942e86685c6d25dff066a10af58df524adbbefde0c2efd53975f11b3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:37 GMT
ADD file:730030a984f5f0c5dc9b15ab61da161082b5c0f6e112a9c921b42321140c3927 in / 
# Wed, 26 Apr 2017 20:45:27 GMT
RUN set -ex; 	postgresHome="$(getent passwd postgres)"; 	postgresHome="$(echo "$postgresHome" | cut -d: -f6)"; 	[ "$postgresHome" = '/var/lib/postgresql' ]; 	mkdir -p "$postgresHome"; 	chown -R postgres:postgres "$postgresHome"
# Wed, 26 Apr 2017 20:45:28 GMT
ENV LANG=en_US.utf8
# Wed, 26 Apr 2017 20:45:29 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 26 Apr 2017 20:45:30 GMT
ENV PG_MAJOR=9.6
# Wed, 26 Apr 2017 20:45:31 GMT
ENV PG_VERSION=9.6.2
# Wed, 26 Apr 2017 20:45:31 GMT
ENV PG_SHA256=0187b5184be1c09034e74e44761505e52357248451b0c854dddec6c231fe50c9
# Wed, 26 Apr 2017 20:48:04 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl 		util-linux-dev 		zlib-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& ./configure 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Wed, 26 Apr 2017 20:48:06 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Wed, 26 Apr 2017 20:48:07 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod g+s /var/run/postgresql
# Wed, 26 Apr 2017 20:48:08 GMT
ENV PATH=/usr/lib/postgresql/9.6/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 26 Apr 2017 20:48:09 GMT
ENV PGDATA=/var/lib/postgresql/data
# Wed, 26 Apr 2017 20:48:10 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Wed, 26 Apr 2017 20:48:11 GMT
VOLUME [/var/lib/postgresql/data]
# Wed, 26 Apr 2017 20:48:12 GMT
COPY file:db57e321febf05eb6dac4cb9a4f9abedf016344bfb78b9a96a61ff1e7b294802 in /usr/local/bin/ 
# Wed, 26 Apr 2017 20:48:13 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 26 Apr 2017 20:48:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 26 Apr 2017 20:48:15 GMT
EXPOSE 5432/tcp
# Wed, 26 Apr 2017 20:48:15 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:627beaf3eaaff1c0bc3311d60fb933c17ad04fe377e1043d9593646d8ae3bfe1`  
		Last Modified: Fri, 03 Mar 2017 20:34:41 GMT  
		Size: 1.9 MB (1905270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e351d01eba53ca31f23368d6de639eba6eef7580065bed0cb0915d5ae0da360c`  
		Last Modified: Wed, 26 Apr 2017 21:00:11 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbc11f1629f1f4f2182b37aa7fd862352c3c2a3e18980a914bca1c825532cb53`  
		Last Modified: Wed, 26 Apr 2017 21:00:13 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2931b310bc1e56ecceaffa69f1fae800e6e8eba1b937118795f129aa20748b52`  
		Last Modified: Wed, 26 Apr 2017 21:00:11 GMT  
		Size: 12.7 MB (12678780 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2996796a1321148ef08392a25154bc11ae984ff85b8b9f5f9984b70075bc9b06`  
		Last Modified: Wed, 26 Apr 2017 21:00:06 GMT  
		Size: 7.1 KB (7059 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebdf8bbd1a3503b475ae855dafccc7ac6e06fab392418e1dd278d6a65cbc8140`  
		Last Modified: Wed, 26 Apr 2017 21:00:06 GMT  
		Size: 142.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47255f8e1bca9e9f96f8f6ba40a81620124821d1a8948e020ad57bc662404db4`  
		Last Modified: Wed, 26 Apr 2017 21:00:09 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4945582dcf7d655f4b832759f2ed0f770d367179745edf71db89ec66069a55ef`  
		Last Modified: Wed, 26 Apr 2017 21:00:06 GMT  
		Size: 1.8 KB (1790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92139846ff88ed88b074a290413ff6b4e2a0969772206204e7b51dc154162c23`  
		Last Modified: Wed, 26 Apr 2017 21:00:05 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
