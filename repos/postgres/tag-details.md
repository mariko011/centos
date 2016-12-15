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
$ docker pull postgres@sha256:4738856bd3d4a6538f2cae6a21ae8b58be779632d1022c9b249be73ae030586e
```

-	Platforms:
	-	linux; amd64

### `postgres:9.6.1-alpine` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.0 MB (16048513 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:32866891d3b6bad18e45f2fe59700c31cdeebb334666aa88812a618ad7e97e78`
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
# Wed, 14 Dec 2016 18:34:18 GMT
COPY file:aac9c9cf495b26b1edb61976da546521ef55bc2bb8bf30227c9de6e93313afce in / 
# Wed, 14 Dec 2016 18:34:19 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 14 Dec 2016 18:34:19 GMT
EXPOSE 5432/tcp
# Wed, 14 Dec 2016 18:34:19 GMT
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
	-	`sha256:b9100877443c720d218d0b7b9652040b89f9c7cdbd3253318d4becbe14eaf2dc`  
		Last Modified: Wed, 14 Dec 2016 18:46:48 GMT  
		Size: 1.5 KB (1525 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.6-alpine`

```console
$ docker pull postgres@sha256:4738856bd3d4a6538f2cae6a21ae8b58be779632d1022c9b249be73ae030586e
```

-	Platforms:
	-	linux; amd64

### `postgres:9.6-alpine` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.0 MB (16048513 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:32866891d3b6bad18e45f2fe59700c31cdeebb334666aa88812a618ad7e97e78`
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
# Wed, 14 Dec 2016 18:34:18 GMT
COPY file:aac9c9cf495b26b1edb61976da546521ef55bc2bb8bf30227c9de6e93313afce in / 
# Wed, 14 Dec 2016 18:34:19 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 14 Dec 2016 18:34:19 GMT
EXPOSE 5432/tcp
# Wed, 14 Dec 2016 18:34:19 GMT
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
	-	`sha256:b9100877443c720d218d0b7b9652040b89f9c7cdbd3253318d4becbe14eaf2dc`  
		Last Modified: Wed, 14 Dec 2016 18:46:48 GMT  
		Size: 1.5 KB (1525 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9-alpine`

```console
$ docker pull postgres@sha256:4738856bd3d4a6538f2cae6a21ae8b58be779632d1022c9b249be73ae030586e
```

-	Platforms:
	-	linux; amd64

### `postgres:9-alpine` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.0 MB (16048513 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:32866891d3b6bad18e45f2fe59700c31cdeebb334666aa88812a618ad7e97e78`
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
# Wed, 14 Dec 2016 18:34:18 GMT
COPY file:aac9c9cf495b26b1edb61976da546521ef55bc2bb8bf30227c9de6e93313afce in / 
# Wed, 14 Dec 2016 18:34:19 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 14 Dec 2016 18:34:19 GMT
EXPOSE 5432/tcp
# Wed, 14 Dec 2016 18:34:19 GMT
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
	-	`sha256:b9100877443c720d218d0b7b9652040b89f9c7cdbd3253318d4becbe14eaf2dc`  
		Last Modified: Wed, 14 Dec 2016 18:46:48 GMT  
		Size: 1.5 KB (1525 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:alpine`

```console
$ docker pull postgres@sha256:4738856bd3d4a6538f2cae6a21ae8b58be779632d1022c9b249be73ae030586e
```

-	Platforms:
	-	linux; amd64

### `postgres:alpine` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.0 MB (16048513 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:32866891d3b6bad18e45f2fe59700c31cdeebb334666aa88812a618ad7e97e78`
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
# Wed, 14 Dec 2016 18:34:18 GMT
COPY file:aac9c9cf495b26b1edb61976da546521ef55bc2bb8bf30227c9de6e93313afce in / 
# Wed, 14 Dec 2016 18:34:19 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 14 Dec 2016 18:34:19 GMT
EXPOSE 5432/tcp
# Wed, 14 Dec 2016 18:34:19 GMT
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
	-	`sha256:b9100877443c720d218d0b7b9652040b89f9c7cdbd3253318d4becbe14eaf2dc`  
		Last Modified: Wed, 14 Dec 2016 18:46:48 GMT  
		Size: 1.5 KB (1525 bytes)  
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
$ docker pull postgres@sha256:dad3e526e577ee2017168064b673b1eb53439679661ff13c56f77a278571cbc0
```

-	Platforms:
	-	linux; amd64

### `postgres:9.5.5-alpine` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.7 MB (15697898 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a10647927eb8027c4afa6d2a5da3d56b791c1dbe673a06d65bddfe63a8c9ef1a`
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
# Wed, 14 Dec 2016 18:34:21 GMT
COPY file:aac9c9cf495b26b1edb61976da546521ef55bc2bb8bf30227c9de6e93313afce in / 
# Wed, 14 Dec 2016 18:34:21 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 14 Dec 2016 18:34:21 GMT
EXPOSE 5432/tcp
# Wed, 14 Dec 2016 18:34:22 GMT
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
	-	`sha256:e323aece9313649d3e3f915c1eaf1b93efe7464e122c68e9fca36fab2f6fb4ab`  
		Last Modified: Wed, 14 Dec 2016 18:48:50 GMT  
		Size: 1.5 KB (1524 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.5-alpine`

```console
$ docker pull postgres@sha256:dad3e526e577ee2017168064b673b1eb53439679661ff13c56f77a278571cbc0
```

-	Platforms:
	-	linux; amd64

### `postgres:9.5-alpine` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.7 MB (15697898 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a10647927eb8027c4afa6d2a5da3d56b791c1dbe673a06d65bddfe63a8c9ef1a`
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
# Wed, 14 Dec 2016 18:34:21 GMT
COPY file:aac9c9cf495b26b1edb61976da546521ef55bc2bb8bf30227c9de6e93313afce in / 
# Wed, 14 Dec 2016 18:34:21 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 14 Dec 2016 18:34:21 GMT
EXPOSE 5432/tcp
# Wed, 14 Dec 2016 18:34:22 GMT
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
	-	`sha256:e323aece9313649d3e3f915c1eaf1b93efe7464e122c68e9fca36fab2f6fb4ab`  
		Last Modified: Wed, 14 Dec 2016 18:48:50 GMT  
		Size: 1.5 KB (1524 bytes)  
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
$ docker pull postgres@sha256:5c7a2ed068a3619fbfde8cafb6ae7501f3f9bf908869a43c55d972f889381ced
```

-	Platforms:
	-	linux; amd64

### `postgres:9.4.10-alpine` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.4 MB (15395812 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:59cb32ecc686ba85fb293faf4eacbb119ed58981da1e5f14ab53d1e88299666c`
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
# Wed, 14 Dec 2016 18:34:23 GMT
COPY file:aac9c9cf495b26b1edb61976da546521ef55bc2bb8bf30227c9de6e93313afce in / 
# Wed, 14 Dec 2016 18:34:23 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 14 Dec 2016 18:34:23 GMT
EXPOSE 5432/tcp
# Wed, 14 Dec 2016 18:34:24 GMT
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
	-	`sha256:4bf87eeb3e0b4bdc14938d24e9fcbe3410fbb44fcb3dee614208d6eb8e1f120c`  
		Last Modified: Wed, 14 Dec 2016 18:50:27 GMT  
		Size: 1.5 KB (1525 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.4-alpine`

```console
$ docker pull postgres@sha256:5c7a2ed068a3619fbfde8cafb6ae7501f3f9bf908869a43c55d972f889381ced
```

-	Platforms:
	-	linux; amd64

### `postgres:9.4-alpine` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.4 MB (15395812 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:59cb32ecc686ba85fb293faf4eacbb119ed58981da1e5f14ab53d1e88299666c`
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
# Wed, 14 Dec 2016 18:34:23 GMT
COPY file:aac9c9cf495b26b1edb61976da546521ef55bc2bb8bf30227c9de6e93313afce in / 
# Wed, 14 Dec 2016 18:34:23 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 14 Dec 2016 18:34:23 GMT
EXPOSE 5432/tcp
# Wed, 14 Dec 2016 18:34:24 GMT
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
	-	`sha256:4bf87eeb3e0b4bdc14938d24e9fcbe3410fbb44fcb3dee614208d6eb8e1f120c`  
		Last Modified: Wed, 14 Dec 2016 18:50:27 GMT  
		Size: 1.5 KB (1525 bytes)  
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
$ docker pull postgres@sha256:b46f5d141cbf4f7a13d09702fce2eb3eec2e0c9faaeb708dbdd8b53a10fb46b9
```

-	Platforms:
	-	linux; amd64

### `postgres:9.3.15-alpine` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.0 MB (14978816 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:13fa015529137de501ea4f4dd9277a19942bcb3a493b4da4231460add1136f8a`
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
# Wed, 14 Dec 2016 18:34:25 GMT
COPY file:aac9c9cf495b26b1edb61976da546521ef55bc2bb8bf30227c9de6e93313afce in / 
# Wed, 14 Dec 2016 18:34:25 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 14 Dec 2016 18:34:26 GMT
EXPOSE 5432/tcp
# Wed, 14 Dec 2016 18:34:26 GMT
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
	-	`sha256:3f44e5bbdb314635baef345adfc3f239d3b899da6772d4339a5f1501caf9addb`  
		Last Modified: Wed, 14 Dec 2016 18:52:04 GMT  
		Size: 1.5 KB (1522 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.3-alpine`

```console
$ docker pull postgres@sha256:b46f5d141cbf4f7a13d09702fce2eb3eec2e0c9faaeb708dbdd8b53a10fb46b9
```

-	Platforms:
	-	linux; amd64

### `postgres:9.3-alpine` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.0 MB (14978816 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:13fa015529137de501ea4f4dd9277a19942bcb3a493b4da4231460add1136f8a`
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
# Wed, 14 Dec 2016 18:34:25 GMT
COPY file:aac9c9cf495b26b1edb61976da546521ef55bc2bb8bf30227c9de6e93313afce in / 
# Wed, 14 Dec 2016 18:34:25 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 14 Dec 2016 18:34:26 GMT
EXPOSE 5432/tcp
# Wed, 14 Dec 2016 18:34:26 GMT
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
	-	`sha256:3f44e5bbdb314635baef345adfc3f239d3b899da6772d4339a5f1501caf9addb`  
		Last Modified: Wed, 14 Dec 2016 18:52:04 GMT  
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
$ docker pull postgres@sha256:35ee0bb30c667b4bf944cc64f58df841649b38e15c813e5a269dde4a0747d14b
```

-	Platforms:
	-	linux; amd64

### `postgres:9.2.19-alpine` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.7 MB (14698281 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:38b7e3e6566283b80a00994329fe8e8151edac178cfc2695326291f891581d91`
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
# Wed, 14 Dec 2016 18:34:27 GMT
COPY file:aac9c9cf495b26b1edb61976da546521ef55bc2bb8bf30227c9de6e93313afce in / 
# Wed, 14 Dec 2016 18:34:27 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 14 Dec 2016 18:34:28 GMT
EXPOSE 5432/tcp
# Wed, 14 Dec 2016 18:34:28 GMT
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
	-	`sha256:34df4d42a2e943ddf77729942ddf19568b5c11c200cd8686e813322e23b9fda0`  
		Last Modified: Wed, 14 Dec 2016 18:53:37 GMT  
		Size: 1.5 KB (1522 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.2-alpine`

```console
$ docker pull postgres@sha256:35ee0bb30c667b4bf944cc64f58df841649b38e15c813e5a269dde4a0747d14b
```

-	Platforms:
	-	linux; amd64

### `postgres:9.2-alpine` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.7 MB (14698281 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:38b7e3e6566283b80a00994329fe8e8151edac178cfc2695326291f891581d91`
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
# Wed, 14 Dec 2016 18:34:27 GMT
COPY file:aac9c9cf495b26b1edb61976da546521ef55bc2bb8bf30227c9de6e93313afce in / 
# Wed, 14 Dec 2016 18:34:27 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 14 Dec 2016 18:34:28 GMT
EXPOSE 5432/tcp
# Wed, 14 Dec 2016 18:34:28 GMT
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
	-	`sha256:34df4d42a2e943ddf77729942ddf19568b5c11c200cd8686e813322e23b9fda0`  
		Last Modified: Wed, 14 Dec 2016 18:53:37 GMT  
		Size: 1.5 KB (1522 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
