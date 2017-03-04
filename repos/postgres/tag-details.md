<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `postgres`

-	[`postgres:9.6.2`](#postgres962)
-	[`postgres:9.6`](#postgres96)
-	[`postgres:9`](#postgres9)
-	[`postgres:latest`](#postgreslatest)
-	[`postgres:9.6.2-alpine`](#postgres962-alpine)
-	[`postgres:9.6-alpine`](#postgres96-alpine)
-	[`postgres:9-alpine`](#postgres9-alpine)
-	[`postgres:alpine`](#postgresalpine)
-	[`postgres:9.5.6`](#postgres956)
-	[`postgres:9.5`](#postgres95)
-	[`postgres:9.5.6-alpine`](#postgres956-alpine)
-	[`postgres:9.5-alpine`](#postgres95-alpine)
-	[`postgres:9.4.11`](#postgres9411)
-	[`postgres:9.4`](#postgres94)
-	[`postgres:9.4.11-alpine`](#postgres9411-alpine)
-	[`postgres:9.4-alpine`](#postgres94-alpine)
-	[`postgres:9.3.16`](#postgres9316)
-	[`postgres:9.3`](#postgres93)
-	[`postgres:9.3.16-alpine`](#postgres9316-alpine)
-	[`postgres:9.3-alpine`](#postgres93-alpine)
-	[`postgres:9.2.20`](#postgres9220)
-	[`postgres:9.2`](#postgres92)
-	[`postgres:9.2.20-alpine`](#postgres9220-alpine)
-	[`postgres:9.2-alpine`](#postgres92-alpine)

## `postgres:9.6.2`

```console
$ docker pull postgres@sha256:6ac0fbeddde3bb7b0003a2ace8c126f742f8bdd90695801337d3edaaf1fcc478
```

-	Platforms:
	-	linux; amd64

### `postgres:9.6.2` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **101.8 MB (101800123 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4e18b2c30f8d0c8957f51f147feeeb631109e5dbc8476311a73603f48988f7eb`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 27 Feb 2017 20:34:36 GMT
ADD file:41ac8d85ee35954bf6c8353d9681a045ba260aa9a96dbbded7bcd6e37ee49bea in / 
# Mon, 27 Feb 2017 20:34:37 GMT
CMD ["/bin/bash"]
# Tue, 28 Feb 2017 18:09:54 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Tue, 28 Feb 2017 18:09:55 GMT
ENV GOSU_VERSION=1.7
# Tue, 28 Feb 2017 20:35:41 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 28 Feb 2017 20:35:50 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Tue, 28 Feb 2017 20:35:50 GMT
ENV LANG=en_US.utf8
# Tue, 28 Feb 2017 20:35:51 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 28 Feb 2017 20:35:52 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 28 Feb 2017 20:35:53 GMT
ENV PG_MAJOR=9.6
# Tue, 28 Feb 2017 20:35:53 GMT
ENV PG_VERSION=9.6.2-1.pgdg80+1
# Tue, 28 Feb 2017 20:35:54 GMT
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main' $PG_MAJOR > /etc/apt/sources.list.d/pgdg.list
# Tue, 28 Feb 2017 20:36:28 GMT
RUN apt-get update 	&& apt-get install -y postgresql-common 	&& sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf 	&& apt-get install -y 		postgresql-$PG_MAJOR=$PG_VERSION 		postgresql-contrib-$PG_MAJOR=$PG_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 20:36:29 GMT
RUN mv -v /usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample /usr/share/postgresql/$PG_MAJOR/ 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Tue, 28 Feb 2017 20:36:30 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod g+s /var/run/postgresql
# Tue, 28 Feb 2017 20:36:30 GMT
ENV PATH=/usr/lib/postgresql/9.6/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 28 Feb 2017 20:36:30 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 28 Feb 2017 20:36:31 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Tue, 28 Feb 2017 20:36:32 GMT
VOLUME [/var/lib/postgresql/data]
# Tue, 28 Feb 2017 20:36:32 GMT
COPY file:8d267d76d9551f01f3b15b68c484da091c34fd675a9b6adc8c279d52364efdfc in /usr/local/bin/ 
# Tue, 28 Feb 2017 20:36:33 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 28 Feb 2017 20:36:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 28 Feb 2017 20:36:34 GMT
EXPOSE 5432/tcp
# Tue, 28 Feb 2017 20:36:34 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:693502eb7dfbc6b94964ae66ebc72d3e32facd981c72995b09794f1e87bac184`  
		Last Modified: Mon, 27 Feb 2017 20:40:26 GMT  
		Size: 51.4 MB (51363374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31b3eb81653480d6e9cd3e08d0f9bde54ee10a2ebb39def924b15f4c6f3ee259`  
		Last Modified: Thu, 02 Mar 2017 03:16:16 GMT  
		Size: 2.0 KB (2042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8428acbbc47ce0256cb935c2a00e1f94c56fddd0fd4e7cf94f120bfa063ad6a7`  
		Last Modified: Thu, 02 Mar 2017 03:16:16 GMT  
		Size: 1.2 MB (1216875 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19552fac5eff8e5c7247c4554ea60b4c6376c2787563935b524dc1eba99c38e0`  
		Last Modified: Thu, 02 Mar 2017 03:16:17 GMT  
		Size: 6.9 MB (6865989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f19eddaec7204bf930c93ace1f31e9d5c89f5cbc60a6550668e549bd4d9304c`  
		Last Modified: Thu, 02 Mar 2017 03:16:13 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b476232c64c2168aeb466380eeccf32925d30ecbe98d1011aead0b2ea9401fbd`  
		Last Modified: Thu, 02 Mar 2017 03:16:13 GMT  
		Size: 4.5 KB (4484 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e964c853634f77b63f7d3ab423e7e5b9e429a6a077284a25e14c6c5625833d57`  
		Last Modified: Thu, 02 Mar 2017 03:20:03 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1868280d339f98e03a56ee158f04873a4a7685b8dd76cded639945911e392e58`  
		Last Modified: Thu, 02 Mar 2017 03:20:18 GMT  
		Size: 42.3 MB (42337788 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b71b256a9a26e5bf5a4f9c00baab7ac4dc7fe107d068fb05e57ffc162851546b`  
		Last Modified: Thu, 02 Mar 2017 03:20:01 GMT  
		Size: 7.1 KB (7124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7c0a0e9a89a751c45e10b239fb627fad878c918f6842fbaa058ddf889b7b287`  
		Last Modified: Thu, 02 Mar 2017 03:20:01 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c8a526087193d31f07584b6a7f6211a4809a3772f8735ecbae9d2094d6ba21e`  
		Last Modified: Thu, 02 Mar 2017 03:20:01 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:baead22f2b069d31386b501316aeb08fc8cf2a88f68f78071e05ddd3799d8f12`  
		Last Modified: Thu, 02 Mar 2017 03:20:00 GMT  
		Size: 1.7 KB (1692 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d6deeab32da54c31327a8788c367357564be3906ff5af2515aa55c14c2f51e8`  
		Last Modified: Thu, 02 Mar 2017 03:20:01 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.6`

```console
$ docker pull postgres@sha256:6ac0fbeddde3bb7b0003a2ace8c126f742f8bdd90695801337d3edaaf1fcc478
```

-	Platforms:
	-	linux; amd64

### `postgres:9.6` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **101.8 MB (101800123 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4e18b2c30f8d0c8957f51f147feeeb631109e5dbc8476311a73603f48988f7eb`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 27 Feb 2017 20:34:36 GMT
ADD file:41ac8d85ee35954bf6c8353d9681a045ba260aa9a96dbbded7bcd6e37ee49bea in / 
# Mon, 27 Feb 2017 20:34:37 GMT
CMD ["/bin/bash"]
# Tue, 28 Feb 2017 18:09:54 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Tue, 28 Feb 2017 18:09:55 GMT
ENV GOSU_VERSION=1.7
# Tue, 28 Feb 2017 20:35:41 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 28 Feb 2017 20:35:50 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Tue, 28 Feb 2017 20:35:50 GMT
ENV LANG=en_US.utf8
# Tue, 28 Feb 2017 20:35:51 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 28 Feb 2017 20:35:52 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 28 Feb 2017 20:35:53 GMT
ENV PG_MAJOR=9.6
# Tue, 28 Feb 2017 20:35:53 GMT
ENV PG_VERSION=9.6.2-1.pgdg80+1
# Tue, 28 Feb 2017 20:35:54 GMT
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main' $PG_MAJOR > /etc/apt/sources.list.d/pgdg.list
# Tue, 28 Feb 2017 20:36:28 GMT
RUN apt-get update 	&& apt-get install -y postgresql-common 	&& sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf 	&& apt-get install -y 		postgresql-$PG_MAJOR=$PG_VERSION 		postgresql-contrib-$PG_MAJOR=$PG_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 20:36:29 GMT
RUN mv -v /usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample /usr/share/postgresql/$PG_MAJOR/ 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Tue, 28 Feb 2017 20:36:30 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod g+s /var/run/postgresql
# Tue, 28 Feb 2017 20:36:30 GMT
ENV PATH=/usr/lib/postgresql/9.6/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 28 Feb 2017 20:36:30 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 28 Feb 2017 20:36:31 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Tue, 28 Feb 2017 20:36:32 GMT
VOLUME [/var/lib/postgresql/data]
# Tue, 28 Feb 2017 20:36:32 GMT
COPY file:8d267d76d9551f01f3b15b68c484da091c34fd675a9b6adc8c279d52364efdfc in /usr/local/bin/ 
# Tue, 28 Feb 2017 20:36:33 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 28 Feb 2017 20:36:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 28 Feb 2017 20:36:34 GMT
EXPOSE 5432/tcp
# Tue, 28 Feb 2017 20:36:34 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:693502eb7dfbc6b94964ae66ebc72d3e32facd981c72995b09794f1e87bac184`  
		Last Modified: Mon, 27 Feb 2017 20:40:26 GMT  
		Size: 51.4 MB (51363374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31b3eb81653480d6e9cd3e08d0f9bde54ee10a2ebb39def924b15f4c6f3ee259`  
		Last Modified: Thu, 02 Mar 2017 03:16:16 GMT  
		Size: 2.0 KB (2042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8428acbbc47ce0256cb935c2a00e1f94c56fddd0fd4e7cf94f120bfa063ad6a7`  
		Last Modified: Thu, 02 Mar 2017 03:16:16 GMT  
		Size: 1.2 MB (1216875 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19552fac5eff8e5c7247c4554ea60b4c6376c2787563935b524dc1eba99c38e0`  
		Last Modified: Thu, 02 Mar 2017 03:16:17 GMT  
		Size: 6.9 MB (6865989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f19eddaec7204bf930c93ace1f31e9d5c89f5cbc60a6550668e549bd4d9304c`  
		Last Modified: Thu, 02 Mar 2017 03:16:13 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b476232c64c2168aeb466380eeccf32925d30ecbe98d1011aead0b2ea9401fbd`  
		Last Modified: Thu, 02 Mar 2017 03:16:13 GMT  
		Size: 4.5 KB (4484 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e964c853634f77b63f7d3ab423e7e5b9e429a6a077284a25e14c6c5625833d57`  
		Last Modified: Thu, 02 Mar 2017 03:20:03 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1868280d339f98e03a56ee158f04873a4a7685b8dd76cded639945911e392e58`  
		Last Modified: Thu, 02 Mar 2017 03:20:18 GMT  
		Size: 42.3 MB (42337788 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b71b256a9a26e5bf5a4f9c00baab7ac4dc7fe107d068fb05e57ffc162851546b`  
		Last Modified: Thu, 02 Mar 2017 03:20:01 GMT  
		Size: 7.1 KB (7124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7c0a0e9a89a751c45e10b239fb627fad878c918f6842fbaa058ddf889b7b287`  
		Last Modified: Thu, 02 Mar 2017 03:20:01 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c8a526087193d31f07584b6a7f6211a4809a3772f8735ecbae9d2094d6ba21e`  
		Last Modified: Thu, 02 Mar 2017 03:20:01 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:baead22f2b069d31386b501316aeb08fc8cf2a88f68f78071e05ddd3799d8f12`  
		Last Modified: Thu, 02 Mar 2017 03:20:00 GMT  
		Size: 1.7 KB (1692 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d6deeab32da54c31327a8788c367357564be3906ff5af2515aa55c14c2f51e8`  
		Last Modified: Thu, 02 Mar 2017 03:20:01 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9`

```console
$ docker pull postgres@sha256:6ac0fbeddde3bb7b0003a2ace8c126f742f8bdd90695801337d3edaaf1fcc478
```

-	Platforms:
	-	linux; amd64

### `postgres:9` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **101.8 MB (101800123 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4e18b2c30f8d0c8957f51f147feeeb631109e5dbc8476311a73603f48988f7eb`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 27 Feb 2017 20:34:36 GMT
ADD file:41ac8d85ee35954bf6c8353d9681a045ba260aa9a96dbbded7bcd6e37ee49bea in / 
# Mon, 27 Feb 2017 20:34:37 GMT
CMD ["/bin/bash"]
# Tue, 28 Feb 2017 18:09:54 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Tue, 28 Feb 2017 18:09:55 GMT
ENV GOSU_VERSION=1.7
# Tue, 28 Feb 2017 20:35:41 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 28 Feb 2017 20:35:50 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Tue, 28 Feb 2017 20:35:50 GMT
ENV LANG=en_US.utf8
# Tue, 28 Feb 2017 20:35:51 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 28 Feb 2017 20:35:52 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 28 Feb 2017 20:35:53 GMT
ENV PG_MAJOR=9.6
# Tue, 28 Feb 2017 20:35:53 GMT
ENV PG_VERSION=9.6.2-1.pgdg80+1
# Tue, 28 Feb 2017 20:35:54 GMT
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main' $PG_MAJOR > /etc/apt/sources.list.d/pgdg.list
# Tue, 28 Feb 2017 20:36:28 GMT
RUN apt-get update 	&& apt-get install -y postgresql-common 	&& sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf 	&& apt-get install -y 		postgresql-$PG_MAJOR=$PG_VERSION 		postgresql-contrib-$PG_MAJOR=$PG_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 20:36:29 GMT
RUN mv -v /usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample /usr/share/postgresql/$PG_MAJOR/ 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Tue, 28 Feb 2017 20:36:30 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod g+s /var/run/postgresql
# Tue, 28 Feb 2017 20:36:30 GMT
ENV PATH=/usr/lib/postgresql/9.6/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 28 Feb 2017 20:36:30 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 28 Feb 2017 20:36:31 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Tue, 28 Feb 2017 20:36:32 GMT
VOLUME [/var/lib/postgresql/data]
# Tue, 28 Feb 2017 20:36:32 GMT
COPY file:8d267d76d9551f01f3b15b68c484da091c34fd675a9b6adc8c279d52364efdfc in /usr/local/bin/ 
# Tue, 28 Feb 2017 20:36:33 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 28 Feb 2017 20:36:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 28 Feb 2017 20:36:34 GMT
EXPOSE 5432/tcp
# Tue, 28 Feb 2017 20:36:34 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:693502eb7dfbc6b94964ae66ebc72d3e32facd981c72995b09794f1e87bac184`  
		Last Modified: Mon, 27 Feb 2017 20:40:26 GMT  
		Size: 51.4 MB (51363374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31b3eb81653480d6e9cd3e08d0f9bde54ee10a2ebb39def924b15f4c6f3ee259`  
		Last Modified: Thu, 02 Mar 2017 03:16:16 GMT  
		Size: 2.0 KB (2042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8428acbbc47ce0256cb935c2a00e1f94c56fddd0fd4e7cf94f120bfa063ad6a7`  
		Last Modified: Thu, 02 Mar 2017 03:16:16 GMT  
		Size: 1.2 MB (1216875 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19552fac5eff8e5c7247c4554ea60b4c6376c2787563935b524dc1eba99c38e0`  
		Last Modified: Thu, 02 Mar 2017 03:16:17 GMT  
		Size: 6.9 MB (6865989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f19eddaec7204bf930c93ace1f31e9d5c89f5cbc60a6550668e549bd4d9304c`  
		Last Modified: Thu, 02 Mar 2017 03:16:13 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b476232c64c2168aeb466380eeccf32925d30ecbe98d1011aead0b2ea9401fbd`  
		Last Modified: Thu, 02 Mar 2017 03:16:13 GMT  
		Size: 4.5 KB (4484 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e964c853634f77b63f7d3ab423e7e5b9e429a6a077284a25e14c6c5625833d57`  
		Last Modified: Thu, 02 Mar 2017 03:20:03 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1868280d339f98e03a56ee158f04873a4a7685b8dd76cded639945911e392e58`  
		Last Modified: Thu, 02 Mar 2017 03:20:18 GMT  
		Size: 42.3 MB (42337788 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b71b256a9a26e5bf5a4f9c00baab7ac4dc7fe107d068fb05e57ffc162851546b`  
		Last Modified: Thu, 02 Mar 2017 03:20:01 GMT  
		Size: 7.1 KB (7124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7c0a0e9a89a751c45e10b239fb627fad878c918f6842fbaa058ddf889b7b287`  
		Last Modified: Thu, 02 Mar 2017 03:20:01 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c8a526087193d31f07584b6a7f6211a4809a3772f8735ecbae9d2094d6ba21e`  
		Last Modified: Thu, 02 Mar 2017 03:20:01 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:baead22f2b069d31386b501316aeb08fc8cf2a88f68f78071e05ddd3799d8f12`  
		Last Modified: Thu, 02 Mar 2017 03:20:00 GMT  
		Size: 1.7 KB (1692 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d6deeab32da54c31327a8788c367357564be3906ff5af2515aa55c14c2f51e8`  
		Last Modified: Thu, 02 Mar 2017 03:20:01 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:latest`

```console
$ docker pull postgres@sha256:6ac0fbeddde3bb7b0003a2ace8c126f742f8bdd90695801337d3edaaf1fcc478
```

-	Platforms:
	-	linux; amd64

### `postgres:latest` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **101.8 MB (101800123 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4e18b2c30f8d0c8957f51f147feeeb631109e5dbc8476311a73603f48988f7eb`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 27 Feb 2017 20:34:36 GMT
ADD file:41ac8d85ee35954bf6c8353d9681a045ba260aa9a96dbbded7bcd6e37ee49bea in / 
# Mon, 27 Feb 2017 20:34:37 GMT
CMD ["/bin/bash"]
# Tue, 28 Feb 2017 18:09:54 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Tue, 28 Feb 2017 18:09:55 GMT
ENV GOSU_VERSION=1.7
# Tue, 28 Feb 2017 20:35:41 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 28 Feb 2017 20:35:50 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Tue, 28 Feb 2017 20:35:50 GMT
ENV LANG=en_US.utf8
# Tue, 28 Feb 2017 20:35:51 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 28 Feb 2017 20:35:52 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 28 Feb 2017 20:35:53 GMT
ENV PG_MAJOR=9.6
# Tue, 28 Feb 2017 20:35:53 GMT
ENV PG_VERSION=9.6.2-1.pgdg80+1
# Tue, 28 Feb 2017 20:35:54 GMT
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main' $PG_MAJOR > /etc/apt/sources.list.d/pgdg.list
# Tue, 28 Feb 2017 20:36:28 GMT
RUN apt-get update 	&& apt-get install -y postgresql-common 	&& sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf 	&& apt-get install -y 		postgresql-$PG_MAJOR=$PG_VERSION 		postgresql-contrib-$PG_MAJOR=$PG_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 20:36:29 GMT
RUN mv -v /usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample /usr/share/postgresql/$PG_MAJOR/ 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Tue, 28 Feb 2017 20:36:30 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod g+s /var/run/postgresql
# Tue, 28 Feb 2017 20:36:30 GMT
ENV PATH=/usr/lib/postgresql/9.6/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 28 Feb 2017 20:36:30 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 28 Feb 2017 20:36:31 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Tue, 28 Feb 2017 20:36:32 GMT
VOLUME [/var/lib/postgresql/data]
# Tue, 28 Feb 2017 20:36:32 GMT
COPY file:8d267d76d9551f01f3b15b68c484da091c34fd675a9b6adc8c279d52364efdfc in /usr/local/bin/ 
# Tue, 28 Feb 2017 20:36:33 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 28 Feb 2017 20:36:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 28 Feb 2017 20:36:34 GMT
EXPOSE 5432/tcp
# Tue, 28 Feb 2017 20:36:34 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:693502eb7dfbc6b94964ae66ebc72d3e32facd981c72995b09794f1e87bac184`  
		Last Modified: Mon, 27 Feb 2017 20:40:26 GMT  
		Size: 51.4 MB (51363374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31b3eb81653480d6e9cd3e08d0f9bde54ee10a2ebb39def924b15f4c6f3ee259`  
		Last Modified: Thu, 02 Mar 2017 03:16:16 GMT  
		Size: 2.0 KB (2042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8428acbbc47ce0256cb935c2a00e1f94c56fddd0fd4e7cf94f120bfa063ad6a7`  
		Last Modified: Thu, 02 Mar 2017 03:16:16 GMT  
		Size: 1.2 MB (1216875 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19552fac5eff8e5c7247c4554ea60b4c6376c2787563935b524dc1eba99c38e0`  
		Last Modified: Thu, 02 Mar 2017 03:16:17 GMT  
		Size: 6.9 MB (6865989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f19eddaec7204bf930c93ace1f31e9d5c89f5cbc60a6550668e549bd4d9304c`  
		Last Modified: Thu, 02 Mar 2017 03:16:13 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b476232c64c2168aeb466380eeccf32925d30ecbe98d1011aead0b2ea9401fbd`  
		Last Modified: Thu, 02 Mar 2017 03:16:13 GMT  
		Size: 4.5 KB (4484 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e964c853634f77b63f7d3ab423e7e5b9e429a6a077284a25e14c6c5625833d57`  
		Last Modified: Thu, 02 Mar 2017 03:20:03 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1868280d339f98e03a56ee158f04873a4a7685b8dd76cded639945911e392e58`  
		Last Modified: Thu, 02 Mar 2017 03:20:18 GMT  
		Size: 42.3 MB (42337788 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b71b256a9a26e5bf5a4f9c00baab7ac4dc7fe107d068fb05e57ffc162851546b`  
		Last Modified: Thu, 02 Mar 2017 03:20:01 GMT  
		Size: 7.1 KB (7124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7c0a0e9a89a751c45e10b239fb627fad878c918f6842fbaa058ddf889b7b287`  
		Last Modified: Thu, 02 Mar 2017 03:20:01 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c8a526087193d31f07584b6a7f6211a4809a3772f8735ecbae9d2094d6ba21e`  
		Last Modified: Thu, 02 Mar 2017 03:20:01 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:baead22f2b069d31386b501316aeb08fc8cf2a88f68f78071e05ddd3799d8f12`  
		Last Modified: Thu, 02 Mar 2017 03:20:00 GMT  
		Size: 1.7 KB (1692 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d6deeab32da54c31327a8788c367357564be3906ff5af2515aa55c14c2f51e8`  
		Last Modified: Thu, 02 Mar 2017 03:20:01 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.6.2-alpine`

```console
$ docker pull postgres@sha256:68a235499bc3b9a973851d1e0d30967f9b8d34aa15e6b53a325629ab62cf9fb4
```

-	Platforms:
	-	linux; amd64

### `postgres:9.6.2-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.0 MB (13992342 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9b5dae23793f03afd4d1ff5efcbdb03dea9ed1f670b119506840cade1aeb0b56`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:37 GMT
ADD file:730030a984f5f0c5dc9b15ab61da161082b5c0f6e112a9c921b42321140c3927 in / 
# Fri, 03 Mar 2017 23:12:20 GMT
ENV LANG=en_US.utf8
# Fri, 03 Mar 2017 23:12:21 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 03 Mar 2017 23:12:21 GMT
ENV PG_MAJOR=9.6
# Fri, 03 Mar 2017 23:12:21 GMT
ENV PG_VERSION=9.6.2
# Fri, 03 Mar 2017 23:12:22 GMT
ENV PG_SHA256=0187b5184be1c09034e74e44761505e52357248451b0c854dddec6c231fe50c9
# Fri, 03 Mar 2017 23:14:58 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl 		util-linux-dev 		zlib-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& ./configure 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(getconf _NPROCESSORS_ONLN)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Fri, 03 Mar 2017 23:14:59 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Fri, 03 Mar 2017 23:15:00 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod g+s /var/run/postgresql
# Fri, 03 Mar 2017 23:15:00 GMT
ENV PATH=/usr/lib/postgresql/9.6/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 03 Mar 2017 23:15:01 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 03 Mar 2017 23:15:02 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 03 Mar 2017 23:15:02 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 03 Mar 2017 23:15:03 GMT
COPY file:f9a2410e9ac1ac1f8eaaa7097935e1bc01697a3aea28753ca0ff43bcb928e743 in /usr/local/bin/ 
# Fri, 03 Mar 2017 23:15:03 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 03 Mar 2017 23:15:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 03 Mar 2017 23:15:04 GMT
EXPOSE 5432/tcp
# Fri, 03 Mar 2017 23:15:04 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:627beaf3eaaff1c0bc3311d60fb933c17ad04fe377e1043d9593646d8ae3bfe1`  
		Last Modified: Fri, 03 Mar 2017 20:34:41 GMT  
		Size: 1.9 MB (1905270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d555ba539f475d381bd03abd3e00bc4ca815118f0e3d65a679b7c63f1c78fd6`  
		Last Modified: Sat, 04 Mar 2017 05:36:11 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8881d24649e928cf37d40d99419ed3cb7d1d96f2d1668e3c37b8697c7107cb1f`  
		Last Modified: Sat, 04 Mar 2017 05:42:31 GMT  
		Size: 12.1 MB (12077750 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4147686a3b8107e51c05244b06974afd28406397a073ed38aa0fb832d455140`  
		Last Modified: Sat, 04 Mar 2017 05:41:57 GMT  
		Size: 7.1 KB (7096 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82e1d445e6793de10aaeec5c1d3001b2067b1d63a7e42ab30ef13fb02de86caf`  
		Last Modified: Sat, 04 Mar 2017 05:41:55 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d2947880c966284515fc7c1f42f8b4ca8f1baa7e2dde914bc4d83c51dbe2a59`  
		Last Modified: Sat, 04 Mar 2017 05:41:55 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37427cbce87bab19bec1dec550945981826fd5ef0a91dccdbb4a173101ffd731`  
		Last Modified: Sat, 04 Mar 2017 05:41:55 GMT  
		Size: 1.7 KB (1683 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a66e2feb10c971036ae21e98d1ee86da2963d9f0885d2d5daa582c71649f3987`  
		Last Modified: Sat, 04 Mar 2017 05:41:55 GMT  
		Size: 119.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.6-alpine`

```console
$ docker pull postgres@sha256:68a235499bc3b9a973851d1e0d30967f9b8d34aa15e6b53a325629ab62cf9fb4
```

-	Platforms:
	-	linux; amd64

### `postgres:9.6-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.0 MB (13992342 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9b5dae23793f03afd4d1ff5efcbdb03dea9ed1f670b119506840cade1aeb0b56`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:37 GMT
ADD file:730030a984f5f0c5dc9b15ab61da161082b5c0f6e112a9c921b42321140c3927 in / 
# Fri, 03 Mar 2017 23:12:20 GMT
ENV LANG=en_US.utf8
# Fri, 03 Mar 2017 23:12:21 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 03 Mar 2017 23:12:21 GMT
ENV PG_MAJOR=9.6
# Fri, 03 Mar 2017 23:12:21 GMT
ENV PG_VERSION=9.6.2
# Fri, 03 Mar 2017 23:12:22 GMT
ENV PG_SHA256=0187b5184be1c09034e74e44761505e52357248451b0c854dddec6c231fe50c9
# Fri, 03 Mar 2017 23:14:58 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl 		util-linux-dev 		zlib-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& ./configure 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(getconf _NPROCESSORS_ONLN)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Fri, 03 Mar 2017 23:14:59 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Fri, 03 Mar 2017 23:15:00 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod g+s /var/run/postgresql
# Fri, 03 Mar 2017 23:15:00 GMT
ENV PATH=/usr/lib/postgresql/9.6/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 03 Mar 2017 23:15:01 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 03 Mar 2017 23:15:02 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 03 Mar 2017 23:15:02 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 03 Mar 2017 23:15:03 GMT
COPY file:f9a2410e9ac1ac1f8eaaa7097935e1bc01697a3aea28753ca0ff43bcb928e743 in /usr/local/bin/ 
# Fri, 03 Mar 2017 23:15:03 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 03 Mar 2017 23:15:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 03 Mar 2017 23:15:04 GMT
EXPOSE 5432/tcp
# Fri, 03 Mar 2017 23:15:04 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:627beaf3eaaff1c0bc3311d60fb933c17ad04fe377e1043d9593646d8ae3bfe1`  
		Last Modified: Fri, 03 Mar 2017 20:34:41 GMT  
		Size: 1.9 MB (1905270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d555ba539f475d381bd03abd3e00bc4ca815118f0e3d65a679b7c63f1c78fd6`  
		Last Modified: Sat, 04 Mar 2017 05:36:11 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8881d24649e928cf37d40d99419ed3cb7d1d96f2d1668e3c37b8697c7107cb1f`  
		Last Modified: Sat, 04 Mar 2017 05:42:31 GMT  
		Size: 12.1 MB (12077750 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4147686a3b8107e51c05244b06974afd28406397a073ed38aa0fb832d455140`  
		Last Modified: Sat, 04 Mar 2017 05:41:57 GMT  
		Size: 7.1 KB (7096 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82e1d445e6793de10aaeec5c1d3001b2067b1d63a7e42ab30ef13fb02de86caf`  
		Last Modified: Sat, 04 Mar 2017 05:41:55 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d2947880c966284515fc7c1f42f8b4ca8f1baa7e2dde914bc4d83c51dbe2a59`  
		Last Modified: Sat, 04 Mar 2017 05:41:55 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37427cbce87bab19bec1dec550945981826fd5ef0a91dccdbb4a173101ffd731`  
		Last Modified: Sat, 04 Mar 2017 05:41:55 GMT  
		Size: 1.7 KB (1683 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a66e2feb10c971036ae21e98d1ee86da2963d9f0885d2d5daa582c71649f3987`  
		Last Modified: Sat, 04 Mar 2017 05:41:55 GMT  
		Size: 119.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9-alpine`

```console
$ docker pull postgres@sha256:68a235499bc3b9a973851d1e0d30967f9b8d34aa15e6b53a325629ab62cf9fb4
```

-	Platforms:
	-	linux; amd64

### `postgres:9-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.0 MB (13992342 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9b5dae23793f03afd4d1ff5efcbdb03dea9ed1f670b119506840cade1aeb0b56`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:37 GMT
ADD file:730030a984f5f0c5dc9b15ab61da161082b5c0f6e112a9c921b42321140c3927 in / 
# Fri, 03 Mar 2017 23:12:20 GMT
ENV LANG=en_US.utf8
# Fri, 03 Mar 2017 23:12:21 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 03 Mar 2017 23:12:21 GMT
ENV PG_MAJOR=9.6
# Fri, 03 Mar 2017 23:12:21 GMT
ENV PG_VERSION=9.6.2
# Fri, 03 Mar 2017 23:12:22 GMT
ENV PG_SHA256=0187b5184be1c09034e74e44761505e52357248451b0c854dddec6c231fe50c9
# Fri, 03 Mar 2017 23:14:58 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl 		util-linux-dev 		zlib-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& ./configure 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(getconf _NPROCESSORS_ONLN)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Fri, 03 Mar 2017 23:14:59 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Fri, 03 Mar 2017 23:15:00 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod g+s /var/run/postgresql
# Fri, 03 Mar 2017 23:15:00 GMT
ENV PATH=/usr/lib/postgresql/9.6/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 03 Mar 2017 23:15:01 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 03 Mar 2017 23:15:02 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 03 Mar 2017 23:15:02 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 03 Mar 2017 23:15:03 GMT
COPY file:f9a2410e9ac1ac1f8eaaa7097935e1bc01697a3aea28753ca0ff43bcb928e743 in /usr/local/bin/ 
# Fri, 03 Mar 2017 23:15:03 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 03 Mar 2017 23:15:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 03 Mar 2017 23:15:04 GMT
EXPOSE 5432/tcp
# Fri, 03 Mar 2017 23:15:04 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:627beaf3eaaff1c0bc3311d60fb933c17ad04fe377e1043d9593646d8ae3bfe1`  
		Last Modified: Fri, 03 Mar 2017 20:34:41 GMT  
		Size: 1.9 MB (1905270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d555ba539f475d381bd03abd3e00bc4ca815118f0e3d65a679b7c63f1c78fd6`  
		Last Modified: Sat, 04 Mar 2017 05:36:11 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8881d24649e928cf37d40d99419ed3cb7d1d96f2d1668e3c37b8697c7107cb1f`  
		Last Modified: Sat, 04 Mar 2017 05:42:31 GMT  
		Size: 12.1 MB (12077750 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4147686a3b8107e51c05244b06974afd28406397a073ed38aa0fb832d455140`  
		Last Modified: Sat, 04 Mar 2017 05:41:57 GMT  
		Size: 7.1 KB (7096 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82e1d445e6793de10aaeec5c1d3001b2067b1d63a7e42ab30ef13fb02de86caf`  
		Last Modified: Sat, 04 Mar 2017 05:41:55 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d2947880c966284515fc7c1f42f8b4ca8f1baa7e2dde914bc4d83c51dbe2a59`  
		Last Modified: Sat, 04 Mar 2017 05:41:55 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37427cbce87bab19bec1dec550945981826fd5ef0a91dccdbb4a173101ffd731`  
		Last Modified: Sat, 04 Mar 2017 05:41:55 GMT  
		Size: 1.7 KB (1683 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a66e2feb10c971036ae21e98d1ee86da2963d9f0885d2d5daa582c71649f3987`  
		Last Modified: Sat, 04 Mar 2017 05:41:55 GMT  
		Size: 119.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:alpine`

```console
$ docker pull postgres@sha256:68a235499bc3b9a973851d1e0d30967f9b8d34aa15e6b53a325629ab62cf9fb4
```

-	Platforms:
	-	linux; amd64

### `postgres:alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.0 MB (13992342 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9b5dae23793f03afd4d1ff5efcbdb03dea9ed1f670b119506840cade1aeb0b56`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:37 GMT
ADD file:730030a984f5f0c5dc9b15ab61da161082b5c0f6e112a9c921b42321140c3927 in / 
# Fri, 03 Mar 2017 23:12:20 GMT
ENV LANG=en_US.utf8
# Fri, 03 Mar 2017 23:12:21 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 03 Mar 2017 23:12:21 GMT
ENV PG_MAJOR=9.6
# Fri, 03 Mar 2017 23:12:21 GMT
ENV PG_VERSION=9.6.2
# Fri, 03 Mar 2017 23:12:22 GMT
ENV PG_SHA256=0187b5184be1c09034e74e44761505e52357248451b0c854dddec6c231fe50c9
# Fri, 03 Mar 2017 23:14:58 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl 		util-linux-dev 		zlib-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& ./configure 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(getconf _NPROCESSORS_ONLN)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Fri, 03 Mar 2017 23:14:59 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Fri, 03 Mar 2017 23:15:00 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod g+s /var/run/postgresql
# Fri, 03 Mar 2017 23:15:00 GMT
ENV PATH=/usr/lib/postgresql/9.6/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 03 Mar 2017 23:15:01 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 03 Mar 2017 23:15:02 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 03 Mar 2017 23:15:02 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 03 Mar 2017 23:15:03 GMT
COPY file:f9a2410e9ac1ac1f8eaaa7097935e1bc01697a3aea28753ca0ff43bcb928e743 in /usr/local/bin/ 
# Fri, 03 Mar 2017 23:15:03 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 03 Mar 2017 23:15:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 03 Mar 2017 23:15:04 GMT
EXPOSE 5432/tcp
# Fri, 03 Mar 2017 23:15:04 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:627beaf3eaaff1c0bc3311d60fb933c17ad04fe377e1043d9593646d8ae3bfe1`  
		Last Modified: Fri, 03 Mar 2017 20:34:41 GMT  
		Size: 1.9 MB (1905270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d555ba539f475d381bd03abd3e00bc4ca815118f0e3d65a679b7c63f1c78fd6`  
		Last Modified: Sat, 04 Mar 2017 05:36:11 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8881d24649e928cf37d40d99419ed3cb7d1d96f2d1668e3c37b8697c7107cb1f`  
		Last Modified: Sat, 04 Mar 2017 05:42:31 GMT  
		Size: 12.1 MB (12077750 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4147686a3b8107e51c05244b06974afd28406397a073ed38aa0fb832d455140`  
		Last Modified: Sat, 04 Mar 2017 05:41:57 GMT  
		Size: 7.1 KB (7096 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82e1d445e6793de10aaeec5c1d3001b2067b1d63a7e42ab30ef13fb02de86caf`  
		Last Modified: Sat, 04 Mar 2017 05:41:55 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d2947880c966284515fc7c1f42f8b4ca8f1baa7e2dde914bc4d83c51dbe2a59`  
		Last Modified: Sat, 04 Mar 2017 05:41:55 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37427cbce87bab19bec1dec550945981826fd5ef0a91dccdbb4a173101ffd731`  
		Last Modified: Sat, 04 Mar 2017 05:41:55 GMT  
		Size: 1.7 KB (1683 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a66e2feb10c971036ae21e98d1ee86da2963d9f0885d2d5daa582c71649f3987`  
		Last Modified: Sat, 04 Mar 2017 05:41:55 GMT  
		Size: 119.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.5.6`

```console
$ docker pull postgres@sha256:77cdaa616533584032aca33a5c9e452efa9fdefb494d939029952ff3a6d2d1cd
```

-	Platforms:
	-	linux; amd64

### `postgres:9.5.6` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **101.3 MB (101330172 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:df22c7d3677651b73d270e35cacde4cc2df069424723e51d9d56e46dffd8be33`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 27 Feb 2017 20:34:36 GMT
ADD file:41ac8d85ee35954bf6c8353d9681a045ba260aa9a96dbbded7bcd6e37ee49bea in / 
# Mon, 27 Feb 2017 20:34:37 GMT
CMD ["/bin/bash"]
# Tue, 28 Feb 2017 18:09:54 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Tue, 28 Feb 2017 18:09:55 GMT
ENV GOSU_VERSION=1.7
# Tue, 28 Feb 2017 20:35:41 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 28 Feb 2017 20:35:50 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Tue, 28 Feb 2017 20:35:50 GMT
ENV LANG=en_US.utf8
# Tue, 28 Feb 2017 20:35:51 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 28 Feb 2017 20:35:52 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 28 Feb 2017 20:38:51 GMT
ENV PG_MAJOR=9.5
# Tue, 28 Feb 2017 20:38:51 GMT
ENV PG_VERSION=9.5.6-1.pgdg80+1
# Tue, 28 Feb 2017 20:38:52 GMT
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main' $PG_MAJOR > /etc/apt/sources.list.d/pgdg.list
# Tue, 28 Feb 2017 20:39:30 GMT
RUN apt-get update 	&& apt-get install -y postgresql-common 	&& sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf 	&& apt-get install -y 		postgresql-$PG_MAJOR=$PG_VERSION 		postgresql-contrib-$PG_MAJOR=$PG_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 20:39:31 GMT
RUN mv -v /usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample /usr/share/postgresql/$PG_MAJOR/ 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Tue, 28 Feb 2017 20:39:31 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod g+s /var/run/postgresql
# Tue, 28 Feb 2017 20:39:32 GMT
ENV PATH=/usr/lib/postgresql/9.5/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 28 Feb 2017 20:39:32 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 28 Feb 2017 20:39:33 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Tue, 28 Feb 2017 20:39:33 GMT
VOLUME [/var/lib/postgresql/data]
# Tue, 28 Feb 2017 20:39:34 GMT
COPY file:8d267d76d9551f01f3b15b68c484da091c34fd675a9b6adc8c279d52364efdfc in /usr/local/bin/ 
# Tue, 28 Feb 2017 20:39:35 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 28 Feb 2017 20:39:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 28 Feb 2017 20:39:35 GMT
EXPOSE 5432/tcp
# Tue, 28 Feb 2017 20:39:36 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:693502eb7dfbc6b94964ae66ebc72d3e32facd981c72995b09794f1e87bac184`  
		Last Modified: Mon, 27 Feb 2017 20:40:26 GMT  
		Size: 51.4 MB (51363374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31b3eb81653480d6e9cd3e08d0f9bde54ee10a2ebb39def924b15f4c6f3ee259`  
		Last Modified: Thu, 02 Mar 2017 03:16:16 GMT  
		Size: 2.0 KB (2042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8428acbbc47ce0256cb935c2a00e1f94c56fddd0fd4e7cf94f120bfa063ad6a7`  
		Last Modified: Thu, 02 Mar 2017 03:16:16 GMT  
		Size: 1.2 MB (1216875 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19552fac5eff8e5c7247c4554ea60b4c6376c2787563935b524dc1eba99c38e0`  
		Last Modified: Thu, 02 Mar 2017 03:16:17 GMT  
		Size: 6.9 MB (6865989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f19eddaec7204bf930c93ace1f31e9d5c89f5cbc60a6550668e549bd4d9304c`  
		Last Modified: Thu, 02 Mar 2017 03:16:13 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b476232c64c2168aeb466380eeccf32925d30ecbe98d1011aead0b2ea9401fbd`  
		Last Modified: Thu, 02 Mar 2017 03:16:13 GMT  
		Size: 4.5 KB (4484 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3be429460e8831ba2320ff655eab70bef5632d7f0fecc6ed8e75642e700c97c5`  
		Last Modified: Thu, 02 Mar 2017 03:19:06 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff5a3d9872965474f303fde11d420e6f920420ae9a0a6dcbf1c7f7eef0e27298`  
		Last Modified: Thu, 02 Mar 2017 03:19:21 GMT  
		Size: 41.9 MB (41868105 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9029b7872c60b5677f3a6bcb3c53b5a5411b666da039509dd67fb7e8bddbe063`  
		Last Modified: Thu, 02 Mar 2017 03:19:04 GMT  
		Size: 6.9 KB (6855 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb6db9da01f0fa245f340100036bec53f55dadb638d9b14433e248000f05ef2a`  
		Last Modified: Thu, 02 Mar 2017 03:19:04 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64bbc896fe8a179e0a56505b714085b065942e7a8ebce047f4809a1fd71deacd`  
		Last Modified: Thu, 02 Mar 2017 03:19:04 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f70b1169949aa1def22484b7969370ba36274b6a6dd17644e708f9e5108f4e63`  
		Last Modified: Thu, 02 Mar 2017 03:19:04 GMT  
		Size: 1.7 KB (1693 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6093f86102367ab151d25fb864cda3fb9798f2b937d4df129b3ee75477577cf1`  
		Last Modified: Thu, 02 Mar 2017 03:19:04 GMT  
		Size: 119.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.5`

```console
$ docker pull postgres@sha256:77cdaa616533584032aca33a5c9e452efa9fdefb494d939029952ff3a6d2d1cd
```

-	Platforms:
	-	linux; amd64

### `postgres:9.5` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **101.3 MB (101330172 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:df22c7d3677651b73d270e35cacde4cc2df069424723e51d9d56e46dffd8be33`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 27 Feb 2017 20:34:36 GMT
ADD file:41ac8d85ee35954bf6c8353d9681a045ba260aa9a96dbbded7bcd6e37ee49bea in / 
# Mon, 27 Feb 2017 20:34:37 GMT
CMD ["/bin/bash"]
# Tue, 28 Feb 2017 18:09:54 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Tue, 28 Feb 2017 18:09:55 GMT
ENV GOSU_VERSION=1.7
# Tue, 28 Feb 2017 20:35:41 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 28 Feb 2017 20:35:50 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Tue, 28 Feb 2017 20:35:50 GMT
ENV LANG=en_US.utf8
# Tue, 28 Feb 2017 20:35:51 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 28 Feb 2017 20:35:52 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 28 Feb 2017 20:38:51 GMT
ENV PG_MAJOR=9.5
# Tue, 28 Feb 2017 20:38:51 GMT
ENV PG_VERSION=9.5.6-1.pgdg80+1
# Tue, 28 Feb 2017 20:38:52 GMT
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main' $PG_MAJOR > /etc/apt/sources.list.d/pgdg.list
# Tue, 28 Feb 2017 20:39:30 GMT
RUN apt-get update 	&& apt-get install -y postgresql-common 	&& sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf 	&& apt-get install -y 		postgresql-$PG_MAJOR=$PG_VERSION 		postgresql-contrib-$PG_MAJOR=$PG_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 20:39:31 GMT
RUN mv -v /usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample /usr/share/postgresql/$PG_MAJOR/ 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Tue, 28 Feb 2017 20:39:31 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod g+s /var/run/postgresql
# Tue, 28 Feb 2017 20:39:32 GMT
ENV PATH=/usr/lib/postgresql/9.5/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 28 Feb 2017 20:39:32 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 28 Feb 2017 20:39:33 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Tue, 28 Feb 2017 20:39:33 GMT
VOLUME [/var/lib/postgresql/data]
# Tue, 28 Feb 2017 20:39:34 GMT
COPY file:8d267d76d9551f01f3b15b68c484da091c34fd675a9b6adc8c279d52364efdfc in /usr/local/bin/ 
# Tue, 28 Feb 2017 20:39:35 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 28 Feb 2017 20:39:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 28 Feb 2017 20:39:35 GMT
EXPOSE 5432/tcp
# Tue, 28 Feb 2017 20:39:36 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:693502eb7dfbc6b94964ae66ebc72d3e32facd981c72995b09794f1e87bac184`  
		Last Modified: Mon, 27 Feb 2017 20:40:26 GMT  
		Size: 51.4 MB (51363374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31b3eb81653480d6e9cd3e08d0f9bde54ee10a2ebb39def924b15f4c6f3ee259`  
		Last Modified: Thu, 02 Mar 2017 03:16:16 GMT  
		Size: 2.0 KB (2042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8428acbbc47ce0256cb935c2a00e1f94c56fddd0fd4e7cf94f120bfa063ad6a7`  
		Last Modified: Thu, 02 Mar 2017 03:16:16 GMT  
		Size: 1.2 MB (1216875 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19552fac5eff8e5c7247c4554ea60b4c6376c2787563935b524dc1eba99c38e0`  
		Last Modified: Thu, 02 Mar 2017 03:16:17 GMT  
		Size: 6.9 MB (6865989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f19eddaec7204bf930c93ace1f31e9d5c89f5cbc60a6550668e549bd4d9304c`  
		Last Modified: Thu, 02 Mar 2017 03:16:13 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b476232c64c2168aeb466380eeccf32925d30ecbe98d1011aead0b2ea9401fbd`  
		Last Modified: Thu, 02 Mar 2017 03:16:13 GMT  
		Size: 4.5 KB (4484 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3be429460e8831ba2320ff655eab70bef5632d7f0fecc6ed8e75642e700c97c5`  
		Last Modified: Thu, 02 Mar 2017 03:19:06 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff5a3d9872965474f303fde11d420e6f920420ae9a0a6dcbf1c7f7eef0e27298`  
		Last Modified: Thu, 02 Mar 2017 03:19:21 GMT  
		Size: 41.9 MB (41868105 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9029b7872c60b5677f3a6bcb3c53b5a5411b666da039509dd67fb7e8bddbe063`  
		Last Modified: Thu, 02 Mar 2017 03:19:04 GMT  
		Size: 6.9 KB (6855 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb6db9da01f0fa245f340100036bec53f55dadb638d9b14433e248000f05ef2a`  
		Last Modified: Thu, 02 Mar 2017 03:19:04 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64bbc896fe8a179e0a56505b714085b065942e7a8ebce047f4809a1fd71deacd`  
		Last Modified: Thu, 02 Mar 2017 03:19:04 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f70b1169949aa1def22484b7969370ba36274b6a6dd17644e708f9e5108f4e63`  
		Last Modified: Thu, 02 Mar 2017 03:19:04 GMT  
		Size: 1.7 KB (1693 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6093f86102367ab151d25fb864cda3fb9798f2b937d4df129b3ee75477577cf1`  
		Last Modified: Thu, 02 Mar 2017 03:19:04 GMT  
		Size: 119.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.5.6-alpine`

```console
$ docker pull postgres@sha256:c45318486031ba741f9e76b6c1e357a0eae6466ffec786a6de8acf73e12ed672
```

-	Platforms:
	-	linux; amd64

### `postgres:9.5.6-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.7 MB (13716980 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c92ddcc70366d53c290e96168bc7d9e675e9dbf82e8a314e20d4ec3b6a48e8d3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:37 GMT
ADD file:730030a984f5f0c5dc9b15ab61da161082b5c0f6e112a9c921b42321140c3927 in / 
# Fri, 03 Mar 2017 23:12:20 GMT
ENV LANG=en_US.utf8
# Fri, 03 Mar 2017 23:12:21 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 03 Mar 2017 23:20:54 GMT
ENV PG_MAJOR=9.5
# Fri, 03 Mar 2017 23:20:54 GMT
ENV PG_VERSION=9.5.6
# Fri, 03 Mar 2017 23:20:54 GMT
ENV PG_SHA256=bb9e5f6d34e20783e96e10c1d6c0c09c31749e802aaa46b793ce2522725ae12f
# Fri, 03 Mar 2017 23:22:55 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl 		util-linux-dev 		zlib-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& ./configure 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(getconf _NPROCESSORS_ONLN)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Fri, 03 Mar 2017 23:22:56 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Fri, 03 Mar 2017 23:22:57 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod g+s /var/run/postgresql
# Fri, 03 Mar 2017 23:22:57 GMT
ENV PATH=/usr/lib/postgresql/9.5/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 03 Mar 2017 23:22:57 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 03 Mar 2017 23:22:58 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 03 Mar 2017 23:22:59 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 03 Mar 2017 23:22:59 GMT
COPY file:f9a2410e9ac1ac1f8eaaa7097935e1bc01697a3aea28753ca0ff43bcb928e743 in /usr/local/bin/ 
# Fri, 03 Mar 2017 23:23:00 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 03 Mar 2017 23:23:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 03 Mar 2017 23:23:01 GMT
EXPOSE 5432/tcp
# Fri, 03 Mar 2017 23:23:01 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:627beaf3eaaff1c0bc3311d60fb933c17ad04fe377e1043d9593646d8ae3bfe1`  
		Last Modified: Fri, 03 Mar 2017 20:34:41 GMT  
		Size: 1.9 MB (1905270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d555ba539f475d381bd03abd3e00bc4ca815118f0e3d65a679b7c63f1c78fd6`  
		Last Modified: Sat, 04 Mar 2017 05:36:11 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9dc13d0957d0d316aa06fbc5a055ee96cfd441e67a9734c04f0b0bda9925626f`  
		Last Modified: Sat, 04 Mar 2017 05:41:03 GMT  
		Size: 11.8 MB (11802661 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c2b1363f775defc42e51865a7f23d3c67bf0c186e126886ce9b7e4e2c8819c3`  
		Last Modified: Sat, 04 Mar 2017 05:40:20 GMT  
		Size: 6.8 KB (6823 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efb31225c41c98d4aaa0772523ed161741bdea979874813f0c13cf1d5b2b38d1`  
		Last Modified: Sat, 04 Mar 2017 05:40:20 GMT  
		Size: 144.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f89b0433405145ef38e68db994cb13e548577f23499ecf592158a3b1294b839`  
		Last Modified: Sat, 04 Mar 2017 05:40:20 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a35bf8b98643774569c460b06aacc404bc0696242dc7b495d002b71c70fa85f9`  
		Last Modified: Sat, 04 Mar 2017 05:40:20 GMT  
		Size: 1.7 KB (1684 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecdc83e897d585290d6f2707accd0c9b78f89820a1ae0963a9a24e68e89390da`  
		Last Modified: Sat, 04 Mar 2017 05:40:20 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.5-alpine`

```console
$ docker pull postgres@sha256:c45318486031ba741f9e76b6c1e357a0eae6466ffec786a6de8acf73e12ed672
```

-	Platforms:
	-	linux; amd64

### `postgres:9.5-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.7 MB (13716980 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c92ddcc70366d53c290e96168bc7d9e675e9dbf82e8a314e20d4ec3b6a48e8d3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:37 GMT
ADD file:730030a984f5f0c5dc9b15ab61da161082b5c0f6e112a9c921b42321140c3927 in / 
# Fri, 03 Mar 2017 23:12:20 GMT
ENV LANG=en_US.utf8
# Fri, 03 Mar 2017 23:12:21 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 03 Mar 2017 23:20:54 GMT
ENV PG_MAJOR=9.5
# Fri, 03 Mar 2017 23:20:54 GMT
ENV PG_VERSION=9.5.6
# Fri, 03 Mar 2017 23:20:54 GMT
ENV PG_SHA256=bb9e5f6d34e20783e96e10c1d6c0c09c31749e802aaa46b793ce2522725ae12f
# Fri, 03 Mar 2017 23:22:55 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl 		util-linux-dev 		zlib-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& ./configure 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(getconf _NPROCESSORS_ONLN)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Fri, 03 Mar 2017 23:22:56 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Fri, 03 Mar 2017 23:22:57 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod g+s /var/run/postgresql
# Fri, 03 Mar 2017 23:22:57 GMT
ENV PATH=/usr/lib/postgresql/9.5/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 03 Mar 2017 23:22:57 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 03 Mar 2017 23:22:58 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 03 Mar 2017 23:22:59 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 03 Mar 2017 23:22:59 GMT
COPY file:f9a2410e9ac1ac1f8eaaa7097935e1bc01697a3aea28753ca0ff43bcb928e743 in /usr/local/bin/ 
# Fri, 03 Mar 2017 23:23:00 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 03 Mar 2017 23:23:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 03 Mar 2017 23:23:01 GMT
EXPOSE 5432/tcp
# Fri, 03 Mar 2017 23:23:01 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:627beaf3eaaff1c0bc3311d60fb933c17ad04fe377e1043d9593646d8ae3bfe1`  
		Last Modified: Fri, 03 Mar 2017 20:34:41 GMT  
		Size: 1.9 MB (1905270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d555ba539f475d381bd03abd3e00bc4ca815118f0e3d65a679b7c63f1c78fd6`  
		Last Modified: Sat, 04 Mar 2017 05:36:11 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9dc13d0957d0d316aa06fbc5a055ee96cfd441e67a9734c04f0b0bda9925626f`  
		Last Modified: Sat, 04 Mar 2017 05:41:03 GMT  
		Size: 11.8 MB (11802661 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c2b1363f775defc42e51865a7f23d3c67bf0c186e126886ce9b7e4e2c8819c3`  
		Last Modified: Sat, 04 Mar 2017 05:40:20 GMT  
		Size: 6.8 KB (6823 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efb31225c41c98d4aaa0772523ed161741bdea979874813f0c13cf1d5b2b38d1`  
		Last Modified: Sat, 04 Mar 2017 05:40:20 GMT  
		Size: 144.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f89b0433405145ef38e68db994cb13e548577f23499ecf592158a3b1294b839`  
		Last Modified: Sat, 04 Mar 2017 05:40:20 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a35bf8b98643774569c460b06aacc404bc0696242dc7b495d002b71c70fa85f9`  
		Last Modified: Sat, 04 Mar 2017 05:40:20 GMT  
		Size: 1.7 KB (1684 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecdc83e897d585290d6f2707accd0c9b78f89820a1ae0963a9a24e68e89390da`  
		Last Modified: Sat, 04 Mar 2017 05:40:20 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.4.11`

```console
$ docker pull postgres@sha256:c60baa8e21aaf7c24ab413787eebbaace64b9a7e5bf7eeb36c875f9a5c3ebfcb
```

-	Platforms:
	-	linux; amd64

### `postgres:9.4.11` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **100.9 MB (100917747 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d8afe9d2b0b4ee99dd79f38198ee43020ae147836af03fccc3392898f1fd49f2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 27 Feb 2017 20:34:36 GMT
ADD file:41ac8d85ee35954bf6c8353d9681a045ba260aa9a96dbbded7bcd6e37ee49bea in / 
# Mon, 27 Feb 2017 20:34:37 GMT
CMD ["/bin/bash"]
# Tue, 28 Feb 2017 18:09:54 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Tue, 28 Feb 2017 18:09:55 GMT
ENV GOSU_VERSION=1.7
# Tue, 28 Feb 2017 20:35:41 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 28 Feb 2017 20:35:50 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Tue, 28 Feb 2017 20:35:50 GMT
ENV LANG=en_US.utf8
# Tue, 28 Feb 2017 20:35:51 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 28 Feb 2017 20:35:52 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 28 Feb 2017 20:38:06 GMT
ENV PG_MAJOR=9.4
# Tue, 28 Feb 2017 20:38:06 GMT
ENV PG_VERSION=9.4.11-1.pgdg80+1
# Tue, 28 Feb 2017 20:38:07 GMT
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main' $PG_MAJOR > /etc/apt/sources.list.d/pgdg.list
# Tue, 28 Feb 2017 20:38:45 GMT
RUN apt-get update 	&& apt-get install -y postgresql-common 	&& sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf 	&& apt-get install -y 		postgresql-$PG_MAJOR=$PG_VERSION 		postgresql-contrib-$PG_MAJOR=$PG_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 20:38:46 GMT
RUN mv -v /usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample /usr/share/postgresql/$PG_MAJOR/ 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Tue, 28 Feb 2017 20:38:46 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod g+s /var/run/postgresql
# Tue, 28 Feb 2017 20:38:47 GMT
ENV PATH=/usr/lib/postgresql/9.4/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 28 Feb 2017 20:38:47 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 28 Feb 2017 20:38:48 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Tue, 28 Feb 2017 20:38:48 GMT
VOLUME [/var/lib/postgresql/data]
# Tue, 28 Feb 2017 20:38:49 GMT
COPY file:8d267d76d9551f01f3b15b68c484da091c34fd675a9b6adc8c279d52364efdfc in /usr/local/bin/ 
# Tue, 28 Feb 2017 20:38:49 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 28 Feb 2017 20:38:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 28 Feb 2017 20:38:50 GMT
EXPOSE 5432/tcp
# Tue, 28 Feb 2017 20:38:50 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:693502eb7dfbc6b94964ae66ebc72d3e32facd981c72995b09794f1e87bac184`  
		Last Modified: Mon, 27 Feb 2017 20:40:26 GMT  
		Size: 51.4 MB (51363374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31b3eb81653480d6e9cd3e08d0f9bde54ee10a2ebb39def924b15f4c6f3ee259`  
		Last Modified: Thu, 02 Mar 2017 03:16:16 GMT  
		Size: 2.0 KB (2042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8428acbbc47ce0256cb935c2a00e1f94c56fddd0fd4e7cf94f120bfa063ad6a7`  
		Last Modified: Thu, 02 Mar 2017 03:16:16 GMT  
		Size: 1.2 MB (1216875 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19552fac5eff8e5c7247c4554ea60b4c6376c2787563935b524dc1eba99c38e0`  
		Last Modified: Thu, 02 Mar 2017 03:16:17 GMT  
		Size: 6.9 MB (6865989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f19eddaec7204bf930c93ace1f31e9d5c89f5cbc60a6550668e549bd4d9304c`  
		Last Modified: Thu, 02 Mar 2017 03:16:13 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b476232c64c2168aeb466380eeccf32925d30ecbe98d1011aead0b2ea9401fbd`  
		Last Modified: Thu, 02 Mar 2017 03:16:13 GMT  
		Size: 4.5 KB (4484 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc155f7c512731527a2e7717e3dfe806eb49105e95476e43553447038498fbf6`  
		Last Modified: Thu, 02 Mar 2017 03:18:09 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71ee6624c00c436bfc7e2f6e4e726aa2b6611ca399bbe95c33334706dab3a904`  
		Last Modified: Thu, 02 Mar 2017 03:18:24 GMT  
		Size: 41.5 MB (41455827 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f712bb27f11f513fd42e848f689d728b31bc785cb08ff4f24bbad4d90f26dd5`  
		Last Modified: Thu, 02 Mar 2017 03:18:07 GMT  
		Size: 6.7 KB (6710 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f78103edeecdc15f8bb8287d4864fc30a8186c14d72d70e5c27655ea3c2368d7`  
		Last Modified: Thu, 02 Mar 2017 03:18:07 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a84b653315ff8dc54559920681396f8b9acca424ee885417aec25d9b6b86fab1`  
		Last Modified: Thu, 02 Mar 2017 03:18:08 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4966ceaea16c2727c66e7e125547cf57ee47e7646e0ab8f6bd1a34202fb5ab3`  
		Last Modified: Thu, 02 Mar 2017 03:18:07 GMT  
		Size: 1.7 KB (1690 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6babff5abf256a4ca6ab595c81d4758b54c75568c7aa598354b1b1354b320b2`  
		Last Modified: Thu, 02 Mar 2017 03:18:08 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.4`

```console
$ docker pull postgres@sha256:c60baa8e21aaf7c24ab413787eebbaace64b9a7e5bf7eeb36c875f9a5c3ebfcb
```

-	Platforms:
	-	linux; amd64

### `postgres:9.4` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **100.9 MB (100917747 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d8afe9d2b0b4ee99dd79f38198ee43020ae147836af03fccc3392898f1fd49f2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 27 Feb 2017 20:34:36 GMT
ADD file:41ac8d85ee35954bf6c8353d9681a045ba260aa9a96dbbded7bcd6e37ee49bea in / 
# Mon, 27 Feb 2017 20:34:37 GMT
CMD ["/bin/bash"]
# Tue, 28 Feb 2017 18:09:54 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Tue, 28 Feb 2017 18:09:55 GMT
ENV GOSU_VERSION=1.7
# Tue, 28 Feb 2017 20:35:41 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 28 Feb 2017 20:35:50 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Tue, 28 Feb 2017 20:35:50 GMT
ENV LANG=en_US.utf8
# Tue, 28 Feb 2017 20:35:51 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 28 Feb 2017 20:35:52 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 28 Feb 2017 20:38:06 GMT
ENV PG_MAJOR=9.4
# Tue, 28 Feb 2017 20:38:06 GMT
ENV PG_VERSION=9.4.11-1.pgdg80+1
# Tue, 28 Feb 2017 20:38:07 GMT
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main' $PG_MAJOR > /etc/apt/sources.list.d/pgdg.list
# Tue, 28 Feb 2017 20:38:45 GMT
RUN apt-get update 	&& apt-get install -y postgresql-common 	&& sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf 	&& apt-get install -y 		postgresql-$PG_MAJOR=$PG_VERSION 		postgresql-contrib-$PG_MAJOR=$PG_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 20:38:46 GMT
RUN mv -v /usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample /usr/share/postgresql/$PG_MAJOR/ 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Tue, 28 Feb 2017 20:38:46 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod g+s /var/run/postgresql
# Tue, 28 Feb 2017 20:38:47 GMT
ENV PATH=/usr/lib/postgresql/9.4/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 28 Feb 2017 20:38:47 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 28 Feb 2017 20:38:48 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Tue, 28 Feb 2017 20:38:48 GMT
VOLUME [/var/lib/postgresql/data]
# Tue, 28 Feb 2017 20:38:49 GMT
COPY file:8d267d76d9551f01f3b15b68c484da091c34fd675a9b6adc8c279d52364efdfc in /usr/local/bin/ 
# Tue, 28 Feb 2017 20:38:49 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 28 Feb 2017 20:38:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 28 Feb 2017 20:38:50 GMT
EXPOSE 5432/tcp
# Tue, 28 Feb 2017 20:38:50 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:693502eb7dfbc6b94964ae66ebc72d3e32facd981c72995b09794f1e87bac184`  
		Last Modified: Mon, 27 Feb 2017 20:40:26 GMT  
		Size: 51.4 MB (51363374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31b3eb81653480d6e9cd3e08d0f9bde54ee10a2ebb39def924b15f4c6f3ee259`  
		Last Modified: Thu, 02 Mar 2017 03:16:16 GMT  
		Size: 2.0 KB (2042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8428acbbc47ce0256cb935c2a00e1f94c56fddd0fd4e7cf94f120bfa063ad6a7`  
		Last Modified: Thu, 02 Mar 2017 03:16:16 GMT  
		Size: 1.2 MB (1216875 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19552fac5eff8e5c7247c4554ea60b4c6376c2787563935b524dc1eba99c38e0`  
		Last Modified: Thu, 02 Mar 2017 03:16:17 GMT  
		Size: 6.9 MB (6865989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f19eddaec7204bf930c93ace1f31e9d5c89f5cbc60a6550668e549bd4d9304c`  
		Last Modified: Thu, 02 Mar 2017 03:16:13 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b476232c64c2168aeb466380eeccf32925d30ecbe98d1011aead0b2ea9401fbd`  
		Last Modified: Thu, 02 Mar 2017 03:16:13 GMT  
		Size: 4.5 KB (4484 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc155f7c512731527a2e7717e3dfe806eb49105e95476e43553447038498fbf6`  
		Last Modified: Thu, 02 Mar 2017 03:18:09 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71ee6624c00c436bfc7e2f6e4e726aa2b6611ca399bbe95c33334706dab3a904`  
		Last Modified: Thu, 02 Mar 2017 03:18:24 GMT  
		Size: 41.5 MB (41455827 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f712bb27f11f513fd42e848f689d728b31bc785cb08ff4f24bbad4d90f26dd5`  
		Last Modified: Thu, 02 Mar 2017 03:18:07 GMT  
		Size: 6.7 KB (6710 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f78103edeecdc15f8bb8287d4864fc30a8186c14d72d70e5c27655ea3c2368d7`  
		Last Modified: Thu, 02 Mar 2017 03:18:07 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a84b653315ff8dc54559920681396f8b9acca424ee885417aec25d9b6b86fab1`  
		Last Modified: Thu, 02 Mar 2017 03:18:08 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4966ceaea16c2727c66e7e125547cf57ee47e7646e0ab8f6bd1a34202fb5ab3`  
		Last Modified: Thu, 02 Mar 2017 03:18:07 GMT  
		Size: 1.7 KB (1690 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6babff5abf256a4ca6ab595c81d4758b54c75568c7aa598354b1b1354b320b2`  
		Last Modified: Thu, 02 Mar 2017 03:18:08 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.4.11-alpine`

```console
$ docker pull postgres@sha256:5281ab144d4db8a9d091c0e006f747dc0a25cf6a4b34b3a4e8abeefbc7f7989c
```

-	Platforms:
	-	linux; amd64

### `postgres:9.4.11-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.5 MB (13497677 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:413b4339d175a1c1ecfd7d8587b4dbae8fd2ed8f9b385196c05ef35668873b1c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:37 GMT
ADD file:730030a984f5f0c5dc9b15ab61da161082b5c0f6e112a9c921b42321140c3927 in / 
# Fri, 03 Mar 2017 23:12:20 GMT
ENV LANG=en_US.utf8
# Fri, 03 Mar 2017 23:12:21 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 03 Mar 2017 23:18:50 GMT
ENV PG_MAJOR=9.4
# Fri, 03 Mar 2017 23:18:50 GMT
ENV PG_VERSION=9.4.11
# Fri, 03 Mar 2017 23:18:50 GMT
ENV PG_SHA256=e3eb51d045c180b03d2de1f0c3af9356e10be49448e966ca01dfc2c6d1cc9d23
# Fri, 03 Mar 2017 23:20:47 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl 		util-linux-dev 		zlib-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& ./configure 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(getconf _NPROCESSORS_ONLN)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Fri, 03 Mar 2017 23:20:48 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Fri, 03 Mar 2017 23:20:49 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod g+s /var/run/postgresql
# Fri, 03 Mar 2017 23:20:50 GMT
ENV PATH=/usr/lib/postgresql/9.4/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 03 Mar 2017 23:20:50 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 03 Mar 2017 23:20:51 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 03 Mar 2017 23:20:51 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 03 Mar 2017 23:20:52 GMT
COPY file:f9a2410e9ac1ac1f8eaaa7097935e1bc01697a3aea28753ca0ff43bcb928e743 in /usr/local/bin/ 
# Fri, 03 Mar 2017 23:20:52 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 03 Mar 2017 23:20:53 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 03 Mar 2017 23:20:53 GMT
EXPOSE 5432/tcp
# Fri, 03 Mar 2017 23:20:53 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:627beaf3eaaff1c0bc3311d60fb933c17ad04fe377e1043d9593646d8ae3bfe1`  
		Last Modified: Fri, 03 Mar 2017 20:34:41 GMT  
		Size: 1.9 MB (1905270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d555ba539f475d381bd03abd3e00bc4ca815118f0e3d65a679b7c63f1c78fd6`  
		Last Modified: Sat, 04 Mar 2017 05:36:11 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9022dedae2536a795550844b520b2a009375f49c5fdc2e5a47a739ad9bbf7c5b`  
		Last Modified: Sat, 04 Mar 2017 05:39:29 GMT  
		Size: 11.6 MB (11583500 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e5a84698e79ae80b93a2e486ed27099801cb7e3ce6f205d4a55c9de72e9d9d2`  
		Last Modified: Sat, 04 Mar 2017 05:38:54 GMT  
		Size: 6.7 KB (6678 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0dc60061e6f6e5959a277a259d94e504f105fdbee7a2d4d128011bcf72deac0`  
		Last Modified: Sat, 04 Mar 2017 05:38:52 GMT  
		Size: 145.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb25a202beacc7043751907264b3168dbf4f543dc8c1f75a09dff802c3918ebb`  
		Last Modified: Sat, 04 Mar 2017 05:38:52 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54dd760a24b2cf84df90ab521d5fc759b09eb096b87d611f91626ad8044c0852`  
		Last Modified: Sat, 04 Mar 2017 05:38:54 GMT  
		Size: 1.7 KB (1686 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef93380841fbdedfbd2e8b21f70aed51c55015e7066ca25a9316154afde662f4`  
		Last Modified: Sat, 04 Mar 2017 05:38:52 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.4-alpine`

```console
$ docker pull postgres@sha256:5281ab144d4db8a9d091c0e006f747dc0a25cf6a4b34b3a4e8abeefbc7f7989c
```

-	Platforms:
	-	linux; amd64

### `postgres:9.4-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.5 MB (13497677 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:413b4339d175a1c1ecfd7d8587b4dbae8fd2ed8f9b385196c05ef35668873b1c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:37 GMT
ADD file:730030a984f5f0c5dc9b15ab61da161082b5c0f6e112a9c921b42321140c3927 in / 
# Fri, 03 Mar 2017 23:12:20 GMT
ENV LANG=en_US.utf8
# Fri, 03 Mar 2017 23:12:21 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 03 Mar 2017 23:18:50 GMT
ENV PG_MAJOR=9.4
# Fri, 03 Mar 2017 23:18:50 GMT
ENV PG_VERSION=9.4.11
# Fri, 03 Mar 2017 23:18:50 GMT
ENV PG_SHA256=e3eb51d045c180b03d2de1f0c3af9356e10be49448e966ca01dfc2c6d1cc9d23
# Fri, 03 Mar 2017 23:20:47 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl 		util-linux-dev 		zlib-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& ./configure 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(getconf _NPROCESSORS_ONLN)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Fri, 03 Mar 2017 23:20:48 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Fri, 03 Mar 2017 23:20:49 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod g+s /var/run/postgresql
# Fri, 03 Mar 2017 23:20:50 GMT
ENV PATH=/usr/lib/postgresql/9.4/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 03 Mar 2017 23:20:50 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 03 Mar 2017 23:20:51 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 03 Mar 2017 23:20:51 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 03 Mar 2017 23:20:52 GMT
COPY file:f9a2410e9ac1ac1f8eaaa7097935e1bc01697a3aea28753ca0ff43bcb928e743 in /usr/local/bin/ 
# Fri, 03 Mar 2017 23:20:52 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 03 Mar 2017 23:20:53 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 03 Mar 2017 23:20:53 GMT
EXPOSE 5432/tcp
# Fri, 03 Mar 2017 23:20:53 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:627beaf3eaaff1c0bc3311d60fb933c17ad04fe377e1043d9593646d8ae3bfe1`  
		Last Modified: Fri, 03 Mar 2017 20:34:41 GMT  
		Size: 1.9 MB (1905270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d555ba539f475d381bd03abd3e00bc4ca815118f0e3d65a679b7c63f1c78fd6`  
		Last Modified: Sat, 04 Mar 2017 05:36:11 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9022dedae2536a795550844b520b2a009375f49c5fdc2e5a47a739ad9bbf7c5b`  
		Last Modified: Sat, 04 Mar 2017 05:39:29 GMT  
		Size: 11.6 MB (11583500 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e5a84698e79ae80b93a2e486ed27099801cb7e3ce6f205d4a55c9de72e9d9d2`  
		Last Modified: Sat, 04 Mar 2017 05:38:54 GMT  
		Size: 6.7 KB (6678 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0dc60061e6f6e5959a277a259d94e504f105fdbee7a2d4d128011bcf72deac0`  
		Last Modified: Sat, 04 Mar 2017 05:38:52 GMT  
		Size: 145.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb25a202beacc7043751907264b3168dbf4f543dc8c1f75a09dff802c3918ebb`  
		Last Modified: Sat, 04 Mar 2017 05:38:52 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54dd760a24b2cf84df90ab521d5fc759b09eb096b87d611f91626ad8044c0852`  
		Last Modified: Sat, 04 Mar 2017 05:38:54 GMT  
		Size: 1.7 KB (1686 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef93380841fbdedfbd2e8b21f70aed51c55015e7066ca25a9316154afde662f4`  
		Last Modified: Sat, 04 Mar 2017 05:38:52 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.3.16`

```console
$ docker pull postgres@sha256:5f81f286b90da10da7f014cd4947ba73c211aed55d45489ae960c4426e78ec03
```

-	Platforms:
	-	linux; amd64

### `postgres:9.3.16` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **100.6 MB (100567081 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bcea6813f646088cfb9db45a3e6b6fae96c5550d98cbb014039665770d094fe5`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 27 Feb 2017 20:34:36 GMT
ADD file:41ac8d85ee35954bf6c8353d9681a045ba260aa9a96dbbded7bcd6e37ee49bea in / 
# Mon, 27 Feb 2017 20:34:37 GMT
CMD ["/bin/bash"]
# Tue, 28 Feb 2017 18:09:54 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Tue, 28 Feb 2017 18:09:55 GMT
ENV GOSU_VERSION=1.7
# Tue, 28 Feb 2017 20:35:41 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 28 Feb 2017 20:35:50 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Tue, 28 Feb 2017 20:35:50 GMT
ENV LANG=en_US.utf8
# Tue, 28 Feb 2017 20:35:51 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 28 Feb 2017 20:35:52 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 28 Feb 2017 20:37:21 GMT
ENV PG_MAJOR=9.3
# Tue, 28 Feb 2017 20:37:21 GMT
ENV PG_VERSION=9.3.16-1.pgdg80+1
# Tue, 28 Feb 2017 20:37:22 GMT
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main' $PG_MAJOR > /etc/apt/sources.list.d/pgdg.list
# Tue, 28 Feb 2017 20:37:59 GMT
RUN apt-get update 	&& apt-get install -y postgresql-common 	&& sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf 	&& apt-get install -y 		postgresql-$PG_MAJOR=$PG_VERSION 		postgresql-contrib-$PG_MAJOR=$PG_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 20:38:00 GMT
RUN mv -v /usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample /usr/share/postgresql/$PG_MAJOR/ 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Tue, 28 Feb 2017 20:38:01 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod g+s /var/run/postgresql
# Tue, 28 Feb 2017 20:38:02 GMT
ENV PATH=/usr/lib/postgresql/9.3/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 28 Feb 2017 20:38:02 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 28 Feb 2017 20:38:03 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Tue, 28 Feb 2017 20:38:03 GMT
VOLUME [/var/lib/postgresql/data]
# Tue, 28 Feb 2017 20:38:04 GMT
COPY file:8d267d76d9551f01f3b15b68c484da091c34fd675a9b6adc8c279d52364efdfc in /usr/local/bin/ 
# Tue, 28 Feb 2017 20:38:04 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 28 Feb 2017 20:38:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 28 Feb 2017 20:38:05 GMT
EXPOSE 5432/tcp
# Tue, 28 Feb 2017 20:38:05 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:693502eb7dfbc6b94964ae66ebc72d3e32facd981c72995b09794f1e87bac184`  
		Last Modified: Mon, 27 Feb 2017 20:40:26 GMT  
		Size: 51.4 MB (51363374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31b3eb81653480d6e9cd3e08d0f9bde54ee10a2ebb39def924b15f4c6f3ee259`  
		Last Modified: Thu, 02 Mar 2017 03:16:16 GMT  
		Size: 2.0 KB (2042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8428acbbc47ce0256cb935c2a00e1f94c56fddd0fd4e7cf94f120bfa063ad6a7`  
		Last Modified: Thu, 02 Mar 2017 03:16:16 GMT  
		Size: 1.2 MB (1216875 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19552fac5eff8e5c7247c4554ea60b4c6376c2787563935b524dc1eba99c38e0`  
		Last Modified: Thu, 02 Mar 2017 03:16:17 GMT  
		Size: 6.9 MB (6865989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f19eddaec7204bf930c93ace1f31e9d5c89f5cbc60a6550668e549bd4d9304c`  
		Last Modified: Thu, 02 Mar 2017 03:16:13 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b476232c64c2168aeb466380eeccf32925d30ecbe98d1011aead0b2ea9401fbd`  
		Last Modified: Thu, 02 Mar 2017 03:16:13 GMT  
		Size: 4.5 KB (4484 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71759f623814c53648d75b21d585c1a1a0abf2b774f5ebdefd0976e30e3f38bd`  
		Last Modified: Thu, 02 Mar 2017 03:17:12 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2bf873fcad24c513563565c94f7e76a9fe4150dbef7c88f7c47c34f57be2d4d8`  
		Last Modified: Thu, 02 Mar 2017 03:17:26 GMT  
		Size: 41.1 MB (41105345 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fef724d8c7f90f056dc64f0f168a87268e772016a15b146402e673038fa2ed75`  
		Last Modified: Thu, 02 Mar 2017 03:17:09 GMT  
		Size: 6.5 KB (6529 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21ffbffb81e3d118d1f382c8ec121dc5f66ff04e3f62295501e89f642d5ee6ff`  
		Last Modified: Thu, 02 Mar 2017 03:17:09 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc90310b6d69cde1ba24c3703f3400ba751851761a32e87a0781d0734e19376f`  
		Last Modified: Thu, 02 Mar 2017 03:17:09 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f082c0af96c929291c62b1950e542a254120e9fe27a75b4e646aa009cd6ee88f`  
		Last Modified: Thu, 02 Mar 2017 03:17:10 GMT  
		Size: 1.7 KB (1688 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e73a2dab716cca37f7ae1f5025e4ca3b1d6468d6d5523bf251e4cb5027e489db`  
		Last Modified: Thu, 02 Mar 2017 03:17:10 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.3`

```console
$ docker pull postgres@sha256:5f81f286b90da10da7f014cd4947ba73c211aed55d45489ae960c4426e78ec03
```

-	Platforms:
	-	linux; amd64

### `postgres:9.3` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **100.6 MB (100567081 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bcea6813f646088cfb9db45a3e6b6fae96c5550d98cbb014039665770d094fe5`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 27 Feb 2017 20:34:36 GMT
ADD file:41ac8d85ee35954bf6c8353d9681a045ba260aa9a96dbbded7bcd6e37ee49bea in / 
# Mon, 27 Feb 2017 20:34:37 GMT
CMD ["/bin/bash"]
# Tue, 28 Feb 2017 18:09:54 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Tue, 28 Feb 2017 18:09:55 GMT
ENV GOSU_VERSION=1.7
# Tue, 28 Feb 2017 20:35:41 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 28 Feb 2017 20:35:50 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Tue, 28 Feb 2017 20:35:50 GMT
ENV LANG=en_US.utf8
# Tue, 28 Feb 2017 20:35:51 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 28 Feb 2017 20:35:52 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 28 Feb 2017 20:37:21 GMT
ENV PG_MAJOR=9.3
# Tue, 28 Feb 2017 20:37:21 GMT
ENV PG_VERSION=9.3.16-1.pgdg80+1
# Tue, 28 Feb 2017 20:37:22 GMT
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main' $PG_MAJOR > /etc/apt/sources.list.d/pgdg.list
# Tue, 28 Feb 2017 20:37:59 GMT
RUN apt-get update 	&& apt-get install -y postgresql-common 	&& sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf 	&& apt-get install -y 		postgresql-$PG_MAJOR=$PG_VERSION 		postgresql-contrib-$PG_MAJOR=$PG_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 20:38:00 GMT
RUN mv -v /usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample /usr/share/postgresql/$PG_MAJOR/ 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Tue, 28 Feb 2017 20:38:01 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod g+s /var/run/postgresql
# Tue, 28 Feb 2017 20:38:02 GMT
ENV PATH=/usr/lib/postgresql/9.3/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 28 Feb 2017 20:38:02 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 28 Feb 2017 20:38:03 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Tue, 28 Feb 2017 20:38:03 GMT
VOLUME [/var/lib/postgresql/data]
# Tue, 28 Feb 2017 20:38:04 GMT
COPY file:8d267d76d9551f01f3b15b68c484da091c34fd675a9b6adc8c279d52364efdfc in /usr/local/bin/ 
# Tue, 28 Feb 2017 20:38:04 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 28 Feb 2017 20:38:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 28 Feb 2017 20:38:05 GMT
EXPOSE 5432/tcp
# Tue, 28 Feb 2017 20:38:05 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:693502eb7dfbc6b94964ae66ebc72d3e32facd981c72995b09794f1e87bac184`  
		Last Modified: Mon, 27 Feb 2017 20:40:26 GMT  
		Size: 51.4 MB (51363374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31b3eb81653480d6e9cd3e08d0f9bde54ee10a2ebb39def924b15f4c6f3ee259`  
		Last Modified: Thu, 02 Mar 2017 03:16:16 GMT  
		Size: 2.0 KB (2042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8428acbbc47ce0256cb935c2a00e1f94c56fddd0fd4e7cf94f120bfa063ad6a7`  
		Last Modified: Thu, 02 Mar 2017 03:16:16 GMT  
		Size: 1.2 MB (1216875 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19552fac5eff8e5c7247c4554ea60b4c6376c2787563935b524dc1eba99c38e0`  
		Last Modified: Thu, 02 Mar 2017 03:16:17 GMT  
		Size: 6.9 MB (6865989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f19eddaec7204bf930c93ace1f31e9d5c89f5cbc60a6550668e549bd4d9304c`  
		Last Modified: Thu, 02 Mar 2017 03:16:13 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b476232c64c2168aeb466380eeccf32925d30ecbe98d1011aead0b2ea9401fbd`  
		Last Modified: Thu, 02 Mar 2017 03:16:13 GMT  
		Size: 4.5 KB (4484 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71759f623814c53648d75b21d585c1a1a0abf2b774f5ebdefd0976e30e3f38bd`  
		Last Modified: Thu, 02 Mar 2017 03:17:12 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2bf873fcad24c513563565c94f7e76a9fe4150dbef7c88f7c47c34f57be2d4d8`  
		Last Modified: Thu, 02 Mar 2017 03:17:26 GMT  
		Size: 41.1 MB (41105345 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fef724d8c7f90f056dc64f0f168a87268e772016a15b146402e673038fa2ed75`  
		Last Modified: Thu, 02 Mar 2017 03:17:09 GMT  
		Size: 6.5 KB (6529 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21ffbffb81e3d118d1f382c8ec121dc5f66ff04e3f62295501e89f642d5ee6ff`  
		Last Modified: Thu, 02 Mar 2017 03:17:09 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc90310b6d69cde1ba24c3703f3400ba751851761a32e87a0781d0734e19376f`  
		Last Modified: Thu, 02 Mar 2017 03:17:09 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f082c0af96c929291c62b1950e542a254120e9fe27a75b4e646aa009cd6ee88f`  
		Last Modified: Thu, 02 Mar 2017 03:17:10 GMT  
		Size: 1.7 KB (1688 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e73a2dab716cca37f7ae1f5025e4ca3b1d6468d6d5523bf251e4cb5027e489db`  
		Last Modified: Thu, 02 Mar 2017 03:17:10 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.3.16-alpine`

```console
$ docker pull postgres@sha256:ca82a6565a9599c10748a291b52e5b4135481438ace64a3c0aac4e480cd8efe6
```

-	Platforms:
	-	linux; amd64

### `postgres:9.3.16-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.2 MB (13176884 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5a1b0c7d101773c7f502a4536e8f8f4973c6a66bc28f1015cabf927d82b624de`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:37 GMT
ADD file:730030a984f5f0c5dc9b15ab61da161082b5c0f6e112a9c921b42321140c3927 in / 
# Fri, 03 Mar 2017 23:12:20 GMT
ENV LANG=en_US.utf8
# Fri, 03 Mar 2017 23:12:21 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 03 Mar 2017 23:16:57 GMT
ENV PG_MAJOR=9.3
# Fri, 03 Mar 2017 23:16:57 GMT
ENV PG_VERSION=9.3.16
# Fri, 03 Mar 2017 23:16:57 GMT
ENV PG_SHA256=845f5e4ac8cf026b6a77c5a180a2fe869f51e9d06acf8d0365b05505a2c66873
# Fri, 03 Mar 2017 23:18:44 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl 		util-linux-dev 		zlib-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& ./configure 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(getconf _NPROCESSORS_ONLN)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Fri, 03 Mar 2017 23:18:45 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Fri, 03 Mar 2017 23:18:45 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod g+s /var/run/postgresql
# Fri, 03 Mar 2017 23:18:46 GMT
ENV PATH=/usr/lib/postgresql/9.3/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 03 Mar 2017 23:18:46 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 03 Mar 2017 23:18:47 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 03 Mar 2017 23:18:47 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 03 Mar 2017 23:18:48 GMT
COPY file:f9a2410e9ac1ac1f8eaaa7097935e1bc01697a3aea28753ca0ff43bcb928e743 in /usr/local/bin/ 
# Fri, 03 Mar 2017 23:18:48 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 03 Mar 2017 23:18:49 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 03 Mar 2017 23:18:49 GMT
EXPOSE 5432/tcp
# Fri, 03 Mar 2017 23:18:49 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:627beaf3eaaff1c0bc3311d60fb933c17ad04fe377e1043d9593646d8ae3bfe1`  
		Last Modified: Fri, 03 Mar 2017 20:34:41 GMT  
		Size: 1.9 MB (1905270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d555ba539f475d381bd03abd3e00bc4ca815118f0e3d65a679b7c63f1c78fd6`  
		Last Modified: Sat, 04 Mar 2017 05:36:11 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdbb5576ca4e27be786c0fe2d17cb515a2ec2e84a5d338a04f38be3cbd469969`  
		Last Modified: Sat, 04 Mar 2017 05:37:58 GMT  
		Size: 11.3 MB (11262887 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d513f6b6f2e19bd523ae8be9a55257431ad532a0bfc5ef849b41da714fb5acdb`  
		Last Modified: Sat, 04 Mar 2017 05:37:19 GMT  
		Size: 6.5 KB (6502 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b57cf2fc40c8b274a278c857b8b0d4bb7b1ad9e49e06b0af9e7a5b7533e4639`  
		Last Modified: Sat, 04 Mar 2017 05:37:17 GMT  
		Size: 145.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ae3831b2b05c1b13290004cc839e0c118b2d5478657af756329f632751699d1`  
		Last Modified: Sat, 04 Mar 2017 05:37:17 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e68800c601524f40c5a16bdf5e6bd794687c1f8a28b855e663ffaacf075bf72`  
		Last Modified: Sat, 04 Mar 2017 05:37:19 GMT  
		Size: 1.7 KB (1683 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:384924dd8cf08b396421decad4d7e987f4494b7eb990d219e0b3e923b1499a6f`  
		Last Modified: Sat, 04 Mar 2017 05:37:17 GMT  
		Size: 119.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.3-alpine`

```console
$ docker pull postgres@sha256:ca82a6565a9599c10748a291b52e5b4135481438ace64a3c0aac4e480cd8efe6
```

-	Platforms:
	-	linux; amd64

### `postgres:9.3-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.2 MB (13176884 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5a1b0c7d101773c7f502a4536e8f8f4973c6a66bc28f1015cabf927d82b624de`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:37 GMT
ADD file:730030a984f5f0c5dc9b15ab61da161082b5c0f6e112a9c921b42321140c3927 in / 
# Fri, 03 Mar 2017 23:12:20 GMT
ENV LANG=en_US.utf8
# Fri, 03 Mar 2017 23:12:21 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 03 Mar 2017 23:16:57 GMT
ENV PG_MAJOR=9.3
# Fri, 03 Mar 2017 23:16:57 GMT
ENV PG_VERSION=9.3.16
# Fri, 03 Mar 2017 23:16:57 GMT
ENV PG_SHA256=845f5e4ac8cf026b6a77c5a180a2fe869f51e9d06acf8d0365b05505a2c66873
# Fri, 03 Mar 2017 23:18:44 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl 		util-linux-dev 		zlib-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& ./configure 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(getconf _NPROCESSORS_ONLN)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Fri, 03 Mar 2017 23:18:45 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Fri, 03 Mar 2017 23:18:45 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod g+s /var/run/postgresql
# Fri, 03 Mar 2017 23:18:46 GMT
ENV PATH=/usr/lib/postgresql/9.3/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 03 Mar 2017 23:18:46 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 03 Mar 2017 23:18:47 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 03 Mar 2017 23:18:47 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 03 Mar 2017 23:18:48 GMT
COPY file:f9a2410e9ac1ac1f8eaaa7097935e1bc01697a3aea28753ca0ff43bcb928e743 in /usr/local/bin/ 
# Fri, 03 Mar 2017 23:18:48 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 03 Mar 2017 23:18:49 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 03 Mar 2017 23:18:49 GMT
EXPOSE 5432/tcp
# Fri, 03 Mar 2017 23:18:49 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:627beaf3eaaff1c0bc3311d60fb933c17ad04fe377e1043d9593646d8ae3bfe1`  
		Last Modified: Fri, 03 Mar 2017 20:34:41 GMT  
		Size: 1.9 MB (1905270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d555ba539f475d381bd03abd3e00bc4ca815118f0e3d65a679b7c63f1c78fd6`  
		Last Modified: Sat, 04 Mar 2017 05:36:11 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdbb5576ca4e27be786c0fe2d17cb515a2ec2e84a5d338a04f38be3cbd469969`  
		Last Modified: Sat, 04 Mar 2017 05:37:58 GMT  
		Size: 11.3 MB (11262887 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d513f6b6f2e19bd523ae8be9a55257431ad532a0bfc5ef849b41da714fb5acdb`  
		Last Modified: Sat, 04 Mar 2017 05:37:19 GMT  
		Size: 6.5 KB (6502 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b57cf2fc40c8b274a278c857b8b0d4bb7b1ad9e49e06b0af9e7a5b7533e4639`  
		Last Modified: Sat, 04 Mar 2017 05:37:17 GMT  
		Size: 145.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ae3831b2b05c1b13290004cc839e0c118b2d5478657af756329f632751699d1`  
		Last Modified: Sat, 04 Mar 2017 05:37:17 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e68800c601524f40c5a16bdf5e6bd794687c1f8a28b855e663ffaacf075bf72`  
		Last Modified: Sat, 04 Mar 2017 05:37:19 GMT  
		Size: 1.7 KB (1683 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:384924dd8cf08b396421decad4d7e987f4494b7eb990d219e0b3e923b1499a6f`  
		Last Modified: Sat, 04 Mar 2017 05:37:17 GMT  
		Size: 119.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.2.20`

```console
$ docker pull postgres@sha256:102249dda8404833339fb91f6f55339037b6456e7c3defbae57ac94e5989eca7
```

-	Platforms:
	-	linux; amd64

### `postgres:9.2.20` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **100.4 MB (100400403 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c17e0cdfbcf0272f0ee3e67b273c7d2b5710ce060abe2e1199ba468df9c6c3e7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 27 Feb 2017 20:34:36 GMT
ADD file:41ac8d85ee35954bf6c8353d9681a045ba260aa9a96dbbded7bcd6e37ee49bea in / 
# Mon, 27 Feb 2017 20:34:37 GMT
CMD ["/bin/bash"]
# Tue, 28 Feb 2017 18:09:54 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Tue, 28 Feb 2017 18:09:55 GMT
ENV GOSU_VERSION=1.7
# Tue, 28 Feb 2017 20:35:41 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 28 Feb 2017 20:35:50 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Tue, 28 Feb 2017 20:35:50 GMT
ENV LANG=en_US.utf8
# Tue, 28 Feb 2017 20:35:51 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 28 Feb 2017 20:35:52 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 28 Feb 2017 20:36:35 GMT
ENV PG_MAJOR=9.2
# Tue, 28 Feb 2017 20:36:35 GMT
ENV PG_VERSION=9.2.20-1.pgdg80+1
# Tue, 28 Feb 2017 20:36:36 GMT
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main' $PG_MAJOR > /etc/apt/sources.list.d/pgdg.list
# Tue, 28 Feb 2017 20:37:14 GMT
RUN apt-get update 	&& apt-get install -y postgresql-common 	&& sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf 	&& apt-get install -y 		postgresql-$PG_MAJOR=$PG_VERSION 		postgresql-contrib-$PG_MAJOR=$PG_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 20:37:15 GMT
RUN mv -v /usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample /usr/share/postgresql/$PG_MAJOR/ 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Tue, 28 Feb 2017 20:37:16 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod g+s /var/run/postgresql
# Tue, 28 Feb 2017 20:37:16 GMT
ENV PATH=/usr/lib/postgresql/9.2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 28 Feb 2017 20:37:16 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 28 Feb 2017 20:37:17 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Tue, 28 Feb 2017 20:37:17 GMT
VOLUME [/var/lib/postgresql/data]
# Tue, 28 Feb 2017 20:37:18 GMT
COPY file:8d267d76d9551f01f3b15b68c484da091c34fd675a9b6adc8c279d52364efdfc in /usr/local/bin/ 
# Tue, 28 Feb 2017 20:37:19 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 28 Feb 2017 20:37:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 28 Feb 2017 20:37:20 GMT
EXPOSE 5432/tcp
# Tue, 28 Feb 2017 20:37:20 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:693502eb7dfbc6b94964ae66ebc72d3e32facd981c72995b09794f1e87bac184`  
		Last Modified: Mon, 27 Feb 2017 20:40:26 GMT  
		Size: 51.4 MB (51363374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31b3eb81653480d6e9cd3e08d0f9bde54ee10a2ebb39def924b15f4c6f3ee259`  
		Last Modified: Thu, 02 Mar 2017 03:16:16 GMT  
		Size: 2.0 KB (2042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8428acbbc47ce0256cb935c2a00e1f94c56fddd0fd4e7cf94f120bfa063ad6a7`  
		Last Modified: Thu, 02 Mar 2017 03:16:16 GMT  
		Size: 1.2 MB (1216875 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19552fac5eff8e5c7247c4554ea60b4c6376c2787563935b524dc1eba99c38e0`  
		Last Modified: Thu, 02 Mar 2017 03:16:17 GMT  
		Size: 6.9 MB (6865989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f19eddaec7204bf930c93ace1f31e9d5c89f5cbc60a6550668e549bd4d9304c`  
		Last Modified: Thu, 02 Mar 2017 03:16:13 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b476232c64c2168aeb466380eeccf32925d30ecbe98d1011aead0b2ea9401fbd`  
		Last Modified: Thu, 02 Mar 2017 03:16:13 GMT  
		Size: 4.5 KB (4484 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c1d560b0d3effb13fdd8d767b584b68af3514d9aaf224c1a5a8e00604f61a1b`  
		Last Modified: Thu, 02 Mar 2017 03:16:13 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8715bde3ab03bf272df19af76bae81616f9212e9f2be1d9c702f8e20b4a155ca`  
		Last Modified: Thu, 02 Mar 2017 03:16:30 GMT  
		Size: 40.9 MB (40938722 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d746fe66baba52101a5057858ab88350a6bf87410405b5a5fe1af439e4def9d3`  
		Last Modified: Thu, 02 Mar 2017 03:16:10 GMT  
		Size: 6.5 KB (6472 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23dd02d350b611e15779ae72121c9b2bdd6c372010d5d177bf014c18d6148130`  
		Last Modified: Thu, 02 Mar 2017 03:16:11 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f323dba56cff00d3c6e9c2eeadd23cb654eda26beb350e40093154be423128cb`  
		Last Modified: Thu, 02 Mar 2017 03:16:10 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b657d9853535a10d122e8e1a77130480e36e3229d5d84d2deb33b47d9b89b67c`  
		Last Modified: Thu, 02 Mar 2017 03:16:11 GMT  
		Size: 1.7 KB (1689 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2112cbcbf21ea90a18d69e771a25e035f504cb1b9e695310029b516acf997b8c`  
		Last Modified: Thu, 02 Mar 2017 03:16:10 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.2`

```console
$ docker pull postgres@sha256:102249dda8404833339fb91f6f55339037b6456e7c3defbae57ac94e5989eca7
```

-	Platforms:
	-	linux; amd64

### `postgres:9.2` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **100.4 MB (100400403 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c17e0cdfbcf0272f0ee3e67b273c7d2b5710ce060abe2e1199ba468df9c6c3e7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 27 Feb 2017 20:34:36 GMT
ADD file:41ac8d85ee35954bf6c8353d9681a045ba260aa9a96dbbded7bcd6e37ee49bea in / 
# Mon, 27 Feb 2017 20:34:37 GMT
CMD ["/bin/bash"]
# Tue, 28 Feb 2017 18:09:54 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Tue, 28 Feb 2017 18:09:55 GMT
ENV GOSU_VERSION=1.7
# Tue, 28 Feb 2017 20:35:41 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 28 Feb 2017 20:35:50 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Tue, 28 Feb 2017 20:35:50 GMT
ENV LANG=en_US.utf8
# Tue, 28 Feb 2017 20:35:51 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 28 Feb 2017 20:35:52 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 28 Feb 2017 20:36:35 GMT
ENV PG_MAJOR=9.2
# Tue, 28 Feb 2017 20:36:35 GMT
ENV PG_VERSION=9.2.20-1.pgdg80+1
# Tue, 28 Feb 2017 20:36:36 GMT
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main' $PG_MAJOR > /etc/apt/sources.list.d/pgdg.list
# Tue, 28 Feb 2017 20:37:14 GMT
RUN apt-get update 	&& apt-get install -y postgresql-common 	&& sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf 	&& apt-get install -y 		postgresql-$PG_MAJOR=$PG_VERSION 		postgresql-contrib-$PG_MAJOR=$PG_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 20:37:15 GMT
RUN mv -v /usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample /usr/share/postgresql/$PG_MAJOR/ 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Tue, 28 Feb 2017 20:37:16 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod g+s /var/run/postgresql
# Tue, 28 Feb 2017 20:37:16 GMT
ENV PATH=/usr/lib/postgresql/9.2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 28 Feb 2017 20:37:16 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 28 Feb 2017 20:37:17 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Tue, 28 Feb 2017 20:37:17 GMT
VOLUME [/var/lib/postgresql/data]
# Tue, 28 Feb 2017 20:37:18 GMT
COPY file:8d267d76d9551f01f3b15b68c484da091c34fd675a9b6adc8c279d52364efdfc in /usr/local/bin/ 
# Tue, 28 Feb 2017 20:37:19 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 28 Feb 2017 20:37:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 28 Feb 2017 20:37:20 GMT
EXPOSE 5432/tcp
# Tue, 28 Feb 2017 20:37:20 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:693502eb7dfbc6b94964ae66ebc72d3e32facd981c72995b09794f1e87bac184`  
		Last Modified: Mon, 27 Feb 2017 20:40:26 GMT  
		Size: 51.4 MB (51363374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31b3eb81653480d6e9cd3e08d0f9bde54ee10a2ebb39def924b15f4c6f3ee259`  
		Last Modified: Thu, 02 Mar 2017 03:16:16 GMT  
		Size: 2.0 KB (2042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8428acbbc47ce0256cb935c2a00e1f94c56fddd0fd4e7cf94f120bfa063ad6a7`  
		Last Modified: Thu, 02 Mar 2017 03:16:16 GMT  
		Size: 1.2 MB (1216875 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19552fac5eff8e5c7247c4554ea60b4c6376c2787563935b524dc1eba99c38e0`  
		Last Modified: Thu, 02 Mar 2017 03:16:17 GMT  
		Size: 6.9 MB (6865989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f19eddaec7204bf930c93ace1f31e9d5c89f5cbc60a6550668e549bd4d9304c`  
		Last Modified: Thu, 02 Mar 2017 03:16:13 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b476232c64c2168aeb466380eeccf32925d30ecbe98d1011aead0b2ea9401fbd`  
		Last Modified: Thu, 02 Mar 2017 03:16:13 GMT  
		Size: 4.5 KB (4484 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c1d560b0d3effb13fdd8d767b584b68af3514d9aaf224c1a5a8e00604f61a1b`  
		Last Modified: Thu, 02 Mar 2017 03:16:13 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8715bde3ab03bf272df19af76bae81616f9212e9f2be1d9c702f8e20b4a155ca`  
		Last Modified: Thu, 02 Mar 2017 03:16:30 GMT  
		Size: 40.9 MB (40938722 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d746fe66baba52101a5057858ab88350a6bf87410405b5a5fe1af439e4def9d3`  
		Last Modified: Thu, 02 Mar 2017 03:16:10 GMT  
		Size: 6.5 KB (6472 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23dd02d350b611e15779ae72121c9b2bdd6c372010d5d177bf014c18d6148130`  
		Last Modified: Thu, 02 Mar 2017 03:16:11 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f323dba56cff00d3c6e9c2eeadd23cb654eda26beb350e40093154be423128cb`  
		Last Modified: Thu, 02 Mar 2017 03:16:10 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b657d9853535a10d122e8e1a77130480e36e3229d5d84d2deb33b47d9b89b67c`  
		Last Modified: Thu, 02 Mar 2017 03:16:11 GMT  
		Size: 1.7 KB (1689 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2112cbcbf21ea90a18d69e771a25e035f504cb1b9e695310029b516acf997b8c`  
		Last Modified: Thu, 02 Mar 2017 03:16:10 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.2.20-alpine`

```console
$ docker pull postgres@sha256:89ef5efe10801826c600555174472a9b304569fc0020bde8aeb91a3b40a4c16d
```

-	Platforms:
	-	linux; amd64

### `postgres:9.2.20-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.0 MB (13014167 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:54b693b7650b2b17c230f9ab975640ccbdfefc79537d3e5481e63ec5635ea9a0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:37 GMT
ADD file:730030a984f5f0c5dc9b15ab61da161082b5c0f6e112a9c921b42321140c3927 in / 
# Fri, 03 Mar 2017 23:12:20 GMT
ENV LANG=en_US.utf8
# Fri, 03 Mar 2017 23:12:21 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 03 Mar 2017 23:15:05 GMT
ENV PG_MAJOR=9.2
# Fri, 03 Mar 2017 23:15:05 GMT
ENV PG_VERSION=9.2.20
# Fri, 03 Mar 2017 23:15:06 GMT
ENV PG_SHA256=0b8abdae8400cabea5587a726003c9dd71c73c049bdae523abc35f9312dd8f26
# Fri, 03 Mar 2017 23:16:50 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl 		util-linux-dev 		zlib-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& ./configure 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(getconf _NPROCESSORS_ONLN)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Fri, 03 Mar 2017 23:16:51 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Fri, 03 Mar 2017 23:16:52 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod g+s /var/run/postgresql
# Fri, 03 Mar 2017 23:16:53 GMT
ENV PATH=/usr/lib/postgresql/9.2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 03 Mar 2017 23:16:53 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 03 Mar 2017 23:16:54 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 03 Mar 2017 23:16:54 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 03 Mar 2017 23:16:54 GMT
COPY file:f9a2410e9ac1ac1f8eaaa7097935e1bc01697a3aea28753ca0ff43bcb928e743 in /usr/local/bin/ 
# Fri, 03 Mar 2017 23:16:55 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 03 Mar 2017 23:16:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 03 Mar 2017 23:16:56 GMT
EXPOSE 5432/tcp
# Fri, 03 Mar 2017 23:16:56 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:627beaf3eaaff1c0bc3311d60fb933c17ad04fe377e1043d9593646d8ae3bfe1`  
		Last Modified: Fri, 03 Mar 2017 20:34:41 GMT  
		Size: 1.9 MB (1905270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d555ba539f475d381bd03abd3e00bc4ca815118f0e3d65a679b7c63f1c78fd6`  
		Last Modified: Sat, 04 Mar 2017 05:36:11 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c831a42dcf68f640629a27211fb7755881bbe3a6ef1037404e15184b93e9656b`  
		Last Modified: Sat, 04 Mar 2017 05:36:37 GMT  
		Size: 11.1 MB (11100228 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63ec39ab80d10f4f4dc01ae72cde0722aaab9eff226b7abfbd971ceb8c6cf3df`  
		Last Modified: Sat, 04 Mar 2017 05:36:09 GMT  
		Size: 6.4 KB (6442 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18072392d8a13976f52bdb3171ff671dd44c751889f9efe5cb038c23376b56d6`  
		Last Modified: Sat, 04 Mar 2017 05:36:09 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f4b20a18624bfd1a3113f15277055fd3b64e435ee9095dc05f834039e1fddaa`  
		Last Modified: Sat, 04 Mar 2017 05:36:10 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:926c5ee3d25aa2f2b0de03180fae1abb6f96555782b38080a89ac3b50834f52a`  
		Last Modified: Sat, 04 Mar 2017 05:36:10 GMT  
		Size: 1.7 KB (1684 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:079106b8964a8c03c7d6eb2636ead289dfd17300a0059c0a19ae9c546585276f`  
		Last Modified: Sat, 04 Mar 2017 05:36:08 GMT  
		Size: 119.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.2-alpine`

```console
$ docker pull postgres@sha256:89ef5efe10801826c600555174472a9b304569fc0020bde8aeb91a3b40a4c16d
```

-	Platforms:
	-	linux; amd64

### `postgres:9.2-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.0 MB (13014167 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:54b693b7650b2b17c230f9ab975640ccbdfefc79537d3e5481e63ec5635ea9a0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:37 GMT
ADD file:730030a984f5f0c5dc9b15ab61da161082b5c0f6e112a9c921b42321140c3927 in / 
# Fri, 03 Mar 2017 23:12:20 GMT
ENV LANG=en_US.utf8
# Fri, 03 Mar 2017 23:12:21 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 03 Mar 2017 23:15:05 GMT
ENV PG_MAJOR=9.2
# Fri, 03 Mar 2017 23:15:05 GMT
ENV PG_VERSION=9.2.20
# Fri, 03 Mar 2017 23:15:06 GMT
ENV PG_SHA256=0b8abdae8400cabea5587a726003c9dd71c73c049bdae523abc35f9312dd8f26
# Fri, 03 Mar 2017 23:16:50 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl 		util-linux-dev 		zlib-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& ./configure 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(getconf _NPROCESSORS_ONLN)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Fri, 03 Mar 2017 23:16:51 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Fri, 03 Mar 2017 23:16:52 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod g+s /var/run/postgresql
# Fri, 03 Mar 2017 23:16:53 GMT
ENV PATH=/usr/lib/postgresql/9.2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 03 Mar 2017 23:16:53 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 03 Mar 2017 23:16:54 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 03 Mar 2017 23:16:54 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 03 Mar 2017 23:16:54 GMT
COPY file:f9a2410e9ac1ac1f8eaaa7097935e1bc01697a3aea28753ca0ff43bcb928e743 in /usr/local/bin/ 
# Fri, 03 Mar 2017 23:16:55 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 03 Mar 2017 23:16:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 03 Mar 2017 23:16:56 GMT
EXPOSE 5432/tcp
# Fri, 03 Mar 2017 23:16:56 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:627beaf3eaaff1c0bc3311d60fb933c17ad04fe377e1043d9593646d8ae3bfe1`  
		Last Modified: Fri, 03 Mar 2017 20:34:41 GMT  
		Size: 1.9 MB (1905270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d555ba539f475d381bd03abd3e00bc4ca815118f0e3d65a679b7c63f1c78fd6`  
		Last Modified: Sat, 04 Mar 2017 05:36:11 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c831a42dcf68f640629a27211fb7755881bbe3a6ef1037404e15184b93e9656b`  
		Last Modified: Sat, 04 Mar 2017 05:36:37 GMT  
		Size: 11.1 MB (11100228 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63ec39ab80d10f4f4dc01ae72cde0722aaab9eff226b7abfbd971ceb8c6cf3df`  
		Last Modified: Sat, 04 Mar 2017 05:36:09 GMT  
		Size: 6.4 KB (6442 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18072392d8a13976f52bdb3171ff671dd44c751889f9efe5cb038c23376b56d6`  
		Last Modified: Sat, 04 Mar 2017 05:36:09 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f4b20a18624bfd1a3113f15277055fd3b64e435ee9095dc05f834039e1fddaa`  
		Last Modified: Sat, 04 Mar 2017 05:36:10 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:926c5ee3d25aa2f2b0de03180fae1abb6f96555782b38080a89ac3b50834f52a`  
		Last Modified: Sat, 04 Mar 2017 05:36:10 GMT  
		Size: 1.7 KB (1684 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:079106b8964a8c03c7d6eb2636ead289dfd17300a0059c0a19ae9c546585276f`  
		Last Modified: Sat, 04 Mar 2017 05:36:08 GMT  
		Size: 119.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
