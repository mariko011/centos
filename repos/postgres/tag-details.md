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
$ docker pull postgres@sha256:f501aae03fc31749599a45ef36674b0cf9a0c45f819b49fc480057ae759097dc
```

-	Platforms:
	-	linux; amd64

### `postgres:9.6.2-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.4 MB (14373408 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:575c5e74b7654e1da6d8e0053fb50259242929bb7953d7fdbd9fa33ef0506d25`
-	Entrypoint: `["docker-entrypoint.sh"]`
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
# Fri, 10 Feb 2017 00:29:12 GMT
ENV PG_VERSION=9.6.2
# Fri, 10 Feb 2017 00:29:13 GMT
ENV PG_SHA256=0187b5184be1c09034e74e44761505e52357248451b0c854dddec6c231fe50c9
# Fri, 10 Feb 2017 00:33:23 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl 		util-linux-dev 		zlib-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& ./configure 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(getconf _NPROCESSORS_ONLN)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Fri, 10 Feb 2017 00:33:24 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Fri, 10 Feb 2017 00:33:26 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod g+s /var/run/postgresql
# Fri, 10 Feb 2017 00:33:27 GMT
ENV PATH=/usr/lib/postgresql/9.6/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 10 Feb 2017 00:33:28 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 10 Feb 2017 00:33:29 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 10 Feb 2017 00:33:30 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 10 Feb 2017 00:33:31 GMT
COPY file:f9a2410e9ac1ac1f8eaaa7097935e1bc01697a3aea28753ca0ff43bcb928e743 in /usr/local/bin/ 
# Fri, 10 Feb 2017 00:33:32 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 10 Feb 2017 00:33:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 10 Feb 2017 00:33:34 GMT
EXPOSE 5432/tcp
# Fri, 10 Feb 2017 00:33:35 GMT
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
	-	`sha256:60067b80e18181dbba533b0c274f8aab78d48c925c268b4b207d8f9d675f3559`  
		Last Modified: Fri, 10 Feb 2017 00:55:09 GMT  
		Size: 12.5 MB (12462019 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:331054c8ce4ac57fdfb4c3ee349d2f794878be42ace77b3cf2dc100a728027a2`  
		Last Modified: Fri, 10 Feb 2017 00:55:00 GMT  
		Size: 7.1 KB (7095 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4963b014ebaf1bb63100f93c218fb61d50455b862874f24863646f7adc2f4f46`  
		Last Modified: Fri, 10 Feb 2017 00:55:00 GMT  
		Size: 145.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:239884a93ce702af7b54a1c91cfbd91169673a68a0be12a1a4f1c1157db0b8df`  
		Last Modified: Fri, 10 Feb 2017 00:55:00 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d7c82a5487f557244d5cf4c52569664f916e234f89489a20785b0a139ccc66b`  
		Last Modified: Fri, 10 Feb 2017 00:55:00 GMT  
		Size: 1.7 KB (1689 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e19b72283336ad5954492354b59c8c062e13b88a5e23664b579385542b613929`  
		Last Modified: Fri, 10 Feb 2017 00:55:00 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.6-alpine`

```console
$ docker pull postgres@sha256:f501aae03fc31749599a45ef36674b0cf9a0c45f819b49fc480057ae759097dc
```

-	Platforms:
	-	linux; amd64

### `postgres:9.6-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.4 MB (14373408 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:575c5e74b7654e1da6d8e0053fb50259242929bb7953d7fdbd9fa33ef0506d25`
-	Entrypoint: `["docker-entrypoint.sh"]`
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
# Fri, 10 Feb 2017 00:29:12 GMT
ENV PG_VERSION=9.6.2
# Fri, 10 Feb 2017 00:29:13 GMT
ENV PG_SHA256=0187b5184be1c09034e74e44761505e52357248451b0c854dddec6c231fe50c9
# Fri, 10 Feb 2017 00:33:23 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl 		util-linux-dev 		zlib-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& ./configure 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(getconf _NPROCESSORS_ONLN)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Fri, 10 Feb 2017 00:33:24 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Fri, 10 Feb 2017 00:33:26 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod g+s /var/run/postgresql
# Fri, 10 Feb 2017 00:33:27 GMT
ENV PATH=/usr/lib/postgresql/9.6/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 10 Feb 2017 00:33:28 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 10 Feb 2017 00:33:29 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 10 Feb 2017 00:33:30 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 10 Feb 2017 00:33:31 GMT
COPY file:f9a2410e9ac1ac1f8eaaa7097935e1bc01697a3aea28753ca0ff43bcb928e743 in /usr/local/bin/ 
# Fri, 10 Feb 2017 00:33:32 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 10 Feb 2017 00:33:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 10 Feb 2017 00:33:34 GMT
EXPOSE 5432/tcp
# Fri, 10 Feb 2017 00:33:35 GMT
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
	-	`sha256:60067b80e18181dbba533b0c274f8aab78d48c925c268b4b207d8f9d675f3559`  
		Last Modified: Fri, 10 Feb 2017 00:55:09 GMT  
		Size: 12.5 MB (12462019 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:331054c8ce4ac57fdfb4c3ee349d2f794878be42ace77b3cf2dc100a728027a2`  
		Last Modified: Fri, 10 Feb 2017 00:55:00 GMT  
		Size: 7.1 KB (7095 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4963b014ebaf1bb63100f93c218fb61d50455b862874f24863646f7adc2f4f46`  
		Last Modified: Fri, 10 Feb 2017 00:55:00 GMT  
		Size: 145.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:239884a93ce702af7b54a1c91cfbd91169673a68a0be12a1a4f1c1157db0b8df`  
		Last Modified: Fri, 10 Feb 2017 00:55:00 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d7c82a5487f557244d5cf4c52569664f916e234f89489a20785b0a139ccc66b`  
		Last Modified: Fri, 10 Feb 2017 00:55:00 GMT  
		Size: 1.7 KB (1689 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e19b72283336ad5954492354b59c8c062e13b88a5e23664b579385542b613929`  
		Last Modified: Fri, 10 Feb 2017 00:55:00 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9-alpine`

```console
$ docker pull postgres@sha256:f501aae03fc31749599a45ef36674b0cf9a0c45f819b49fc480057ae759097dc
```

-	Platforms:
	-	linux; amd64

### `postgres:9-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.4 MB (14373408 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:575c5e74b7654e1da6d8e0053fb50259242929bb7953d7fdbd9fa33ef0506d25`
-	Entrypoint: `["docker-entrypoint.sh"]`
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
# Fri, 10 Feb 2017 00:29:12 GMT
ENV PG_VERSION=9.6.2
# Fri, 10 Feb 2017 00:29:13 GMT
ENV PG_SHA256=0187b5184be1c09034e74e44761505e52357248451b0c854dddec6c231fe50c9
# Fri, 10 Feb 2017 00:33:23 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl 		util-linux-dev 		zlib-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& ./configure 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(getconf _NPROCESSORS_ONLN)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Fri, 10 Feb 2017 00:33:24 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Fri, 10 Feb 2017 00:33:26 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod g+s /var/run/postgresql
# Fri, 10 Feb 2017 00:33:27 GMT
ENV PATH=/usr/lib/postgresql/9.6/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 10 Feb 2017 00:33:28 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 10 Feb 2017 00:33:29 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 10 Feb 2017 00:33:30 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 10 Feb 2017 00:33:31 GMT
COPY file:f9a2410e9ac1ac1f8eaaa7097935e1bc01697a3aea28753ca0ff43bcb928e743 in /usr/local/bin/ 
# Fri, 10 Feb 2017 00:33:32 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 10 Feb 2017 00:33:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 10 Feb 2017 00:33:34 GMT
EXPOSE 5432/tcp
# Fri, 10 Feb 2017 00:33:35 GMT
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
	-	`sha256:60067b80e18181dbba533b0c274f8aab78d48c925c268b4b207d8f9d675f3559`  
		Last Modified: Fri, 10 Feb 2017 00:55:09 GMT  
		Size: 12.5 MB (12462019 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:331054c8ce4ac57fdfb4c3ee349d2f794878be42ace77b3cf2dc100a728027a2`  
		Last Modified: Fri, 10 Feb 2017 00:55:00 GMT  
		Size: 7.1 KB (7095 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4963b014ebaf1bb63100f93c218fb61d50455b862874f24863646f7adc2f4f46`  
		Last Modified: Fri, 10 Feb 2017 00:55:00 GMT  
		Size: 145.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:239884a93ce702af7b54a1c91cfbd91169673a68a0be12a1a4f1c1157db0b8df`  
		Last Modified: Fri, 10 Feb 2017 00:55:00 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d7c82a5487f557244d5cf4c52569664f916e234f89489a20785b0a139ccc66b`  
		Last Modified: Fri, 10 Feb 2017 00:55:00 GMT  
		Size: 1.7 KB (1689 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e19b72283336ad5954492354b59c8c062e13b88a5e23664b579385542b613929`  
		Last Modified: Fri, 10 Feb 2017 00:55:00 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:alpine`

```console
$ docker pull postgres@sha256:f501aae03fc31749599a45ef36674b0cf9a0c45f819b49fc480057ae759097dc
```

-	Platforms:
	-	linux; amd64

### `postgres:alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.4 MB (14373408 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:575c5e74b7654e1da6d8e0053fb50259242929bb7953d7fdbd9fa33ef0506d25`
-	Entrypoint: `["docker-entrypoint.sh"]`
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
# Fri, 10 Feb 2017 00:29:12 GMT
ENV PG_VERSION=9.6.2
# Fri, 10 Feb 2017 00:29:13 GMT
ENV PG_SHA256=0187b5184be1c09034e74e44761505e52357248451b0c854dddec6c231fe50c9
# Fri, 10 Feb 2017 00:33:23 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl 		util-linux-dev 		zlib-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& ./configure 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(getconf _NPROCESSORS_ONLN)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Fri, 10 Feb 2017 00:33:24 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Fri, 10 Feb 2017 00:33:26 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod g+s /var/run/postgresql
# Fri, 10 Feb 2017 00:33:27 GMT
ENV PATH=/usr/lib/postgresql/9.6/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 10 Feb 2017 00:33:28 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 10 Feb 2017 00:33:29 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 10 Feb 2017 00:33:30 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 10 Feb 2017 00:33:31 GMT
COPY file:f9a2410e9ac1ac1f8eaaa7097935e1bc01697a3aea28753ca0ff43bcb928e743 in /usr/local/bin/ 
# Fri, 10 Feb 2017 00:33:32 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 10 Feb 2017 00:33:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 10 Feb 2017 00:33:34 GMT
EXPOSE 5432/tcp
# Fri, 10 Feb 2017 00:33:35 GMT
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
	-	`sha256:60067b80e18181dbba533b0c274f8aab78d48c925c268b4b207d8f9d675f3559`  
		Last Modified: Fri, 10 Feb 2017 00:55:09 GMT  
		Size: 12.5 MB (12462019 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:331054c8ce4ac57fdfb4c3ee349d2f794878be42ace77b3cf2dc100a728027a2`  
		Last Modified: Fri, 10 Feb 2017 00:55:00 GMT  
		Size: 7.1 KB (7095 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4963b014ebaf1bb63100f93c218fb61d50455b862874f24863646f7adc2f4f46`  
		Last Modified: Fri, 10 Feb 2017 00:55:00 GMT  
		Size: 145.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:239884a93ce702af7b54a1c91cfbd91169673a68a0be12a1a4f1c1157db0b8df`  
		Last Modified: Fri, 10 Feb 2017 00:55:00 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d7c82a5487f557244d5cf4c52569664f916e234f89489a20785b0a139ccc66b`  
		Last Modified: Fri, 10 Feb 2017 00:55:00 GMT  
		Size: 1.7 KB (1689 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e19b72283336ad5954492354b59c8c062e13b88a5e23664b579385542b613929`  
		Last Modified: Fri, 10 Feb 2017 00:55:00 GMT  
		Size: 120.0 B  
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
$ docker pull postgres@sha256:d0b99f91d43d9e3e6e1530ad2c988b0ad3e4caa70f021650854a15036df8ea26
```

-	Platforms:
	-	linux; amd64

### `postgres:9.5.6-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.1 MB (14093406 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c6968dc5efdaf70bc764c32e0713a8747863a115d4fcfe1e05357c2c3bc89e5a`
-	Entrypoint: `["docker-entrypoint.sh"]`
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
# Fri, 10 Feb 2017 00:34:39 GMT
ENV PG_VERSION=9.5.6
# Fri, 10 Feb 2017 00:34:39 GMT
ENV PG_SHA256=bb9e5f6d34e20783e96e10c1d6c0c09c31749e802aaa46b793ce2522725ae12f
# Fri, 10 Feb 2017 00:38:37 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl 		util-linux-dev 		zlib-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& ./configure 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(getconf _NPROCESSORS_ONLN)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Fri, 10 Feb 2017 00:38:39 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Fri, 10 Feb 2017 00:38:40 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod g+s /var/run/postgresql
# Fri, 10 Feb 2017 00:38:40 GMT
ENV PATH=/usr/lib/postgresql/9.5/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 10 Feb 2017 00:38:40 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 10 Feb 2017 00:38:42 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 10 Feb 2017 00:38:42 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 10 Feb 2017 00:38:43 GMT
COPY file:f9a2410e9ac1ac1f8eaaa7097935e1bc01697a3aea28753ca0ff43bcb928e743 in /usr/local/bin/ 
# Fri, 10 Feb 2017 00:38:44 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 10 Feb 2017 00:38:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 10 Feb 2017 00:38:45 GMT
EXPOSE 5432/tcp
# Fri, 10 Feb 2017 00:38:45 GMT
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
	-	`sha256:000242e19acb45f869ba237ef48d377b211708e3fd55c621b15b723f9091a06c`  
		Last Modified: Fri, 10 Feb 2017 00:57:39 GMT  
		Size: 12.2 MB (12182290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18bb249f84ea00f0a219795f102e1360aa14f74a65c8c5e30be3efa116ab1c10`  
		Last Modified: Fri, 10 Feb 2017 00:57:31 GMT  
		Size: 6.8 KB (6826 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7665bfe787b3554ea676c6e6ddde1ba47b7bcff59e628ee03538d9b8c2243ba`  
		Last Modified: Fri, 10 Feb 2017 00:57:31 GMT  
		Size: 145.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09facd325886b12b34082a6ae3ae25337b2887813edd0dd50eedb4e8b7548bd4`  
		Last Modified: Fri, 10 Feb 2017 00:57:31 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85e0517c36d20397e0f165faa1ea3e38151e42a0b0057db50f542c9455ed2bd0`  
		Last Modified: Fri, 10 Feb 2017 00:57:31 GMT  
		Size: 1.7 KB (1685 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:407d08e3e677c658dc51ef8efed7e7cf7e3a0f568b2f0ce9d57c47a8d2762260`  
		Last Modified: Fri, 10 Feb 2017 00:57:31 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.5-alpine`

```console
$ docker pull postgres@sha256:d0b99f91d43d9e3e6e1530ad2c988b0ad3e4caa70f021650854a15036df8ea26
```

-	Platforms:
	-	linux; amd64

### `postgres:9.5-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.1 MB (14093406 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c6968dc5efdaf70bc764c32e0713a8747863a115d4fcfe1e05357c2c3bc89e5a`
-	Entrypoint: `["docker-entrypoint.sh"]`
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
# Fri, 10 Feb 2017 00:34:39 GMT
ENV PG_VERSION=9.5.6
# Fri, 10 Feb 2017 00:34:39 GMT
ENV PG_SHA256=bb9e5f6d34e20783e96e10c1d6c0c09c31749e802aaa46b793ce2522725ae12f
# Fri, 10 Feb 2017 00:38:37 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl 		util-linux-dev 		zlib-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& ./configure 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(getconf _NPROCESSORS_ONLN)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Fri, 10 Feb 2017 00:38:39 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Fri, 10 Feb 2017 00:38:40 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod g+s /var/run/postgresql
# Fri, 10 Feb 2017 00:38:40 GMT
ENV PATH=/usr/lib/postgresql/9.5/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 10 Feb 2017 00:38:40 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 10 Feb 2017 00:38:42 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 10 Feb 2017 00:38:42 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 10 Feb 2017 00:38:43 GMT
COPY file:f9a2410e9ac1ac1f8eaaa7097935e1bc01697a3aea28753ca0ff43bcb928e743 in /usr/local/bin/ 
# Fri, 10 Feb 2017 00:38:44 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 10 Feb 2017 00:38:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 10 Feb 2017 00:38:45 GMT
EXPOSE 5432/tcp
# Fri, 10 Feb 2017 00:38:45 GMT
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
	-	`sha256:000242e19acb45f869ba237ef48d377b211708e3fd55c621b15b723f9091a06c`  
		Last Modified: Fri, 10 Feb 2017 00:57:39 GMT  
		Size: 12.2 MB (12182290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18bb249f84ea00f0a219795f102e1360aa14f74a65c8c5e30be3efa116ab1c10`  
		Last Modified: Fri, 10 Feb 2017 00:57:31 GMT  
		Size: 6.8 KB (6826 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7665bfe787b3554ea676c6e6ddde1ba47b7bcff59e628ee03538d9b8c2243ba`  
		Last Modified: Fri, 10 Feb 2017 00:57:31 GMT  
		Size: 145.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09facd325886b12b34082a6ae3ae25337b2887813edd0dd50eedb4e8b7548bd4`  
		Last Modified: Fri, 10 Feb 2017 00:57:31 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85e0517c36d20397e0f165faa1ea3e38151e42a0b0057db50f542c9455ed2bd0`  
		Last Modified: Fri, 10 Feb 2017 00:57:31 GMT  
		Size: 1.7 KB (1685 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:407d08e3e677c658dc51ef8efed7e7cf7e3a0f568b2f0ce9d57c47a8d2762260`  
		Last Modified: Fri, 10 Feb 2017 00:57:31 GMT  
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
$ docker pull postgres@sha256:71f8e6b24c9f692c2f1d8ba0dac4aff1cfcf68241b545565e362a61065c8e1da
```

-	Platforms:
	-	linux; amd64

### `postgres:9.4.11-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.9 MB (13875510 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9155c4b9f5eb3ee9233ccdb1819dbba3d509906ef366167a9083338b31c94a2f`
-	Entrypoint: `["docker-entrypoint.sh"]`
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
# Fri, 10 Feb 2017 00:39:37 GMT
ENV PG_VERSION=9.4.11
# Fri, 10 Feb 2017 00:39:38 GMT
ENV PG_SHA256=e3eb51d045c180b03d2de1f0c3af9356e10be49448e966ca01dfc2c6d1cc9d23
# Fri, 10 Feb 2017 00:43:21 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl 		util-linux-dev 		zlib-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& ./configure 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(getconf _NPROCESSORS_ONLN)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Fri, 10 Feb 2017 00:43:23 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Fri, 10 Feb 2017 00:43:24 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod g+s /var/run/postgresql
# Fri, 10 Feb 2017 00:43:24 GMT
ENV PATH=/usr/lib/postgresql/9.4/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 10 Feb 2017 00:43:25 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 10 Feb 2017 00:43:26 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 10 Feb 2017 00:43:26 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 10 Feb 2017 00:43:27 GMT
COPY file:f9a2410e9ac1ac1f8eaaa7097935e1bc01697a3aea28753ca0ff43bcb928e743 in /usr/local/bin/ 
# Fri, 10 Feb 2017 00:43:28 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 10 Feb 2017 00:43:28 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 10 Feb 2017 00:43:29 GMT
EXPOSE 5432/tcp
# Fri, 10 Feb 2017 00:43:29 GMT
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
	-	`sha256:e4e54f4d7d906f1e8393c83cb88a400d176a34e0804874b78b338e01d480015f`  
		Last Modified: Fri, 10 Feb 2017 00:59:29 GMT  
		Size: 12.0 MB (11964542 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7755ce214a0e72e4ebae6f3ac872080823a75d19d9f729006a3bb24c92b0c2f3`  
		Last Modified: Fri, 10 Feb 2017 00:59:22 GMT  
		Size: 6.7 KB (6678 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf80223e87938ddeb464b65c6081086f785db1bc27fa2c0d19e7b2687d993270`  
		Last Modified: Fri, 10 Feb 2017 00:59:21 GMT  
		Size: 144.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef3a5319940fb0dfa5734a2a50a1a9b69a4536bf5cbb26d370b568a6a3bde3e9`  
		Last Modified: Fri, 10 Feb 2017 00:59:21 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1712c9622f999cd049e16ae6a62b900e8827ac4cac7aeb4b2445b67cc0180dd0`  
		Last Modified: Fri, 10 Feb 2017 00:59:21 GMT  
		Size: 1.7 KB (1686 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5df77c066285d1354b7da8927a416cde916ad09557b45a185a5b581d4d71f03`  
		Last Modified: Fri, 10 Feb 2017 00:59:21 GMT  
		Size: 119.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.4-alpine`

```console
$ docker pull postgres@sha256:71f8e6b24c9f692c2f1d8ba0dac4aff1cfcf68241b545565e362a61065c8e1da
```

-	Platforms:
	-	linux; amd64

### `postgres:9.4-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.9 MB (13875510 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9155c4b9f5eb3ee9233ccdb1819dbba3d509906ef366167a9083338b31c94a2f`
-	Entrypoint: `["docker-entrypoint.sh"]`
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
# Fri, 10 Feb 2017 00:39:37 GMT
ENV PG_VERSION=9.4.11
# Fri, 10 Feb 2017 00:39:38 GMT
ENV PG_SHA256=e3eb51d045c180b03d2de1f0c3af9356e10be49448e966ca01dfc2c6d1cc9d23
# Fri, 10 Feb 2017 00:43:21 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl 		util-linux-dev 		zlib-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& ./configure 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(getconf _NPROCESSORS_ONLN)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Fri, 10 Feb 2017 00:43:23 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Fri, 10 Feb 2017 00:43:24 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod g+s /var/run/postgresql
# Fri, 10 Feb 2017 00:43:24 GMT
ENV PATH=/usr/lib/postgresql/9.4/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 10 Feb 2017 00:43:25 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 10 Feb 2017 00:43:26 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 10 Feb 2017 00:43:26 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 10 Feb 2017 00:43:27 GMT
COPY file:f9a2410e9ac1ac1f8eaaa7097935e1bc01697a3aea28753ca0ff43bcb928e743 in /usr/local/bin/ 
# Fri, 10 Feb 2017 00:43:28 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 10 Feb 2017 00:43:28 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 10 Feb 2017 00:43:29 GMT
EXPOSE 5432/tcp
# Fri, 10 Feb 2017 00:43:29 GMT
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
	-	`sha256:e4e54f4d7d906f1e8393c83cb88a400d176a34e0804874b78b338e01d480015f`  
		Last Modified: Fri, 10 Feb 2017 00:59:29 GMT  
		Size: 12.0 MB (11964542 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7755ce214a0e72e4ebae6f3ac872080823a75d19d9f729006a3bb24c92b0c2f3`  
		Last Modified: Fri, 10 Feb 2017 00:59:22 GMT  
		Size: 6.7 KB (6678 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf80223e87938ddeb464b65c6081086f785db1bc27fa2c0d19e7b2687d993270`  
		Last Modified: Fri, 10 Feb 2017 00:59:21 GMT  
		Size: 144.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef3a5319940fb0dfa5734a2a50a1a9b69a4536bf5cbb26d370b568a6a3bde3e9`  
		Last Modified: Fri, 10 Feb 2017 00:59:21 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1712c9622f999cd049e16ae6a62b900e8827ac4cac7aeb4b2445b67cc0180dd0`  
		Last Modified: Fri, 10 Feb 2017 00:59:21 GMT  
		Size: 1.7 KB (1686 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5df77c066285d1354b7da8927a416cde916ad09557b45a185a5b581d4d71f03`  
		Last Modified: Fri, 10 Feb 2017 00:59:21 GMT  
		Size: 119.0 B  
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
$ docker pull postgres@sha256:df8c171e50f08f5d12a57a62dad60bf16007611f0bd8a93559c20e3044e19075
```

-	Platforms:
	-	linux; amd64

### `postgres:9.3.16-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.6 MB (13561206 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a24edece8ecdffa29a56abcfed522cbbd241d69de298c46ec2a53c0ebf0f562a`
-	Entrypoint: `["docker-entrypoint.sh"]`
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
# Fri, 10 Feb 2017 00:44:25 GMT
ENV PG_VERSION=9.3.16
# Fri, 10 Feb 2017 00:44:25 GMT
ENV PG_SHA256=845f5e4ac8cf026b6a77c5a180a2fe869f51e9d06acf8d0365b05505a2c66873
# Fri, 10 Feb 2017 00:48:02 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl 		util-linux-dev 		zlib-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& ./configure 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(getconf _NPROCESSORS_ONLN)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Fri, 10 Feb 2017 00:48:03 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Fri, 10 Feb 2017 00:48:05 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod g+s /var/run/postgresql
# Fri, 10 Feb 2017 00:48:05 GMT
ENV PATH=/usr/lib/postgresql/9.3/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 10 Feb 2017 00:48:05 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 10 Feb 2017 00:48:07 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 10 Feb 2017 00:48:07 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 10 Feb 2017 00:48:08 GMT
COPY file:f9a2410e9ac1ac1f8eaaa7097935e1bc01697a3aea28753ca0ff43bcb928e743 in /usr/local/bin/ 
# Fri, 10 Feb 2017 00:48:09 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 10 Feb 2017 00:48:09 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 10 Feb 2017 00:48:10 GMT
EXPOSE 5432/tcp
# Fri, 10 Feb 2017 00:48:10 GMT
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
	-	`sha256:23ec93d82176c35f3f75b40c9aa53b1131ca833a4c670ea32d39bc69961acc2b`  
		Last Modified: Fri, 10 Feb 2017 01:01:29 GMT  
		Size: 11.7 MB (11650419 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d5e3cb9e7b2f865a3aa1d2b89f87adc61f1038af80741f42aed558f1c51fa61`  
		Last Modified: Fri, 10 Feb 2017 01:01:20 GMT  
		Size: 6.5 KB (6500 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dabd8f2b2d486a3f44fae2038c316c62bafd21b01e81e04e9f8c9904b8665d6d`  
		Last Modified: Fri, 10 Feb 2017 01:01:20 GMT  
		Size: 145.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58a43d833d9d29323c2cf068a3bb12f422a094bd498b881f4de30d8024be7cd4`  
		Last Modified: Fri, 10 Feb 2017 01:01:22 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3a1a0c6f91d7377fd80763027cfea7274e04c809831d4f679a8ed2ab5b8bcb6`  
		Last Modified: Fri, 10 Feb 2017 01:01:20 GMT  
		Size: 1.7 KB (1683 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ecbc1cbdb74173255f382c94d14c14f7e26c91d739424131a8f8171c1a1002a`  
		Last Modified: Fri, 10 Feb 2017 01:01:20 GMT  
		Size: 119.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.3-alpine`

```console
$ docker pull postgres@sha256:df8c171e50f08f5d12a57a62dad60bf16007611f0bd8a93559c20e3044e19075
```

-	Platforms:
	-	linux; amd64

### `postgres:9.3-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.6 MB (13561206 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a24edece8ecdffa29a56abcfed522cbbd241d69de298c46ec2a53c0ebf0f562a`
-	Entrypoint: `["docker-entrypoint.sh"]`
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
# Fri, 10 Feb 2017 00:44:25 GMT
ENV PG_VERSION=9.3.16
# Fri, 10 Feb 2017 00:44:25 GMT
ENV PG_SHA256=845f5e4ac8cf026b6a77c5a180a2fe869f51e9d06acf8d0365b05505a2c66873
# Fri, 10 Feb 2017 00:48:02 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl 		util-linux-dev 		zlib-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& ./configure 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(getconf _NPROCESSORS_ONLN)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Fri, 10 Feb 2017 00:48:03 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Fri, 10 Feb 2017 00:48:05 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod g+s /var/run/postgresql
# Fri, 10 Feb 2017 00:48:05 GMT
ENV PATH=/usr/lib/postgresql/9.3/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 10 Feb 2017 00:48:05 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 10 Feb 2017 00:48:07 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 10 Feb 2017 00:48:07 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 10 Feb 2017 00:48:08 GMT
COPY file:f9a2410e9ac1ac1f8eaaa7097935e1bc01697a3aea28753ca0ff43bcb928e743 in /usr/local/bin/ 
# Fri, 10 Feb 2017 00:48:09 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 10 Feb 2017 00:48:09 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 10 Feb 2017 00:48:10 GMT
EXPOSE 5432/tcp
# Fri, 10 Feb 2017 00:48:10 GMT
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
	-	`sha256:23ec93d82176c35f3f75b40c9aa53b1131ca833a4c670ea32d39bc69961acc2b`  
		Last Modified: Fri, 10 Feb 2017 01:01:29 GMT  
		Size: 11.7 MB (11650419 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d5e3cb9e7b2f865a3aa1d2b89f87adc61f1038af80741f42aed558f1c51fa61`  
		Last Modified: Fri, 10 Feb 2017 01:01:20 GMT  
		Size: 6.5 KB (6500 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dabd8f2b2d486a3f44fae2038c316c62bafd21b01e81e04e9f8c9904b8665d6d`  
		Last Modified: Fri, 10 Feb 2017 01:01:20 GMT  
		Size: 145.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58a43d833d9d29323c2cf068a3bb12f422a094bd498b881f4de30d8024be7cd4`  
		Last Modified: Fri, 10 Feb 2017 01:01:22 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3a1a0c6f91d7377fd80763027cfea7274e04c809831d4f679a8ed2ab5b8bcb6`  
		Last Modified: Fri, 10 Feb 2017 01:01:20 GMT  
		Size: 1.7 KB (1683 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ecbc1cbdb74173255f382c94d14c14f7e26c91d739424131a8f8171c1a1002a`  
		Last Modified: Fri, 10 Feb 2017 01:01:20 GMT  
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
$ docker pull postgres@sha256:ea46a36be71a1c22a1c1e19d7fae708d78a5250cb889f53d8522f2dd27d00178
```

-	Platforms:
	-	linux; amd64

### `postgres:9.2.20-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.4 MB (13399270 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:76e59f83af3dccab7a4fee8b0dd71e3f836b1b33a9f6444d7a46b63ec1a53ad4`
-	Entrypoint: `["docker-entrypoint.sh"]`
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
# Fri, 10 Feb 2017 00:49:04 GMT
ENV PG_VERSION=9.2.20
# Fri, 10 Feb 2017 00:49:04 GMT
ENV PG_SHA256=0b8abdae8400cabea5587a726003c9dd71c73c049bdae523abc35f9312dd8f26
# Fri, 10 Feb 2017 00:52:37 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl 		util-linux-dev 		zlib-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& ./configure 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(getconf _NPROCESSORS_ONLN)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Fri, 10 Feb 2017 00:52:38 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Fri, 10 Feb 2017 00:52:39 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod g+s /var/run/postgresql
# Fri, 10 Feb 2017 00:52:40 GMT
ENV PATH=/usr/lib/postgresql/9.2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 10 Feb 2017 00:52:40 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 10 Feb 2017 00:52:41 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 10 Feb 2017 00:52:41 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 10 Feb 2017 00:52:42 GMT
COPY file:f9a2410e9ac1ac1f8eaaa7097935e1bc01697a3aea28753ca0ff43bcb928e743 in /usr/local/bin/ 
# Fri, 10 Feb 2017 00:52:43 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 10 Feb 2017 00:52:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 10 Feb 2017 00:52:44 GMT
EXPOSE 5432/tcp
# Fri, 10 Feb 2017 00:52:44 GMT
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
	-	`sha256:e499b936de3a4149007f2dd12c22a03c5c75ff6ed215d7ad0f59d42d6b302303`  
		Last Modified: Fri, 10 Feb 2017 01:03:23 GMT  
		Size: 11.5 MB (11488541 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2d94ae7f36061759814a17e2550d64edd78676c3b2d1130428ac76819010273`  
		Last Modified: Fri, 10 Feb 2017 01:03:14 GMT  
		Size: 6.4 KB (6441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61ae45377e8b3983a2e62b7d8cb1cace859c170c532a36ea5cdcb32284679e0c`  
		Last Modified: Fri, 10 Feb 2017 01:03:14 GMT  
		Size: 144.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fbd9ea2b621d1f0a7630e008f3af6f1061f84c94cd1f484538a336d12aa1c8e`  
		Last Modified: Fri, 10 Feb 2017 01:03:15 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83ed19c823bda5e150d7d78f0f9151d381a583b2929a042e76bfaae1fefa3b86`  
		Last Modified: Fri, 10 Feb 2017 01:03:14 GMT  
		Size: 1.7 KB (1685 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cedd960abd791665fa492c6f1f950c7d963867d00f4b5a1badef690eb06c7ae`  
		Last Modified: Fri, 10 Feb 2017 01:03:15 GMT  
		Size: 119.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.2-alpine`

```console
$ docker pull postgres@sha256:ea46a36be71a1c22a1c1e19d7fae708d78a5250cb889f53d8522f2dd27d00178
```

-	Platforms:
	-	linux; amd64

### `postgres:9.2-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.4 MB (13399270 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:76e59f83af3dccab7a4fee8b0dd71e3f836b1b33a9f6444d7a46b63ec1a53ad4`
-	Entrypoint: `["docker-entrypoint.sh"]`
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
# Fri, 10 Feb 2017 00:49:04 GMT
ENV PG_VERSION=9.2.20
# Fri, 10 Feb 2017 00:49:04 GMT
ENV PG_SHA256=0b8abdae8400cabea5587a726003c9dd71c73c049bdae523abc35f9312dd8f26
# Fri, 10 Feb 2017 00:52:37 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl 		util-linux-dev 		zlib-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& ./configure 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(getconf _NPROCESSORS_ONLN)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Fri, 10 Feb 2017 00:52:38 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Fri, 10 Feb 2017 00:52:39 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod g+s /var/run/postgresql
# Fri, 10 Feb 2017 00:52:40 GMT
ENV PATH=/usr/lib/postgresql/9.2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 10 Feb 2017 00:52:40 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 10 Feb 2017 00:52:41 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 10 Feb 2017 00:52:41 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 10 Feb 2017 00:52:42 GMT
COPY file:f9a2410e9ac1ac1f8eaaa7097935e1bc01697a3aea28753ca0ff43bcb928e743 in /usr/local/bin/ 
# Fri, 10 Feb 2017 00:52:43 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 10 Feb 2017 00:52:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 10 Feb 2017 00:52:44 GMT
EXPOSE 5432/tcp
# Fri, 10 Feb 2017 00:52:44 GMT
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
	-	`sha256:e499b936de3a4149007f2dd12c22a03c5c75ff6ed215d7ad0f59d42d6b302303`  
		Last Modified: Fri, 10 Feb 2017 01:03:23 GMT  
		Size: 11.5 MB (11488541 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2d94ae7f36061759814a17e2550d64edd78676c3b2d1130428ac76819010273`  
		Last Modified: Fri, 10 Feb 2017 01:03:14 GMT  
		Size: 6.4 KB (6441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61ae45377e8b3983a2e62b7d8cb1cace859c170c532a36ea5cdcb32284679e0c`  
		Last Modified: Fri, 10 Feb 2017 01:03:14 GMT  
		Size: 144.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fbd9ea2b621d1f0a7630e008f3af6f1061f84c94cd1f484538a336d12aa1c8e`  
		Last Modified: Fri, 10 Feb 2017 01:03:15 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83ed19c823bda5e150d7d78f0f9151d381a583b2929a042e76bfaae1fefa3b86`  
		Last Modified: Fri, 10 Feb 2017 01:03:14 GMT  
		Size: 1.7 KB (1685 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cedd960abd791665fa492c6f1f950c7d963867d00f4b5a1badef690eb06c7ae`  
		Last Modified: Fri, 10 Feb 2017 01:03:15 GMT  
		Size: 119.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
