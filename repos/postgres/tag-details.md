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
$ docker pull postgres@sha256:d865bf05c382a2b54c8436a80f0257010587afc01830907899b66a9e615bbbbf
```

-	Platforms:
	-	linux; amd64

### `postgres:9.6.2` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **101.8 MB (101800233 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e8060950e00d8337f97e618e225aeb122c156c257128ac849aa7b89b76b6fa0f`
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
# Tue, 21 Mar 2017 16:54:51 GMT
COPY file:88a96354a6aaf272401b7f970f55a9dc174766547274d89eac38a4f16ed20c56 in /usr/local/bin/ 
# Tue, 21 Mar 2017 16:54:53 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 21 Mar 2017 16:55:09 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 21 Mar 2017 16:55:10 GMT
EXPOSE 5432/tcp
# Tue, 21 Mar 2017 16:55:10 GMT
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
	-	`sha256:d614d4e5d7d10c8aa2f30685f16d7917539a6077737daddf0979d349be752f15`  
		Last Modified: Tue, 21 Mar 2017 16:56:33 GMT  
		Size: 1.8 KB (1802 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d661f275cb8073165e375607920fad54ffb6e13a8e48650a02666c0aac9c1cb5`  
		Last Modified: Tue, 21 Mar 2017 16:56:33 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.6`

```console
$ docker pull postgres@sha256:d865bf05c382a2b54c8436a80f0257010587afc01830907899b66a9e615bbbbf
```

-	Platforms:
	-	linux; amd64

### `postgres:9.6` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **101.8 MB (101800233 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e8060950e00d8337f97e618e225aeb122c156c257128ac849aa7b89b76b6fa0f`
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
# Tue, 21 Mar 2017 16:54:51 GMT
COPY file:88a96354a6aaf272401b7f970f55a9dc174766547274d89eac38a4f16ed20c56 in /usr/local/bin/ 
# Tue, 21 Mar 2017 16:54:53 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 21 Mar 2017 16:55:09 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 21 Mar 2017 16:55:10 GMT
EXPOSE 5432/tcp
# Tue, 21 Mar 2017 16:55:10 GMT
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
	-	`sha256:d614d4e5d7d10c8aa2f30685f16d7917539a6077737daddf0979d349be752f15`  
		Last Modified: Tue, 21 Mar 2017 16:56:33 GMT  
		Size: 1.8 KB (1802 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d661f275cb8073165e375607920fad54ffb6e13a8e48650a02666c0aac9c1cb5`  
		Last Modified: Tue, 21 Mar 2017 16:56:33 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9`

```console
$ docker pull postgres@sha256:d865bf05c382a2b54c8436a80f0257010587afc01830907899b66a9e615bbbbf
```

-	Platforms:
	-	linux; amd64

### `postgres:9` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **101.8 MB (101800233 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e8060950e00d8337f97e618e225aeb122c156c257128ac849aa7b89b76b6fa0f`
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
# Tue, 21 Mar 2017 16:54:51 GMT
COPY file:88a96354a6aaf272401b7f970f55a9dc174766547274d89eac38a4f16ed20c56 in /usr/local/bin/ 
# Tue, 21 Mar 2017 16:54:53 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 21 Mar 2017 16:55:09 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 21 Mar 2017 16:55:10 GMT
EXPOSE 5432/tcp
# Tue, 21 Mar 2017 16:55:10 GMT
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
	-	`sha256:d614d4e5d7d10c8aa2f30685f16d7917539a6077737daddf0979d349be752f15`  
		Last Modified: Tue, 21 Mar 2017 16:56:33 GMT  
		Size: 1.8 KB (1802 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d661f275cb8073165e375607920fad54ffb6e13a8e48650a02666c0aac9c1cb5`  
		Last Modified: Tue, 21 Mar 2017 16:56:33 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:latest`

```console
$ docker pull postgres@sha256:d865bf05c382a2b54c8436a80f0257010587afc01830907899b66a9e615bbbbf
```

-	Platforms:
	-	linux; amd64

### `postgres:latest` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **101.8 MB (101800233 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e8060950e00d8337f97e618e225aeb122c156c257128ac849aa7b89b76b6fa0f`
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
# Tue, 21 Mar 2017 16:54:51 GMT
COPY file:88a96354a6aaf272401b7f970f55a9dc174766547274d89eac38a4f16ed20c56 in /usr/local/bin/ 
# Tue, 21 Mar 2017 16:54:53 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 21 Mar 2017 16:55:09 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 21 Mar 2017 16:55:10 GMT
EXPOSE 5432/tcp
# Tue, 21 Mar 2017 16:55:10 GMT
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
	-	`sha256:d614d4e5d7d10c8aa2f30685f16d7917539a6077737daddf0979d349be752f15`  
		Last Modified: Tue, 21 Mar 2017 16:56:33 GMT  
		Size: 1.8 KB (1802 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d661f275cb8073165e375607920fad54ffb6e13a8e48650a02666c0aac9c1cb5`  
		Last Modified: Tue, 21 Mar 2017 16:56:33 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.6.2-alpine`

```console
$ docker pull postgres@sha256:2af243b37cbb17d6c2fb156c7148f9fae3c4670679a3c6e3a1fb341a2addc198
```

-	Platforms:
	-	linux; amd64

### `postgres:9.6.2-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.0 MB (13993353 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b3e7f411a7dea55dc63260d3b779e797c19be3b2245c8c999a44f4a9c640bb42`
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
# Tue, 07 Mar 2017 23:45:57 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl 		util-linux-dev 		zlib-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& ./configure 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Tue, 07 Mar 2017 23:45:58 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Tue, 07 Mar 2017 23:45:59 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod g+s /var/run/postgresql
# Tue, 07 Mar 2017 23:45:59 GMT
ENV PATH=/usr/lib/postgresql/9.6/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 07 Mar 2017 23:46:00 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 07 Mar 2017 23:46:01 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Tue, 07 Mar 2017 23:46:01 GMT
VOLUME [/var/lib/postgresql/data]
# Tue, 21 Mar 2017 16:55:13 GMT
COPY file:eaca0a850cbcaa5c12dcc3641ccc20e204dc7bdc99f5489f34ab1483318257b8 in /usr/local/bin/ 
# Tue, 21 Mar 2017 16:55:14 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 21 Mar 2017 16:55:15 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 21 Mar 2017 16:55:15 GMT
EXPOSE 5432/tcp
# Tue, 21 Mar 2017 16:55:16 GMT
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
	-	`sha256:f829d456f997b8d438f1d24a1174527d75f2a70fb9b4cd96523178f1d96657bc`  
		Last Modified: Tue, 07 Mar 2017 23:55:45 GMT  
		Size: 12.1 MB (12078647 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ed44e989a3a6d74a152d24111ae4fccda786bcd5c0adedb09de2f56d08a9654`  
		Last Modified: Tue, 07 Mar 2017 23:55:39 GMT  
		Size: 7.1 KB (7096 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64960f1d9c234d497eea1abf9ec25a8998d6e89a36294255010a54ac9b41f5c6`  
		Last Modified: Tue, 07 Mar 2017 23:55:39 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:299245faa0f075e147e925da4eb2e7eb1fbe71d508547a4bba72102cc9b65590`  
		Last Modified: Tue, 07 Mar 2017 23:55:39 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eaa906266360917e8784ba55bfe8c1f387f3374433455d395a97f27a42996252`  
		Last Modified: Tue, 21 Mar 2017 16:58:34 GMT  
		Size: 1.8 KB (1797 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb867e8c8db8cf6c0cc20cb2642b28249132492166b2e170f4934443c77587d2`  
		Last Modified: Tue, 21 Mar 2017 16:58:33 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.6-alpine`

```console
$ docker pull postgres@sha256:2af243b37cbb17d6c2fb156c7148f9fae3c4670679a3c6e3a1fb341a2addc198
```

-	Platforms:
	-	linux; amd64

### `postgres:9.6-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.0 MB (13993353 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b3e7f411a7dea55dc63260d3b779e797c19be3b2245c8c999a44f4a9c640bb42`
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
# Tue, 07 Mar 2017 23:45:57 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl 		util-linux-dev 		zlib-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& ./configure 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Tue, 07 Mar 2017 23:45:58 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Tue, 07 Mar 2017 23:45:59 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod g+s /var/run/postgresql
# Tue, 07 Mar 2017 23:45:59 GMT
ENV PATH=/usr/lib/postgresql/9.6/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 07 Mar 2017 23:46:00 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 07 Mar 2017 23:46:01 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Tue, 07 Mar 2017 23:46:01 GMT
VOLUME [/var/lib/postgresql/data]
# Tue, 21 Mar 2017 16:55:13 GMT
COPY file:eaca0a850cbcaa5c12dcc3641ccc20e204dc7bdc99f5489f34ab1483318257b8 in /usr/local/bin/ 
# Tue, 21 Mar 2017 16:55:14 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 21 Mar 2017 16:55:15 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 21 Mar 2017 16:55:15 GMT
EXPOSE 5432/tcp
# Tue, 21 Mar 2017 16:55:16 GMT
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
	-	`sha256:f829d456f997b8d438f1d24a1174527d75f2a70fb9b4cd96523178f1d96657bc`  
		Last Modified: Tue, 07 Mar 2017 23:55:45 GMT  
		Size: 12.1 MB (12078647 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ed44e989a3a6d74a152d24111ae4fccda786bcd5c0adedb09de2f56d08a9654`  
		Last Modified: Tue, 07 Mar 2017 23:55:39 GMT  
		Size: 7.1 KB (7096 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64960f1d9c234d497eea1abf9ec25a8998d6e89a36294255010a54ac9b41f5c6`  
		Last Modified: Tue, 07 Mar 2017 23:55:39 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:299245faa0f075e147e925da4eb2e7eb1fbe71d508547a4bba72102cc9b65590`  
		Last Modified: Tue, 07 Mar 2017 23:55:39 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eaa906266360917e8784ba55bfe8c1f387f3374433455d395a97f27a42996252`  
		Last Modified: Tue, 21 Mar 2017 16:58:34 GMT  
		Size: 1.8 KB (1797 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb867e8c8db8cf6c0cc20cb2642b28249132492166b2e170f4934443c77587d2`  
		Last Modified: Tue, 21 Mar 2017 16:58:33 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9-alpine`

```console
$ docker pull postgres@sha256:2af243b37cbb17d6c2fb156c7148f9fae3c4670679a3c6e3a1fb341a2addc198
```

-	Platforms:
	-	linux; amd64

### `postgres:9-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.0 MB (13993353 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b3e7f411a7dea55dc63260d3b779e797c19be3b2245c8c999a44f4a9c640bb42`
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
# Tue, 07 Mar 2017 23:45:57 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl 		util-linux-dev 		zlib-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& ./configure 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Tue, 07 Mar 2017 23:45:58 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Tue, 07 Mar 2017 23:45:59 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod g+s /var/run/postgresql
# Tue, 07 Mar 2017 23:45:59 GMT
ENV PATH=/usr/lib/postgresql/9.6/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 07 Mar 2017 23:46:00 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 07 Mar 2017 23:46:01 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Tue, 07 Mar 2017 23:46:01 GMT
VOLUME [/var/lib/postgresql/data]
# Tue, 21 Mar 2017 16:55:13 GMT
COPY file:eaca0a850cbcaa5c12dcc3641ccc20e204dc7bdc99f5489f34ab1483318257b8 in /usr/local/bin/ 
# Tue, 21 Mar 2017 16:55:14 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 21 Mar 2017 16:55:15 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 21 Mar 2017 16:55:15 GMT
EXPOSE 5432/tcp
# Tue, 21 Mar 2017 16:55:16 GMT
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
	-	`sha256:f829d456f997b8d438f1d24a1174527d75f2a70fb9b4cd96523178f1d96657bc`  
		Last Modified: Tue, 07 Mar 2017 23:55:45 GMT  
		Size: 12.1 MB (12078647 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ed44e989a3a6d74a152d24111ae4fccda786bcd5c0adedb09de2f56d08a9654`  
		Last Modified: Tue, 07 Mar 2017 23:55:39 GMT  
		Size: 7.1 KB (7096 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64960f1d9c234d497eea1abf9ec25a8998d6e89a36294255010a54ac9b41f5c6`  
		Last Modified: Tue, 07 Mar 2017 23:55:39 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:299245faa0f075e147e925da4eb2e7eb1fbe71d508547a4bba72102cc9b65590`  
		Last Modified: Tue, 07 Mar 2017 23:55:39 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eaa906266360917e8784ba55bfe8c1f387f3374433455d395a97f27a42996252`  
		Last Modified: Tue, 21 Mar 2017 16:58:34 GMT  
		Size: 1.8 KB (1797 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb867e8c8db8cf6c0cc20cb2642b28249132492166b2e170f4934443c77587d2`  
		Last Modified: Tue, 21 Mar 2017 16:58:33 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:alpine`

```console
$ docker pull postgres@sha256:2af243b37cbb17d6c2fb156c7148f9fae3c4670679a3c6e3a1fb341a2addc198
```

-	Platforms:
	-	linux; amd64

### `postgres:alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.0 MB (13993353 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b3e7f411a7dea55dc63260d3b779e797c19be3b2245c8c999a44f4a9c640bb42`
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
# Tue, 07 Mar 2017 23:45:57 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl 		util-linux-dev 		zlib-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& ./configure 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Tue, 07 Mar 2017 23:45:58 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Tue, 07 Mar 2017 23:45:59 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod g+s /var/run/postgresql
# Tue, 07 Mar 2017 23:45:59 GMT
ENV PATH=/usr/lib/postgresql/9.6/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 07 Mar 2017 23:46:00 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 07 Mar 2017 23:46:01 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Tue, 07 Mar 2017 23:46:01 GMT
VOLUME [/var/lib/postgresql/data]
# Tue, 21 Mar 2017 16:55:13 GMT
COPY file:eaca0a850cbcaa5c12dcc3641ccc20e204dc7bdc99f5489f34ab1483318257b8 in /usr/local/bin/ 
# Tue, 21 Mar 2017 16:55:14 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 21 Mar 2017 16:55:15 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 21 Mar 2017 16:55:15 GMT
EXPOSE 5432/tcp
# Tue, 21 Mar 2017 16:55:16 GMT
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
	-	`sha256:f829d456f997b8d438f1d24a1174527d75f2a70fb9b4cd96523178f1d96657bc`  
		Last Modified: Tue, 07 Mar 2017 23:55:45 GMT  
		Size: 12.1 MB (12078647 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ed44e989a3a6d74a152d24111ae4fccda786bcd5c0adedb09de2f56d08a9654`  
		Last Modified: Tue, 07 Mar 2017 23:55:39 GMT  
		Size: 7.1 KB (7096 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64960f1d9c234d497eea1abf9ec25a8998d6e89a36294255010a54ac9b41f5c6`  
		Last Modified: Tue, 07 Mar 2017 23:55:39 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:299245faa0f075e147e925da4eb2e7eb1fbe71d508547a4bba72102cc9b65590`  
		Last Modified: Tue, 07 Mar 2017 23:55:39 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eaa906266360917e8784ba55bfe8c1f387f3374433455d395a97f27a42996252`  
		Last Modified: Tue, 21 Mar 2017 16:58:34 GMT  
		Size: 1.8 KB (1797 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb867e8c8db8cf6c0cc20cb2642b28249132492166b2e170f4934443c77587d2`  
		Last Modified: Tue, 21 Mar 2017 16:58:33 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.5.6`

```console
$ docker pull postgres@sha256:fd8488265cb46883ef745a64f372d9b837ee7d95566f00c26cf2abd62d980464
```

-	Platforms:
	-	linux; amd64

### `postgres:9.5.6` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **101.3 MB (101330281 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:086807d59ef8c67d06d319e37c4c2018e2097e67dbc87c9b7b8a1a954693dc3e`
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
# Tue, 21 Mar 2017 16:55:18 GMT
COPY file:88a96354a6aaf272401b7f970f55a9dc174766547274d89eac38a4f16ed20c56 in /usr/local/bin/ 
# Tue, 21 Mar 2017 16:55:19 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 21 Mar 2017 16:55:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 21 Mar 2017 16:55:20 GMT
EXPOSE 5432/tcp
# Tue, 21 Mar 2017 16:55:21 GMT
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
	-	`sha256:d02c3c461454575c60c703a605ebce44c1b0975ba0290c0246d9f402c708bd93`  
		Last Modified: Tue, 21 Mar 2017 17:00:44 GMT  
		Size: 1.8 KB (1801 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d60b14a3b94c48cd9535d26832db2b82627807251a9aaaa24015180932682f2`  
		Last Modified: Tue, 21 Mar 2017 17:00:44 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.5`

```console
$ docker pull postgres@sha256:fd8488265cb46883ef745a64f372d9b837ee7d95566f00c26cf2abd62d980464
```

-	Platforms:
	-	linux; amd64

### `postgres:9.5` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **101.3 MB (101330281 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:086807d59ef8c67d06d319e37c4c2018e2097e67dbc87c9b7b8a1a954693dc3e`
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
# Tue, 21 Mar 2017 16:55:18 GMT
COPY file:88a96354a6aaf272401b7f970f55a9dc174766547274d89eac38a4f16ed20c56 in /usr/local/bin/ 
# Tue, 21 Mar 2017 16:55:19 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 21 Mar 2017 16:55:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 21 Mar 2017 16:55:20 GMT
EXPOSE 5432/tcp
# Tue, 21 Mar 2017 16:55:21 GMT
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
	-	`sha256:d02c3c461454575c60c703a605ebce44c1b0975ba0290c0246d9f402c708bd93`  
		Last Modified: Tue, 21 Mar 2017 17:00:44 GMT  
		Size: 1.8 KB (1801 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d60b14a3b94c48cd9535d26832db2b82627807251a9aaaa24015180932682f2`  
		Last Modified: Tue, 21 Mar 2017 17:00:44 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.5.6-alpine`

```console
$ docker pull postgres@sha256:ffe892e7930831a2a76153be0cb8f8bee271641632033aef5016b1fa1260e77b
```

-	Platforms:
	-	linux; amd64

### `postgres:9.5.6-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.7 MB (13716817 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:687a889a40b0ba2f050430a24097e22e49534c8500f0b5a47f89420b9c254648`
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
# Tue, 07 Mar 2017 23:48:03 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl 		util-linux-dev 		zlib-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& ./configure 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Tue, 07 Mar 2017 23:48:04 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Tue, 07 Mar 2017 23:48:05 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod g+s /var/run/postgresql
# Tue, 07 Mar 2017 23:48:06 GMT
ENV PATH=/usr/lib/postgresql/9.5/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 07 Mar 2017 23:48:06 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 07 Mar 2017 23:48:07 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Tue, 07 Mar 2017 23:48:07 GMT
VOLUME [/var/lib/postgresql/data]
# Tue, 21 Mar 2017 16:55:23 GMT
COPY file:eaca0a850cbcaa5c12dcc3641ccc20e204dc7bdc99f5489f34ab1483318257b8 in /usr/local/bin/ 
# Tue, 21 Mar 2017 16:55:24 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 21 Mar 2017 16:55:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 21 Mar 2017 16:55:25 GMT
EXPOSE 5432/tcp
# Tue, 21 Mar 2017 16:55:26 GMT
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
	-	`sha256:6789a263b11913de4f1595d043997a51861fed8c900bf47363109078ce2dea9b`  
		Last Modified: Tue, 07 Mar 2017 23:57:44 GMT  
		Size: 11.8 MB (11802382 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:295eaa9cb244d6b039eadf337b376d74fde716c32388978e3ed6c37a5858be99`  
		Last Modified: Tue, 07 Mar 2017 23:57:38 GMT  
		Size: 6.8 KB (6827 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bc851e9ab61a5d4d9c2dd937c06d64dba56e651a9cc39ff84bfa94fc96e1e62`  
		Last Modified: Tue, 07 Mar 2017 23:57:38 GMT  
		Size: 145.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:014af74535f5ae07fcf81973c636678d144ca4b694b37c22eb0dff428aaba178`  
		Last Modified: Tue, 07 Mar 2017 23:57:38 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0299148022f814d6ed081f9c7baaaee4825fcea685ee593cb68fde1fc7501a79`  
		Last Modified: Tue, 21 Mar 2017 17:01:50 GMT  
		Size: 1.8 KB (1795 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35d9778779720b12a25b81e18797c0cbf7fb1783f9318dccd8a2b248a9ceb71d`  
		Last Modified: Tue, 21 Mar 2017 17:01:52 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.5-alpine`

```console
$ docker pull postgres@sha256:ffe892e7930831a2a76153be0cb8f8bee271641632033aef5016b1fa1260e77b
```

-	Platforms:
	-	linux; amd64

### `postgres:9.5-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.7 MB (13716817 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:687a889a40b0ba2f050430a24097e22e49534c8500f0b5a47f89420b9c254648`
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
# Tue, 07 Mar 2017 23:48:03 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl 		util-linux-dev 		zlib-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& ./configure 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Tue, 07 Mar 2017 23:48:04 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Tue, 07 Mar 2017 23:48:05 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod g+s /var/run/postgresql
# Tue, 07 Mar 2017 23:48:06 GMT
ENV PATH=/usr/lib/postgresql/9.5/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 07 Mar 2017 23:48:06 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 07 Mar 2017 23:48:07 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Tue, 07 Mar 2017 23:48:07 GMT
VOLUME [/var/lib/postgresql/data]
# Tue, 21 Mar 2017 16:55:23 GMT
COPY file:eaca0a850cbcaa5c12dcc3641ccc20e204dc7bdc99f5489f34ab1483318257b8 in /usr/local/bin/ 
# Tue, 21 Mar 2017 16:55:24 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 21 Mar 2017 16:55:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 21 Mar 2017 16:55:25 GMT
EXPOSE 5432/tcp
# Tue, 21 Mar 2017 16:55:26 GMT
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
	-	`sha256:6789a263b11913de4f1595d043997a51861fed8c900bf47363109078ce2dea9b`  
		Last Modified: Tue, 07 Mar 2017 23:57:44 GMT  
		Size: 11.8 MB (11802382 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:295eaa9cb244d6b039eadf337b376d74fde716c32388978e3ed6c37a5858be99`  
		Last Modified: Tue, 07 Mar 2017 23:57:38 GMT  
		Size: 6.8 KB (6827 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bc851e9ab61a5d4d9c2dd937c06d64dba56e651a9cc39ff84bfa94fc96e1e62`  
		Last Modified: Tue, 07 Mar 2017 23:57:38 GMT  
		Size: 145.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:014af74535f5ae07fcf81973c636678d144ca4b694b37c22eb0dff428aaba178`  
		Last Modified: Tue, 07 Mar 2017 23:57:38 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0299148022f814d6ed081f9c7baaaee4825fcea685ee593cb68fde1fc7501a79`  
		Last Modified: Tue, 21 Mar 2017 17:01:50 GMT  
		Size: 1.8 KB (1795 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35d9778779720b12a25b81e18797c0cbf7fb1783f9318dccd8a2b248a9ceb71d`  
		Last Modified: Tue, 21 Mar 2017 17:01:52 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.4.11`

```console
$ docker pull postgres@sha256:f44a752e84e8882c2f55afd42b68711851a3ad071dc4a4989a90383bdcfbdcfb
```

-	Platforms:
	-	linux; amd64

### `postgres:9.4.11` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **100.9 MB (100917859 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:47495d8274c392a3631f48cff75f86cd2d9a5d0dfe002d910e2432e299a7d021`
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
# Tue, 21 Mar 2017 16:55:27 GMT
COPY file:88a96354a6aaf272401b7f970f55a9dc174766547274d89eac38a4f16ed20c56 in /usr/local/bin/ 
# Tue, 21 Mar 2017 16:55:28 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 21 Mar 2017 16:55:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 21 Mar 2017 16:55:30 GMT
EXPOSE 5432/tcp
# Tue, 21 Mar 2017 16:55:30 GMT
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
	-	`sha256:b866db7db15d5f5b4fae69a2a124bc23bb8785824ca9a515c09576d3ad01a2ed`  
		Last Modified: Tue, 21 Mar 2017 17:02:56 GMT  
		Size: 1.8 KB (1804 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2e7f91c3bc647eedb70c10499037b9fe4be5e9dc200808e2bae83700f2661a5`  
		Last Modified: Tue, 21 Mar 2017 17:02:56 GMT  
		Size: 118.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.4`

```console
$ docker pull postgres@sha256:f44a752e84e8882c2f55afd42b68711851a3ad071dc4a4989a90383bdcfbdcfb
```

-	Platforms:
	-	linux; amd64

### `postgres:9.4` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **100.9 MB (100917859 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:47495d8274c392a3631f48cff75f86cd2d9a5d0dfe002d910e2432e299a7d021`
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
# Tue, 21 Mar 2017 16:55:27 GMT
COPY file:88a96354a6aaf272401b7f970f55a9dc174766547274d89eac38a4f16ed20c56 in /usr/local/bin/ 
# Tue, 21 Mar 2017 16:55:28 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 21 Mar 2017 16:55:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 21 Mar 2017 16:55:30 GMT
EXPOSE 5432/tcp
# Tue, 21 Mar 2017 16:55:30 GMT
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
	-	`sha256:b866db7db15d5f5b4fae69a2a124bc23bb8785824ca9a515c09576d3ad01a2ed`  
		Last Modified: Tue, 21 Mar 2017 17:02:56 GMT  
		Size: 1.8 KB (1804 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2e7f91c3bc647eedb70c10499037b9fe4be5e9dc200808e2bae83700f2661a5`  
		Last Modified: Tue, 21 Mar 2017 17:02:56 GMT  
		Size: 118.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.4.11-alpine`

```console
$ docker pull postgres@sha256:6cc51ae879dc12dce6e95cfce91f6b609ce84c4e632a0cb0f7eb80b8e6b0dba7
```

-	Platforms:
	-	linux; amd64

### `postgres:9.4.11-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.5 MB (13499602 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6400a39d135507b1c6ad95cf2fec37927a158626a0ccc4c1c7aabb283762768c`
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
# Tue, 07 Mar 2017 23:50:03 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl 		util-linux-dev 		zlib-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& ./configure 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Tue, 07 Mar 2017 23:50:04 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Tue, 07 Mar 2017 23:50:05 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod g+s /var/run/postgresql
# Tue, 07 Mar 2017 23:50:05 GMT
ENV PATH=/usr/lib/postgresql/9.4/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 07 Mar 2017 23:50:05 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 07 Mar 2017 23:50:06 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Tue, 07 Mar 2017 23:50:07 GMT
VOLUME [/var/lib/postgresql/data]
# Tue, 21 Mar 2017 16:55:32 GMT
COPY file:eaca0a850cbcaa5c12dcc3641ccc20e204dc7bdc99f5489f34ab1483318257b8 in /usr/local/bin/ 
# Tue, 21 Mar 2017 16:55:33 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 21 Mar 2017 16:55:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 21 Mar 2017 16:55:34 GMT
EXPOSE 5432/tcp
# Tue, 21 Mar 2017 16:55:35 GMT
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
	-	`sha256:04c18a3c8964dac6af66fbb8019f745c4a3a505b76fd2d9d1c2dd928254bbadd`  
		Last Modified: Tue, 07 Mar 2017 23:59:09 GMT  
		Size: 11.6 MB (11585312 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0b267450e72588146f59d8ff9380819020b3d94bb3cf2bbbfdf35eb4c350cbe`  
		Last Modified: Tue, 07 Mar 2017 23:59:01 GMT  
		Size: 6.7 KB (6681 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6caa9d3c92f9f5e51b3a9b3738ff299ca5ca2eb95b334f50a835318e29d9f19c`  
		Last Modified: Tue, 07 Mar 2017 23:59:01 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1dd699c4e0041857e3692a1352646479562ddee9855bbca18a178c64ba637bff`  
		Last Modified: Tue, 07 Mar 2017 23:59:01 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1319dd870dbcc78bf048797c14762165644a88331d7681555080f4c299f82fc0`  
		Last Modified: Tue, 21 Mar 2017 17:04:02 GMT  
		Size: 1.8 KB (1795 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62e0c4eaec1ff95b071d42732d4463fa72986f3cd4a6ffde0a424e8178b78a3d`  
		Last Modified: Tue, 21 Mar 2017 17:04:01 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.4-alpine`

```console
$ docker pull postgres@sha256:6cc51ae879dc12dce6e95cfce91f6b609ce84c4e632a0cb0f7eb80b8e6b0dba7
```

-	Platforms:
	-	linux; amd64

### `postgres:9.4-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.5 MB (13499602 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6400a39d135507b1c6ad95cf2fec37927a158626a0ccc4c1c7aabb283762768c`
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
# Tue, 07 Mar 2017 23:50:03 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl 		util-linux-dev 		zlib-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& ./configure 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Tue, 07 Mar 2017 23:50:04 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Tue, 07 Mar 2017 23:50:05 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod g+s /var/run/postgresql
# Tue, 07 Mar 2017 23:50:05 GMT
ENV PATH=/usr/lib/postgresql/9.4/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 07 Mar 2017 23:50:05 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 07 Mar 2017 23:50:06 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Tue, 07 Mar 2017 23:50:07 GMT
VOLUME [/var/lib/postgresql/data]
# Tue, 21 Mar 2017 16:55:32 GMT
COPY file:eaca0a850cbcaa5c12dcc3641ccc20e204dc7bdc99f5489f34ab1483318257b8 in /usr/local/bin/ 
# Tue, 21 Mar 2017 16:55:33 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 21 Mar 2017 16:55:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 21 Mar 2017 16:55:34 GMT
EXPOSE 5432/tcp
# Tue, 21 Mar 2017 16:55:35 GMT
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
	-	`sha256:04c18a3c8964dac6af66fbb8019f745c4a3a505b76fd2d9d1c2dd928254bbadd`  
		Last Modified: Tue, 07 Mar 2017 23:59:09 GMT  
		Size: 11.6 MB (11585312 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0b267450e72588146f59d8ff9380819020b3d94bb3cf2bbbfdf35eb4c350cbe`  
		Last Modified: Tue, 07 Mar 2017 23:59:01 GMT  
		Size: 6.7 KB (6681 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6caa9d3c92f9f5e51b3a9b3738ff299ca5ca2eb95b334f50a835318e29d9f19c`  
		Last Modified: Tue, 07 Mar 2017 23:59:01 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1dd699c4e0041857e3692a1352646479562ddee9855bbca18a178c64ba637bff`  
		Last Modified: Tue, 07 Mar 2017 23:59:01 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1319dd870dbcc78bf048797c14762165644a88331d7681555080f4c299f82fc0`  
		Last Modified: Tue, 21 Mar 2017 17:04:02 GMT  
		Size: 1.8 KB (1795 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62e0c4eaec1ff95b071d42732d4463fa72986f3cd4a6ffde0a424e8178b78a3d`  
		Last Modified: Tue, 21 Mar 2017 17:04:01 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.3.16`

```console
$ docker pull postgres@sha256:61877427115e49f62912637f2958eb16c95a7ab8c7c545b9e054d1386d8f49d4
```

-	Platforms:
	-	linux; amd64

### `postgres:9.3.16` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **100.6 MB (100567196 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ca5d6d2e90a5c8223690fa7f2812ea1e4b0de09a4b24486d8df75d6bc36f4995`
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
# Tue, 21 Mar 2017 16:55:36 GMT
COPY file:88a96354a6aaf272401b7f970f55a9dc174766547274d89eac38a4f16ed20c56 in /usr/local/bin/ 
# Tue, 21 Mar 2017 16:55:38 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 21 Mar 2017 16:55:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 21 Mar 2017 16:55:39 GMT
EXPOSE 5432/tcp
# Tue, 21 Mar 2017 16:55:40 GMT
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
	-	`sha256:31cd48264cbb67502111a97fe76abe4fad6206397fc036a314e1c36542db63ca`  
		Last Modified: Tue, 21 Mar 2017 17:05:06 GMT  
		Size: 1.8 KB (1803 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb8c1eae9cc0a46656480a97415949b76c14eab739e67fc849d2b16e48ec99d9`  
		Last Modified: Tue, 21 Mar 2017 17:05:06 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.3`

```console
$ docker pull postgres@sha256:61877427115e49f62912637f2958eb16c95a7ab8c7c545b9e054d1386d8f49d4
```

-	Platforms:
	-	linux; amd64

### `postgres:9.3` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **100.6 MB (100567196 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ca5d6d2e90a5c8223690fa7f2812ea1e4b0de09a4b24486d8df75d6bc36f4995`
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
# Tue, 21 Mar 2017 16:55:36 GMT
COPY file:88a96354a6aaf272401b7f970f55a9dc174766547274d89eac38a4f16ed20c56 in /usr/local/bin/ 
# Tue, 21 Mar 2017 16:55:38 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 21 Mar 2017 16:55:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 21 Mar 2017 16:55:39 GMT
EXPOSE 5432/tcp
# Tue, 21 Mar 2017 16:55:40 GMT
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
	-	`sha256:31cd48264cbb67502111a97fe76abe4fad6206397fc036a314e1c36542db63ca`  
		Last Modified: Tue, 21 Mar 2017 17:05:06 GMT  
		Size: 1.8 KB (1803 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb8c1eae9cc0a46656480a97415949b76c14eab739e67fc849d2b16e48ec99d9`  
		Last Modified: Tue, 21 Mar 2017 17:05:06 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.3.16-alpine`

```console
$ docker pull postgres@sha256:bf5194e924b0af036a35e78cf3994a4ab2002d4ef4b84409b63063f3dc262f91
```

-	Platforms:
	-	linux; amd64

### `postgres:9.3.16-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.2 MB (13217501 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:61a2f8ec0b44b5860c0d5c9a287fa9eaeebb39e1e7e3258fc174150f95d8f88d`
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
# Tue, 07 Mar 2017 23:50:10 GMT
ENV OSSP_UUID_VERSION=1.6.2
# Tue, 07 Mar 2017 23:50:10 GMT
ENV OSSP_UUID_SHA256=11a615225baa5f8bb686824423f50e4427acd3f70d394765bdff32801f0fd5b0
# Tue, 07 Mar 2017 23:52:01 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl 		util-linux-dev 		zlib-dev 		&& wget -O uuid.tar.gz "https://www.mirrorservice.org/sites/ftp.ossp.org/pkg/lib/uuid/uuid-$OSSP_UUID_VERSION.tar.gz" 	&& echo "$OSSP_UUID_SHA256 *uuid.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/ossp-uuid 	&& tar 		--extract 		--file uuid.tar.gz 		--directory /usr/src/ossp-uuid 		--strip-components 1 	&& rm uuid.tar.gz 	&& ( 		cd /usr/src/ossp-uuid 		&& ./configure 			--prefix=/usr/local 		&& make -j "$(nproc)" 		&& make install 	) 	&& rm -rf /usr/src/ossp-uuid 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& ./configure 		--enable-integer-datetimes 		--enable-thread-safety 		--disable-rpath 		--with-ossp-uuid 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Tue, 07 Mar 2017 23:52:02 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Tue, 07 Mar 2017 23:52:03 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod g+s /var/run/postgresql
# Tue, 07 Mar 2017 23:52:03 GMT
ENV PATH=/usr/lib/postgresql/9.3/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 07 Mar 2017 23:52:03 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 07 Mar 2017 23:52:04 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Tue, 07 Mar 2017 23:52:05 GMT
VOLUME [/var/lib/postgresql/data]
# Tue, 21 Mar 2017 16:55:41 GMT
COPY file:eaca0a850cbcaa5c12dcc3641ccc20e204dc7bdc99f5489f34ab1483318257b8 in /usr/local/bin/ 
# Tue, 21 Mar 2017 16:55:42 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 21 Mar 2017 16:55:43 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 21 Mar 2017 16:55:44 GMT
EXPOSE 5432/tcp
# Tue, 21 Mar 2017 16:55:44 GMT
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
	-	`sha256:44d1e980580d9f579a793a4fe6ca708e19b24ec924ccb1499639649428bdb275`  
		Last Modified: Wed, 08 Mar 2017 00:00:34 GMT  
		Size: 11.3 MB (11303392 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:236ec5465be330f965a7ae1966e7ac4f4eadd4ce01db42bbddf0015cff70aca9`  
		Last Modified: Wed, 08 Mar 2017 00:00:28 GMT  
		Size: 6.5 KB (6500 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b5bbf428c85abd245e7b0444252f650dd1d7a821ac2724fd47c868a5a495188`  
		Last Modified: Wed, 08 Mar 2017 00:00:28 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee2c49c2c3be9a5c599c00e999a030f7966b1d8fae776192c87c978f04f08d83`  
		Last Modified: Wed, 08 Mar 2017 00:00:28 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0a87fc0062f61dc931e080423dd796c189b776c9c37cd63a456ba02592e583b`  
		Last Modified: Tue, 21 Mar 2017 17:06:12 GMT  
		Size: 1.8 KB (1796 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ccf5bcd9c6af551a3fb602d83bf5b2ca779a0150e44453f607120de8b181cf0`  
		Last Modified: Tue, 21 Mar 2017 17:06:12 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.3-alpine`

```console
$ docker pull postgres@sha256:bf5194e924b0af036a35e78cf3994a4ab2002d4ef4b84409b63063f3dc262f91
```

-	Platforms:
	-	linux; amd64

### `postgres:9.3-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.2 MB (13217501 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:61a2f8ec0b44b5860c0d5c9a287fa9eaeebb39e1e7e3258fc174150f95d8f88d`
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
# Tue, 07 Mar 2017 23:50:10 GMT
ENV OSSP_UUID_VERSION=1.6.2
# Tue, 07 Mar 2017 23:50:10 GMT
ENV OSSP_UUID_SHA256=11a615225baa5f8bb686824423f50e4427acd3f70d394765bdff32801f0fd5b0
# Tue, 07 Mar 2017 23:52:01 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl 		util-linux-dev 		zlib-dev 		&& wget -O uuid.tar.gz "https://www.mirrorservice.org/sites/ftp.ossp.org/pkg/lib/uuid/uuid-$OSSP_UUID_VERSION.tar.gz" 	&& echo "$OSSP_UUID_SHA256 *uuid.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/ossp-uuid 	&& tar 		--extract 		--file uuid.tar.gz 		--directory /usr/src/ossp-uuid 		--strip-components 1 	&& rm uuid.tar.gz 	&& ( 		cd /usr/src/ossp-uuid 		&& ./configure 			--prefix=/usr/local 		&& make -j "$(nproc)" 		&& make install 	) 	&& rm -rf /usr/src/ossp-uuid 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& ./configure 		--enable-integer-datetimes 		--enable-thread-safety 		--disable-rpath 		--with-ossp-uuid 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Tue, 07 Mar 2017 23:52:02 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Tue, 07 Mar 2017 23:52:03 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod g+s /var/run/postgresql
# Tue, 07 Mar 2017 23:52:03 GMT
ENV PATH=/usr/lib/postgresql/9.3/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 07 Mar 2017 23:52:03 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 07 Mar 2017 23:52:04 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Tue, 07 Mar 2017 23:52:05 GMT
VOLUME [/var/lib/postgresql/data]
# Tue, 21 Mar 2017 16:55:41 GMT
COPY file:eaca0a850cbcaa5c12dcc3641ccc20e204dc7bdc99f5489f34ab1483318257b8 in /usr/local/bin/ 
# Tue, 21 Mar 2017 16:55:42 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 21 Mar 2017 16:55:43 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 21 Mar 2017 16:55:44 GMT
EXPOSE 5432/tcp
# Tue, 21 Mar 2017 16:55:44 GMT
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
	-	`sha256:44d1e980580d9f579a793a4fe6ca708e19b24ec924ccb1499639649428bdb275`  
		Last Modified: Wed, 08 Mar 2017 00:00:34 GMT  
		Size: 11.3 MB (11303392 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:236ec5465be330f965a7ae1966e7ac4f4eadd4ce01db42bbddf0015cff70aca9`  
		Last Modified: Wed, 08 Mar 2017 00:00:28 GMT  
		Size: 6.5 KB (6500 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b5bbf428c85abd245e7b0444252f650dd1d7a821ac2724fd47c868a5a495188`  
		Last Modified: Wed, 08 Mar 2017 00:00:28 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee2c49c2c3be9a5c599c00e999a030f7966b1d8fae776192c87c978f04f08d83`  
		Last Modified: Wed, 08 Mar 2017 00:00:28 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0a87fc0062f61dc931e080423dd796c189b776c9c37cd63a456ba02592e583b`  
		Last Modified: Tue, 21 Mar 2017 17:06:12 GMT  
		Size: 1.8 KB (1796 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ccf5bcd9c6af551a3fb602d83bf5b2ca779a0150e44453f607120de8b181cf0`  
		Last Modified: Tue, 21 Mar 2017 17:06:12 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.2.20`

```console
$ docker pull postgres@sha256:6932aad2b394028988e10605fb1b9a851759e26c1ead32765c667c91bc7388ac
```

-	Platforms:
	-	linux; amd64

### `postgres:9.2.20` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **100.4 MB (100400516 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:40a28d52b4986d986f9c34efdae3c64c57825d3938f4723bc1fc158647dfe56a`
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
# Tue, 21 Mar 2017 16:55:46 GMT
COPY file:88a96354a6aaf272401b7f970f55a9dc174766547274d89eac38a4f16ed20c56 in /usr/local/bin/ 
# Tue, 21 Mar 2017 16:55:47 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 21 Mar 2017 16:55:48 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 21 Mar 2017 16:55:49 GMT
EXPOSE 5432/tcp
# Tue, 21 Mar 2017 16:55:49 GMT
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
	-	`sha256:c596d7739ffeabf9910fda5000612f099f26ba1a1f6441e024b525554437ec01`  
		Last Modified: Tue, 21 Mar 2017 17:07:17 GMT  
		Size: 1.8 KB (1802 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2b647dbcc3eb1ca312ac051640147c2b249709a5bbd3954bdc7dc4a25494a6e`  
		Last Modified: Tue, 21 Mar 2017 17:07:18 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.2`

```console
$ docker pull postgres@sha256:6932aad2b394028988e10605fb1b9a851759e26c1ead32765c667c91bc7388ac
```

-	Platforms:
	-	linux; amd64

### `postgres:9.2` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **100.4 MB (100400516 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:40a28d52b4986d986f9c34efdae3c64c57825d3938f4723bc1fc158647dfe56a`
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
# Tue, 21 Mar 2017 16:55:46 GMT
COPY file:88a96354a6aaf272401b7f970f55a9dc174766547274d89eac38a4f16ed20c56 in /usr/local/bin/ 
# Tue, 21 Mar 2017 16:55:47 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 21 Mar 2017 16:55:48 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 21 Mar 2017 16:55:49 GMT
EXPOSE 5432/tcp
# Tue, 21 Mar 2017 16:55:49 GMT
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
	-	`sha256:c596d7739ffeabf9910fda5000612f099f26ba1a1f6441e024b525554437ec01`  
		Last Modified: Tue, 21 Mar 2017 17:07:17 GMT  
		Size: 1.8 KB (1802 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2b647dbcc3eb1ca312ac051640147c2b249709a5bbd3954bdc7dc4a25494a6e`  
		Last Modified: Tue, 21 Mar 2017 17:07:18 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.2.20-alpine`

```console
$ docker pull postgres@sha256:3a67fc5d4cae9fa71f411be60bbc37e8891e752566e637d44febbc1822ff66a1
```

-	Platforms:
	-	linux; amd64

### `postgres:9.2.20-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.1 MB (13056492 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:81398e2f060c45282b84da115328b62d3ba9039cae00ecc7ea013b2185dd1535`
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
# Tue, 07 Mar 2017 23:52:08 GMT
ENV OSSP_UUID_VERSION=1.6.2
# Tue, 07 Mar 2017 23:52:09 GMT
ENV OSSP_UUID_SHA256=11a615225baa5f8bb686824423f50e4427acd3f70d394765bdff32801f0fd5b0
# Tue, 07 Mar 2017 23:53:57 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl 		util-linux-dev 		zlib-dev 		&& wget -O uuid.tar.gz "https://www.mirrorservice.org/sites/ftp.ossp.org/pkg/lib/uuid/uuid-$OSSP_UUID_VERSION.tar.gz" 	&& echo "$OSSP_UUID_SHA256 *uuid.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/ossp-uuid 	&& tar 		--extract 		--file uuid.tar.gz 		--directory /usr/src/ossp-uuid 		--strip-components 1 	&& rm uuid.tar.gz 	&& ( 		cd /usr/src/ossp-uuid 		&& ./configure 			--prefix=/usr/local 		&& make -j "$(nproc)" 		&& make install 	) 	&& rm -rf /usr/src/ossp-uuid 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& ./configure 		--enable-integer-datetimes 		--enable-thread-safety 		--disable-rpath 		--with-ossp-uuid 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Tue, 07 Mar 2017 23:53:58 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Tue, 07 Mar 2017 23:53:59 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod g+s /var/run/postgresql
# Tue, 07 Mar 2017 23:53:59 GMT
ENV PATH=/usr/lib/postgresql/9.2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 07 Mar 2017 23:54:00 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 07 Mar 2017 23:54:00 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Tue, 07 Mar 2017 23:54:01 GMT
VOLUME [/var/lib/postgresql/data]
# Tue, 21 Mar 2017 16:55:51 GMT
COPY file:eaca0a850cbcaa5c12dcc3641ccc20e204dc7bdc99f5489f34ab1483318257b8 in /usr/local/bin/ 
# Tue, 21 Mar 2017 16:55:52 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 21 Mar 2017 16:55:53 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 21 Mar 2017 16:55:54 GMT
EXPOSE 5432/tcp
# Tue, 21 Mar 2017 16:55:54 GMT
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
	-	`sha256:908cab65d826e3e5528a77aa78dd4095dbfa401aabe7f96e5a9582be7afc2506`  
		Last Modified: Wed, 08 Mar 2017 00:01:58 GMT  
		Size: 11.1 MB (11142443 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98467d97f26c50371afa1081247ce58b5537819982efd768c3f7489123bb6706`  
		Last Modified: Wed, 08 Mar 2017 00:01:52 GMT  
		Size: 6.4 KB (6441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aeab08d17c64c29309ec77d9559ff3d3209942c67683a915641178f1a87216c1`  
		Last Modified: Wed, 08 Mar 2017 00:01:52 GMT  
		Size: 145.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc12f9a571d32c40fc6da9a7279f40efd2b24241be47ff33c3f79b89e75f964d`  
		Last Modified: Wed, 08 Mar 2017 00:01:52 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c174711e87d6783c3a81939ffcaba15d0fdd7fffed30f02ebc6d7ea2284a74e3`  
		Last Modified: Tue, 21 Mar 2017 17:08:22 GMT  
		Size: 1.8 KB (1797 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4610e7f6105b6026448ab8f196e3bfa16285cf79fd34952b1ee73dd7cc58c48b`  
		Last Modified: Tue, 21 Mar 2017 17:08:22 GMT  
		Size: 119.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.2-alpine`

```console
$ docker pull postgres@sha256:3a67fc5d4cae9fa71f411be60bbc37e8891e752566e637d44febbc1822ff66a1
```

-	Platforms:
	-	linux; amd64

### `postgres:9.2-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.1 MB (13056492 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:81398e2f060c45282b84da115328b62d3ba9039cae00ecc7ea013b2185dd1535`
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
# Tue, 07 Mar 2017 23:52:08 GMT
ENV OSSP_UUID_VERSION=1.6.2
# Tue, 07 Mar 2017 23:52:09 GMT
ENV OSSP_UUID_SHA256=11a615225baa5f8bb686824423f50e4427acd3f70d394765bdff32801f0fd5b0
# Tue, 07 Mar 2017 23:53:57 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl 		util-linux-dev 		zlib-dev 		&& wget -O uuid.tar.gz "https://www.mirrorservice.org/sites/ftp.ossp.org/pkg/lib/uuid/uuid-$OSSP_UUID_VERSION.tar.gz" 	&& echo "$OSSP_UUID_SHA256 *uuid.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/ossp-uuid 	&& tar 		--extract 		--file uuid.tar.gz 		--directory /usr/src/ossp-uuid 		--strip-components 1 	&& rm uuid.tar.gz 	&& ( 		cd /usr/src/ossp-uuid 		&& ./configure 			--prefix=/usr/local 		&& make -j "$(nproc)" 		&& make install 	) 	&& rm -rf /usr/src/ossp-uuid 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& ./configure 		--enable-integer-datetimes 		--enable-thread-safety 		--disable-rpath 		--with-ossp-uuid 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Tue, 07 Mar 2017 23:53:58 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Tue, 07 Mar 2017 23:53:59 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod g+s /var/run/postgresql
# Tue, 07 Mar 2017 23:53:59 GMT
ENV PATH=/usr/lib/postgresql/9.2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 07 Mar 2017 23:54:00 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 07 Mar 2017 23:54:00 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Tue, 07 Mar 2017 23:54:01 GMT
VOLUME [/var/lib/postgresql/data]
# Tue, 21 Mar 2017 16:55:51 GMT
COPY file:eaca0a850cbcaa5c12dcc3641ccc20e204dc7bdc99f5489f34ab1483318257b8 in /usr/local/bin/ 
# Tue, 21 Mar 2017 16:55:52 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 21 Mar 2017 16:55:53 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 21 Mar 2017 16:55:54 GMT
EXPOSE 5432/tcp
# Tue, 21 Mar 2017 16:55:54 GMT
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
	-	`sha256:908cab65d826e3e5528a77aa78dd4095dbfa401aabe7f96e5a9582be7afc2506`  
		Last Modified: Wed, 08 Mar 2017 00:01:58 GMT  
		Size: 11.1 MB (11142443 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98467d97f26c50371afa1081247ce58b5537819982efd768c3f7489123bb6706`  
		Last Modified: Wed, 08 Mar 2017 00:01:52 GMT  
		Size: 6.4 KB (6441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aeab08d17c64c29309ec77d9559ff3d3209942c67683a915641178f1a87216c1`  
		Last Modified: Wed, 08 Mar 2017 00:01:52 GMT  
		Size: 145.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc12f9a571d32c40fc6da9a7279f40efd2b24241be47ff33c3f79b89e75f964d`  
		Last Modified: Wed, 08 Mar 2017 00:01:52 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c174711e87d6783c3a81939ffcaba15d0fdd7fffed30f02ebc6d7ea2284a74e3`  
		Last Modified: Tue, 21 Mar 2017 17:08:22 GMT  
		Size: 1.8 KB (1797 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4610e7f6105b6026448ab8f196e3bfa16285cf79fd34952b1ee73dd7cc58c48b`  
		Last Modified: Tue, 21 Mar 2017 17:08:22 GMT  
		Size: 119.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
