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
$ docker pull postgres@sha256:855b55b060bfa63cb39bfee0fe4ec6f40037e9f85f8a7eec24bc8e59ec1a8345
```

-	Platforms:
	-	linux; amd64

### `postgres:9.6.1` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **101.6 MB (101598869 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0e24dd8079dc3d8e94901dfa6b3e37d0fb251c7a4b86dd52a79b5d9b53495525`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Tue, 13 Dec 2016 22:10:59 GMT
ADD file:1d214d2782eaccc743b8d683ccecf2f87f12a0ecdfbcd6fdf4943ce616f23870 in / 
# Tue, 13 Dec 2016 22:10:59 GMT
CMD ["/bin/bash"]
# Wed, 14 Dec 2016 16:40:32 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Wed, 14 Dec 2016 16:40:32 GMT
ENV GOSU_VERSION=1.7
# Wed, 14 Dec 2016 17:20:34 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 14 Dec 2016 17:20:42 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Wed, 14 Dec 2016 17:20:43 GMT
ENV LANG=en_US.utf8
# Wed, 14 Dec 2016 17:20:44 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 14 Dec 2016 17:33:55 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8
# Wed, 14 Dec 2016 17:33:55 GMT
ENV PG_MAJOR=9.6
# Wed, 14 Dec 2016 17:33:55 GMT
ENV PG_VERSION=9.6.1-2.pgdg80+1
# Wed, 14 Dec 2016 17:33:56 GMT
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main' $PG_MAJOR > /etc/apt/sources.list.d/pgdg.list
# Wed, 14 Dec 2016 17:34:24 GMT
RUN apt-get update 	&& apt-get install -y postgresql-common 	&& sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf 	&& apt-get install -y 		postgresql-$PG_MAJOR=$PG_VERSION 		postgresql-contrib-$PG_MAJOR=$PG_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Dec 2016 17:34:25 GMT
RUN mv -v /usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample /usr/share/postgresql/$PG_MAJOR/ 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Wed, 14 Dec 2016 17:34:26 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres /var/run/postgresql
# Wed, 14 Dec 2016 17:34:26 GMT
ENV PATH=/usr/lib/postgresql/9.6/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 14 Dec 2016 17:34:26 GMT
ENV PGDATA=/var/lib/postgresql/data
# Wed, 14 Dec 2016 17:34:27 GMT
VOLUME [/var/lib/postgresql/data]
# Wed, 14 Dec 2016 17:34:27 GMT
COPY file:7a3ca4e07eaa2efd2865a7531b50d4790f1c894522340bd45caba3e8d319a644 in / 
# Wed, 14 Dec 2016 17:34:27 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 14 Dec 2016 17:34:28 GMT
EXPOSE 5432/tcp
# Wed, 14 Dec 2016 17:34:28 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:75a822cd7888e394c49828b951061402d31745f596b1f502758570f2d0ee79e2`  
		Last Modified: Tue, 13 Dec 2016 22:16:41 GMT  
		Size: 51.4 MB (51363125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68f8c57d4ec8c15627d853ccb19dbd6d4849d3454fc690edcab0f9a019c90ac5`  
		Last Modified: Wed, 14 Dec 2016 18:45:25 GMT  
		Size: 2.0 KB (2040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ee19503c02aca2ee3c9c1852ae1037f72535c30c382c3abfe074ac25ae809db`  
		Last Modified: Wed, 14 Dec 2016 18:45:25 GMT  
		Size: 1.2 MB (1216932 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea8f451ca2768673987698755e5f149a8b4f417b4cd1b24e2106653917d3d66e`  
		Last Modified: Wed, 14 Dec 2016 18:45:28 GMT  
		Size: 6.9 MB (6865443 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bce67042ed9c7acc2e339a46f508707a06e1ee39dddf3b8330eeca13268fbf7b`  
		Last Modified: Wed, 14 Dec 2016 18:45:22 GMT  
		Size: 113.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb0990abb35a40a99a29d1a8126581ade8e4dead5e79a0e92e546c72b0ccc145`  
		Last Modified: Wed, 14 Dec 2016 18:45:22 GMT  
		Size: 3.4 KB (3418 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af6ba638869dc061100bb651139de900fad9ccadfaec083fe707ae14a1b60ca2`  
		Last Modified: Wed, 14 Dec 2016 18:45:20 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8d456ed70c73e88741cc38ae78785cd6e8b22799ca4af0aaed59583afce70d6`  
		Last Modified: Wed, 14 Dec 2016 18:45:33 GMT  
		Size: 42.1 MB (42138768 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d9946f8491348924be78afe9a5e8427826518d495a29e081c7329ec80297234`  
		Last Modified: Wed, 14 Dec 2016 18:45:20 GMT  
		Size: 7.2 KB (7151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aaaf404de7ad806fb11f584d68185175dcae60cb65448687426065197482cc3a`  
		Last Modified: Wed, 14 Dec 2016 18:45:19 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6cd7c84ea195b5f6bae8955062e0a5e7cc6d5c3daaa13b9b4c97059300d5f54d`  
		Last Modified: Wed, 14 Dec 2016 18:45:20 GMT  
		Size: 1.5 KB (1522 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.6`

```console
$ docker pull postgres@sha256:855b55b060bfa63cb39bfee0fe4ec6f40037e9f85f8a7eec24bc8e59ec1a8345
```

-	Platforms:
	-	linux; amd64

### `postgres:9.6` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **101.6 MB (101598869 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0e24dd8079dc3d8e94901dfa6b3e37d0fb251c7a4b86dd52a79b5d9b53495525`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Tue, 13 Dec 2016 22:10:59 GMT
ADD file:1d214d2782eaccc743b8d683ccecf2f87f12a0ecdfbcd6fdf4943ce616f23870 in / 
# Tue, 13 Dec 2016 22:10:59 GMT
CMD ["/bin/bash"]
# Wed, 14 Dec 2016 16:40:32 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Wed, 14 Dec 2016 16:40:32 GMT
ENV GOSU_VERSION=1.7
# Wed, 14 Dec 2016 17:20:34 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 14 Dec 2016 17:20:42 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Wed, 14 Dec 2016 17:20:43 GMT
ENV LANG=en_US.utf8
# Wed, 14 Dec 2016 17:20:44 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 14 Dec 2016 17:33:55 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8
# Wed, 14 Dec 2016 17:33:55 GMT
ENV PG_MAJOR=9.6
# Wed, 14 Dec 2016 17:33:55 GMT
ENV PG_VERSION=9.6.1-2.pgdg80+1
# Wed, 14 Dec 2016 17:33:56 GMT
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main' $PG_MAJOR > /etc/apt/sources.list.d/pgdg.list
# Wed, 14 Dec 2016 17:34:24 GMT
RUN apt-get update 	&& apt-get install -y postgresql-common 	&& sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf 	&& apt-get install -y 		postgresql-$PG_MAJOR=$PG_VERSION 		postgresql-contrib-$PG_MAJOR=$PG_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Dec 2016 17:34:25 GMT
RUN mv -v /usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample /usr/share/postgresql/$PG_MAJOR/ 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Wed, 14 Dec 2016 17:34:26 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres /var/run/postgresql
# Wed, 14 Dec 2016 17:34:26 GMT
ENV PATH=/usr/lib/postgresql/9.6/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 14 Dec 2016 17:34:26 GMT
ENV PGDATA=/var/lib/postgresql/data
# Wed, 14 Dec 2016 17:34:27 GMT
VOLUME [/var/lib/postgresql/data]
# Wed, 14 Dec 2016 17:34:27 GMT
COPY file:7a3ca4e07eaa2efd2865a7531b50d4790f1c894522340bd45caba3e8d319a644 in / 
# Wed, 14 Dec 2016 17:34:27 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 14 Dec 2016 17:34:28 GMT
EXPOSE 5432/tcp
# Wed, 14 Dec 2016 17:34:28 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:75a822cd7888e394c49828b951061402d31745f596b1f502758570f2d0ee79e2`  
		Last Modified: Tue, 13 Dec 2016 22:16:41 GMT  
		Size: 51.4 MB (51363125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68f8c57d4ec8c15627d853ccb19dbd6d4849d3454fc690edcab0f9a019c90ac5`  
		Last Modified: Wed, 14 Dec 2016 18:45:25 GMT  
		Size: 2.0 KB (2040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ee19503c02aca2ee3c9c1852ae1037f72535c30c382c3abfe074ac25ae809db`  
		Last Modified: Wed, 14 Dec 2016 18:45:25 GMT  
		Size: 1.2 MB (1216932 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea8f451ca2768673987698755e5f149a8b4f417b4cd1b24e2106653917d3d66e`  
		Last Modified: Wed, 14 Dec 2016 18:45:28 GMT  
		Size: 6.9 MB (6865443 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bce67042ed9c7acc2e339a46f508707a06e1ee39dddf3b8330eeca13268fbf7b`  
		Last Modified: Wed, 14 Dec 2016 18:45:22 GMT  
		Size: 113.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb0990abb35a40a99a29d1a8126581ade8e4dead5e79a0e92e546c72b0ccc145`  
		Last Modified: Wed, 14 Dec 2016 18:45:22 GMT  
		Size: 3.4 KB (3418 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af6ba638869dc061100bb651139de900fad9ccadfaec083fe707ae14a1b60ca2`  
		Last Modified: Wed, 14 Dec 2016 18:45:20 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8d456ed70c73e88741cc38ae78785cd6e8b22799ca4af0aaed59583afce70d6`  
		Last Modified: Wed, 14 Dec 2016 18:45:33 GMT  
		Size: 42.1 MB (42138768 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d9946f8491348924be78afe9a5e8427826518d495a29e081c7329ec80297234`  
		Last Modified: Wed, 14 Dec 2016 18:45:20 GMT  
		Size: 7.2 KB (7151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aaaf404de7ad806fb11f584d68185175dcae60cb65448687426065197482cc3a`  
		Last Modified: Wed, 14 Dec 2016 18:45:19 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6cd7c84ea195b5f6bae8955062e0a5e7cc6d5c3daaa13b9b4c97059300d5f54d`  
		Last Modified: Wed, 14 Dec 2016 18:45:20 GMT  
		Size: 1.5 KB (1522 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9`

```console
$ docker pull postgres@sha256:855b55b060bfa63cb39bfee0fe4ec6f40037e9f85f8a7eec24bc8e59ec1a8345
```

-	Platforms:
	-	linux; amd64

### `postgres:9` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **101.6 MB (101598869 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0e24dd8079dc3d8e94901dfa6b3e37d0fb251c7a4b86dd52a79b5d9b53495525`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Tue, 13 Dec 2016 22:10:59 GMT
ADD file:1d214d2782eaccc743b8d683ccecf2f87f12a0ecdfbcd6fdf4943ce616f23870 in / 
# Tue, 13 Dec 2016 22:10:59 GMT
CMD ["/bin/bash"]
# Wed, 14 Dec 2016 16:40:32 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Wed, 14 Dec 2016 16:40:32 GMT
ENV GOSU_VERSION=1.7
# Wed, 14 Dec 2016 17:20:34 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 14 Dec 2016 17:20:42 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Wed, 14 Dec 2016 17:20:43 GMT
ENV LANG=en_US.utf8
# Wed, 14 Dec 2016 17:20:44 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 14 Dec 2016 17:33:55 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8
# Wed, 14 Dec 2016 17:33:55 GMT
ENV PG_MAJOR=9.6
# Wed, 14 Dec 2016 17:33:55 GMT
ENV PG_VERSION=9.6.1-2.pgdg80+1
# Wed, 14 Dec 2016 17:33:56 GMT
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main' $PG_MAJOR > /etc/apt/sources.list.d/pgdg.list
# Wed, 14 Dec 2016 17:34:24 GMT
RUN apt-get update 	&& apt-get install -y postgresql-common 	&& sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf 	&& apt-get install -y 		postgresql-$PG_MAJOR=$PG_VERSION 		postgresql-contrib-$PG_MAJOR=$PG_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Dec 2016 17:34:25 GMT
RUN mv -v /usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample /usr/share/postgresql/$PG_MAJOR/ 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Wed, 14 Dec 2016 17:34:26 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres /var/run/postgresql
# Wed, 14 Dec 2016 17:34:26 GMT
ENV PATH=/usr/lib/postgresql/9.6/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 14 Dec 2016 17:34:26 GMT
ENV PGDATA=/var/lib/postgresql/data
# Wed, 14 Dec 2016 17:34:27 GMT
VOLUME [/var/lib/postgresql/data]
# Wed, 14 Dec 2016 17:34:27 GMT
COPY file:7a3ca4e07eaa2efd2865a7531b50d4790f1c894522340bd45caba3e8d319a644 in / 
# Wed, 14 Dec 2016 17:34:27 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 14 Dec 2016 17:34:28 GMT
EXPOSE 5432/tcp
# Wed, 14 Dec 2016 17:34:28 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:75a822cd7888e394c49828b951061402d31745f596b1f502758570f2d0ee79e2`  
		Last Modified: Tue, 13 Dec 2016 22:16:41 GMT  
		Size: 51.4 MB (51363125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68f8c57d4ec8c15627d853ccb19dbd6d4849d3454fc690edcab0f9a019c90ac5`  
		Last Modified: Wed, 14 Dec 2016 18:45:25 GMT  
		Size: 2.0 KB (2040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ee19503c02aca2ee3c9c1852ae1037f72535c30c382c3abfe074ac25ae809db`  
		Last Modified: Wed, 14 Dec 2016 18:45:25 GMT  
		Size: 1.2 MB (1216932 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea8f451ca2768673987698755e5f149a8b4f417b4cd1b24e2106653917d3d66e`  
		Last Modified: Wed, 14 Dec 2016 18:45:28 GMT  
		Size: 6.9 MB (6865443 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bce67042ed9c7acc2e339a46f508707a06e1ee39dddf3b8330eeca13268fbf7b`  
		Last Modified: Wed, 14 Dec 2016 18:45:22 GMT  
		Size: 113.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb0990abb35a40a99a29d1a8126581ade8e4dead5e79a0e92e546c72b0ccc145`  
		Last Modified: Wed, 14 Dec 2016 18:45:22 GMT  
		Size: 3.4 KB (3418 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af6ba638869dc061100bb651139de900fad9ccadfaec083fe707ae14a1b60ca2`  
		Last Modified: Wed, 14 Dec 2016 18:45:20 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8d456ed70c73e88741cc38ae78785cd6e8b22799ca4af0aaed59583afce70d6`  
		Last Modified: Wed, 14 Dec 2016 18:45:33 GMT  
		Size: 42.1 MB (42138768 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d9946f8491348924be78afe9a5e8427826518d495a29e081c7329ec80297234`  
		Last Modified: Wed, 14 Dec 2016 18:45:20 GMT  
		Size: 7.2 KB (7151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aaaf404de7ad806fb11f584d68185175dcae60cb65448687426065197482cc3a`  
		Last Modified: Wed, 14 Dec 2016 18:45:19 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6cd7c84ea195b5f6bae8955062e0a5e7cc6d5c3daaa13b9b4c97059300d5f54d`  
		Last Modified: Wed, 14 Dec 2016 18:45:20 GMT  
		Size: 1.5 KB (1522 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:latest`

```console
$ docker pull postgres@sha256:855b55b060bfa63cb39bfee0fe4ec6f40037e9f85f8a7eec24bc8e59ec1a8345
```

-	Platforms:
	-	linux; amd64

### `postgres:latest` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **101.6 MB (101598869 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0e24dd8079dc3d8e94901dfa6b3e37d0fb251c7a4b86dd52a79b5d9b53495525`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Tue, 13 Dec 2016 22:10:59 GMT
ADD file:1d214d2782eaccc743b8d683ccecf2f87f12a0ecdfbcd6fdf4943ce616f23870 in / 
# Tue, 13 Dec 2016 22:10:59 GMT
CMD ["/bin/bash"]
# Wed, 14 Dec 2016 16:40:32 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Wed, 14 Dec 2016 16:40:32 GMT
ENV GOSU_VERSION=1.7
# Wed, 14 Dec 2016 17:20:34 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 14 Dec 2016 17:20:42 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Wed, 14 Dec 2016 17:20:43 GMT
ENV LANG=en_US.utf8
# Wed, 14 Dec 2016 17:20:44 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 14 Dec 2016 17:33:55 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8
# Wed, 14 Dec 2016 17:33:55 GMT
ENV PG_MAJOR=9.6
# Wed, 14 Dec 2016 17:33:55 GMT
ENV PG_VERSION=9.6.1-2.pgdg80+1
# Wed, 14 Dec 2016 17:33:56 GMT
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main' $PG_MAJOR > /etc/apt/sources.list.d/pgdg.list
# Wed, 14 Dec 2016 17:34:24 GMT
RUN apt-get update 	&& apt-get install -y postgresql-common 	&& sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf 	&& apt-get install -y 		postgresql-$PG_MAJOR=$PG_VERSION 		postgresql-contrib-$PG_MAJOR=$PG_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Dec 2016 17:34:25 GMT
RUN mv -v /usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample /usr/share/postgresql/$PG_MAJOR/ 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Wed, 14 Dec 2016 17:34:26 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres /var/run/postgresql
# Wed, 14 Dec 2016 17:34:26 GMT
ENV PATH=/usr/lib/postgresql/9.6/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 14 Dec 2016 17:34:26 GMT
ENV PGDATA=/var/lib/postgresql/data
# Wed, 14 Dec 2016 17:34:27 GMT
VOLUME [/var/lib/postgresql/data]
# Wed, 14 Dec 2016 17:34:27 GMT
COPY file:7a3ca4e07eaa2efd2865a7531b50d4790f1c894522340bd45caba3e8d319a644 in / 
# Wed, 14 Dec 2016 17:34:27 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 14 Dec 2016 17:34:28 GMT
EXPOSE 5432/tcp
# Wed, 14 Dec 2016 17:34:28 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:75a822cd7888e394c49828b951061402d31745f596b1f502758570f2d0ee79e2`  
		Last Modified: Tue, 13 Dec 2016 22:16:41 GMT  
		Size: 51.4 MB (51363125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68f8c57d4ec8c15627d853ccb19dbd6d4849d3454fc690edcab0f9a019c90ac5`  
		Last Modified: Wed, 14 Dec 2016 18:45:25 GMT  
		Size: 2.0 KB (2040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ee19503c02aca2ee3c9c1852ae1037f72535c30c382c3abfe074ac25ae809db`  
		Last Modified: Wed, 14 Dec 2016 18:45:25 GMT  
		Size: 1.2 MB (1216932 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea8f451ca2768673987698755e5f149a8b4f417b4cd1b24e2106653917d3d66e`  
		Last Modified: Wed, 14 Dec 2016 18:45:28 GMT  
		Size: 6.9 MB (6865443 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bce67042ed9c7acc2e339a46f508707a06e1ee39dddf3b8330eeca13268fbf7b`  
		Last Modified: Wed, 14 Dec 2016 18:45:22 GMT  
		Size: 113.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb0990abb35a40a99a29d1a8126581ade8e4dead5e79a0e92e546c72b0ccc145`  
		Last Modified: Wed, 14 Dec 2016 18:45:22 GMT  
		Size: 3.4 KB (3418 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af6ba638869dc061100bb651139de900fad9ccadfaec083fe707ae14a1b60ca2`  
		Last Modified: Wed, 14 Dec 2016 18:45:20 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8d456ed70c73e88741cc38ae78785cd6e8b22799ca4af0aaed59583afce70d6`  
		Last Modified: Wed, 14 Dec 2016 18:45:33 GMT  
		Size: 42.1 MB (42138768 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d9946f8491348924be78afe9a5e8427826518d495a29e081c7329ec80297234`  
		Last Modified: Wed, 14 Dec 2016 18:45:20 GMT  
		Size: 7.2 KB (7151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aaaf404de7ad806fb11f584d68185175dcae60cb65448687426065197482cc3a`  
		Last Modified: Wed, 14 Dec 2016 18:45:19 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6cd7c84ea195b5f6bae8955062e0a5e7cc6d5c3daaa13b9b4c97059300d5f54d`  
		Last Modified: Wed, 14 Dec 2016 18:45:20 GMT  
		Size: 1.5 KB (1522 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.6.1-alpine`

```console
$ docker pull postgres@sha256:1490b1cbe2f9af4b111b2dc48e10c9559dbe7c82540155c704dfcb656f4f3116
```

-	Platforms:
	-	linux; amd64

### `postgres:9.6.1-alpine` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.1 MB (13089108 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bc154cc681dd22be67b561e29fd8b65920affe9a4cf6002ac2e106f98ca0ef40`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:25 GMT
ADD file:92ab746eb22dd3ed2b87469c719adf3c1bed7302653bbd76baafd7cfd95e911e in / 
# Wed, 04 Jan 2017 21:12:51 GMT
ENV LANG=en_US.utf8
# Wed, 04 Jan 2017 21:12:52 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 04 Jan 2017 21:12:52 GMT
ENV PG_MAJOR=9.6
# Wed, 04 Jan 2017 21:12:53 GMT
ENV PG_VERSION=9.6.1
# Wed, 04 Jan 2017 21:12:53 GMT
ENV PG_SHA256=e5101e0a49141fc12a7018c6dad594694d3a3325f5ab71e93e0e51bd94e51fcd
# Wed, 04 Jan 2017 21:15:04 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl 		util-linux-dev 		zlib-dev 		&& cd /usr/src/postgresql 	&& ./configure 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(getconf _NPROCESSORS_ONLN)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/include/* 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Wed, 04 Jan 2017 21:15:05 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Wed, 04 Jan 2017 21:15:06 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres /var/run/postgresql
# Wed, 04 Jan 2017 21:15:07 GMT
ENV PATH=/usr/lib/postgresql/9.6/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 04 Jan 2017 21:15:07 GMT
ENV PGDATA=/var/lib/postgresql/data
# Wed, 04 Jan 2017 21:15:07 GMT
VOLUME [/var/lib/postgresql/data]
# Wed, 04 Jan 2017 21:15:08 GMT
COPY file:aac9c9cf495b26b1edb61976da546521ef55bc2bb8bf30227c9de6e93313afce in / 
# Wed, 04 Jan 2017 21:15:08 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 04 Jan 2017 21:15:08 GMT
EXPOSE 5432/tcp
# Wed, 04 Jan 2017 21:15:09 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:0a8490d0dfd399b3a50e9aaa81dba0d425c3868762d46526b41be00886bcc28b`  
		Last Modified: Tue, 27 Dec 2016 18:19:22 GMT  
		Size: 1.9 MB (1902063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6475055d17e005d634c9d02e63e4154e7c4435a6437afa80bef303e6c6efb7d`  
		Last Modified: Thu, 05 Jan 2017 00:25:52 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22c89890fd4b1b8a86ab150d125e5acec6692e75daec55af09ed84235dc2ff7f`  
		Last Modified: Thu, 05 Jan 2017 00:26:01 GMT  
		Size: 11.2 MB (11178145 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f11f146ae400ac26b84e91141f6a7226f4f7594f533159a2a303644c0f99b72`  
		Last Modified: Thu, 05 Jan 2017 00:25:53 GMT  
		Size: 7.1 KB (7123 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a28fd5d5b93aa4e60c22f194eeda128746ce106873f6464e24b246e88161919`  
		Last Modified: Thu, 05 Jan 2017 00:25:53 GMT  
		Size: 140.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bf71628b0d045af1e97ed651b316aeb0308123c3eb1600048ec741b8a4abaad`  
		Last Modified: Thu, 05 Jan 2017 00:25:53 GMT  
		Size: 1.5 KB (1523 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.6-alpine`

```console
$ docker pull postgres@sha256:1490b1cbe2f9af4b111b2dc48e10c9559dbe7c82540155c704dfcb656f4f3116
```

-	Platforms:
	-	linux; amd64

### `postgres:9.6-alpine` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.1 MB (13089108 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bc154cc681dd22be67b561e29fd8b65920affe9a4cf6002ac2e106f98ca0ef40`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:25 GMT
ADD file:92ab746eb22dd3ed2b87469c719adf3c1bed7302653bbd76baafd7cfd95e911e in / 
# Wed, 04 Jan 2017 21:12:51 GMT
ENV LANG=en_US.utf8
# Wed, 04 Jan 2017 21:12:52 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 04 Jan 2017 21:12:52 GMT
ENV PG_MAJOR=9.6
# Wed, 04 Jan 2017 21:12:53 GMT
ENV PG_VERSION=9.6.1
# Wed, 04 Jan 2017 21:12:53 GMT
ENV PG_SHA256=e5101e0a49141fc12a7018c6dad594694d3a3325f5ab71e93e0e51bd94e51fcd
# Wed, 04 Jan 2017 21:15:04 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl 		util-linux-dev 		zlib-dev 		&& cd /usr/src/postgresql 	&& ./configure 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(getconf _NPROCESSORS_ONLN)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/include/* 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Wed, 04 Jan 2017 21:15:05 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Wed, 04 Jan 2017 21:15:06 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres /var/run/postgresql
# Wed, 04 Jan 2017 21:15:07 GMT
ENV PATH=/usr/lib/postgresql/9.6/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 04 Jan 2017 21:15:07 GMT
ENV PGDATA=/var/lib/postgresql/data
# Wed, 04 Jan 2017 21:15:07 GMT
VOLUME [/var/lib/postgresql/data]
# Wed, 04 Jan 2017 21:15:08 GMT
COPY file:aac9c9cf495b26b1edb61976da546521ef55bc2bb8bf30227c9de6e93313afce in / 
# Wed, 04 Jan 2017 21:15:08 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 04 Jan 2017 21:15:08 GMT
EXPOSE 5432/tcp
# Wed, 04 Jan 2017 21:15:09 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:0a8490d0dfd399b3a50e9aaa81dba0d425c3868762d46526b41be00886bcc28b`  
		Last Modified: Tue, 27 Dec 2016 18:19:22 GMT  
		Size: 1.9 MB (1902063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6475055d17e005d634c9d02e63e4154e7c4435a6437afa80bef303e6c6efb7d`  
		Last Modified: Thu, 05 Jan 2017 00:25:52 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22c89890fd4b1b8a86ab150d125e5acec6692e75daec55af09ed84235dc2ff7f`  
		Last Modified: Thu, 05 Jan 2017 00:26:01 GMT  
		Size: 11.2 MB (11178145 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f11f146ae400ac26b84e91141f6a7226f4f7594f533159a2a303644c0f99b72`  
		Last Modified: Thu, 05 Jan 2017 00:25:53 GMT  
		Size: 7.1 KB (7123 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a28fd5d5b93aa4e60c22f194eeda128746ce106873f6464e24b246e88161919`  
		Last Modified: Thu, 05 Jan 2017 00:25:53 GMT  
		Size: 140.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bf71628b0d045af1e97ed651b316aeb0308123c3eb1600048ec741b8a4abaad`  
		Last Modified: Thu, 05 Jan 2017 00:25:53 GMT  
		Size: 1.5 KB (1523 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9-alpine`

```console
$ docker pull postgres@sha256:1490b1cbe2f9af4b111b2dc48e10c9559dbe7c82540155c704dfcb656f4f3116
```

-	Platforms:
	-	linux; amd64

### `postgres:9-alpine` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.1 MB (13089108 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bc154cc681dd22be67b561e29fd8b65920affe9a4cf6002ac2e106f98ca0ef40`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:25 GMT
ADD file:92ab746eb22dd3ed2b87469c719adf3c1bed7302653bbd76baafd7cfd95e911e in / 
# Wed, 04 Jan 2017 21:12:51 GMT
ENV LANG=en_US.utf8
# Wed, 04 Jan 2017 21:12:52 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 04 Jan 2017 21:12:52 GMT
ENV PG_MAJOR=9.6
# Wed, 04 Jan 2017 21:12:53 GMT
ENV PG_VERSION=9.6.1
# Wed, 04 Jan 2017 21:12:53 GMT
ENV PG_SHA256=e5101e0a49141fc12a7018c6dad594694d3a3325f5ab71e93e0e51bd94e51fcd
# Wed, 04 Jan 2017 21:15:04 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl 		util-linux-dev 		zlib-dev 		&& cd /usr/src/postgresql 	&& ./configure 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(getconf _NPROCESSORS_ONLN)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/include/* 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Wed, 04 Jan 2017 21:15:05 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Wed, 04 Jan 2017 21:15:06 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres /var/run/postgresql
# Wed, 04 Jan 2017 21:15:07 GMT
ENV PATH=/usr/lib/postgresql/9.6/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 04 Jan 2017 21:15:07 GMT
ENV PGDATA=/var/lib/postgresql/data
# Wed, 04 Jan 2017 21:15:07 GMT
VOLUME [/var/lib/postgresql/data]
# Wed, 04 Jan 2017 21:15:08 GMT
COPY file:aac9c9cf495b26b1edb61976da546521ef55bc2bb8bf30227c9de6e93313afce in / 
# Wed, 04 Jan 2017 21:15:08 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 04 Jan 2017 21:15:08 GMT
EXPOSE 5432/tcp
# Wed, 04 Jan 2017 21:15:09 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:0a8490d0dfd399b3a50e9aaa81dba0d425c3868762d46526b41be00886bcc28b`  
		Last Modified: Tue, 27 Dec 2016 18:19:22 GMT  
		Size: 1.9 MB (1902063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6475055d17e005d634c9d02e63e4154e7c4435a6437afa80bef303e6c6efb7d`  
		Last Modified: Thu, 05 Jan 2017 00:25:52 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22c89890fd4b1b8a86ab150d125e5acec6692e75daec55af09ed84235dc2ff7f`  
		Last Modified: Thu, 05 Jan 2017 00:26:01 GMT  
		Size: 11.2 MB (11178145 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f11f146ae400ac26b84e91141f6a7226f4f7594f533159a2a303644c0f99b72`  
		Last Modified: Thu, 05 Jan 2017 00:25:53 GMT  
		Size: 7.1 KB (7123 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a28fd5d5b93aa4e60c22f194eeda128746ce106873f6464e24b246e88161919`  
		Last Modified: Thu, 05 Jan 2017 00:25:53 GMT  
		Size: 140.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bf71628b0d045af1e97ed651b316aeb0308123c3eb1600048ec741b8a4abaad`  
		Last Modified: Thu, 05 Jan 2017 00:25:53 GMT  
		Size: 1.5 KB (1523 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:alpine`

```console
$ docker pull postgres@sha256:1490b1cbe2f9af4b111b2dc48e10c9559dbe7c82540155c704dfcb656f4f3116
```

-	Platforms:
	-	linux; amd64

### `postgres:alpine` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.1 MB (13089108 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bc154cc681dd22be67b561e29fd8b65920affe9a4cf6002ac2e106f98ca0ef40`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:25 GMT
ADD file:92ab746eb22dd3ed2b87469c719adf3c1bed7302653bbd76baafd7cfd95e911e in / 
# Wed, 04 Jan 2017 21:12:51 GMT
ENV LANG=en_US.utf8
# Wed, 04 Jan 2017 21:12:52 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 04 Jan 2017 21:12:52 GMT
ENV PG_MAJOR=9.6
# Wed, 04 Jan 2017 21:12:53 GMT
ENV PG_VERSION=9.6.1
# Wed, 04 Jan 2017 21:12:53 GMT
ENV PG_SHA256=e5101e0a49141fc12a7018c6dad594694d3a3325f5ab71e93e0e51bd94e51fcd
# Wed, 04 Jan 2017 21:15:04 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl 		util-linux-dev 		zlib-dev 		&& cd /usr/src/postgresql 	&& ./configure 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(getconf _NPROCESSORS_ONLN)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/include/* 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Wed, 04 Jan 2017 21:15:05 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Wed, 04 Jan 2017 21:15:06 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres /var/run/postgresql
# Wed, 04 Jan 2017 21:15:07 GMT
ENV PATH=/usr/lib/postgresql/9.6/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 04 Jan 2017 21:15:07 GMT
ENV PGDATA=/var/lib/postgresql/data
# Wed, 04 Jan 2017 21:15:07 GMT
VOLUME [/var/lib/postgresql/data]
# Wed, 04 Jan 2017 21:15:08 GMT
COPY file:aac9c9cf495b26b1edb61976da546521ef55bc2bb8bf30227c9de6e93313afce in / 
# Wed, 04 Jan 2017 21:15:08 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 04 Jan 2017 21:15:08 GMT
EXPOSE 5432/tcp
# Wed, 04 Jan 2017 21:15:09 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:0a8490d0dfd399b3a50e9aaa81dba0d425c3868762d46526b41be00886bcc28b`  
		Last Modified: Tue, 27 Dec 2016 18:19:22 GMT  
		Size: 1.9 MB (1902063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6475055d17e005d634c9d02e63e4154e7c4435a6437afa80bef303e6c6efb7d`  
		Last Modified: Thu, 05 Jan 2017 00:25:52 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22c89890fd4b1b8a86ab150d125e5acec6692e75daec55af09ed84235dc2ff7f`  
		Last Modified: Thu, 05 Jan 2017 00:26:01 GMT  
		Size: 11.2 MB (11178145 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f11f146ae400ac26b84e91141f6a7226f4f7594f533159a2a303644c0f99b72`  
		Last Modified: Thu, 05 Jan 2017 00:25:53 GMT  
		Size: 7.1 KB (7123 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a28fd5d5b93aa4e60c22f194eeda128746ce106873f6464e24b246e88161919`  
		Last Modified: Thu, 05 Jan 2017 00:25:53 GMT  
		Size: 140.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bf71628b0d045af1e97ed651b316aeb0308123c3eb1600048ec741b8a4abaad`  
		Last Modified: Thu, 05 Jan 2017 00:25:53 GMT  
		Size: 1.5 KB (1523 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.5.5`

```console
$ docker pull postgres@sha256:db70559a8d2ea211de0c1faaf341c39b2b1cfb015dacab72ffd061246aef2863
```

-	Platforms:
	-	linux; amd64

### `postgres:9.5.5` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **101.3 MB (101311877 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1ac7dcf35935394793797666db0c536368bedbf2a6b9c32b64a1b72aad04dece`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Tue, 13 Dec 2016 22:10:59 GMT
ADD file:1d214d2782eaccc743b8d683ccecf2f87f12a0ecdfbcd6fdf4943ce616f23870 in / 
# Tue, 13 Dec 2016 22:10:59 GMT
CMD ["/bin/bash"]
# Wed, 14 Dec 2016 16:40:32 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Wed, 14 Dec 2016 16:40:32 GMT
ENV GOSU_VERSION=1.7
# Wed, 14 Dec 2016 17:20:34 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 14 Dec 2016 17:20:42 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Wed, 14 Dec 2016 17:20:43 GMT
ENV LANG=en_US.utf8
# Wed, 14 Dec 2016 17:20:44 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 14 Dec 2016 17:33:55 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8
# Wed, 14 Dec 2016 17:36:06 GMT
ENV PG_MAJOR=9.5
# Wed, 14 Dec 2016 17:36:06 GMT
ENV PG_VERSION=9.5.5-1.pgdg80+1
# Wed, 14 Dec 2016 17:36:07 GMT
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main' $PG_MAJOR > /etc/apt/sources.list.d/pgdg.list
# Wed, 14 Dec 2016 17:36:43 GMT
RUN apt-get update 	&& apt-get install -y postgresql-common 	&& sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf 	&& apt-get install -y 		postgresql-$PG_MAJOR=$PG_VERSION 		postgresql-contrib-$PG_MAJOR=$PG_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Dec 2016 17:36:44 GMT
RUN mv -v /usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample /usr/share/postgresql/$PG_MAJOR/ 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Wed, 14 Dec 2016 17:36:45 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres /var/run/postgresql
# Wed, 14 Dec 2016 17:36:45 GMT
ENV PATH=/usr/lib/postgresql/9.5/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 14 Dec 2016 17:36:46 GMT
ENV PGDATA=/var/lib/postgresql/data
# Wed, 14 Dec 2016 17:36:46 GMT
VOLUME [/var/lib/postgresql/data]
# Wed, 14 Dec 2016 17:36:46 GMT
COPY file:7a3ca4e07eaa2efd2865a7531b50d4790f1c894522340bd45caba3e8d319a644 in / 
# Wed, 14 Dec 2016 17:36:47 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 14 Dec 2016 17:36:47 GMT
EXPOSE 5432/tcp
# Wed, 14 Dec 2016 17:36:48 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:75a822cd7888e394c49828b951061402d31745f596b1f502758570f2d0ee79e2`  
		Last Modified: Tue, 13 Dec 2016 22:16:41 GMT  
		Size: 51.4 MB (51363125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68f8c57d4ec8c15627d853ccb19dbd6d4849d3454fc690edcab0f9a019c90ac5`  
		Last Modified: Wed, 14 Dec 2016 18:45:25 GMT  
		Size: 2.0 KB (2040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ee19503c02aca2ee3c9c1852ae1037f72535c30c382c3abfe074ac25ae809db`  
		Last Modified: Wed, 14 Dec 2016 18:45:25 GMT  
		Size: 1.2 MB (1216932 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea8f451ca2768673987698755e5f149a8b4f417b4cd1b24e2106653917d3d66e`  
		Last Modified: Wed, 14 Dec 2016 18:45:28 GMT  
		Size: 6.9 MB (6865443 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bce67042ed9c7acc2e339a46f508707a06e1ee39dddf3b8330eeca13268fbf7b`  
		Last Modified: Wed, 14 Dec 2016 18:45:22 GMT  
		Size: 113.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb0990abb35a40a99a29d1a8126581ade8e4dead5e79a0e92e546c72b0ccc145`  
		Last Modified: Wed, 14 Dec 2016 18:45:22 GMT  
		Size: 3.4 KB (3418 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31aee7c5bd78c146b5470c379d4c9336f96b1e14147e3bf5bc562d854f1368b9`  
		Last Modified: Wed, 14 Dec 2016 18:47:58 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a4391bdf3ae21a5ed5926dc7a0dbeb77dc9709f2ab77a02354b35fe5ce46cf9`  
		Last Modified: Wed, 14 Dec 2016 18:48:11 GMT  
		Size: 41.9 MB (41852068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b782e973a446d6eaf338574c355237ca6e44bcae246735082b57df26031892f`  
		Last Modified: Wed, 14 Dec 2016 18:47:58 GMT  
		Size: 6.9 KB (6857 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b425cbc5da319c7b86931169acdf43dd997d600ad6b89c65dec371ada7fd19e`  
		Last Modified: Wed, 14 Dec 2016 18:47:59 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:732e828468e7cbd0a175f60607fa534b8dc06f2cc86ff8c16d7c0cbeea0f4e1c`  
		Last Modified: Wed, 14 Dec 2016 18:47:58 GMT  
		Size: 1.5 KB (1523 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.5`

```console
$ docker pull postgres@sha256:db70559a8d2ea211de0c1faaf341c39b2b1cfb015dacab72ffd061246aef2863
```

-	Platforms:
	-	linux; amd64

### `postgres:9.5` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **101.3 MB (101311877 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1ac7dcf35935394793797666db0c536368bedbf2a6b9c32b64a1b72aad04dece`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Tue, 13 Dec 2016 22:10:59 GMT
ADD file:1d214d2782eaccc743b8d683ccecf2f87f12a0ecdfbcd6fdf4943ce616f23870 in / 
# Tue, 13 Dec 2016 22:10:59 GMT
CMD ["/bin/bash"]
# Wed, 14 Dec 2016 16:40:32 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Wed, 14 Dec 2016 16:40:32 GMT
ENV GOSU_VERSION=1.7
# Wed, 14 Dec 2016 17:20:34 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 14 Dec 2016 17:20:42 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Wed, 14 Dec 2016 17:20:43 GMT
ENV LANG=en_US.utf8
# Wed, 14 Dec 2016 17:20:44 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 14 Dec 2016 17:33:55 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8
# Wed, 14 Dec 2016 17:36:06 GMT
ENV PG_MAJOR=9.5
# Wed, 14 Dec 2016 17:36:06 GMT
ENV PG_VERSION=9.5.5-1.pgdg80+1
# Wed, 14 Dec 2016 17:36:07 GMT
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main' $PG_MAJOR > /etc/apt/sources.list.d/pgdg.list
# Wed, 14 Dec 2016 17:36:43 GMT
RUN apt-get update 	&& apt-get install -y postgresql-common 	&& sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf 	&& apt-get install -y 		postgresql-$PG_MAJOR=$PG_VERSION 		postgresql-contrib-$PG_MAJOR=$PG_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Dec 2016 17:36:44 GMT
RUN mv -v /usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample /usr/share/postgresql/$PG_MAJOR/ 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Wed, 14 Dec 2016 17:36:45 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres /var/run/postgresql
# Wed, 14 Dec 2016 17:36:45 GMT
ENV PATH=/usr/lib/postgresql/9.5/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 14 Dec 2016 17:36:46 GMT
ENV PGDATA=/var/lib/postgresql/data
# Wed, 14 Dec 2016 17:36:46 GMT
VOLUME [/var/lib/postgresql/data]
# Wed, 14 Dec 2016 17:36:46 GMT
COPY file:7a3ca4e07eaa2efd2865a7531b50d4790f1c894522340bd45caba3e8d319a644 in / 
# Wed, 14 Dec 2016 17:36:47 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 14 Dec 2016 17:36:47 GMT
EXPOSE 5432/tcp
# Wed, 14 Dec 2016 17:36:48 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:75a822cd7888e394c49828b951061402d31745f596b1f502758570f2d0ee79e2`  
		Last Modified: Tue, 13 Dec 2016 22:16:41 GMT  
		Size: 51.4 MB (51363125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68f8c57d4ec8c15627d853ccb19dbd6d4849d3454fc690edcab0f9a019c90ac5`  
		Last Modified: Wed, 14 Dec 2016 18:45:25 GMT  
		Size: 2.0 KB (2040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ee19503c02aca2ee3c9c1852ae1037f72535c30c382c3abfe074ac25ae809db`  
		Last Modified: Wed, 14 Dec 2016 18:45:25 GMT  
		Size: 1.2 MB (1216932 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea8f451ca2768673987698755e5f149a8b4f417b4cd1b24e2106653917d3d66e`  
		Last Modified: Wed, 14 Dec 2016 18:45:28 GMT  
		Size: 6.9 MB (6865443 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bce67042ed9c7acc2e339a46f508707a06e1ee39dddf3b8330eeca13268fbf7b`  
		Last Modified: Wed, 14 Dec 2016 18:45:22 GMT  
		Size: 113.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb0990abb35a40a99a29d1a8126581ade8e4dead5e79a0e92e546c72b0ccc145`  
		Last Modified: Wed, 14 Dec 2016 18:45:22 GMT  
		Size: 3.4 KB (3418 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31aee7c5bd78c146b5470c379d4c9336f96b1e14147e3bf5bc562d854f1368b9`  
		Last Modified: Wed, 14 Dec 2016 18:47:58 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a4391bdf3ae21a5ed5926dc7a0dbeb77dc9709f2ab77a02354b35fe5ce46cf9`  
		Last Modified: Wed, 14 Dec 2016 18:48:11 GMT  
		Size: 41.9 MB (41852068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b782e973a446d6eaf338574c355237ca6e44bcae246735082b57df26031892f`  
		Last Modified: Wed, 14 Dec 2016 18:47:58 GMT  
		Size: 6.9 KB (6857 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b425cbc5da319c7b86931169acdf43dd997d600ad6b89c65dec371ada7fd19e`  
		Last Modified: Wed, 14 Dec 2016 18:47:59 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:732e828468e7cbd0a175f60607fa534b8dc06f2cc86ff8c16d7c0cbeea0f4e1c`  
		Last Modified: Wed, 14 Dec 2016 18:47:58 GMT  
		Size: 1.5 KB (1523 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.5.5-alpine`

```console
$ docker pull postgres@sha256:4f5204d90bdbb1746800ec9cbdad080488f0225ea128dcbde8c03c4852adeb7f
```

-	Platforms:
	-	linux; amd64

### `postgres:9.5.5-alpine` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.9 MB (12853749 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d7a508cf5d506ddec8e190eb7230f187eb450a760685e83f2f7536519496e22e`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:25 GMT
ADD file:92ab746eb22dd3ed2b87469c719adf3c1bed7302653bbd76baafd7cfd95e911e in / 
# Wed, 04 Jan 2017 21:12:51 GMT
ENV LANG=en_US.utf8
# Wed, 04 Jan 2017 21:12:52 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 04 Jan 2017 21:15:09 GMT
ENV PG_MAJOR=9.5
# Wed, 04 Jan 2017 21:15:10 GMT
ENV PG_VERSION=9.5.5
# Wed, 04 Jan 2017 21:15:10 GMT
ENV PG_SHA256=02c65290be74de6604c3fed87c9fd3e6b32e949f0ab8105a75bd7ed5aa71f394
# Wed, 04 Jan 2017 21:17:11 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl 		util-linux-dev 		zlib-dev 		&& cd /usr/src/postgresql 	&& ./configure 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(getconf _NPROCESSORS_ONLN)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/include/* 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Wed, 04 Jan 2017 21:17:12 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Wed, 04 Jan 2017 21:17:13 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres /var/run/postgresql
# Wed, 04 Jan 2017 21:17:13 GMT
ENV PATH=/usr/lib/postgresql/9.5/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 04 Jan 2017 21:17:14 GMT
ENV PGDATA=/var/lib/postgresql/data
# Wed, 04 Jan 2017 21:17:14 GMT
VOLUME [/var/lib/postgresql/data]
# Wed, 04 Jan 2017 21:17:15 GMT
COPY file:aac9c9cf495b26b1edb61976da546521ef55bc2bb8bf30227c9de6e93313afce in / 
# Wed, 04 Jan 2017 21:17:15 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 04 Jan 2017 21:17:15 GMT
EXPOSE 5432/tcp
# Wed, 04 Jan 2017 21:17:16 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:0a8490d0dfd399b3a50e9aaa81dba0d425c3868762d46526b41be00886bcc28b`  
		Last Modified: Tue, 27 Dec 2016 18:19:22 GMT  
		Size: 1.9 MB (1902063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6475055d17e005d634c9d02e63e4154e7c4435a6437afa80bef303e6c6efb7d`  
		Last Modified: Thu, 05 Jan 2017 00:25:52 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a5458743f7c52828ed613961810e83d85567d64b62cf9d7e2f9a966fae1a984`  
		Last Modified: Thu, 05 Jan 2017 00:28:01 GMT  
		Size: 10.9 MB (10943086 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0e14ce2e500103686591868a776ecf09c586ec7c9dcdfb973fff03a52583589`  
		Last Modified: Thu, 05 Jan 2017 00:27:52 GMT  
		Size: 6.8 KB (6824 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aab3c04a8f2589018309617510f82c0b9c0555b27a94f3cfd2a439456f8b6884`  
		Last Modified: Thu, 05 Jan 2017 00:27:54 GMT  
		Size: 140.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d829a1c1905c84587247e169a88f3754930f7cb907faea1cc5dc545ca42bd41a`  
		Last Modified: Thu, 05 Jan 2017 00:27:52 GMT  
		Size: 1.5 KB (1522 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.5-alpine`

```console
$ docker pull postgres@sha256:4f5204d90bdbb1746800ec9cbdad080488f0225ea128dcbde8c03c4852adeb7f
```

-	Platforms:
	-	linux; amd64

### `postgres:9.5-alpine` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.9 MB (12853749 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d7a508cf5d506ddec8e190eb7230f187eb450a760685e83f2f7536519496e22e`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:25 GMT
ADD file:92ab746eb22dd3ed2b87469c719adf3c1bed7302653bbd76baafd7cfd95e911e in / 
# Wed, 04 Jan 2017 21:12:51 GMT
ENV LANG=en_US.utf8
# Wed, 04 Jan 2017 21:12:52 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 04 Jan 2017 21:15:09 GMT
ENV PG_MAJOR=9.5
# Wed, 04 Jan 2017 21:15:10 GMT
ENV PG_VERSION=9.5.5
# Wed, 04 Jan 2017 21:15:10 GMT
ENV PG_SHA256=02c65290be74de6604c3fed87c9fd3e6b32e949f0ab8105a75bd7ed5aa71f394
# Wed, 04 Jan 2017 21:17:11 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl 		util-linux-dev 		zlib-dev 		&& cd /usr/src/postgresql 	&& ./configure 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(getconf _NPROCESSORS_ONLN)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/include/* 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Wed, 04 Jan 2017 21:17:12 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Wed, 04 Jan 2017 21:17:13 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres /var/run/postgresql
# Wed, 04 Jan 2017 21:17:13 GMT
ENV PATH=/usr/lib/postgresql/9.5/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 04 Jan 2017 21:17:14 GMT
ENV PGDATA=/var/lib/postgresql/data
# Wed, 04 Jan 2017 21:17:14 GMT
VOLUME [/var/lib/postgresql/data]
# Wed, 04 Jan 2017 21:17:15 GMT
COPY file:aac9c9cf495b26b1edb61976da546521ef55bc2bb8bf30227c9de6e93313afce in / 
# Wed, 04 Jan 2017 21:17:15 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 04 Jan 2017 21:17:15 GMT
EXPOSE 5432/tcp
# Wed, 04 Jan 2017 21:17:16 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:0a8490d0dfd399b3a50e9aaa81dba0d425c3868762d46526b41be00886bcc28b`  
		Last Modified: Tue, 27 Dec 2016 18:19:22 GMT  
		Size: 1.9 MB (1902063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6475055d17e005d634c9d02e63e4154e7c4435a6437afa80bef303e6c6efb7d`  
		Last Modified: Thu, 05 Jan 2017 00:25:52 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a5458743f7c52828ed613961810e83d85567d64b62cf9d7e2f9a966fae1a984`  
		Last Modified: Thu, 05 Jan 2017 00:28:01 GMT  
		Size: 10.9 MB (10943086 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0e14ce2e500103686591868a776ecf09c586ec7c9dcdfb973fff03a52583589`  
		Last Modified: Thu, 05 Jan 2017 00:27:52 GMT  
		Size: 6.8 KB (6824 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aab3c04a8f2589018309617510f82c0b9c0555b27a94f3cfd2a439456f8b6884`  
		Last Modified: Thu, 05 Jan 2017 00:27:54 GMT  
		Size: 140.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d829a1c1905c84587247e169a88f3754930f7cb907faea1cc5dc545ca42bd41a`  
		Last Modified: Thu, 05 Jan 2017 00:27:52 GMT  
		Size: 1.5 KB (1522 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.4.10`

```console
$ docker pull postgres@sha256:a2b0d59f5fdd1b6536e0d60e9df282a41b771312c3dbe32d9ff335d769ddcb6b
```

-	Platforms:
	-	linux; amd64

### `postgres:9.4.10` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **100.9 MB (100909848 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:452864725827c54423177ea1bc5bdc2db149df0c73199825f9221347dd7f1b4b`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Tue, 13 Dec 2016 22:10:59 GMT
ADD file:1d214d2782eaccc743b8d683ccecf2f87f12a0ecdfbcd6fdf4943ce616f23870 in / 
# Tue, 13 Dec 2016 22:10:59 GMT
CMD ["/bin/bash"]
# Wed, 14 Dec 2016 16:40:32 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Wed, 14 Dec 2016 16:40:32 GMT
ENV GOSU_VERSION=1.7
# Wed, 14 Dec 2016 17:20:34 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 14 Dec 2016 17:20:42 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Wed, 14 Dec 2016 17:20:43 GMT
ENV LANG=en_US.utf8
# Wed, 14 Dec 2016 17:20:44 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 14 Dec 2016 17:33:55 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8
# Wed, 14 Dec 2016 17:35:34 GMT
ENV PG_MAJOR=9.4
# Wed, 14 Dec 2016 17:35:34 GMT
ENV PG_VERSION=9.4.10-1.pgdg80+1
# Wed, 14 Dec 2016 17:35:35 GMT
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main' $PG_MAJOR > /etc/apt/sources.list.d/pgdg.list
# Wed, 14 Dec 2016 17:36:01 GMT
RUN apt-get update 	&& apt-get install -y postgresql-common 	&& sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf 	&& apt-get install -y 		postgresql-$PG_MAJOR=$PG_VERSION 		postgresql-contrib-$PG_MAJOR=$PG_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Dec 2016 17:36:02 GMT
RUN mv -v /usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample /usr/share/postgresql/$PG_MAJOR/ 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Wed, 14 Dec 2016 17:36:03 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres /var/run/postgresql
# Wed, 14 Dec 2016 17:36:03 GMT
ENV PATH=/usr/lib/postgresql/9.4/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 14 Dec 2016 17:36:04 GMT
ENV PGDATA=/var/lib/postgresql/data
# Wed, 14 Dec 2016 17:36:04 GMT
VOLUME [/var/lib/postgresql/data]
# Wed, 14 Dec 2016 17:36:05 GMT
COPY file:7a3ca4e07eaa2efd2865a7531b50d4790f1c894522340bd45caba3e8d319a644 in / 
# Wed, 14 Dec 2016 17:36:05 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 14 Dec 2016 17:36:05 GMT
EXPOSE 5432/tcp
# Wed, 14 Dec 2016 17:36:05 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:75a822cd7888e394c49828b951061402d31745f596b1f502758570f2d0ee79e2`  
		Last Modified: Tue, 13 Dec 2016 22:16:41 GMT  
		Size: 51.4 MB (51363125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68f8c57d4ec8c15627d853ccb19dbd6d4849d3454fc690edcab0f9a019c90ac5`  
		Last Modified: Wed, 14 Dec 2016 18:45:25 GMT  
		Size: 2.0 KB (2040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ee19503c02aca2ee3c9c1852ae1037f72535c30c382c3abfe074ac25ae809db`  
		Last Modified: Wed, 14 Dec 2016 18:45:25 GMT  
		Size: 1.2 MB (1216932 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea8f451ca2768673987698755e5f149a8b4f417b4cd1b24e2106653917d3d66e`  
		Last Modified: Wed, 14 Dec 2016 18:45:28 GMT  
		Size: 6.9 MB (6865443 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bce67042ed9c7acc2e339a46f508707a06e1ee39dddf3b8330eeca13268fbf7b`  
		Last Modified: Wed, 14 Dec 2016 18:45:22 GMT  
		Size: 113.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb0990abb35a40a99a29d1a8126581ade8e4dead5e79a0e92e546c72b0ccc145`  
		Last Modified: Wed, 14 Dec 2016 18:45:22 GMT  
		Size: 3.4 KB (3418 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc020bb66442b5af892cc2484870a83b87aee20358cf87f02fb493a973884e16`  
		Last Modified: Wed, 14 Dec 2016 18:49:32 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e13068dc53fac53bb546718f28e44b1534c95dc570f9af8b45148429b7de040a`  
		Last Modified: Wed, 14 Dec 2016 18:49:50 GMT  
		Size: 41.5 MB (41450183 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32c301f0cf9d137cb050ef27664a6638a2addfa9f6d4752c651ca7b622f396f1`  
		Last Modified: Wed, 14 Dec 2016 18:49:33 GMT  
		Size: 6.7 KB (6712 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2ed78e29764a4580ae516f8fd50c999a898fa43b1861b03e3ad5e5f0e6a871b`  
		Last Modified: Wed, 14 Dec 2016 18:49:32 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ca4eb5487a42659ce71e2f1bfbd1867e7599a56129d0ce116e3328e27b77bae`  
		Last Modified: Wed, 14 Dec 2016 18:49:32 GMT  
		Size: 1.5 KB (1524 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.4`

```console
$ docker pull postgres@sha256:a2b0d59f5fdd1b6536e0d60e9df282a41b771312c3dbe32d9ff335d769ddcb6b
```

-	Platforms:
	-	linux; amd64

### `postgres:9.4` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **100.9 MB (100909848 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:452864725827c54423177ea1bc5bdc2db149df0c73199825f9221347dd7f1b4b`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Tue, 13 Dec 2016 22:10:59 GMT
ADD file:1d214d2782eaccc743b8d683ccecf2f87f12a0ecdfbcd6fdf4943ce616f23870 in / 
# Tue, 13 Dec 2016 22:10:59 GMT
CMD ["/bin/bash"]
# Wed, 14 Dec 2016 16:40:32 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Wed, 14 Dec 2016 16:40:32 GMT
ENV GOSU_VERSION=1.7
# Wed, 14 Dec 2016 17:20:34 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 14 Dec 2016 17:20:42 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Wed, 14 Dec 2016 17:20:43 GMT
ENV LANG=en_US.utf8
# Wed, 14 Dec 2016 17:20:44 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 14 Dec 2016 17:33:55 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8
# Wed, 14 Dec 2016 17:35:34 GMT
ENV PG_MAJOR=9.4
# Wed, 14 Dec 2016 17:35:34 GMT
ENV PG_VERSION=9.4.10-1.pgdg80+1
# Wed, 14 Dec 2016 17:35:35 GMT
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main' $PG_MAJOR > /etc/apt/sources.list.d/pgdg.list
# Wed, 14 Dec 2016 17:36:01 GMT
RUN apt-get update 	&& apt-get install -y postgresql-common 	&& sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf 	&& apt-get install -y 		postgresql-$PG_MAJOR=$PG_VERSION 		postgresql-contrib-$PG_MAJOR=$PG_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Dec 2016 17:36:02 GMT
RUN mv -v /usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample /usr/share/postgresql/$PG_MAJOR/ 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Wed, 14 Dec 2016 17:36:03 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres /var/run/postgresql
# Wed, 14 Dec 2016 17:36:03 GMT
ENV PATH=/usr/lib/postgresql/9.4/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 14 Dec 2016 17:36:04 GMT
ENV PGDATA=/var/lib/postgresql/data
# Wed, 14 Dec 2016 17:36:04 GMT
VOLUME [/var/lib/postgresql/data]
# Wed, 14 Dec 2016 17:36:05 GMT
COPY file:7a3ca4e07eaa2efd2865a7531b50d4790f1c894522340bd45caba3e8d319a644 in / 
# Wed, 14 Dec 2016 17:36:05 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 14 Dec 2016 17:36:05 GMT
EXPOSE 5432/tcp
# Wed, 14 Dec 2016 17:36:05 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:75a822cd7888e394c49828b951061402d31745f596b1f502758570f2d0ee79e2`  
		Last Modified: Tue, 13 Dec 2016 22:16:41 GMT  
		Size: 51.4 MB (51363125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68f8c57d4ec8c15627d853ccb19dbd6d4849d3454fc690edcab0f9a019c90ac5`  
		Last Modified: Wed, 14 Dec 2016 18:45:25 GMT  
		Size: 2.0 KB (2040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ee19503c02aca2ee3c9c1852ae1037f72535c30c382c3abfe074ac25ae809db`  
		Last Modified: Wed, 14 Dec 2016 18:45:25 GMT  
		Size: 1.2 MB (1216932 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea8f451ca2768673987698755e5f149a8b4f417b4cd1b24e2106653917d3d66e`  
		Last Modified: Wed, 14 Dec 2016 18:45:28 GMT  
		Size: 6.9 MB (6865443 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bce67042ed9c7acc2e339a46f508707a06e1ee39dddf3b8330eeca13268fbf7b`  
		Last Modified: Wed, 14 Dec 2016 18:45:22 GMT  
		Size: 113.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb0990abb35a40a99a29d1a8126581ade8e4dead5e79a0e92e546c72b0ccc145`  
		Last Modified: Wed, 14 Dec 2016 18:45:22 GMT  
		Size: 3.4 KB (3418 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc020bb66442b5af892cc2484870a83b87aee20358cf87f02fb493a973884e16`  
		Last Modified: Wed, 14 Dec 2016 18:49:32 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e13068dc53fac53bb546718f28e44b1534c95dc570f9af8b45148429b7de040a`  
		Last Modified: Wed, 14 Dec 2016 18:49:50 GMT  
		Size: 41.5 MB (41450183 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32c301f0cf9d137cb050ef27664a6638a2addfa9f6d4752c651ca7b622f396f1`  
		Last Modified: Wed, 14 Dec 2016 18:49:33 GMT  
		Size: 6.7 KB (6712 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2ed78e29764a4580ae516f8fd50c999a898fa43b1861b03e3ad5e5f0e6a871b`  
		Last Modified: Wed, 14 Dec 2016 18:49:32 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ca4eb5487a42659ce71e2f1bfbd1867e7599a56129d0ce116e3328e27b77bae`  
		Last Modified: Wed, 14 Dec 2016 18:49:32 GMT  
		Size: 1.5 KB (1524 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.4.10-alpine`

```console
$ docker pull postgres@sha256:c15c6ad33331aeaf7aec513a096676cb134581119e6f6023bdc51a6c9583bb1c
```

-	Platforms:
	-	linux; amd64

### `postgres:9.4.10-alpine` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.7 MB (12695255 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b433f379268a1a61378c76292795d43cc347a883e1640bbffc2721e9e0bfe49a`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:25 GMT
ADD file:92ab746eb22dd3ed2b87469c719adf3c1bed7302653bbd76baafd7cfd95e911e in / 
# Wed, 04 Jan 2017 21:12:51 GMT
ENV LANG=en_US.utf8
# Wed, 04 Jan 2017 21:12:52 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 04 Jan 2017 21:17:16 GMT
ENV PG_MAJOR=9.4
# Wed, 04 Jan 2017 21:17:17 GMT
ENV PG_VERSION=9.4.10
# Wed, 04 Jan 2017 21:17:17 GMT
ENV PG_SHA256=7061678bed1981c681ce54c76b98b6ec17743f090a9775104a45e7e1a8826ecf
# Wed, 04 Jan 2017 21:19:12 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl 		util-linux-dev 		zlib-dev 		&& cd /usr/src/postgresql 	&& ./configure 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(getconf _NPROCESSORS_ONLN)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/include/* 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Wed, 04 Jan 2017 21:19:13 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Wed, 04 Jan 2017 21:19:14 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres /var/run/postgresql
# Wed, 04 Jan 2017 21:19:15 GMT
ENV PATH=/usr/lib/postgresql/9.4/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 04 Jan 2017 21:19:15 GMT
ENV PGDATA=/var/lib/postgresql/data
# Wed, 04 Jan 2017 21:19:15 GMT
VOLUME [/var/lib/postgresql/data]
# Wed, 04 Jan 2017 21:19:16 GMT
COPY file:aac9c9cf495b26b1edb61976da546521ef55bc2bb8bf30227c9de6e93313afce in / 
# Wed, 04 Jan 2017 21:19:16 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 04 Jan 2017 21:19:16 GMT
EXPOSE 5432/tcp
# Wed, 04 Jan 2017 21:19:17 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:0a8490d0dfd399b3a50e9aaa81dba0d425c3868762d46526b41be00886bcc28b`  
		Last Modified: Tue, 27 Dec 2016 18:19:22 GMT  
		Size: 1.9 MB (1902063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6475055d17e005d634c9d02e63e4154e7c4435a6437afa80bef303e6c6efb7d`  
		Last Modified: Thu, 05 Jan 2017 00:25:52 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b1b491a3df74053fe22eb5b44b6a8ef2b13f26d62cd6e74faecef747abe4cbc`  
		Last Modified: Thu, 05 Jan 2017 00:29:26 GMT  
		Size: 10.8 MB (10784740 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64640f5d5ee9a6556adea6dca746fea7a81dcad6bfe8cf2243c0b862fd5dd123`  
		Last Modified: Thu, 05 Jan 2017 00:29:17 GMT  
		Size: 6.7 KB (6676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae80e5067b727df10d34a497aed47dfac1b35c6212811af60a927131ea325029`  
		Last Modified: Thu, 05 Jan 2017 00:29:17 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:325ceabd4826305d4ea3ad7291778fa4fb7ed715ffc5176514f6fc6fe23d9e1b`  
		Last Modified: Thu, 05 Jan 2017 00:29:17 GMT  
		Size: 1.5 KB (1523 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.4-alpine`

```console
$ docker pull postgres@sha256:c15c6ad33331aeaf7aec513a096676cb134581119e6f6023bdc51a6c9583bb1c
```

-	Platforms:
	-	linux; amd64

### `postgres:9.4-alpine` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.7 MB (12695255 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b433f379268a1a61378c76292795d43cc347a883e1640bbffc2721e9e0bfe49a`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:25 GMT
ADD file:92ab746eb22dd3ed2b87469c719adf3c1bed7302653bbd76baafd7cfd95e911e in / 
# Wed, 04 Jan 2017 21:12:51 GMT
ENV LANG=en_US.utf8
# Wed, 04 Jan 2017 21:12:52 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 04 Jan 2017 21:17:16 GMT
ENV PG_MAJOR=9.4
# Wed, 04 Jan 2017 21:17:17 GMT
ENV PG_VERSION=9.4.10
# Wed, 04 Jan 2017 21:17:17 GMT
ENV PG_SHA256=7061678bed1981c681ce54c76b98b6ec17743f090a9775104a45e7e1a8826ecf
# Wed, 04 Jan 2017 21:19:12 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl 		util-linux-dev 		zlib-dev 		&& cd /usr/src/postgresql 	&& ./configure 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(getconf _NPROCESSORS_ONLN)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/include/* 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Wed, 04 Jan 2017 21:19:13 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Wed, 04 Jan 2017 21:19:14 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres /var/run/postgresql
# Wed, 04 Jan 2017 21:19:15 GMT
ENV PATH=/usr/lib/postgresql/9.4/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 04 Jan 2017 21:19:15 GMT
ENV PGDATA=/var/lib/postgresql/data
# Wed, 04 Jan 2017 21:19:15 GMT
VOLUME [/var/lib/postgresql/data]
# Wed, 04 Jan 2017 21:19:16 GMT
COPY file:aac9c9cf495b26b1edb61976da546521ef55bc2bb8bf30227c9de6e93313afce in / 
# Wed, 04 Jan 2017 21:19:16 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 04 Jan 2017 21:19:16 GMT
EXPOSE 5432/tcp
# Wed, 04 Jan 2017 21:19:17 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:0a8490d0dfd399b3a50e9aaa81dba0d425c3868762d46526b41be00886bcc28b`  
		Last Modified: Tue, 27 Dec 2016 18:19:22 GMT  
		Size: 1.9 MB (1902063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6475055d17e005d634c9d02e63e4154e7c4435a6437afa80bef303e6c6efb7d`  
		Last Modified: Thu, 05 Jan 2017 00:25:52 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b1b491a3df74053fe22eb5b44b6a8ef2b13f26d62cd6e74faecef747abe4cbc`  
		Last Modified: Thu, 05 Jan 2017 00:29:26 GMT  
		Size: 10.8 MB (10784740 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64640f5d5ee9a6556adea6dca746fea7a81dcad6bfe8cf2243c0b862fd5dd123`  
		Last Modified: Thu, 05 Jan 2017 00:29:17 GMT  
		Size: 6.7 KB (6676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae80e5067b727df10d34a497aed47dfac1b35c6212811af60a927131ea325029`  
		Last Modified: Thu, 05 Jan 2017 00:29:17 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:325ceabd4826305d4ea3ad7291778fa4fb7ed715ffc5176514f6fc6fe23d9e1b`  
		Last Modified: Thu, 05 Jan 2017 00:29:17 GMT  
		Size: 1.5 KB (1523 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.3.15`

```console
$ docker pull postgres@sha256:ddc63b948061cf72cad47f81408666aca1a9b7385bc1b4764c7d52d2b7e8bf8e
```

-	Platforms:
	-	linux; amd64

### `postgres:9.3.15` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **100.5 MB (100548999 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0b47791a624b0ccc8ed5197a5651bafdcb8451e3db59d504cec9669c7ffe20a4`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Tue, 13 Dec 2016 22:10:59 GMT
ADD file:1d214d2782eaccc743b8d683ccecf2f87f12a0ecdfbcd6fdf4943ce616f23870 in / 
# Tue, 13 Dec 2016 22:10:59 GMT
CMD ["/bin/bash"]
# Wed, 14 Dec 2016 16:40:32 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Wed, 14 Dec 2016 16:40:32 GMT
ENV GOSU_VERSION=1.7
# Wed, 14 Dec 2016 17:20:34 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 14 Dec 2016 17:20:42 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Wed, 14 Dec 2016 17:20:43 GMT
ENV LANG=en_US.utf8
# Wed, 14 Dec 2016 17:20:44 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 14 Dec 2016 17:33:55 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8
# Wed, 14 Dec 2016 17:35:01 GMT
ENV PG_MAJOR=9.3
# Wed, 14 Dec 2016 17:35:01 GMT
ENV PG_VERSION=9.3.15-1.pgdg80+1
# Wed, 14 Dec 2016 17:35:02 GMT
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main' $PG_MAJOR > /etc/apt/sources.list.d/pgdg.list
# Wed, 14 Dec 2016 17:35:29 GMT
RUN apt-get update 	&& apt-get install -y postgresql-common 	&& sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf 	&& apt-get install -y 		postgresql-$PG_MAJOR=$PG_VERSION 		postgresql-contrib-$PG_MAJOR=$PG_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Dec 2016 17:35:30 GMT
RUN mv -v /usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample /usr/share/postgresql/$PG_MAJOR/ 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Wed, 14 Dec 2016 17:35:31 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres /var/run/postgresql
# Wed, 14 Dec 2016 17:35:31 GMT
ENV PATH=/usr/lib/postgresql/9.3/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 14 Dec 2016 17:35:31 GMT
ENV PGDATA=/var/lib/postgresql/data
# Wed, 14 Dec 2016 17:35:32 GMT
VOLUME [/var/lib/postgresql/data]
# Wed, 14 Dec 2016 17:35:32 GMT
COPY file:7a3ca4e07eaa2efd2865a7531b50d4790f1c894522340bd45caba3e8d319a644 in / 
# Wed, 14 Dec 2016 17:35:33 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 14 Dec 2016 17:35:33 GMT
EXPOSE 5432/tcp
# Wed, 14 Dec 2016 17:35:33 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:75a822cd7888e394c49828b951061402d31745f596b1f502758570f2d0ee79e2`  
		Last Modified: Tue, 13 Dec 2016 22:16:41 GMT  
		Size: 51.4 MB (51363125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68f8c57d4ec8c15627d853ccb19dbd6d4849d3454fc690edcab0f9a019c90ac5`  
		Last Modified: Wed, 14 Dec 2016 18:45:25 GMT  
		Size: 2.0 KB (2040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ee19503c02aca2ee3c9c1852ae1037f72535c30c382c3abfe074ac25ae809db`  
		Last Modified: Wed, 14 Dec 2016 18:45:25 GMT  
		Size: 1.2 MB (1216932 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea8f451ca2768673987698755e5f149a8b4f417b4cd1b24e2106653917d3d66e`  
		Last Modified: Wed, 14 Dec 2016 18:45:28 GMT  
		Size: 6.9 MB (6865443 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bce67042ed9c7acc2e339a46f508707a06e1ee39dddf3b8330eeca13268fbf7b`  
		Last Modified: Wed, 14 Dec 2016 18:45:22 GMT  
		Size: 113.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb0990abb35a40a99a29d1a8126581ade8e4dead5e79a0e92e546c72b0ccc145`  
		Last Modified: Wed, 14 Dec 2016 18:45:22 GMT  
		Size: 3.4 KB (3418 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:648cca042fd5d9cba78d6ea4b928b2c75cabf1752228b5f1ab4a07faa3d743e8`  
		Last Modified: Wed, 14 Dec 2016 18:51:03 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3659d34d4568cc29ff945429b016464449936ca9f5f3b4054f0b7e1983020d3`  
		Last Modified: Wed, 14 Dec 2016 18:51:23 GMT  
		Size: 41.1 MB (41089520 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42ed69d28b47b73f9b984d0dabaf559a7db3d5e507bff3ead467fc6e61a7849c`  
		Last Modified: Wed, 14 Dec 2016 18:51:04 GMT  
		Size: 6.5 KB (6530 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ebd9a65d563fb1a8ee465d9148b47037ca2e0551d612055d6eb20f2893b51ec`  
		Last Modified: Wed, 14 Dec 2016 18:51:04 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:779f1d78b1af8550ba802c6917d90d2043a753d143cbb3ce148bd43f5eb95533`  
		Last Modified: Wed, 14 Dec 2016 18:51:04 GMT  
		Size: 1.5 KB (1522 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.3`

```console
$ docker pull postgres@sha256:ddc63b948061cf72cad47f81408666aca1a9b7385bc1b4764c7d52d2b7e8bf8e
```

-	Platforms:
	-	linux; amd64

### `postgres:9.3` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **100.5 MB (100548999 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0b47791a624b0ccc8ed5197a5651bafdcb8451e3db59d504cec9669c7ffe20a4`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Tue, 13 Dec 2016 22:10:59 GMT
ADD file:1d214d2782eaccc743b8d683ccecf2f87f12a0ecdfbcd6fdf4943ce616f23870 in / 
# Tue, 13 Dec 2016 22:10:59 GMT
CMD ["/bin/bash"]
# Wed, 14 Dec 2016 16:40:32 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Wed, 14 Dec 2016 16:40:32 GMT
ENV GOSU_VERSION=1.7
# Wed, 14 Dec 2016 17:20:34 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 14 Dec 2016 17:20:42 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Wed, 14 Dec 2016 17:20:43 GMT
ENV LANG=en_US.utf8
# Wed, 14 Dec 2016 17:20:44 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 14 Dec 2016 17:33:55 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8
# Wed, 14 Dec 2016 17:35:01 GMT
ENV PG_MAJOR=9.3
# Wed, 14 Dec 2016 17:35:01 GMT
ENV PG_VERSION=9.3.15-1.pgdg80+1
# Wed, 14 Dec 2016 17:35:02 GMT
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main' $PG_MAJOR > /etc/apt/sources.list.d/pgdg.list
# Wed, 14 Dec 2016 17:35:29 GMT
RUN apt-get update 	&& apt-get install -y postgresql-common 	&& sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf 	&& apt-get install -y 		postgresql-$PG_MAJOR=$PG_VERSION 		postgresql-contrib-$PG_MAJOR=$PG_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Dec 2016 17:35:30 GMT
RUN mv -v /usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample /usr/share/postgresql/$PG_MAJOR/ 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Wed, 14 Dec 2016 17:35:31 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres /var/run/postgresql
# Wed, 14 Dec 2016 17:35:31 GMT
ENV PATH=/usr/lib/postgresql/9.3/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 14 Dec 2016 17:35:31 GMT
ENV PGDATA=/var/lib/postgresql/data
# Wed, 14 Dec 2016 17:35:32 GMT
VOLUME [/var/lib/postgresql/data]
# Wed, 14 Dec 2016 17:35:32 GMT
COPY file:7a3ca4e07eaa2efd2865a7531b50d4790f1c894522340bd45caba3e8d319a644 in / 
# Wed, 14 Dec 2016 17:35:33 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 14 Dec 2016 17:35:33 GMT
EXPOSE 5432/tcp
# Wed, 14 Dec 2016 17:35:33 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:75a822cd7888e394c49828b951061402d31745f596b1f502758570f2d0ee79e2`  
		Last Modified: Tue, 13 Dec 2016 22:16:41 GMT  
		Size: 51.4 MB (51363125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68f8c57d4ec8c15627d853ccb19dbd6d4849d3454fc690edcab0f9a019c90ac5`  
		Last Modified: Wed, 14 Dec 2016 18:45:25 GMT  
		Size: 2.0 KB (2040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ee19503c02aca2ee3c9c1852ae1037f72535c30c382c3abfe074ac25ae809db`  
		Last Modified: Wed, 14 Dec 2016 18:45:25 GMT  
		Size: 1.2 MB (1216932 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea8f451ca2768673987698755e5f149a8b4f417b4cd1b24e2106653917d3d66e`  
		Last Modified: Wed, 14 Dec 2016 18:45:28 GMT  
		Size: 6.9 MB (6865443 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bce67042ed9c7acc2e339a46f508707a06e1ee39dddf3b8330eeca13268fbf7b`  
		Last Modified: Wed, 14 Dec 2016 18:45:22 GMT  
		Size: 113.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb0990abb35a40a99a29d1a8126581ade8e4dead5e79a0e92e546c72b0ccc145`  
		Last Modified: Wed, 14 Dec 2016 18:45:22 GMT  
		Size: 3.4 KB (3418 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:648cca042fd5d9cba78d6ea4b928b2c75cabf1752228b5f1ab4a07faa3d743e8`  
		Last Modified: Wed, 14 Dec 2016 18:51:03 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3659d34d4568cc29ff945429b016464449936ca9f5f3b4054f0b7e1983020d3`  
		Last Modified: Wed, 14 Dec 2016 18:51:23 GMT  
		Size: 41.1 MB (41089520 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42ed69d28b47b73f9b984d0dabaf559a7db3d5e507bff3ead467fc6e61a7849c`  
		Last Modified: Wed, 14 Dec 2016 18:51:04 GMT  
		Size: 6.5 KB (6530 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ebd9a65d563fb1a8ee465d9148b47037ca2e0551d612055d6eb20f2893b51ec`  
		Last Modified: Wed, 14 Dec 2016 18:51:04 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:779f1d78b1af8550ba802c6917d90d2043a753d143cbb3ce148bd43f5eb95533`  
		Last Modified: Wed, 14 Dec 2016 18:51:04 GMT  
		Size: 1.5 KB (1522 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.3.15-alpine`

```console
$ docker pull postgres@sha256:37e0c99f204083667f35b92c0c6387e74e63b60561dc8ae82cab0fd9fe368885
```

-	Platforms:
	-	linux; amd64

### `postgres:9.3.15-alpine` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.4 MB (12422801 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7c9bad9f1e8f72b5175917ca7a2288ca5890740fa00b8da37118693a18bf8f94`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:25 GMT
ADD file:92ab746eb22dd3ed2b87469c719adf3c1bed7302653bbd76baafd7cfd95e911e in / 
# Wed, 04 Jan 2017 21:12:51 GMT
ENV LANG=en_US.utf8
# Wed, 04 Jan 2017 21:12:52 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 04 Jan 2017 21:19:17 GMT
ENV PG_MAJOR=9.3
# Wed, 04 Jan 2017 21:19:18 GMT
ENV PG_VERSION=9.3.15
# Wed, 04 Jan 2017 21:19:18 GMT
ENV PG_SHA256=a9fcba1446a93aa95e3e1b6535756f0472d10b0f267a0845f8b2b29f89de5c4f
# Wed, 04 Jan 2017 21:21:09 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl 		util-linux-dev 		zlib-dev 		&& cd /usr/src/postgresql 	&& ./configure 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(getconf _NPROCESSORS_ONLN)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/include/* 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Wed, 04 Jan 2017 21:21:10 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Wed, 04 Jan 2017 21:21:11 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres /var/run/postgresql
# Wed, 04 Jan 2017 21:21:11 GMT
ENV PATH=/usr/lib/postgresql/9.3/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 04 Jan 2017 21:21:11 GMT
ENV PGDATA=/var/lib/postgresql/data
# Wed, 04 Jan 2017 21:21:12 GMT
VOLUME [/var/lib/postgresql/data]
# Wed, 04 Jan 2017 21:21:12 GMT
COPY file:aac9c9cf495b26b1edb61976da546521ef55bc2bb8bf30227c9de6e93313afce in / 
# Wed, 04 Jan 2017 21:21:13 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 04 Jan 2017 21:21:13 GMT
EXPOSE 5432/tcp
# Wed, 04 Jan 2017 21:21:13 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:0a8490d0dfd399b3a50e9aaa81dba0d425c3868762d46526b41be00886bcc28b`  
		Last Modified: Tue, 27 Dec 2016 18:19:22 GMT  
		Size: 1.9 MB (1902063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6475055d17e005d634c9d02e63e4154e7c4435a6437afa80bef303e6c6efb7d`  
		Last Modified: Thu, 05 Jan 2017 00:25:52 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:106532301de10faa4ca4d05dd4d79b764859d4893fb2aad86d478b8fbcc02ac4`  
		Last Modified: Thu, 05 Jan 2017 00:30:47 GMT  
		Size: 10.5 MB (10512462 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9132ecd566f64a19bcdf7f0208b6a9eed57897552dd4e2a6330860dbee09aeb2`  
		Last Modified: Thu, 05 Jan 2017 00:30:38 GMT  
		Size: 6.5 KB (6500 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3ba7c8a4fc603f41a60ae230e546b194c9f71c9f9ad2e84c8762357b403ea5c`  
		Last Modified: Thu, 05 Jan 2017 00:30:38 GMT  
		Size: 140.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2178ee3c450cc00c8d37ad2d4ee7c40683d21342eb7bfff3e6eaa745b4364694`  
		Last Modified: Thu, 05 Jan 2017 00:30:38 GMT  
		Size: 1.5 KB (1522 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.3-alpine`

```console
$ docker pull postgres@sha256:37e0c99f204083667f35b92c0c6387e74e63b60561dc8ae82cab0fd9fe368885
```

-	Platforms:
	-	linux; amd64

### `postgres:9.3-alpine` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.4 MB (12422801 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7c9bad9f1e8f72b5175917ca7a2288ca5890740fa00b8da37118693a18bf8f94`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:25 GMT
ADD file:92ab746eb22dd3ed2b87469c719adf3c1bed7302653bbd76baafd7cfd95e911e in / 
# Wed, 04 Jan 2017 21:12:51 GMT
ENV LANG=en_US.utf8
# Wed, 04 Jan 2017 21:12:52 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 04 Jan 2017 21:19:17 GMT
ENV PG_MAJOR=9.3
# Wed, 04 Jan 2017 21:19:18 GMT
ENV PG_VERSION=9.3.15
# Wed, 04 Jan 2017 21:19:18 GMT
ENV PG_SHA256=a9fcba1446a93aa95e3e1b6535756f0472d10b0f267a0845f8b2b29f89de5c4f
# Wed, 04 Jan 2017 21:21:09 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl 		util-linux-dev 		zlib-dev 		&& cd /usr/src/postgresql 	&& ./configure 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(getconf _NPROCESSORS_ONLN)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/include/* 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Wed, 04 Jan 2017 21:21:10 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Wed, 04 Jan 2017 21:21:11 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres /var/run/postgresql
# Wed, 04 Jan 2017 21:21:11 GMT
ENV PATH=/usr/lib/postgresql/9.3/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 04 Jan 2017 21:21:11 GMT
ENV PGDATA=/var/lib/postgresql/data
# Wed, 04 Jan 2017 21:21:12 GMT
VOLUME [/var/lib/postgresql/data]
# Wed, 04 Jan 2017 21:21:12 GMT
COPY file:aac9c9cf495b26b1edb61976da546521ef55bc2bb8bf30227c9de6e93313afce in / 
# Wed, 04 Jan 2017 21:21:13 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 04 Jan 2017 21:21:13 GMT
EXPOSE 5432/tcp
# Wed, 04 Jan 2017 21:21:13 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:0a8490d0dfd399b3a50e9aaa81dba0d425c3868762d46526b41be00886bcc28b`  
		Last Modified: Tue, 27 Dec 2016 18:19:22 GMT  
		Size: 1.9 MB (1902063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6475055d17e005d634c9d02e63e4154e7c4435a6437afa80bef303e6c6efb7d`  
		Last Modified: Thu, 05 Jan 2017 00:25:52 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:106532301de10faa4ca4d05dd4d79b764859d4893fb2aad86d478b8fbcc02ac4`  
		Last Modified: Thu, 05 Jan 2017 00:30:47 GMT  
		Size: 10.5 MB (10512462 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9132ecd566f64a19bcdf7f0208b6a9eed57897552dd4e2a6330860dbee09aeb2`  
		Last Modified: Thu, 05 Jan 2017 00:30:38 GMT  
		Size: 6.5 KB (6500 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3ba7c8a4fc603f41a60ae230e546b194c9f71c9f9ad2e84c8762357b403ea5c`  
		Last Modified: Thu, 05 Jan 2017 00:30:38 GMT  
		Size: 140.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2178ee3c450cc00c8d37ad2d4ee7c40683d21342eb7bfff3e6eaa745b4364694`  
		Last Modified: Thu, 05 Jan 2017 00:30:38 GMT  
		Size: 1.5 KB (1522 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.2.19`

```console
$ docker pull postgres@sha256:5990222995a51d9c5748d94f4c9eb42c9321ffc0495bbb09672403d0a3dab2ed
```

-	Platforms:
	-	linux; amd64

### `postgres:9.2.19` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **100.4 MB (100389180 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f8e968015cb6fb97c001590516309f861d332eab1248f7c056375d8f51ffd00a`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Tue, 13 Dec 2016 22:10:59 GMT
ADD file:1d214d2782eaccc743b8d683ccecf2f87f12a0ecdfbcd6fdf4943ce616f23870 in / 
# Tue, 13 Dec 2016 22:10:59 GMT
CMD ["/bin/bash"]
# Wed, 14 Dec 2016 16:40:32 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Wed, 14 Dec 2016 16:40:32 GMT
ENV GOSU_VERSION=1.7
# Wed, 14 Dec 2016 17:20:34 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 14 Dec 2016 17:20:42 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Wed, 14 Dec 2016 17:20:43 GMT
ENV LANG=en_US.utf8
# Wed, 14 Dec 2016 17:20:44 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 14 Dec 2016 17:33:55 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8
# Wed, 14 Dec 2016 17:34:29 GMT
ENV PG_MAJOR=9.2
# Wed, 14 Dec 2016 17:34:29 GMT
ENV PG_VERSION=9.2.19-1.pgdg80+1
# Wed, 14 Dec 2016 17:34:30 GMT
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main' $PG_MAJOR > /etc/apt/sources.list.d/pgdg.list
# Wed, 14 Dec 2016 17:34:56 GMT
RUN apt-get update 	&& apt-get install -y postgresql-common 	&& sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf 	&& apt-get install -y 		postgresql-$PG_MAJOR=$PG_VERSION 		postgresql-contrib-$PG_MAJOR=$PG_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Dec 2016 17:34:57 GMT
RUN mv -v /usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample /usr/share/postgresql/$PG_MAJOR/ 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Wed, 14 Dec 2016 17:34:58 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres /var/run/postgresql
# Wed, 14 Dec 2016 17:34:58 GMT
ENV PATH=/usr/lib/postgresql/9.2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 14 Dec 2016 17:34:59 GMT
ENV PGDATA=/var/lib/postgresql/data
# Wed, 14 Dec 2016 17:34:59 GMT
VOLUME [/var/lib/postgresql/data]
# Wed, 14 Dec 2016 17:34:59 GMT
COPY file:7a3ca4e07eaa2efd2865a7531b50d4790f1c894522340bd45caba3e8d319a644 in / 
# Wed, 14 Dec 2016 17:35:00 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 14 Dec 2016 17:35:00 GMT
EXPOSE 5432/tcp
# Wed, 14 Dec 2016 17:35:00 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:75a822cd7888e394c49828b951061402d31745f596b1f502758570f2d0ee79e2`  
		Last Modified: Tue, 13 Dec 2016 22:16:41 GMT  
		Size: 51.4 MB (51363125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68f8c57d4ec8c15627d853ccb19dbd6d4849d3454fc690edcab0f9a019c90ac5`  
		Last Modified: Wed, 14 Dec 2016 18:45:25 GMT  
		Size: 2.0 KB (2040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ee19503c02aca2ee3c9c1852ae1037f72535c30c382c3abfe074ac25ae809db`  
		Last Modified: Wed, 14 Dec 2016 18:45:25 GMT  
		Size: 1.2 MB (1216932 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea8f451ca2768673987698755e5f149a8b4f417b4cd1b24e2106653917d3d66e`  
		Last Modified: Wed, 14 Dec 2016 18:45:28 GMT  
		Size: 6.9 MB (6865443 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bce67042ed9c7acc2e339a46f508707a06e1ee39dddf3b8330eeca13268fbf7b`  
		Last Modified: Wed, 14 Dec 2016 18:45:22 GMT  
		Size: 113.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb0990abb35a40a99a29d1a8126581ade8e4dead5e79a0e92e546c72b0ccc145`  
		Last Modified: Wed, 14 Dec 2016 18:45:22 GMT  
		Size: 3.4 KB (3418 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2290b14a7a839ff53a8ad2558688bdf200503c9d8aae4ca62b978cddf66035c1`  
		Last Modified: Wed, 14 Dec 2016 18:52:42 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8299ec3f6ebe4e563251f9e8d504d2417fa27873fcd7a041ecfc07615e8c543b`  
		Last Modified: Wed, 14 Dec 2016 18:52:56 GMT  
		Size: 40.9 MB (40929758 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4afa08903bb956a82e6a4e6f691076f9740182d5d6c0247b20b2e0345e02574e`  
		Last Modified: Wed, 14 Dec 2016 18:52:42 GMT  
		Size: 6.5 KB (6471 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79890e2606996d537b51e0ba8988a83df91e6801910cd972ebe68152975148e6`  
		Last Modified: Wed, 14 Dec 2016 18:52:42 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c5173a12916f2b91179df62d8200e226b16d98073a92c3dad9e27d8f5e2b21d`  
		Last Modified: Wed, 14 Dec 2016 18:52:42 GMT  
		Size: 1.5 KB (1523 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.2`

```console
$ docker pull postgres@sha256:5990222995a51d9c5748d94f4c9eb42c9321ffc0495bbb09672403d0a3dab2ed
```

-	Platforms:
	-	linux; amd64

### `postgres:9.2` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **100.4 MB (100389180 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f8e968015cb6fb97c001590516309f861d332eab1248f7c056375d8f51ffd00a`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Tue, 13 Dec 2016 22:10:59 GMT
ADD file:1d214d2782eaccc743b8d683ccecf2f87f12a0ecdfbcd6fdf4943ce616f23870 in / 
# Tue, 13 Dec 2016 22:10:59 GMT
CMD ["/bin/bash"]
# Wed, 14 Dec 2016 16:40:32 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Wed, 14 Dec 2016 16:40:32 GMT
ENV GOSU_VERSION=1.7
# Wed, 14 Dec 2016 17:20:34 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 14 Dec 2016 17:20:42 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Wed, 14 Dec 2016 17:20:43 GMT
ENV LANG=en_US.utf8
# Wed, 14 Dec 2016 17:20:44 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 14 Dec 2016 17:33:55 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8
# Wed, 14 Dec 2016 17:34:29 GMT
ENV PG_MAJOR=9.2
# Wed, 14 Dec 2016 17:34:29 GMT
ENV PG_VERSION=9.2.19-1.pgdg80+1
# Wed, 14 Dec 2016 17:34:30 GMT
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main' $PG_MAJOR > /etc/apt/sources.list.d/pgdg.list
# Wed, 14 Dec 2016 17:34:56 GMT
RUN apt-get update 	&& apt-get install -y postgresql-common 	&& sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf 	&& apt-get install -y 		postgresql-$PG_MAJOR=$PG_VERSION 		postgresql-contrib-$PG_MAJOR=$PG_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Dec 2016 17:34:57 GMT
RUN mv -v /usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample /usr/share/postgresql/$PG_MAJOR/ 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Wed, 14 Dec 2016 17:34:58 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres /var/run/postgresql
# Wed, 14 Dec 2016 17:34:58 GMT
ENV PATH=/usr/lib/postgresql/9.2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 14 Dec 2016 17:34:59 GMT
ENV PGDATA=/var/lib/postgresql/data
# Wed, 14 Dec 2016 17:34:59 GMT
VOLUME [/var/lib/postgresql/data]
# Wed, 14 Dec 2016 17:34:59 GMT
COPY file:7a3ca4e07eaa2efd2865a7531b50d4790f1c894522340bd45caba3e8d319a644 in / 
# Wed, 14 Dec 2016 17:35:00 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 14 Dec 2016 17:35:00 GMT
EXPOSE 5432/tcp
# Wed, 14 Dec 2016 17:35:00 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:75a822cd7888e394c49828b951061402d31745f596b1f502758570f2d0ee79e2`  
		Last Modified: Tue, 13 Dec 2016 22:16:41 GMT  
		Size: 51.4 MB (51363125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68f8c57d4ec8c15627d853ccb19dbd6d4849d3454fc690edcab0f9a019c90ac5`  
		Last Modified: Wed, 14 Dec 2016 18:45:25 GMT  
		Size: 2.0 KB (2040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ee19503c02aca2ee3c9c1852ae1037f72535c30c382c3abfe074ac25ae809db`  
		Last Modified: Wed, 14 Dec 2016 18:45:25 GMT  
		Size: 1.2 MB (1216932 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea8f451ca2768673987698755e5f149a8b4f417b4cd1b24e2106653917d3d66e`  
		Last Modified: Wed, 14 Dec 2016 18:45:28 GMT  
		Size: 6.9 MB (6865443 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bce67042ed9c7acc2e339a46f508707a06e1ee39dddf3b8330eeca13268fbf7b`  
		Last Modified: Wed, 14 Dec 2016 18:45:22 GMT  
		Size: 113.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb0990abb35a40a99a29d1a8126581ade8e4dead5e79a0e92e546c72b0ccc145`  
		Last Modified: Wed, 14 Dec 2016 18:45:22 GMT  
		Size: 3.4 KB (3418 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2290b14a7a839ff53a8ad2558688bdf200503c9d8aae4ca62b978cddf66035c1`  
		Last Modified: Wed, 14 Dec 2016 18:52:42 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8299ec3f6ebe4e563251f9e8d504d2417fa27873fcd7a041ecfc07615e8c543b`  
		Last Modified: Wed, 14 Dec 2016 18:52:56 GMT  
		Size: 40.9 MB (40929758 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4afa08903bb956a82e6a4e6f691076f9740182d5d6c0247b20b2e0345e02574e`  
		Last Modified: Wed, 14 Dec 2016 18:52:42 GMT  
		Size: 6.5 KB (6471 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79890e2606996d537b51e0ba8988a83df91e6801910cd972ebe68152975148e6`  
		Last Modified: Wed, 14 Dec 2016 18:52:42 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c5173a12916f2b91179df62d8200e226b16d98073a92c3dad9e27d8f5e2b21d`  
		Last Modified: Wed, 14 Dec 2016 18:52:42 GMT  
		Size: 1.5 KB (1523 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.2.19-alpine`

```console
$ docker pull postgres@sha256:075cb58800fed3193c1a35d56943e8b8b08ee232dc043f964bbcf66945ae5c6a
```

-	Platforms:
	-	linux; amd64

### `postgres:9.2.19-alpine` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.3 MB (12293871 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9257a1fc4c3bcc14bda599968a8dc67600938170758bcec048880765fdcca32b`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:25 GMT
ADD file:92ab746eb22dd3ed2b87469c719adf3c1bed7302653bbd76baafd7cfd95e911e in / 
# Wed, 04 Jan 2017 21:12:51 GMT
ENV LANG=en_US.utf8
# Wed, 04 Jan 2017 21:12:52 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 04 Jan 2017 21:21:14 GMT
ENV PG_MAJOR=9.2
# Wed, 04 Jan 2017 21:21:14 GMT
ENV PG_VERSION=9.2.19
# Wed, 04 Jan 2017 21:21:14 GMT
ENV PG_SHA256=1d29d73a4f590fcc348280f13ac2ff6a0f72c94908c54e3c20b7ab1560e8dbad
# Wed, 04 Jan 2017 21:23:01 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl 		util-linux-dev 		zlib-dev 		&& cd /usr/src/postgresql 	&& ./configure 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(getconf _NPROCESSORS_ONLN)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/include/* 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Wed, 04 Jan 2017 21:23:02 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Wed, 04 Jan 2017 21:23:02 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres /var/run/postgresql
# Wed, 04 Jan 2017 21:23:03 GMT
ENV PATH=/usr/lib/postgresql/9.2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 04 Jan 2017 21:23:03 GMT
ENV PGDATA=/var/lib/postgresql/data
# Wed, 04 Jan 2017 21:23:03 GMT
VOLUME [/var/lib/postgresql/data]
# Wed, 04 Jan 2017 21:23:04 GMT
COPY file:aac9c9cf495b26b1edb61976da546521ef55bc2bb8bf30227c9de6e93313afce in / 
# Wed, 04 Jan 2017 21:23:04 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 04 Jan 2017 21:23:04 GMT
EXPOSE 5432/tcp
# Wed, 04 Jan 2017 21:23:05 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:0a8490d0dfd399b3a50e9aaa81dba0d425c3868762d46526b41be00886bcc28b`  
		Last Modified: Tue, 27 Dec 2016 18:19:22 GMT  
		Size: 1.9 MB (1902063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6475055d17e005d634c9d02e63e4154e7c4435a6437afa80bef303e6c6efb7d`  
		Last Modified: Thu, 05 Jan 2017 00:25:52 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b80bc2af7428514c4fa11797db339f60c96a73fd074cbe65a28c5b3efb4fd28`  
		Last Modified: Thu, 05 Jan 2017 00:32:08 GMT  
		Size: 10.4 MB (10383588 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2254235e3aeffec313dc86d5ebddfdd9febc09bcf3a5b34336b2b17ccbe2e2d`  
		Last Modified: Thu, 05 Jan 2017 00:31:59 GMT  
		Size: 6.4 KB (6441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da47b8dc95d279d9ed155a253480fdd7e982eb4256e6f09bdaf58b82f02f08f6`  
		Last Modified: Thu, 05 Jan 2017 00:32:00 GMT  
		Size: 141.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da4275e4e2accd4fdfff5cfb8106098dab31611ad767124849733ca7f5783aa8`  
		Last Modified: Thu, 05 Jan 2017 00:32:00 GMT  
		Size: 1.5 KB (1524 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.2-alpine`

```console
$ docker pull postgres@sha256:075cb58800fed3193c1a35d56943e8b8b08ee232dc043f964bbcf66945ae5c6a
```

-	Platforms:
	-	linux; amd64

### `postgres:9.2-alpine` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.3 MB (12293871 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9257a1fc4c3bcc14bda599968a8dc67600938170758bcec048880765fdcca32b`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:25 GMT
ADD file:92ab746eb22dd3ed2b87469c719adf3c1bed7302653bbd76baafd7cfd95e911e in / 
# Wed, 04 Jan 2017 21:12:51 GMT
ENV LANG=en_US.utf8
# Wed, 04 Jan 2017 21:12:52 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 04 Jan 2017 21:21:14 GMT
ENV PG_MAJOR=9.2
# Wed, 04 Jan 2017 21:21:14 GMT
ENV PG_VERSION=9.2.19
# Wed, 04 Jan 2017 21:21:14 GMT
ENV PG_SHA256=1d29d73a4f590fcc348280f13ac2ff6a0f72c94908c54e3c20b7ab1560e8dbad
# Wed, 04 Jan 2017 21:23:01 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl 		util-linux-dev 		zlib-dev 		&& cd /usr/src/postgresql 	&& ./configure 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(getconf _NPROCESSORS_ONLN)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/include/* 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Wed, 04 Jan 2017 21:23:02 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Wed, 04 Jan 2017 21:23:02 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres /var/run/postgresql
# Wed, 04 Jan 2017 21:23:03 GMT
ENV PATH=/usr/lib/postgresql/9.2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 04 Jan 2017 21:23:03 GMT
ENV PGDATA=/var/lib/postgresql/data
# Wed, 04 Jan 2017 21:23:03 GMT
VOLUME [/var/lib/postgresql/data]
# Wed, 04 Jan 2017 21:23:04 GMT
COPY file:aac9c9cf495b26b1edb61976da546521ef55bc2bb8bf30227c9de6e93313afce in / 
# Wed, 04 Jan 2017 21:23:04 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 04 Jan 2017 21:23:04 GMT
EXPOSE 5432/tcp
# Wed, 04 Jan 2017 21:23:05 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:0a8490d0dfd399b3a50e9aaa81dba0d425c3868762d46526b41be00886bcc28b`  
		Last Modified: Tue, 27 Dec 2016 18:19:22 GMT  
		Size: 1.9 MB (1902063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6475055d17e005d634c9d02e63e4154e7c4435a6437afa80bef303e6c6efb7d`  
		Last Modified: Thu, 05 Jan 2017 00:25:52 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b80bc2af7428514c4fa11797db339f60c96a73fd074cbe65a28c5b3efb4fd28`  
		Last Modified: Thu, 05 Jan 2017 00:32:08 GMT  
		Size: 10.4 MB (10383588 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2254235e3aeffec313dc86d5ebddfdd9febc09bcf3a5b34336b2b17ccbe2e2d`  
		Last Modified: Thu, 05 Jan 2017 00:31:59 GMT  
		Size: 6.4 KB (6441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da47b8dc95d279d9ed155a253480fdd7e982eb4256e6f09bdaf58b82f02f08f6`  
		Last Modified: Thu, 05 Jan 2017 00:32:00 GMT  
		Size: 141.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da4275e4e2accd4fdfff5cfb8106098dab31611ad767124849733ca7f5783aa8`  
		Last Modified: Thu, 05 Jan 2017 00:32:00 GMT  
		Size: 1.5 KB (1524 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
