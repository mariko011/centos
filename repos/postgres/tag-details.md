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
$ docker pull postgres@sha256:e761829c4b5ec27a0798a867e5929049f4cbf243a364c81cad07e4b7ac2df3f1
```

-	Platforms:
	-	linux; amd64

### `postgres:9.6` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **101.6 MB (101590260 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:78e3985acac0ede5faff5ffd84584b2278ac47d4c8fdf39f287efd8dd8104ee0`
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
# Wed, 07 Dec 2016 19:32:26 GMT
COPY file:2667342c88c3e4659053a9d07a70f09350f6491759c2f19164575dfc2351c7d0 in / 
# Wed, 07 Dec 2016 19:32:26 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 07 Dec 2016 19:32:27 GMT
EXPOSE 5432/tcp
# Wed, 07 Dec 2016 19:32:27 GMT
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
	-	`sha256:004275e6f5b567861232baffd057871783683edb401d6f7550a22045284b4bd0`  
		Last Modified: Wed, 07 Dec 2016 19:33:01 GMT  
		Size: 1.5 KB (1523 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9`

```console
$ docker pull postgres@sha256:e761829c4b5ec27a0798a867e5929049f4cbf243a364c81cad07e4b7ac2df3f1
```

-	Platforms:
	-	linux; amd64

### `postgres:9` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **101.6 MB (101590260 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:78e3985acac0ede5faff5ffd84584b2278ac47d4c8fdf39f287efd8dd8104ee0`
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
# Wed, 07 Dec 2016 19:32:26 GMT
COPY file:2667342c88c3e4659053a9d07a70f09350f6491759c2f19164575dfc2351c7d0 in / 
# Wed, 07 Dec 2016 19:32:26 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 07 Dec 2016 19:32:27 GMT
EXPOSE 5432/tcp
# Wed, 07 Dec 2016 19:32:27 GMT
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
	-	`sha256:004275e6f5b567861232baffd057871783683edb401d6f7550a22045284b4bd0`  
		Last Modified: Wed, 07 Dec 2016 19:33:01 GMT  
		Size: 1.5 KB (1523 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:latest`

```console
$ docker pull postgres@sha256:e761829c4b5ec27a0798a867e5929049f4cbf243a364c81cad07e4b7ac2df3f1
```

-	Platforms:
	-	linux; amd64

### `postgres:latest` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **101.6 MB (101590260 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:78e3985acac0ede5faff5ffd84584b2278ac47d4c8fdf39f287efd8dd8104ee0`
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
# Wed, 07 Dec 2016 19:32:26 GMT
COPY file:2667342c88c3e4659053a9d07a70f09350f6491759c2f19164575dfc2351c7d0 in / 
# Wed, 07 Dec 2016 19:32:26 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 07 Dec 2016 19:32:27 GMT
EXPOSE 5432/tcp
# Wed, 07 Dec 2016 19:32:27 GMT
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
	-	`sha256:004275e6f5b567861232baffd057871783683edb401d6f7550a22045284b4bd0`  
		Last Modified: Wed, 07 Dec 2016 19:33:01 GMT  
		Size: 1.5 KB (1523 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.6.1-alpine`

```console
$ docker pull postgres@sha256:7a38b56e08bb290dc170aa44196567c73390fa648a48184f5d54b3eac1efdd5e
```

-	Platforms:
	-	linux; amd64

### `postgres:9.6.1-alpine` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.0 MB (16048512 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3181806859ac5db100880b806ab0c0436d1e3f9bf347ecee1825d8694e0f8309`
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
# Wed, 07 Dec 2016 19:32:28 GMT
COPY file:c6838fba8b6ff76214bbfbc2906fba2f4f70bf4463f34621dbe0f9570cd87678 in / 
# Wed, 07 Dec 2016 19:32:29 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 07 Dec 2016 19:32:29 GMT
EXPOSE 5432/tcp
# Wed, 07 Dec 2016 19:32:30 GMT
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
	-	`sha256:60b306b6b9ac484f8df31dbd5062c9a4730270b509f7aa32c317daa2a7dfad4e`  
		Last Modified: Wed, 07 Dec 2016 19:34:06 GMT  
		Size: 1.5 KB (1524 bytes)  
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
$ docker pull postgres@sha256:680e099c4ee23abebfa1cd745e8f8cc1d719b5944ad6df33709d9b5b566bd673
```

-	Platforms:
	-	linux; amd64

### `postgres:9.5.5` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **101.3 MB (101303134 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4e0702dabb8e2b6d7993373651588c6d54675a9d30ffd35d4ef4a30530a35102`
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
# Wed, 07 Dec 2016 19:32:31 GMT
COPY file:2667342c88c3e4659053a9d07a70f09350f6491759c2f19164575dfc2351c7d0 in / 
# Wed, 07 Dec 2016 19:32:31 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 07 Dec 2016 19:32:32 GMT
EXPOSE 5432/tcp
# Wed, 07 Dec 2016 19:32:32 GMT
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
	-	`sha256:11ca2be6b052e02224fbbe71a7a0c7c1534a081a9a8f5c9eb45ab11a49306ab5`  
		Last Modified: Wed, 07 Dec 2016 19:35:08 GMT  
		Size: 1.5 KB (1523 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.5`

```console
$ docker pull postgres@sha256:680e099c4ee23abebfa1cd745e8f8cc1d719b5944ad6df33709d9b5b566bd673
```

-	Platforms:
	-	linux; amd64

### `postgres:9.5` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **101.3 MB (101303134 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4e0702dabb8e2b6d7993373651588c6d54675a9d30ffd35d4ef4a30530a35102`
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
# Wed, 07 Dec 2016 19:32:31 GMT
COPY file:2667342c88c3e4659053a9d07a70f09350f6491759c2f19164575dfc2351c7d0 in / 
# Wed, 07 Dec 2016 19:32:31 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 07 Dec 2016 19:32:32 GMT
EXPOSE 5432/tcp
# Wed, 07 Dec 2016 19:32:32 GMT
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
	-	`sha256:11ca2be6b052e02224fbbe71a7a0c7c1534a081a9a8f5c9eb45ab11a49306ab5`  
		Last Modified: Wed, 07 Dec 2016 19:35:08 GMT  
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
$ docker pull postgres@sha256:830cdd8428d10c206df9e4e7e000bfdbb34060a51c93dd0dac34a46534afe1b0
```

-	Platforms:
	-	linux; amd64

### `postgres:9.5-alpine` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.7 MB (15697898 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e7612d2e79c51e0b9f35f68cb2179e2ff6cb51ed687baa68fcec63375c5cab2d`
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
# Wed, 07 Dec 2016 19:32:33 GMT
COPY file:c6838fba8b6ff76214bbfbc2906fba2f4f70bf4463f34621dbe0f9570cd87678 in / 
# Wed, 07 Dec 2016 19:32:33 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 07 Dec 2016 19:32:34 GMT
EXPOSE 5432/tcp
# Wed, 07 Dec 2016 19:32:34 GMT
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
	-	`sha256:79030b69204c725d2284a626ce9c9c70fa9ecfc719827a078172d863605293e3`  
		Last Modified: Wed, 07 Dec 2016 19:35:41 GMT  
		Size: 1.5 KB (1524 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.4.10`

```console
$ docker pull postgres@sha256:bb115ff166cdeb57767b54843ae5c8c990b5bdccb91b05977a740a14e18379b5
```

-	Platforms:
	-	linux; amd64

### `postgres:9.4.10` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **100.9 MB (100900952 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:329faa56d2013a2edf970b05f9eeff4759b76c70fa7cfc97c6e6812d0b5ca4bd`
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
# Wed, 07 Dec 2016 19:32:35 GMT
COPY file:2667342c88c3e4659053a9d07a70f09350f6491759c2f19164575dfc2351c7d0 in / 
# Wed, 07 Dec 2016 19:32:36 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 07 Dec 2016 19:32:36 GMT
EXPOSE 5432/tcp
# Wed, 07 Dec 2016 19:32:36 GMT
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
	-	`sha256:9bf949fafd66078372944ecebbb70ae6250560be2eb44e5233852106b748fb1f`  
		Last Modified: Wed, 07 Dec 2016 19:36:14 GMT  
		Size: 1.5 KB (1523 bytes)  
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
$ docker pull postgres@sha256:cc42fc8af707fc737176e9fd431a26d0136d0f74b316e038c48cf817a3dafc8e
```

-	Platforms:
	-	linux; amd64

### `postgres:9.4-alpine` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.4 MB (15395810 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cac81bb1ab601ec2f90c8643c1d0c3a91a0067c00369664f1c8072ec312dd8df`
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
# Wed, 07 Dec 2016 19:32:37 GMT
COPY file:c6838fba8b6ff76214bbfbc2906fba2f4f70bf4463f34621dbe0f9570cd87678 in / 
# Wed, 07 Dec 2016 19:32:38 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 07 Dec 2016 19:32:38 GMT
EXPOSE 5432/tcp
# Wed, 07 Dec 2016 19:32:39 GMT
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
	-	`sha256:a9417165fbb72eec8a05e2c7b8a51f41ab22db95b1d0d8ea2bc1f88dd83413f0`  
		Last Modified: Wed, 07 Dec 2016 19:36:48 GMT  
		Size: 1.5 KB (1523 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.3.15`

```console
$ docker pull postgres@sha256:893941f2404956526d69d70f47cf1956c6ad146785442b1982435dc7f9c96b22
```

-	Platforms:
	-	linux; amd64

### `postgres:9.3.15` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **100.5 MB (100541642 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9c69bb727b2329e12908a830578c0fb510b42a67f0d25146c68c8b9f2252ef62`
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
# Wed, 07 Dec 2016 19:32:40 GMT
COPY file:2667342c88c3e4659053a9d07a70f09350f6491759c2f19164575dfc2351c7d0 in / 
# Wed, 07 Dec 2016 19:32:40 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 07 Dec 2016 19:32:40 GMT
EXPOSE 5432/tcp
# Wed, 07 Dec 2016 19:32:41 GMT
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
	-	`sha256:edeed8413a48c0c187289f3bd7be513032f2fa44ac88339a455573bab82f0624`  
		Last Modified: Wed, 07 Dec 2016 19:37:21 GMT  
		Size: 1.5 KB (1523 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.3`

```console
$ docker pull postgres@sha256:893941f2404956526d69d70f47cf1956c6ad146785442b1982435dc7f9c96b22
```

-	Platforms:
	-	linux; amd64

### `postgres:9.3` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **100.5 MB (100541642 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9c69bb727b2329e12908a830578c0fb510b42a67f0d25146c68c8b9f2252ef62`
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
# Wed, 07 Dec 2016 19:32:40 GMT
COPY file:2667342c88c3e4659053a9d07a70f09350f6491759c2f19164575dfc2351c7d0 in / 
# Wed, 07 Dec 2016 19:32:40 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 07 Dec 2016 19:32:40 GMT
EXPOSE 5432/tcp
# Wed, 07 Dec 2016 19:32:41 GMT
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
	-	`sha256:edeed8413a48c0c187289f3bd7be513032f2fa44ac88339a455573bab82f0624`  
		Last Modified: Wed, 07 Dec 2016 19:37:21 GMT  
		Size: 1.5 KB (1523 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.3.15-alpine`

```console
$ docker pull postgres@sha256:563673d2680e72e9cc34fdc69b7fdfea934c56b080abd70e7d21963aad698072
```

-	Platforms:
	-	linux; amd64

### `postgres:9.3.15-alpine` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.0 MB (14978818 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4b1347826fae0684047e054ef0c06558f88304bc968f974e1d2ad2455f129826`
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
# Wed, 07 Dec 2016 19:32:42 GMT
COPY file:c6838fba8b6ff76214bbfbc2906fba2f4f70bf4463f34621dbe0f9570cd87678 in / 
# Wed, 07 Dec 2016 19:32:42 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 07 Dec 2016 19:32:42 GMT
EXPOSE 5432/tcp
# Wed, 07 Dec 2016 19:32:43 GMT
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
	-	`sha256:39064f6d9bc60b1bb0fac9d4cb9bc9d6205ed2a0c5ddbf78070ebbbc71d0d3c6`  
		Last Modified: Wed, 07 Dec 2016 19:37:56 GMT  
		Size: 1.5 KB (1524 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.3-alpine`

```console
$ docker pull postgres@sha256:563673d2680e72e9cc34fdc69b7fdfea934c56b080abd70e7d21963aad698072
```

-	Platforms:
	-	linux; amd64

### `postgres:9.3-alpine` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.0 MB (14978818 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4b1347826fae0684047e054ef0c06558f88304bc968f974e1d2ad2455f129826`
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
# Wed, 07 Dec 2016 19:32:42 GMT
COPY file:c6838fba8b6ff76214bbfbc2906fba2f4f70bf4463f34621dbe0f9570cd87678 in / 
# Wed, 07 Dec 2016 19:32:42 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 07 Dec 2016 19:32:42 GMT
EXPOSE 5432/tcp
# Wed, 07 Dec 2016 19:32:43 GMT
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
	-	`sha256:39064f6d9bc60b1bb0fac9d4cb9bc9d6205ed2a0c5ddbf78070ebbbc71d0d3c6`  
		Last Modified: Wed, 07 Dec 2016 19:37:56 GMT  
		Size: 1.5 KB (1524 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.2.19`

```console
$ docker pull postgres@sha256:544e28ce47f0d3584c8882d1188d586033b92d37eda167ddefa0b67b04efcb1a
```

-	Platforms:
	-	linux; amd64

### `postgres:9.2.19` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **100.4 MB (100381726 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:776b00686f8108b056f1f54171c5e080a4a2b35649fabe917b6e40110facbbe7`
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
# Wed, 07 Dec 2016 19:32:44 GMT
COPY file:2667342c88c3e4659053a9d07a70f09350f6491759c2f19164575dfc2351c7d0 in / 
# Wed, 07 Dec 2016 19:32:44 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 07 Dec 2016 19:32:45 GMT
EXPOSE 5432/tcp
# Wed, 07 Dec 2016 19:32:45 GMT
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
	-	`sha256:9e649d0039b9ee069f7868dddc718ae0f3fdeb295100a07cc6494889c24e833d`  
		Last Modified: Wed, 07 Dec 2016 19:38:30 GMT  
		Size: 1.5 KB (1524 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.2`

```console
$ docker pull postgres@sha256:544e28ce47f0d3584c8882d1188d586033b92d37eda167ddefa0b67b04efcb1a
```

-	Platforms:
	-	linux; amd64

### `postgres:9.2` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **100.4 MB (100381726 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:776b00686f8108b056f1f54171c5e080a4a2b35649fabe917b6e40110facbbe7`
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
# Wed, 07 Dec 2016 19:32:44 GMT
COPY file:2667342c88c3e4659053a9d07a70f09350f6491759c2f19164575dfc2351c7d0 in / 
# Wed, 07 Dec 2016 19:32:44 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 07 Dec 2016 19:32:45 GMT
EXPOSE 5432/tcp
# Wed, 07 Dec 2016 19:32:45 GMT
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
	-	`sha256:9e649d0039b9ee069f7868dddc718ae0f3fdeb295100a07cc6494889c24e833d`  
		Last Modified: Wed, 07 Dec 2016 19:38:30 GMT  
		Size: 1.5 KB (1524 bytes)  
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
$ docker pull postgres@sha256:78cac9e32a912f55d560001295dd1c5a822a06898d62a1790e81eceb41e5f7f3
```

-	Platforms:
	-	linux; amd64

### `postgres:9.2-alpine` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.7 MB (14698283 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:373bd0e383c84c2169f12417ee4e49d211d9b2bc51fdb2cec533c788ab04335d`
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
# Wed, 07 Dec 2016 19:32:46 GMT
COPY file:c6838fba8b6ff76214bbfbc2906fba2f4f70bf4463f34621dbe0f9570cd87678 in / 
# Wed, 07 Dec 2016 19:32:46 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 07 Dec 2016 19:32:47 GMT
EXPOSE 5432/tcp
# Wed, 07 Dec 2016 19:32:47 GMT
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
	-	`sha256:abc6da9b0b90d551792ad07310dca07b9d1ad7b10f85f6f1ab00d8309149a695`  
		Last Modified: Wed, 07 Dec 2016 19:39:04 GMT  
		Size: 1.5 KB (1524 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
