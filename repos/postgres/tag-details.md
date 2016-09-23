<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `postgres`

-	[`postgres:9.6-rc1`](#postgres96-rc1)
-	[`postgres:9.6`](#postgres96)
-	[`postgres:9.5.4`](#postgres954)
-	[`postgres:9.5`](#postgres95)
-	[`postgres:9`](#postgres9)
-	[`postgres:latest`](#postgreslatest)
-	[`postgres:9.4.9`](#postgres949)
-	[`postgres:9.4`](#postgres94)
-	[`postgres:9.3.14`](#postgres9314)
-	[`postgres:9.3`](#postgres93)
-	[`postgres:9.2.18`](#postgres9218)
-	[`postgres:9.2`](#postgres92)
-	[`postgres:9.1.23`](#postgres9123)
-	[`postgres:9.1`](#postgres91)

## `postgres:9.6-rc1`

```console
$ docker pull postgres@sha256:039156777a9753d91872fc10cb6aa255f0685331b74e5351bb3c36f1f0399f70
```

-	Platforms:
	-	linux; amd64

### `postgres:9.6-rc1` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **101.5 MB (101512579 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6fce8015e7acb85e116fe24d456d3bbb77f8a819040d9a5389b6999730ae8ba1`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 22:12:39 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Fri, 23 Sep 2016 22:12:40 GMT
ENV GOSU_VERSION=1.7
# Fri, 23 Sep 2016 22:12:56 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 23 Sep 2016 22:13:03 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Fri, 23 Sep 2016 22:13:03 GMT
ENV LANG=en_US.utf8
# Fri, 23 Sep 2016 22:13:04 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 23 Sep 2016 22:13:05 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8
# Fri, 23 Sep 2016 22:20:05 GMT
ENV PG_MAJOR=9.6
# Fri, 23 Sep 2016 22:20:05 GMT
ENV PG_VERSION=9.6~rc1-1.pgdg80+1
# Fri, 23 Sep 2016 22:20:06 GMT
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main' $PG_MAJOR > /etc/apt/sources.list.d/pgdg.list
# Fri, 23 Sep 2016 22:20:40 GMT
RUN apt-get update 	&& apt-get install -y postgresql-common 	&& sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf 	&& apt-get install -y 		postgresql-$PG_MAJOR=$PG_VERSION 		postgresql-contrib-$PG_MAJOR=$PG_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 22:20:41 GMT
RUN mv -v /usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample /usr/share/postgresql/$PG_MAJOR/ 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Fri, 23 Sep 2016 22:20:42 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres /var/run/postgresql
# Fri, 23 Sep 2016 22:20:42 GMT
ENV PATH=/usr/lib/postgresql/9.6/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Sep 2016 22:20:43 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 23 Sep 2016 22:20:43 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 23 Sep 2016 22:20:44 GMT
COPY file:aefa30113260f63949e77cbc9a66aa22f27b1f79479507fd0d32f9b6a6994d69 in / 
# Fri, 23 Sep 2016 22:20:44 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 23 Sep 2016 22:20:44 GMT
EXPOSE 5432/tcp
# Fri, 23 Sep 2016 22:20:45 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:193f770cec44cad8b44a8b4f3c4a742d0e33f7bbcd24a4f4c45583edcf8f82eb`  
		Last Modified: Fri, 23 Sep 2016 22:14:03 GMT  
		Size: 2.0 KB (2046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33647077f2ee85eeac192f59a8e909e820783e5194b9ca4a28def6be33811afb`  
		Last Modified: Fri, 23 Sep 2016 22:14:00 GMT  
		Size: 1.2 MB (1216346 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53bc65f848403323313c2f7678434da89da7d2a802e4c2cb96c2fb65d6412cbd`  
		Last Modified: Fri, 23 Sep 2016 22:14:01 GMT  
		Size: 6.9 MB (6865060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4d3b0f1c16a42cac37f12bc8cc757d61823fa0aab1d7085678a4ca5ef1f55c3`  
		Last Modified: Fri, 23 Sep 2016 22:13:58 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdbe3c2ddbbd114c3cf1c0b6654c31e97312b4b6630599abdbb082e9cb9514df`  
		Last Modified: Fri, 23 Sep 2016 22:13:59 GMT  
		Size: 3.4 KB (3415 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55e630146588e7d13623d753c7dcfb29dca292e16f4ee1a9db2bc2a49336f548`  
		Last Modified: Fri, 23 Sep 2016 22:20:52 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec10efd47c28f047f6dfdc97d142bd2c82afc07930625d768836184ff1a0ae69`  
		Last Modified: Fri, 23 Sep 2016 22:21:04 GMT  
		Size: 42.1 MB (42062470 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebab1312478d42fae256e8cc0da1a137657582dec23dfb119f3d7f1edc308038`  
		Last Modified: Fri, 23 Sep 2016 22:20:55 GMT  
		Size: 7.2 KB (7155 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a8071b0277cf50fc658f84519c828b094362952c2d49626adfb3ec8a4dc9f0f`  
		Last Modified: Fri, 23 Sep 2016 22:20:52 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5d045111dc28b9ded2bbadadfd14cd101da2cef8ab192c0ee2427863d351d1c`  
		Last Modified: Fri, 23 Sep 2016 22:20:52 GMT  
		Size: 1.3 KB (1252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.6`

```console
$ docker pull postgres@sha256:039156777a9753d91872fc10cb6aa255f0685331b74e5351bb3c36f1f0399f70
```

-	Platforms:
	-	linux; amd64

### `postgres:9.6` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **101.5 MB (101512579 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6fce8015e7acb85e116fe24d456d3bbb77f8a819040d9a5389b6999730ae8ba1`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 22:12:39 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Fri, 23 Sep 2016 22:12:40 GMT
ENV GOSU_VERSION=1.7
# Fri, 23 Sep 2016 22:12:56 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 23 Sep 2016 22:13:03 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Fri, 23 Sep 2016 22:13:03 GMT
ENV LANG=en_US.utf8
# Fri, 23 Sep 2016 22:13:04 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 23 Sep 2016 22:13:05 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8
# Fri, 23 Sep 2016 22:20:05 GMT
ENV PG_MAJOR=9.6
# Fri, 23 Sep 2016 22:20:05 GMT
ENV PG_VERSION=9.6~rc1-1.pgdg80+1
# Fri, 23 Sep 2016 22:20:06 GMT
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main' $PG_MAJOR > /etc/apt/sources.list.d/pgdg.list
# Fri, 23 Sep 2016 22:20:40 GMT
RUN apt-get update 	&& apt-get install -y postgresql-common 	&& sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf 	&& apt-get install -y 		postgresql-$PG_MAJOR=$PG_VERSION 		postgresql-contrib-$PG_MAJOR=$PG_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 22:20:41 GMT
RUN mv -v /usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample /usr/share/postgresql/$PG_MAJOR/ 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Fri, 23 Sep 2016 22:20:42 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres /var/run/postgresql
# Fri, 23 Sep 2016 22:20:42 GMT
ENV PATH=/usr/lib/postgresql/9.6/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Sep 2016 22:20:43 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 23 Sep 2016 22:20:43 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 23 Sep 2016 22:20:44 GMT
COPY file:aefa30113260f63949e77cbc9a66aa22f27b1f79479507fd0d32f9b6a6994d69 in / 
# Fri, 23 Sep 2016 22:20:44 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 23 Sep 2016 22:20:44 GMT
EXPOSE 5432/tcp
# Fri, 23 Sep 2016 22:20:45 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:193f770cec44cad8b44a8b4f3c4a742d0e33f7bbcd24a4f4c45583edcf8f82eb`  
		Last Modified: Fri, 23 Sep 2016 22:14:03 GMT  
		Size: 2.0 KB (2046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33647077f2ee85eeac192f59a8e909e820783e5194b9ca4a28def6be33811afb`  
		Last Modified: Fri, 23 Sep 2016 22:14:00 GMT  
		Size: 1.2 MB (1216346 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53bc65f848403323313c2f7678434da89da7d2a802e4c2cb96c2fb65d6412cbd`  
		Last Modified: Fri, 23 Sep 2016 22:14:01 GMT  
		Size: 6.9 MB (6865060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4d3b0f1c16a42cac37f12bc8cc757d61823fa0aab1d7085678a4ca5ef1f55c3`  
		Last Modified: Fri, 23 Sep 2016 22:13:58 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdbe3c2ddbbd114c3cf1c0b6654c31e97312b4b6630599abdbb082e9cb9514df`  
		Last Modified: Fri, 23 Sep 2016 22:13:59 GMT  
		Size: 3.4 KB (3415 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55e630146588e7d13623d753c7dcfb29dca292e16f4ee1a9db2bc2a49336f548`  
		Last Modified: Fri, 23 Sep 2016 22:20:52 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec10efd47c28f047f6dfdc97d142bd2c82afc07930625d768836184ff1a0ae69`  
		Last Modified: Fri, 23 Sep 2016 22:21:04 GMT  
		Size: 42.1 MB (42062470 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebab1312478d42fae256e8cc0da1a137657582dec23dfb119f3d7f1edc308038`  
		Last Modified: Fri, 23 Sep 2016 22:20:55 GMT  
		Size: 7.2 KB (7155 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a8071b0277cf50fc658f84519c828b094362952c2d49626adfb3ec8a4dc9f0f`  
		Last Modified: Fri, 23 Sep 2016 22:20:52 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5d045111dc28b9ded2bbadadfd14cd101da2cef8ab192c0ee2427863d351d1c`  
		Last Modified: Fri, 23 Sep 2016 22:20:52 GMT  
		Size: 1.3 KB (1252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.5.4`

```console
$ docker pull postgres@sha256:c98501c8b17b56f5ad6636a4135997f0e24a49f7914c68434339b2f51a14bd4f
```

-	Platforms:
	-	linux; amd64

### `postgres:9.5.4` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **101.3 MB (101289626 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f91e27f33f264ff2b5d67a12d66a3812f1c0d1972f7f5727980cc074990919e7`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 22:12:39 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Fri, 23 Sep 2016 22:12:40 GMT
ENV GOSU_VERSION=1.7
# Fri, 23 Sep 2016 22:12:56 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 23 Sep 2016 22:13:03 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Fri, 23 Sep 2016 22:13:03 GMT
ENV LANG=en_US.utf8
# Fri, 23 Sep 2016 22:13:04 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 23 Sep 2016 22:13:05 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8
# Fri, 23 Sep 2016 22:13:06 GMT
ENV PG_MAJOR=9.5
# Fri, 23 Sep 2016 22:13:06 GMT
ENV PG_VERSION=9.5.4-1.pgdg80+1
# Fri, 23 Sep 2016 22:13:07 GMT
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main' $PG_MAJOR > /etc/apt/sources.list.d/pgdg.list
# Fri, 23 Sep 2016 22:13:43 GMT
RUN apt-get update 	&& apt-get install -y postgresql-common 	&& sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf 	&& apt-get install -y 		postgresql-$PG_MAJOR=$PG_VERSION 		postgresql-contrib-$PG_MAJOR=$PG_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 22:13:44 GMT
RUN mv -v /usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample /usr/share/postgresql/$PG_MAJOR/ 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Fri, 23 Sep 2016 22:13:45 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres /var/run/postgresql
# Fri, 23 Sep 2016 22:13:46 GMT
ENV PATH=/usr/lib/postgresql/9.5/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Sep 2016 22:13:46 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 23 Sep 2016 22:13:46 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 23 Sep 2016 22:13:47 GMT
COPY file:aefa30113260f63949e77cbc9a66aa22f27b1f79479507fd0d32f9b6a6994d69 in / 
# Fri, 23 Sep 2016 22:13:47 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 23 Sep 2016 22:13:48 GMT
EXPOSE 5432/tcp
# Fri, 23 Sep 2016 22:13:48 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:193f770cec44cad8b44a8b4f3c4a742d0e33f7bbcd24a4f4c45583edcf8f82eb`  
		Last Modified: Fri, 23 Sep 2016 22:14:03 GMT  
		Size: 2.0 KB (2046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33647077f2ee85eeac192f59a8e909e820783e5194b9ca4a28def6be33811afb`  
		Last Modified: Fri, 23 Sep 2016 22:14:00 GMT  
		Size: 1.2 MB (1216346 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53bc65f848403323313c2f7678434da89da7d2a802e4c2cb96c2fb65d6412cbd`  
		Last Modified: Fri, 23 Sep 2016 22:14:01 GMT  
		Size: 6.9 MB (6865060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4d3b0f1c16a42cac37f12bc8cc757d61823fa0aab1d7085678a4ca5ef1f55c3`  
		Last Modified: Fri, 23 Sep 2016 22:13:58 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdbe3c2ddbbd114c3cf1c0b6654c31e97312b4b6630599abdbb082e9cb9514df`  
		Last Modified: Fri, 23 Sep 2016 22:13:59 GMT  
		Size: 3.4 KB (3415 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58aca0aa1796a259cfefc5a5199690d9465545a0f187cbf99135e01d6b164625`  
		Last Modified: Fri, 23 Sep 2016 22:13:55 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94361a7698226172d99ded0ac292523a0ba3962e46ee33226981f85d263fba51`  
		Last Modified: Fri, 23 Sep 2016 22:14:07 GMT  
		Size: 41.8 MB (41839819 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a78ec5c0e0151d64dd922772b7d6e1e44ed90d6eaf355fcafeeebf0be3c92f08`  
		Last Modified: Fri, 23 Sep 2016 22:13:55 GMT  
		Size: 6.8 KB (6850 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:381079d98e328df9313bb88fca616d63f4da930e9e2d767e0e76f3f6496c013b`  
		Last Modified: Fri, 23 Sep 2016 22:13:56 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bf89d615ff710e2f8b14b8ffd540c69d8562d1c6eee36ed97eadd011eb22919`  
		Last Modified: Fri, 23 Sep 2016 22:13:56 GMT  
		Size: 1.3 KB (1254 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.5`

```console
$ docker pull postgres@sha256:c98501c8b17b56f5ad6636a4135997f0e24a49f7914c68434339b2f51a14bd4f
```

-	Platforms:
	-	linux; amd64

### `postgres:9.5` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **101.3 MB (101289626 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f91e27f33f264ff2b5d67a12d66a3812f1c0d1972f7f5727980cc074990919e7`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 22:12:39 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Fri, 23 Sep 2016 22:12:40 GMT
ENV GOSU_VERSION=1.7
# Fri, 23 Sep 2016 22:12:56 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 23 Sep 2016 22:13:03 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Fri, 23 Sep 2016 22:13:03 GMT
ENV LANG=en_US.utf8
# Fri, 23 Sep 2016 22:13:04 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 23 Sep 2016 22:13:05 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8
# Fri, 23 Sep 2016 22:13:06 GMT
ENV PG_MAJOR=9.5
# Fri, 23 Sep 2016 22:13:06 GMT
ENV PG_VERSION=9.5.4-1.pgdg80+1
# Fri, 23 Sep 2016 22:13:07 GMT
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main' $PG_MAJOR > /etc/apt/sources.list.d/pgdg.list
# Fri, 23 Sep 2016 22:13:43 GMT
RUN apt-get update 	&& apt-get install -y postgresql-common 	&& sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf 	&& apt-get install -y 		postgresql-$PG_MAJOR=$PG_VERSION 		postgresql-contrib-$PG_MAJOR=$PG_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 22:13:44 GMT
RUN mv -v /usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample /usr/share/postgresql/$PG_MAJOR/ 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Fri, 23 Sep 2016 22:13:45 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres /var/run/postgresql
# Fri, 23 Sep 2016 22:13:46 GMT
ENV PATH=/usr/lib/postgresql/9.5/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Sep 2016 22:13:46 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 23 Sep 2016 22:13:46 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 23 Sep 2016 22:13:47 GMT
COPY file:aefa30113260f63949e77cbc9a66aa22f27b1f79479507fd0d32f9b6a6994d69 in / 
# Fri, 23 Sep 2016 22:13:47 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 23 Sep 2016 22:13:48 GMT
EXPOSE 5432/tcp
# Fri, 23 Sep 2016 22:13:48 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:193f770cec44cad8b44a8b4f3c4a742d0e33f7bbcd24a4f4c45583edcf8f82eb`  
		Last Modified: Fri, 23 Sep 2016 22:14:03 GMT  
		Size: 2.0 KB (2046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33647077f2ee85eeac192f59a8e909e820783e5194b9ca4a28def6be33811afb`  
		Last Modified: Fri, 23 Sep 2016 22:14:00 GMT  
		Size: 1.2 MB (1216346 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53bc65f848403323313c2f7678434da89da7d2a802e4c2cb96c2fb65d6412cbd`  
		Last Modified: Fri, 23 Sep 2016 22:14:01 GMT  
		Size: 6.9 MB (6865060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4d3b0f1c16a42cac37f12bc8cc757d61823fa0aab1d7085678a4ca5ef1f55c3`  
		Last Modified: Fri, 23 Sep 2016 22:13:58 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdbe3c2ddbbd114c3cf1c0b6654c31e97312b4b6630599abdbb082e9cb9514df`  
		Last Modified: Fri, 23 Sep 2016 22:13:59 GMT  
		Size: 3.4 KB (3415 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58aca0aa1796a259cfefc5a5199690d9465545a0f187cbf99135e01d6b164625`  
		Last Modified: Fri, 23 Sep 2016 22:13:55 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94361a7698226172d99ded0ac292523a0ba3962e46ee33226981f85d263fba51`  
		Last Modified: Fri, 23 Sep 2016 22:14:07 GMT  
		Size: 41.8 MB (41839819 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a78ec5c0e0151d64dd922772b7d6e1e44ed90d6eaf355fcafeeebf0be3c92f08`  
		Last Modified: Fri, 23 Sep 2016 22:13:55 GMT  
		Size: 6.8 KB (6850 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:381079d98e328df9313bb88fca616d63f4da930e9e2d767e0e76f3f6496c013b`  
		Last Modified: Fri, 23 Sep 2016 22:13:56 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bf89d615ff710e2f8b14b8ffd540c69d8562d1c6eee36ed97eadd011eb22919`  
		Last Modified: Fri, 23 Sep 2016 22:13:56 GMT  
		Size: 1.3 KB (1254 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9`

```console
$ docker pull postgres@sha256:c98501c8b17b56f5ad6636a4135997f0e24a49f7914c68434339b2f51a14bd4f
```

-	Platforms:
	-	linux; amd64

### `postgres:9` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **101.3 MB (101289626 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f91e27f33f264ff2b5d67a12d66a3812f1c0d1972f7f5727980cc074990919e7`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 22:12:39 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Fri, 23 Sep 2016 22:12:40 GMT
ENV GOSU_VERSION=1.7
# Fri, 23 Sep 2016 22:12:56 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 23 Sep 2016 22:13:03 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Fri, 23 Sep 2016 22:13:03 GMT
ENV LANG=en_US.utf8
# Fri, 23 Sep 2016 22:13:04 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 23 Sep 2016 22:13:05 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8
# Fri, 23 Sep 2016 22:13:06 GMT
ENV PG_MAJOR=9.5
# Fri, 23 Sep 2016 22:13:06 GMT
ENV PG_VERSION=9.5.4-1.pgdg80+1
# Fri, 23 Sep 2016 22:13:07 GMT
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main' $PG_MAJOR > /etc/apt/sources.list.d/pgdg.list
# Fri, 23 Sep 2016 22:13:43 GMT
RUN apt-get update 	&& apt-get install -y postgresql-common 	&& sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf 	&& apt-get install -y 		postgresql-$PG_MAJOR=$PG_VERSION 		postgresql-contrib-$PG_MAJOR=$PG_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 22:13:44 GMT
RUN mv -v /usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample /usr/share/postgresql/$PG_MAJOR/ 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Fri, 23 Sep 2016 22:13:45 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres /var/run/postgresql
# Fri, 23 Sep 2016 22:13:46 GMT
ENV PATH=/usr/lib/postgresql/9.5/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Sep 2016 22:13:46 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 23 Sep 2016 22:13:46 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 23 Sep 2016 22:13:47 GMT
COPY file:aefa30113260f63949e77cbc9a66aa22f27b1f79479507fd0d32f9b6a6994d69 in / 
# Fri, 23 Sep 2016 22:13:47 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 23 Sep 2016 22:13:48 GMT
EXPOSE 5432/tcp
# Fri, 23 Sep 2016 22:13:48 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:193f770cec44cad8b44a8b4f3c4a742d0e33f7bbcd24a4f4c45583edcf8f82eb`  
		Last Modified: Fri, 23 Sep 2016 22:14:03 GMT  
		Size: 2.0 KB (2046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33647077f2ee85eeac192f59a8e909e820783e5194b9ca4a28def6be33811afb`  
		Last Modified: Fri, 23 Sep 2016 22:14:00 GMT  
		Size: 1.2 MB (1216346 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53bc65f848403323313c2f7678434da89da7d2a802e4c2cb96c2fb65d6412cbd`  
		Last Modified: Fri, 23 Sep 2016 22:14:01 GMT  
		Size: 6.9 MB (6865060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4d3b0f1c16a42cac37f12bc8cc757d61823fa0aab1d7085678a4ca5ef1f55c3`  
		Last Modified: Fri, 23 Sep 2016 22:13:58 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdbe3c2ddbbd114c3cf1c0b6654c31e97312b4b6630599abdbb082e9cb9514df`  
		Last Modified: Fri, 23 Sep 2016 22:13:59 GMT  
		Size: 3.4 KB (3415 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58aca0aa1796a259cfefc5a5199690d9465545a0f187cbf99135e01d6b164625`  
		Last Modified: Fri, 23 Sep 2016 22:13:55 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94361a7698226172d99ded0ac292523a0ba3962e46ee33226981f85d263fba51`  
		Last Modified: Fri, 23 Sep 2016 22:14:07 GMT  
		Size: 41.8 MB (41839819 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a78ec5c0e0151d64dd922772b7d6e1e44ed90d6eaf355fcafeeebf0be3c92f08`  
		Last Modified: Fri, 23 Sep 2016 22:13:55 GMT  
		Size: 6.8 KB (6850 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:381079d98e328df9313bb88fca616d63f4da930e9e2d767e0e76f3f6496c013b`  
		Last Modified: Fri, 23 Sep 2016 22:13:56 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bf89d615ff710e2f8b14b8ffd540c69d8562d1c6eee36ed97eadd011eb22919`  
		Last Modified: Fri, 23 Sep 2016 22:13:56 GMT  
		Size: 1.3 KB (1254 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:latest`

```console
$ docker pull postgres@sha256:c98501c8b17b56f5ad6636a4135997f0e24a49f7914c68434339b2f51a14bd4f
```

-	Platforms:
	-	linux; amd64

### `postgres:latest` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **101.3 MB (101289626 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f91e27f33f264ff2b5d67a12d66a3812f1c0d1972f7f5727980cc074990919e7`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 22:12:39 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Fri, 23 Sep 2016 22:12:40 GMT
ENV GOSU_VERSION=1.7
# Fri, 23 Sep 2016 22:12:56 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 23 Sep 2016 22:13:03 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Fri, 23 Sep 2016 22:13:03 GMT
ENV LANG=en_US.utf8
# Fri, 23 Sep 2016 22:13:04 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 23 Sep 2016 22:13:05 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8
# Fri, 23 Sep 2016 22:13:06 GMT
ENV PG_MAJOR=9.5
# Fri, 23 Sep 2016 22:13:06 GMT
ENV PG_VERSION=9.5.4-1.pgdg80+1
# Fri, 23 Sep 2016 22:13:07 GMT
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main' $PG_MAJOR > /etc/apt/sources.list.d/pgdg.list
# Fri, 23 Sep 2016 22:13:43 GMT
RUN apt-get update 	&& apt-get install -y postgresql-common 	&& sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf 	&& apt-get install -y 		postgresql-$PG_MAJOR=$PG_VERSION 		postgresql-contrib-$PG_MAJOR=$PG_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 22:13:44 GMT
RUN mv -v /usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample /usr/share/postgresql/$PG_MAJOR/ 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Fri, 23 Sep 2016 22:13:45 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres /var/run/postgresql
# Fri, 23 Sep 2016 22:13:46 GMT
ENV PATH=/usr/lib/postgresql/9.5/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Sep 2016 22:13:46 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 23 Sep 2016 22:13:46 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 23 Sep 2016 22:13:47 GMT
COPY file:aefa30113260f63949e77cbc9a66aa22f27b1f79479507fd0d32f9b6a6994d69 in / 
# Fri, 23 Sep 2016 22:13:47 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 23 Sep 2016 22:13:48 GMT
EXPOSE 5432/tcp
# Fri, 23 Sep 2016 22:13:48 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:193f770cec44cad8b44a8b4f3c4a742d0e33f7bbcd24a4f4c45583edcf8f82eb`  
		Last Modified: Fri, 23 Sep 2016 22:14:03 GMT  
		Size: 2.0 KB (2046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33647077f2ee85eeac192f59a8e909e820783e5194b9ca4a28def6be33811afb`  
		Last Modified: Fri, 23 Sep 2016 22:14:00 GMT  
		Size: 1.2 MB (1216346 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53bc65f848403323313c2f7678434da89da7d2a802e4c2cb96c2fb65d6412cbd`  
		Last Modified: Fri, 23 Sep 2016 22:14:01 GMT  
		Size: 6.9 MB (6865060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4d3b0f1c16a42cac37f12bc8cc757d61823fa0aab1d7085678a4ca5ef1f55c3`  
		Last Modified: Fri, 23 Sep 2016 22:13:58 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdbe3c2ddbbd114c3cf1c0b6654c31e97312b4b6630599abdbb082e9cb9514df`  
		Last Modified: Fri, 23 Sep 2016 22:13:59 GMT  
		Size: 3.4 KB (3415 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58aca0aa1796a259cfefc5a5199690d9465545a0f187cbf99135e01d6b164625`  
		Last Modified: Fri, 23 Sep 2016 22:13:55 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94361a7698226172d99ded0ac292523a0ba3962e46ee33226981f85d263fba51`  
		Last Modified: Fri, 23 Sep 2016 22:14:07 GMT  
		Size: 41.8 MB (41839819 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a78ec5c0e0151d64dd922772b7d6e1e44ed90d6eaf355fcafeeebf0be3c92f08`  
		Last Modified: Fri, 23 Sep 2016 22:13:55 GMT  
		Size: 6.8 KB (6850 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:381079d98e328df9313bb88fca616d63f4da930e9e2d767e0e76f3f6496c013b`  
		Last Modified: Fri, 23 Sep 2016 22:13:56 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bf89d615ff710e2f8b14b8ffd540c69d8562d1c6eee36ed97eadd011eb22919`  
		Last Modified: Fri, 23 Sep 2016 22:13:56 GMT  
		Size: 1.3 KB (1254 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.4.9`

```console
$ docker pull postgres@sha256:f3ace613e4f23c12194415ee745d28bd296a6cab4cb740f31e9843e62d005895
```

-	Platforms:
	-	linux; amd64

### `postgres:9.4.9` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **100.9 MB (100882991 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cd870518bdf0da0ce6f78ea7f2ddc9809801b888fcb443dfb3bea82b0f45edae`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 22:12:39 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Fri, 23 Sep 2016 22:12:40 GMT
ENV GOSU_VERSION=1.7
# Fri, 23 Sep 2016 22:12:56 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 23 Sep 2016 22:13:03 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Fri, 23 Sep 2016 22:13:03 GMT
ENV LANG=en_US.utf8
# Fri, 23 Sep 2016 22:13:04 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 23 Sep 2016 22:13:05 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8
# Fri, 23 Sep 2016 22:18:45 GMT
ENV PG_MAJOR=9.4
# Fri, 23 Sep 2016 22:18:45 GMT
ENV PG_VERSION=9.4.9-1.pgdg80+1
# Fri, 23 Sep 2016 22:18:46 GMT
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main' $PG_MAJOR > /etc/apt/sources.list.d/pgdg.list
# Fri, 23 Sep 2016 22:19:22 GMT
RUN apt-get update 	&& apt-get install -y postgresql-common 	&& sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf 	&& apt-get install -y 		postgresql-$PG_MAJOR=$PG_VERSION 		postgresql-contrib-$PG_MAJOR=$PG_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 22:19:24 GMT
RUN mv -v /usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample /usr/share/postgresql/$PG_MAJOR/ 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Fri, 23 Sep 2016 22:19:24 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres /var/run/postgresql
# Fri, 23 Sep 2016 22:19:25 GMT
ENV PATH=/usr/lib/postgresql/9.4/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Sep 2016 22:19:25 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 23 Sep 2016 22:19:25 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 23 Sep 2016 22:19:26 GMT
COPY file:aefa30113260f63949e77cbc9a66aa22f27b1f79479507fd0d32f9b6a6994d69 in / 
# Fri, 23 Sep 2016 22:19:26 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 23 Sep 2016 22:19:27 GMT
EXPOSE 5432/tcp
# Fri, 23 Sep 2016 22:19:27 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:193f770cec44cad8b44a8b4f3c4a742d0e33f7bbcd24a4f4c45583edcf8f82eb`  
		Last Modified: Fri, 23 Sep 2016 22:14:03 GMT  
		Size: 2.0 KB (2046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33647077f2ee85eeac192f59a8e909e820783e5194b9ca4a28def6be33811afb`  
		Last Modified: Fri, 23 Sep 2016 22:14:00 GMT  
		Size: 1.2 MB (1216346 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53bc65f848403323313c2f7678434da89da7d2a802e4c2cb96c2fb65d6412cbd`  
		Last Modified: Fri, 23 Sep 2016 22:14:01 GMT  
		Size: 6.9 MB (6865060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4d3b0f1c16a42cac37f12bc8cc757d61823fa0aab1d7085678a4ca5ef1f55c3`  
		Last Modified: Fri, 23 Sep 2016 22:13:58 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdbe3c2ddbbd114c3cf1c0b6654c31e97312b4b6630599abdbb082e9cb9514df`  
		Last Modified: Fri, 23 Sep 2016 22:13:59 GMT  
		Size: 3.4 KB (3415 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ce1015b914c39d20d9580a541eed6f1567aa434a511c3545772fe442cdf5fa7`  
		Last Modified: Fri, 23 Sep 2016 22:19:35 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19631bdff29c0751141f2699793f9bd3b9a575233bad36917cb3573c2449786e`  
		Last Modified: Fri, 23 Sep 2016 22:19:46 GMT  
		Size: 41.4 MB (41433326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66adf788dd4c32c8368cc13599fb9c5cd2ed14c2629284544d042a8bebb7f218`  
		Last Modified: Fri, 23 Sep 2016 22:19:34 GMT  
		Size: 6.7 KB (6712 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79dc4869308104132620c853c19d1f4b5436d83ca3eba6dcb34eaba80d6b0b22`  
		Last Modified: Fri, 23 Sep 2016 22:19:35 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6121a13ba57cf316e2dfcf3606069c5c952d14b7ed646edce5848d18b6f26576`  
		Last Modified: Fri, 23 Sep 2016 22:19:35 GMT  
		Size: 1.2 KB (1250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.4`

```console
$ docker pull postgres@sha256:f3ace613e4f23c12194415ee745d28bd296a6cab4cb740f31e9843e62d005895
```

-	Platforms:
	-	linux; amd64

### `postgres:9.4` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **100.9 MB (100882991 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cd870518bdf0da0ce6f78ea7f2ddc9809801b888fcb443dfb3bea82b0f45edae`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 22:12:39 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Fri, 23 Sep 2016 22:12:40 GMT
ENV GOSU_VERSION=1.7
# Fri, 23 Sep 2016 22:12:56 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 23 Sep 2016 22:13:03 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Fri, 23 Sep 2016 22:13:03 GMT
ENV LANG=en_US.utf8
# Fri, 23 Sep 2016 22:13:04 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 23 Sep 2016 22:13:05 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8
# Fri, 23 Sep 2016 22:18:45 GMT
ENV PG_MAJOR=9.4
# Fri, 23 Sep 2016 22:18:45 GMT
ENV PG_VERSION=9.4.9-1.pgdg80+1
# Fri, 23 Sep 2016 22:18:46 GMT
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main' $PG_MAJOR > /etc/apt/sources.list.d/pgdg.list
# Fri, 23 Sep 2016 22:19:22 GMT
RUN apt-get update 	&& apt-get install -y postgresql-common 	&& sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf 	&& apt-get install -y 		postgresql-$PG_MAJOR=$PG_VERSION 		postgresql-contrib-$PG_MAJOR=$PG_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 22:19:24 GMT
RUN mv -v /usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample /usr/share/postgresql/$PG_MAJOR/ 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Fri, 23 Sep 2016 22:19:24 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres /var/run/postgresql
# Fri, 23 Sep 2016 22:19:25 GMT
ENV PATH=/usr/lib/postgresql/9.4/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Sep 2016 22:19:25 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 23 Sep 2016 22:19:25 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 23 Sep 2016 22:19:26 GMT
COPY file:aefa30113260f63949e77cbc9a66aa22f27b1f79479507fd0d32f9b6a6994d69 in / 
# Fri, 23 Sep 2016 22:19:26 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 23 Sep 2016 22:19:27 GMT
EXPOSE 5432/tcp
# Fri, 23 Sep 2016 22:19:27 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:193f770cec44cad8b44a8b4f3c4a742d0e33f7bbcd24a4f4c45583edcf8f82eb`  
		Last Modified: Fri, 23 Sep 2016 22:14:03 GMT  
		Size: 2.0 KB (2046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33647077f2ee85eeac192f59a8e909e820783e5194b9ca4a28def6be33811afb`  
		Last Modified: Fri, 23 Sep 2016 22:14:00 GMT  
		Size: 1.2 MB (1216346 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53bc65f848403323313c2f7678434da89da7d2a802e4c2cb96c2fb65d6412cbd`  
		Last Modified: Fri, 23 Sep 2016 22:14:01 GMT  
		Size: 6.9 MB (6865060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4d3b0f1c16a42cac37f12bc8cc757d61823fa0aab1d7085678a4ca5ef1f55c3`  
		Last Modified: Fri, 23 Sep 2016 22:13:58 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdbe3c2ddbbd114c3cf1c0b6654c31e97312b4b6630599abdbb082e9cb9514df`  
		Last Modified: Fri, 23 Sep 2016 22:13:59 GMT  
		Size: 3.4 KB (3415 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ce1015b914c39d20d9580a541eed6f1567aa434a511c3545772fe442cdf5fa7`  
		Last Modified: Fri, 23 Sep 2016 22:19:35 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19631bdff29c0751141f2699793f9bd3b9a575233bad36917cb3573c2449786e`  
		Last Modified: Fri, 23 Sep 2016 22:19:46 GMT  
		Size: 41.4 MB (41433326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66adf788dd4c32c8368cc13599fb9c5cd2ed14c2629284544d042a8bebb7f218`  
		Last Modified: Fri, 23 Sep 2016 22:19:34 GMT  
		Size: 6.7 KB (6712 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79dc4869308104132620c853c19d1f4b5436d83ca3eba6dcb34eaba80d6b0b22`  
		Last Modified: Fri, 23 Sep 2016 22:19:35 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6121a13ba57cf316e2dfcf3606069c5c952d14b7ed646edce5848d18b6f26576`  
		Last Modified: Fri, 23 Sep 2016 22:19:35 GMT  
		Size: 1.2 KB (1250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.3.14`

```console
$ docker pull postgres@sha256:b33b9b7e4de09ac8ebd5f44e03b99569b48a2040463ed4ec8b841e46993359c5
```

-	Platforms:
	-	linux; amd64

### `postgres:9.3.14` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **100.5 MB (100530655 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:db4057098cc901c158330c9136351f334496cb22a020bb0a641986b7225a7a2b`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 22:12:39 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Fri, 23 Sep 2016 22:12:40 GMT
ENV GOSU_VERSION=1.7
# Fri, 23 Sep 2016 22:12:56 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 23 Sep 2016 22:13:03 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Fri, 23 Sep 2016 22:13:03 GMT
ENV LANG=en_US.utf8
# Fri, 23 Sep 2016 22:13:04 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 23 Sep 2016 22:13:05 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8
# Fri, 23 Sep 2016 22:17:26 GMT
ENV PG_MAJOR=9.3
# Fri, 23 Sep 2016 22:17:27 GMT
ENV PG_VERSION=9.3.14-1.pgdg80+1
# Fri, 23 Sep 2016 22:17:28 GMT
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main' $PG_MAJOR > /etc/apt/sources.list.d/pgdg.list
# Fri, 23 Sep 2016 22:18:00 GMT
RUN apt-get update 	&& apt-get install -y postgresql-common 	&& sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf 	&& apt-get install -y 		postgresql-$PG_MAJOR=$PG_VERSION 		postgresql-contrib-$PG_MAJOR=$PG_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 22:18:01 GMT
RUN mv -v /usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample /usr/share/postgresql/$PG_MAJOR/ 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Fri, 23 Sep 2016 22:18:02 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres /var/run/postgresql
# Fri, 23 Sep 2016 22:18:02 GMT
ENV PATH=/usr/lib/postgresql/9.3/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Sep 2016 22:18:02 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 23 Sep 2016 22:18:03 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 23 Sep 2016 22:18:03 GMT
COPY file:aefa30113260f63949e77cbc9a66aa22f27b1f79479507fd0d32f9b6a6994d69 in / 
# Fri, 23 Sep 2016 22:18:04 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 23 Sep 2016 22:18:04 GMT
EXPOSE 5432/tcp
# Fri, 23 Sep 2016 22:18:04 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:193f770cec44cad8b44a8b4f3c4a742d0e33f7bbcd24a4f4c45583edcf8f82eb`  
		Last Modified: Fri, 23 Sep 2016 22:14:03 GMT  
		Size: 2.0 KB (2046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33647077f2ee85eeac192f59a8e909e820783e5194b9ca4a28def6be33811afb`  
		Last Modified: Fri, 23 Sep 2016 22:14:00 GMT  
		Size: 1.2 MB (1216346 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53bc65f848403323313c2f7678434da89da7d2a802e4c2cb96c2fb65d6412cbd`  
		Last Modified: Fri, 23 Sep 2016 22:14:01 GMT  
		Size: 6.9 MB (6865060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4d3b0f1c16a42cac37f12bc8cc757d61823fa0aab1d7085678a4ca5ef1f55c3`  
		Last Modified: Fri, 23 Sep 2016 22:13:58 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdbe3c2ddbbd114c3cf1c0b6654c31e97312b4b6630599abdbb082e9cb9514df`  
		Last Modified: Fri, 23 Sep 2016 22:13:59 GMT  
		Size: 3.4 KB (3415 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:575bb3898603cf945263a68983528c582284dbf9c1b2cc8249377c22eeb105f6`  
		Last Modified: Fri, 23 Sep 2016 22:18:12 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72c9fe0d644dab66780ad77d7127aa8e96101f86c380c1ad3c6eba96204ecfe0`  
		Last Modified: Fri, 23 Sep 2016 22:18:26 GMT  
		Size: 41.1 MB (41081172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b87a349fcd43035f55f9885b9b254ad874fd3f6d116f59be589758c122ae139c`  
		Last Modified: Fri, 23 Sep 2016 22:18:12 GMT  
		Size: 6.5 KB (6527 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7b9f48e3ddc93ee0d058bfb4e71e9d3dd5f4dec82e8faf93eca9bb5919e5c94`  
		Last Modified: Fri, 23 Sep 2016 22:18:14 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1094bf57053dd95359d38dfa53d383252cd2bf297f22e73270068786e4ad8448`  
		Last Modified: Fri, 23 Sep 2016 22:18:12 GMT  
		Size: 1.3 KB (1254 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.3`

```console
$ docker pull postgres@sha256:b33b9b7e4de09ac8ebd5f44e03b99569b48a2040463ed4ec8b841e46993359c5
```

-	Platforms:
	-	linux; amd64

### `postgres:9.3` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **100.5 MB (100530655 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:db4057098cc901c158330c9136351f334496cb22a020bb0a641986b7225a7a2b`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 22:12:39 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Fri, 23 Sep 2016 22:12:40 GMT
ENV GOSU_VERSION=1.7
# Fri, 23 Sep 2016 22:12:56 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 23 Sep 2016 22:13:03 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Fri, 23 Sep 2016 22:13:03 GMT
ENV LANG=en_US.utf8
# Fri, 23 Sep 2016 22:13:04 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 23 Sep 2016 22:13:05 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8
# Fri, 23 Sep 2016 22:17:26 GMT
ENV PG_MAJOR=9.3
# Fri, 23 Sep 2016 22:17:27 GMT
ENV PG_VERSION=9.3.14-1.pgdg80+1
# Fri, 23 Sep 2016 22:17:28 GMT
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main' $PG_MAJOR > /etc/apt/sources.list.d/pgdg.list
# Fri, 23 Sep 2016 22:18:00 GMT
RUN apt-get update 	&& apt-get install -y postgresql-common 	&& sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf 	&& apt-get install -y 		postgresql-$PG_MAJOR=$PG_VERSION 		postgresql-contrib-$PG_MAJOR=$PG_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 22:18:01 GMT
RUN mv -v /usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample /usr/share/postgresql/$PG_MAJOR/ 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Fri, 23 Sep 2016 22:18:02 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres /var/run/postgresql
# Fri, 23 Sep 2016 22:18:02 GMT
ENV PATH=/usr/lib/postgresql/9.3/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Sep 2016 22:18:02 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 23 Sep 2016 22:18:03 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 23 Sep 2016 22:18:03 GMT
COPY file:aefa30113260f63949e77cbc9a66aa22f27b1f79479507fd0d32f9b6a6994d69 in / 
# Fri, 23 Sep 2016 22:18:04 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 23 Sep 2016 22:18:04 GMT
EXPOSE 5432/tcp
# Fri, 23 Sep 2016 22:18:04 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:193f770cec44cad8b44a8b4f3c4a742d0e33f7bbcd24a4f4c45583edcf8f82eb`  
		Last Modified: Fri, 23 Sep 2016 22:14:03 GMT  
		Size: 2.0 KB (2046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33647077f2ee85eeac192f59a8e909e820783e5194b9ca4a28def6be33811afb`  
		Last Modified: Fri, 23 Sep 2016 22:14:00 GMT  
		Size: 1.2 MB (1216346 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53bc65f848403323313c2f7678434da89da7d2a802e4c2cb96c2fb65d6412cbd`  
		Last Modified: Fri, 23 Sep 2016 22:14:01 GMT  
		Size: 6.9 MB (6865060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4d3b0f1c16a42cac37f12bc8cc757d61823fa0aab1d7085678a4ca5ef1f55c3`  
		Last Modified: Fri, 23 Sep 2016 22:13:58 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdbe3c2ddbbd114c3cf1c0b6654c31e97312b4b6630599abdbb082e9cb9514df`  
		Last Modified: Fri, 23 Sep 2016 22:13:59 GMT  
		Size: 3.4 KB (3415 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:575bb3898603cf945263a68983528c582284dbf9c1b2cc8249377c22eeb105f6`  
		Last Modified: Fri, 23 Sep 2016 22:18:12 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72c9fe0d644dab66780ad77d7127aa8e96101f86c380c1ad3c6eba96204ecfe0`  
		Last Modified: Fri, 23 Sep 2016 22:18:26 GMT  
		Size: 41.1 MB (41081172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b87a349fcd43035f55f9885b9b254ad874fd3f6d116f59be589758c122ae139c`  
		Last Modified: Fri, 23 Sep 2016 22:18:12 GMT  
		Size: 6.5 KB (6527 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7b9f48e3ddc93ee0d058bfb4e71e9d3dd5f4dec82e8faf93eca9bb5919e5c94`  
		Last Modified: Fri, 23 Sep 2016 22:18:14 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1094bf57053dd95359d38dfa53d383252cd2bf297f22e73270068786e4ad8448`  
		Last Modified: Fri, 23 Sep 2016 22:18:12 GMT  
		Size: 1.3 KB (1254 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.2.18`

```console
$ docker pull postgres@sha256:19e8df4aafee7b1206dd7b93dd81700dd0ec91623b362d760c0a914cf1089874
```

-	Platforms:
	-	linux; amd64

### `postgres:9.2.18` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **100.4 MB (100370347 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3d766a278f2cd410aba50d881b88f5385f5af320ee6d462a07ca91ba279948eb`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 22:12:39 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Fri, 23 Sep 2016 22:12:40 GMT
ENV GOSU_VERSION=1.7
# Fri, 23 Sep 2016 22:12:56 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 23 Sep 2016 22:13:03 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Fri, 23 Sep 2016 22:13:03 GMT
ENV LANG=en_US.utf8
# Fri, 23 Sep 2016 22:13:04 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 23 Sep 2016 22:13:05 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8
# Fri, 23 Sep 2016 22:16:06 GMT
ENV PG_MAJOR=9.2
# Fri, 23 Sep 2016 22:16:06 GMT
ENV PG_VERSION=9.2.18-1.pgdg80+1
# Fri, 23 Sep 2016 22:16:07 GMT
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main' $PG_MAJOR > /etc/apt/sources.list.d/pgdg.list
# Fri, 23 Sep 2016 22:16:42 GMT
RUN apt-get update 	&& apt-get install -y postgresql-common 	&& sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf 	&& apt-get install -y 		postgresql-$PG_MAJOR=$PG_VERSION 		postgresql-contrib-$PG_MAJOR=$PG_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 22:16:43 GMT
RUN mv -v /usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample /usr/share/postgresql/$PG_MAJOR/ 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Fri, 23 Sep 2016 22:16:44 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres /var/run/postgresql
# Fri, 23 Sep 2016 22:16:44 GMT
ENV PATH=/usr/lib/postgresql/9.2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Sep 2016 22:16:45 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 23 Sep 2016 22:16:45 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 23 Sep 2016 22:16:45 GMT
COPY file:aefa30113260f63949e77cbc9a66aa22f27b1f79479507fd0d32f9b6a6994d69 in / 
# Fri, 23 Sep 2016 22:16:46 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 23 Sep 2016 22:16:46 GMT
EXPOSE 5432/tcp
# Fri, 23 Sep 2016 22:16:46 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:193f770cec44cad8b44a8b4f3c4a742d0e33f7bbcd24a4f4c45583edcf8f82eb`  
		Last Modified: Fri, 23 Sep 2016 22:14:03 GMT  
		Size: 2.0 KB (2046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33647077f2ee85eeac192f59a8e909e820783e5194b9ca4a28def6be33811afb`  
		Last Modified: Fri, 23 Sep 2016 22:14:00 GMT  
		Size: 1.2 MB (1216346 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53bc65f848403323313c2f7678434da89da7d2a802e4c2cb96c2fb65d6412cbd`  
		Last Modified: Fri, 23 Sep 2016 22:14:01 GMT  
		Size: 6.9 MB (6865060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4d3b0f1c16a42cac37f12bc8cc757d61823fa0aab1d7085678a4ca5ef1f55c3`  
		Last Modified: Fri, 23 Sep 2016 22:13:58 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdbe3c2ddbbd114c3cf1c0b6654c31e97312b4b6630599abdbb082e9cb9514df`  
		Last Modified: Fri, 23 Sep 2016 22:13:59 GMT  
		Size: 3.4 KB (3415 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6b86fdf17cc8a827048a3535345dbe5826a186b6d6d5f77e036d4387756e930`  
		Last Modified: Fri, 23 Sep 2016 22:16:54 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b445a1348e9204ad1b9c71944ae1e11d002636cd22a3f058d7a5767ec366f4a`  
		Last Modified: Fri, 23 Sep 2016 22:17:05 GMT  
		Size: 40.9 MB (40920921 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf36f6fec19ec84aa6a55defb13c14a02d870138f88f24feaadaa025aeeea294`  
		Last Modified: Fri, 23 Sep 2016 22:16:54 GMT  
		Size: 6.5 KB (6470 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38fe4a80f4cf3e46df90b062048e94f4572d9acca1034498559ae9a7316ab3ba`  
		Last Modified: Fri, 23 Sep 2016 22:16:54 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56c3f99d13a58bfd55f3070def1bc23aade5e48fb2f132b30a046b1bd7812b3a`  
		Last Modified: Fri, 23 Sep 2016 22:16:54 GMT  
		Size: 1.3 KB (1253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.2`

```console
$ docker pull postgres@sha256:19e8df4aafee7b1206dd7b93dd81700dd0ec91623b362d760c0a914cf1089874
```

-	Platforms:
	-	linux; amd64

### `postgres:9.2` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **100.4 MB (100370347 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3d766a278f2cd410aba50d881b88f5385f5af320ee6d462a07ca91ba279948eb`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 22:12:39 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Fri, 23 Sep 2016 22:12:40 GMT
ENV GOSU_VERSION=1.7
# Fri, 23 Sep 2016 22:12:56 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 23 Sep 2016 22:13:03 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Fri, 23 Sep 2016 22:13:03 GMT
ENV LANG=en_US.utf8
# Fri, 23 Sep 2016 22:13:04 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 23 Sep 2016 22:13:05 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8
# Fri, 23 Sep 2016 22:16:06 GMT
ENV PG_MAJOR=9.2
# Fri, 23 Sep 2016 22:16:06 GMT
ENV PG_VERSION=9.2.18-1.pgdg80+1
# Fri, 23 Sep 2016 22:16:07 GMT
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main' $PG_MAJOR > /etc/apt/sources.list.d/pgdg.list
# Fri, 23 Sep 2016 22:16:42 GMT
RUN apt-get update 	&& apt-get install -y postgresql-common 	&& sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf 	&& apt-get install -y 		postgresql-$PG_MAJOR=$PG_VERSION 		postgresql-contrib-$PG_MAJOR=$PG_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 22:16:43 GMT
RUN mv -v /usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample /usr/share/postgresql/$PG_MAJOR/ 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Fri, 23 Sep 2016 22:16:44 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres /var/run/postgresql
# Fri, 23 Sep 2016 22:16:44 GMT
ENV PATH=/usr/lib/postgresql/9.2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Sep 2016 22:16:45 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 23 Sep 2016 22:16:45 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 23 Sep 2016 22:16:45 GMT
COPY file:aefa30113260f63949e77cbc9a66aa22f27b1f79479507fd0d32f9b6a6994d69 in / 
# Fri, 23 Sep 2016 22:16:46 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 23 Sep 2016 22:16:46 GMT
EXPOSE 5432/tcp
# Fri, 23 Sep 2016 22:16:46 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:193f770cec44cad8b44a8b4f3c4a742d0e33f7bbcd24a4f4c45583edcf8f82eb`  
		Last Modified: Fri, 23 Sep 2016 22:14:03 GMT  
		Size: 2.0 KB (2046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33647077f2ee85eeac192f59a8e909e820783e5194b9ca4a28def6be33811afb`  
		Last Modified: Fri, 23 Sep 2016 22:14:00 GMT  
		Size: 1.2 MB (1216346 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53bc65f848403323313c2f7678434da89da7d2a802e4c2cb96c2fb65d6412cbd`  
		Last Modified: Fri, 23 Sep 2016 22:14:01 GMT  
		Size: 6.9 MB (6865060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4d3b0f1c16a42cac37f12bc8cc757d61823fa0aab1d7085678a4ca5ef1f55c3`  
		Last Modified: Fri, 23 Sep 2016 22:13:58 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdbe3c2ddbbd114c3cf1c0b6654c31e97312b4b6630599abdbb082e9cb9514df`  
		Last Modified: Fri, 23 Sep 2016 22:13:59 GMT  
		Size: 3.4 KB (3415 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6b86fdf17cc8a827048a3535345dbe5826a186b6d6d5f77e036d4387756e930`  
		Last Modified: Fri, 23 Sep 2016 22:16:54 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b445a1348e9204ad1b9c71944ae1e11d002636cd22a3f058d7a5767ec366f4a`  
		Last Modified: Fri, 23 Sep 2016 22:17:05 GMT  
		Size: 40.9 MB (40920921 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf36f6fec19ec84aa6a55defb13c14a02d870138f88f24feaadaa025aeeea294`  
		Last Modified: Fri, 23 Sep 2016 22:16:54 GMT  
		Size: 6.5 KB (6470 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38fe4a80f4cf3e46df90b062048e94f4572d9acca1034498559ae9a7316ab3ba`  
		Last Modified: Fri, 23 Sep 2016 22:16:54 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56c3f99d13a58bfd55f3070def1bc23aade5e48fb2f132b30a046b1bd7812b3a`  
		Last Modified: Fri, 23 Sep 2016 22:16:54 GMT  
		Size: 1.3 KB (1253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.1.23`

```console
$ docker pull postgres@sha256:396dd508d77565d518e7652121517ee068ebf2ae2bde899033cea684de31c00c
```

-	Platforms:
	-	linux; amd64

### `postgres:9.1.23` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **100.2 MB (100187743 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bbf81addb98ece9a8167ffc6fbc1fd0093f98406d958317191000e90fdd90cb3`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 22:12:39 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Fri, 23 Sep 2016 22:12:40 GMT
ENV GOSU_VERSION=1.7
# Fri, 23 Sep 2016 22:12:56 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 23 Sep 2016 22:13:03 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Fri, 23 Sep 2016 22:13:03 GMT
ENV LANG=en_US.utf8
# Fri, 23 Sep 2016 22:13:04 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 23 Sep 2016 22:13:05 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8
# Fri, 23 Sep 2016 22:14:49 GMT
ENV PG_MAJOR=9.1
# Fri, 23 Sep 2016 22:14:49 GMT
ENV PG_VERSION=9.1.23-1.pgdg80+1
# Fri, 23 Sep 2016 22:14:50 GMT
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main' $PG_MAJOR > /etc/apt/sources.list.d/pgdg.list
# Fri, 23 Sep 2016 22:15:23 GMT
RUN apt-get update 	&& apt-get install -y postgresql-common 	&& sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf 	&& apt-get install -y 		postgresql-$PG_MAJOR=$PG_VERSION 		postgresql-contrib-$PG_MAJOR=$PG_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 22:15:24 GMT
RUN mv -v /usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample /usr/share/postgresql/$PG_MAJOR/ 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Fri, 23 Sep 2016 22:15:25 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres /var/run/postgresql
# Fri, 23 Sep 2016 22:15:25 GMT
ENV PATH=/usr/lib/postgresql/9.1/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Sep 2016 22:15:25 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 23 Sep 2016 22:15:26 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 23 Sep 2016 22:15:26 GMT
COPY file:aefa30113260f63949e77cbc9a66aa22f27b1f79479507fd0d32f9b6a6994d69 in / 
# Fri, 23 Sep 2016 22:15:26 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 23 Sep 2016 22:15:27 GMT
EXPOSE 5432/tcp
# Fri, 23 Sep 2016 22:15:27 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:193f770cec44cad8b44a8b4f3c4a742d0e33f7bbcd24a4f4c45583edcf8f82eb`  
		Last Modified: Fri, 23 Sep 2016 22:14:03 GMT  
		Size: 2.0 KB (2046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33647077f2ee85eeac192f59a8e909e820783e5194b9ca4a28def6be33811afb`  
		Last Modified: Fri, 23 Sep 2016 22:14:00 GMT  
		Size: 1.2 MB (1216346 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53bc65f848403323313c2f7678434da89da7d2a802e4c2cb96c2fb65d6412cbd`  
		Last Modified: Fri, 23 Sep 2016 22:14:01 GMT  
		Size: 6.9 MB (6865060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4d3b0f1c16a42cac37f12bc8cc757d61823fa0aab1d7085678a4ca5ef1f55c3`  
		Last Modified: Fri, 23 Sep 2016 22:13:58 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdbe3c2ddbbd114c3cf1c0b6654c31e97312b4b6630599abdbb082e9cb9514df`  
		Last Modified: Fri, 23 Sep 2016 22:13:59 GMT  
		Size: 3.4 KB (3415 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8500a6b5fc8afc2ec22175573f585e6049451c802805877f6dba2e928f32cb3e`  
		Last Modified: Fri, 23 Sep 2016 22:15:35 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b12ef02533d01b4bad98f287c971e290e4abced4693700738d5e7eacd530e7dc`  
		Last Modified: Fri, 23 Sep 2016 22:15:47 GMT  
		Size: 40.7 MB (40738487 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2543fd7f10227a07e33a32ae70cde0bdc032a807f2504caf5cfc90503c6c75ca`  
		Last Modified: Fri, 23 Sep 2016 22:15:34 GMT  
		Size: 6.3 KB (6300 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9b02fab816db01ee49227a51f4c497af3dbe98b33ebae711c8ef51b69173cf7`  
		Last Modified: Fri, 23 Sep 2016 22:15:34 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebfa1836a7f53a7e2af01144fe1c33e80666756d7f570464181aa9750daff7d8`  
		Last Modified: Fri, 23 Sep 2016 22:15:35 GMT  
		Size: 1.3 KB (1252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.1`

```console
$ docker pull postgres@sha256:396dd508d77565d518e7652121517ee068ebf2ae2bde899033cea684de31c00c
```

-	Platforms:
	-	linux; amd64

### `postgres:9.1` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **100.2 MB (100187743 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bbf81addb98ece9a8167ffc6fbc1fd0093f98406d958317191000e90fdd90cb3`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 22:12:39 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Fri, 23 Sep 2016 22:12:40 GMT
ENV GOSU_VERSION=1.7
# Fri, 23 Sep 2016 22:12:56 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 23 Sep 2016 22:13:03 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Fri, 23 Sep 2016 22:13:03 GMT
ENV LANG=en_US.utf8
# Fri, 23 Sep 2016 22:13:04 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 23 Sep 2016 22:13:05 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8
# Fri, 23 Sep 2016 22:14:49 GMT
ENV PG_MAJOR=9.1
# Fri, 23 Sep 2016 22:14:49 GMT
ENV PG_VERSION=9.1.23-1.pgdg80+1
# Fri, 23 Sep 2016 22:14:50 GMT
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main' $PG_MAJOR > /etc/apt/sources.list.d/pgdg.list
# Fri, 23 Sep 2016 22:15:23 GMT
RUN apt-get update 	&& apt-get install -y postgresql-common 	&& sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf 	&& apt-get install -y 		postgresql-$PG_MAJOR=$PG_VERSION 		postgresql-contrib-$PG_MAJOR=$PG_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 22:15:24 GMT
RUN mv -v /usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample /usr/share/postgresql/$PG_MAJOR/ 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Fri, 23 Sep 2016 22:15:25 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres /var/run/postgresql
# Fri, 23 Sep 2016 22:15:25 GMT
ENV PATH=/usr/lib/postgresql/9.1/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Sep 2016 22:15:25 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 23 Sep 2016 22:15:26 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 23 Sep 2016 22:15:26 GMT
COPY file:aefa30113260f63949e77cbc9a66aa22f27b1f79479507fd0d32f9b6a6994d69 in / 
# Fri, 23 Sep 2016 22:15:26 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 23 Sep 2016 22:15:27 GMT
EXPOSE 5432/tcp
# Fri, 23 Sep 2016 22:15:27 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:193f770cec44cad8b44a8b4f3c4a742d0e33f7bbcd24a4f4c45583edcf8f82eb`  
		Last Modified: Fri, 23 Sep 2016 22:14:03 GMT  
		Size: 2.0 KB (2046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33647077f2ee85eeac192f59a8e909e820783e5194b9ca4a28def6be33811afb`  
		Last Modified: Fri, 23 Sep 2016 22:14:00 GMT  
		Size: 1.2 MB (1216346 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53bc65f848403323313c2f7678434da89da7d2a802e4c2cb96c2fb65d6412cbd`  
		Last Modified: Fri, 23 Sep 2016 22:14:01 GMT  
		Size: 6.9 MB (6865060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4d3b0f1c16a42cac37f12bc8cc757d61823fa0aab1d7085678a4ca5ef1f55c3`  
		Last Modified: Fri, 23 Sep 2016 22:13:58 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdbe3c2ddbbd114c3cf1c0b6654c31e97312b4b6630599abdbb082e9cb9514df`  
		Last Modified: Fri, 23 Sep 2016 22:13:59 GMT  
		Size: 3.4 KB (3415 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8500a6b5fc8afc2ec22175573f585e6049451c802805877f6dba2e928f32cb3e`  
		Last Modified: Fri, 23 Sep 2016 22:15:35 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b12ef02533d01b4bad98f287c971e290e4abced4693700738d5e7eacd530e7dc`  
		Last Modified: Fri, 23 Sep 2016 22:15:47 GMT  
		Size: 40.7 MB (40738487 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2543fd7f10227a07e33a32ae70cde0bdc032a807f2504caf5cfc90503c6c75ca`  
		Last Modified: Fri, 23 Sep 2016 22:15:34 GMT  
		Size: 6.3 KB (6300 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9b02fab816db01ee49227a51f4c497af3dbe98b33ebae711c8ef51b69173cf7`  
		Last Modified: Fri, 23 Sep 2016 22:15:34 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebfa1836a7f53a7e2af01144fe1c33e80666756d7f570464181aa9750daff7d8`  
		Last Modified: Fri, 23 Sep 2016 22:15:35 GMT  
		Size: 1.3 KB (1252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
