## `postgres:9-alpine`

```console
$ docker pull postgres@sha256:5eda6ed2f466aff615c625fc3956771076ed8e52bf10b9d773b4f14e6591e0fd
```

-	Platforms:
	-	linux; amd64

### `postgres:9-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.7 MB (14666174 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f2580abe343dd1ffa201c3b7595144286dfd58c94e2f4d807b4d5c9944560818`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 19 Jun 2017 16:56:25 GMT
ADD file:dc33e8c0381ed8cecdd07c4b77c58a0c1bfa3266629bbce3fc0e49a047fbdd62 in / 
# Mon, 19 Jun 2017 16:56:48 GMT
CMD ["/bin/sh"]
# Tue, 20 Jun 2017 00:06:24 GMT
RUN set -ex; 	postgresHome="$(getent passwd postgres)"; 	postgresHome="$(echo "$postgresHome" | cut -d: -f6)"; 	[ "$postgresHome" = '/var/lib/postgresql' ]; 	mkdir -p "$postgresHome"; 	chown -R postgres:postgres "$postgresHome"
# Tue, 20 Jun 2017 00:06:25 GMT
ENV LANG=en_US.utf8
# Tue, 20 Jun 2017 00:06:27 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 20 Jun 2017 00:06:29 GMT
ENV PG_MAJOR=9.6
# Tue, 20 Jun 2017 00:06:30 GMT
ENV PG_VERSION=9.6.3
# Tue, 20 Jun 2017 00:06:31 GMT
ENV PG_SHA256=1645b3736901f6d854e695a937389e68ff2066ce0cde9d73919d6ab7c995b9c6
# Tue, 20 Jun 2017 00:09:19 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl 		util-linux-dev 		zlib-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& wget -O config/config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Tue, 20 Jun 2017 00:09:21 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Tue, 20 Jun 2017 00:09:22 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Tue, 20 Jun 2017 00:09:23 GMT
ENV PATH=/usr/lib/postgresql/9.6/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 20 Jun 2017 00:09:24 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 20 Jun 2017 00:09:25 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Tue, 20 Jun 2017 00:09:26 GMT
VOLUME [/var/lib/postgresql/data]
# Tue, 20 Jun 2017 00:09:27 GMT
COPY file:0db93797e962937881947161a43da7695835a2b6d5ad1184d0886e35249b5e39 in /usr/local/bin/ 
# Tue, 20 Jun 2017 00:09:29 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 20 Jun 2017 00:09:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 20 Jun 2017 00:09:31 GMT
EXPOSE 5432/tcp
# Tue, 20 Jun 2017 00:09:32 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:c800c6a61b4898becded5aa2cd373c6549651b809d2317b6922cbb269b7bbd0c`  
		Last Modified: Mon, 19 Jun 2017 17:08:03 GMT  
		Size: 2.0 MB (1970311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cee79530d29c44c8fd6b9f4fde7efe6bec90f1d96c5edc98f2cd9739a28c729`  
		Last Modified: Sat, 24 Jun 2017 19:57:33 GMT  
		Size: 141.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6956b64ec92a968fd13dda50faf186e85500954eac53cfc57ed8220beb340bb0`  
		Last Modified: Sat, 24 Jun 2017 19:57:33 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c8cba0468487573b53e1dfcbf116681c4f037624e8a09c974ce6219f0283806`  
		Last Modified: Sat, 24 Jun 2017 19:57:37 GMT  
		Size: 12.7 MB (12686332 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6942ee1bd66e1e2638cc66a32faa0e9b91916abae598450f3ec2d3ff09d3198a`  
		Last Modified: Sat, 24 Jun 2017 19:57:31 GMT  
		Size: 7.1 KB (7059 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d42fd7ff3e5d4873a23d140f67e3cf512f3d0cc036577f702617b0883d04495`  
		Last Modified: Sat, 24 Jun 2017 19:57:31 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a698492a10fba5eec2cacf86f50b3c7cc8e12fd943f0dc32ac8fd5a9332613d`  
		Last Modified: Sat, 24 Jun 2017 19:57:30 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4902b557c84ef5b92a39e4a7648299d370ec517c33183727da3750a71f043437`  
		Last Modified: Sat, 24 Jun 2017 19:57:31 GMT  
		Size: 1.8 KB (1787 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3bb11d39824184e3b68da10b851b1fc5800a0e56bc2aa50559d0c27efe9f3e6`  
		Last Modified: Sat, 24 Jun 2017 19:57:31 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
