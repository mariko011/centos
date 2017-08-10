<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `postgres`

-	[`postgres:10-beta3`](#postgres10-beta3)
-	[`postgres:10`](#postgres10)
-	[`postgres:10-beta3-alpine`](#postgres10-beta3-alpine)
-	[`postgres:10-alpine`](#postgres10-alpine)
-	[`postgres:9.6.4`](#postgres964)
-	[`postgres:9.6`](#postgres96)
-	[`postgres:9`](#postgres9)
-	[`postgres:latest`](#postgreslatest)
-	[`postgres:9.6.4-alpine`](#postgres964-alpine)
-	[`postgres:9.6-alpine`](#postgres96-alpine)
-	[`postgres:9-alpine`](#postgres9-alpine)
-	[`postgres:alpine`](#postgresalpine)
-	[`postgres:9.5.8`](#postgres958)
-	[`postgres:9.5`](#postgres95)
-	[`postgres:9.5.8-alpine`](#postgres958-alpine)
-	[`postgres:9.5-alpine`](#postgres95-alpine)
-	[`postgres:9.4.13`](#postgres9413)
-	[`postgres:9.4`](#postgres94)
-	[`postgres:9.4.13-alpine`](#postgres9413-alpine)
-	[`postgres:9.4-alpine`](#postgres94-alpine)
-	[`postgres:9.3.18`](#postgres9318)
-	[`postgres:9.3`](#postgres93)
-	[`postgres:9.3.18-alpine`](#postgres9318-alpine)
-	[`postgres:9.3-alpine`](#postgres93-alpine)
-	[`postgres:9.2.22`](#postgres9222)
-	[`postgres:9.2`](#postgres92)
-	[`postgres:9.2.22-alpine`](#postgres9222-alpine)
-	[`postgres:9.2-alpine`](#postgres92-alpine)

## `postgres:10-beta3`

**does not exist** (yet?)

## `postgres:10`

```console
$ docker pull postgres@sha256:190fa1e057dff4185ab73aeb5d8d2d56811e4bd48106f3a4b6bae54ba6950c5a
```

-	Platforms:
	-	linux; amd64

### `postgres:10` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **117.4 MB (117428826 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9bfcab4f08e0315ce9ee53ef589de047873c87a84787eb0a5f2e72dfece3b271`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 24 Jul 2017 16:52:54 GMT
ADD file:ebba725fb97cea45d0b1b35ccc8144e766fcfc9a78530465c23b0c4674b14042 in / 
# Mon, 24 Jul 2017 16:52:55 GMT
CMD ["bash"]
# Wed, 26 Jul 2017 08:44:00 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 26 Jul 2017 08:44:00 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Wed, 26 Jul 2017 08:44:01 GMT
ENV GOSU_VERSION=1.7
# Wed, 26 Jul 2017 08:44:14 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 26 Jul 2017 08:44:19 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Wed, 26 Jul 2017 08:44:19 GMT
ENV LANG=en_US.utf8
# Wed, 26 Jul 2017 08:44:20 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 26 Jul 2017 08:44:23 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Wed, 26 Jul 2017 08:44:23 GMT
ENV PG_MAJOR=10
# Wed, 26 Jul 2017 08:44:23 GMT
ENV PG_VERSION=10~beta2-1.pgdg90+1
# Wed, 26 Jul 2017 08:44:24 GMT
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main' $PG_MAJOR > /etc/apt/sources.list.d/pgdg.list
# Wed, 26 Jul 2017 08:44:47 GMT
RUN apt-get update 	&& apt-get install -y postgresql-common 	&& sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf 	&& apt-get install -y 		postgresql-$PG_MAJOR=$PG_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Wed, 26 Jul 2017 08:44:48 GMT
RUN mv -v /usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample /usr/share/postgresql/$PG_MAJOR/ 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Wed, 26 Jul 2017 08:44:49 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Wed, 26 Jul 2017 08:44:49 GMT
ENV PATH=/usr/lib/postgresql/10/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 26 Jul 2017 08:44:49 GMT
ENV PGDATA=/var/lib/postgresql/data
# Wed, 26 Jul 2017 08:44:50 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Wed, 26 Jul 2017 08:44:50 GMT
VOLUME [/var/lib/postgresql/data]
# Mon, 31 Jul 2017 19:06:33 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Mon, 31 Jul 2017 19:06:34 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Mon, 31 Jul 2017 19:06:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 31 Jul 2017 19:06:34 GMT
EXPOSE 5432/tcp
# Mon, 31 Jul 2017 19:06:34 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:06b22ddb19134ec8c42aaabd3e2e9f5b378e4e53da4a8960eaaaa86351190af3`  
		Last Modified: Mon, 24 Jul 2017 16:59:30 GMT  
		Size: 45.1 MB (45142935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a89e9890c383465015499306a27143688020b186d8efa289d9e97670b8c60dc`  
		Last Modified: Wed, 26 Jul 2017 08:50:39 GMT  
		Size: 7.0 MB (7029499 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0ec871acfa2d70642e3044907f4c793fbb34bba761548a6557dcce41e72453c`  
		Last Modified: Wed, 26 Jul 2017 08:50:38 GMT  
		Size: 1.7 KB (1714 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9332a355d3d73c1cfbc811504d3ed1cf2c5660ea8736467140cf3c4538c135e6`  
		Last Modified: Wed, 26 Jul 2017 08:50:36 GMT  
		Size: 1.3 MB (1275160 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6675a5cbbf42cffc312e240b1a8286b4cadbe7057c730c81df3e4ae90fc2d13`  
		Last Modified: Wed, 26 Jul 2017 08:50:37 GMT  
		Size: 6.6 MB (6577473 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30d0e64f9fe2ba9d7ff0aa91cfddadb79abfdc05a9523ac365496f35914b13c9`  
		Last Modified: Wed, 26 Jul 2017 08:50:35 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6df1120c4fd91d1cb826ee3406ebf7a0f03e3277756848e8bd4732271c5ee69`  
		Last Modified: Wed, 26 Jul 2017 08:50:37 GMT  
		Size: 4.5 KB (4470 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2839ff434ea21e2b1e5ffbbb8677ab3422b2d6d8ef031a9d9c674ed257e29d2d`  
		Last Modified: Wed, 26 Jul 2017 08:50:35 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6f7d83b6e56d109f27881638f2d395dac2636005c999f91fe244d04037dcb6b`  
		Last Modified: Wed, 26 Jul 2017 08:50:43 GMT  
		Size: 57.4 MB (57387747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0e49ed16cf2784c0044b87c3cdd617a4a5cdf4c5c11267ac89c7f9b55360b26`  
		Last Modified: Wed, 26 Jul 2017 08:50:33 GMT  
		Size: 7.3 KB (7277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1648d421ee128c1d71d11533fcd79277db1a76727d998a27d5f929b414ae5b3f`  
		Last Modified: Wed, 26 Jul 2017 08:50:33 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef4281bca3eaa46b5d1881add4ef8643cfb6377f754f941e92afc5c333df54df`  
		Last Modified: Wed, 26 Jul 2017 08:50:33 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae32ae11136c5f41432444d5a3ce7f1873856e0a1e22dfa8c35a27267e317eab`  
		Last Modified: Mon, 31 Jul 2017 19:07:36 GMT  
		Size: 1.8 KB (1798 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb7a0d29c871e77ff31234b109451b0eb0132fe24d770a875c97a680f4c4bcfe`  
		Last Modified: Mon, 31 Jul 2017 19:07:36 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:10-beta3-alpine`

**does not exist** (yet?)

## `postgres:10-alpine`

```console
$ docker pull postgres@sha256:187ac13141a1a3320ff9532ea5e635b96178b838f9637ca675438535bb8c5dce
```

-	Platforms:
	-	linux; amd64

### `postgres:10-alpine` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.7 MB (14711998 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fc884624bbc5fdc8fc485f59708ad08528244b97b7d9d3ad1998a5c6ad3ece0e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Wed, 28 Jun 2017 21:34:01 GMT
RUN set -ex; 	postgresHome="$(getent passwd postgres)"; 	postgresHome="$(echo "$postgresHome" | cut -d: -f6)"; 	[ "$postgresHome" = '/var/lib/postgresql' ]; 	mkdir -p "$postgresHome"; 	chown -R postgres:postgres "$postgresHome"
# Wed, 28 Jun 2017 21:34:02 GMT
ENV LANG=en_US.utf8
# Wed, 28 Jun 2017 21:34:03 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 28 Jun 2017 21:34:04 GMT
ENV PG_MAJOR=10
# Fri, 14 Jul 2017 22:53:05 GMT
ENV PG_VERSION=10beta2
# Fri, 14 Jul 2017 22:53:06 GMT
ENV PG_SHA256=0d6b50236039fc92e8784bd908b452c38ef63c0f9029f34e7115fbc30e17b195
# Fri, 14 Jul 2017 22:55:25 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl-utils 		perl-ipc-run 		util-linux-dev 		zlib-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& wget -O config/config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Fri, 14 Jul 2017 22:55:26 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Fri, 14 Jul 2017 22:55:27 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 14 Jul 2017 22:55:27 GMT
ENV PATH=/usr/lib/postgresql/10/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 14 Jul 2017 22:55:28 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 14 Jul 2017 22:55:29 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 14 Jul 2017 22:55:29 GMT
VOLUME [/var/lib/postgresql/data]
# Mon, 31 Jul 2017 19:06:38 GMT
COPY file:d5038a27fbcfa2f7c3a5e92ffdbfda1676a7a65ecb52a9b377a6041a59e1c1d7 in /usr/local/bin/ 
# Mon, 31 Jul 2017 19:06:39 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Mon, 31 Jul 2017 19:06:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 31 Jul 2017 19:06:39 GMT
EXPOSE 5432/tcp
# Mon, 31 Jul 2017 19:06:40 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a77e4b4820d45e23254268403c9a7d9f89767620f89a6532f48ae5c09be9f189`  
		Last Modified: Fri, 30 Jun 2017 00:14:50 GMT  
		Size: 141.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b46471032d7e97f29a7c31d31642993eb0244785c21e6c53b361c6283fe3942`  
		Last Modified: Fri, 30 Jun 2017 00:14:51 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccd8b312d1f400c2c8c89d426f62fa95d17ed597eee05b41e97e1610e6e93295`  
		Last Modified: Fri, 14 Jul 2017 23:08:07 GMT  
		Size: 12.7 MB (12711874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84ea0974178c3b86db6b60d3de0bf5dfee882bd8ce1f66a1e6b489d13e3df2bd`  
		Last Modified: Fri, 14 Jul 2017 23:08:05 GMT  
		Size: 7.2 KB (7250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ec3114a35a1d06e10440b32da0d9c8d7ca8209c6d16347344c694cdafd181cb`  
		Last Modified: Fri, 14 Jul 2017 23:08:05 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3101d3dfaead53012926f4133e437c1e010121cdce9616b626fc31c3d20b16d`  
		Last Modified: Fri, 14 Jul 2017 23:08:05 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:643c84cfb5c2d4763f75c6159c06273620b34a3b8b6773227bb7f42ba5e09b3c`  
		Last Modified: Mon, 31 Jul 2017 19:07:51 GMT  
		Size: 1.8 KB (1794 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9302af426bd290b08ec26eac68dac58609b745d1271dbc51eff2db857ab81379`  
		Last Modified: Mon, 31 Jul 2017 19:07:51 GMT  
		Size: 116.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.6.4`

**does not exist** (yet?)

## `postgres:9.6`

```console
$ docker pull postgres@sha256:07d178f4b071971208b912f888c0375838435a06728c431f8a1ef3cc04cdee8d
```

-	Platforms:
	-	linux; amd64

### `postgres:9.6` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.3 MB (104326057 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:33b13ed6b80a4ec1dc5cfe68173c2baee70c4f74c4f1cdbb7ac4fa4ab5d56bc9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 24 Jul 2017 16:51:25 GMT
ADD file:a023a99f7d01868b164d63bfaf8aabc7f271659c69939c3854f041f5a3217428 in / 
# Mon, 24 Jul 2017 16:51:25 GMT
CMD ["bash"]
# Wed, 26 Jul 2017 08:44:55 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 26 Jul 2017 08:44:56 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Wed, 26 Jul 2017 08:44:56 GMT
ENV GOSU_VERSION=1.7
# Wed, 26 Jul 2017 08:45:21 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 26 Jul 2017 08:45:37 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Wed, 26 Jul 2017 08:45:37 GMT
ENV LANG=en_US.utf8
# Wed, 26 Jul 2017 08:45:38 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 26 Jul 2017 08:45:42 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Wed, 26 Jul 2017 08:45:42 GMT
ENV PG_MAJOR=9.6
# Wed, 26 Jul 2017 08:45:42 GMT
ENV PG_VERSION=9.6.3-1.pgdg80+1
# Wed, 26 Jul 2017 08:45:43 GMT
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main' $PG_MAJOR > /etc/apt/sources.list.d/pgdg.list
# Wed, 26 Jul 2017 08:46:32 GMT
RUN apt-get update 	&& apt-get install -y postgresql-common 	&& sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf 	&& apt-get install -y 		postgresql-$PG_MAJOR=$PG_VERSION 		postgresql-contrib-$PG_MAJOR=$PG_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Wed, 26 Jul 2017 08:46:32 GMT
RUN mv -v /usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample /usr/share/postgresql/$PG_MAJOR/ 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Wed, 26 Jul 2017 08:46:33 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Wed, 26 Jul 2017 08:46:33 GMT
ENV PATH=/usr/lib/postgresql/9.6/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 26 Jul 2017 08:46:34 GMT
ENV PGDATA=/var/lib/postgresql/data
# Wed, 26 Jul 2017 08:46:34 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Wed, 26 Jul 2017 08:46:34 GMT
VOLUME [/var/lib/postgresql/data]
# Mon, 31 Jul 2017 19:06:43 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Mon, 31 Jul 2017 19:06:44 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Mon, 31 Jul 2017 19:06:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 31 Jul 2017 19:06:44 GMT
EXPOSE 5432/tcp
# Mon, 31 Jul 2017 19:06:45 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:ad74af05f5a24bcf9459ae1cf7718628c2aeb6b587eb51b6eeaf639aca3e566f`  
		Last Modified: Mon, 24 Jul 2017 16:55:21 GMT  
		Size: 52.6 MB (52605632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8996b4a29b2bd5d95cf93ac41ed61c5dfe8fbbe7ac60e516a764c0c3ba4fa7f3`  
		Last Modified: Wed, 26 Jul 2017 08:51:28 GMT  
		Size: 2.1 KB (2059 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bea3311ef15bb6b069270ec8e6ebe9c8e3d613f011dd7152617cb1ba0c7aea11`  
		Last Modified: Wed, 26 Jul 2017 08:51:27 GMT  
		Size: 1.3 MB (1302813 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1b9eb0ac9c8c779f89ff7b76bcd59aba672e2f35a09106dc3f9ee92e5bab913`  
		Last Modified: Wed, 26 Jul 2017 08:51:27 GMT  
		Size: 7.1 MB (7112339 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d6d551d6af0e3986bddf0dd21e00d6884d6e58d006f2d5035208d24552c763b`  
		Last Modified: Wed, 26 Jul 2017 08:51:26 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba16377760f999a0006e1c620bf0df5531f6d55dfa7e0aa073b8245072c37b09`  
		Last Modified: Wed, 26 Jul 2017 08:51:26 GMT  
		Size: 4.5 KB (4487 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b514f6e3ef7cd0104320b6b5286c2bc1bf1949c7d9ea029db8d9ace616f7429`  
		Last Modified: Wed, 26 Jul 2017 08:51:26 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e114ac261be35c8bd85b2424b1cc149488181eb29765b59b4955d501a8f3862`  
		Last Modified: Wed, 26 Jul 2017 08:51:31 GMT  
		Size: 43.3 MB (43289083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb5c1803318ced2e9da2b84ed2a6da9e4679d51c054c9f4443d03e8bd2577971`  
		Last Modified: Wed, 26 Jul 2017 08:51:24 GMT  
		Size: 7.1 KB (7095 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2969cff5710e0ebe112740fa4228c875005ea4a2a36857bcf06177db93aa0910`  
		Last Modified: Wed, 26 Jul 2017 08:51:24 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78a73d03b014d60ea2d7e09926afa5f2f113586c36c70815a420fb2b1b16f78a`  
		Last Modified: Wed, 26 Jul 2017 08:51:24 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d38698b91d107b0b6e467a50fa32c28eb9c1cc8f86278bd4be96de044e49398a`  
		Last Modified: Mon, 31 Jul 2017 19:08:05 GMT  
		Size: 1.8 KB (1797 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efdd4c790d34edc34dd49898c565c16792a048419095681366c5e1dac51e5aa9`  
		Last Modified: Mon, 31 Jul 2017 19:08:05 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9`

```console
$ docker pull postgres@sha256:07d178f4b071971208b912f888c0375838435a06728c431f8a1ef3cc04cdee8d
```

-	Platforms:
	-	linux; amd64

### `postgres:9` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.3 MB (104326057 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:33b13ed6b80a4ec1dc5cfe68173c2baee70c4f74c4f1cdbb7ac4fa4ab5d56bc9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 24 Jul 2017 16:51:25 GMT
ADD file:a023a99f7d01868b164d63bfaf8aabc7f271659c69939c3854f041f5a3217428 in / 
# Mon, 24 Jul 2017 16:51:25 GMT
CMD ["bash"]
# Wed, 26 Jul 2017 08:44:55 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 26 Jul 2017 08:44:56 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Wed, 26 Jul 2017 08:44:56 GMT
ENV GOSU_VERSION=1.7
# Wed, 26 Jul 2017 08:45:21 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 26 Jul 2017 08:45:37 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Wed, 26 Jul 2017 08:45:37 GMT
ENV LANG=en_US.utf8
# Wed, 26 Jul 2017 08:45:38 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 26 Jul 2017 08:45:42 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Wed, 26 Jul 2017 08:45:42 GMT
ENV PG_MAJOR=9.6
# Wed, 26 Jul 2017 08:45:42 GMT
ENV PG_VERSION=9.6.3-1.pgdg80+1
# Wed, 26 Jul 2017 08:45:43 GMT
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main' $PG_MAJOR > /etc/apt/sources.list.d/pgdg.list
# Wed, 26 Jul 2017 08:46:32 GMT
RUN apt-get update 	&& apt-get install -y postgresql-common 	&& sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf 	&& apt-get install -y 		postgresql-$PG_MAJOR=$PG_VERSION 		postgresql-contrib-$PG_MAJOR=$PG_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Wed, 26 Jul 2017 08:46:32 GMT
RUN mv -v /usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample /usr/share/postgresql/$PG_MAJOR/ 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Wed, 26 Jul 2017 08:46:33 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Wed, 26 Jul 2017 08:46:33 GMT
ENV PATH=/usr/lib/postgresql/9.6/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 26 Jul 2017 08:46:34 GMT
ENV PGDATA=/var/lib/postgresql/data
# Wed, 26 Jul 2017 08:46:34 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Wed, 26 Jul 2017 08:46:34 GMT
VOLUME [/var/lib/postgresql/data]
# Mon, 31 Jul 2017 19:06:43 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Mon, 31 Jul 2017 19:06:44 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Mon, 31 Jul 2017 19:06:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 31 Jul 2017 19:06:44 GMT
EXPOSE 5432/tcp
# Mon, 31 Jul 2017 19:06:45 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:ad74af05f5a24bcf9459ae1cf7718628c2aeb6b587eb51b6eeaf639aca3e566f`  
		Last Modified: Mon, 24 Jul 2017 16:55:21 GMT  
		Size: 52.6 MB (52605632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8996b4a29b2bd5d95cf93ac41ed61c5dfe8fbbe7ac60e516a764c0c3ba4fa7f3`  
		Last Modified: Wed, 26 Jul 2017 08:51:28 GMT  
		Size: 2.1 KB (2059 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bea3311ef15bb6b069270ec8e6ebe9c8e3d613f011dd7152617cb1ba0c7aea11`  
		Last Modified: Wed, 26 Jul 2017 08:51:27 GMT  
		Size: 1.3 MB (1302813 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1b9eb0ac9c8c779f89ff7b76bcd59aba672e2f35a09106dc3f9ee92e5bab913`  
		Last Modified: Wed, 26 Jul 2017 08:51:27 GMT  
		Size: 7.1 MB (7112339 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d6d551d6af0e3986bddf0dd21e00d6884d6e58d006f2d5035208d24552c763b`  
		Last Modified: Wed, 26 Jul 2017 08:51:26 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba16377760f999a0006e1c620bf0df5531f6d55dfa7e0aa073b8245072c37b09`  
		Last Modified: Wed, 26 Jul 2017 08:51:26 GMT  
		Size: 4.5 KB (4487 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b514f6e3ef7cd0104320b6b5286c2bc1bf1949c7d9ea029db8d9ace616f7429`  
		Last Modified: Wed, 26 Jul 2017 08:51:26 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e114ac261be35c8bd85b2424b1cc149488181eb29765b59b4955d501a8f3862`  
		Last Modified: Wed, 26 Jul 2017 08:51:31 GMT  
		Size: 43.3 MB (43289083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb5c1803318ced2e9da2b84ed2a6da9e4679d51c054c9f4443d03e8bd2577971`  
		Last Modified: Wed, 26 Jul 2017 08:51:24 GMT  
		Size: 7.1 KB (7095 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2969cff5710e0ebe112740fa4228c875005ea4a2a36857bcf06177db93aa0910`  
		Last Modified: Wed, 26 Jul 2017 08:51:24 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78a73d03b014d60ea2d7e09926afa5f2f113586c36c70815a420fb2b1b16f78a`  
		Last Modified: Wed, 26 Jul 2017 08:51:24 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d38698b91d107b0b6e467a50fa32c28eb9c1cc8f86278bd4be96de044e49398a`  
		Last Modified: Mon, 31 Jul 2017 19:08:05 GMT  
		Size: 1.8 KB (1797 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efdd4c790d34edc34dd49898c565c16792a048419095681366c5e1dac51e5aa9`  
		Last Modified: Mon, 31 Jul 2017 19:08:05 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:latest`

```console
$ docker pull postgres@sha256:07d178f4b071971208b912f888c0375838435a06728c431f8a1ef3cc04cdee8d
```

-	Platforms:
	-	linux; amd64

### `postgres:latest` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.3 MB (104326057 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:33b13ed6b80a4ec1dc5cfe68173c2baee70c4f74c4f1cdbb7ac4fa4ab5d56bc9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 24 Jul 2017 16:51:25 GMT
ADD file:a023a99f7d01868b164d63bfaf8aabc7f271659c69939c3854f041f5a3217428 in / 
# Mon, 24 Jul 2017 16:51:25 GMT
CMD ["bash"]
# Wed, 26 Jul 2017 08:44:55 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 26 Jul 2017 08:44:56 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Wed, 26 Jul 2017 08:44:56 GMT
ENV GOSU_VERSION=1.7
# Wed, 26 Jul 2017 08:45:21 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 26 Jul 2017 08:45:37 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Wed, 26 Jul 2017 08:45:37 GMT
ENV LANG=en_US.utf8
# Wed, 26 Jul 2017 08:45:38 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 26 Jul 2017 08:45:42 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Wed, 26 Jul 2017 08:45:42 GMT
ENV PG_MAJOR=9.6
# Wed, 26 Jul 2017 08:45:42 GMT
ENV PG_VERSION=9.6.3-1.pgdg80+1
# Wed, 26 Jul 2017 08:45:43 GMT
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main' $PG_MAJOR > /etc/apt/sources.list.d/pgdg.list
# Wed, 26 Jul 2017 08:46:32 GMT
RUN apt-get update 	&& apt-get install -y postgresql-common 	&& sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf 	&& apt-get install -y 		postgresql-$PG_MAJOR=$PG_VERSION 		postgresql-contrib-$PG_MAJOR=$PG_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Wed, 26 Jul 2017 08:46:32 GMT
RUN mv -v /usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample /usr/share/postgresql/$PG_MAJOR/ 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Wed, 26 Jul 2017 08:46:33 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Wed, 26 Jul 2017 08:46:33 GMT
ENV PATH=/usr/lib/postgresql/9.6/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 26 Jul 2017 08:46:34 GMT
ENV PGDATA=/var/lib/postgresql/data
# Wed, 26 Jul 2017 08:46:34 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Wed, 26 Jul 2017 08:46:34 GMT
VOLUME [/var/lib/postgresql/data]
# Mon, 31 Jul 2017 19:06:43 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Mon, 31 Jul 2017 19:06:44 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Mon, 31 Jul 2017 19:06:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 31 Jul 2017 19:06:44 GMT
EXPOSE 5432/tcp
# Mon, 31 Jul 2017 19:06:45 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:ad74af05f5a24bcf9459ae1cf7718628c2aeb6b587eb51b6eeaf639aca3e566f`  
		Last Modified: Mon, 24 Jul 2017 16:55:21 GMT  
		Size: 52.6 MB (52605632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8996b4a29b2bd5d95cf93ac41ed61c5dfe8fbbe7ac60e516a764c0c3ba4fa7f3`  
		Last Modified: Wed, 26 Jul 2017 08:51:28 GMT  
		Size: 2.1 KB (2059 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bea3311ef15bb6b069270ec8e6ebe9c8e3d613f011dd7152617cb1ba0c7aea11`  
		Last Modified: Wed, 26 Jul 2017 08:51:27 GMT  
		Size: 1.3 MB (1302813 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1b9eb0ac9c8c779f89ff7b76bcd59aba672e2f35a09106dc3f9ee92e5bab913`  
		Last Modified: Wed, 26 Jul 2017 08:51:27 GMT  
		Size: 7.1 MB (7112339 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d6d551d6af0e3986bddf0dd21e00d6884d6e58d006f2d5035208d24552c763b`  
		Last Modified: Wed, 26 Jul 2017 08:51:26 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba16377760f999a0006e1c620bf0df5531f6d55dfa7e0aa073b8245072c37b09`  
		Last Modified: Wed, 26 Jul 2017 08:51:26 GMT  
		Size: 4.5 KB (4487 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b514f6e3ef7cd0104320b6b5286c2bc1bf1949c7d9ea029db8d9ace616f7429`  
		Last Modified: Wed, 26 Jul 2017 08:51:26 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e114ac261be35c8bd85b2424b1cc149488181eb29765b59b4955d501a8f3862`  
		Last Modified: Wed, 26 Jul 2017 08:51:31 GMT  
		Size: 43.3 MB (43289083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb5c1803318ced2e9da2b84ed2a6da9e4679d51c054c9f4443d03e8bd2577971`  
		Last Modified: Wed, 26 Jul 2017 08:51:24 GMT  
		Size: 7.1 KB (7095 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2969cff5710e0ebe112740fa4228c875005ea4a2a36857bcf06177db93aa0910`  
		Last Modified: Wed, 26 Jul 2017 08:51:24 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78a73d03b014d60ea2d7e09926afa5f2f113586c36c70815a420fb2b1b16f78a`  
		Last Modified: Wed, 26 Jul 2017 08:51:24 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d38698b91d107b0b6e467a50fa32c28eb9c1cc8f86278bd4be96de044e49398a`  
		Last Modified: Mon, 31 Jul 2017 19:08:05 GMT  
		Size: 1.8 KB (1797 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efdd4c790d34edc34dd49898c565c16792a048419095681366c5e1dac51e5aa9`  
		Last Modified: Mon, 31 Jul 2017 19:08:05 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.6.4-alpine`

**does not exist** (yet?)

## `postgres:9.6-alpine`

```console
$ docker pull postgres@sha256:376b5b1ed6b38e8bb77bce920f5c7442e4fda31f0a95f2be6bc43bc973eae400
```

-	Platforms:
	-	linux; amd64

### `postgres:9.6-alpine` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.7 MB (14665870 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b2462df88b9ca33b6a603dcf2491458ae4985ef1e12a84ec02629939526cd212`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Tue, 27 Jun 2017 18:39:21 GMT
ADD file:9d67752278c0e5a1298cd2d6603ebaaab2aa342e27ddf191ee0fde138f82698c in / 
# Tue, 27 Jun 2017 18:39:45 GMT
CMD ["/bin/sh"]
# Wed, 28 Jun 2017 21:37:32 GMT
RUN set -ex; 	postgresHome="$(getent passwd postgres)"; 	postgresHome="$(echo "$postgresHome" | cut -d: -f6)"; 	[ "$postgresHome" = '/var/lib/postgresql' ]; 	mkdir -p "$postgresHome"; 	chown -R postgres:postgres "$postgresHome"
# Wed, 28 Jun 2017 21:37:33 GMT
ENV LANG=en_US.utf8
# Wed, 28 Jun 2017 21:37:34 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 28 Jun 2017 21:37:35 GMT
ENV PG_MAJOR=9.6
# Wed, 28 Jun 2017 21:37:36 GMT
ENV PG_VERSION=9.6.3
# Wed, 28 Jun 2017 21:37:37 GMT
ENV PG_SHA256=1645b3736901f6d854e695a937389e68ff2066ce0cde9d73919d6ab7c995b9c6
# Fri, 14 Jul 2017 22:57:55 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl 		perl-ipc-run 		util-linux-dev 		zlib-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& wget -O config/config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Fri, 14 Jul 2017 22:57:56 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Fri, 14 Jul 2017 22:57:57 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 14 Jul 2017 22:57:58 GMT
ENV PATH=/usr/lib/postgresql/9.6/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 14 Jul 2017 22:57:58 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 14 Jul 2017 22:57:59 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 14 Jul 2017 22:58:00 GMT
VOLUME [/var/lib/postgresql/data]
# Mon, 31 Jul 2017 19:06:48 GMT
COPY file:d5038a27fbcfa2f7c3a5e92ffdbfda1676a7a65ecb52a9b377a6041a59e1c1d7 in /usr/local/bin/ 
# Mon, 31 Jul 2017 19:06:49 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Mon, 31 Jul 2017 19:06:49 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 31 Jul 2017 19:06:50 GMT
EXPOSE 5432/tcp
# Mon, 31 Jul 2017 19:06:50 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:019300c8a437a2d60248f27c206795930626dfe7ddc0323d734143bd5eb131a6`  
		Last Modified: Tue, 27 Jun 2017 18:48:47 GMT  
		Size: 2.0 MB (1970271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b9e338691a687b0c350212a5a1f42c7547f1a5dfd9e6d98323c120128db5303`  
		Last Modified: Fri, 30 Jun 2017 00:16:31 GMT  
		Size: 141.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d376e6c136f7de96c77c423f7ce1f4c82a17b782a33febc67f6f021abebf26f2`  
		Last Modified: Fri, 30 Jun 2017 00:16:30 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70311e6e9515aee11be627463ccdd28a7157fe10e19ecdfb36b0cd9f3b94565d`  
		Last Modified: Fri, 14 Jul 2017 23:09:16 GMT  
		Size: 12.7 MB (12686067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a60d0990601d4ccc94b2ea37876f0742e01c204f269faf3d7d00c699b6f02856`  
		Last Modified: Fri, 14 Jul 2017 23:09:15 GMT  
		Size: 7.1 KB (7059 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21872486b53ee8f8dbe59a7e87f948f876dddcf00f437b1dad887e0194fea613`  
		Last Modified: Fri, 14 Jul 2017 23:09:13 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8daecd252ec64e60002904151327308db92f0a7fa3e870970bb96602ae7fc3b`  
		Last Modified: Fri, 14 Jul 2017 23:09:16 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ff00c2b0eec13691ce5d1e885c7fc65e81da05b0226ed6261a1bb15385422ab`  
		Last Modified: Mon, 31 Jul 2017 19:08:31 GMT  
		Size: 1.8 KB (1788 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afadcf312cc7a09a9fe12134f8c4ca485603044465572d39d086617843d8c5e3`  
		Last Modified: Mon, 31 Jul 2017 19:08:31 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9-alpine`

```console
$ docker pull postgres@sha256:376b5b1ed6b38e8bb77bce920f5c7442e4fda31f0a95f2be6bc43bc973eae400
```

-	Platforms:
	-	linux; amd64

### `postgres:9-alpine` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.7 MB (14665870 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b2462df88b9ca33b6a603dcf2491458ae4985ef1e12a84ec02629939526cd212`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Tue, 27 Jun 2017 18:39:21 GMT
ADD file:9d67752278c0e5a1298cd2d6603ebaaab2aa342e27ddf191ee0fde138f82698c in / 
# Tue, 27 Jun 2017 18:39:45 GMT
CMD ["/bin/sh"]
# Wed, 28 Jun 2017 21:37:32 GMT
RUN set -ex; 	postgresHome="$(getent passwd postgres)"; 	postgresHome="$(echo "$postgresHome" | cut -d: -f6)"; 	[ "$postgresHome" = '/var/lib/postgresql' ]; 	mkdir -p "$postgresHome"; 	chown -R postgres:postgres "$postgresHome"
# Wed, 28 Jun 2017 21:37:33 GMT
ENV LANG=en_US.utf8
# Wed, 28 Jun 2017 21:37:34 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 28 Jun 2017 21:37:35 GMT
ENV PG_MAJOR=9.6
# Wed, 28 Jun 2017 21:37:36 GMT
ENV PG_VERSION=9.6.3
# Wed, 28 Jun 2017 21:37:37 GMT
ENV PG_SHA256=1645b3736901f6d854e695a937389e68ff2066ce0cde9d73919d6ab7c995b9c6
# Fri, 14 Jul 2017 22:57:55 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl 		perl-ipc-run 		util-linux-dev 		zlib-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& wget -O config/config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Fri, 14 Jul 2017 22:57:56 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Fri, 14 Jul 2017 22:57:57 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 14 Jul 2017 22:57:58 GMT
ENV PATH=/usr/lib/postgresql/9.6/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 14 Jul 2017 22:57:58 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 14 Jul 2017 22:57:59 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 14 Jul 2017 22:58:00 GMT
VOLUME [/var/lib/postgresql/data]
# Mon, 31 Jul 2017 19:06:48 GMT
COPY file:d5038a27fbcfa2f7c3a5e92ffdbfda1676a7a65ecb52a9b377a6041a59e1c1d7 in /usr/local/bin/ 
# Mon, 31 Jul 2017 19:06:49 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Mon, 31 Jul 2017 19:06:49 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 31 Jul 2017 19:06:50 GMT
EXPOSE 5432/tcp
# Mon, 31 Jul 2017 19:06:50 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:019300c8a437a2d60248f27c206795930626dfe7ddc0323d734143bd5eb131a6`  
		Last Modified: Tue, 27 Jun 2017 18:48:47 GMT  
		Size: 2.0 MB (1970271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b9e338691a687b0c350212a5a1f42c7547f1a5dfd9e6d98323c120128db5303`  
		Last Modified: Fri, 30 Jun 2017 00:16:31 GMT  
		Size: 141.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d376e6c136f7de96c77c423f7ce1f4c82a17b782a33febc67f6f021abebf26f2`  
		Last Modified: Fri, 30 Jun 2017 00:16:30 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70311e6e9515aee11be627463ccdd28a7157fe10e19ecdfb36b0cd9f3b94565d`  
		Last Modified: Fri, 14 Jul 2017 23:09:16 GMT  
		Size: 12.7 MB (12686067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a60d0990601d4ccc94b2ea37876f0742e01c204f269faf3d7d00c699b6f02856`  
		Last Modified: Fri, 14 Jul 2017 23:09:15 GMT  
		Size: 7.1 KB (7059 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21872486b53ee8f8dbe59a7e87f948f876dddcf00f437b1dad887e0194fea613`  
		Last Modified: Fri, 14 Jul 2017 23:09:13 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8daecd252ec64e60002904151327308db92f0a7fa3e870970bb96602ae7fc3b`  
		Last Modified: Fri, 14 Jul 2017 23:09:16 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ff00c2b0eec13691ce5d1e885c7fc65e81da05b0226ed6261a1bb15385422ab`  
		Last Modified: Mon, 31 Jul 2017 19:08:31 GMT  
		Size: 1.8 KB (1788 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afadcf312cc7a09a9fe12134f8c4ca485603044465572d39d086617843d8c5e3`  
		Last Modified: Mon, 31 Jul 2017 19:08:31 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:alpine`

```console
$ docker pull postgres@sha256:376b5b1ed6b38e8bb77bce920f5c7442e4fda31f0a95f2be6bc43bc973eae400
```

-	Platforms:
	-	linux; amd64

### `postgres:alpine` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.7 MB (14665870 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b2462df88b9ca33b6a603dcf2491458ae4985ef1e12a84ec02629939526cd212`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Tue, 27 Jun 2017 18:39:21 GMT
ADD file:9d67752278c0e5a1298cd2d6603ebaaab2aa342e27ddf191ee0fde138f82698c in / 
# Tue, 27 Jun 2017 18:39:45 GMT
CMD ["/bin/sh"]
# Wed, 28 Jun 2017 21:37:32 GMT
RUN set -ex; 	postgresHome="$(getent passwd postgres)"; 	postgresHome="$(echo "$postgresHome" | cut -d: -f6)"; 	[ "$postgresHome" = '/var/lib/postgresql' ]; 	mkdir -p "$postgresHome"; 	chown -R postgres:postgres "$postgresHome"
# Wed, 28 Jun 2017 21:37:33 GMT
ENV LANG=en_US.utf8
# Wed, 28 Jun 2017 21:37:34 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 28 Jun 2017 21:37:35 GMT
ENV PG_MAJOR=9.6
# Wed, 28 Jun 2017 21:37:36 GMT
ENV PG_VERSION=9.6.3
# Wed, 28 Jun 2017 21:37:37 GMT
ENV PG_SHA256=1645b3736901f6d854e695a937389e68ff2066ce0cde9d73919d6ab7c995b9c6
# Fri, 14 Jul 2017 22:57:55 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl 		perl-ipc-run 		util-linux-dev 		zlib-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& wget -O config/config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Fri, 14 Jul 2017 22:57:56 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Fri, 14 Jul 2017 22:57:57 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 14 Jul 2017 22:57:58 GMT
ENV PATH=/usr/lib/postgresql/9.6/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 14 Jul 2017 22:57:58 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 14 Jul 2017 22:57:59 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 14 Jul 2017 22:58:00 GMT
VOLUME [/var/lib/postgresql/data]
# Mon, 31 Jul 2017 19:06:48 GMT
COPY file:d5038a27fbcfa2f7c3a5e92ffdbfda1676a7a65ecb52a9b377a6041a59e1c1d7 in /usr/local/bin/ 
# Mon, 31 Jul 2017 19:06:49 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Mon, 31 Jul 2017 19:06:49 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 31 Jul 2017 19:06:50 GMT
EXPOSE 5432/tcp
# Mon, 31 Jul 2017 19:06:50 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:019300c8a437a2d60248f27c206795930626dfe7ddc0323d734143bd5eb131a6`  
		Last Modified: Tue, 27 Jun 2017 18:48:47 GMT  
		Size: 2.0 MB (1970271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b9e338691a687b0c350212a5a1f42c7547f1a5dfd9e6d98323c120128db5303`  
		Last Modified: Fri, 30 Jun 2017 00:16:31 GMT  
		Size: 141.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d376e6c136f7de96c77c423f7ce1f4c82a17b782a33febc67f6f021abebf26f2`  
		Last Modified: Fri, 30 Jun 2017 00:16:30 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70311e6e9515aee11be627463ccdd28a7157fe10e19ecdfb36b0cd9f3b94565d`  
		Last Modified: Fri, 14 Jul 2017 23:09:16 GMT  
		Size: 12.7 MB (12686067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a60d0990601d4ccc94b2ea37876f0742e01c204f269faf3d7d00c699b6f02856`  
		Last Modified: Fri, 14 Jul 2017 23:09:15 GMT  
		Size: 7.1 KB (7059 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21872486b53ee8f8dbe59a7e87f948f876dddcf00f437b1dad887e0194fea613`  
		Last Modified: Fri, 14 Jul 2017 23:09:13 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8daecd252ec64e60002904151327308db92f0a7fa3e870970bb96602ae7fc3b`  
		Last Modified: Fri, 14 Jul 2017 23:09:16 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ff00c2b0eec13691ce5d1e885c7fc65e81da05b0226ed6261a1bb15385422ab`  
		Last Modified: Mon, 31 Jul 2017 19:08:31 GMT  
		Size: 1.8 KB (1788 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afadcf312cc7a09a9fe12134f8c4ca485603044465572d39d086617843d8c5e3`  
		Last Modified: Mon, 31 Jul 2017 19:08:31 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.5.8`

**does not exist** (yet?)

## `postgres:9.5`

```console
$ docker pull postgres@sha256:ed7d1371f28413db3c6076f02adbe3c5508fc17db3602f7dcfd222f3c10d3407
```

-	Platforms:
	-	linux; amd64

### `postgres:9.5` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **103.8 MB (103827612 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a5fb977685db713d0b3dd5c4688f40c5886bc426e58043f5b8b65e401b668414`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 24 Jul 2017 16:51:25 GMT
ADD file:a023a99f7d01868b164d63bfaf8aabc7f271659c69939c3854f041f5a3217428 in / 
# Mon, 24 Jul 2017 16:51:25 GMT
CMD ["bash"]
# Wed, 26 Jul 2017 08:44:55 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 26 Jul 2017 08:44:56 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Wed, 26 Jul 2017 08:44:56 GMT
ENV GOSU_VERSION=1.7
# Wed, 26 Jul 2017 08:45:21 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 26 Jul 2017 08:45:37 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Wed, 26 Jul 2017 08:45:37 GMT
ENV LANG=en_US.utf8
# Wed, 26 Jul 2017 08:45:38 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 26 Jul 2017 08:45:42 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Wed, 26 Jul 2017 08:46:39 GMT
ENV PG_MAJOR=9.5
# Wed, 26 Jul 2017 08:46:39 GMT
ENV PG_VERSION=9.5.7-1.pgdg80+1
# Wed, 26 Jul 2017 08:46:40 GMT
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main' $PG_MAJOR > /etc/apt/sources.list.d/pgdg.list
# Wed, 26 Jul 2017 08:47:26 GMT
RUN apt-get update 	&& apt-get install -y postgresql-common 	&& sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf 	&& apt-get install -y 		postgresql-$PG_MAJOR=$PG_VERSION 		postgresql-contrib-$PG_MAJOR=$PG_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Wed, 26 Jul 2017 08:47:27 GMT
RUN mv -v /usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample /usr/share/postgresql/$PG_MAJOR/ 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Wed, 26 Jul 2017 08:47:28 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Wed, 26 Jul 2017 08:47:28 GMT
ENV PATH=/usr/lib/postgresql/9.5/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 26 Jul 2017 08:47:28 GMT
ENV PGDATA=/var/lib/postgresql/data
# Wed, 26 Jul 2017 08:47:29 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Wed, 26 Jul 2017 08:47:29 GMT
VOLUME [/var/lib/postgresql/data]
# Mon, 31 Jul 2017 19:06:53 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Mon, 31 Jul 2017 19:06:54 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Mon, 31 Jul 2017 19:06:54 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 31 Jul 2017 19:06:54 GMT
EXPOSE 5432/tcp
# Mon, 31 Jul 2017 19:06:55 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:ad74af05f5a24bcf9459ae1cf7718628c2aeb6b587eb51b6eeaf639aca3e566f`  
		Last Modified: Mon, 24 Jul 2017 16:55:21 GMT  
		Size: 52.6 MB (52605632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8996b4a29b2bd5d95cf93ac41ed61c5dfe8fbbe7ac60e516a764c0c3ba4fa7f3`  
		Last Modified: Wed, 26 Jul 2017 08:51:28 GMT  
		Size: 2.1 KB (2059 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bea3311ef15bb6b069270ec8e6ebe9c8e3d613f011dd7152617cb1ba0c7aea11`  
		Last Modified: Wed, 26 Jul 2017 08:51:27 GMT  
		Size: 1.3 MB (1302813 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1b9eb0ac9c8c779f89ff7b76bcd59aba672e2f35a09106dc3f9ee92e5bab913`  
		Last Modified: Wed, 26 Jul 2017 08:51:27 GMT  
		Size: 7.1 MB (7112339 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d6d551d6af0e3986bddf0dd21e00d6884d6e58d006f2d5035208d24552c763b`  
		Last Modified: Wed, 26 Jul 2017 08:51:26 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba16377760f999a0006e1c620bf0df5531f6d55dfa7e0aa073b8245072c37b09`  
		Last Modified: Wed, 26 Jul 2017 08:51:26 GMT  
		Size: 4.5 KB (4487 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2528c78440a3d4394019802fc3d5c50b37aae62a1efe94936e191dc7dd9e1ff6`  
		Last Modified: Wed, 26 Jul 2017 08:52:20 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4d1334d2c301d2e506b5c889fcfb8b0dbf5489d44886f4c3f164f387ef8793d`  
		Last Modified: Wed, 26 Jul 2017 08:52:26 GMT  
		Size: 42.8 MB (42790910 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80dfd67bee1c78fa9aa340d6d7c00fad39fc1c2579718f81f977581fd6c60a20`  
		Last Modified: Wed, 26 Jul 2017 08:52:19 GMT  
		Size: 6.8 KB (6820 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:545d850abe3277e457feca5a009c4a49cd38facd7dd345f5feb34d1a313fb0a5`  
		Last Modified: Wed, 26 Jul 2017 08:52:18 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abf43ca9cc7b7632efb143be453ad02fea2fb0287bc5d9821f1737757f0ad0a8`  
		Last Modified: Wed, 26 Jul 2017 08:52:18 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5154a685697d1b11e63d2b1ebdb533ec612d35335b8a4b2314870a25135b0da`  
		Last Modified: Mon, 31 Jul 2017 19:08:56 GMT  
		Size: 1.8 KB (1798 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d83600aa686af0b4848410a06fc9e2ba127e8a414aad7cce715d0955a1f5625c`  
		Last Modified: Mon, 31 Jul 2017 19:08:56 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.5.8-alpine`

**does not exist** (yet?)

## `postgres:9.5-alpine`

```console
$ docker pull postgres@sha256:fd63bb8325140db2ba8329121ac8d684d12945e26d300b7a4756ce9df9ca79da
```

-	Platforms:
	-	linux; amd64

### `postgres:9.5-alpine` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.4 MB (14376095 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b578144f006c1207f7bd1de07636d4d5176c43c44d28fe97062a31b26b6f7c1d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Tue, 27 Jun 2017 18:39:21 GMT
ADD file:9d67752278c0e5a1298cd2d6603ebaaab2aa342e27ddf191ee0fde138f82698c in / 
# Tue, 27 Jun 2017 18:39:45 GMT
CMD ["/bin/sh"]
# Wed, 28 Jun 2017 21:37:32 GMT
RUN set -ex; 	postgresHome="$(getent passwd postgres)"; 	postgresHome="$(echo "$postgresHome" | cut -d: -f6)"; 	[ "$postgresHome" = '/var/lib/postgresql' ]; 	mkdir -p "$postgresHome"; 	chown -R postgres:postgres "$postgresHome"
# Wed, 28 Jun 2017 21:37:33 GMT
ENV LANG=en_US.utf8
# Wed, 28 Jun 2017 21:37:34 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 28 Jun 2017 21:48:33 GMT
ENV PG_MAJOR=9.5
# Wed, 28 Jun 2017 21:48:34 GMT
ENV PG_VERSION=9.5.7
# Wed, 28 Jun 2017 21:48:35 GMT
ENV PG_SHA256=8b1e936f82109325decc0f5575e846b93fb4fd384e8c4bde83ff5e7f87fc6cad
# Fri, 14 Jul 2017 23:00:17 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl 		perl-ipc-run 		util-linux-dev 		zlib-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& wget -O config/config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Fri, 14 Jul 2017 23:00:18 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Fri, 14 Jul 2017 23:00:19 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 14 Jul 2017 23:00:19 GMT
ENV PATH=/usr/lib/postgresql/9.5/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 14 Jul 2017 23:00:20 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 14 Jul 2017 23:00:21 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 14 Jul 2017 23:00:21 GMT
VOLUME [/var/lib/postgresql/data]
# Mon, 31 Jul 2017 19:06:58 GMT
COPY file:d5038a27fbcfa2f7c3a5e92ffdbfda1676a7a65ecb52a9b377a6041a59e1c1d7 in /usr/local/bin/ 
# Mon, 31 Jul 2017 19:06:59 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Mon, 31 Jul 2017 19:06:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 31 Jul 2017 19:06:59 GMT
EXPOSE 5432/tcp
# Mon, 31 Jul 2017 19:07:00 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:019300c8a437a2d60248f27c206795930626dfe7ddc0323d734143bd5eb131a6`  
		Last Modified: Tue, 27 Jun 2017 18:48:47 GMT  
		Size: 2.0 MB (1970271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b9e338691a687b0c350212a5a1f42c7547f1a5dfd9e6d98323c120128db5303`  
		Last Modified: Fri, 30 Jun 2017 00:16:31 GMT  
		Size: 141.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d376e6c136f7de96c77c423f7ce1f4c82a17b782a33febc67f6f021abebf26f2`  
		Last Modified: Fri, 30 Jun 2017 00:16:30 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:417692adc5b46e5ffb2af3d8c892e639a5e68fae39c074c8040d4c1b7f5af2f7`  
		Last Modified: Fri, 14 Jul 2017 23:10:21 GMT  
		Size: 12.4 MB (12396564 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6cbdf96ae59391611333701850a0f8d1308a2ef660c45427a9b35ac81cc0537`  
		Last Modified: Fri, 14 Jul 2017 23:10:19 GMT  
		Size: 6.8 KB (6788 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51d80e27a129e705acc3ba836bc09915bb78fd010c53cdfb9fc03315e8104c32`  
		Last Modified: Fri, 14 Jul 2017 23:10:19 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2006e95b81b92b3c1cfd5703c3b30e9414d630f56a4508b32ab1000051028038`  
		Last Modified: Fri, 14 Jul 2017 23:10:19 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc2623bdd025f7015970ba17970a9e7b23f0bec589b1b7e9e4727c53a092b512`  
		Last Modified: Mon, 31 Jul 2017 19:09:11 GMT  
		Size: 1.8 KB (1788 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ca47bf67ba8f66e1ec28f150f6f9568596878277c6f550d84a1aa3bc090409b`  
		Last Modified: Mon, 31 Jul 2017 19:09:10 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.4.13`

**does not exist** (yet?)

## `postgres:9.4`

```console
$ docker pull postgres@sha256:006d4b46491468b08c6f95270f229184075f6ddd656c010e518b6a78e2dc813e
```

-	Platforms:
	-	linux; amd64

### `postgres:9.4` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **103.5 MB (103501933 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2741e54c4cb476518a3be68ff641646bb4ff2e809f7cb2117494498ab78bfb46`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 24 Jul 2017 16:51:25 GMT
ADD file:a023a99f7d01868b164d63bfaf8aabc7f271659c69939c3854f041f5a3217428 in / 
# Mon, 24 Jul 2017 16:51:25 GMT
CMD ["bash"]
# Wed, 26 Jul 2017 08:44:55 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 26 Jul 2017 08:44:56 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Wed, 26 Jul 2017 08:44:56 GMT
ENV GOSU_VERSION=1.7
# Wed, 26 Jul 2017 08:45:21 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 26 Jul 2017 08:45:37 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Wed, 26 Jul 2017 08:45:37 GMT
ENV LANG=en_US.utf8
# Wed, 26 Jul 2017 08:45:38 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 26 Jul 2017 08:45:42 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Wed, 26 Jul 2017 08:47:33 GMT
ENV PG_MAJOR=9.4
# Wed, 26 Jul 2017 08:47:34 GMT
ENV PG_VERSION=9.4.12-1.pgdg80+1
# Wed, 26 Jul 2017 08:47:34 GMT
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main' $PG_MAJOR > /etc/apt/sources.list.d/pgdg.list
# Wed, 26 Jul 2017 08:48:20 GMT
RUN apt-get update 	&& apt-get install -y postgresql-common 	&& sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf 	&& apt-get install -y 		postgresql-$PG_MAJOR=$PG_VERSION 		postgresql-contrib-$PG_MAJOR=$PG_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Wed, 26 Jul 2017 08:48:21 GMT
RUN mv -v /usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample /usr/share/postgresql/$PG_MAJOR/ 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Wed, 26 Jul 2017 08:48:22 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Wed, 26 Jul 2017 08:48:22 GMT
ENV PATH=/usr/lib/postgresql/9.4/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 26 Jul 2017 08:48:22 GMT
ENV PGDATA=/var/lib/postgresql/data
# Wed, 26 Jul 2017 08:48:23 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Wed, 26 Jul 2017 08:48:23 GMT
VOLUME [/var/lib/postgresql/data]
# Mon, 31 Jul 2017 19:07:03 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Mon, 31 Jul 2017 19:07:04 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Mon, 31 Jul 2017 19:07:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 31 Jul 2017 19:07:04 GMT
EXPOSE 5432/tcp
# Mon, 31 Jul 2017 19:07:04 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:ad74af05f5a24bcf9459ae1cf7718628c2aeb6b587eb51b6eeaf639aca3e566f`  
		Last Modified: Mon, 24 Jul 2017 16:55:21 GMT  
		Size: 52.6 MB (52605632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8996b4a29b2bd5d95cf93ac41ed61c5dfe8fbbe7ac60e516a764c0c3ba4fa7f3`  
		Last Modified: Wed, 26 Jul 2017 08:51:28 GMT  
		Size: 2.1 KB (2059 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bea3311ef15bb6b069270ec8e6ebe9c8e3d613f011dd7152617cb1ba0c7aea11`  
		Last Modified: Wed, 26 Jul 2017 08:51:27 GMT  
		Size: 1.3 MB (1302813 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1b9eb0ac9c8c779f89ff7b76bcd59aba672e2f35a09106dc3f9ee92e5bab913`  
		Last Modified: Wed, 26 Jul 2017 08:51:27 GMT  
		Size: 7.1 MB (7112339 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d6d551d6af0e3986bddf0dd21e00d6884d6e58d006f2d5035208d24552c763b`  
		Last Modified: Wed, 26 Jul 2017 08:51:26 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba16377760f999a0006e1c620bf0df5531f6d55dfa7e0aa073b8245072c37b09`  
		Last Modified: Wed, 26 Jul 2017 08:51:26 GMT  
		Size: 4.5 KB (4487 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a90405ed879591bab5a2e386821c8634607b503f71beb81a1e51b365a04eff2`  
		Last Modified: Wed, 26 Jul 2017 08:52:51 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c1c3bd61f6fcbd963d3106948028a05913397fa4a840feba2ece0f41d7a18c6`  
		Last Modified: Wed, 26 Jul 2017 08:52:58 GMT  
		Size: 42.5 MB (42465374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66919e7bc2a75b2d82d73224ff79316a74a7c0bcba4a89b26a418137db57ef83`  
		Last Modified: Wed, 26 Jul 2017 08:52:49 GMT  
		Size: 6.7 KB (6677 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ae01177d02aba2ad40a7865da87a2f07277f04e702239fb6ddfcae5c1d573ed`  
		Last Modified: Wed, 26 Jul 2017 08:52:50 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbae88857f99fc510762a40288907b6c7dcf4bcd1ae5e4bd659784e4e2e8f30e`  
		Last Modified: Wed, 26 Jul 2017 08:52:49 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4258a8e44c4c16be1bf73dc8a0eb913550cdf476fd1ae8f6f68df5540858e003`  
		Last Modified: Mon, 31 Jul 2017 19:09:25 GMT  
		Size: 1.8 KB (1799 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cf1d9cc21b6ef8b5ecca9dd7464ca2399a4f1a2a522bd2c52de667474326728`  
		Last Modified: Mon, 31 Jul 2017 19:09:24 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.4.13-alpine`

**does not exist** (yet?)

## `postgres:9.4-alpine`

```console
$ docker pull postgres@sha256:3a27db02923c9c5ed6d3b38688b45354f3a9243e2bd7ed110616076c286618bd
```

-	Platforms:
	-	linux; amd64

### `postgres:9.4-alpine` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.2 MB (14244051 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0b3d399414f26f38456950a1b2baf932f24e237061f552d2f158d4403c1ea300`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Tue, 27 Jun 2017 18:39:21 GMT
ADD file:9d67752278c0e5a1298cd2d6603ebaaab2aa342e27ddf191ee0fde138f82698c in / 
# Tue, 27 Jun 2017 18:39:45 GMT
CMD ["/bin/sh"]
# Wed, 28 Jun 2017 21:37:32 GMT
RUN set -ex; 	postgresHome="$(getent passwd postgres)"; 	postgresHome="$(echo "$postgresHome" | cut -d: -f6)"; 	[ "$postgresHome" = '/var/lib/postgresql' ]; 	mkdir -p "$postgresHome"; 	chown -R postgres:postgres "$postgresHome"
# Wed, 28 Jun 2017 21:37:33 GMT
ENV LANG=en_US.utf8
# Wed, 28 Jun 2017 21:37:34 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 28 Jun 2017 21:45:57 GMT
ENV PG_MAJOR=9.4
# Wed, 28 Jun 2017 21:45:58 GMT
ENV PG_VERSION=9.4.12
# Wed, 28 Jun 2017 21:45:59 GMT
ENV PG_SHA256=fca055481875d1c49e31c28443f56472a1474b3fbe25b7ae64440c6118f82e64
# Fri, 14 Jul 2017 23:02:31 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl 		perl-ipc-run 		util-linux-dev 		zlib-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& wget -O config/config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Fri, 14 Jul 2017 23:02:32 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Fri, 14 Jul 2017 23:02:33 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 14 Jul 2017 23:02:33 GMT
ENV PATH=/usr/lib/postgresql/9.4/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 14 Jul 2017 23:02:34 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 14 Jul 2017 23:02:35 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 14 Jul 2017 23:02:35 GMT
VOLUME [/var/lib/postgresql/data]
# Mon, 31 Jul 2017 19:07:08 GMT
COPY file:d5038a27fbcfa2f7c3a5e92ffdbfda1676a7a65ecb52a9b377a6041a59e1c1d7 in /usr/local/bin/ 
# Mon, 31 Jul 2017 19:07:09 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Mon, 31 Jul 2017 19:07:09 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 31 Jul 2017 19:07:09 GMT
EXPOSE 5432/tcp
# Mon, 31 Jul 2017 19:07:09 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:019300c8a437a2d60248f27c206795930626dfe7ddc0323d734143bd5eb131a6`  
		Last Modified: Tue, 27 Jun 2017 18:48:47 GMT  
		Size: 2.0 MB (1970271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b9e338691a687b0c350212a5a1f42c7547f1a5dfd9e6d98323c120128db5303`  
		Last Modified: Fri, 30 Jun 2017 00:16:31 GMT  
		Size: 141.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d376e6c136f7de96c77c423f7ce1f4c82a17b782a33febc67f6f021abebf26f2`  
		Last Modified: Fri, 30 Jun 2017 00:16:30 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1bea0bc24cb168162e30229f6299a54ac7c3add0ab9234ceab493c7fe36c3c4`  
		Last Modified: Fri, 14 Jul 2017 23:11:08 GMT  
		Size: 12.3 MB (12264655 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8529f8e43281f21666d90c19274e614ac271eba12eaf367fe9063050d120c55`  
		Last Modified: Fri, 14 Jul 2017 23:11:09 GMT  
		Size: 6.6 KB (6647 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0eb9916c27fc11743702814803dc7ea6b442a052e0f135069377e2482e6048a9`  
		Last Modified: Fri, 14 Jul 2017 23:11:06 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b4fbc8fb2cc8bb54d6bec0e1f914a0be4b4eb37acdeddd7068cb706821fb25d`  
		Last Modified: Fri, 14 Jul 2017 23:11:06 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:adb5ffebe137f6efb4cdcd6628efb75a425ce0b08cf09197726ea91490880b32`  
		Last Modified: Mon, 31 Jul 2017 19:09:40 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3902c4bd8070c81c7295e30513060fe4c9ac46cdb4f0cec38fa645227f29b25b`  
		Last Modified: Mon, 31 Jul 2017 19:09:40 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.3.18`

**does not exist** (yet?)

## `postgres:9.3`

```console
$ docker pull postgres@sha256:b2e2cad5575da4d693c4534880cd2ae54f61274b9f5431df40d85c982c5681f7
```

-	Platforms:
	-	linux; amd64

### `postgres:9.3` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **103.1 MB (103139153 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fc7d34ced4a4a5bcb47d150e43893664cc0f12ecdce6b98551eaee6111b1ccb2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 24 Jul 2017 16:51:25 GMT
ADD file:a023a99f7d01868b164d63bfaf8aabc7f271659c69939c3854f041f5a3217428 in / 
# Mon, 24 Jul 2017 16:51:25 GMT
CMD ["bash"]
# Wed, 26 Jul 2017 08:44:55 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 26 Jul 2017 08:44:56 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Wed, 26 Jul 2017 08:44:56 GMT
ENV GOSU_VERSION=1.7
# Wed, 26 Jul 2017 08:45:21 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 26 Jul 2017 08:45:37 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Wed, 26 Jul 2017 08:45:37 GMT
ENV LANG=en_US.utf8
# Wed, 26 Jul 2017 08:45:38 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 26 Jul 2017 08:45:42 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Wed, 26 Jul 2017 08:48:28 GMT
ENV PG_MAJOR=9.3
# Wed, 26 Jul 2017 08:48:28 GMT
ENV PG_VERSION=9.3.17-1.pgdg80+1
# Wed, 26 Jul 2017 08:48:29 GMT
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main' $PG_MAJOR > /etc/apt/sources.list.d/pgdg.list
# Wed, 26 Jul 2017 08:49:24 GMT
RUN apt-get update 	&& apt-get install -y postgresql-common 	&& sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf 	&& apt-get install -y 		postgresql-$PG_MAJOR=$PG_VERSION 		postgresql-contrib-$PG_MAJOR=$PG_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Wed, 26 Jul 2017 08:49:25 GMT
RUN mv -v /usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample /usr/share/postgresql/$PG_MAJOR/ 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Wed, 26 Jul 2017 08:49:26 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Wed, 26 Jul 2017 08:49:26 GMT
ENV PATH=/usr/lib/postgresql/9.3/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 26 Jul 2017 08:49:26 GMT
ENV PGDATA=/var/lib/postgresql/data
# Wed, 26 Jul 2017 08:49:27 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Wed, 26 Jul 2017 08:49:27 GMT
VOLUME [/var/lib/postgresql/data]
# Mon, 31 Jul 2017 19:07:13 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Mon, 31 Jul 2017 19:07:14 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Mon, 31 Jul 2017 19:07:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 31 Jul 2017 19:07:14 GMT
EXPOSE 5432/tcp
# Mon, 31 Jul 2017 19:07:14 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:ad74af05f5a24bcf9459ae1cf7718628c2aeb6b587eb51b6eeaf639aca3e566f`  
		Last Modified: Mon, 24 Jul 2017 16:55:21 GMT  
		Size: 52.6 MB (52605632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8996b4a29b2bd5d95cf93ac41ed61c5dfe8fbbe7ac60e516a764c0c3ba4fa7f3`  
		Last Modified: Wed, 26 Jul 2017 08:51:28 GMT  
		Size: 2.1 KB (2059 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bea3311ef15bb6b069270ec8e6ebe9c8e3d613f011dd7152617cb1ba0c7aea11`  
		Last Modified: Wed, 26 Jul 2017 08:51:27 GMT  
		Size: 1.3 MB (1302813 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1b9eb0ac9c8c779f89ff7b76bcd59aba672e2f35a09106dc3f9ee92e5bab913`  
		Last Modified: Wed, 26 Jul 2017 08:51:27 GMT  
		Size: 7.1 MB (7112339 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d6d551d6af0e3986bddf0dd21e00d6884d6e58d006f2d5035208d24552c763b`  
		Last Modified: Wed, 26 Jul 2017 08:51:26 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba16377760f999a0006e1c620bf0df5531f6d55dfa7e0aa073b8245072c37b09`  
		Last Modified: Wed, 26 Jul 2017 08:51:26 GMT  
		Size: 4.5 KB (4487 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be238acc9fc258a3ae715f9dfb4879bf4428f9069e04cbdd9e1e8b895bd47999`  
		Last Modified: Wed, 26 Jul 2017 08:53:27 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:441baeaea757447d545af63773c10d8226f61f5c81dfa1102f808305ea0bb754`  
		Last Modified: Wed, 26 Jul 2017 08:53:31 GMT  
		Size: 42.1 MB (42102773 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e4d33d48e77d6fff4e7c0b36bef495c89228e11c0616ff9a5e493e65b2c82ae`  
		Last Modified: Wed, 26 Jul 2017 08:53:24 GMT  
		Size: 6.5 KB (6496 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5773734dd24fc80483f2f643ca57637b2c2e359e202603a7d947637a6b02f88e`  
		Last Modified: Wed, 26 Jul 2017 08:53:24 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6be19e71339fe3ca11b5abc419a7c82feb592dc622b63740a6d79aa1d27d6f6`  
		Last Modified: Wed, 26 Jul 2017 08:53:24 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:144e81a0f30d61676b1a9054c93a01b21a70aaff381af1d84ac2e2468ea62bac`  
		Last Modified: Mon, 31 Jul 2017 19:09:53 GMT  
		Size: 1.8 KB (1801 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7f3e0bfceaf3eb1aab7dfb9ab92d9ce5dc318a6d14faf55a451d4612a600bc8`  
		Last Modified: Mon, 31 Jul 2017 19:09:53 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.3.18-alpine`

**does not exist** (yet?)

## `postgres:9.3-alpine`

```console
$ docker pull postgres@sha256:85a3ddecd67f39aa373ed5c3a24eb55a636a464cc6b427ee62aaa8fc754d1c11
```

-	Platforms:
	-	linux; amd64

### `postgres:9.3-alpine` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.0 MB (13954521 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8c3a6a620eb2d9fc5cc94607e768dd2d290d2f01ce6cd51a47ad275ec64a454a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Tue, 27 Jun 2017 18:39:21 GMT
ADD file:9d67752278c0e5a1298cd2d6603ebaaab2aa342e27ddf191ee0fde138f82698c in / 
# Tue, 27 Jun 2017 18:39:45 GMT
CMD ["/bin/sh"]
# Wed, 28 Jun 2017 21:37:32 GMT
RUN set -ex; 	postgresHome="$(getent passwd postgres)"; 	postgresHome="$(echo "$postgresHome" | cut -d: -f6)"; 	[ "$postgresHome" = '/var/lib/postgresql' ]; 	mkdir -p "$postgresHome"; 	chown -R postgres:postgres "$postgresHome"
# Wed, 28 Jun 2017 21:37:33 GMT
ENV LANG=en_US.utf8
# Wed, 28 Jun 2017 21:37:34 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 28 Jun 2017 21:43:11 GMT
ENV PG_MAJOR=9.3
# Wed, 28 Jun 2017 21:43:12 GMT
ENV PG_VERSION=9.3.17
# Wed, 28 Jun 2017 21:43:13 GMT
ENV PG_SHA256=9c03e5f280cfe9bd202fa01af773eb146abd8ab3065f7279d574c568f6948dbe
# Wed, 28 Jun 2017 21:43:14 GMT
ENV OSSP_UUID_VERSION=1.6.2
# Wed, 28 Jun 2017 21:43:14 GMT
ENV OSSP_UUID_SHA256=11a615225baa5f8bb686824423f50e4427acd3f70d394765bdff32801f0fd5b0
# Fri, 14 Jul 2017 23:04:46 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl 		perl-ipc-run 		util-linux-dev 		zlib-dev 		&& wget -O uuid.tar.gz "https://www.mirrorservice.org/sites/ftp.ossp.org/pkg/lib/uuid/uuid-$OSSP_UUID_VERSION.tar.gz" 	&& echo "$OSSP_UUID_SHA256 *uuid.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/ossp-uuid 	&& tar 		--extract 		--file uuid.tar.gz 		--directory /usr/src/ossp-uuid 		--strip-components 1 	&& rm uuid.tar.gz 	&& ( 		cd /usr/src/ossp-uuid 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		&& wget -O config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 		&& wget -O config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 		&& ./configure 			--build="$gnuArch" 			--prefix=/usr/local 		&& make -j "$(nproc)" 		&& make install 	) 	&& rm -rf /usr/src/ossp-uuid 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& wget -O config/config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--disable-rpath 		--with-ossp-uuid 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Fri, 14 Jul 2017 23:04:47 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Fri, 14 Jul 2017 23:04:48 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 14 Jul 2017 23:04:48 GMT
ENV PATH=/usr/lib/postgresql/9.3/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 14 Jul 2017 23:04:49 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 14 Jul 2017 23:04:49 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 14 Jul 2017 23:04:50 GMT
VOLUME [/var/lib/postgresql/data]
# Mon, 31 Jul 2017 19:07:18 GMT
COPY file:d5038a27fbcfa2f7c3a5e92ffdbfda1676a7a65ecb52a9b377a6041a59e1c1d7 in /usr/local/bin/ 
# Mon, 31 Jul 2017 19:07:18 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Mon, 31 Jul 2017 19:07:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 31 Jul 2017 19:07:19 GMT
EXPOSE 5432/tcp
# Mon, 31 Jul 2017 19:07:19 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:019300c8a437a2d60248f27c206795930626dfe7ddc0323d734143bd5eb131a6`  
		Last Modified: Tue, 27 Jun 2017 18:48:47 GMT  
		Size: 2.0 MB (1970271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b9e338691a687b0c350212a5a1f42c7547f1a5dfd9e6d98323c120128db5303`  
		Last Modified: Fri, 30 Jun 2017 00:16:31 GMT  
		Size: 141.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d376e6c136f7de96c77c423f7ce1f4c82a17b782a33febc67f6f021abebf26f2`  
		Last Modified: Fri, 30 Jun 2017 00:16:30 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9b24d0b0d7ea46b1fc49dd18b0e50c4adf9ee12c56582322998c7861b40db06`  
		Last Modified: Fri, 14 Jul 2017 23:11:54 GMT  
		Size: 12.0 MB (11975311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6dade6e86bec306f988aafd12db6de147120ab73a2aa6e2da5c90724d37da353`  
		Last Modified: Fri, 14 Jul 2017 23:11:52 GMT  
		Size: 6.5 KB (6463 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3dfe1242313e89cc6b2bd3935512619afa89efde0224c556bcf61484c07dc02`  
		Last Modified: Fri, 14 Jul 2017 23:11:53 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49bd7e6f01cd3dfef067d661534ec5bd04fdcce872114f2554db07e03e78d189`  
		Last Modified: Fri, 14 Jul 2017 23:11:52 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12b2b8a3c2e7146828c546ba48042cc8bfa77c59edad98c52d434b1333092e59`  
		Last Modified: Mon, 31 Jul 2017 19:10:08 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:807882fbcd7548a887a69023ea89d179c0c8a1f20ab67b2ae3ca35795241e37e`  
		Last Modified: Mon, 31 Jul 2017 19:10:08 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.2.22`

**does not exist** (yet?)

## `postgres:9.2`

```console
$ docker pull postgres@sha256:d62cc022efdb9a40c78369a7daac10a35c7ed5efee80cef71db881c03bd82536
```

-	Platforms:
	-	linux; amd64

### `postgres:9.2` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **103.0 MB (102978387 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:db720e33840f96601414915e5685d9e886ca931caffa1afe05ad784e9be2921f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 24 Jul 2017 16:51:25 GMT
ADD file:a023a99f7d01868b164d63bfaf8aabc7f271659c69939c3854f041f5a3217428 in / 
# Mon, 24 Jul 2017 16:51:25 GMT
CMD ["bash"]
# Wed, 26 Jul 2017 08:44:55 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 26 Jul 2017 08:44:56 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Wed, 26 Jul 2017 08:44:56 GMT
ENV GOSU_VERSION=1.7
# Wed, 26 Jul 2017 08:45:21 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 26 Jul 2017 08:45:37 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Wed, 26 Jul 2017 08:45:37 GMT
ENV LANG=en_US.utf8
# Wed, 26 Jul 2017 08:45:38 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 26 Jul 2017 08:45:42 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list
# Wed, 26 Jul 2017 08:49:31 GMT
ENV PG_MAJOR=9.2
# Wed, 26 Jul 2017 08:49:32 GMT
ENV PG_VERSION=9.2.21-1.pgdg80+1
# Wed, 26 Jul 2017 08:49:32 GMT
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main' $PG_MAJOR > /etc/apt/sources.list.d/pgdg.list
# Wed, 26 Jul 2017 08:50:22 GMT
RUN apt-get update 	&& apt-get install -y postgresql-common 	&& sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf 	&& apt-get install -y 		postgresql-$PG_MAJOR=$PG_VERSION 		postgresql-contrib-$PG_MAJOR=$PG_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Wed, 26 Jul 2017 08:50:23 GMT
RUN mv -v /usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample /usr/share/postgresql/$PG_MAJOR/ 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Wed, 26 Jul 2017 08:50:23 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Wed, 26 Jul 2017 08:50:23 GMT
ENV PATH=/usr/lib/postgresql/9.2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 26 Jul 2017 08:50:24 GMT
ENV PGDATA=/var/lib/postgresql/data
# Wed, 26 Jul 2017 08:50:24 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Wed, 26 Jul 2017 08:50:25 GMT
VOLUME [/var/lib/postgresql/data]
# Mon, 31 Jul 2017 19:07:23 GMT
COPY file:643bb6306366c6990a8d7cc47297e0080cc2a18a48a305868c51739e9416a044 in /usr/local/bin/ 
# Mon, 31 Jul 2017 19:07:23 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Mon, 31 Jul 2017 19:07:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 31 Jul 2017 19:07:24 GMT
EXPOSE 5432/tcp
# Mon, 31 Jul 2017 19:07:24 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:ad74af05f5a24bcf9459ae1cf7718628c2aeb6b587eb51b6eeaf639aca3e566f`  
		Last Modified: Mon, 24 Jul 2017 16:55:21 GMT  
		Size: 52.6 MB (52605632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8996b4a29b2bd5d95cf93ac41ed61c5dfe8fbbe7ac60e516a764c0c3ba4fa7f3`  
		Last Modified: Wed, 26 Jul 2017 08:51:28 GMT  
		Size: 2.1 KB (2059 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bea3311ef15bb6b069270ec8e6ebe9c8e3d613f011dd7152617cb1ba0c7aea11`  
		Last Modified: Wed, 26 Jul 2017 08:51:27 GMT  
		Size: 1.3 MB (1302813 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1b9eb0ac9c8c779f89ff7b76bcd59aba672e2f35a09106dc3f9ee92e5bab913`  
		Last Modified: Wed, 26 Jul 2017 08:51:27 GMT  
		Size: 7.1 MB (7112339 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d6d551d6af0e3986bddf0dd21e00d6884d6e58d006f2d5035208d24552c763b`  
		Last Modified: Wed, 26 Jul 2017 08:51:26 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba16377760f999a0006e1c620bf0df5531f6d55dfa7e0aa073b8245072c37b09`  
		Last Modified: Wed, 26 Jul 2017 08:51:26 GMT  
		Size: 4.5 KB (4487 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3658c8881980bdd600f19552441765f31067d662acc3e42227eaa1df239f5ac9`  
		Last Modified: Wed, 26 Jul 2017 08:53:58 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c6d185a06c0a6af4e12b108daef0b8f51bc25c92f3a678fa440d5eca547d6b0`  
		Last Modified: Wed, 26 Jul 2017 08:54:01 GMT  
		Size: 41.9 MB (41942069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68ef47643c152a4cb7bb57bb957d501d2d489d717e0d0d81f17ac85f28d50284`  
		Last Modified: Wed, 26 Jul 2017 08:53:55 GMT  
		Size: 6.4 KB (6436 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf5dac6f2d96ea4dbc83a95190a96fb8291abc3994b4daf0cf822e8a64cd6d69`  
		Last Modified: Wed, 26 Jul 2017 08:53:55 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:833d4464f23d70d2583d38971584bdba4a6033c453045b37b63b2ae74462bdeb`  
		Last Modified: Wed, 26 Jul 2017 08:53:55 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1dad965630b7ac3255600346cabe9b9923776e67b0ceeb841c16b4ea5b26d6d2`  
		Last Modified: Mon, 31 Jul 2017 19:10:23 GMT  
		Size: 1.8 KB (1798 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf661c142c57358fcffc536015dbe4f7ef0e03cf4d494224f8442a9b7610676d`  
		Last Modified: Mon, 31 Jul 2017 19:10:23 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.2.22-alpine`

**does not exist** (yet?)

## `postgres:9.2-alpine`

```console
$ docker pull postgres@sha256:e14f03689aa79a1f9116fe9b7c4c1c8ad1297ab0a434e0bb081fdfc13c1e1c97
```

-	Platforms:
	-	linux; amd64

### `postgres:9.2-alpine` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.8 MB (13782435 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:30071544ace17b55add880efd73f9385300195b5ee54a427e563c8112b9bacf7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Tue, 27 Jun 2017 18:39:21 GMT
ADD file:9d67752278c0e5a1298cd2d6603ebaaab2aa342e27ddf191ee0fde138f82698c in / 
# Tue, 27 Jun 2017 18:39:45 GMT
CMD ["/bin/sh"]
# Wed, 28 Jun 2017 21:37:32 GMT
RUN set -ex; 	postgresHome="$(getent passwd postgres)"; 	postgresHome="$(echo "$postgresHome" | cut -d: -f6)"; 	[ "$postgresHome" = '/var/lib/postgresql' ]; 	mkdir -p "$postgresHome"; 	chown -R postgres:postgres "$postgresHome"
# Wed, 28 Jun 2017 21:37:33 GMT
ENV LANG=en_US.utf8
# Wed, 28 Jun 2017 21:37:34 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 28 Jun 2017 21:40:33 GMT
ENV PG_MAJOR=9.2
# Wed, 28 Jun 2017 21:40:34 GMT
ENV PG_VERSION=9.2.21
# Wed, 28 Jun 2017 21:40:35 GMT
ENV PG_SHA256=0697e843523ee60c563f987f9c65bc4201294b18525d6e5e4b2c50c6d4058ef9
# Wed, 28 Jun 2017 21:40:36 GMT
ENV OSSP_UUID_VERSION=1.6.2
# Wed, 28 Jun 2017 21:40:36 GMT
ENV OSSP_UUID_SHA256=11a615225baa5f8bb686824423f50e4427acd3f70d394765bdff32801f0fd5b0
# Fri, 14 Jul 2017 23:06:57 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl 		perl-ipc-run 		util-linux-dev 		zlib-dev 		&& wget -O uuid.tar.gz "https://www.mirrorservice.org/sites/ftp.ossp.org/pkg/lib/uuid/uuid-$OSSP_UUID_VERSION.tar.gz" 	&& echo "$OSSP_UUID_SHA256 *uuid.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/ossp-uuid 	&& tar 		--extract 		--file uuid.tar.gz 		--directory /usr/src/ossp-uuid 		--strip-components 1 	&& rm uuid.tar.gz 	&& ( 		cd /usr/src/ossp-uuid 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		&& wget -O config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 		&& wget -O config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 		&& ./configure 			--build="$gnuArch" 			--prefix=/usr/local 		&& make -j "$(nproc)" 		&& make install 	) 	&& rm -rf /usr/src/ossp-uuid 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& wget -O config/config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--disable-rpath 		--with-ossp-uuid 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Fri, 14 Jul 2017 23:06:58 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Fri, 14 Jul 2017 23:06:59 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 14 Jul 2017 23:07:00 GMT
ENV PATH=/usr/lib/postgresql/9.2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 14 Jul 2017 23:07:00 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 14 Jul 2017 23:07:01 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 14 Jul 2017 23:07:02 GMT
VOLUME [/var/lib/postgresql/data]
# Mon, 31 Jul 2017 19:07:28 GMT
COPY file:d5038a27fbcfa2f7c3a5e92ffdbfda1676a7a65ecb52a9b377a6041a59e1c1d7 in /usr/local/bin/ 
# Mon, 31 Jul 2017 19:07:28 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Mon, 31 Jul 2017 19:07:28 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 31 Jul 2017 19:07:29 GMT
EXPOSE 5432/tcp
# Mon, 31 Jul 2017 19:07:29 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:019300c8a437a2d60248f27c206795930626dfe7ddc0323d734143bd5eb131a6`  
		Last Modified: Tue, 27 Jun 2017 18:48:47 GMT  
		Size: 2.0 MB (1970271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b9e338691a687b0c350212a5a1f42c7547f1a5dfd9e6d98323c120128db5303`  
		Last Modified: Fri, 30 Jun 2017 00:16:31 GMT  
		Size: 141.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d376e6c136f7de96c77c423f7ce1f4c82a17b782a33febc67f6f021abebf26f2`  
		Last Modified: Fri, 30 Jun 2017 00:16:30 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4b769e02d35c775ba73aba791d5999b32d38f3730b18cfda4c6b59a59c1d8b5`  
		Last Modified: Fri, 14 Jul 2017 23:12:41 GMT  
		Size: 11.8 MB (11803287 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:643c1f5b84a997b8ccbd357282c4f90e796b44088b43550f41c92022d8d9ac26`  
		Last Modified: Fri, 14 Jul 2017 23:12:38 GMT  
		Size: 6.4 KB (6404 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7c92463db1ac94e9ac1a31ddc9d811ee90e5567939d1978b4ea1aa3c6de4dd7`  
		Last Modified: Fri, 14 Jul 2017 23:12:38 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a91e91c44cb5174e801fefd74d364b74c5f4d1dd7da4c1b3e35f45b159de8e7`  
		Last Modified: Fri, 14 Jul 2017 23:12:39 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef1c5b97e5acb823569e381e7470f8cb2519070f4539cc23a7fec16b0b063bc8`  
		Last Modified: Mon, 31 Jul 2017 19:10:38 GMT  
		Size: 1.8 KB (1789 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8412aa98f6805f755d7adfe78decdba57e374c4eb24540462589f8d57b4aea6a`  
		Last Modified: Mon, 31 Jul 2017 19:10:38 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
