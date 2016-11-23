<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `postgres`

-	[`postgres:9.6.1`](#postgres961)
-	[`postgres:9.6`](#postgres96)
-	[`postgres:9`](#postgres9)
-	[`postgres:latest`](#postgreslatest)
-	[`postgres:9.6.1-alpine`](#postgres961-alpine)
-	[`postgres:9.6-alpine`](#postgres96-alpine)
-	[`postgres:9-alpine`](#postgres9-alpine)
-	[`postgres:alpine`](#postgresalpine)
-	[`postgres:9.5.5`](#postgres955)
-	[`postgres:9.5`](#postgres95)
-	[`postgres:9.5.5-alpine`](#postgres955-alpine)
-	[`postgres:9.5-alpine`](#postgres95-alpine)
-	[`postgres:9.4.10`](#postgres9410)
-	[`postgres:9.4`](#postgres94)
-	[`postgres:9.4.10-alpine`](#postgres9410-alpine)
-	[`postgres:9.4-alpine`](#postgres94-alpine)
-	[`postgres:9.3.15`](#postgres9315)
-	[`postgres:9.3`](#postgres93)
-	[`postgres:9.3.15-alpine`](#postgres9315-alpine)
-	[`postgres:9.3-alpine`](#postgres93-alpine)
-	[`postgres:9.2.19`](#postgres9219)
-	[`postgres:9.2`](#postgres92)
-	[`postgres:9.2.19-alpine`](#postgres9219-alpine)
-	[`postgres:9.2-alpine`](#postgres92-alpine)

## `postgres:9.6.1`

```console
$ docker pull postgres@sha256:3aa888ee9bf0f0e408e23d05bfe1243cd61d3c39a44eb439ba228a4b35e6add6
```

-	Platforms:
	-	linux; amd64

### `postgres:9.6.1` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **101.6 MB (101590267 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d12be754b93804898ecfd64da3bc0d91574275d176057150f430dde8ab17fad7`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 07 Nov 2016 20:30:25 GMT
ADD file:41ea5187c50116884c38d9ec51d920d79cfaeb2a61c52e07a97f457419a10a4f in / 
# Mon, 07 Nov 2016 20:30:26 GMT
CMD ["/bin/bash"]
# Wed, 09 Nov 2016 00:18:10 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Wed, 09 Nov 2016 00:18:10 GMT
ENV GOSU_VERSION=1.7
# Wed, 09 Nov 2016 00:18:26 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 09 Nov 2016 00:18:33 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Wed, 09 Nov 2016 00:18:34 GMT
ENV LANG=en_US.utf8
# Wed, 09 Nov 2016 00:18:35 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 09 Nov 2016 00:18:36 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8
# Wed, 09 Nov 2016 00:18:37 GMT
ENV PG_MAJOR=9.6
# Wed, 09 Nov 2016 00:18:37 GMT
ENV PG_VERSION=9.6.1-1.pgdg80+1
# Wed, 09 Nov 2016 00:18:38 GMT
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main' $PG_MAJOR > /etc/apt/sources.list.d/pgdg.list
# Wed, 09 Nov 2016 00:19:09 GMT
RUN apt-get update 	&& apt-get install -y postgresql-common 	&& sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf 	&& apt-get install -y 		postgresql-$PG_MAJOR=$PG_VERSION 		postgresql-contrib-$PG_MAJOR=$PG_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Wed, 09 Nov 2016 00:19:10 GMT
RUN mv -v /usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample /usr/share/postgresql/$PG_MAJOR/ 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Wed, 09 Nov 2016 00:19:11 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres /var/run/postgresql
# Wed, 09 Nov 2016 00:19:11 GMT
ENV PATH=/usr/lib/postgresql/9.6/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 09 Nov 2016 00:19:12 GMT
ENV PGDATA=/var/lib/postgresql/data
# Wed, 09 Nov 2016 00:19:12 GMT
VOLUME [/var/lib/postgresql/data]
# Wed, 23 Nov 2016 21:14:07 GMT
COPY file:efecaa19cd3c39d8361a64a87004058b980e4335449a69679abda593d1b239c0 in / 
# Wed, 23 Nov 2016 21:14:07 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 23 Nov 2016 21:14:08 GMT
EXPOSE 5432/tcp
# Wed, 23 Nov 2016 21:14:08 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:386a066cd84a33a04d560c42bef66d1dd64ebfc76de78550e5fd0f8d57778bca`  
		Last Modified: Mon, 07 Nov 2016 20:34:04 GMT  
		Size: 51.4 MB (51356989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6dd80b38d38d8795d2d1d4b7e6407375622ed669f7f184ca0f5ac6329a87e32`  
		Last Modified: Wed, 09 Nov 2016 00:19:30 GMT  
		Size: 2.0 KB (2049 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cd70682382125f5b4e0c4fd41ec1b1993546c95fa96ed34e09381531db0a970`  
		Last Modified: Wed, 09 Nov 2016 00:19:30 GMT  
		Size: 1.2 MB (1216443 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40c17ac202a9dfd6a1b57d79df607a33b4eb0c1bdf9e1c7293e3583f715d2e82`  
		Last Modified: Wed, 09 Nov 2016 00:19:32 GMT  
		Size: 6.9 MB (6865033 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7380b383ba3d47b452f0f180fd5e51fc8bf6cea7f5ee9aaf3e5e78d68fa6c858`  
		Last Modified: Wed, 09 Nov 2016 00:19:28 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:538e418b46ce31a93ad0441c15b18f652bb3f32f05e3963194bc06d4ecb3a60c`  
		Last Modified: Wed, 09 Nov 2016 00:19:28 GMT  
		Size: 3.4 KB (3414 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3b9d41b7758f494e5723498f58d6103de53cad1dcfa2ed3047c56ef627b3035`  
		Last Modified: Wed, 09 Nov 2016 00:19:26 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd4f9522dd30df935e10caf88863696866534a8e0909a39950d1d9417cc2c091`  
		Last Modified: Wed, 09 Nov 2016 00:19:39 GMT  
		Size: 42.1 MB (42137185 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:920e548f9635b9e70b8fbf14d39e1a58d41def2401ee8e131c0b0d46abba0a85`  
		Last Modified: Wed, 09 Nov 2016 00:19:26 GMT  
		Size: 7.2 KB (7152 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:628af7ef2ee5a0f0c2e5a0b25f5ad0925f180a1722dc058bee63aa3b0b08aed2`  
		Last Modified: Wed, 09 Nov 2016 00:19:26 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01f12ce0282886593c378eb635a15968dda27e2c5cd2bd3e4a92ebf12dff42b9`  
		Last Modified: Wed, 23 Nov 2016 21:24:20 GMT  
		Size: 1.5 KB (1530 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.6`

```console
$ docker pull postgres@sha256:3da198a1846d1fa6cf55978c8326d5c7e801155843c469ce9213cdbb25b5ae33
```

-	Platforms:
	-	linux; amd64

### `postgres:9.6` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **101.6 MB (101590008 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b06da01ac31f24b9cbf3dc60829d3d5288f2d16ce8747b8afe6d933da90fb1da`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 07 Nov 2016 20:30:25 GMT
ADD file:41ea5187c50116884c38d9ec51d920d79cfaeb2a61c52e07a97f457419a10a4f in / 
# Mon, 07 Nov 2016 20:30:26 GMT
CMD ["/bin/bash"]
# Wed, 09 Nov 2016 00:18:10 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Wed, 09 Nov 2016 00:18:10 GMT
ENV GOSU_VERSION=1.7
# Wed, 09 Nov 2016 00:18:26 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 09 Nov 2016 00:18:33 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Wed, 09 Nov 2016 00:18:34 GMT
ENV LANG=en_US.utf8
# Wed, 09 Nov 2016 00:18:35 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 09 Nov 2016 00:18:36 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8
# Wed, 09 Nov 2016 00:18:37 GMT
ENV PG_MAJOR=9.6
# Wed, 09 Nov 2016 00:18:37 GMT
ENV PG_VERSION=9.6.1-1.pgdg80+1
# Wed, 09 Nov 2016 00:18:38 GMT
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main' $PG_MAJOR > /etc/apt/sources.list.d/pgdg.list
# Wed, 09 Nov 2016 00:19:09 GMT
RUN apt-get update 	&& apt-get install -y postgresql-common 	&& sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf 	&& apt-get install -y 		postgresql-$PG_MAJOR=$PG_VERSION 		postgresql-contrib-$PG_MAJOR=$PG_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Wed, 09 Nov 2016 00:19:10 GMT
RUN mv -v /usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample /usr/share/postgresql/$PG_MAJOR/ 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Wed, 09 Nov 2016 00:19:11 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres /var/run/postgresql
# Wed, 09 Nov 2016 00:19:11 GMT
ENV PATH=/usr/lib/postgresql/9.6/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 09 Nov 2016 00:19:12 GMT
ENV PGDATA=/var/lib/postgresql/data
# Wed, 09 Nov 2016 00:19:12 GMT
VOLUME [/var/lib/postgresql/data]
# Wed, 09 Nov 2016 00:19:13 GMT
COPY file:4b356f6912993c9d5f125faa3c148085ac46c2af55c8ae0c7001052402825fef in / 
# Wed, 09 Nov 2016 00:19:13 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 09 Nov 2016 00:19:13 GMT
EXPOSE 5432/tcp
# Wed, 09 Nov 2016 00:19:14 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:386a066cd84a33a04d560c42bef66d1dd64ebfc76de78550e5fd0f8d57778bca`  
		Last Modified: Mon, 07 Nov 2016 20:34:04 GMT  
		Size: 51.4 MB (51356989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6dd80b38d38d8795d2d1d4b7e6407375622ed669f7f184ca0f5ac6329a87e32`  
		Last Modified: Wed, 09 Nov 2016 00:19:30 GMT  
		Size: 2.0 KB (2049 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cd70682382125f5b4e0c4fd41ec1b1993546c95fa96ed34e09381531db0a970`  
		Last Modified: Wed, 09 Nov 2016 00:19:30 GMT  
		Size: 1.2 MB (1216443 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40c17ac202a9dfd6a1b57d79df607a33b4eb0c1bdf9e1c7293e3583f715d2e82`  
		Last Modified: Wed, 09 Nov 2016 00:19:32 GMT  
		Size: 6.9 MB (6865033 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7380b383ba3d47b452f0f180fd5e51fc8bf6cea7f5ee9aaf3e5e78d68fa6c858`  
		Last Modified: Wed, 09 Nov 2016 00:19:28 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:538e418b46ce31a93ad0441c15b18f652bb3f32f05e3963194bc06d4ecb3a60c`  
		Last Modified: Wed, 09 Nov 2016 00:19:28 GMT  
		Size: 3.4 KB (3414 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3b9d41b7758f494e5723498f58d6103de53cad1dcfa2ed3047c56ef627b3035`  
		Last Modified: Wed, 09 Nov 2016 00:19:26 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd4f9522dd30df935e10caf88863696866534a8e0909a39950d1d9417cc2c091`  
		Last Modified: Wed, 09 Nov 2016 00:19:39 GMT  
		Size: 42.1 MB (42137185 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:920e548f9635b9e70b8fbf14d39e1a58d41def2401ee8e131c0b0d46abba0a85`  
		Last Modified: Wed, 09 Nov 2016 00:19:26 GMT  
		Size: 7.2 KB (7152 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:628af7ef2ee5a0f0c2e5a0b25f5ad0925f180a1722dc058bee63aa3b0b08aed2`  
		Last Modified: Wed, 09 Nov 2016 00:19:26 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:211678575a063c19b87b3200e04322d0bcf06f1085334566345b98a80bd6364b`  
		Last Modified: Wed, 09 Nov 2016 00:19:26 GMT  
		Size: 1.3 KB (1271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9`

```console
$ docker pull postgres@sha256:3aa888ee9bf0f0e408e23d05bfe1243cd61d3c39a44eb439ba228a4b35e6add6
```

-	Platforms:
	-	linux; amd64

### `postgres:9` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **101.6 MB (101590267 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d12be754b93804898ecfd64da3bc0d91574275d176057150f430dde8ab17fad7`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 07 Nov 2016 20:30:25 GMT
ADD file:41ea5187c50116884c38d9ec51d920d79cfaeb2a61c52e07a97f457419a10a4f in / 
# Mon, 07 Nov 2016 20:30:26 GMT
CMD ["/bin/bash"]
# Wed, 09 Nov 2016 00:18:10 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Wed, 09 Nov 2016 00:18:10 GMT
ENV GOSU_VERSION=1.7
# Wed, 09 Nov 2016 00:18:26 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 09 Nov 2016 00:18:33 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Wed, 09 Nov 2016 00:18:34 GMT
ENV LANG=en_US.utf8
# Wed, 09 Nov 2016 00:18:35 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 09 Nov 2016 00:18:36 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8
# Wed, 09 Nov 2016 00:18:37 GMT
ENV PG_MAJOR=9.6
# Wed, 09 Nov 2016 00:18:37 GMT
ENV PG_VERSION=9.6.1-1.pgdg80+1
# Wed, 09 Nov 2016 00:18:38 GMT
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main' $PG_MAJOR > /etc/apt/sources.list.d/pgdg.list
# Wed, 09 Nov 2016 00:19:09 GMT
RUN apt-get update 	&& apt-get install -y postgresql-common 	&& sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf 	&& apt-get install -y 		postgresql-$PG_MAJOR=$PG_VERSION 		postgresql-contrib-$PG_MAJOR=$PG_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Wed, 09 Nov 2016 00:19:10 GMT
RUN mv -v /usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample /usr/share/postgresql/$PG_MAJOR/ 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Wed, 09 Nov 2016 00:19:11 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres /var/run/postgresql
# Wed, 09 Nov 2016 00:19:11 GMT
ENV PATH=/usr/lib/postgresql/9.6/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 09 Nov 2016 00:19:12 GMT
ENV PGDATA=/var/lib/postgresql/data
# Wed, 09 Nov 2016 00:19:12 GMT
VOLUME [/var/lib/postgresql/data]
# Wed, 23 Nov 2016 21:14:07 GMT
COPY file:efecaa19cd3c39d8361a64a87004058b980e4335449a69679abda593d1b239c0 in / 
# Wed, 23 Nov 2016 21:14:07 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 23 Nov 2016 21:14:08 GMT
EXPOSE 5432/tcp
# Wed, 23 Nov 2016 21:14:08 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:386a066cd84a33a04d560c42bef66d1dd64ebfc76de78550e5fd0f8d57778bca`  
		Last Modified: Mon, 07 Nov 2016 20:34:04 GMT  
		Size: 51.4 MB (51356989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6dd80b38d38d8795d2d1d4b7e6407375622ed669f7f184ca0f5ac6329a87e32`  
		Last Modified: Wed, 09 Nov 2016 00:19:30 GMT  
		Size: 2.0 KB (2049 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cd70682382125f5b4e0c4fd41ec1b1993546c95fa96ed34e09381531db0a970`  
		Last Modified: Wed, 09 Nov 2016 00:19:30 GMT  
		Size: 1.2 MB (1216443 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40c17ac202a9dfd6a1b57d79df607a33b4eb0c1bdf9e1c7293e3583f715d2e82`  
		Last Modified: Wed, 09 Nov 2016 00:19:32 GMT  
		Size: 6.9 MB (6865033 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7380b383ba3d47b452f0f180fd5e51fc8bf6cea7f5ee9aaf3e5e78d68fa6c858`  
		Last Modified: Wed, 09 Nov 2016 00:19:28 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:538e418b46ce31a93ad0441c15b18f652bb3f32f05e3963194bc06d4ecb3a60c`  
		Last Modified: Wed, 09 Nov 2016 00:19:28 GMT  
		Size: 3.4 KB (3414 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3b9d41b7758f494e5723498f58d6103de53cad1dcfa2ed3047c56ef627b3035`  
		Last Modified: Wed, 09 Nov 2016 00:19:26 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd4f9522dd30df935e10caf88863696866534a8e0909a39950d1d9417cc2c091`  
		Last Modified: Wed, 09 Nov 2016 00:19:39 GMT  
		Size: 42.1 MB (42137185 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:920e548f9635b9e70b8fbf14d39e1a58d41def2401ee8e131c0b0d46abba0a85`  
		Last Modified: Wed, 09 Nov 2016 00:19:26 GMT  
		Size: 7.2 KB (7152 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:628af7ef2ee5a0f0c2e5a0b25f5ad0925f180a1722dc058bee63aa3b0b08aed2`  
		Last Modified: Wed, 09 Nov 2016 00:19:26 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01f12ce0282886593c378eb635a15968dda27e2c5cd2bd3e4a92ebf12dff42b9`  
		Last Modified: Wed, 23 Nov 2016 21:24:20 GMT  
		Size: 1.5 KB (1530 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:latest`

```console
$ docker pull postgres@sha256:3aa888ee9bf0f0e408e23d05bfe1243cd61d3c39a44eb439ba228a4b35e6add6
```

-	Platforms:
	-	linux; amd64

### `postgres:latest` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **101.6 MB (101590267 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d12be754b93804898ecfd64da3bc0d91574275d176057150f430dde8ab17fad7`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 07 Nov 2016 20:30:25 GMT
ADD file:41ea5187c50116884c38d9ec51d920d79cfaeb2a61c52e07a97f457419a10a4f in / 
# Mon, 07 Nov 2016 20:30:26 GMT
CMD ["/bin/bash"]
# Wed, 09 Nov 2016 00:18:10 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Wed, 09 Nov 2016 00:18:10 GMT
ENV GOSU_VERSION=1.7
# Wed, 09 Nov 2016 00:18:26 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 09 Nov 2016 00:18:33 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Wed, 09 Nov 2016 00:18:34 GMT
ENV LANG=en_US.utf8
# Wed, 09 Nov 2016 00:18:35 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 09 Nov 2016 00:18:36 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8
# Wed, 09 Nov 2016 00:18:37 GMT
ENV PG_MAJOR=9.6
# Wed, 09 Nov 2016 00:18:37 GMT
ENV PG_VERSION=9.6.1-1.pgdg80+1
# Wed, 09 Nov 2016 00:18:38 GMT
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main' $PG_MAJOR > /etc/apt/sources.list.d/pgdg.list
# Wed, 09 Nov 2016 00:19:09 GMT
RUN apt-get update 	&& apt-get install -y postgresql-common 	&& sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf 	&& apt-get install -y 		postgresql-$PG_MAJOR=$PG_VERSION 		postgresql-contrib-$PG_MAJOR=$PG_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Wed, 09 Nov 2016 00:19:10 GMT
RUN mv -v /usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample /usr/share/postgresql/$PG_MAJOR/ 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Wed, 09 Nov 2016 00:19:11 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres /var/run/postgresql
# Wed, 09 Nov 2016 00:19:11 GMT
ENV PATH=/usr/lib/postgresql/9.6/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 09 Nov 2016 00:19:12 GMT
ENV PGDATA=/var/lib/postgresql/data
# Wed, 09 Nov 2016 00:19:12 GMT
VOLUME [/var/lib/postgresql/data]
# Wed, 23 Nov 2016 21:14:07 GMT
COPY file:efecaa19cd3c39d8361a64a87004058b980e4335449a69679abda593d1b239c0 in / 
# Wed, 23 Nov 2016 21:14:07 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 23 Nov 2016 21:14:08 GMT
EXPOSE 5432/tcp
# Wed, 23 Nov 2016 21:14:08 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:386a066cd84a33a04d560c42bef66d1dd64ebfc76de78550e5fd0f8d57778bca`  
		Last Modified: Mon, 07 Nov 2016 20:34:04 GMT  
		Size: 51.4 MB (51356989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6dd80b38d38d8795d2d1d4b7e6407375622ed669f7f184ca0f5ac6329a87e32`  
		Last Modified: Wed, 09 Nov 2016 00:19:30 GMT  
		Size: 2.0 KB (2049 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cd70682382125f5b4e0c4fd41ec1b1993546c95fa96ed34e09381531db0a970`  
		Last Modified: Wed, 09 Nov 2016 00:19:30 GMT  
		Size: 1.2 MB (1216443 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40c17ac202a9dfd6a1b57d79df607a33b4eb0c1bdf9e1c7293e3583f715d2e82`  
		Last Modified: Wed, 09 Nov 2016 00:19:32 GMT  
		Size: 6.9 MB (6865033 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7380b383ba3d47b452f0f180fd5e51fc8bf6cea7f5ee9aaf3e5e78d68fa6c858`  
		Last Modified: Wed, 09 Nov 2016 00:19:28 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:538e418b46ce31a93ad0441c15b18f652bb3f32f05e3963194bc06d4ecb3a60c`  
		Last Modified: Wed, 09 Nov 2016 00:19:28 GMT  
		Size: 3.4 KB (3414 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3b9d41b7758f494e5723498f58d6103de53cad1dcfa2ed3047c56ef627b3035`  
		Last Modified: Wed, 09 Nov 2016 00:19:26 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd4f9522dd30df935e10caf88863696866534a8e0909a39950d1d9417cc2c091`  
		Last Modified: Wed, 09 Nov 2016 00:19:39 GMT  
		Size: 42.1 MB (42137185 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:920e548f9635b9e70b8fbf14d39e1a58d41def2401ee8e131c0b0d46abba0a85`  
		Last Modified: Wed, 09 Nov 2016 00:19:26 GMT  
		Size: 7.2 KB (7152 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:628af7ef2ee5a0f0c2e5a0b25f5ad0925f180a1722dc058bee63aa3b0b08aed2`  
		Last Modified: Wed, 09 Nov 2016 00:19:26 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01f12ce0282886593c378eb635a15968dda27e2c5cd2bd3e4a92ebf12dff42b9`  
		Last Modified: Wed, 23 Nov 2016 21:24:20 GMT  
		Size: 1.5 KB (1530 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.6.1-alpine`

```console
$ docker pull postgres@sha256:586e4ca7c54ad40aa1554bd8a2031f2d9157ce7272b0cc9f750dd9d97d0fa8ed
```

-	Platforms:
	-	linux; amd64

### `postgres:9.6.1-alpine` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.0 MB (16048522 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e79d27274a3783a82ebd05301ebcb23f32eb774d4575afd991a4b7f6ffc380c5`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Tue, 18 Oct 2016 20:31:22 GMT
ADD file:7afbc23fda8b0b3872623c16af8e3490b2cee951aed14b3794389c2f946cc8c7 in / 
# Tue, 15 Nov 2016 01:19:15 GMT
ENV LANG=en_US.utf8
# Tue, 15 Nov 2016 01:19:16 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 15 Nov 2016 01:19:16 GMT
ENV PG_MAJOR=9.6
# Tue, 15 Nov 2016 01:19:16 GMT
ENV PG_VERSION=9.6.1
# Tue, 15 Nov 2016 01:19:17 GMT
ENV PG_SHA256=e5101e0a49141fc12a7018c6dad594694d3a3325f5ab71e93e0e51bd94e51fcd
# Wed, 23 Nov 2016 21:16:12 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl 		util-linux-dev 		zlib-dev 		&& cd /usr/src/postgresql 	&& ./configure 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(getconf _NPROCESSORS_ONLN)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/include/* 	&& find /usr/local -name '*.a' -delete
# Wed, 23 Nov 2016 21:16:13 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Wed, 23 Nov 2016 21:16:14 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres /var/run/postgresql
# Wed, 23 Nov 2016 21:16:15 GMT
ENV PATH=/usr/lib/postgresql/9.6/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 23 Nov 2016 21:16:15 GMT
ENV PGDATA=/var/lib/postgresql/data
# Wed, 23 Nov 2016 21:16:15 GMT
VOLUME [/var/lib/postgresql/data]
# Wed, 23 Nov 2016 21:16:16 GMT
COPY file:6353559693115e0bdf7412143568ca5f8d185ea1dfef8f641ecc6a03e21a7f6f in / 
# Wed, 23 Nov 2016 21:16:16 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 23 Nov 2016 21:16:17 GMT
EXPOSE 5432/tcp
# Wed, 23 Nov 2016 21:16:17 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:3690ec4760f95690944da86dc4496148a63d85c9e3100669a318110092f6862f`  
		Last Modified: Tue, 18 Oct 2016 20:32:39 GMT  
		Size: 2.3 MB (2312958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:978e5b6cebed046a846f73db43c3ba2c3fb6b2cee242c3248f8c2467609d7b8b`  
		Last Modified: Tue, 15 Nov 2016 01:30:10 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c2a8e6ab89db7a9f84a569c4665f8e39e6efc343a5e896dcd5b39eb2d59f580`  
		Last Modified: Wed, 23 Nov 2016 21:25:25 GMT  
		Size: 13.7 MB (13726653 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09320e201b30d126a90701540319f8dcc85595abf266bdeee6e608d5a0787a66`  
		Last Modified: Wed, 23 Nov 2016 21:25:20 GMT  
		Size: 7.1 KB (7122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d91b304dc3ade94433568a1c02ebdc70f091947c471df1303abaa75634a1f4d1`  
		Last Modified: Wed, 23 Nov 2016 21:25:20 GMT  
		Size: 141.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5749bfd08221e09c7722c0bb3f1f1b2d90859a27cd5321573c03f58a0a7ec836`  
		Last Modified: Wed, 23 Nov 2016 21:25:21 GMT  
		Size: 1.5 KB (1534 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.6-alpine`

```console
$ docker pull postgres@sha256:586e4ca7c54ad40aa1554bd8a2031f2d9157ce7272b0cc9f750dd9d97d0fa8ed
```

-	Platforms:
	-	linux; amd64

### `postgres:9.6-alpine` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.0 MB (16048522 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e79d27274a3783a82ebd05301ebcb23f32eb774d4575afd991a4b7f6ffc380c5`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Tue, 18 Oct 2016 20:31:22 GMT
ADD file:7afbc23fda8b0b3872623c16af8e3490b2cee951aed14b3794389c2f946cc8c7 in / 
# Tue, 15 Nov 2016 01:19:15 GMT
ENV LANG=en_US.utf8
# Tue, 15 Nov 2016 01:19:16 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 15 Nov 2016 01:19:16 GMT
ENV PG_MAJOR=9.6
# Tue, 15 Nov 2016 01:19:16 GMT
ENV PG_VERSION=9.6.1
# Tue, 15 Nov 2016 01:19:17 GMT
ENV PG_SHA256=e5101e0a49141fc12a7018c6dad594694d3a3325f5ab71e93e0e51bd94e51fcd
# Wed, 23 Nov 2016 21:16:12 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl 		util-linux-dev 		zlib-dev 		&& cd /usr/src/postgresql 	&& ./configure 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(getconf _NPROCESSORS_ONLN)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/include/* 	&& find /usr/local -name '*.a' -delete
# Wed, 23 Nov 2016 21:16:13 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Wed, 23 Nov 2016 21:16:14 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres /var/run/postgresql
# Wed, 23 Nov 2016 21:16:15 GMT
ENV PATH=/usr/lib/postgresql/9.6/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 23 Nov 2016 21:16:15 GMT
ENV PGDATA=/var/lib/postgresql/data
# Wed, 23 Nov 2016 21:16:15 GMT
VOLUME [/var/lib/postgresql/data]
# Wed, 23 Nov 2016 21:16:16 GMT
COPY file:6353559693115e0bdf7412143568ca5f8d185ea1dfef8f641ecc6a03e21a7f6f in / 
# Wed, 23 Nov 2016 21:16:16 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 23 Nov 2016 21:16:17 GMT
EXPOSE 5432/tcp
# Wed, 23 Nov 2016 21:16:17 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:3690ec4760f95690944da86dc4496148a63d85c9e3100669a318110092f6862f`  
		Last Modified: Tue, 18 Oct 2016 20:32:39 GMT  
		Size: 2.3 MB (2312958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:978e5b6cebed046a846f73db43c3ba2c3fb6b2cee242c3248f8c2467609d7b8b`  
		Last Modified: Tue, 15 Nov 2016 01:30:10 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c2a8e6ab89db7a9f84a569c4665f8e39e6efc343a5e896dcd5b39eb2d59f580`  
		Last Modified: Wed, 23 Nov 2016 21:25:25 GMT  
		Size: 13.7 MB (13726653 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09320e201b30d126a90701540319f8dcc85595abf266bdeee6e608d5a0787a66`  
		Last Modified: Wed, 23 Nov 2016 21:25:20 GMT  
		Size: 7.1 KB (7122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d91b304dc3ade94433568a1c02ebdc70f091947c471df1303abaa75634a1f4d1`  
		Last Modified: Wed, 23 Nov 2016 21:25:20 GMT  
		Size: 141.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5749bfd08221e09c7722c0bb3f1f1b2d90859a27cd5321573c03f58a0a7ec836`  
		Last Modified: Wed, 23 Nov 2016 21:25:21 GMT  
		Size: 1.5 KB (1534 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9-alpine`

```console
$ docker pull postgres@sha256:586e4ca7c54ad40aa1554bd8a2031f2d9157ce7272b0cc9f750dd9d97d0fa8ed
```

-	Platforms:
	-	linux; amd64

### `postgres:9-alpine` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.0 MB (16048522 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e79d27274a3783a82ebd05301ebcb23f32eb774d4575afd991a4b7f6ffc380c5`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Tue, 18 Oct 2016 20:31:22 GMT
ADD file:7afbc23fda8b0b3872623c16af8e3490b2cee951aed14b3794389c2f946cc8c7 in / 
# Tue, 15 Nov 2016 01:19:15 GMT
ENV LANG=en_US.utf8
# Tue, 15 Nov 2016 01:19:16 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 15 Nov 2016 01:19:16 GMT
ENV PG_MAJOR=9.6
# Tue, 15 Nov 2016 01:19:16 GMT
ENV PG_VERSION=9.6.1
# Tue, 15 Nov 2016 01:19:17 GMT
ENV PG_SHA256=e5101e0a49141fc12a7018c6dad594694d3a3325f5ab71e93e0e51bd94e51fcd
# Wed, 23 Nov 2016 21:16:12 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl 		util-linux-dev 		zlib-dev 		&& cd /usr/src/postgresql 	&& ./configure 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(getconf _NPROCESSORS_ONLN)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/include/* 	&& find /usr/local -name '*.a' -delete
# Wed, 23 Nov 2016 21:16:13 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Wed, 23 Nov 2016 21:16:14 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres /var/run/postgresql
# Wed, 23 Nov 2016 21:16:15 GMT
ENV PATH=/usr/lib/postgresql/9.6/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 23 Nov 2016 21:16:15 GMT
ENV PGDATA=/var/lib/postgresql/data
# Wed, 23 Nov 2016 21:16:15 GMT
VOLUME [/var/lib/postgresql/data]
# Wed, 23 Nov 2016 21:16:16 GMT
COPY file:6353559693115e0bdf7412143568ca5f8d185ea1dfef8f641ecc6a03e21a7f6f in / 
# Wed, 23 Nov 2016 21:16:16 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 23 Nov 2016 21:16:17 GMT
EXPOSE 5432/tcp
# Wed, 23 Nov 2016 21:16:17 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:3690ec4760f95690944da86dc4496148a63d85c9e3100669a318110092f6862f`  
		Last Modified: Tue, 18 Oct 2016 20:32:39 GMT  
		Size: 2.3 MB (2312958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:978e5b6cebed046a846f73db43c3ba2c3fb6b2cee242c3248f8c2467609d7b8b`  
		Last Modified: Tue, 15 Nov 2016 01:30:10 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c2a8e6ab89db7a9f84a569c4665f8e39e6efc343a5e896dcd5b39eb2d59f580`  
		Last Modified: Wed, 23 Nov 2016 21:25:25 GMT  
		Size: 13.7 MB (13726653 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09320e201b30d126a90701540319f8dcc85595abf266bdeee6e608d5a0787a66`  
		Last Modified: Wed, 23 Nov 2016 21:25:20 GMT  
		Size: 7.1 KB (7122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d91b304dc3ade94433568a1c02ebdc70f091947c471df1303abaa75634a1f4d1`  
		Last Modified: Wed, 23 Nov 2016 21:25:20 GMT  
		Size: 141.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5749bfd08221e09c7722c0bb3f1f1b2d90859a27cd5321573c03f58a0a7ec836`  
		Last Modified: Wed, 23 Nov 2016 21:25:21 GMT  
		Size: 1.5 KB (1534 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:alpine`

```console
$ docker pull postgres@sha256:586e4ca7c54ad40aa1554bd8a2031f2d9157ce7272b0cc9f750dd9d97d0fa8ed
```

-	Platforms:
	-	linux; amd64

### `postgres:alpine` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.0 MB (16048522 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e79d27274a3783a82ebd05301ebcb23f32eb774d4575afd991a4b7f6ffc380c5`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Tue, 18 Oct 2016 20:31:22 GMT
ADD file:7afbc23fda8b0b3872623c16af8e3490b2cee951aed14b3794389c2f946cc8c7 in / 
# Tue, 15 Nov 2016 01:19:15 GMT
ENV LANG=en_US.utf8
# Tue, 15 Nov 2016 01:19:16 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 15 Nov 2016 01:19:16 GMT
ENV PG_MAJOR=9.6
# Tue, 15 Nov 2016 01:19:16 GMT
ENV PG_VERSION=9.6.1
# Tue, 15 Nov 2016 01:19:17 GMT
ENV PG_SHA256=e5101e0a49141fc12a7018c6dad594694d3a3325f5ab71e93e0e51bd94e51fcd
# Wed, 23 Nov 2016 21:16:12 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl 		util-linux-dev 		zlib-dev 		&& cd /usr/src/postgresql 	&& ./configure 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(getconf _NPROCESSORS_ONLN)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/include/* 	&& find /usr/local -name '*.a' -delete
# Wed, 23 Nov 2016 21:16:13 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Wed, 23 Nov 2016 21:16:14 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres /var/run/postgresql
# Wed, 23 Nov 2016 21:16:15 GMT
ENV PATH=/usr/lib/postgresql/9.6/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 23 Nov 2016 21:16:15 GMT
ENV PGDATA=/var/lib/postgresql/data
# Wed, 23 Nov 2016 21:16:15 GMT
VOLUME [/var/lib/postgresql/data]
# Wed, 23 Nov 2016 21:16:16 GMT
COPY file:6353559693115e0bdf7412143568ca5f8d185ea1dfef8f641ecc6a03e21a7f6f in / 
# Wed, 23 Nov 2016 21:16:16 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 23 Nov 2016 21:16:17 GMT
EXPOSE 5432/tcp
# Wed, 23 Nov 2016 21:16:17 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:3690ec4760f95690944da86dc4496148a63d85c9e3100669a318110092f6862f`  
		Last Modified: Tue, 18 Oct 2016 20:32:39 GMT  
		Size: 2.3 MB (2312958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:978e5b6cebed046a846f73db43c3ba2c3fb6b2cee242c3248f8c2467609d7b8b`  
		Last Modified: Tue, 15 Nov 2016 01:30:10 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c2a8e6ab89db7a9f84a569c4665f8e39e6efc343a5e896dcd5b39eb2d59f580`  
		Last Modified: Wed, 23 Nov 2016 21:25:25 GMT  
		Size: 13.7 MB (13726653 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09320e201b30d126a90701540319f8dcc85595abf266bdeee6e608d5a0787a66`  
		Last Modified: Wed, 23 Nov 2016 21:25:20 GMT  
		Size: 7.1 KB (7122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d91b304dc3ade94433568a1c02ebdc70f091947c471df1303abaa75634a1f4d1`  
		Last Modified: Wed, 23 Nov 2016 21:25:20 GMT  
		Size: 141.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5749bfd08221e09c7722c0bb3f1f1b2d90859a27cd5321573c03f58a0a7ec836`  
		Last Modified: Wed, 23 Nov 2016 21:25:21 GMT  
		Size: 1.5 KB (1534 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.5.5`

```console
$ docker pull postgres@sha256:c799bacde4426c0e57aaba7b2b90bd1d6ae61e5a7edbd6f36586ad2efea4444b
```

-	Platforms:
	-	linux; amd64

### `postgres:9.5.5` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **101.3 MB (101302881 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fc96933583ad11e55c71925ca2227583a21ff5abc855fcc7f84b168ec4ca0fcc`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 07 Nov 2016 20:30:25 GMT
ADD file:41ea5187c50116884c38d9ec51d920d79cfaeb2a61c52e07a97f457419a10a4f in / 
# Mon, 07 Nov 2016 20:30:26 GMT
CMD ["/bin/bash"]
# Wed, 09 Nov 2016 00:18:10 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Wed, 09 Nov 2016 00:18:10 GMT
ENV GOSU_VERSION=1.7
# Wed, 09 Nov 2016 00:18:26 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 09 Nov 2016 00:18:33 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Wed, 09 Nov 2016 00:18:34 GMT
ENV LANG=en_US.utf8
# Wed, 09 Nov 2016 00:18:35 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 09 Nov 2016 00:18:36 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8
# Wed, 09 Nov 2016 00:24:43 GMT
ENV PG_MAJOR=9.5
# Wed, 09 Nov 2016 00:24:43 GMT
ENV PG_VERSION=9.5.5-1.pgdg80+1
# Wed, 09 Nov 2016 00:24:44 GMT
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main' $PG_MAJOR > /etc/apt/sources.list.d/pgdg.list
# Wed, 09 Nov 2016 00:25:12 GMT
RUN apt-get update 	&& apt-get install -y postgresql-common 	&& sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf 	&& apt-get install -y 		postgresql-$PG_MAJOR=$PG_VERSION 		postgresql-contrib-$PG_MAJOR=$PG_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Wed, 09 Nov 2016 00:25:13 GMT
RUN mv -v /usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample /usr/share/postgresql/$PG_MAJOR/ 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Wed, 09 Nov 2016 00:25:14 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres /var/run/postgresql
# Wed, 09 Nov 2016 00:25:14 GMT
ENV PATH=/usr/lib/postgresql/9.5/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 09 Nov 2016 00:25:14 GMT
ENV PGDATA=/var/lib/postgresql/data
# Wed, 09 Nov 2016 00:25:15 GMT
VOLUME [/var/lib/postgresql/data]
# Wed, 09 Nov 2016 00:25:15 GMT
COPY file:4b356f6912993c9d5f125faa3c148085ac46c2af55c8ae0c7001052402825fef in / 
# Wed, 09 Nov 2016 00:25:16 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 09 Nov 2016 00:25:16 GMT
EXPOSE 5432/tcp
# Wed, 09 Nov 2016 00:25:17 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:386a066cd84a33a04d560c42bef66d1dd64ebfc76de78550e5fd0f8d57778bca`  
		Last Modified: Mon, 07 Nov 2016 20:34:04 GMT  
		Size: 51.4 MB (51356989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6dd80b38d38d8795d2d1d4b7e6407375622ed669f7f184ca0f5ac6329a87e32`  
		Last Modified: Wed, 09 Nov 2016 00:19:30 GMT  
		Size: 2.0 KB (2049 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cd70682382125f5b4e0c4fd41ec1b1993546c95fa96ed34e09381531db0a970`  
		Last Modified: Wed, 09 Nov 2016 00:19:30 GMT  
		Size: 1.2 MB (1216443 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40c17ac202a9dfd6a1b57d79df607a33b4eb0c1bdf9e1c7293e3583f715d2e82`  
		Last Modified: Wed, 09 Nov 2016 00:19:32 GMT  
		Size: 6.9 MB (6865033 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7380b383ba3d47b452f0f180fd5e51fc8bf6cea7f5ee9aaf3e5e78d68fa6c858`  
		Last Modified: Wed, 09 Nov 2016 00:19:28 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:538e418b46ce31a93ad0441c15b18f652bb3f32f05e3963194bc06d4ecb3a60c`  
		Last Modified: Wed, 09 Nov 2016 00:19:28 GMT  
		Size: 3.4 KB (3414 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94d2299e5dca6d907d0072fa50778c77efbd8896ebaa0e45525b769402cd0ee7`  
		Last Modified: Wed, 09 Nov 2016 00:25:28 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15cc322e0111e79770485ea004b0f1a5f71240fb80f41f8f93a2e34a5684e85b`  
		Last Modified: Wed, 09 Nov 2016 00:25:39 GMT  
		Size: 41.9 MB (41850356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfcccad2e1594a6e96d6d66a4d63a43d9c4c095615dab60d7f611614286e2db4`  
		Last Modified: Wed, 09 Nov 2016 00:25:28 GMT  
		Size: 6.9 KB (6856 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:323df6818afe10ee0cf332bb07bd03ac5e62e656731725993c8634957c416a20`  
		Last Modified: Wed, 09 Nov 2016 00:25:28 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9908e2779cd765d319af7c8e2892d95450198c3aa8a9ca5f3bc52da9e2bd5817`  
		Last Modified: Wed, 09 Nov 2016 00:25:28 GMT  
		Size: 1.3 KB (1270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.5`

```console
$ docker pull postgres@sha256:732c23dbbd3d6330205f515ac81ae3ecc4fa488ca6eac7296774ff38059f737c
```

-	Platforms:
	-	linux; amd64

### `postgres:9.5` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **101.3 MB (101303141 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:507c0986d23a684c5abb69f7df41222081e4f4acd5ec33a2dc95f083c0b9db80`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 07 Nov 2016 20:30:25 GMT
ADD file:41ea5187c50116884c38d9ec51d920d79cfaeb2a61c52e07a97f457419a10a4f in / 
# Mon, 07 Nov 2016 20:30:26 GMT
CMD ["/bin/bash"]
# Wed, 09 Nov 2016 00:18:10 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Wed, 09 Nov 2016 00:18:10 GMT
ENV GOSU_VERSION=1.7
# Wed, 09 Nov 2016 00:18:26 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 09 Nov 2016 00:18:33 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Wed, 09 Nov 2016 00:18:34 GMT
ENV LANG=en_US.utf8
# Wed, 09 Nov 2016 00:18:35 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 09 Nov 2016 00:18:36 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8
# Wed, 09 Nov 2016 00:24:43 GMT
ENV PG_MAJOR=9.5
# Wed, 09 Nov 2016 00:24:43 GMT
ENV PG_VERSION=9.5.5-1.pgdg80+1
# Wed, 09 Nov 2016 00:24:44 GMT
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main' $PG_MAJOR > /etc/apt/sources.list.d/pgdg.list
# Wed, 09 Nov 2016 00:25:12 GMT
RUN apt-get update 	&& apt-get install -y postgresql-common 	&& sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf 	&& apt-get install -y 		postgresql-$PG_MAJOR=$PG_VERSION 		postgresql-contrib-$PG_MAJOR=$PG_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Wed, 09 Nov 2016 00:25:13 GMT
RUN mv -v /usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample /usr/share/postgresql/$PG_MAJOR/ 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Wed, 09 Nov 2016 00:25:14 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres /var/run/postgresql
# Wed, 09 Nov 2016 00:25:14 GMT
ENV PATH=/usr/lib/postgresql/9.5/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 09 Nov 2016 00:25:14 GMT
ENV PGDATA=/var/lib/postgresql/data
# Wed, 09 Nov 2016 00:25:15 GMT
VOLUME [/var/lib/postgresql/data]
# Wed, 23 Nov 2016 21:16:18 GMT
COPY file:efecaa19cd3c39d8361a64a87004058b980e4335449a69679abda593d1b239c0 in / 
# Wed, 23 Nov 2016 21:16:19 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 23 Nov 2016 21:16:19 GMT
EXPOSE 5432/tcp
# Wed, 23 Nov 2016 21:16:19 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:386a066cd84a33a04d560c42bef66d1dd64ebfc76de78550e5fd0f8d57778bca`  
		Last Modified: Mon, 07 Nov 2016 20:34:04 GMT  
		Size: 51.4 MB (51356989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6dd80b38d38d8795d2d1d4b7e6407375622ed669f7f184ca0f5ac6329a87e32`  
		Last Modified: Wed, 09 Nov 2016 00:19:30 GMT  
		Size: 2.0 KB (2049 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cd70682382125f5b4e0c4fd41ec1b1993546c95fa96ed34e09381531db0a970`  
		Last Modified: Wed, 09 Nov 2016 00:19:30 GMT  
		Size: 1.2 MB (1216443 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40c17ac202a9dfd6a1b57d79df607a33b4eb0c1bdf9e1c7293e3583f715d2e82`  
		Last Modified: Wed, 09 Nov 2016 00:19:32 GMT  
		Size: 6.9 MB (6865033 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7380b383ba3d47b452f0f180fd5e51fc8bf6cea7f5ee9aaf3e5e78d68fa6c858`  
		Last Modified: Wed, 09 Nov 2016 00:19:28 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:538e418b46ce31a93ad0441c15b18f652bb3f32f05e3963194bc06d4ecb3a60c`  
		Last Modified: Wed, 09 Nov 2016 00:19:28 GMT  
		Size: 3.4 KB (3414 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94d2299e5dca6d907d0072fa50778c77efbd8896ebaa0e45525b769402cd0ee7`  
		Last Modified: Wed, 09 Nov 2016 00:25:28 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15cc322e0111e79770485ea004b0f1a5f71240fb80f41f8f93a2e34a5684e85b`  
		Last Modified: Wed, 09 Nov 2016 00:25:39 GMT  
		Size: 41.9 MB (41850356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfcccad2e1594a6e96d6d66a4d63a43d9c4c095615dab60d7f611614286e2db4`  
		Last Modified: Wed, 09 Nov 2016 00:25:28 GMT  
		Size: 6.9 KB (6856 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:323df6818afe10ee0cf332bb07bd03ac5e62e656731725993c8634957c416a20`  
		Last Modified: Wed, 09 Nov 2016 00:25:28 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce4a72797e50e0b0dea3d30a58594ed5d71b0f76badb02a5251bead49db4f6d7`  
		Last Modified: Wed, 23 Nov 2016 21:26:26 GMT  
		Size: 1.5 KB (1530 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.5.5-alpine`

```console
$ docker pull postgres@sha256:21a96564f4d19e43fadff61eb94181402360a5d4dffcf2fe07e2b381ae68098d
```

-	Platforms:
	-	linux; amd64

### `postgres:9.5.5-alpine` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.3 MB (15330422 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9f1124f8441f3588339f208b44560969aff216bb4b3e8bcacc8776bae2ab66ca`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Tue, 18 Oct 2016 20:31:22 GMT
ADD file:7afbc23fda8b0b3872623c16af8e3490b2cee951aed14b3794389c2f946cc8c7 in / 
# Tue, 15 Nov 2016 01:19:15 GMT
ENV LANG=en_US.utf8
# Tue, 15 Nov 2016 01:19:16 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 15 Nov 2016 01:21:25 GMT
ENV PG_MAJOR=9.5
# Tue, 15 Nov 2016 01:21:25 GMT
ENV PG_VERSION=9.5.5
# Tue, 15 Nov 2016 01:21:26 GMT
ENV PG_SHA256=02c65290be74de6604c3fed87c9fd3e6b32e949f0ab8105a75bd7ed5aa71f394
# Tue, 15 Nov 2016 01:23:24 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl 		util-linux-dev 		zlib-dev 		&& cd /usr/src/postgresql 	&& ./configure 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(getconf _NPROCESSORS_ONLN)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/include/* 	&& find /usr/local -name '*.a' -delete
# Tue, 15 Nov 2016 01:23:25 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Tue, 15 Nov 2016 01:23:26 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres /var/run/postgresql
# Tue, 15 Nov 2016 01:23:27 GMT
ENV PATH=/usr/lib/postgresql/9.5/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 15 Nov 2016 01:23:27 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 15 Nov 2016 01:23:27 GMT
VOLUME [/var/lib/postgresql/data]
# Tue, 15 Nov 2016 01:23:28 GMT
COPY file:92c6a119d6f4bf342ba2f140cfddd0f77c7e7f71a79a0c309322413cc95ddd6e in / 
# Tue, 15 Nov 2016 01:23:28 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 15 Nov 2016 01:23:29 GMT
EXPOSE 5432/tcp
# Tue, 15 Nov 2016 01:23:29 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:3690ec4760f95690944da86dc4496148a63d85c9e3100669a318110092f6862f`  
		Last Modified: Tue, 18 Oct 2016 20:32:39 GMT  
		Size: 2.3 MB (2312958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:978e5b6cebed046a846f73db43c3ba2c3fb6b2cee242c3248f8c2467609d7b8b`  
		Last Modified: Tue, 15 Nov 2016 01:30:10 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:648dafc410ec7ee1436e0b3f7da44f34d5ed434b9127d6d06de102613136d866`  
		Last Modified: Tue, 15 Nov 2016 01:31:46 GMT  
		Size: 13.0 MB (13009116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56b5d613273b73921eb119188d42fa0ea604d5460cd73b105c537c7fff89bf13`  
		Last Modified: Tue, 15 Nov 2016 01:31:38 GMT  
		Size: 6.8 KB (6824 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3acced25824a72c9cc37768acf0d6fb3416566de57dbd94f524acaebe69a0437`  
		Last Modified: Tue, 15 Nov 2016 01:31:38 GMT  
		Size: 137.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5a0574552436d59101edef373a8652029ec36902908130b8bcff3ba600f9680`  
		Last Modified: Tue, 15 Nov 2016 01:31:39 GMT  
		Size: 1.3 KB (1273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.5-alpine`

```console
$ docker pull postgres@sha256:c978e09f08e7a401e97dc0972a2ec9b6f8162994dfdc6526a1022409d13e8c6e
```

-	Platforms:
	-	linux; amd64

### `postgres:9.5-alpine` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.7 MB (15697908 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9294db33b27e17b7617e19f37b833aa33d56f78e2e50d6e5880deff1e9da56d5`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Tue, 18 Oct 2016 20:31:22 GMT
ADD file:7afbc23fda8b0b3872623c16af8e3490b2cee951aed14b3794389c2f946cc8c7 in / 
# Tue, 15 Nov 2016 01:19:15 GMT
ENV LANG=en_US.utf8
# Tue, 15 Nov 2016 01:19:16 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 15 Nov 2016 01:21:25 GMT
ENV PG_MAJOR=9.5
# Tue, 15 Nov 2016 01:21:25 GMT
ENV PG_VERSION=9.5.5
# Tue, 15 Nov 2016 01:21:26 GMT
ENV PG_SHA256=02c65290be74de6604c3fed87c9fd3e6b32e949f0ab8105a75bd7ed5aa71f394
# Wed, 23 Nov 2016 21:18:17 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl 		util-linux-dev 		zlib-dev 		&& cd /usr/src/postgresql 	&& ./configure 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(getconf _NPROCESSORS_ONLN)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/include/* 	&& find /usr/local -name '*.a' -delete
# Wed, 23 Nov 2016 21:18:18 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Wed, 23 Nov 2016 21:18:19 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres /var/run/postgresql
# Wed, 23 Nov 2016 21:18:20 GMT
ENV PATH=/usr/lib/postgresql/9.5/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 23 Nov 2016 21:18:20 GMT
ENV PGDATA=/var/lib/postgresql/data
# Wed, 23 Nov 2016 21:18:20 GMT
VOLUME [/var/lib/postgresql/data]
# Wed, 23 Nov 2016 21:18:21 GMT
COPY file:6353559693115e0bdf7412143568ca5f8d185ea1dfef8f641ecc6a03e21a7f6f in / 
# Wed, 23 Nov 2016 21:18:22 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 23 Nov 2016 21:18:22 GMT
EXPOSE 5432/tcp
# Wed, 23 Nov 2016 21:18:22 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:3690ec4760f95690944da86dc4496148a63d85c9e3100669a318110092f6862f`  
		Last Modified: Tue, 18 Oct 2016 20:32:39 GMT  
		Size: 2.3 MB (2312958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:978e5b6cebed046a846f73db43c3ba2c3fb6b2cee242c3248f8c2467609d7b8b`  
		Last Modified: Tue, 15 Nov 2016 01:30:10 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be1b8e5c7d6a59069f9da7fdef175ff49074bae253f72b6d9fd3f39b2eca4d60`  
		Last Modified: Wed, 23 Nov 2016 21:27:08 GMT  
		Size: 13.4 MB (13376336 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1662ed736a8c5813788f1885bb11b2383bdea0a1548532ac3d54775d6dd9f6ed`  
		Last Modified: Wed, 23 Nov 2016 21:27:03 GMT  
		Size: 6.8 KB (6826 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d626edd75f5c601405c3cec8f884dda7efd3831df2158c1e54b2f5387d3be4e1`  
		Last Modified: Wed, 23 Nov 2016 21:27:05 GMT  
		Size: 140.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db23cb87b879263632f6e32a8812f633fafb296370db7d990f6e0bc2937581c8`  
		Last Modified: Wed, 23 Nov 2016 21:27:04 GMT  
		Size: 1.5 KB (1534 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.4.10`

```console
$ docker pull postgres@sha256:c965fac0b5fc035cf1961c595bf4109e6b3b6a65a5b3a7b9f35d5846c9c3895d
```

-	Platforms:
	-	linux; amd64

### `postgres:9.4.10` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **100.9 MB (100900959 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c18fab575dba938c3e48993513e2494000fca3d8dbebbc6cfaee13ee0470ffdb`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 07 Nov 2016 20:30:25 GMT
ADD file:41ea5187c50116884c38d9ec51d920d79cfaeb2a61c52e07a97f457419a10a4f in / 
# Mon, 07 Nov 2016 20:30:26 GMT
CMD ["/bin/bash"]
# Wed, 09 Nov 2016 00:18:10 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Wed, 09 Nov 2016 00:18:10 GMT
ENV GOSU_VERSION=1.7
# Wed, 09 Nov 2016 00:18:26 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 09 Nov 2016 00:18:33 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Wed, 09 Nov 2016 00:18:34 GMT
ENV LANG=en_US.utf8
# Wed, 09 Nov 2016 00:18:35 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 09 Nov 2016 00:18:36 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8
# Wed, 09 Nov 2016 00:23:18 GMT
ENV PG_MAJOR=9.4
# Wed, 09 Nov 2016 00:23:18 GMT
ENV PG_VERSION=9.4.10-1.pgdg80+1
# Wed, 09 Nov 2016 00:23:19 GMT
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main' $PG_MAJOR > /etc/apt/sources.list.d/pgdg.list
# Wed, 09 Nov 2016 00:23:50 GMT
RUN apt-get update 	&& apt-get install -y postgresql-common 	&& sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf 	&& apt-get install -y 		postgresql-$PG_MAJOR=$PG_VERSION 		postgresql-contrib-$PG_MAJOR=$PG_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Wed, 09 Nov 2016 00:23:51 GMT
RUN mv -v /usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample /usr/share/postgresql/$PG_MAJOR/ 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Wed, 09 Nov 2016 00:23:52 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres /var/run/postgresql
# Wed, 09 Nov 2016 00:23:52 GMT
ENV PATH=/usr/lib/postgresql/9.4/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 09 Nov 2016 00:23:52 GMT
ENV PGDATA=/var/lib/postgresql/data
# Wed, 09 Nov 2016 00:23:53 GMT
VOLUME [/var/lib/postgresql/data]
# Wed, 23 Nov 2016 21:18:23 GMT
COPY file:efecaa19cd3c39d8361a64a87004058b980e4335449a69679abda593d1b239c0 in / 
# Wed, 23 Nov 2016 21:18:24 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 23 Nov 2016 21:18:24 GMT
EXPOSE 5432/tcp
# Wed, 23 Nov 2016 21:18:25 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:386a066cd84a33a04d560c42bef66d1dd64ebfc76de78550e5fd0f8d57778bca`  
		Last Modified: Mon, 07 Nov 2016 20:34:04 GMT  
		Size: 51.4 MB (51356989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6dd80b38d38d8795d2d1d4b7e6407375622ed669f7f184ca0f5ac6329a87e32`  
		Last Modified: Wed, 09 Nov 2016 00:19:30 GMT  
		Size: 2.0 KB (2049 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cd70682382125f5b4e0c4fd41ec1b1993546c95fa96ed34e09381531db0a970`  
		Last Modified: Wed, 09 Nov 2016 00:19:30 GMT  
		Size: 1.2 MB (1216443 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40c17ac202a9dfd6a1b57d79df607a33b4eb0c1bdf9e1c7293e3583f715d2e82`  
		Last Modified: Wed, 09 Nov 2016 00:19:32 GMT  
		Size: 6.9 MB (6865033 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7380b383ba3d47b452f0f180fd5e51fc8bf6cea7f5ee9aaf3e5e78d68fa6c858`  
		Last Modified: Wed, 09 Nov 2016 00:19:28 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:538e418b46ce31a93ad0441c15b18f652bb3f32f05e3963194bc06d4ecb3a60c`  
		Last Modified: Wed, 09 Nov 2016 00:19:28 GMT  
		Size: 3.4 KB (3414 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3e310d5a708a8da22086fcfa3ca70fd5d9b32c4d4f503f02bf2278f2e079fa0`  
		Last Modified: Wed, 09 Nov 2016 00:24:07 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb47a0c0259bc3de313d8637a6c2acef4386d7b3d5f06344a229997ac4adb35d`  
		Last Modified: Wed, 09 Nov 2016 00:24:21 GMT  
		Size: 41.4 MB (41448317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab8b2a4b871399b9e70ad86dcc3fa11429eec3199f76f1896e1cd60e9df0c38a`  
		Last Modified: Wed, 09 Nov 2016 00:24:06 GMT  
		Size: 6.7 KB (6711 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab18e111efcc1e2207059fef6722b7d288066056450e9ea4245011523e46af8d`  
		Last Modified: Wed, 09 Nov 2016 00:24:06 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d4ce95961cda54cf8b0df5b9e9393f8a16fdb45e507d4dfc9100c2765dbef4a`  
		Last Modified: Wed, 23 Nov 2016 21:27:40 GMT  
		Size: 1.5 KB (1530 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.4`

```console
$ docker pull postgres@sha256:c965fac0b5fc035cf1961c595bf4109e6b3b6a65a5b3a7b9f35d5846c9c3895d
```

-	Platforms:
	-	linux; amd64

### `postgres:9.4` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **100.9 MB (100900959 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c18fab575dba938c3e48993513e2494000fca3d8dbebbc6cfaee13ee0470ffdb`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 07 Nov 2016 20:30:25 GMT
ADD file:41ea5187c50116884c38d9ec51d920d79cfaeb2a61c52e07a97f457419a10a4f in / 
# Mon, 07 Nov 2016 20:30:26 GMT
CMD ["/bin/bash"]
# Wed, 09 Nov 2016 00:18:10 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Wed, 09 Nov 2016 00:18:10 GMT
ENV GOSU_VERSION=1.7
# Wed, 09 Nov 2016 00:18:26 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 09 Nov 2016 00:18:33 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Wed, 09 Nov 2016 00:18:34 GMT
ENV LANG=en_US.utf8
# Wed, 09 Nov 2016 00:18:35 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 09 Nov 2016 00:18:36 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8
# Wed, 09 Nov 2016 00:23:18 GMT
ENV PG_MAJOR=9.4
# Wed, 09 Nov 2016 00:23:18 GMT
ENV PG_VERSION=9.4.10-1.pgdg80+1
# Wed, 09 Nov 2016 00:23:19 GMT
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main' $PG_MAJOR > /etc/apt/sources.list.d/pgdg.list
# Wed, 09 Nov 2016 00:23:50 GMT
RUN apt-get update 	&& apt-get install -y postgresql-common 	&& sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf 	&& apt-get install -y 		postgresql-$PG_MAJOR=$PG_VERSION 		postgresql-contrib-$PG_MAJOR=$PG_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Wed, 09 Nov 2016 00:23:51 GMT
RUN mv -v /usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample /usr/share/postgresql/$PG_MAJOR/ 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Wed, 09 Nov 2016 00:23:52 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres /var/run/postgresql
# Wed, 09 Nov 2016 00:23:52 GMT
ENV PATH=/usr/lib/postgresql/9.4/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 09 Nov 2016 00:23:52 GMT
ENV PGDATA=/var/lib/postgresql/data
# Wed, 09 Nov 2016 00:23:53 GMT
VOLUME [/var/lib/postgresql/data]
# Wed, 23 Nov 2016 21:18:23 GMT
COPY file:efecaa19cd3c39d8361a64a87004058b980e4335449a69679abda593d1b239c0 in / 
# Wed, 23 Nov 2016 21:18:24 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 23 Nov 2016 21:18:24 GMT
EXPOSE 5432/tcp
# Wed, 23 Nov 2016 21:18:25 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:386a066cd84a33a04d560c42bef66d1dd64ebfc76de78550e5fd0f8d57778bca`  
		Last Modified: Mon, 07 Nov 2016 20:34:04 GMT  
		Size: 51.4 MB (51356989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6dd80b38d38d8795d2d1d4b7e6407375622ed669f7f184ca0f5ac6329a87e32`  
		Last Modified: Wed, 09 Nov 2016 00:19:30 GMT  
		Size: 2.0 KB (2049 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cd70682382125f5b4e0c4fd41ec1b1993546c95fa96ed34e09381531db0a970`  
		Last Modified: Wed, 09 Nov 2016 00:19:30 GMT  
		Size: 1.2 MB (1216443 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40c17ac202a9dfd6a1b57d79df607a33b4eb0c1bdf9e1c7293e3583f715d2e82`  
		Last Modified: Wed, 09 Nov 2016 00:19:32 GMT  
		Size: 6.9 MB (6865033 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7380b383ba3d47b452f0f180fd5e51fc8bf6cea7f5ee9aaf3e5e78d68fa6c858`  
		Last Modified: Wed, 09 Nov 2016 00:19:28 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:538e418b46ce31a93ad0441c15b18f652bb3f32f05e3963194bc06d4ecb3a60c`  
		Last Modified: Wed, 09 Nov 2016 00:19:28 GMT  
		Size: 3.4 KB (3414 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3e310d5a708a8da22086fcfa3ca70fd5d9b32c4d4f503f02bf2278f2e079fa0`  
		Last Modified: Wed, 09 Nov 2016 00:24:07 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb47a0c0259bc3de313d8637a6c2acef4386d7b3d5f06344a229997ac4adb35d`  
		Last Modified: Wed, 09 Nov 2016 00:24:21 GMT  
		Size: 41.4 MB (41448317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab8b2a4b871399b9e70ad86dcc3fa11429eec3199f76f1896e1cd60e9df0c38a`  
		Last Modified: Wed, 09 Nov 2016 00:24:06 GMT  
		Size: 6.7 KB (6711 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab18e111efcc1e2207059fef6722b7d288066056450e9ea4245011523e46af8d`  
		Last Modified: Wed, 09 Nov 2016 00:24:06 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d4ce95961cda54cf8b0df5b9e9393f8a16fdb45e507d4dfc9100c2765dbef4a`  
		Last Modified: Wed, 23 Nov 2016 21:27:40 GMT  
		Size: 1.5 KB (1530 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.4.10-alpine`

```console
$ docker pull postgres@sha256:42507a43d4066e1622398966cbe9c6b0d53de8da94d7c827275ced98aad4eb96
```

-	Platforms:
	-	linux; amd64

### `postgres:9.4.10-alpine` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.4 MB (15395821 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7060ff010148617198eece487d9e436c0361679a5c4426f4948a2d7a18d0d918`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Tue, 18 Oct 2016 20:31:22 GMT
ADD file:7afbc23fda8b0b3872623c16af8e3490b2cee951aed14b3794389c2f946cc8c7 in / 
# Tue, 15 Nov 2016 01:19:15 GMT
ENV LANG=en_US.utf8
# Tue, 15 Nov 2016 01:19:16 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 15 Nov 2016 01:23:30 GMT
ENV PG_MAJOR=9.4
# Tue, 15 Nov 2016 01:23:30 GMT
ENV PG_VERSION=9.4.10
# Tue, 15 Nov 2016 01:23:31 GMT
ENV PG_SHA256=7061678bed1981c681ce54c76b98b6ec17743f090a9775104a45e7e1a8826ecf
# Wed, 23 Nov 2016 21:20:15 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl 		util-linux-dev 		zlib-dev 		&& cd /usr/src/postgresql 	&& ./configure 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(getconf _NPROCESSORS_ONLN)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/include/* 	&& find /usr/local -name '*.a' -delete
# Wed, 23 Nov 2016 21:20:16 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Wed, 23 Nov 2016 21:20:17 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres /var/run/postgresql
# Wed, 23 Nov 2016 21:20:18 GMT
ENV PATH=/usr/lib/postgresql/9.4/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 23 Nov 2016 21:20:18 GMT
ENV PGDATA=/var/lib/postgresql/data
# Wed, 23 Nov 2016 21:20:19 GMT
VOLUME [/var/lib/postgresql/data]
# Wed, 23 Nov 2016 21:20:19 GMT
COPY file:6353559693115e0bdf7412143568ca5f8d185ea1dfef8f641ecc6a03e21a7f6f in / 
# Wed, 23 Nov 2016 21:20:20 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 23 Nov 2016 21:20:20 GMT
EXPOSE 5432/tcp
# Wed, 23 Nov 2016 21:20:20 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:3690ec4760f95690944da86dc4496148a63d85c9e3100669a318110092f6862f`  
		Last Modified: Tue, 18 Oct 2016 20:32:39 GMT  
		Size: 2.3 MB (2312958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:978e5b6cebed046a846f73db43c3ba2c3fb6b2cee242c3248f8c2467609d7b8b`  
		Last Modified: Tue, 15 Nov 2016 01:30:10 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:483f0bcd3f97e9492c44ce39477d12ce53e143bea1182b24f1c77f3f77eb611f`  
		Last Modified: Wed, 23 Nov 2016 21:28:20 GMT  
		Size: 13.1 MB (13074399 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10ea9a5b0a3b9d758e1df120f6527557c39046c30bce5699234150bca648e8e3`  
		Last Modified: Wed, 23 Nov 2016 21:28:14 GMT  
		Size: 6.7 KB (6676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b78d96866703698937f5cc6e9779a1b849f5a80ed9712b82748c6827b9e1865`  
		Last Modified: Wed, 23 Nov 2016 21:28:14 GMT  
		Size: 140.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d706e145e3e8482686e39ce58bd8fb2df4845260f38d17e9a9e22e64b5fc119`  
		Last Modified: Wed, 23 Nov 2016 21:28:14 GMT  
		Size: 1.5 KB (1534 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.4-alpine`

```console
$ docker pull postgres@sha256:42507a43d4066e1622398966cbe9c6b0d53de8da94d7c827275ced98aad4eb96
```

-	Platforms:
	-	linux; amd64

### `postgres:9.4-alpine` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.4 MB (15395821 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7060ff010148617198eece487d9e436c0361679a5c4426f4948a2d7a18d0d918`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Tue, 18 Oct 2016 20:31:22 GMT
ADD file:7afbc23fda8b0b3872623c16af8e3490b2cee951aed14b3794389c2f946cc8c7 in / 
# Tue, 15 Nov 2016 01:19:15 GMT
ENV LANG=en_US.utf8
# Tue, 15 Nov 2016 01:19:16 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 15 Nov 2016 01:23:30 GMT
ENV PG_MAJOR=9.4
# Tue, 15 Nov 2016 01:23:30 GMT
ENV PG_VERSION=9.4.10
# Tue, 15 Nov 2016 01:23:31 GMT
ENV PG_SHA256=7061678bed1981c681ce54c76b98b6ec17743f090a9775104a45e7e1a8826ecf
# Wed, 23 Nov 2016 21:20:15 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl 		util-linux-dev 		zlib-dev 		&& cd /usr/src/postgresql 	&& ./configure 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(getconf _NPROCESSORS_ONLN)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/include/* 	&& find /usr/local -name '*.a' -delete
# Wed, 23 Nov 2016 21:20:16 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Wed, 23 Nov 2016 21:20:17 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres /var/run/postgresql
# Wed, 23 Nov 2016 21:20:18 GMT
ENV PATH=/usr/lib/postgresql/9.4/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 23 Nov 2016 21:20:18 GMT
ENV PGDATA=/var/lib/postgresql/data
# Wed, 23 Nov 2016 21:20:19 GMT
VOLUME [/var/lib/postgresql/data]
# Wed, 23 Nov 2016 21:20:19 GMT
COPY file:6353559693115e0bdf7412143568ca5f8d185ea1dfef8f641ecc6a03e21a7f6f in / 
# Wed, 23 Nov 2016 21:20:20 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 23 Nov 2016 21:20:20 GMT
EXPOSE 5432/tcp
# Wed, 23 Nov 2016 21:20:20 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:3690ec4760f95690944da86dc4496148a63d85c9e3100669a318110092f6862f`  
		Last Modified: Tue, 18 Oct 2016 20:32:39 GMT  
		Size: 2.3 MB (2312958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:978e5b6cebed046a846f73db43c3ba2c3fb6b2cee242c3248f8c2467609d7b8b`  
		Last Modified: Tue, 15 Nov 2016 01:30:10 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:483f0bcd3f97e9492c44ce39477d12ce53e143bea1182b24f1c77f3f77eb611f`  
		Last Modified: Wed, 23 Nov 2016 21:28:20 GMT  
		Size: 13.1 MB (13074399 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10ea9a5b0a3b9d758e1df120f6527557c39046c30bce5699234150bca648e8e3`  
		Last Modified: Wed, 23 Nov 2016 21:28:14 GMT  
		Size: 6.7 KB (6676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b78d96866703698937f5cc6e9779a1b849f5a80ed9712b82748c6827b9e1865`  
		Last Modified: Wed, 23 Nov 2016 21:28:14 GMT  
		Size: 140.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d706e145e3e8482686e39ce58bd8fb2df4845260f38d17e9a9e22e64b5fc119`  
		Last Modified: Wed, 23 Nov 2016 21:28:14 GMT  
		Size: 1.5 KB (1534 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.3.15`

```console
$ docker pull postgres@sha256:bf3914d4417cee0c20b5f466587a7edd64def7237ad05c17e4205c8e0b055db6
```

-	Platforms:
	-	linux; amd64

### `postgres:9.3.15` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **100.5 MB (100541390 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:77d03c363726cb830c79863104e93766deea129999908bf1defe8bf2a7123b15`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 07 Nov 2016 20:30:25 GMT
ADD file:41ea5187c50116884c38d9ec51d920d79cfaeb2a61c52e07a97f457419a10a4f in / 
# Mon, 07 Nov 2016 20:30:26 GMT
CMD ["/bin/bash"]
# Wed, 09 Nov 2016 00:18:10 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Wed, 09 Nov 2016 00:18:10 GMT
ENV GOSU_VERSION=1.7
# Wed, 09 Nov 2016 00:18:26 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 09 Nov 2016 00:18:33 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Wed, 09 Nov 2016 00:18:34 GMT
ENV LANG=en_US.utf8
# Wed, 09 Nov 2016 00:18:35 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 09 Nov 2016 00:18:36 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8
# Wed, 09 Nov 2016 00:21:52 GMT
ENV PG_MAJOR=9.3
# Wed, 09 Nov 2016 00:21:53 GMT
ENV PG_VERSION=9.3.15-1.pgdg80+1
# Wed, 09 Nov 2016 00:21:54 GMT
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main' $PG_MAJOR > /etc/apt/sources.list.d/pgdg.list
# Wed, 09 Nov 2016 00:22:26 GMT
RUN apt-get update 	&& apt-get install -y postgresql-common 	&& sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf 	&& apt-get install -y 		postgresql-$PG_MAJOR=$PG_VERSION 		postgresql-contrib-$PG_MAJOR=$PG_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Wed, 09 Nov 2016 00:22:27 GMT
RUN mv -v /usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample /usr/share/postgresql/$PG_MAJOR/ 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Wed, 09 Nov 2016 00:22:28 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres /var/run/postgresql
# Wed, 09 Nov 2016 00:22:29 GMT
ENV PATH=/usr/lib/postgresql/9.3/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 09 Nov 2016 00:22:29 GMT
ENV PGDATA=/var/lib/postgresql/data
# Wed, 09 Nov 2016 00:22:30 GMT
VOLUME [/var/lib/postgresql/data]
# Wed, 09 Nov 2016 00:22:30 GMT
COPY file:4b356f6912993c9d5f125faa3c148085ac46c2af55c8ae0c7001052402825fef in / 
# Wed, 09 Nov 2016 00:22:31 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 09 Nov 2016 00:22:31 GMT
EXPOSE 5432/tcp
# Wed, 09 Nov 2016 00:22:31 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:386a066cd84a33a04d560c42bef66d1dd64ebfc76de78550e5fd0f8d57778bca`  
		Last Modified: Mon, 07 Nov 2016 20:34:04 GMT  
		Size: 51.4 MB (51356989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6dd80b38d38d8795d2d1d4b7e6407375622ed669f7f184ca0f5ac6329a87e32`  
		Last Modified: Wed, 09 Nov 2016 00:19:30 GMT  
		Size: 2.0 KB (2049 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cd70682382125f5b4e0c4fd41ec1b1993546c95fa96ed34e09381531db0a970`  
		Last Modified: Wed, 09 Nov 2016 00:19:30 GMT  
		Size: 1.2 MB (1216443 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40c17ac202a9dfd6a1b57d79df607a33b4eb0c1bdf9e1c7293e3583f715d2e82`  
		Last Modified: Wed, 09 Nov 2016 00:19:32 GMT  
		Size: 6.9 MB (6865033 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7380b383ba3d47b452f0f180fd5e51fc8bf6cea7f5ee9aaf3e5e78d68fa6c858`  
		Last Modified: Wed, 09 Nov 2016 00:19:28 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:538e418b46ce31a93ad0441c15b18f652bb3f32f05e3963194bc06d4ecb3a60c`  
		Last Modified: Wed, 09 Nov 2016 00:19:28 GMT  
		Size: 3.4 KB (3414 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63e295654f6a42cc5959a760e556e1610e15600d865c6fc603e5315d3f187567`  
		Last Modified: Wed, 09 Nov 2016 00:22:43 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fe1aa52256ab02fd44a80c6fb308324fa03d166dfde057356397b7f7d86dbf5`  
		Last Modified: Wed, 09 Nov 2016 00:22:55 GMT  
		Size: 41.1 MB (41089188 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21dfb6ed957e2c259bddc3f123da9e49966fb30ef01b7d13738b11fdd6541ee7`  
		Last Modified: Wed, 09 Nov 2016 00:22:44 GMT  
		Size: 6.5 KB (6529 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6929a2e8da1c02a3d012596600e68fc254d91dce0365afb8397547c2ef136eca`  
		Last Modified: Wed, 09 Nov 2016 00:22:44 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:234392626fc591db6c30ca31297aed348acbebd748a993e073fcda24fce7ddbe`  
		Last Modified: Wed, 09 Nov 2016 00:22:43 GMT  
		Size: 1.3 KB (1271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.3`

```console
$ docker pull postgres@sha256:bf3914d4417cee0c20b5f466587a7edd64def7237ad05c17e4205c8e0b055db6
```

-	Platforms:
	-	linux; amd64

### `postgres:9.3` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **100.5 MB (100541390 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:77d03c363726cb830c79863104e93766deea129999908bf1defe8bf2a7123b15`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 07 Nov 2016 20:30:25 GMT
ADD file:41ea5187c50116884c38d9ec51d920d79cfaeb2a61c52e07a97f457419a10a4f in / 
# Mon, 07 Nov 2016 20:30:26 GMT
CMD ["/bin/bash"]
# Wed, 09 Nov 2016 00:18:10 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Wed, 09 Nov 2016 00:18:10 GMT
ENV GOSU_VERSION=1.7
# Wed, 09 Nov 2016 00:18:26 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 09 Nov 2016 00:18:33 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Wed, 09 Nov 2016 00:18:34 GMT
ENV LANG=en_US.utf8
# Wed, 09 Nov 2016 00:18:35 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 09 Nov 2016 00:18:36 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8
# Wed, 09 Nov 2016 00:21:52 GMT
ENV PG_MAJOR=9.3
# Wed, 09 Nov 2016 00:21:53 GMT
ENV PG_VERSION=9.3.15-1.pgdg80+1
# Wed, 09 Nov 2016 00:21:54 GMT
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main' $PG_MAJOR > /etc/apt/sources.list.d/pgdg.list
# Wed, 09 Nov 2016 00:22:26 GMT
RUN apt-get update 	&& apt-get install -y postgresql-common 	&& sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf 	&& apt-get install -y 		postgresql-$PG_MAJOR=$PG_VERSION 		postgresql-contrib-$PG_MAJOR=$PG_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Wed, 09 Nov 2016 00:22:27 GMT
RUN mv -v /usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample /usr/share/postgresql/$PG_MAJOR/ 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Wed, 09 Nov 2016 00:22:28 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres /var/run/postgresql
# Wed, 09 Nov 2016 00:22:29 GMT
ENV PATH=/usr/lib/postgresql/9.3/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 09 Nov 2016 00:22:29 GMT
ENV PGDATA=/var/lib/postgresql/data
# Wed, 09 Nov 2016 00:22:30 GMT
VOLUME [/var/lib/postgresql/data]
# Wed, 09 Nov 2016 00:22:30 GMT
COPY file:4b356f6912993c9d5f125faa3c148085ac46c2af55c8ae0c7001052402825fef in / 
# Wed, 09 Nov 2016 00:22:31 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 09 Nov 2016 00:22:31 GMT
EXPOSE 5432/tcp
# Wed, 09 Nov 2016 00:22:31 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:386a066cd84a33a04d560c42bef66d1dd64ebfc76de78550e5fd0f8d57778bca`  
		Last Modified: Mon, 07 Nov 2016 20:34:04 GMT  
		Size: 51.4 MB (51356989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6dd80b38d38d8795d2d1d4b7e6407375622ed669f7f184ca0f5ac6329a87e32`  
		Last Modified: Wed, 09 Nov 2016 00:19:30 GMT  
		Size: 2.0 KB (2049 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cd70682382125f5b4e0c4fd41ec1b1993546c95fa96ed34e09381531db0a970`  
		Last Modified: Wed, 09 Nov 2016 00:19:30 GMT  
		Size: 1.2 MB (1216443 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40c17ac202a9dfd6a1b57d79df607a33b4eb0c1bdf9e1c7293e3583f715d2e82`  
		Last Modified: Wed, 09 Nov 2016 00:19:32 GMT  
		Size: 6.9 MB (6865033 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7380b383ba3d47b452f0f180fd5e51fc8bf6cea7f5ee9aaf3e5e78d68fa6c858`  
		Last Modified: Wed, 09 Nov 2016 00:19:28 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:538e418b46ce31a93ad0441c15b18f652bb3f32f05e3963194bc06d4ecb3a60c`  
		Last Modified: Wed, 09 Nov 2016 00:19:28 GMT  
		Size: 3.4 KB (3414 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63e295654f6a42cc5959a760e556e1610e15600d865c6fc603e5315d3f187567`  
		Last Modified: Wed, 09 Nov 2016 00:22:43 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fe1aa52256ab02fd44a80c6fb308324fa03d166dfde057356397b7f7d86dbf5`  
		Last Modified: Wed, 09 Nov 2016 00:22:55 GMT  
		Size: 41.1 MB (41089188 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21dfb6ed957e2c259bddc3f123da9e49966fb30ef01b7d13738b11fdd6541ee7`  
		Last Modified: Wed, 09 Nov 2016 00:22:44 GMT  
		Size: 6.5 KB (6529 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6929a2e8da1c02a3d012596600e68fc254d91dce0365afb8397547c2ef136eca`  
		Last Modified: Wed, 09 Nov 2016 00:22:44 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:234392626fc591db6c30ca31297aed348acbebd748a993e073fcda24fce7ddbe`  
		Last Modified: Wed, 09 Nov 2016 00:22:43 GMT  
		Size: 1.3 KB (1271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.3.15-alpine`

```console
$ docker pull postgres@sha256:9dd0488c1c58d65a375e252d6db5e493fa17a16c6183ec070b8386e06bb30b8b
```

-	Platforms:
	-	linux; amd64

### `postgres:9.3.15-alpine` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.0 MB (14978828 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4c8309d2cde3c5563309e9511401ec0c3d83a4623ff6a15b16c7be524f188588`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Tue, 18 Oct 2016 20:31:22 GMT
ADD file:7afbc23fda8b0b3872623c16af8e3490b2cee951aed14b3794389c2f946cc8c7 in / 
# Tue, 15 Nov 2016 01:19:15 GMT
ENV LANG=en_US.utf8
# Tue, 15 Nov 2016 01:19:16 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 15 Nov 2016 01:25:25 GMT
ENV PG_MAJOR=9.3
# Tue, 15 Nov 2016 01:25:26 GMT
ENV PG_VERSION=9.3.15
# Tue, 15 Nov 2016 01:25:26 GMT
ENV PG_SHA256=a9fcba1446a93aa95e3e1b6535756f0472d10b0f267a0845f8b2b29f89de5c4f
# Wed, 23 Nov 2016 21:22:09 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl 		util-linux-dev 		zlib-dev 		&& cd /usr/src/postgresql 	&& ./configure 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(getconf _NPROCESSORS_ONLN)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/include/* 	&& find /usr/local -name '*.a' -delete
# Wed, 23 Nov 2016 21:22:10 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Wed, 23 Nov 2016 21:22:11 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres /var/run/postgresql
# Wed, 23 Nov 2016 21:22:11 GMT
ENV PATH=/usr/lib/postgresql/9.3/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 23 Nov 2016 21:22:12 GMT
ENV PGDATA=/var/lib/postgresql/data
# Wed, 23 Nov 2016 21:22:12 GMT
VOLUME [/var/lib/postgresql/data]
# Wed, 23 Nov 2016 21:22:13 GMT
COPY file:6353559693115e0bdf7412143568ca5f8d185ea1dfef8f641ecc6a03e21a7f6f in / 
# Wed, 23 Nov 2016 21:22:13 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 23 Nov 2016 21:22:13 GMT
EXPOSE 5432/tcp
# Wed, 23 Nov 2016 21:22:14 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:3690ec4760f95690944da86dc4496148a63d85c9e3100669a318110092f6862f`  
		Last Modified: Tue, 18 Oct 2016 20:32:39 GMT  
		Size: 2.3 MB (2312958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:978e5b6cebed046a846f73db43c3ba2c3fb6b2cee242c3248f8c2467609d7b8b`  
		Last Modified: Tue, 15 Nov 2016 01:30:10 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7585f580f0d2ffc3e9e3d4e42d8863b23f5000e03a9e9624171f07eda87e2ff2`  
		Last Modified: Wed, 23 Nov 2016 21:29:33 GMT  
		Size: 12.7 MB (12657582 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99c4f01fd271bf27c9fbcf9a4d75fb87d947cf395f0f9e7adbea9031f1108180`  
		Last Modified: Wed, 23 Nov 2016 21:29:30 GMT  
		Size: 6.5 KB (6499 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f45847babe310f42eceff39f416510bd714145f4f179012cf178eaf47d898a14`  
		Last Modified: Wed, 23 Nov 2016 21:29:27 GMT  
		Size: 141.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8674f21b6baa707d881c103910ecb9565efa10224fc638a85a7e1927c7b8937a`  
		Last Modified: Wed, 23 Nov 2016 21:29:27 GMT  
		Size: 1.5 KB (1534 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.3-alpine`

```console
$ docker pull postgres@sha256:b183b216f3e021b977dd77cf60f9b454d4370bb85b8a4203de0755da52c084d7
```

-	Platforms:
	-	linux; amd64

### `postgres:9.3-alpine` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.6 MB (14613343 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:536d58300b5598276908545f337e6df51e4d530329b1ac96bc816f09f3f11c5b`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Tue, 18 Oct 2016 20:31:22 GMT
ADD file:7afbc23fda8b0b3872623c16af8e3490b2cee951aed14b3794389c2f946cc8c7 in / 
# Tue, 15 Nov 2016 01:19:15 GMT
ENV LANG=en_US.utf8
# Tue, 15 Nov 2016 01:19:16 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 15 Nov 2016 01:25:25 GMT
ENV PG_MAJOR=9.3
# Tue, 15 Nov 2016 01:25:26 GMT
ENV PG_VERSION=9.3.15
# Tue, 15 Nov 2016 01:25:26 GMT
ENV PG_SHA256=a9fcba1446a93aa95e3e1b6535756f0472d10b0f267a0845f8b2b29f89de5c4f
# Tue, 15 Nov 2016 01:27:11 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl 		util-linux-dev 		zlib-dev 		&& cd /usr/src/postgresql 	&& ./configure 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(getconf _NPROCESSORS_ONLN)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/include/* 	&& find /usr/local -name '*.a' -delete
# Tue, 15 Nov 2016 01:27:12 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Tue, 15 Nov 2016 01:27:12 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres /var/run/postgresql
# Tue, 15 Nov 2016 01:27:13 GMT
ENV PATH=/usr/lib/postgresql/9.3/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 15 Nov 2016 01:27:13 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 15 Nov 2016 01:27:14 GMT
VOLUME [/var/lib/postgresql/data]
# Tue, 15 Nov 2016 01:27:14 GMT
COPY file:92c6a119d6f4bf342ba2f140cfddd0f77c7e7f71a79a0c309322413cc95ddd6e in / 
# Tue, 15 Nov 2016 01:27:14 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 15 Nov 2016 01:27:15 GMT
EXPOSE 5432/tcp
# Tue, 15 Nov 2016 01:27:15 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:3690ec4760f95690944da86dc4496148a63d85c9e3100669a318110092f6862f`  
		Last Modified: Tue, 18 Oct 2016 20:32:39 GMT  
		Size: 2.3 MB (2312958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:978e5b6cebed046a846f73db43c3ba2c3fb6b2cee242c3248f8c2467609d7b8b`  
		Last Modified: Tue, 15 Nov 2016 01:30:10 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d532ac83a3008805e453b07c13cb80e3c589e9e083753b996ddf6059069aab4f`  
		Last Modified: Tue, 15 Nov 2016 01:33:53 GMT  
		Size: 12.3 MB (12292360 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a013268132dd3582c75f9e973b42e81f1070cb1776fffb13ad9ad113d33899f`  
		Last Modified: Tue, 15 Nov 2016 01:33:50 GMT  
		Size: 6.5 KB (6500 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af6d32f4c4b146838e340b05c9d8d591f6d7bf581ca8e7bd90dedcb4b68dfc7a`  
		Last Modified: Tue, 15 Nov 2016 01:33:49 GMT  
		Size: 140.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:794e578e5bb0bb3b24d33a71174d1ad83f09dab69ab102bcae71ef2d7a4ab5b9`  
		Last Modified: Tue, 15 Nov 2016 01:33:49 GMT  
		Size: 1.3 KB (1271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.2.19`

```console
$ docker pull postgres@sha256:9806644dac7a799b79831d5be5d269b7aef968df5b8141ffa264bf79a14d606b
```

-	Platforms:
	-	linux; amd64

### `postgres:9.2.19` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **100.4 MB (100381732 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0bc1cc3834e6566f35b703dd05528582317a64b502a0e310908ac7570b5c2923`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 07 Nov 2016 20:30:25 GMT
ADD file:41ea5187c50116884c38d9ec51d920d79cfaeb2a61c52e07a97f457419a10a4f in / 
# Mon, 07 Nov 2016 20:30:26 GMT
CMD ["/bin/bash"]
# Wed, 09 Nov 2016 00:18:10 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Wed, 09 Nov 2016 00:18:10 GMT
ENV GOSU_VERSION=1.7
# Wed, 09 Nov 2016 00:18:26 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 09 Nov 2016 00:18:33 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Wed, 09 Nov 2016 00:18:34 GMT
ENV LANG=en_US.utf8
# Wed, 09 Nov 2016 00:18:35 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 09 Nov 2016 00:18:36 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8
# Wed, 09 Nov 2016 00:20:29 GMT
ENV PG_MAJOR=9.2
# Wed, 09 Nov 2016 00:20:29 GMT
ENV PG_VERSION=9.2.19-1.pgdg80+1
# Wed, 09 Nov 2016 00:20:30 GMT
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main' $PG_MAJOR > /etc/apt/sources.list.d/pgdg.list
# Wed, 09 Nov 2016 00:21:01 GMT
RUN apt-get update 	&& apt-get install -y postgresql-common 	&& sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf 	&& apt-get install -y 		postgresql-$PG_MAJOR=$PG_VERSION 		postgresql-contrib-$PG_MAJOR=$PG_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Wed, 09 Nov 2016 00:21:03 GMT
RUN mv -v /usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample /usr/share/postgresql/$PG_MAJOR/ 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Wed, 09 Nov 2016 00:21:04 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres /var/run/postgresql
# Wed, 09 Nov 2016 00:21:04 GMT
ENV PATH=/usr/lib/postgresql/9.2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 09 Nov 2016 00:21:04 GMT
ENV PGDATA=/var/lib/postgresql/data
# Wed, 09 Nov 2016 00:21:05 GMT
VOLUME [/var/lib/postgresql/data]
# Wed, 23 Nov 2016 21:22:15 GMT
COPY file:efecaa19cd3c39d8361a64a87004058b980e4335449a69679abda593d1b239c0 in / 
# Wed, 23 Nov 2016 21:22:15 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 23 Nov 2016 21:22:16 GMT
EXPOSE 5432/tcp
# Wed, 23 Nov 2016 21:22:16 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:386a066cd84a33a04d560c42bef66d1dd64ebfc76de78550e5fd0f8d57778bca`  
		Last Modified: Mon, 07 Nov 2016 20:34:04 GMT  
		Size: 51.4 MB (51356989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6dd80b38d38d8795d2d1d4b7e6407375622ed669f7f184ca0f5ac6329a87e32`  
		Last Modified: Wed, 09 Nov 2016 00:19:30 GMT  
		Size: 2.0 KB (2049 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cd70682382125f5b4e0c4fd41ec1b1993546c95fa96ed34e09381531db0a970`  
		Last Modified: Wed, 09 Nov 2016 00:19:30 GMT  
		Size: 1.2 MB (1216443 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40c17ac202a9dfd6a1b57d79df607a33b4eb0c1bdf9e1c7293e3583f715d2e82`  
		Last Modified: Wed, 09 Nov 2016 00:19:32 GMT  
		Size: 6.9 MB (6865033 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7380b383ba3d47b452f0f180fd5e51fc8bf6cea7f5ee9aaf3e5e78d68fa6c858`  
		Last Modified: Wed, 09 Nov 2016 00:19:28 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:538e418b46ce31a93ad0441c15b18f652bb3f32f05e3963194bc06d4ecb3a60c`  
		Last Modified: Wed, 09 Nov 2016 00:19:28 GMT  
		Size: 3.4 KB (3414 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0caf7370bcaab7a5de60bca9709bfbe791ed2bff6ae4bfa50a724292622d7631`  
		Last Modified: Wed, 09 Nov 2016 00:21:19 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22dfd00c76d5328089461cc8907f04c14ae62574c4b5a1b604098eb52ac85774`  
		Last Modified: Wed, 09 Nov 2016 00:21:29 GMT  
		Size: 40.9 MB (40929331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82443f2a5669f4910c983fdbee46f34cc408f87e34cb6cfd870b2fb1e9c5982e`  
		Last Modified: Wed, 09 Nov 2016 00:21:18 GMT  
		Size: 6.5 KB (6471 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3458b451b60ca6a17d6647cd9dd2c01f6ca51caea23c5a4ea80b04de18016b9a`  
		Last Modified: Wed, 09 Nov 2016 00:21:18 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ce85b661af7e2b71fb4c95a552bf1cc4520cca938d40cacbbca78baa46ee67a`  
		Last Modified: Wed, 23 Nov 2016 21:30:07 GMT  
		Size: 1.5 KB (1530 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.2`

```console
$ docker pull postgres@sha256:9806644dac7a799b79831d5be5d269b7aef968df5b8141ffa264bf79a14d606b
```

-	Platforms:
	-	linux; amd64

### `postgres:9.2` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **100.4 MB (100381732 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0bc1cc3834e6566f35b703dd05528582317a64b502a0e310908ac7570b5c2923`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 07 Nov 2016 20:30:25 GMT
ADD file:41ea5187c50116884c38d9ec51d920d79cfaeb2a61c52e07a97f457419a10a4f in / 
# Mon, 07 Nov 2016 20:30:26 GMT
CMD ["/bin/bash"]
# Wed, 09 Nov 2016 00:18:10 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Wed, 09 Nov 2016 00:18:10 GMT
ENV GOSU_VERSION=1.7
# Wed, 09 Nov 2016 00:18:26 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 09 Nov 2016 00:18:33 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Wed, 09 Nov 2016 00:18:34 GMT
ENV LANG=en_US.utf8
# Wed, 09 Nov 2016 00:18:35 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 09 Nov 2016 00:18:36 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8
# Wed, 09 Nov 2016 00:20:29 GMT
ENV PG_MAJOR=9.2
# Wed, 09 Nov 2016 00:20:29 GMT
ENV PG_VERSION=9.2.19-1.pgdg80+1
# Wed, 09 Nov 2016 00:20:30 GMT
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main' $PG_MAJOR > /etc/apt/sources.list.d/pgdg.list
# Wed, 09 Nov 2016 00:21:01 GMT
RUN apt-get update 	&& apt-get install -y postgresql-common 	&& sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf 	&& apt-get install -y 		postgresql-$PG_MAJOR=$PG_VERSION 		postgresql-contrib-$PG_MAJOR=$PG_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Wed, 09 Nov 2016 00:21:03 GMT
RUN mv -v /usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample /usr/share/postgresql/$PG_MAJOR/ 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Wed, 09 Nov 2016 00:21:04 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres /var/run/postgresql
# Wed, 09 Nov 2016 00:21:04 GMT
ENV PATH=/usr/lib/postgresql/9.2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 09 Nov 2016 00:21:04 GMT
ENV PGDATA=/var/lib/postgresql/data
# Wed, 09 Nov 2016 00:21:05 GMT
VOLUME [/var/lib/postgresql/data]
# Wed, 23 Nov 2016 21:22:15 GMT
COPY file:efecaa19cd3c39d8361a64a87004058b980e4335449a69679abda593d1b239c0 in / 
# Wed, 23 Nov 2016 21:22:15 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 23 Nov 2016 21:22:16 GMT
EXPOSE 5432/tcp
# Wed, 23 Nov 2016 21:22:16 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:386a066cd84a33a04d560c42bef66d1dd64ebfc76de78550e5fd0f8d57778bca`  
		Last Modified: Mon, 07 Nov 2016 20:34:04 GMT  
		Size: 51.4 MB (51356989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6dd80b38d38d8795d2d1d4b7e6407375622ed669f7f184ca0f5ac6329a87e32`  
		Last Modified: Wed, 09 Nov 2016 00:19:30 GMT  
		Size: 2.0 KB (2049 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cd70682382125f5b4e0c4fd41ec1b1993546c95fa96ed34e09381531db0a970`  
		Last Modified: Wed, 09 Nov 2016 00:19:30 GMT  
		Size: 1.2 MB (1216443 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40c17ac202a9dfd6a1b57d79df607a33b4eb0c1bdf9e1c7293e3583f715d2e82`  
		Last Modified: Wed, 09 Nov 2016 00:19:32 GMT  
		Size: 6.9 MB (6865033 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7380b383ba3d47b452f0f180fd5e51fc8bf6cea7f5ee9aaf3e5e78d68fa6c858`  
		Last Modified: Wed, 09 Nov 2016 00:19:28 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:538e418b46ce31a93ad0441c15b18f652bb3f32f05e3963194bc06d4ecb3a60c`  
		Last Modified: Wed, 09 Nov 2016 00:19:28 GMT  
		Size: 3.4 KB (3414 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0caf7370bcaab7a5de60bca9709bfbe791ed2bff6ae4bfa50a724292622d7631`  
		Last Modified: Wed, 09 Nov 2016 00:21:19 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22dfd00c76d5328089461cc8907f04c14ae62574c4b5a1b604098eb52ac85774`  
		Last Modified: Wed, 09 Nov 2016 00:21:29 GMT  
		Size: 40.9 MB (40929331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82443f2a5669f4910c983fdbee46f34cc408f87e34cb6cfd870b2fb1e9c5982e`  
		Last Modified: Wed, 09 Nov 2016 00:21:18 GMT  
		Size: 6.5 KB (6471 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3458b451b60ca6a17d6647cd9dd2c01f6ca51caea23c5a4ea80b04de18016b9a`  
		Last Modified: Wed, 09 Nov 2016 00:21:18 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ce85b661af7e2b71fb4c95a552bf1cc4520cca938d40cacbbca78baa46ee67a`  
		Last Modified: Wed, 23 Nov 2016 21:30:07 GMT  
		Size: 1.5 KB (1530 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.2.19-alpine`

```console
$ docker pull postgres@sha256:9ef284f1558705644656a779665158a331b7f9447c13310c1931ea6ad7d682fb
```

-	Platforms:
	-	linux; amd64

### `postgres:9.2.19-alpine` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.3 MB (14333975 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2afd86c8048118b52482b4bfe2fa281fc19028890b6921edd5a8ad2779cc5b6d`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Tue, 18 Oct 2016 20:31:22 GMT
ADD file:7afbc23fda8b0b3872623c16af8e3490b2cee951aed14b3794389c2f946cc8c7 in / 
# Tue, 15 Nov 2016 01:19:15 GMT
ENV LANG=en_US.utf8
# Tue, 15 Nov 2016 01:19:16 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 15 Nov 2016 01:27:16 GMT
ENV PG_MAJOR=9.2
# Tue, 15 Nov 2016 01:27:16 GMT
ENV PG_VERSION=9.2.19
# Tue, 15 Nov 2016 01:27:16 GMT
ENV PG_SHA256=1d29d73a4f590fcc348280f13ac2ff6a0f72c94908c54e3c20b7ab1560e8dbad
# Tue, 15 Nov 2016 01:28:59 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl 		util-linux-dev 		zlib-dev 		&& cd /usr/src/postgresql 	&& ./configure 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(getconf _NPROCESSORS_ONLN)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/include/* 	&& find /usr/local -name '*.a' -delete
# Tue, 15 Nov 2016 01:29:00 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Tue, 15 Nov 2016 01:29:01 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres /var/run/postgresql
# Tue, 15 Nov 2016 01:29:01 GMT
ENV PATH=/usr/lib/postgresql/9.2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 15 Nov 2016 01:29:01 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 15 Nov 2016 01:29:02 GMT
VOLUME [/var/lib/postgresql/data]
# Tue, 15 Nov 2016 01:29:02 GMT
COPY file:92c6a119d6f4bf342ba2f140cfddd0f77c7e7f71a79a0c309322413cc95ddd6e in / 
# Tue, 15 Nov 2016 01:29:03 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 15 Nov 2016 01:29:03 GMT
EXPOSE 5432/tcp
# Tue, 15 Nov 2016 01:29:03 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:3690ec4760f95690944da86dc4496148a63d85c9e3100669a318110092f6862f`  
		Last Modified: Tue, 18 Oct 2016 20:32:39 GMT  
		Size: 2.3 MB (2312958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:978e5b6cebed046a846f73db43c3ba2c3fb6b2cee242c3248f8c2467609d7b8b`  
		Last Modified: Tue, 15 Nov 2016 01:30:10 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c659e3a0b7ed0381610a4b2a68a75e9db1ecad7fec15249b438635bc40e01a7e`  
		Last Modified: Tue, 15 Nov 2016 01:34:59 GMT  
		Size: 12.0 MB (12013045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52bceb565b23f045f6db4f29e164fcb45d20c5cbd0bcbb3663f089f8d5631943`  
		Last Modified: Tue, 15 Nov 2016 01:34:52 GMT  
		Size: 6.4 KB (6444 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e5ca1195d85733aed993fb823261994e0376c817479d3393ce297547c321270`  
		Last Modified: Tue, 15 Nov 2016 01:34:52 GMT  
		Size: 141.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b825937f16709fc2c6e6bb8c59bba87117071d1b53422d3b05a66d79cc31263c`  
		Last Modified: Tue, 15 Nov 2016 01:34:52 GMT  
		Size: 1.3 KB (1273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.2-alpine`

```console
$ docker pull postgres@sha256:97a085d5b6669bb399f155c4d720e598ea4cf50357b2d2b1616dfbf7c011330f
```

-	Platforms:
	-	linux; amd64

### `postgres:9.2-alpine` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.7 MB (14698293 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6fa688d2eabffd73cd09e2f4aa1069a5b1d8b27cfed351e918b6473cb0ad36db`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Tue, 18 Oct 2016 20:31:22 GMT
ADD file:7afbc23fda8b0b3872623c16af8e3490b2cee951aed14b3794389c2f946cc8c7 in / 
# Tue, 15 Nov 2016 01:19:15 GMT
ENV LANG=en_US.utf8
# Tue, 15 Nov 2016 01:19:16 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 15 Nov 2016 01:27:16 GMT
ENV PG_MAJOR=9.2
# Tue, 15 Nov 2016 01:27:16 GMT
ENV PG_VERSION=9.2.19
# Tue, 15 Nov 2016 01:27:16 GMT
ENV PG_SHA256=1d29d73a4f590fcc348280f13ac2ff6a0f72c94908c54e3c20b7ab1560e8dbad
# Wed, 23 Nov 2016 21:24:00 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl 		util-linux-dev 		zlib-dev 		&& cd /usr/src/postgresql 	&& ./configure 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(getconf _NPROCESSORS_ONLN)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/include/* 	&& find /usr/local -name '*.a' -delete
# Wed, 23 Nov 2016 21:24:01 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Wed, 23 Nov 2016 21:24:02 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres /var/run/postgresql
# Wed, 23 Nov 2016 21:24:03 GMT
ENV PATH=/usr/lib/postgresql/9.2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 23 Nov 2016 21:24:03 GMT
ENV PGDATA=/var/lib/postgresql/data
# Wed, 23 Nov 2016 21:24:03 GMT
VOLUME [/var/lib/postgresql/data]
# Wed, 23 Nov 2016 21:24:04 GMT
COPY file:6353559693115e0bdf7412143568ca5f8d185ea1dfef8f641ecc6a03e21a7f6f in / 
# Wed, 23 Nov 2016 21:24:04 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 23 Nov 2016 21:24:04 GMT
EXPOSE 5432/tcp
# Wed, 23 Nov 2016 21:24:05 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:3690ec4760f95690944da86dc4496148a63d85c9e3100669a318110092f6862f`  
		Last Modified: Tue, 18 Oct 2016 20:32:39 GMT  
		Size: 2.3 MB (2312958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:978e5b6cebed046a846f73db43c3ba2c3fb6b2cee242c3248f8c2467609d7b8b`  
		Last Modified: Tue, 15 Nov 2016 01:30:10 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75fa8cf391f736c562faba2c71f7d0c4ad3039ee71fe26d9925eac0bddb97c20`  
		Last Modified: Wed, 23 Nov 2016 21:30:46 GMT  
		Size: 12.4 MB (12377104 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:402bed0510865277cf17f6b23b04ee4c671b81ffb8531894899381e5b7c82231`  
		Last Modified: Wed, 23 Nov 2016 21:30:41 GMT  
		Size: 6.4 KB (6442 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:426ea05de972309afe23f349e8db2e11dd7ec94d50ad4cb9bdd776a91b04f9b1`  
		Last Modified: Wed, 23 Nov 2016 21:30:42 GMT  
		Size: 141.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba914cff4bfeee32b8d0ce5a6b9b8044ad0e3189f6c96f63075de2af11aa41e8`  
		Last Modified: Wed, 23 Nov 2016 21:30:42 GMT  
		Size: 1.5 KB (1534 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
