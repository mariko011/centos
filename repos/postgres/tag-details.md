<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `postgres`

-	[`postgres:9.6.1`](#postgres961)
-	[`postgres:9.6`](#postgres96)
-	[`postgres:9`](#postgres9)
-	[`postgres:latest`](#postgreslatest)
-	[`postgres:9.5.5`](#postgres955)
-	[`postgres:9.5`](#postgres95)
-	[`postgres:9.4.10`](#postgres9410)
-	[`postgres:9.4`](#postgres94)
-	[`postgres:9.3.15`](#postgres9315)
-	[`postgres:9.3`](#postgres93)
-	[`postgres:9.2.19`](#postgres9219)
-	[`postgres:9.2`](#postgres92)

## `postgres:9.6.1`

```console
$ docker pull postgres@sha256:3da198a1846d1fa6cf55978c8326d5c7e801155843c469ce9213cdbb25b5ae33
```

-	Platforms:
	-	linux; amd64

### `postgres:9.6.1` - linux; amd64

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
$ docker pull postgres@sha256:3da198a1846d1fa6cf55978c8326d5c7e801155843c469ce9213cdbb25b5ae33
```

-	Platforms:
	-	linux; amd64

### `postgres:9` - linux; amd64

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

## `postgres:latest`

```console
$ docker pull postgres@sha256:3da198a1846d1fa6cf55978c8326d5c7e801155843c469ce9213cdbb25b5ae33
```

-	Platforms:
	-	linux; amd64

### `postgres:latest` - linux; amd64

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
$ docker pull postgres@sha256:c799bacde4426c0e57aaba7b2b90bd1d6ae61e5a7edbd6f36586ad2efea4444b
```

-	Platforms:
	-	linux; amd64

### `postgres:9.5` - linux; amd64

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

## `postgres:9.4.10`

```console
$ docker pull postgres@sha256:9db811348585075eddb7b6938fa65c0236fe8e4f7feaf3c2890a3c4b7f4c9bfc
```

-	Platforms:
	-	linux; amd64

### `postgres:9.4.10` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **100.9 MB (100900699 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:653f0c9eeedd9a4daac0e36764c2156b339c4aa00753bf254b71ddb043fa1177`
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
# Wed, 09 Nov 2016 00:23:53 GMT
COPY file:4b356f6912993c9d5f125faa3c148085ac46c2af55c8ae0c7001052402825fef in / 
# Wed, 09 Nov 2016 00:23:54 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 09 Nov 2016 00:23:54 GMT
EXPOSE 5432/tcp
# Wed, 09 Nov 2016 00:23:55 GMT
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
	-	`sha256:cf597301f2ca33746c4e1bbd355dcee9dbaeb00be7b740bdabbd6bba15a6b346`  
		Last Modified: Wed, 09 Nov 2016 00:24:06 GMT  
		Size: 1.3 KB (1270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.4`

```console
$ docker pull postgres@sha256:9db811348585075eddb7b6938fa65c0236fe8e4f7feaf3c2890a3c4b7f4c9bfc
```

-	Platforms:
	-	linux; amd64

### `postgres:9.4` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **100.9 MB (100900699 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:653f0c9eeedd9a4daac0e36764c2156b339c4aa00753bf254b71ddb043fa1177`
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
# Wed, 09 Nov 2016 00:23:53 GMT
COPY file:4b356f6912993c9d5f125faa3c148085ac46c2af55c8ae0c7001052402825fef in / 
# Wed, 09 Nov 2016 00:23:54 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 09 Nov 2016 00:23:54 GMT
EXPOSE 5432/tcp
# Wed, 09 Nov 2016 00:23:55 GMT
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
	-	`sha256:cf597301f2ca33746c4e1bbd355dcee9dbaeb00be7b740bdabbd6bba15a6b346`  
		Last Modified: Wed, 09 Nov 2016 00:24:06 GMT  
		Size: 1.3 KB (1270 bytes)  
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

## `postgres:9.2.19`

```console
$ docker pull postgres@sha256:c02a40f8989f6b320f78a36ac52037a50ab66921a422b5e151950eda0c71b97d
```

-	Platforms:
	-	linux; amd64

### `postgres:9.2.19` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **100.4 MB (100381472 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:709ec15025cbc83fd0d20c12da7d287df0813d738063ee0b9864e2588163f040`
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
# Wed, 09 Nov 2016 00:21:05 GMT
COPY file:4b356f6912993c9d5f125faa3c148085ac46c2af55c8ae0c7001052402825fef in / 
# Wed, 09 Nov 2016 00:21:06 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 09 Nov 2016 00:21:06 GMT
EXPOSE 5432/tcp
# Wed, 09 Nov 2016 00:21:06 GMT
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
	-	`sha256:ed16796ced116f031cf00537fcf66a1500f33c14752430b5f2ecb051bb2352c8`  
		Last Modified: Wed, 09 Nov 2016 00:21:18 GMT  
		Size: 1.3 KB (1270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.2`

```console
$ docker pull postgres@sha256:c02a40f8989f6b320f78a36ac52037a50ab66921a422b5e151950eda0c71b97d
```

-	Platforms:
	-	linux; amd64

### `postgres:9.2` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **100.4 MB (100381472 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:709ec15025cbc83fd0d20c12da7d287df0813d738063ee0b9864e2588163f040`
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
# Wed, 09 Nov 2016 00:21:05 GMT
COPY file:4b356f6912993c9d5f125faa3c148085ac46c2af55c8ae0c7001052402825fef in / 
# Wed, 09 Nov 2016 00:21:06 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 09 Nov 2016 00:21:06 GMT
EXPOSE 5432/tcp
# Wed, 09 Nov 2016 00:21:06 GMT
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
	-	`sha256:ed16796ced116f031cf00537fcf66a1500f33c14752430b5f2ecb051bb2352c8`  
		Last Modified: Wed, 09 Nov 2016 00:21:18 GMT  
		Size: 1.3 KB (1270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
