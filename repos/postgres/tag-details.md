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
$ docker pull postgres@sha256:5de4916758838a12c0546d31242c498b2da19ae33e7e0da1877f11549df3a219
```

-	Platforms:
	-	linux; amd64

### `postgres:9.6-rc1` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **101.5 MB (101522164 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e0656cea22fe36eea504c06f59f0b8235ecbe582d0149c437426ee97862205f9`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Tue, 30 Aug 2016 21:00:51 GMT
ADD file:f2453b914e7e026efd39c6321c7b14509b6d09dd3cf5567a8f6bd38466e06954 in / 
# Tue, 30 Aug 2016 21:00:52 GMT
CMD ["/bin/bash"]
# Wed, 31 Aug 2016 00:45:39 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Wed, 31 Aug 2016 00:45:39 GMT
ENV GOSU_VERSION=1.7
# Wed, 31 Aug 2016 00:45:59 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 31 Aug 2016 00:46:06 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Wed, 31 Aug 2016 00:46:06 GMT
ENV LANG=en_US.utf8
# Wed, 31 Aug 2016 00:46:07 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 31 Aug 2016 00:46:09 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8
# Wed, 31 Aug 2016 00:46:09 GMT
ENV PG_MAJOR=9.6
# Wed, 07 Sep 2016 19:06:54 GMT
ENV PG_VERSION=9.6~rc1-1.pgdg80+1
# Wed, 07 Sep 2016 19:06:55 GMT
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main' $PG_MAJOR > /etc/apt/sources.list.d/pgdg.list
# Wed, 07 Sep 2016 19:07:30 GMT
RUN apt-get update 	&& apt-get install -y postgresql-common 	&& sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf 	&& apt-get install -y 		postgresql-$PG_MAJOR=$PG_VERSION 		postgresql-contrib-$PG_MAJOR=$PG_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Wed, 07 Sep 2016 19:07:31 GMT
RUN mv -v /usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample /usr/share/postgresql/$PG_MAJOR/ 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Wed, 07 Sep 2016 19:07:32 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres /var/run/postgresql
# Wed, 07 Sep 2016 19:07:32 GMT
ENV PATH=/usr/lib/postgresql/9.6/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 07 Sep 2016 19:07:32 GMT
ENV PGDATA=/var/lib/postgresql/data
# Wed, 07 Sep 2016 19:07:33 GMT
VOLUME [/var/lib/postgresql/data]
# Wed, 07 Sep 2016 19:07:33 GMT
COPY file:aefa30113260f63949e77cbc9a66aa22f27b1f79479507fd0d32f9b6a6994d69 in / 
# Wed, 07 Sep 2016 19:07:33 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 07 Sep 2016 19:07:34 GMT
EXPOSE 5432/tcp
# Wed, 07 Sep 2016 19:07:34 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:8ad8b3f87b378cfae583fef34e47a3c9203847d779961b7351cbf786af0bc09f`  
		Last Modified: Tue, 30 Aug 2016 21:02:02 GMT  
		Size: 51.4 MB (51367268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5f4a4b21ab64fec41dfca87cb7cb13db2e5fbbe7196d3d560af3156ec8879dd`  
		Last Modified: Wed, 07 Sep 2016 19:07:45 GMT  
		Size: 2.0 KB (2040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba05db8b0a52f4928063df9ec4b2109198c3956acc4a108c939080c8e09f0733`  
		Last Modified: Wed, 07 Sep 2016 19:07:45 GMT  
		Size: 1.2 MB (1216661 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47b491cd21ab6c64c15757f4c728eedc43239c74f9db75a5cededd8054c873b7`  
		Last Modified: Wed, 07 Sep 2016 19:07:46 GMT  
		Size: 6.9 MB (6864083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d70407e3e64d19d135a5d4b3fc0bc1cec563978ff76ffad4d29cbcf386ca5a7f`  
		Last Modified: Wed, 07 Sep 2016 19:07:42 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:295c246dd69f7c6aa274bf3bc0aab6cfa91d39abb57c6ed3a6abdccd7af31c83`  
		Last Modified: Wed, 07 Sep 2016 19:07:42 GMT  
		Size: 3.4 KB (3411 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d7486a49fcd51b630f40e0140f37e12630c0b0641cb690840db256edf5c7779`  
		Last Modified: Wed, 07 Sep 2016 19:07:40 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb3c9267b2003c44064c039b35ad0422d74196717a79f1ea92e5f79eb623f468`  
		Last Modified: Wed, 07 Sep 2016 19:07:53 GMT  
		Size: 42.1 MB (42059819 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55ff0f2c73e4fd66f96f43f5f213f98a86ecca066a4ab012735e6357cf75bdec`  
		Last Modified: Wed, 07 Sep 2016 19:07:40 GMT  
		Size: 7.2 KB (7156 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbb3d8f58755fa63bdff75befb4492a437d4ce6c94a2aed1142171d9fefeb908`  
		Last Modified: Wed, 07 Sep 2016 19:07:40 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:654796e4161307c8ec70558dfd178a797a2b94d1caf1d3526c866bbf802a2577`  
		Last Modified: Wed, 07 Sep 2016 19:07:40 GMT  
		Size: 1.3 KB (1253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.6`

```console
$ docker pull postgres@sha256:5de4916758838a12c0546d31242c498b2da19ae33e7e0da1877f11549df3a219
```

-	Platforms:
	-	linux; amd64

### `postgres:9.6` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **101.5 MB (101522164 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e0656cea22fe36eea504c06f59f0b8235ecbe582d0149c437426ee97862205f9`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Tue, 30 Aug 2016 21:00:51 GMT
ADD file:f2453b914e7e026efd39c6321c7b14509b6d09dd3cf5567a8f6bd38466e06954 in / 
# Tue, 30 Aug 2016 21:00:52 GMT
CMD ["/bin/bash"]
# Wed, 31 Aug 2016 00:45:39 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Wed, 31 Aug 2016 00:45:39 GMT
ENV GOSU_VERSION=1.7
# Wed, 31 Aug 2016 00:45:59 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 31 Aug 2016 00:46:06 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Wed, 31 Aug 2016 00:46:06 GMT
ENV LANG=en_US.utf8
# Wed, 31 Aug 2016 00:46:07 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 31 Aug 2016 00:46:09 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8
# Wed, 31 Aug 2016 00:46:09 GMT
ENV PG_MAJOR=9.6
# Wed, 07 Sep 2016 19:06:54 GMT
ENV PG_VERSION=9.6~rc1-1.pgdg80+1
# Wed, 07 Sep 2016 19:06:55 GMT
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main' $PG_MAJOR > /etc/apt/sources.list.d/pgdg.list
# Wed, 07 Sep 2016 19:07:30 GMT
RUN apt-get update 	&& apt-get install -y postgresql-common 	&& sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf 	&& apt-get install -y 		postgresql-$PG_MAJOR=$PG_VERSION 		postgresql-contrib-$PG_MAJOR=$PG_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Wed, 07 Sep 2016 19:07:31 GMT
RUN mv -v /usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample /usr/share/postgresql/$PG_MAJOR/ 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Wed, 07 Sep 2016 19:07:32 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres /var/run/postgresql
# Wed, 07 Sep 2016 19:07:32 GMT
ENV PATH=/usr/lib/postgresql/9.6/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 07 Sep 2016 19:07:32 GMT
ENV PGDATA=/var/lib/postgresql/data
# Wed, 07 Sep 2016 19:07:33 GMT
VOLUME [/var/lib/postgresql/data]
# Wed, 07 Sep 2016 19:07:33 GMT
COPY file:aefa30113260f63949e77cbc9a66aa22f27b1f79479507fd0d32f9b6a6994d69 in / 
# Wed, 07 Sep 2016 19:07:33 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 07 Sep 2016 19:07:34 GMT
EXPOSE 5432/tcp
# Wed, 07 Sep 2016 19:07:34 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:8ad8b3f87b378cfae583fef34e47a3c9203847d779961b7351cbf786af0bc09f`  
		Last Modified: Tue, 30 Aug 2016 21:02:02 GMT  
		Size: 51.4 MB (51367268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5f4a4b21ab64fec41dfca87cb7cb13db2e5fbbe7196d3d560af3156ec8879dd`  
		Last Modified: Wed, 07 Sep 2016 19:07:45 GMT  
		Size: 2.0 KB (2040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba05db8b0a52f4928063df9ec4b2109198c3956acc4a108c939080c8e09f0733`  
		Last Modified: Wed, 07 Sep 2016 19:07:45 GMT  
		Size: 1.2 MB (1216661 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47b491cd21ab6c64c15757f4c728eedc43239c74f9db75a5cededd8054c873b7`  
		Last Modified: Wed, 07 Sep 2016 19:07:46 GMT  
		Size: 6.9 MB (6864083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d70407e3e64d19d135a5d4b3fc0bc1cec563978ff76ffad4d29cbcf386ca5a7f`  
		Last Modified: Wed, 07 Sep 2016 19:07:42 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:295c246dd69f7c6aa274bf3bc0aab6cfa91d39abb57c6ed3a6abdccd7af31c83`  
		Last Modified: Wed, 07 Sep 2016 19:07:42 GMT  
		Size: 3.4 KB (3411 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d7486a49fcd51b630f40e0140f37e12630c0b0641cb690840db256edf5c7779`  
		Last Modified: Wed, 07 Sep 2016 19:07:40 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb3c9267b2003c44064c039b35ad0422d74196717a79f1ea92e5f79eb623f468`  
		Last Modified: Wed, 07 Sep 2016 19:07:53 GMT  
		Size: 42.1 MB (42059819 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55ff0f2c73e4fd66f96f43f5f213f98a86ecca066a4ab012735e6357cf75bdec`  
		Last Modified: Wed, 07 Sep 2016 19:07:40 GMT  
		Size: 7.2 KB (7156 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbb3d8f58755fa63bdff75befb4492a437d4ce6c94a2aed1142171d9fefeb908`  
		Last Modified: Wed, 07 Sep 2016 19:07:40 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:654796e4161307c8ec70558dfd178a797a2b94d1caf1d3526c866bbf802a2577`  
		Last Modified: Wed, 07 Sep 2016 19:07:40 GMT  
		Size: 1.3 KB (1253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.5.4`

```console
$ docker pull postgres@sha256:1115f095242a490cb79561124a79125e25b0595d5ae47d44fab5b4c1cd10735f
```

-	Platforms:
	-	linux; amd64

### `postgres:9.5.4` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **101.3 MB (101300331 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6f86882e145d0c874844dcc9153cde0291ca9b5e0e6490d4ebce3311859dbf49`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Tue, 30 Aug 2016 21:00:51 GMT
ADD file:f2453b914e7e026efd39c6321c7b14509b6d09dd3cf5567a8f6bd38466e06954 in / 
# Tue, 30 Aug 2016 21:00:52 GMT
CMD ["/bin/bash"]
# Wed, 31 Aug 2016 00:45:39 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Wed, 31 Aug 2016 00:45:39 GMT
ENV GOSU_VERSION=1.7
# Wed, 31 Aug 2016 00:45:59 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 31 Aug 2016 00:46:06 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Wed, 31 Aug 2016 00:46:06 GMT
ENV LANG=en_US.utf8
# Wed, 31 Aug 2016 00:46:07 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 31 Aug 2016 00:46:09 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8
# Wed, 31 Aug 2016 00:46:48 GMT
ENV PG_MAJOR=9.5
# Wed, 31 Aug 2016 00:46:49 GMT
ENV PG_VERSION=9.5.4-1.pgdg80+1
# Wed, 31 Aug 2016 00:46:49 GMT
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main' $PG_MAJOR > /etc/apt/sources.list.d/pgdg.list
# Wed, 31 Aug 2016 00:47:30 GMT
RUN apt-get update 	&& apt-get install -y postgresql-common 	&& sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf 	&& apt-get install -y 		postgresql-$PG_MAJOR=$PG_VERSION 		postgresql-contrib-$PG_MAJOR=$PG_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Wed, 31 Aug 2016 00:47:31 GMT
RUN mv -v /usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample /usr/share/postgresql/$PG_MAJOR/ 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Wed, 31 Aug 2016 00:47:32 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres /var/run/postgresql
# Wed, 31 Aug 2016 00:47:32 GMT
ENV PATH=/usr/lib/postgresql/9.5/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 31 Aug 2016 00:47:33 GMT
ENV PGDATA=/var/lib/postgresql/data
# Wed, 31 Aug 2016 00:47:33 GMT
VOLUME [/var/lib/postgresql/data]
# Wed, 31 Aug 2016 00:47:33 GMT
COPY file:aefa30113260f63949e77cbc9a66aa22f27b1f79479507fd0d32f9b6a6994d69 in / 
# Wed, 31 Aug 2016 00:47:34 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 31 Aug 2016 00:47:34 GMT
EXPOSE 5432/tcp
# Wed, 31 Aug 2016 00:47:34 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:8ad8b3f87b378cfae583fef34e47a3c9203847d779961b7351cbf786af0bc09f`  
		Last Modified: Tue, 30 Aug 2016 21:02:02 GMT  
		Size: 51.4 MB (51367268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5f4a4b21ab64fec41dfca87cb7cb13db2e5fbbe7196d3d560af3156ec8879dd`  
		Last Modified: Wed, 07 Sep 2016 19:07:45 GMT  
		Size: 2.0 KB (2040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba05db8b0a52f4928063df9ec4b2109198c3956acc4a108c939080c8e09f0733`  
		Last Modified: Wed, 07 Sep 2016 19:07:45 GMT  
		Size: 1.2 MB (1216661 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47b491cd21ab6c64c15757f4c728eedc43239c74f9db75a5cededd8054c873b7`  
		Last Modified: Wed, 07 Sep 2016 19:07:46 GMT  
		Size: 6.9 MB (6864083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d70407e3e64d19d135a5d4b3fc0bc1cec563978ff76ffad4d29cbcf386ca5a7f`  
		Last Modified: Wed, 07 Sep 2016 19:07:42 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:295c246dd69f7c6aa274bf3bc0aab6cfa91d39abb57c6ed3a6abdccd7af31c83`  
		Last Modified: Wed, 07 Sep 2016 19:07:42 GMT  
		Size: 3.4 KB (3411 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89bc4bb8bcfd3412ed94b185903bf16ff578ae296cb0ecb7859be5ee76afb71f`  
		Last Modified: Wed, 07 Sep 2016 19:08:19 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:106ff44c5f0611b1437e9c7de247c74ead085538bc6650b905404cc3dac40aed`  
		Last Modified: Wed, 07 Sep 2016 19:08:34 GMT  
		Size: 41.8 MB (41838286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:867cd91e76bb90d19bb9e54306928b7b999a7bda51d6283930559d8acf61bc19`  
		Last Modified: Wed, 07 Sep 2016 19:08:18 GMT  
		Size: 6.9 KB (6858 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a227948d6d8c9346ad9eabdcb1439d2ef3253f0cc0b2f3318369aaadd186b11c`  
		Last Modified: Wed, 07 Sep 2016 19:08:19 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc2ec20bdaf0573cea4cde543e12eea1a499258d129244d5bb9355a748b50b71`  
		Last Modified: Wed, 07 Sep 2016 19:08:18 GMT  
		Size: 1.3 KB (1253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.5`

```console
$ docker pull postgres@sha256:1115f095242a490cb79561124a79125e25b0595d5ae47d44fab5b4c1cd10735f
```

-	Platforms:
	-	linux; amd64

### `postgres:9.5` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **101.3 MB (101300331 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6f86882e145d0c874844dcc9153cde0291ca9b5e0e6490d4ebce3311859dbf49`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Tue, 30 Aug 2016 21:00:51 GMT
ADD file:f2453b914e7e026efd39c6321c7b14509b6d09dd3cf5567a8f6bd38466e06954 in / 
# Tue, 30 Aug 2016 21:00:52 GMT
CMD ["/bin/bash"]
# Wed, 31 Aug 2016 00:45:39 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Wed, 31 Aug 2016 00:45:39 GMT
ENV GOSU_VERSION=1.7
# Wed, 31 Aug 2016 00:45:59 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 31 Aug 2016 00:46:06 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Wed, 31 Aug 2016 00:46:06 GMT
ENV LANG=en_US.utf8
# Wed, 31 Aug 2016 00:46:07 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 31 Aug 2016 00:46:09 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8
# Wed, 31 Aug 2016 00:46:48 GMT
ENV PG_MAJOR=9.5
# Wed, 31 Aug 2016 00:46:49 GMT
ENV PG_VERSION=9.5.4-1.pgdg80+1
# Wed, 31 Aug 2016 00:46:49 GMT
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main' $PG_MAJOR > /etc/apt/sources.list.d/pgdg.list
# Wed, 31 Aug 2016 00:47:30 GMT
RUN apt-get update 	&& apt-get install -y postgresql-common 	&& sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf 	&& apt-get install -y 		postgresql-$PG_MAJOR=$PG_VERSION 		postgresql-contrib-$PG_MAJOR=$PG_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Wed, 31 Aug 2016 00:47:31 GMT
RUN mv -v /usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample /usr/share/postgresql/$PG_MAJOR/ 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Wed, 31 Aug 2016 00:47:32 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres /var/run/postgresql
# Wed, 31 Aug 2016 00:47:32 GMT
ENV PATH=/usr/lib/postgresql/9.5/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 31 Aug 2016 00:47:33 GMT
ENV PGDATA=/var/lib/postgresql/data
# Wed, 31 Aug 2016 00:47:33 GMT
VOLUME [/var/lib/postgresql/data]
# Wed, 31 Aug 2016 00:47:33 GMT
COPY file:aefa30113260f63949e77cbc9a66aa22f27b1f79479507fd0d32f9b6a6994d69 in / 
# Wed, 31 Aug 2016 00:47:34 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 31 Aug 2016 00:47:34 GMT
EXPOSE 5432/tcp
# Wed, 31 Aug 2016 00:47:34 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:8ad8b3f87b378cfae583fef34e47a3c9203847d779961b7351cbf786af0bc09f`  
		Last Modified: Tue, 30 Aug 2016 21:02:02 GMT  
		Size: 51.4 MB (51367268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5f4a4b21ab64fec41dfca87cb7cb13db2e5fbbe7196d3d560af3156ec8879dd`  
		Last Modified: Wed, 07 Sep 2016 19:07:45 GMT  
		Size: 2.0 KB (2040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba05db8b0a52f4928063df9ec4b2109198c3956acc4a108c939080c8e09f0733`  
		Last Modified: Wed, 07 Sep 2016 19:07:45 GMT  
		Size: 1.2 MB (1216661 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47b491cd21ab6c64c15757f4c728eedc43239c74f9db75a5cededd8054c873b7`  
		Last Modified: Wed, 07 Sep 2016 19:07:46 GMT  
		Size: 6.9 MB (6864083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d70407e3e64d19d135a5d4b3fc0bc1cec563978ff76ffad4d29cbcf386ca5a7f`  
		Last Modified: Wed, 07 Sep 2016 19:07:42 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:295c246dd69f7c6aa274bf3bc0aab6cfa91d39abb57c6ed3a6abdccd7af31c83`  
		Last Modified: Wed, 07 Sep 2016 19:07:42 GMT  
		Size: 3.4 KB (3411 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89bc4bb8bcfd3412ed94b185903bf16ff578ae296cb0ecb7859be5ee76afb71f`  
		Last Modified: Wed, 07 Sep 2016 19:08:19 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:106ff44c5f0611b1437e9c7de247c74ead085538bc6650b905404cc3dac40aed`  
		Last Modified: Wed, 07 Sep 2016 19:08:34 GMT  
		Size: 41.8 MB (41838286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:867cd91e76bb90d19bb9e54306928b7b999a7bda51d6283930559d8acf61bc19`  
		Last Modified: Wed, 07 Sep 2016 19:08:18 GMT  
		Size: 6.9 KB (6858 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a227948d6d8c9346ad9eabdcb1439d2ef3253f0cc0b2f3318369aaadd186b11c`  
		Last Modified: Wed, 07 Sep 2016 19:08:19 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc2ec20bdaf0573cea4cde543e12eea1a499258d129244d5bb9355a748b50b71`  
		Last Modified: Wed, 07 Sep 2016 19:08:18 GMT  
		Size: 1.3 KB (1253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9`

```console
$ docker pull postgres@sha256:1115f095242a490cb79561124a79125e25b0595d5ae47d44fab5b4c1cd10735f
```

-	Platforms:
	-	linux; amd64

### `postgres:9` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **101.3 MB (101300331 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6f86882e145d0c874844dcc9153cde0291ca9b5e0e6490d4ebce3311859dbf49`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Tue, 30 Aug 2016 21:00:51 GMT
ADD file:f2453b914e7e026efd39c6321c7b14509b6d09dd3cf5567a8f6bd38466e06954 in / 
# Tue, 30 Aug 2016 21:00:52 GMT
CMD ["/bin/bash"]
# Wed, 31 Aug 2016 00:45:39 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Wed, 31 Aug 2016 00:45:39 GMT
ENV GOSU_VERSION=1.7
# Wed, 31 Aug 2016 00:45:59 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 31 Aug 2016 00:46:06 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Wed, 31 Aug 2016 00:46:06 GMT
ENV LANG=en_US.utf8
# Wed, 31 Aug 2016 00:46:07 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 31 Aug 2016 00:46:09 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8
# Wed, 31 Aug 2016 00:46:48 GMT
ENV PG_MAJOR=9.5
# Wed, 31 Aug 2016 00:46:49 GMT
ENV PG_VERSION=9.5.4-1.pgdg80+1
# Wed, 31 Aug 2016 00:46:49 GMT
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main' $PG_MAJOR > /etc/apt/sources.list.d/pgdg.list
# Wed, 31 Aug 2016 00:47:30 GMT
RUN apt-get update 	&& apt-get install -y postgresql-common 	&& sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf 	&& apt-get install -y 		postgresql-$PG_MAJOR=$PG_VERSION 		postgresql-contrib-$PG_MAJOR=$PG_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Wed, 31 Aug 2016 00:47:31 GMT
RUN mv -v /usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample /usr/share/postgresql/$PG_MAJOR/ 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Wed, 31 Aug 2016 00:47:32 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres /var/run/postgresql
# Wed, 31 Aug 2016 00:47:32 GMT
ENV PATH=/usr/lib/postgresql/9.5/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 31 Aug 2016 00:47:33 GMT
ENV PGDATA=/var/lib/postgresql/data
# Wed, 31 Aug 2016 00:47:33 GMT
VOLUME [/var/lib/postgresql/data]
# Wed, 31 Aug 2016 00:47:33 GMT
COPY file:aefa30113260f63949e77cbc9a66aa22f27b1f79479507fd0d32f9b6a6994d69 in / 
# Wed, 31 Aug 2016 00:47:34 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 31 Aug 2016 00:47:34 GMT
EXPOSE 5432/tcp
# Wed, 31 Aug 2016 00:47:34 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:8ad8b3f87b378cfae583fef34e47a3c9203847d779961b7351cbf786af0bc09f`  
		Last Modified: Tue, 30 Aug 2016 21:02:02 GMT  
		Size: 51.4 MB (51367268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5f4a4b21ab64fec41dfca87cb7cb13db2e5fbbe7196d3d560af3156ec8879dd`  
		Last Modified: Wed, 07 Sep 2016 19:07:45 GMT  
		Size: 2.0 KB (2040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba05db8b0a52f4928063df9ec4b2109198c3956acc4a108c939080c8e09f0733`  
		Last Modified: Wed, 07 Sep 2016 19:07:45 GMT  
		Size: 1.2 MB (1216661 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47b491cd21ab6c64c15757f4c728eedc43239c74f9db75a5cededd8054c873b7`  
		Last Modified: Wed, 07 Sep 2016 19:07:46 GMT  
		Size: 6.9 MB (6864083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d70407e3e64d19d135a5d4b3fc0bc1cec563978ff76ffad4d29cbcf386ca5a7f`  
		Last Modified: Wed, 07 Sep 2016 19:07:42 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:295c246dd69f7c6aa274bf3bc0aab6cfa91d39abb57c6ed3a6abdccd7af31c83`  
		Last Modified: Wed, 07 Sep 2016 19:07:42 GMT  
		Size: 3.4 KB (3411 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89bc4bb8bcfd3412ed94b185903bf16ff578ae296cb0ecb7859be5ee76afb71f`  
		Last Modified: Wed, 07 Sep 2016 19:08:19 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:106ff44c5f0611b1437e9c7de247c74ead085538bc6650b905404cc3dac40aed`  
		Last Modified: Wed, 07 Sep 2016 19:08:34 GMT  
		Size: 41.8 MB (41838286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:867cd91e76bb90d19bb9e54306928b7b999a7bda51d6283930559d8acf61bc19`  
		Last Modified: Wed, 07 Sep 2016 19:08:18 GMT  
		Size: 6.9 KB (6858 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a227948d6d8c9346ad9eabdcb1439d2ef3253f0cc0b2f3318369aaadd186b11c`  
		Last Modified: Wed, 07 Sep 2016 19:08:19 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc2ec20bdaf0573cea4cde543e12eea1a499258d129244d5bb9355a748b50b71`  
		Last Modified: Wed, 07 Sep 2016 19:08:18 GMT  
		Size: 1.3 KB (1253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:latest`

```console
$ docker pull postgres@sha256:1115f095242a490cb79561124a79125e25b0595d5ae47d44fab5b4c1cd10735f
```

-	Platforms:
	-	linux; amd64

### `postgres:latest` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **101.3 MB (101300331 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6f86882e145d0c874844dcc9153cde0291ca9b5e0e6490d4ebce3311859dbf49`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Tue, 30 Aug 2016 21:00:51 GMT
ADD file:f2453b914e7e026efd39c6321c7b14509b6d09dd3cf5567a8f6bd38466e06954 in / 
# Tue, 30 Aug 2016 21:00:52 GMT
CMD ["/bin/bash"]
# Wed, 31 Aug 2016 00:45:39 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Wed, 31 Aug 2016 00:45:39 GMT
ENV GOSU_VERSION=1.7
# Wed, 31 Aug 2016 00:45:59 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 31 Aug 2016 00:46:06 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Wed, 31 Aug 2016 00:46:06 GMT
ENV LANG=en_US.utf8
# Wed, 31 Aug 2016 00:46:07 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 31 Aug 2016 00:46:09 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8
# Wed, 31 Aug 2016 00:46:48 GMT
ENV PG_MAJOR=9.5
# Wed, 31 Aug 2016 00:46:49 GMT
ENV PG_VERSION=9.5.4-1.pgdg80+1
# Wed, 31 Aug 2016 00:46:49 GMT
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main' $PG_MAJOR > /etc/apt/sources.list.d/pgdg.list
# Wed, 31 Aug 2016 00:47:30 GMT
RUN apt-get update 	&& apt-get install -y postgresql-common 	&& sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf 	&& apt-get install -y 		postgresql-$PG_MAJOR=$PG_VERSION 		postgresql-contrib-$PG_MAJOR=$PG_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Wed, 31 Aug 2016 00:47:31 GMT
RUN mv -v /usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample /usr/share/postgresql/$PG_MAJOR/ 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Wed, 31 Aug 2016 00:47:32 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres /var/run/postgresql
# Wed, 31 Aug 2016 00:47:32 GMT
ENV PATH=/usr/lib/postgresql/9.5/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 31 Aug 2016 00:47:33 GMT
ENV PGDATA=/var/lib/postgresql/data
# Wed, 31 Aug 2016 00:47:33 GMT
VOLUME [/var/lib/postgresql/data]
# Wed, 31 Aug 2016 00:47:33 GMT
COPY file:aefa30113260f63949e77cbc9a66aa22f27b1f79479507fd0d32f9b6a6994d69 in / 
# Wed, 31 Aug 2016 00:47:34 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 31 Aug 2016 00:47:34 GMT
EXPOSE 5432/tcp
# Wed, 31 Aug 2016 00:47:34 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:8ad8b3f87b378cfae583fef34e47a3c9203847d779961b7351cbf786af0bc09f`  
		Last Modified: Tue, 30 Aug 2016 21:02:02 GMT  
		Size: 51.4 MB (51367268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5f4a4b21ab64fec41dfca87cb7cb13db2e5fbbe7196d3d560af3156ec8879dd`  
		Last Modified: Wed, 07 Sep 2016 19:07:45 GMT  
		Size: 2.0 KB (2040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba05db8b0a52f4928063df9ec4b2109198c3956acc4a108c939080c8e09f0733`  
		Last Modified: Wed, 07 Sep 2016 19:07:45 GMT  
		Size: 1.2 MB (1216661 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47b491cd21ab6c64c15757f4c728eedc43239c74f9db75a5cededd8054c873b7`  
		Last Modified: Wed, 07 Sep 2016 19:07:46 GMT  
		Size: 6.9 MB (6864083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d70407e3e64d19d135a5d4b3fc0bc1cec563978ff76ffad4d29cbcf386ca5a7f`  
		Last Modified: Wed, 07 Sep 2016 19:07:42 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:295c246dd69f7c6aa274bf3bc0aab6cfa91d39abb57c6ed3a6abdccd7af31c83`  
		Last Modified: Wed, 07 Sep 2016 19:07:42 GMT  
		Size: 3.4 KB (3411 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89bc4bb8bcfd3412ed94b185903bf16ff578ae296cb0ecb7859be5ee76afb71f`  
		Last Modified: Wed, 07 Sep 2016 19:08:19 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:106ff44c5f0611b1437e9c7de247c74ead085538bc6650b905404cc3dac40aed`  
		Last Modified: Wed, 07 Sep 2016 19:08:34 GMT  
		Size: 41.8 MB (41838286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:867cd91e76bb90d19bb9e54306928b7b999a7bda51d6283930559d8acf61bc19`  
		Last Modified: Wed, 07 Sep 2016 19:08:18 GMT  
		Size: 6.9 KB (6858 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a227948d6d8c9346ad9eabdcb1439d2ef3253f0cc0b2f3318369aaadd186b11c`  
		Last Modified: Wed, 07 Sep 2016 19:08:19 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc2ec20bdaf0573cea4cde543e12eea1a499258d129244d5bb9355a748b50b71`  
		Last Modified: Wed, 07 Sep 2016 19:08:18 GMT  
		Size: 1.3 KB (1253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.4.9`

```console
$ docker pull postgres@sha256:33632bbd3222fa738d80a267b7c706a15d76eb3a59facab94bbd52a69cd1e30c
```

-	Platforms:
	-	linux; amd64

### `postgres:9.4.9` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **100.9 MB (100894751 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7ba4f6e9e5fe3ab2a1cdac3a1cd89982f38e4cca1d2a4f521f3e5e982ea06f10`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Tue, 30 Aug 2016 21:00:51 GMT
ADD file:f2453b914e7e026efd39c6321c7b14509b6d09dd3cf5567a8f6bd38466e06954 in / 
# Tue, 30 Aug 2016 21:00:52 GMT
CMD ["/bin/bash"]
# Wed, 31 Aug 2016 00:45:39 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Wed, 31 Aug 2016 00:45:39 GMT
ENV GOSU_VERSION=1.7
# Wed, 31 Aug 2016 00:45:59 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 31 Aug 2016 00:46:06 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Wed, 31 Aug 2016 00:46:06 GMT
ENV LANG=en_US.utf8
# Wed, 31 Aug 2016 00:46:07 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 31 Aug 2016 00:46:09 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8
# Wed, 31 Aug 2016 00:47:35 GMT
ENV PG_MAJOR=9.4
# Wed, 31 Aug 2016 00:47:35 GMT
ENV PG_VERSION=9.4.9-1.pgdg80+1
# Wed, 31 Aug 2016 00:47:36 GMT
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main' $PG_MAJOR > /etc/apt/sources.list.d/pgdg.list
# Wed, 31 Aug 2016 00:48:12 GMT
RUN apt-get update 	&& apt-get install -y postgresql-common 	&& sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf 	&& apt-get install -y 		postgresql-$PG_MAJOR=$PG_VERSION 		postgresql-contrib-$PG_MAJOR=$PG_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Wed, 31 Aug 2016 00:48:12 GMT
RUN mv -v /usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample /usr/share/postgresql/$PG_MAJOR/ 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Wed, 31 Aug 2016 00:48:13 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres /var/run/postgresql
# Wed, 31 Aug 2016 00:48:14 GMT
ENV PATH=/usr/lib/postgresql/9.4/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 31 Aug 2016 00:48:14 GMT
ENV PGDATA=/var/lib/postgresql/data
# Wed, 31 Aug 2016 00:48:14 GMT
VOLUME [/var/lib/postgresql/data]
# Wed, 31 Aug 2016 00:48:14 GMT
COPY file:aefa30113260f63949e77cbc9a66aa22f27b1f79479507fd0d32f9b6a6994d69 in / 
# Wed, 31 Aug 2016 00:48:15 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 31 Aug 2016 00:48:15 GMT
EXPOSE 5432/tcp
# Wed, 31 Aug 2016 00:48:15 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:8ad8b3f87b378cfae583fef34e47a3c9203847d779961b7351cbf786af0bc09f`  
		Last Modified: Tue, 30 Aug 2016 21:02:02 GMT  
		Size: 51.4 MB (51367268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5f4a4b21ab64fec41dfca87cb7cb13db2e5fbbe7196d3d560af3156ec8879dd`  
		Last Modified: Wed, 07 Sep 2016 19:07:45 GMT  
		Size: 2.0 KB (2040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba05db8b0a52f4928063df9ec4b2109198c3956acc4a108c939080c8e09f0733`  
		Last Modified: Wed, 07 Sep 2016 19:07:45 GMT  
		Size: 1.2 MB (1216661 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47b491cd21ab6c64c15757f4c728eedc43239c74f9db75a5cededd8054c873b7`  
		Last Modified: Wed, 07 Sep 2016 19:07:46 GMT  
		Size: 6.9 MB (6864083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d70407e3e64d19d135a5d4b3fc0bc1cec563978ff76ffad4d29cbcf386ca5a7f`  
		Last Modified: Wed, 07 Sep 2016 19:07:42 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:295c246dd69f7c6aa274bf3bc0aab6cfa91d39abb57c6ed3a6abdccd7af31c83`  
		Last Modified: Wed, 07 Sep 2016 19:07:42 GMT  
		Size: 3.4 KB (3411 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83b451e29b2bcc28e54bb292be3981c91cf75529c7c184b2849b044494712e34`  
		Last Modified: Wed, 07 Sep 2016 19:09:09 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aae7d45e261bd9d1920e4eb9d93e2affaa9a96695f8b0eb47f4aa8dc24ec29d0`  
		Last Modified: Wed, 07 Sep 2016 19:09:24 GMT  
		Size: 41.4 MB (41432850 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72d437c016ac7a8249df6374c338d30fd05b64eaaf4dcc9a593b41d5aa41f0f4`  
		Last Modified: Wed, 07 Sep 2016 19:09:10 GMT  
		Size: 6.7 KB (6712 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47e0d557e626d6186bd0b9ebb2f8219c2ab4527c1e10543cdfd5e25344166d2b`  
		Last Modified: Wed, 07 Sep 2016 19:09:09 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e12600f76d5e5d45e6ea7920e83f90f075087d8fb90274b68bef40606f0065cb`  
		Last Modified: Wed, 07 Sep 2016 19:09:09 GMT  
		Size: 1.3 KB (1253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.4`

```console
$ docker pull postgres@sha256:33632bbd3222fa738d80a267b7c706a15d76eb3a59facab94bbd52a69cd1e30c
```

-	Platforms:
	-	linux; amd64

### `postgres:9.4` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **100.9 MB (100894751 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7ba4f6e9e5fe3ab2a1cdac3a1cd89982f38e4cca1d2a4f521f3e5e982ea06f10`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Tue, 30 Aug 2016 21:00:51 GMT
ADD file:f2453b914e7e026efd39c6321c7b14509b6d09dd3cf5567a8f6bd38466e06954 in / 
# Tue, 30 Aug 2016 21:00:52 GMT
CMD ["/bin/bash"]
# Wed, 31 Aug 2016 00:45:39 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Wed, 31 Aug 2016 00:45:39 GMT
ENV GOSU_VERSION=1.7
# Wed, 31 Aug 2016 00:45:59 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 31 Aug 2016 00:46:06 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Wed, 31 Aug 2016 00:46:06 GMT
ENV LANG=en_US.utf8
# Wed, 31 Aug 2016 00:46:07 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 31 Aug 2016 00:46:09 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8
# Wed, 31 Aug 2016 00:47:35 GMT
ENV PG_MAJOR=9.4
# Wed, 31 Aug 2016 00:47:35 GMT
ENV PG_VERSION=9.4.9-1.pgdg80+1
# Wed, 31 Aug 2016 00:47:36 GMT
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main' $PG_MAJOR > /etc/apt/sources.list.d/pgdg.list
# Wed, 31 Aug 2016 00:48:12 GMT
RUN apt-get update 	&& apt-get install -y postgresql-common 	&& sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf 	&& apt-get install -y 		postgresql-$PG_MAJOR=$PG_VERSION 		postgresql-contrib-$PG_MAJOR=$PG_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Wed, 31 Aug 2016 00:48:12 GMT
RUN mv -v /usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample /usr/share/postgresql/$PG_MAJOR/ 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Wed, 31 Aug 2016 00:48:13 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres /var/run/postgresql
# Wed, 31 Aug 2016 00:48:14 GMT
ENV PATH=/usr/lib/postgresql/9.4/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 31 Aug 2016 00:48:14 GMT
ENV PGDATA=/var/lib/postgresql/data
# Wed, 31 Aug 2016 00:48:14 GMT
VOLUME [/var/lib/postgresql/data]
# Wed, 31 Aug 2016 00:48:14 GMT
COPY file:aefa30113260f63949e77cbc9a66aa22f27b1f79479507fd0d32f9b6a6994d69 in / 
# Wed, 31 Aug 2016 00:48:15 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 31 Aug 2016 00:48:15 GMT
EXPOSE 5432/tcp
# Wed, 31 Aug 2016 00:48:15 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:8ad8b3f87b378cfae583fef34e47a3c9203847d779961b7351cbf786af0bc09f`  
		Last Modified: Tue, 30 Aug 2016 21:02:02 GMT  
		Size: 51.4 MB (51367268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5f4a4b21ab64fec41dfca87cb7cb13db2e5fbbe7196d3d560af3156ec8879dd`  
		Last Modified: Wed, 07 Sep 2016 19:07:45 GMT  
		Size: 2.0 KB (2040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba05db8b0a52f4928063df9ec4b2109198c3956acc4a108c939080c8e09f0733`  
		Last Modified: Wed, 07 Sep 2016 19:07:45 GMT  
		Size: 1.2 MB (1216661 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47b491cd21ab6c64c15757f4c728eedc43239c74f9db75a5cededd8054c873b7`  
		Last Modified: Wed, 07 Sep 2016 19:07:46 GMT  
		Size: 6.9 MB (6864083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d70407e3e64d19d135a5d4b3fc0bc1cec563978ff76ffad4d29cbcf386ca5a7f`  
		Last Modified: Wed, 07 Sep 2016 19:07:42 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:295c246dd69f7c6aa274bf3bc0aab6cfa91d39abb57c6ed3a6abdccd7af31c83`  
		Last Modified: Wed, 07 Sep 2016 19:07:42 GMT  
		Size: 3.4 KB (3411 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83b451e29b2bcc28e54bb292be3981c91cf75529c7c184b2849b044494712e34`  
		Last Modified: Wed, 07 Sep 2016 19:09:09 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aae7d45e261bd9d1920e4eb9d93e2affaa9a96695f8b0eb47f4aa8dc24ec29d0`  
		Last Modified: Wed, 07 Sep 2016 19:09:24 GMT  
		Size: 41.4 MB (41432850 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72d437c016ac7a8249df6374c338d30fd05b64eaaf4dcc9a593b41d5aa41f0f4`  
		Last Modified: Wed, 07 Sep 2016 19:09:10 GMT  
		Size: 6.7 KB (6712 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47e0d557e626d6186bd0b9ebb2f8219c2ab4527c1e10543cdfd5e25344166d2b`  
		Last Modified: Wed, 07 Sep 2016 19:09:09 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e12600f76d5e5d45e6ea7920e83f90f075087d8fb90274b68bef40606f0065cb`  
		Last Modified: Wed, 07 Sep 2016 19:09:09 GMT  
		Size: 1.3 KB (1253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.3.14`

```console
$ docker pull postgres@sha256:00749ad21190ab25e10bca104b9018d8c14eb58026761dbde2f9ffac5f2f8300
```

-	Platforms:
	-	linux; amd64

### `postgres:9.3.14` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **100.5 MB (100543224 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c6509cf886d0c2c539b698a6d2278f1b537fc36af06586e618f46625243494d0`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Tue, 30 Aug 2016 21:00:51 GMT
ADD file:f2453b914e7e026efd39c6321c7b14509b6d09dd3cf5567a8f6bd38466e06954 in / 
# Tue, 30 Aug 2016 21:00:52 GMT
CMD ["/bin/bash"]
# Wed, 31 Aug 2016 00:45:39 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Wed, 31 Aug 2016 00:45:39 GMT
ENV GOSU_VERSION=1.7
# Wed, 31 Aug 2016 00:45:59 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 31 Aug 2016 00:46:06 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Wed, 31 Aug 2016 00:46:06 GMT
ENV LANG=en_US.utf8
# Wed, 31 Aug 2016 00:46:07 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 31 Aug 2016 00:46:09 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8
# Wed, 31 Aug 2016 00:48:16 GMT
ENV PG_MAJOR=9.3
# Wed, 31 Aug 2016 00:48:16 GMT
ENV PG_VERSION=9.3.14-1.pgdg80+1
# Wed, 31 Aug 2016 00:48:17 GMT
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main' $PG_MAJOR > /etc/apt/sources.list.d/pgdg.list
# Wed, 31 Aug 2016 00:48:48 GMT
RUN apt-get update 	&& apt-get install -y postgresql-common 	&& sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf 	&& apt-get install -y 		postgresql-$PG_MAJOR=$PG_VERSION 		postgresql-contrib-$PG_MAJOR=$PG_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Wed, 31 Aug 2016 00:48:49 GMT
RUN mv -v /usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample /usr/share/postgresql/$PG_MAJOR/ 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Wed, 31 Aug 2016 00:48:50 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres /var/run/postgresql
# Wed, 31 Aug 2016 00:48:50 GMT
ENV PATH=/usr/lib/postgresql/9.3/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 31 Aug 2016 00:48:50 GMT
ENV PGDATA=/var/lib/postgresql/data
# Wed, 31 Aug 2016 00:48:50 GMT
VOLUME [/var/lib/postgresql/data]
# Wed, 31 Aug 2016 00:48:51 GMT
COPY file:aefa30113260f63949e77cbc9a66aa22f27b1f79479507fd0d32f9b6a6994d69 in / 
# Wed, 31 Aug 2016 00:48:51 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 31 Aug 2016 00:48:51 GMT
EXPOSE 5432/tcp
# Wed, 31 Aug 2016 00:48:51 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:8ad8b3f87b378cfae583fef34e47a3c9203847d779961b7351cbf786af0bc09f`  
		Last Modified: Tue, 30 Aug 2016 21:02:02 GMT  
		Size: 51.4 MB (51367268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5f4a4b21ab64fec41dfca87cb7cb13db2e5fbbe7196d3d560af3156ec8879dd`  
		Last Modified: Wed, 07 Sep 2016 19:07:45 GMT  
		Size: 2.0 KB (2040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba05db8b0a52f4928063df9ec4b2109198c3956acc4a108c939080c8e09f0733`  
		Last Modified: Wed, 07 Sep 2016 19:07:45 GMT  
		Size: 1.2 MB (1216661 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47b491cd21ab6c64c15757f4c728eedc43239c74f9db75a5cededd8054c873b7`  
		Last Modified: Wed, 07 Sep 2016 19:07:46 GMT  
		Size: 6.9 MB (6864083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d70407e3e64d19d135a5d4b3fc0bc1cec563978ff76ffad4d29cbcf386ca5a7f`  
		Last Modified: Wed, 07 Sep 2016 19:07:42 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:295c246dd69f7c6aa274bf3bc0aab6cfa91d39abb57c6ed3a6abdccd7af31c83`  
		Last Modified: Wed, 07 Sep 2016 19:07:42 GMT  
		Size: 3.4 KB (3411 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ed562eaa910ac0dbd0b736acc9b7ac6efc27ab78ba25144458361cf21c7c916`  
		Last Modified: Wed, 07 Sep 2016 19:09:46 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b74408bbc37169b91dc89a321dba4ee44c6c327e036341a08aaacf2d81981a3`  
		Last Modified: Wed, 07 Sep 2016 19:10:01 GMT  
		Size: 41.1 MB (41081506 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8729452e63c46aa6de692ac56382a3641eae38db03ad607fc4c76720f305398`  
		Last Modified: Wed, 07 Sep 2016 19:09:46 GMT  
		Size: 6.5 KB (6529 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:595473e0b8c9b00650a5249c2201a0ce2c134dacef1eefc99ef6a0c4c4ffa167`  
		Last Modified: Wed, 07 Sep 2016 19:09:47 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ebc129d793344320b222bf5189c92e3588d883a613b052052fbb063cd369f5d`  
		Last Modified: Wed, 07 Sep 2016 19:09:46 GMT  
		Size: 1.3 KB (1253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.3`

```console
$ docker pull postgres@sha256:00749ad21190ab25e10bca104b9018d8c14eb58026761dbde2f9ffac5f2f8300
```

-	Platforms:
	-	linux; amd64

### `postgres:9.3` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **100.5 MB (100543224 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c6509cf886d0c2c539b698a6d2278f1b537fc36af06586e618f46625243494d0`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Tue, 30 Aug 2016 21:00:51 GMT
ADD file:f2453b914e7e026efd39c6321c7b14509b6d09dd3cf5567a8f6bd38466e06954 in / 
# Tue, 30 Aug 2016 21:00:52 GMT
CMD ["/bin/bash"]
# Wed, 31 Aug 2016 00:45:39 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Wed, 31 Aug 2016 00:45:39 GMT
ENV GOSU_VERSION=1.7
# Wed, 31 Aug 2016 00:45:59 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 31 Aug 2016 00:46:06 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Wed, 31 Aug 2016 00:46:06 GMT
ENV LANG=en_US.utf8
# Wed, 31 Aug 2016 00:46:07 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 31 Aug 2016 00:46:09 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8
# Wed, 31 Aug 2016 00:48:16 GMT
ENV PG_MAJOR=9.3
# Wed, 31 Aug 2016 00:48:16 GMT
ENV PG_VERSION=9.3.14-1.pgdg80+1
# Wed, 31 Aug 2016 00:48:17 GMT
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main' $PG_MAJOR > /etc/apt/sources.list.d/pgdg.list
# Wed, 31 Aug 2016 00:48:48 GMT
RUN apt-get update 	&& apt-get install -y postgresql-common 	&& sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf 	&& apt-get install -y 		postgresql-$PG_MAJOR=$PG_VERSION 		postgresql-contrib-$PG_MAJOR=$PG_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Wed, 31 Aug 2016 00:48:49 GMT
RUN mv -v /usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample /usr/share/postgresql/$PG_MAJOR/ 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Wed, 31 Aug 2016 00:48:50 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres /var/run/postgresql
# Wed, 31 Aug 2016 00:48:50 GMT
ENV PATH=/usr/lib/postgresql/9.3/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 31 Aug 2016 00:48:50 GMT
ENV PGDATA=/var/lib/postgresql/data
# Wed, 31 Aug 2016 00:48:50 GMT
VOLUME [/var/lib/postgresql/data]
# Wed, 31 Aug 2016 00:48:51 GMT
COPY file:aefa30113260f63949e77cbc9a66aa22f27b1f79479507fd0d32f9b6a6994d69 in / 
# Wed, 31 Aug 2016 00:48:51 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 31 Aug 2016 00:48:51 GMT
EXPOSE 5432/tcp
# Wed, 31 Aug 2016 00:48:51 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:8ad8b3f87b378cfae583fef34e47a3c9203847d779961b7351cbf786af0bc09f`  
		Last Modified: Tue, 30 Aug 2016 21:02:02 GMT  
		Size: 51.4 MB (51367268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5f4a4b21ab64fec41dfca87cb7cb13db2e5fbbe7196d3d560af3156ec8879dd`  
		Last Modified: Wed, 07 Sep 2016 19:07:45 GMT  
		Size: 2.0 KB (2040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba05db8b0a52f4928063df9ec4b2109198c3956acc4a108c939080c8e09f0733`  
		Last Modified: Wed, 07 Sep 2016 19:07:45 GMT  
		Size: 1.2 MB (1216661 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47b491cd21ab6c64c15757f4c728eedc43239c74f9db75a5cededd8054c873b7`  
		Last Modified: Wed, 07 Sep 2016 19:07:46 GMT  
		Size: 6.9 MB (6864083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d70407e3e64d19d135a5d4b3fc0bc1cec563978ff76ffad4d29cbcf386ca5a7f`  
		Last Modified: Wed, 07 Sep 2016 19:07:42 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:295c246dd69f7c6aa274bf3bc0aab6cfa91d39abb57c6ed3a6abdccd7af31c83`  
		Last Modified: Wed, 07 Sep 2016 19:07:42 GMT  
		Size: 3.4 KB (3411 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ed562eaa910ac0dbd0b736acc9b7ac6efc27ab78ba25144458361cf21c7c916`  
		Last Modified: Wed, 07 Sep 2016 19:09:46 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b74408bbc37169b91dc89a321dba4ee44c6c327e036341a08aaacf2d81981a3`  
		Last Modified: Wed, 07 Sep 2016 19:10:01 GMT  
		Size: 41.1 MB (41081506 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8729452e63c46aa6de692ac56382a3641eae38db03ad607fc4c76720f305398`  
		Last Modified: Wed, 07 Sep 2016 19:09:46 GMT  
		Size: 6.5 KB (6529 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:595473e0b8c9b00650a5249c2201a0ce2c134dacef1eefc99ef6a0c4c4ffa167`  
		Last Modified: Wed, 07 Sep 2016 19:09:47 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ebc129d793344320b222bf5189c92e3588d883a613b052052fbb063cd369f5d`  
		Last Modified: Wed, 07 Sep 2016 19:09:46 GMT  
		Size: 1.3 KB (1253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.2.18`

```console
$ docker pull postgres@sha256:18f22113ac8804e638bcef1578c2bd21ed5997ac732b9958c64fc3351e3fdf68
```

-	Platforms:
	-	linux; amd64

### `postgres:9.2.18` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **100.4 MB (100380877 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:20a901abe8ecbf471db0d4622b260e694670a90d0cb77f5fe6585549822e6ee3`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Tue, 30 Aug 2016 21:00:51 GMT
ADD file:f2453b914e7e026efd39c6321c7b14509b6d09dd3cf5567a8f6bd38466e06954 in / 
# Tue, 30 Aug 2016 21:00:52 GMT
CMD ["/bin/bash"]
# Wed, 31 Aug 2016 00:45:39 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Wed, 31 Aug 2016 00:45:39 GMT
ENV GOSU_VERSION=1.7
# Wed, 31 Aug 2016 00:45:59 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 31 Aug 2016 00:46:06 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Wed, 31 Aug 2016 00:46:06 GMT
ENV LANG=en_US.utf8
# Wed, 31 Aug 2016 00:46:07 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 31 Aug 2016 00:46:09 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8
# Wed, 31 Aug 2016 00:48:52 GMT
ENV PG_MAJOR=9.2
# Wed, 31 Aug 2016 00:48:52 GMT
ENV PG_VERSION=9.2.18-1.pgdg80+1
# Wed, 31 Aug 2016 00:48:53 GMT
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main' $PG_MAJOR > /etc/apt/sources.list.d/pgdg.list
# Wed, 31 Aug 2016 00:49:28 GMT
RUN apt-get update 	&& apt-get install -y postgresql-common 	&& sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf 	&& apt-get install -y 		postgresql-$PG_MAJOR=$PG_VERSION 		postgresql-contrib-$PG_MAJOR=$PG_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Wed, 31 Aug 2016 00:49:29 GMT
RUN mv -v /usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample /usr/share/postgresql/$PG_MAJOR/ 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Wed, 31 Aug 2016 00:49:29 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres /var/run/postgresql
# Wed, 31 Aug 2016 00:49:30 GMT
ENV PATH=/usr/lib/postgresql/9.2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 31 Aug 2016 00:49:30 GMT
ENV PGDATA=/var/lib/postgresql/data
# Wed, 31 Aug 2016 00:49:30 GMT
VOLUME [/var/lib/postgresql/data]
# Wed, 31 Aug 2016 00:49:31 GMT
COPY file:aefa30113260f63949e77cbc9a66aa22f27b1f79479507fd0d32f9b6a6994d69 in / 
# Wed, 31 Aug 2016 00:49:31 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 31 Aug 2016 00:49:31 GMT
EXPOSE 5432/tcp
# Wed, 31 Aug 2016 00:49:31 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:8ad8b3f87b378cfae583fef34e47a3c9203847d779961b7351cbf786af0bc09f`  
		Last Modified: Tue, 30 Aug 2016 21:02:02 GMT  
		Size: 51.4 MB (51367268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5f4a4b21ab64fec41dfca87cb7cb13db2e5fbbe7196d3d560af3156ec8879dd`  
		Last Modified: Wed, 07 Sep 2016 19:07:45 GMT  
		Size: 2.0 KB (2040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba05db8b0a52f4928063df9ec4b2109198c3956acc4a108c939080c8e09f0733`  
		Last Modified: Wed, 07 Sep 2016 19:07:45 GMT  
		Size: 1.2 MB (1216661 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47b491cd21ab6c64c15757f4c728eedc43239c74f9db75a5cededd8054c873b7`  
		Last Modified: Wed, 07 Sep 2016 19:07:46 GMT  
		Size: 6.9 MB (6864083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d70407e3e64d19d135a5d4b3fc0bc1cec563978ff76ffad4d29cbcf386ca5a7f`  
		Last Modified: Wed, 07 Sep 2016 19:07:42 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:295c246dd69f7c6aa274bf3bc0aab6cfa91d39abb57c6ed3a6abdccd7af31c83`  
		Last Modified: Wed, 07 Sep 2016 19:07:42 GMT  
		Size: 3.4 KB (3411 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05d33d55c3b64195cb029ea00d6b496d2067d273aa7dde18b40abf963f8f84f4`  
		Last Modified: Wed, 07 Sep 2016 19:10:26 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0302bcb8babd809db7b6a77bb1e232ec4575ec6a7ca5aa1a660d85f765175430`  
		Last Modified: Wed, 07 Sep 2016 19:10:40 GMT  
		Size: 40.9 MB (40919216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40005d041ac9267e6df3699b2c2054957442029d3fc2a1906a85ea47211bd5c2`  
		Last Modified: Wed, 07 Sep 2016 19:10:26 GMT  
		Size: 6.5 KB (6471 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f605f018abb0c9fae3f8beefe5462cae821a979edb8b792bec87a7a4131baca`  
		Last Modified: Wed, 07 Sep 2016 19:10:26 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5b2081346a1741aba39a8fbdcb1dbac1666258bb9746cb3e3af535307966e8e`  
		Last Modified: Wed, 07 Sep 2016 19:10:27 GMT  
		Size: 1.3 KB (1253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.2`

```console
$ docker pull postgres@sha256:18f22113ac8804e638bcef1578c2bd21ed5997ac732b9958c64fc3351e3fdf68
```

-	Platforms:
	-	linux; amd64

### `postgres:9.2` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **100.4 MB (100380877 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:20a901abe8ecbf471db0d4622b260e694670a90d0cb77f5fe6585549822e6ee3`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Tue, 30 Aug 2016 21:00:51 GMT
ADD file:f2453b914e7e026efd39c6321c7b14509b6d09dd3cf5567a8f6bd38466e06954 in / 
# Tue, 30 Aug 2016 21:00:52 GMT
CMD ["/bin/bash"]
# Wed, 31 Aug 2016 00:45:39 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Wed, 31 Aug 2016 00:45:39 GMT
ENV GOSU_VERSION=1.7
# Wed, 31 Aug 2016 00:45:59 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 31 Aug 2016 00:46:06 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Wed, 31 Aug 2016 00:46:06 GMT
ENV LANG=en_US.utf8
# Wed, 31 Aug 2016 00:46:07 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 31 Aug 2016 00:46:09 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8
# Wed, 31 Aug 2016 00:48:52 GMT
ENV PG_MAJOR=9.2
# Wed, 31 Aug 2016 00:48:52 GMT
ENV PG_VERSION=9.2.18-1.pgdg80+1
# Wed, 31 Aug 2016 00:48:53 GMT
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main' $PG_MAJOR > /etc/apt/sources.list.d/pgdg.list
# Wed, 31 Aug 2016 00:49:28 GMT
RUN apt-get update 	&& apt-get install -y postgresql-common 	&& sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf 	&& apt-get install -y 		postgresql-$PG_MAJOR=$PG_VERSION 		postgresql-contrib-$PG_MAJOR=$PG_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Wed, 31 Aug 2016 00:49:29 GMT
RUN mv -v /usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample /usr/share/postgresql/$PG_MAJOR/ 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Wed, 31 Aug 2016 00:49:29 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres /var/run/postgresql
# Wed, 31 Aug 2016 00:49:30 GMT
ENV PATH=/usr/lib/postgresql/9.2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 31 Aug 2016 00:49:30 GMT
ENV PGDATA=/var/lib/postgresql/data
# Wed, 31 Aug 2016 00:49:30 GMT
VOLUME [/var/lib/postgresql/data]
# Wed, 31 Aug 2016 00:49:31 GMT
COPY file:aefa30113260f63949e77cbc9a66aa22f27b1f79479507fd0d32f9b6a6994d69 in / 
# Wed, 31 Aug 2016 00:49:31 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 31 Aug 2016 00:49:31 GMT
EXPOSE 5432/tcp
# Wed, 31 Aug 2016 00:49:31 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:8ad8b3f87b378cfae583fef34e47a3c9203847d779961b7351cbf786af0bc09f`  
		Last Modified: Tue, 30 Aug 2016 21:02:02 GMT  
		Size: 51.4 MB (51367268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5f4a4b21ab64fec41dfca87cb7cb13db2e5fbbe7196d3d560af3156ec8879dd`  
		Last Modified: Wed, 07 Sep 2016 19:07:45 GMT  
		Size: 2.0 KB (2040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba05db8b0a52f4928063df9ec4b2109198c3956acc4a108c939080c8e09f0733`  
		Last Modified: Wed, 07 Sep 2016 19:07:45 GMT  
		Size: 1.2 MB (1216661 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47b491cd21ab6c64c15757f4c728eedc43239c74f9db75a5cededd8054c873b7`  
		Last Modified: Wed, 07 Sep 2016 19:07:46 GMT  
		Size: 6.9 MB (6864083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d70407e3e64d19d135a5d4b3fc0bc1cec563978ff76ffad4d29cbcf386ca5a7f`  
		Last Modified: Wed, 07 Sep 2016 19:07:42 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:295c246dd69f7c6aa274bf3bc0aab6cfa91d39abb57c6ed3a6abdccd7af31c83`  
		Last Modified: Wed, 07 Sep 2016 19:07:42 GMT  
		Size: 3.4 KB (3411 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05d33d55c3b64195cb029ea00d6b496d2067d273aa7dde18b40abf963f8f84f4`  
		Last Modified: Wed, 07 Sep 2016 19:10:26 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0302bcb8babd809db7b6a77bb1e232ec4575ec6a7ca5aa1a660d85f765175430`  
		Last Modified: Wed, 07 Sep 2016 19:10:40 GMT  
		Size: 40.9 MB (40919216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40005d041ac9267e6df3699b2c2054957442029d3fc2a1906a85ea47211bd5c2`  
		Last Modified: Wed, 07 Sep 2016 19:10:26 GMT  
		Size: 6.5 KB (6471 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f605f018abb0c9fae3f8beefe5462cae821a979edb8b792bec87a7a4131baca`  
		Last Modified: Wed, 07 Sep 2016 19:10:26 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5b2081346a1741aba39a8fbdcb1dbac1666258bb9746cb3e3af535307966e8e`  
		Last Modified: Wed, 07 Sep 2016 19:10:27 GMT  
		Size: 1.3 KB (1253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.1.23`

```console
$ docker pull postgres@sha256:a05be934b39ab6f79ec9a751b913636d5e7ad56b64f43b85e53b81dcace57e26
```

-	Platforms:
	-	linux; amd64

### `postgres:9.1.23` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **100.2 MB (100201316 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4c2deed3bfa47e311f6bce2dbcb9b1556f9fc51f4449fd587d4c86afcbe7c113`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Tue, 30 Aug 2016 21:00:51 GMT
ADD file:f2453b914e7e026efd39c6321c7b14509b6d09dd3cf5567a8f6bd38466e06954 in / 
# Tue, 30 Aug 2016 21:00:52 GMT
CMD ["/bin/bash"]
# Wed, 31 Aug 2016 00:45:39 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Wed, 31 Aug 2016 00:45:39 GMT
ENV GOSU_VERSION=1.7
# Wed, 31 Aug 2016 00:45:59 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 31 Aug 2016 00:46:06 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Wed, 31 Aug 2016 00:46:06 GMT
ENV LANG=en_US.utf8
# Wed, 31 Aug 2016 00:46:07 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 31 Aug 2016 00:46:09 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8
# Wed, 31 Aug 2016 00:49:32 GMT
ENV PG_MAJOR=9.1
# Wed, 31 Aug 2016 00:49:32 GMT
ENV PG_VERSION=9.1.23-1.pgdg80+1
# Wed, 31 Aug 2016 00:49:33 GMT
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main' $PG_MAJOR > /etc/apt/sources.list.d/pgdg.list
# Wed, 31 Aug 2016 00:50:17 GMT
RUN apt-get update 	&& apt-get install -y postgresql-common 	&& sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf 	&& apt-get install -y 		postgresql-$PG_MAJOR=$PG_VERSION 		postgresql-contrib-$PG_MAJOR=$PG_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Wed, 31 Aug 2016 00:50:18 GMT
RUN mv -v /usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample /usr/share/postgresql/$PG_MAJOR/ 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Wed, 31 Aug 2016 00:50:19 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres /var/run/postgresql
# Wed, 31 Aug 2016 00:50:19 GMT
ENV PATH=/usr/lib/postgresql/9.1/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 31 Aug 2016 00:50:20 GMT
ENV PGDATA=/var/lib/postgresql/data
# Wed, 31 Aug 2016 00:50:20 GMT
VOLUME [/var/lib/postgresql/data]
# Wed, 31 Aug 2016 00:50:20 GMT
COPY file:aefa30113260f63949e77cbc9a66aa22f27b1f79479507fd0d32f9b6a6994d69 in / 
# Wed, 31 Aug 2016 00:50:20 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 31 Aug 2016 00:50:21 GMT
EXPOSE 5432/tcp
# Wed, 31 Aug 2016 00:50:21 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:8ad8b3f87b378cfae583fef34e47a3c9203847d779961b7351cbf786af0bc09f`  
		Last Modified: Tue, 30 Aug 2016 21:02:02 GMT  
		Size: 51.4 MB (51367268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5f4a4b21ab64fec41dfca87cb7cb13db2e5fbbe7196d3d560af3156ec8879dd`  
		Last Modified: Wed, 07 Sep 2016 19:07:45 GMT  
		Size: 2.0 KB (2040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba05db8b0a52f4928063df9ec4b2109198c3956acc4a108c939080c8e09f0733`  
		Last Modified: Wed, 07 Sep 2016 19:07:45 GMT  
		Size: 1.2 MB (1216661 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47b491cd21ab6c64c15757f4c728eedc43239c74f9db75a5cededd8054c873b7`  
		Last Modified: Wed, 07 Sep 2016 19:07:46 GMT  
		Size: 6.9 MB (6864083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d70407e3e64d19d135a5d4b3fc0bc1cec563978ff76ffad4d29cbcf386ca5a7f`  
		Last Modified: Wed, 07 Sep 2016 19:07:42 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:295c246dd69f7c6aa274bf3bc0aab6cfa91d39abb57c6ed3a6abdccd7af31c83`  
		Last Modified: Wed, 07 Sep 2016 19:07:42 GMT  
		Size: 3.4 KB (3411 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dcfe53f9dbcba72eddeb59efa4f20ea8526fc3b4aa41867e4d7eceae74f80f10`  
		Last Modified: Wed, 07 Sep 2016 19:11:10 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4ed12433f6d1dceaa5f56b5b9437c0aa5ee1ee6402f6a88431e753779f5f585`  
		Last Modified: Wed, 07 Sep 2016 19:11:23 GMT  
		Size: 40.7 MB (40739830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a1c7b991101c11897261aff08648362faf1a03fb0504bd5787f018784c8e6c1`  
		Last Modified: Wed, 07 Sep 2016 19:11:08 GMT  
		Size: 6.3 KB (6297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3db1a3762e74b640784af08c1aaad6970e8dd4bc0ea37166eadfc1a5320df409`  
		Last Modified: Wed, 07 Sep 2016 19:11:08 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba1c1230434f7707eba6359ab2eeddf525b7605efaf0b6ece900150e3e6f3924`  
		Last Modified: Wed, 07 Sep 2016 19:11:07 GMT  
		Size: 1.3 KB (1253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.1`

```console
$ docker pull postgres@sha256:a05be934b39ab6f79ec9a751b913636d5e7ad56b64f43b85e53b81dcace57e26
```

-	Platforms:
	-	linux; amd64

### `postgres:9.1` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **100.2 MB (100201316 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4c2deed3bfa47e311f6bce2dbcb9b1556f9fc51f4449fd587d4c86afcbe7c113`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Tue, 30 Aug 2016 21:00:51 GMT
ADD file:f2453b914e7e026efd39c6321c7b14509b6d09dd3cf5567a8f6bd38466e06954 in / 
# Tue, 30 Aug 2016 21:00:52 GMT
CMD ["/bin/bash"]
# Wed, 31 Aug 2016 00:45:39 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Wed, 31 Aug 2016 00:45:39 GMT
ENV GOSU_VERSION=1.7
# Wed, 31 Aug 2016 00:45:59 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 31 Aug 2016 00:46:06 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Wed, 31 Aug 2016 00:46:06 GMT
ENV LANG=en_US.utf8
# Wed, 31 Aug 2016 00:46:07 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 31 Aug 2016 00:46:09 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8
# Wed, 31 Aug 2016 00:49:32 GMT
ENV PG_MAJOR=9.1
# Wed, 31 Aug 2016 00:49:32 GMT
ENV PG_VERSION=9.1.23-1.pgdg80+1
# Wed, 31 Aug 2016 00:49:33 GMT
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main' $PG_MAJOR > /etc/apt/sources.list.d/pgdg.list
# Wed, 31 Aug 2016 00:50:17 GMT
RUN apt-get update 	&& apt-get install -y postgresql-common 	&& sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf 	&& apt-get install -y 		postgresql-$PG_MAJOR=$PG_VERSION 		postgresql-contrib-$PG_MAJOR=$PG_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Wed, 31 Aug 2016 00:50:18 GMT
RUN mv -v /usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample /usr/share/postgresql/$PG_MAJOR/ 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Wed, 31 Aug 2016 00:50:19 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres /var/run/postgresql
# Wed, 31 Aug 2016 00:50:19 GMT
ENV PATH=/usr/lib/postgresql/9.1/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 31 Aug 2016 00:50:20 GMT
ENV PGDATA=/var/lib/postgresql/data
# Wed, 31 Aug 2016 00:50:20 GMT
VOLUME [/var/lib/postgresql/data]
# Wed, 31 Aug 2016 00:50:20 GMT
COPY file:aefa30113260f63949e77cbc9a66aa22f27b1f79479507fd0d32f9b6a6994d69 in / 
# Wed, 31 Aug 2016 00:50:20 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 31 Aug 2016 00:50:21 GMT
EXPOSE 5432/tcp
# Wed, 31 Aug 2016 00:50:21 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:8ad8b3f87b378cfae583fef34e47a3c9203847d779961b7351cbf786af0bc09f`  
		Last Modified: Tue, 30 Aug 2016 21:02:02 GMT  
		Size: 51.4 MB (51367268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5f4a4b21ab64fec41dfca87cb7cb13db2e5fbbe7196d3d560af3156ec8879dd`  
		Last Modified: Wed, 07 Sep 2016 19:07:45 GMT  
		Size: 2.0 KB (2040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba05db8b0a52f4928063df9ec4b2109198c3956acc4a108c939080c8e09f0733`  
		Last Modified: Wed, 07 Sep 2016 19:07:45 GMT  
		Size: 1.2 MB (1216661 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47b491cd21ab6c64c15757f4c728eedc43239c74f9db75a5cededd8054c873b7`  
		Last Modified: Wed, 07 Sep 2016 19:07:46 GMT  
		Size: 6.9 MB (6864083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d70407e3e64d19d135a5d4b3fc0bc1cec563978ff76ffad4d29cbcf386ca5a7f`  
		Last Modified: Wed, 07 Sep 2016 19:07:42 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:295c246dd69f7c6aa274bf3bc0aab6cfa91d39abb57c6ed3a6abdccd7af31c83`  
		Last Modified: Wed, 07 Sep 2016 19:07:42 GMT  
		Size: 3.4 KB (3411 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dcfe53f9dbcba72eddeb59efa4f20ea8526fc3b4aa41867e4d7eceae74f80f10`  
		Last Modified: Wed, 07 Sep 2016 19:11:10 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4ed12433f6d1dceaa5f56b5b9437c0aa5ee1ee6402f6a88431e753779f5f585`  
		Last Modified: Wed, 07 Sep 2016 19:11:23 GMT  
		Size: 40.7 MB (40739830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a1c7b991101c11897261aff08648362faf1a03fb0504bd5787f018784c8e6c1`  
		Last Modified: Wed, 07 Sep 2016 19:11:08 GMT  
		Size: 6.3 KB (6297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3db1a3762e74b640784af08c1aaad6970e8dd4bc0ea37166eadfc1a5320df409`  
		Last Modified: Wed, 07 Sep 2016 19:11:08 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba1c1230434f7707eba6359ab2eeddf525b7605efaf0b6ece900150e3e6f3924`  
		Last Modified: Wed, 07 Sep 2016 19:11:07 GMT  
		Size: 1.3 KB (1253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
