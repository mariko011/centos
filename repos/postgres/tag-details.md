<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `postgres`

-	[`postgres:9.6.3`](#postgres963)
-	[`postgres:9.6`](#postgres96)
-	[`postgres:9`](#postgres9)
-	[`postgres:latest`](#postgreslatest)
-	[`postgres:9.6.3-alpine`](#postgres963-alpine)
-	[`postgres:9.6-alpine`](#postgres96-alpine)
-	[`postgres:9-alpine`](#postgres9-alpine)
-	[`postgres:alpine`](#postgresalpine)
-	[`postgres:9.5.7`](#postgres957)
-	[`postgres:9.5`](#postgres95)
-	[`postgres:9.5.7-alpine`](#postgres957-alpine)
-	[`postgres:9.5-alpine`](#postgres95-alpine)
-	[`postgres:9.4.12`](#postgres9412)
-	[`postgres:9.4`](#postgres94)
-	[`postgres:9.4.12-alpine`](#postgres9412-alpine)
-	[`postgres:9.4-alpine`](#postgres94-alpine)
-	[`postgres:9.3.17`](#postgres9317)
-	[`postgres:9.3`](#postgres93)
-	[`postgres:9.3.17-alpine`](#postgres9317-alpine)
-	[`postgres:9.3-alpine`](#postgres93-alpine)
-	[`postgres:9.2.21`](#postgres9221)
-	[`postgres:9.2`](#postgres92)
-	[`postgres:9.2.21-alpine`](#postgres9221-alpine)
-	[`postgres:9.2-alpine`](#postgres92-alpine)

## `postgres:9.6.3`

```console
$ docker pull postgres@sha256:1364924c753d5ff7e2260cd34dc4ba05ebd40ee8193391220be0f9901d4e1651
```

-	Platforms:
	-	linux; amd64

### `postgres:9.6.3` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.3 MB (104287598 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:02d6fa85db7191ca2a141f9bffb96b058c7b9ec6042a8bbe95cc580f3f816457`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 07 Jun 2017 17:32:31 GMT
ADD file:ce4be6f55b1f47cba28efd351c82dd9fa4efd3d29fa0ae365574adb52151dda1 in / 
# Wed, 07 Jun 2017 17:32:32 GMT
CMD ["bash"]
# Thu, 08 Jun 2017 19:53:53 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Thu, 08 Jun 2017 19:53:53 GMT
ENV GOSU_VERSION=1.7
# Thu, 08 Jun 2017 19:54:15 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Thu, 08 Jun 2017 19:54:25 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Thu, 08 Jun 2017 19:54:26 GMT
ENV LANG=en_US.utf8
# Thu, 08 Jun 2017 19:54:27 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 08 Jun 2017 19:54:30 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Thu, 08 Jun 2017 19:54:31 GMT
ENV PG_MAJOR=9.6
# Thu, 08 Jun 2017 19:54:32 GMT
ENV PG_VERSION=9.6.3-1.pgdg80+1
# Thu, 08 Jun 2017 19:54:34 GMT
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main' $PG_MAJOR > /etc/apt/sources.list.d/pgdg.list
# Thu, 08 Jun 2017 19:55:29 GMT
RUN apt-get update 	&& apt-get install -y postgresql-common 	&& sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf 	&& apt-get install -y 		postgresql-$PG_MAJOR=$PG_VERSION 		postgresql-contrib-$PG_MAJOR=$PG_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Thu, 08 Jun 2017 19:55:31 GMT
RUN mv -v /usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample /usr/share/postgresql/$PG_MAJOR/ 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Thu, 08 Jun 2017 19:55:32 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Thu, 08 Jun 2017 19:55:33 GMT
ENV PATH=/usr/lib/postgresql/9.6/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 08 Jun 2017 19:55:34 GMT
ENV PGDATA=/var/lib/postgresql/data
# Thu, 08 Jun 2017 19:55:35 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Thu, 08 Jun 2017 19:55:36 GMT
VOLUME [/var/lib/postgresql/data]
# Thu, 08 Jun 2017 19:55:37 GMT
COPY file:80a75a207cb3d72777ff2cb8654a6d03754b58aed9199464284f3587637e1403 in /usr/local/bin/ 
# Thu, 08 Jun 2017 19:55:39 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 08 Jun 2017 19:55:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 08 Jun 2017 19:55:41 GMT
EXPOSE 5432/tcp
# Thu, 08 Jun 2017 19:55:41 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:ef0380f84d05d3cdc5a5f660232d35ccb020ccf1d635b585580dea44691a13a7`  
		Last Modified: Wed, 07 Jun 2017 17:58:44 GMT  
		Size: 52.6 MB (52568269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50cf91dc1db82cd63fb612711adebccc0583d55af4150dcf6596673738440357`  
		Last Modified: Thu, 08 Jun 2017 20:14:42 GMT  
		Size: 2.1 KB (2063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3add4cd115cf668465ceeb6a67912fd59c085d818610f1565a36df443d96e92`  
		Last Modified: Thu, 08 Jun 2017 20:14:41 GMT  
		Size: 1.3 MB (1302740 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:467830d8a6162f00d537f9defbc198620cb0f4369cd3c0e4f45270875c9cf1d4`  
		Last Modified: Thu, 08 Jun 2017 20:14:43 GMT  
		Size: 7.1 MB (7112107 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:089b9db7dc57093db23de2e4960e5d3d7043f30e883bf86a830b6c16c0af1e78`  
		Last Modified: Thu, 08 Jun 2017 20:14:40 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fba0a36935c6b3c124af229a9c07f5295c5a95120bd29d2d624ee3e2d2acb73`  
		Last Modified: Thu, 08 Jun 2017 20:14:40 GMT  
		Size: 4.5 KB (4488 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81ef0e73c953be4f9e82356abf87eb190a66d9aed5d87fe701c51d9e9cf2e200`  
		Last Modified: Thu, 08 Jun 2017 20:14:40 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:338a6c4894dc96889c67948c0abc19ac5a4fdf25a0e33c36537b738b2fc79179`  
		Last Modified: Thu, 08 Jun 2017 20:14:51 GMT  
		Size: 43.3 MB (43288288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15853f32f67c90030a074bee671edb13dc08fb778ede7bf9de30cd0b0b95a78b`  
		Last Modified: Thu, 08 Jun 2017 20:14:38 GMT  
		Size: 7.1 KB (7094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:044c83d9289831eb8b7e92c7480fd3e2e21f56dd1533a6486e50864ffe5fee11`  
		Last Modified: Thu, 08 Jun 2017 20:14:38 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17301519f1330b5692fdb55140abd4406450f90407e7acb79d49ea79458007fd`  
		Last Modified: Thu, 08 Jun 2017 20:14:38 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dcca70822752ba5c2428bb33dc059a4bb400dce780f49f3bff7049f330d8156e`  
		Last Modified: Thu, 08 Jun 2017 20:14:38 GMT  
		Size: 1.8 KB (1797 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cecf11b8ccf3e655195e82b4e1f06b0d332609476a595b2d807b8d2b578369aa`  
		Last Modified: Thu, 08 Jun 2017 20:14:38 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.6`

```console
$ docker pull postgres@sha256:1364924c753d5ff7e2260cd34dc4ba05ebd40ee8193391220be0f9901d4e1651
```

-	Platforms:
	-	linux; amd64

### `postgres:9.6` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.3 MB (104287598 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:02d6fa85db7191ca2a141f9bffb96b058c7b9ec6042a8bbe95cc580f3f816457`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 07 Jun 2017 17:32:31 GMT
ADD file:ce4be6f55b1f47cba28efd351c82dd9fa4efd3d29fa0ae365574adb52151dda1 in / 
# Wed, 07 Jun 2017 17:32:32 GMT
CMD ["bash"]
# Thu, 08 Jun 2017 19:53:53 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Thu, 08 Jun 2017 19:53:53 GMT
ENV GOSU_VERSION=1.7
# Thu, 08 Jun 2017 19:54:15 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Thu, 08 Jun 2017 19:54:25 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Thu, 08 Jun 2017 19:54:26 GMT
ENV LANG=en_US.utf8
# Thu, 08 Jun 2017 19:54:27 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 08 Jun 2017 19:54:30 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Thu, 08 Jun 2017 19:54:31 GMT
ENV PG_MAJOR=9.6
# Thu, 08 Jun 2017 19:54:32 GMT
ENV PG_VERSION=9.6.3-1.pgdg80+1
# Thu, 08 Jun 2017 19:54:34 GMT
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main' $PG_MAJOR > /etc/apt/sources.list.d/pgdg.list
# Thu, 08 Jun 2017 19:55:29 GMT
RUN apt-get update 	&& apt-get install -y postgresql-common 	&& sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf 	&& apt-get install -y 		postgresql-$PG_MAJOR=$PG_VERSION 		postgresql-contrib-$PG_MAJOR=$PG_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Thu, 08 Jun 2017 19:55:31 GMT
RUN mv -v /usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample /usr/share/postgresql/$PG_MAJOR/ 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Thu, 08 Jun 2017 19:55:32 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Thu, 08 Jun 2017 19:55:33 GMT
ENV PATH=/usr/lib/postgresql/9.6/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 08 Jun 2017 19:55:34 GMT
ENV PGDATA=/var/lib/postgresql/data
# Thu, 08 Jun 2017 19:55:35 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Thu, 08 Jun 2017 19:55:36 GMT
VOLUME [/var/lib/postgresql/data]
# Thu, 08 Jun 2017 19:55:37 GMT
COPY file:80a75a207cb3d72777ff2cb8654a6d03754b58aed9199464284f3587637e1403 in /usr/local/bin/ 
# Thu, 08 Jun 2017 19:55:39 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 08 Jun 2017 19:55:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 08 Jun 2017 19:55:41 GMT
EXPOSE 5432/tcp
# Thu, 08 Jun 2017 19:55:41 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:ef0380f84d05d3cdc5a5f660232d35ccb020ccf1d635b585580dea44691a13a7`  
		Last Modified: Wed, 07 Jun 2017 17:58:44 GMT  
		Size: 52.6 MB (52568269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50cf91dc1db82cd63fb612711adebccc0583d55af4150dcf6596673738440357`  
		Last Modified: Thu, 08 Jun 2017 20:14:42 GMT  
		Size: 2.1 KB (2063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3add4cd115cf668465ceeb6a67912fd59c085d818610f1565a36df443d96e92`  
		Last Modified: Thu, 08 Jun 2017 20:14:41 GMT  
		Size: 1.3 MB (1302740 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:467830d8a6162f00d537f9defbc198620cb0f4369cd3c0e4f45270875c9cf1d4`  
		Last Modified: Thu, 08 Jun 2017 20:14:43 GMT  
		Size: 7.1 MB (7112107 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:089b9db7dc57093db23de2e4960e5d3d7043f30e883bf86a830b6c16c0af1e78`  
		Last Modified: Thu, 08 Jun 2017 20:14:40 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fba0a36935c6b3c124af229a9c07f5295c5a95120bd29d2d624ee3e2d2acb73`  
		Last Modified: Thu, 08 Jun 2017 20:14:40 GMT  
		Size: 4.5 KB (4488 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81ef0e73c953be4f9e82356abf87eb190a66d9aed5d87fe701c51d9e9cf2e200`  
		Last Modified: Thu, 08 Jun 2017 20:14:40 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:338a6c4894dc96889c67948c0abc19ac5a4fdf25a0e33c36537b738b2fc79179`  
		Last Modified: Thu, 08 Jun 2017 20:14:51 GMT  
		Size: 43.3 MB (43288288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15853f32f67c90030a074bee671edb13dc08fb778ede7bf9de30cd0b0b95a78b`  
		Last Modified: Thu, 08 Jun 2017 20:14:38 GMT  
		Size: 7.1 KB (7094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:044c83d9289831eb8b7e92c7480fd3e2e21f56dd1533a6486e50864ffe5fee11`  
		Last Modified: Thu, 08 Jun 2017 20:14:38 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17301519f1330b5692fdb55140abd4406450f90407e7acb79d49ea79458007fd`  
		Last Modified: Thu, 08 Jun 2017 20:14:38 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dcca70822752ba5c2428bb33dc059a4bb400dce780f49f3bff7049f330d8156e`  
		Last Modified: Thu, 08 Jun 2017 20:14:38 GMT  
		Size: 1.8 KB (1797 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cecf11b8ccf3e655195e82b4e1f06b0d332609476a595b2d807b8d2b578369aa`  
		Last Modified: Thu, 08 Jun 2017 20:14:38 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9`

```console
$ docker pull postgres@sha256:1364924c753d5ff7e2260cd34dc4ba05ebd40ee8193391220be0f9901d4e1651
```

-	Platforms:
	-	linux; amd64

### `postgres:9` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.3 MB (104287598 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:02d6fa85db7191ca2a141f9bffb96b058c7b9ec6042a8bbe95cc580f3f816457`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 07 Jun 2017 17:32:31 GMT
ADD file:ce4be6f55b1f47cba28efd351c82dd9fa4efd3d29fa0ae365574adb52151dda1 in / 
# Wed, 07 Jun 2017 17:32:32 GMT
CMD ["bash"]
# Thu, 08 Jun 2017 19:53:53 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Thu, 08 Jun 2017 19:53:53 GMT
ENV GOSU_VERSION=1.7
# Thu, 08 Jun 2017 19:54:15 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Thu, 08 Jun 2017 19:54:25 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Thu, 08 Jun 2017 19:54:26 GMT
ENV LANG=en_US.utf8
# Thu, 08 Jun 2017 19:54:27 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 08 Jun 2017 19:54:30 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Thu, 08 Jun 2017 19:54:31 GMT
ENV PG_MAJOR=9.6
# Thu, 08 Jun 2017 19:54:32 GMT
ENV PG_VERSION=9.6.3-1.pgdg80+1
# Thu, 08 Jun 2017 19:54:34 GMT
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main' $PG_MAJOR > /etc/apt/sources.list.d/pgdg.list
# Thu, 08 Jun 2017 19:55:29 GMT
RUN apt-get update 	&& apt-get install -y postgresql-common 	&& sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf 	&& apt-get install -y 		postgresql-$PG_MAJOR=$PG_VERSION 		postgresql-contrib-$PG_MAJOR=$PG_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Thu, 08 Jun 2017 19:55:31 GMT
RUN mv -v /usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample /usr/share/postgresql/$PG_MAJOR/ 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Thu, 08 Jun 2017 19:55:32 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Thu, 08 Jun 2017 19:55:33 GMT
ENV PATH=/usr/lib/postgresql/9.6/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 08 Jun 2017 19:55:34 GMT
ENV PGDATA=/var/lib/postgresql/data
# Thu, 08 Jun 2017 19:55:35 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Thu, 08 Jun 2017 19:55:36 GMT
VOLUME [/var/lib/postgresql/data]
# Thu, 08 Jun 2017 19:55:37 GMT
COPY file:80a75a207cb3d72777ff2cb8654a6d03754b58aed9199464284f3587637e1403 in /usr/local/bin/ 
# Thu, 08 Jun 2017 19:55:39 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 08 Jun 2017 19:55:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 08 Jun 2017 19:55:41 GMT
EXPOSE 5432/tcp
# Thu, 08 Jun 2017 19:55:41 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:ef0380f84d05d3cdc5a5f660232d35ccb020ccf1d635b585580dea44691a13a7`  
		Last Modified: Wed, 07 Jun 2017 17:58:44 GMT  
		Size: 52.6 MB (52568269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50cf91dc1db82cd63fb612711adebccc0583d55af4150dcf6596673738440357`  
		Last Modified: Thu, 08 Jun 2017 20:14:42 GMT  
		Size: 2.1 KB (2063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3add4cd115cf668465ceeb6a67912fd59c085d818610f1565a36df443d96e92`  
		Last Modified: Thu, 08 Jun 2017 20:14:41 GMT  
		Size: 1.3 MB (1302740 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:467830d8a6162f00d537f9defbc198620cb0f4369cd3c0e4f45270875c9cf1d4`  
		Last Modified: Thu, 08 Jun 2017 20:14:43 GMT  
		Size: 7.1 MB (7112107 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:089b9db7dc57093db23de2e4960e5d3d7043f30e883bf86a830b6c16c0af1e78`  
		Last Modified: Thu, 08 Jun 2017 20:14:40 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fba0a36935c6b3c124af229a9c07f5295c5a95120bd29d2d624ee3e2d2acb73`  
		Last Modified: Thu, 08 Jun 2017 20:14:40 GMT  
		Size: 4.5 KB (4488 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81ef0e73c953be4f9e82356abf87eb190a66d9aed5d87fe701c51d9e9cf2e200`  
		Last Modified: Thu, 08 Jun 2017 20:14:40 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:338a6c4894dc96889c67948c0abc19ac5a4fdf25a0e33c36537b738b2fc79179`  
		Last Modified: Thu, 08 Jun 2017 20:14:51 GMT  
		Size: 43.3 MB (43288288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15853f32f67c90030a074bee671edb13dc08fb778ede7bf9de30cd0b0b95a78b`  
		Last Modified: Thu, 08 Jun 2017 20:14:38 GMT  
		Size: 7.1 KB (7094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:044c83d9289831eb8b7e92c7480fd3e2e21f56dd1533a6486e50864ffe5fee11`  
		Last Modified: Thu, 08 Jun 2017 20:14:38 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17301519f1330b5692fdb55140abd4406450f90407e7acb79d49ea79458007fd`  
		Last Modified: Thu, 08 Jun 2017 20:14:38 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dcca70822752ba5c2428bb33dc059a4bb400dce780f49f3bff7049f330d8156e`  
		Last Modified: Thu, 08 Jun 2017 20:14:38 GMT  
		Size: 1.8 KB (1797 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cecf11b8ccf3e655195e82b4e1f06b0d332609476a595b2d807b8d2b578369aa`  
		Last Modified: Thu, 08 Jun 2017 20:14:38 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:latest`

```console
$ docker pull postgres@sha256:1364924c753d5ff7e2260cd34dc4ba05ebd40ee8193391220be0f9901d4e1651
```

-	Platforms:
	-	linux; amd64

### `postgres:latest` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.3 MB (104287598 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:02d6fa85db7191ca2a141f9bffb96b058c7b9ec6042a8bbe95cc580f3f816457`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 07 Jun 2017 17:32:31 GMT
ADD file:ce4be6f55b1f47cba28efd351c82dd9fa4efd3d29fa0ae365574adb52151dda1 in / 
# Wed, 07 Jun 2017 17:32:32 GMT
CMD ["bash"]
# Thu, 08 Jun 2017 19:53:53 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Thu, 08 Jun 2017 19:53:53 GMT
ENV GOSU_VERSION=1.7
# Thu, 08 Jun 2017 19:54:15 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Thu, 08 Jun 2017 19:54:25 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Thu, 08 Jun 2017 19:54:26 GMT
ENV LANG=en_US.utf8
# Thu, 08 Jun 2017 19:54:27 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 08 Jun 2017 19:54:30 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Thu, 08 Jun 2017 19:54:31 GMT
ENV PG_MAJOR=9.6
# Thu, 08 Jun 2017 19:54:32 GMT
ENV PG_VERSION=9.6.3-1.pgdg80+1
# Thu, 08 Jun 2017 19:54:34 GMT
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main' $PG_MAJOR > /etc/apt/sources.list.d/pgdg.list
# Thu, 08 Jun 2017 19:55:29 GMT
RUN apt-get update 	&& apt-get install -y postgresql-common 	&& sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf 	&& apt-get install -y 		postgresql-$PG_MAJOR=$PG_VERSION 		postgresql-contrib-$PG_MAJOR=$PG_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Thu, 08 Jun 2017 19:55:31 GMT
RUN mv -v /usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample /usr/share/postgresql/$PG_MAJOR/ 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Thu, 08 Jun 2017 19:55:32 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Thu, 08 Jun 2017 19:55:33 GMT
ENV PATH=/usr/lib/postgresql/9.6/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 08 Jun 2017 19:55:34 GMT
ENV PGDATA=/var/lib/postgresql/data
# Thu, 08 Jun 2017 19:55:35 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Thu, 08 Jun 2017 19:55:36 GMT
VOLUME [/var/lib/postgresql/data]
# Thu, 08 Jun 2017 19:55:37 GMT
COPY file:80a75a207cb3d72777ff2cb8654a6d03754b58aed9199464284f3587637e1403 in /usr/local/bin/ 
# Thu, 08 Jun 2017 19:55:39 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 08 Jun 2017 19:55:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 08 Jun 2017 19:55:41 GMT
EXPOSE 5432/tcp
# Thu, 08 Jun 2017 19:55:41 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:ef0380f84d05d3cdc5a5f660232d35ccb020ccf1d635b585580dea44691a13a7`  
		Last Modified: Wed, 07 Jun 2017 17:58:44 GMT  
		Size: 52.6 MB (52568269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50cf91dc1db82cd63fb612711adebccc0583d55af4150dcf6596673738440357`  
		Last Modified: Thu, 08 Jun 2017 20:14:42 GMT  
		Size: 2.1 KB (2063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3add4cd115cf668465ceeb6a67912fd59c085d818610f1565a36df443d96e92`  
		Last Modified: Thu, 08 Jun 2017 20:14:41 GMT  
		Size: 1.3 MB (1302740 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:467830d8a6162f00d537f9defbc198620cb0f4369cd3c0e4f45270875c9cf1d4`  
		Last Modified: Thu, 08 Jun 2017 20:14:43 GMT  
		Size: 7.1 MB (7112107 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:089b9db7dc57093db23de2e4960e5d3d7043f30e883bf86a830b6c16c0af1e78`  
		Last Modified: Thu, 08 Jun 2017 20:14:40 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fba0a36935c6b3c124af229a9c07f5295c5a95120bd29d2d624ee3e2d2acb73`  
		Last Modified: Thu, 08 Jun 2017 20:14:40 GMT  
		Size: 4.5 KB (4488 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81ef0e73c953be4f9e82356abf87eb190a66d9aed5d87fe701c51d9e9cf2e200`  
		Last Modified: Thu, 08 Jun 2017 20:14:40 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:338a6c4894dc96889c67948c0abc19ac5a4fdf25a0e33c36537b738b2fc79179`  
		Last Modified: Thu, 08 Jun 2017 20:14:51 GMT  
		Size: 43.3 MB (43288288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15853f32f67c90030a074bee671edb13dc08fb778ede7bf9de30cd0b0b95a78b`  
		Last Modified: Thu, 08 Jun 2017 20:14:38 GMT  
		Size: 7.1 KB (7094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:044c83d9289831eb8b7e92c7480fd3e2e21f56dd1533a6486e50864ffe5fee11`  
		Last Modified: Thu, 08 Jun 2017 20:14:38 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17301519f1330b5692fdb55140abd4406450f90407e7acb79d49ea79458007fd`  
		Last Modified: Thu, 08 Jun 2017 20:14:38 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dcca70822752ba5c2428bb33dc059a4bb400dce780f49f3bff7049f330d8156e`  
		Last Modified: Thu, 08 Jun 2017 20:14:38 GMT  
		Size: 1.8 KB (1797 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cecf11b8ccf3e655195e82b4e1f06b0d332609476a595b2d807b8d2b578369aa`  
		Last Modified: Thu, 08 Jun 2017 20:14:38 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.6.3-alpine`

```console
$ docker pull postgres@sha256:bba118da212cc22f9bc44949a1e712a1649907669d59c638d7dfacc89a88ab53
```

-	Platforms:
	-	linux; amd64

### `postgres:9.6.3-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.7 MB (14713321 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a231460622fb3bf27a4beb61629179156ef564513aa6d9bb802f3ca63a014a76`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Thu, 25 May 2017 23:32:38 GMT
ADD file:df15515197b183747a0b7ccefd75973edc87fc7a5bce30fa10ae94e75928d25c in / 
# Thu, 25 May 2017 23:32:38 GMT
CMD ["/bin/sh"]
# Thu, 08 Jun 2017 19:56:06 GMT
RUN set -ex; 	postgresHome="$(getent passwd postgres)"; 	postgresHome="$(echo "$postgresHome" | cut -d: -f6)"; 	[ "$postgresHome" = '/var/lib/postgresql' ]; 	mkdir -p "$postgresHome"; 	chown -R postgres:postgres "$postgresHome"
# Thu, 08 Jun 2017 19:56:07 GMT
ENV LANG=en_US.utf8
# Thu, 08 Jun 2017 19:56:08 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 08 Jun 2017 19:56:09 GMT
ENV PG_MAJOR=9.6
# Thu, 08 Jun 2017 19:56:10 GMT
ENV PG_VERSION=9.6.3
# Thu, 08 Jun 2017 19:56:11 GMT
ENV PG_SHA256=1645b3736901f6d854e695a937389e68ff2066ce0cde9d73919d6ab7c995b9c6
# Thu, 08 Jun 2017 19:58:36 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl 		util-linux-dev 		zlib-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& wget -O config/config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Thu, 08 Jun 2017 19:58:38 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Thu, 08 Jun 2017 19:58:39 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Thu, 08 Jun 2017 19:58:40 GMT
ENV PATH=/usr/lib/postgresql/9.6/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 08 Jun 2017 19:58:41 GMT
ENV PGDATA=/var/lib/postgresql/data
# Thu, 08 Jun 2017 19:58:42 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Thu, 08 Jun 2017 19:58:43 GMT
VOLUME [/var/lib/postgresql/data]
# Thu, 08 Jun 2017 19:58:44 GMT
COPY file:0db93797e962937881947161a43da7695835a2b6d5ad1184d0886e35249b5e39 in /usr/local/bin/ 
# Thu, 08 Jun 2017 19:58:46 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 08 Jun 2017 19:58:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 08 Jun 2017 19:58:48 GMT
EXPOSE 5432/tcp
# Thu, 08 Jun 2017 19:58:49 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:6f821164d5b7ec94868795c1fb8dc6fd7d1fe51e04f97a6cf3a487868f2f5d68`  
		Last Modified: Thu, 25 May 2017 23:36:24 GMT  
		Size: 2.0 MB (1967927 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7fef033e254dd482aae8e514a9e6cd92d3b70c40b191dfecad08d0163e8486f`  
		Last Modified: Thu, 08 Jun 2017 20:16:36 GMT  
		Size: 142.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:066e5b16f28cfabf384f05b8758d01407cef2970bbfc491b1aedf8fb40929769`  
		Last Modified: Thu, 08 Jun 2017 20:16:36 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47f606a8cdf0e0d3aff443116f2f448be3769e89b60d5386ec8bed051ff333fa`  
		Last Modified: Thu, 08 Jun 2017 20:16:40 GMT  
		Size: 12.7 MB (12735864 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af149fccf4347cde9c82e533605847c0abeacd34ddbc357591f6e3f099aeb3d7`  
		Last Modified: Thu, 08 Jun 2017 20:16:34 GMT  
		Size: 7.1 KB (7057 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41347a03030eaf186041274b188ac2054123d73d803dee7af6982a87cd7925df`  
		Last Modified: Thu, 08 Jun 2017 20:16:34 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db13a67c9a09bd62db50c26cba6cb6cf41b3495d986fb19d25936f031a252f65`  
		Last Modified: Thu, 08 Jun 2017 20:16:35 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97f37de910081f2e628079f1a879893ccdf746d06298ba5143f115503e7fdafc`  
		Last Modified: Thu, 08 Jun 2017 20:16:34 GMT  
		Size: 1.8 KB (1788 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65431032f23676c62e1d6791184e6dda412fc99cb82a819fa86685337e62c0f2`  
		Last Modified: Thu, 08 Jun 2017 20:16:34 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.6-alpine`

```console
$ docker pull postgres@sha256:bba118da212cc22f9bc44949a1e712a1649907669d59c638d7dfacc89a88ab53
```

-	Platforms:
	-	linux; amd64

### `postgres:9.6-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.7 MB (14713321 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a231460622fb3bf27a4beb61629179156ef564513aa6d9bb802f3ca63a014a76`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Thu, 25 May 2017 23:32:38 GMT
ADD file:df15515197b183747a0b7ccefd75973edc87fc7a5bce30fa10ae94e75928d25c in / 
# Thu, 25 May 2017 23:32:38 GMT
CMD ["/bin/sh"]
# Thu, 08 Jun 2017 19:56:06 GMT
RUN set -ex; 	postgresHome="$(getent passwd postgres)"; 	postgresHome="$(echo "$postgresHome" | cut -d: -f6)"; 	[ "$postgresHome" = '/var/lib/postgresql' ]; 	mkdir -p "$postgresHome"; 	chown -R postgres:postgres "$postgresHome"
# Thu, 08 Jun 2017 19:56:07 GMT
ENV LANG=en_US.utf8
# Thu, 08 Jun 2017 19:56:08 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 08 Jun 2017 19:56:09 GMT
ENV PG_MAJOR=9.6
# Thu, 08 Jun 2017 19:56:10 GMT
ENV PG_VERSION=9.6.3
# Thu, 08 Jun 2017 19:56:11 GMT
ENV PG_SHA256=1645b3736901f6d854e695a937389e68ff2066ce0cde9d73919d6ab7c995b9c6
# Thu, 08 Jun 2017 19:58:36 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl 		util-linux-dev 		zlib-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& wget -O config/config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Thu, 08 Jun 2017 19:58:38 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Thu, 08 Jun 2017 19:58:39 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Thu, 08 Jun 2017 19:58:40 GMT
ENV PATH=/usr/lib/postgresql/9.6/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 08 Jun 2017 19:58:41 GMT
ENV PGDATA=/var/lib/postgresql/data
# Thu, 08 Jun 2017 19:58:42 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Thu, 08 Jun 2017 19:58:43 GMT
VOLUME [/var/lib/postgresql/data]
# Thu, 08 Jun 2017 19:58:44 GMT
COPY file:0db93797e962937881947161a43da7695835a2b6d5ad1184d0886e35249b5e39 in /usr/local/bin/ 
# Thu, 08 Jun 2017 19:58:46 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 08 Jun 2017 19:58:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 08 Jun 2017 19:58:48 GMT
EXPOSE 5432/tcp
# Thu, 08 Jun 2017 19:58:49 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:6f821164d5b7ec94868795c1fb8dc6fd7d1fe51e04f97a6cf3a487868f2f5d68`  
		Last Modified: Thu, 25 May 2017 23:36:24 GMT  
		Size: 2.0 MB (1967927 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7fef033e254dd482aae8e514a9e6cd92d3b70c40b191dfecad08d0163e8486f`  
		Last Modified: Thu, 08 Jun 2017 20:16:36 GMT  
		Size: 142.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:066e5b16f28cfabf384f05b8758d01407cef2970bbfc491b1aedf8fb40929769`  
		Last Modified: Thu, 08 Jun 2017 20:16:36 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47f606a8cdf0e0d3aff443116f2f448be3769e89b60d5386ec8bed051ff333fa`  
		Last Modified: Thu, 08 Jun 2017 20:16:40 GMT  
		Size: 12.7 MB (12735864 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af149fccf4347cde9c82e533605847c0abeacd34ddbc357591f6e3f099aeb3d7`  
		Last Modified: Thu, 08 Jun 2017 20:16:34 GMT  
		Size: 7.1 KB (7057 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41347a03030eaf186041274b188ac2054123d73d803dee7af6982a87cd7925df`  
		Last Modified: Thu, 08 Jun 2017 20:16:34 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db13a67c9a09bd62db50c26cba6cb6cf41b3495d986fb19d25936f031a252f65`  
		Last Modified: Thu, 08 Jun 2017 20:16:35 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97f37de910081f2e628079f1a879893ccdf746d06298ba5143f115503e7fdafc`  
		Last Modified: Thu, 08 Jun 2017 20:16:34 GMT  
		Size: 1.8 KB (1788 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65431032f23676c62e1d6791184e6dda412fc99cb82a819fa86685337e62c0f2`  
		Last Modified: Thu, 08 Jun 2017 20:16:34 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9-alpine`

```console
$ docker pull postgres@sha256:bba118da212cc22f9bc44949a1e712a1649907669d59c638d7dfacc89a88ab53
```

-	Platforms:
	-	linux; amd64

### `postgres:9-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.7 MB (14713321 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a231460622fb3bf27a4beb61629179156ef564513aa6d9bb802f3ca63a014a76`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Thu, 25 May 2017 23:32:38 GMT
ADD file:df15515197b183747a0b7ccefd75973edc87fc7a5bce30fa10ae94e75928d25c in / 
# Thu, 25 May 2017 23:32:38 GMT
CMD ["/bin/sh"]
# Thu, 08 Jun 2017 19:56:06 GMT
RUN set -ex; 	postgresHome="$(getent passwd postgres)"; 	postgresHome="$(echo "$postgresHome" | cut -d: -f6)"; 	[ "$postgresHome" = '/var/lib/postgresql' ]; 	mkdir -p "$postgresHome"; 	chown -R postgres:postgres "$postgresHome"
# Thu, 08 Jun 2017 19:56:07 GMT
ENV LANG=en_US.utf8
# Thu, 08 Jun 2017 19:56:08 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 08 Jun 2017 19:56:09 GMT
ENV PG_MAJOR=9.6
# Thu, 08 Jun 2017 19:56:10 GMT
ENV PG_VERSION=9.6.3
# Thu, 08 Jun 2017 19:56:11 GMT
ENV PG_SHA256=1645b3736901f6d854e695a937389e68ff2066ce0cde9d73919d6ab7c995b9c6
# Thu, 08 Jun 2017 19:58:36 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl 		util-linux-dev 		zlib-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& wget -O config/config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Thu, 08 Jun 2017 19:58:38 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Thu, 08 Jun 2017 19:58:39 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Thu, 08 Jun 2017 19:58:40 GMT
ENV PATH=/usr/lib/postgresql/9.6/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 08 Jun 2017 19:58:41 GMT
ENV PGDATA=/var/lib/postgresql/data
# Thu, 08 Jun 2017 19:58:42 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Thu, 08 Jun 2017 19:58:43 GMT
VOLUME [/var/lib/postgresql/data]
# Thu, 08 Jun 2017 19:58:44 GMT
COPY file:0db93797e962937881947161a43da7695835a2b6d5ad1184d0886e35249b5e39 in /usr/local/bin/ 
# Thu, 08 Jun 2017 19:58:46 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 08 Jun 2017 19:58:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 08 Jun 2017 19:58:48 GMT
EXPOSE 5432/tcp
# Thu, 08 Jun 2017 19:58:49 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:6f821164d5b7ec94868795c1fb8dc6fd7d1fe51e04f97a6cf3a487868f2f5d68`  
		Last Modified: Thu, 25 May 2017 23:36:24 GMT  
		Size: 2.0 MB (1967927 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7fef033e254dd482aae8e514a9e6cd92d3b70c40b191dfecad08d0163e8486f`  
		Last Modified: Thu, 08 Jun 2017 20:16:36 GMT  
		Size: 142.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:066e5b16f28cfabf384f05b8758d01407cef2970bbfc491b1aedf8fb40929769`  
		Last Modified: Thu, 08 Jun 2017 20:16:36 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47f606a8cdf0e0d3aff443116f2f448be3769e89b60d5386ec8bed051ff333fa`  
		Last Modified: Thu, 08 Jun 2017 20:16:40 GMT  
		Size: 12.7 MB (12735864 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af149fccf4347cde9c82e533605847c0abeacd34ddbc357591f6e3f099aeb3d7`  
		Last Modified: Thu, 08 Jun 2017 20:16:34 GMT  
		Size: 7.1 KB (7057 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41347a03030eaf186041274b188ac2054123d73d803dee7af6982a87cd7925df`  
		Last Modified: Thu, 08 Jun 2017 20:16:34 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db13a67c9a09bd62db50c26cba6cb6cf41b3495d986fb19d25936f031a252f65`  
		Last Modified: Thu, 08 Jun 2017 20:16:35 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97f37de910081f2e628079f1a879893ccdf746d06298ba5143f115503e7fdafc`  
		Last Modified: Thu, 08 Jun 2017 20:16:34 GMT  
		Size: 1.8 KB (1788 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65431032f23676c62e1d6791184e6dda412fc99cb82a819fa86685337e62c0f2`  
		Last Modified: Thu, 08 Jun 2017 20:16:34 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:alpine`

```console
$ docker pull postgres@sha256:bba118da212cc22f9bc44949a1e712a1649907669d59c638d7dfacc89a88ab53
```

-	Platforms:
	-	linux; amd64

### `postgres:alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.7 MB (14713321 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a231460622fb3bf27a4beb61629179156ef564513aa6d9bb802f3ca63a014a76`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Thu, 25 May 2017 23:32:38 GMT
ADD file:df15515197b183747a0b7ccefd75973edc87fc7a5bce30fa10ae94e75928d25c in / 
# Thu, 25 May 2017 23:32:38 GMT
CMD ["/bin/sh"]
# Thu, 08 Jun 2017 19:56:06 GMT
RUN set -ex; 	postgresHome="$(getent passwd postgres)"; 	postgresHome="$(echo "$postgresHome" | cut -d: -f6)"; 	[ "$postgresHome" = '/var/lib/postgresql' ]; 	mkdir -p "$postgresHome"; 	chown -R postgres:postgres "$postgresHome"
# Thu, 08 Jun 2017 19:56:07 GMT
ENV LANG=en_US.utf8
# Thu, 08 Jun 2017 19:56:08 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 08 Jun 2017 19:56:09 GMT
ENV PG_MAJOR=9.6
# Thu, 08 Jun 2017 19:56:10 GMT
ENV PG_VERSION=9.6.3
# Thu, 08 Jun 2017 19:56:11 GMT
ENV PG_SHA256=1645b3736901f6d854e695a937389e68ff2066ce0cde9d73919d6ab7c995b9c6
# Thu, 08 Jun 2017 19:58:36 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl 		util-linux-dev 		zlib-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& wget -O config/config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Thu, 08 Jun 2017 19:58:38 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Thu, 08 Jun 2017 19:58:39 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Thu, 08 Jun 2017 19:58:40 GMT
ENV PATH=/usr/lib/postgresql/9.6/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 08 Jun 2017 19:58:41 GMT
ENV PGDATA=/var/lib/postgresql/data
# Thu, 08 Jun 2017 19:58:42 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Thu, 08 Jun 2017 19:58:43 GMT
VOLUME [/var/lib/postgresql/data]
# Thu, 08 Jun 2017 19:58:44 GMT
COPY file:0db93797e962937881947161a43da7695835a2b6d5ad1184d0886e35249b5e39 in /usr/local/bin/ 
# Thu, 08 Jun 2017 19:58:46 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 08 Jun 2017 19:58:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 08 Jun 2017 19:58:48 GMT
EXPOSE 5432/tcp
# Thu, 08 Jun 2017 19:58:49 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:6f821164d5b7ec94868795c1fb8dc6fd7d1fe51e04f97a6cf3a487868f2f5d68`  
		Last Modified: Thu, 25 May 2017 23:36:24 GMT  
		Size: 2.0 MB (1967927 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7fef033e254dd482aae8e514a9e6cd92d3b70c40b191dfecad08d0163e8486f`  
		Last Modified: Thu, 08 Jun 2017 20:16:36 GMT  
		Size: 142.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:066e5b16f28cfabf384f05b8758d01407cef2970bbfc491b1aedf8fb40929769`  
		Last Modified: Thu, 08 Jun 2017 20:16:36 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47f606a8cdf0e0d3aff443116f2f448be3769e89b60d5386ec8bed051ff333fa`  
		Last Modified: Thu, 08 Jun 2017 20:16:40 GMT  
		Size: 12.7 MB (12735864 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af149fccf4347cde9c82e533605847c0abeacd34ddbc357591f6e3f099aeb3d7`  
		Last Modified: Thu, 08 Jun 2017 20:16:34 GMT  
		Size: 7.1 KB (7057 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41347a03030eaf186041274b188ac2054123d73d803dee7af6982a87cd7925df`  
		Last Modified: Thu, 08 Jun 2017 20:16:34 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db13a67c9a09bd62db50c26cba6cb6cf41b3495d986fb19d25936f031a252f65`  
		Last Modified: Thu, 08 Jun 2017 20:16:35 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97f37de910081f2e628079f1a879893ccdf746d06298ba5143f115503e7fdafc`  
		Last Modified: Thu, 08 Jun 2017 20:16:34 GMT  
		Size: 1.8 KB (1788 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65431032f23676c62e1d6791184e6dda412fc99cb82a819fa86685337e62c0f2`  
		Last Modified: Thu, 08 Jun 2017 20:16:34 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.5.7`

```console
$ docker pull postgres@sha256:3bb12fbf584bc43081a1d7b3a1ff4d35c107b4c854988fb644b26ac28ce6b645
```

-	Platforms:
	-	linux; amd64

### `postgres:9.5.7` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **103.8 MB (103789158 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:12fc1e16ceab140f03246eff2dc39251eaf7b4d45ac598f86aaf795e6a68e70d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 07 Jun 2017 17:32:31 GMT
ADD file:ce4be6f55b1f47cba28efd351c82dd9fa4efd3d29fa0ae365574adb52151dda1 in / 
# Wed, 07 Jun 2017 17:32:32 GMT
CMD ["bash"]
# Thu, 08 Jun 2017 19:53:53 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Thu, 08 Jun 2017 19:53:53 GMT
ENV GOSU_VERSION=1.7
# Thu, 08 Jun 2017 19:54:15 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Thu, 08 Jun 2017 19:54:25 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Thu, 08 Jun 2017 19:54:26 GMT
ENV LANG=en_US.utf8
# Thu, 08 Jun 2017 19:54:27 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 08 Jun 2017 19:54:30 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Thu, 08 Jun 2017 19:59:13 GMT
ENV PG_MAJOR=9.5
# Thu, 08 Jun 2017 19:59:14 GMT
ENV PG_VERSION=9.5.7-1.pgdg80+1
# Thu, 08 Jun 2017 19:59:16 GMT
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main' $PG_MAJOR > /etc/apt/sources.list.d/pgdg.list
# Thu, 08 Jun 2017 19:59:45 GMT
RUN apt-get update 	&& apt-get install -y postgresql-common 	&& sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf 	&& apt-get install -y 		postgresql-$PG_MAJOR=$PG_VERSION 		postgresql-contrib-$PG_MAJOR=$PG_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Thu, 08 Jun 2017 19:59:47 GMT
RUN mv -v /usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample /usr/share/postgresql/$PG_MAJOR/ 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Thu, 08 Jun 2017 19:59:48 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Thu, 08 Jun 2017 19:59:49 GMT
ENV PATH=/usr/lib/postgresql/9.5/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 08 Jun 2017 19:59:50 GMT
ENV PGDATA=/var/lib/postgresql/data
# Thu, 08 Jun 2017 19:59:52 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Thu, 08 Jun 2017 19:59:53 GMT
VOLUME [/var/lib/postgresql/data]
# Thu, 08 Jun 2017 19:59:54 GMT
COPY file:80a75a207cb3d72777ff2cb8654a6d03754b58aed9199464284f3587637e1403 in /usr/local/bin/ 
# Thu, 08 Jun 2017 19:59:55 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 08 Jun 2017 19:59:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 08 Jun 2017 19:59:57 GMT
EXPOSE 5432/tcp
# Thu, 08 Jun 2017 19:59:57 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:ef0380f84d05d3cdc5a5f660232d35ccb020ccf1d635b585580dea44691a13a7`  
		Last Modified: Wed, 07 Jun 2017 17:58:44 GMT  
		Size: 52.6 MB (52568269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50cf91dc1db82cd63fb612711adebccc0583d55af4150dcf6596673738440357`  
		Last Modified: Thu, 08 Jun 2017 20:14:42 GMT  
		Size: 2.1 KB (2063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3add4cd115cf668465ceeb6a67912fd59c085d818610f1565a36df443d96e92`  
		Last Modified: Thu, 08 Jun 2017 20:14:41 GMT  
		Size: 1.3 MB (1302740 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:467830d8a6162f00d537f9defbc198620cb0f4369cd3c0e4f45270875c9cf1d4`  
		Last Modified: Thu, 08 Jun 2017 20:14:43 GMT  
		Size: 7.1 MB (7112107 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:089b9db7dc57093db23de2e4960e5d3d7043f30e883bf86a830b6c16c0af1e78`  
		Last Modified: Thu, 08 Jun 2017 20:14:40 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fba0a36935c6b3c124af229a9c07f5295c5a95120bd29d2d624ee3e2d2acb73`  
		Last Modified: Thu, 08 Jun 2017 20:14:40 GMT  
		Size: 4.5 KB (4488 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72e310e5ef15d870abf32a53f4b1a063e5d49deee946c5e4dd6d133a2e5c9421`  
		Last Modified: Thu, 08 Jun 2017 20:18:22 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2420dffb2c427bd9f085e536f32d8a8af9279db3c6f0e26e3b71290adb5a389`  
		Last Modified: Thu, 08 Jun 2017 20:18:32 GMT  
		Size: 42.8 MB (42790124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:529c092b9a8476eaaf018e2c71db8ce81955e54b10a1af215d71d6c973094fd6`  
		Last Modified: Thu, 08 Jun 2017 20:18:19 GMT  
		Size: 6.8 KB (6820 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34cef0537406b9cf066930956f5fbf98e4eaadcb267f37abedd39b7c6d483f39`  
		Last Modified: Thu, 08 Jun 2017 20:18:20 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aca1d13e16983de335151cdda1bb4565ba34081693f5f32cb5a2a9640f06c020`  
		Last Modified: Thu, 08 Jun 2017 20:18:19 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34b53f0912372b719237cca41ec930e64e23025a930a9d7be2f79ea6311f5dd9`  
		Last Modified: Thu, 08 Jun 2017 20:18:20 GMT  
		Size: 1.8 KB (1794 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41bfca8f59b61c19f0047c0a3f345121c8584785c59804a81c3742c602d14bff`  
		Last Modified: Thu, 08 Jun 2017 20:18:20 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.5`

```console
$ docker pull postgres@sha256:3bb12fbf584bc43081a1d7b3a1ff4d35c107b4c854988fb644b26ac28ce6b645
```

-	Platforms:
	-	linux; amd64

### `postgres:9.5` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **103.8 MB (103789158 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:12fc1e16ceab140f03246eff2dc39251eaf7b4d45ac598f86aaf795e6a68e70d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 07 Jun 2017 17:32:31 GMT
ADD file:ce4be6f55b1f47cba28efd351c82dd9fa4efd3d29fa0ae365574adb52151dda1 in / 
# Wed, 07 Jun 2017 17:32:32 GMT
CMD ["bash"]
# Thu, 08 Jun 2017 19:53:53 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Thu, 08 Jun 2017 19:53:53 GMT
ENV GOSU_VERSION=1.7
# Thu, 08 Jun 2017 19:54:15 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Thu, 08 Jun 2017 19:54:25 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Thu, 08 Jun 2017 19:54:26 GMT
ENV LANG=en_US.utf8
# Thu, 08 Jun 2017 19:54:27 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 08 Jun 2017 19:54:30 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Thu, 08 Jun 2017 19:59:13 GMT
ENV PG_MAJOR=9.5
# Thu, 08 Jun 2017 19:59:14 GMT
ENV PG_VERSION=9.5.7-1.pgdg80+1
# Thu, 08 Jun 2017 19:59:16 GMT
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main' $PG_MAJOR > /etc/apt/sources.list.d/pgdg.list
# Thu, 08 Jun 2017 19:59:45 GMT
RUN apt-get update 	&& apt-get install -y postgresql-common 	&& sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf 	&& apt-get install -y 		postgresql-$PG_MAJOR=$PG_VERSION 		postgresql-contrib-$PG_MAJOR=$PG_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Thu, 08 Jun 2017 19:59:47 GMT
RUN mv -v /usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample /usr/share/postgresql/$PG_MAJOR/ 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Thu, 08 Jun 2017 19:59:48 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Thu, 08 Jun 2017 19:59:49 GMT
ENV PATH=/usr/lib/postgresql/9.5/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 08 Jun 2017 19:59:50 GMT
ENV PGDATA=/var/lib/postgresql/data
# Thu, 08 Jun 2017 19:59:52 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Thu, 08 Jun 2017 19:59:53 GMT
VOLUME [/var/lib/postgresql/data]
# Thu, 08 Jun 2017 19:59:54 GMT
COPY file:80a75a207cb3d72777ff2cb8654a6d03754b58aed9199464284f3587637e1403 in /usr/local/bin/ 
# Thu, 08 Jun 2017 19:59:55 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 08 Jun 2017 19:59:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 08 Jun 2017 19:59:57 GMT
EXPOSE 5432/tcp
# Thu, 08 Jun 2017 19:59:57 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:ef0380f84d05d3cdc5a5f660232d35ccb020ccf1d635b585580dea44691a13a7`  
		Last Modified: Wed, 07 Jun 2017 17:58:44 GMT  
		Size: 52.6 MB (52568269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50cf91dc1db82cd63fb612711adebccc0583d55af4150dcf6596673738440357`  
		Last Modified: Thu, 08 Jun 2017 20:14:42 GMT  
		Size: 2.1 KB (2063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3add4cd115cf668465ceeb6a67912fd59c085d818610f1565a36df443d96e92`  
		Last Modified: Thu, 08 Jun 2017 20:14:41 GMT  
		Size: 1.3 MB (1302740 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:467830d8a6162f00d537f9defbc198620cb0f4369cd3c0e4f45270875c9cf1d4`  
		Last Modified: Thu, 08 Jun 2017 20:14:43 GMT  
		Size: 7.1 MB (7112107 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:089b9db7dc57093db23de2e4960e5d3d7043f30e883bf86a830b6c16c0af1e78`  
		Last Modified: Thu, 08 Jun 2017 20:14:40 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fba0a36935c6b3c124af229a9c07f5295c5a95120bd29d2d624ee3e2d2acb73`  
		Last Modified: Thu, 08 Jun 2017 20:14:40 GMT  
		Size: 4.5 KB (4488 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72e310e5ef15d870abf32a53f4b1a063e5d49deee946c5e4dd6d133a2e5c9421`  
		Last Modified: Thu, 08 Jun 2017 20:18:22 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2420dffb2c427bd9f085e536f32d8a8af9279db3c6f0e26e3b71290adb5a389`  
		Last Modified: Thu, 08 Jun 2017 20:18:32 GMT  
		Size: 42.8 MB (42790124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:529c092b9a8476eaaf018e2c71db8ce81955e54b10a1af215d71d6c973094fd6`  
		Last Modified: Thu, 08 Jun 2017 20:18:19 GMT  
		Size: 6.8 KB (6820 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34cef0537406b9cf066930956f5fbf98e4eaadcb267f37abedd39b7c6d483f39`  
		Last Modified: Thu, 08 Jun 2017 20:18:20 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aca1d13e16983de335151cdda1bb4565ba34081693f5f32cb5a2a9640f06c020`  
		Last Modified: Thu, 08 Jun 2017 20:18:19 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34b53f0912372b719237cca41ec930e64e23025a930a9d7be2f79ea6311f5dd9`  
		Last Modified: Thu, 08 Jun 2017 20:18:20 GMT  
		Size: 1.8 KB (1794 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41bfca8f59b61c19f0047c0a3f345121c8584785c59804a81c3742c602d14bff`  
		Last Modified: Thu, 08 Jun 2017 20:18:20 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.5.7-alpine`

```console
$ docker pull postgres@sha256:c59300f02253a6e96581108d847a3d17291715c6e12ad819a3e00265a7882b70
```

-	Platforms:
	-	linux; amd64

### `postgres:9.5.7-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.4 MB (14424775 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f5ea5adbadc8b9e8a32d97d7633ce452640ef33886a9fe5c03018a61740a9dc4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Thu, 25 May 2017 23:32:38 GMT
ADD file:df15515197b183747a0b7ccefd75973edc87fc7a5bce30fa10ae94e75928d25c in / 
# Thu, 25 May 2017 23:32:38 GMT
CMD ["/bin/sh"]
# Thu, 08 Jun 2017 19:56:06 GMT
RUN set -ex; 	postgresHome="$(getent passwd postgres)"; 	postgresHome="$(echo "$postgresHome" | cut -d: -f6)"; 	[ "$postgresHome" = '/var/lib/postgresql' ]; 	mkdir -p "$postgresHome"; 	chown -R postgres:postgres "$postgresHome"
# Thu, 08 Jun 2017 19:56:07 GMT
ENV LANG=en_US.utf8
# Thu, 08 Jun 2017 19:56:08 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 08 Jun 2017 20:00:21 GMT
ENV PG_MAJOR=9.5
# Thu, 08 Jun 2017 20:00:22 GMT
ENV PG_VERSION=9.5.7
# Thu, 08 Jun 2017 20:00:22 GMT
ENV PG_SHA256=8b1e936f82109325decc0f5575e846b93fb4fd384e8c4bde83ff5e7f87fc6cad
# Thu, 08 Jun 2017 20:02:28 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl 		util-linux-dev 		zlib-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& wget -O config/config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Thu, 08 Jun 2017 20:02:30 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Thu, 08 Jun 2017 20:02:32 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Thu, 08 Jun 2017 20:02:32 GMT
ENV PATH=/usr/lib/postgresql/9.5/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 08 Jun 2017 20:02:33 GMT
ENV PGDATA=/var/lib/postgresql/data
# Thu, 08 Jun 2017 20:02:35 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Thu, 08 Jun 2017 20:02:36 GMT
VOLUME [/var/lib/postgresql/data]
# Thu, 08 Jun 2017 20:02:37 GMT
COPY file:0db93797e962937881947161a43da7695835a2b6d5ad1184d0886e35249b5e39 in /usr/local/bin/ 
# Thu, 08 Jun 2017 20:02:38 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 08 Jun 2017 20:02:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 08 Jun 2017 20:02:40 GMT
EXPOSE 5432/tcp
# Thu, 08 Jun 2017 20:02:41 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:6f821164d5b7ec94868795c1fb8dc6fd7d1fe51e04f97a6cf3a487868f2f5d68`  
		Last Modified: Thu, 25 May 2017 23:36:24 GMT  
		Size: 2.0 MB (1967927 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7fef033e254dd482aae8e514a9e6cd92d3b70c40b191dfecad08d0163e8486f`  
		Last Modified: Thu, 08 Jun 2017 20:16:36 GMT  
		Size: 142.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:066e5b16f28cfabf384f05b8758d01407cef2970bbfc491b1aedf8fb40929769`  
		Last Modified: Thu, 08 Jun 2017 20:16:36 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8ef81d62022732ca050583872e2fdc3f0db6cafdcdbaca8185428902333760e`  
		Last Modified: Thu, 08 Jun 2017 20:19:32 GMT  
		Size: 12.4 MB (12447590 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b70258d9ab1cf77f5ad41c782067b83e6dd9390dbf069412e98e95b6c926d764`  
		Last Modified: Thu, 08 Jun 2017 20:19:28 GMT  
		Size: 6.8 KB (6788 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6785098d7361606817df4b085ff4e549f44cb04d23c3828b87e4a189f9c643d`  
		Last Modified: Thu, 08 Jun 2017 20:19:27 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff9908698eee74053fcb321db524107c91b599e222fa1a813f39b61ed69d6330`  
		Last Modified: Thu, 08 Jun 2017 20:19:28 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a070fd2e915292711305ca4c9ef7bf57b403219a99161ff211c1861e4b4f96e`  
		Last Modified: Thu, 08 Jun 2017 20:19:28 GMT  
		Size: 1.8 KB (1785 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13310be2ffeeebf6b2217bd05090441d4e5f8ca9d04a75f26603295de8eaf7c3`  
		Last Modified: Thu, 08 Jun 2017 20:19:28 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.5-alpine`

```console
$ docker pull postgres@sha256:c59300f02253a6e96581108d847a3d17291715c6e12ad819a3e00265a7882b70
```

-	Platforms:
	-	linux; amd64

### `postgres:9.5-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.4 MB (14424775 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f5ea5adbadc8b9e8a32d97d7633ce452640ef33886a9fe5c03018a61740a9dc4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Thu, 25 May 2017 23:32:38 GMT
ADD file:df15515197b183747a0b7ccefd75973edc87fc7a5bce30fa10ae94e75928d25c in / 
# Thu, 25 May 2017 23:32:38 GMT
CMD ["/bin/sh"]
# Thu, 08 Jun 2017 19:56:06 GMT
RUN set -ex; 	postgresHome="$(getent passwd postgres)"; 	postgresHome="$(echo "$postgresHome" | cut -d: -f6)"; 	[ "$postgresHome" = '/var/lib/postgresql' ]; 	mkdir -p "$postgresHome"; 	chown -R postgres:postgres "$postgresHome"
# Thu, 08 Jun 2017 19:56:07 GMT
ENV LANG=en_US.utf8
# Thu, 08 Jun 2017 19:56:08 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 08 Jun 2017 20:00:21 GMT
ENV PG_MAJOR=9.5
# Thu, 08 Jun 2017 20:00:22 GMT
ENV PG_VERSION=9.5.7
# Thu, 08 Jun 2017 20:00:22 GMT
ENV PG_SHA256=8b1e936f82109325decc0f5575e846b93fb4fd384e8c4bde83ff5e7f87fc6cad
# Thu, 08 Jun 2017 20:02:28 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl 		util-linux-dev 		zlib-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& wget -O config/config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Thu, 08 Jun 2017 20:02:30 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Thu, 08 Jun 2017 20:02:32 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Thu, 08 Jun 2017 20:02:32 GMT
ENV PATH=/usr/lib/postgresql/9.5/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 08 Jun 2017 20:02:33 GMT
ENV PGDATA=/var/lib/postgresql/data
# Thu, 08 Jun 2017 20:02:35 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Thu, 08 Jun 2017 20:02:36 GMT
VOLUME [/var/lib/postgresql/data]
# Thu, 08 Jun 2017 20:02:37 GMT
COPY file:0db93797e962937881947161a43da7695835a2b6d5ad1184d0886e35249b5e39 in /usr/local/bin/ 
# Thu, 08 Jun 2017 20:02:38 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 08 Jun 2017 20:02:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 08 Jun 2017 20:02:40 GMT
EXPOSE 5432/tcp
# Thu, 08 Jun 2017 20:02:41 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:6f821164d5b7ec94868795c1fb8dc6fd7d1fe51e04f97a6cf3a487868f2f5d68`  
		Last Modified: Thu, 25 May 2017 23:36:24 GMT  
		Size: 2.0 MB (1967927 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7fef033e254dd482aae8e514a9e6cd92d3b70c40b191dfecad08d0163e8486f`  
		Last Modified: Thu, 08 Jun 2017 20:16:36 GMT  
		Size: 142.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:066e5b16f28cfabf384f05b8758d01407cef2970bbfc491b1aedf8fb40929769`  
		Last Modified: Thu, 08 Jun 2017 20:16:36 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8ef81d62022732ca050583872e2fdc3f0db6cafdcdbaca8185428902333760e`  
		Last Modified: Thu, 08 Jun 2017 20:19:32 GMT  
		Size: 12.4 MB (12447590 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b70258d9ab1cf77f5ad41c782067b83e6dd9390dbf069412e98e95b6c926d764`  
		Last Modified: Thu, 08 Jun 2017 20:19:28 GMT  
		Size: 6.8 KB (6788 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6785098d7361606817df4b085ff4e549f44cb04d23c3828b87e4a189f9c643d`  
		Last Modified: Thu, 08 Jun 2017 20:19:27 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff9908698eee74053fcb321db524107c91b599e222fa1a813f39b61ed69d6330`  
		Last Modified: Thu, 08 Jun 2017 20:19:28 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a070fd2e915292711305ca4c9ef7bf57b403219a99161ff211c1861e4b4f96e`  
		Last Modified: Thu, 08 Jun 2017 20:19:28 GMT  
		Size: 1.8 KB (1785 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13310be2ffeeebf6b2217bd05090441d4e5f8ca9d04a75f26603295de8eaf7c3`  
		Last Modified: Thu, 08 Jun 2017 20:19:28 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.4.12`

```console
$ docker pull postgres@sha256:39696b28577201ff1d4af8d47020abfa5db193f2b75aa57db0c13b26482918d7
```

-	Platforms:
	-	linux; amd64

### `postgres:9.4.12` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **103.5 MB (103456355 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:754a62a2351fe7d40ca2e0e255547d3828f4696e8298f5535c149635c8db5bc3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 07 Jun 2017 17:32:31 GMT
ADD file:ce4be6f55b1f47cba28efd351c82dd9fa4efd3d29fa0ae365574adb52151dda1 in / 
# Wed, 07 Jun 2017 17:32:32 GMT
CMD ["bash"]
# Thu, 08 Jun 2017 19:53:53 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Thu, 08 Jun 2017 19:53:53 GMT
ENV GOSU_VERSION=1.7
# Thu, 08 Jun 2017 19:54:15 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Thu, 08 Jun 2017 19:54:25 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Thu, 08 Jun 2017 19:54:26 GMT
ENV LANG=en_US.utf8
# Thu, 08 Jun 2017 19:54:27 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 08 Jun 2017 19:54:30 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Thu, 08 Jun 2017 20:03:05 GMT
ENV PG_MAJOR=9.4
# Thu, 08 Jun 2017 20:03:05 GMT
ENV PG_VERSION=9.4.12-1.pgdg80+1
# Thu, 08 Jun 2017 20:03:07 GMT
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main' $PG_MAJOR > /etc/apt/sources.list.d/pgdg.list
# Thu, 08 Jun 2017 20:03:36 GMT
RUN apt-get update 	&& apt-get install -y postgresql-common 	&& sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf 	&& apt-get install -y 		postgresql-$PG_MAJOR=$PG_VERSION 		postgresql-contrib-$PG_MAJOR=$PG_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Thu, 08 Jun 2017 20:03:38 GMT
RUN mv -v /usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample /usr/share/postgresql/$PG_MAJOR/ 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Thu, 08 Jun 2017 20:03:40 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Thu, 08 Jun 2017 20:03:40 GMT
ENV PATH=/usr/lib/postgresql/9.4/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 08 Jun 2017 20:03:41 GMT
ENV PGDATA=/var/lib/postgresql/data
# Thu, 08 Jun 2017 20:03:43 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Thu, 08 Jun 2017 20:03:44 GMT
VOLUME [/var/lib/postgresql/data]
# Thu, 08 Jun 2017 20:03:45 GMT
COPY file:80a75a207cb3d72777ff2cb8654a6d03754b58aed9199464284f3587637e1403 in /usr/local/bin/ 
# Thu, 08 Jun 2017 20:03:46 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 08 Jun 2017 20:03:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 08 Jun 2017 20:03:48 GMT
EXPOSE 5432/tcp
# Thu, 08 Jun 2017 20:03:49 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:ef0380f84d05d3cdc5a5f660232d35ccb020ccf1d635b585580dea44691a13a7`  
		Last Modified: Wed, 07 Jun 2017 17:58:44 GMT  
		Size: 52.6 MB (52568269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50cf91dc1db82cd63fb612711adebccc0583d55af4150dcf6596673738440357`  
		Last Modified: Thu, 08 Jun 2017 20:14:42 GMT  
		Size: 2.1 KB (2063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3add4cd115cf668465ceeb6a67912fd59c085d818610f1565a36df443d96e92`  
		Last Modified: Thu, 08 Jun 2017 20:14:41 GMT  
		Size: 1.3 MB (1302740 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:467830d8a6162f00d537f9defbc198620cb0f4369cd3c0e4f45270875c9cf1d4`  
		Last Modified: Thu, 08 Jun 2017 20:14:43 GMT  
		Size: 7.1 MB (7112107 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:089b9db7dc57093db23de2e4960e5d3d7043f30e883bf86a830b6c16c0af1e78`  
		Last Modified: Thu, 08 Jun 2017 20:14:40 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fba0a36935c6b3c124af229a9c07f5295c5a95120bd29d2d624ee3e2d2acb73`  
		Last Modified: Thu, 08 Jun 2017 20:14:40 GMT  
		Size: 4.5 KB (4488 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8e1e8d232c410ac974232fd8eaa808699206ce284c29e96ebe79225e2e2f34f`  
		Last Modified: Thu, 08 Jun 2017 20:20:27 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b173224cc2ca337df091e49007ffd10ec6179ced2ef8e78a762e84e2fb4e14d9`  
		Last Modified: Thu, 08 Jun 2017 20:20:35 GMT  
		Size: 42.5 MB (42457460 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:023683ba7d4a8e5fe3243a180ca7c1e98988690a9f592ee7acb99ff9e61243c4`  
		Last Modified: Thu, 08 Jun 2017 20:20:25 GMT  
		Size: 6.7 KB (6678 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:021870459b595ad11b70c1e4cd53bfa95fb25ed177ba96a62e44105e249e20db`  
		Last Modified: Thu, 08 Jun 2017 20:20:25 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3ac3e806378e2bd5d30eff5872bd58d7d589060e39bed4f5f95f8c1a2a0da1a`  
		Last Modified: Thu, 08 Jun 2017 20:20:25 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6eeede6a607effe519e75141428fd20682ec9990974725d51c0db4335f2e467`  
		Last Modified: Thu, 08 Jun 2017 20:20:25 GMT  
		Size: 1.8 KB (1795 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c4e7b4ebcbc031af1d010c4d8ce17f99bb4919a54f876a37337210d3fa2ac6a`  
		Last Modified: Thu, 08 Jun 2017 20:20:24 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.4`

```console
$ docker pull postgres@sha256:39696b28577201ff1d4af8d47020abfa5db193f2b75aa57db0c13b26482918d7
```

-	Platforms:
	-	linux; amd64

### `postgres:9.4` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **103.5 MB (103456355 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:754a62a2351fe7d40ca2e0e255547d3828f4696e8298f5535c149635c8db5bc3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 07 Jun 2017 17:32:31 GMT
ADD file:ce4be6f55b1f47cba28efd351c82dd9fa4efd3d29fa0ae365574adb52151dda1 in / 
# Wed, 07 Jun 2017 17:32:32 GMT
CMD ["bash"]
# Thu, 08 Jun 2017 19:53:53 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Thu, 08 Jun 2017 19:53:53 GMT
ENV GOSU_VERSION=1.7
# Thu, 08 Jun 2017 19:54:15 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Thu, 08 Jun 2017 19:54:25 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Thu, 08 Jun 2017 19:54:26 GMT
ENV LANG=en_US.utf8
# Thu, 08 Jun 2017 19:54:27 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 08 Jun 2017 19:54:30 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Thu, 08 Jun 2017 20:03:05 GMT
ENV PG_MAJOR=9.4
# Thu, 08 Jun 2017 20:03:05 GMT
ENV PG_VERSION=9.4.12-1.pgdg80+1
# Thu, 08 Jun 2017 20:03:07 GMT
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main' $PG_MAJOR > /etc/apt/sources.list.d/pgdg.list
# Thu, 08 Jun 2017 20:03:36 GMT
RUN apt-get update 	&& apt-get install -y postgresql-common 	&& sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf 	&& apt-get install -y 		postgresql-$PG_MAJOR=$PG_VERSION 		postgresql-contrib-$PG_MAJOR=$PG_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Thu, 08 Jun 2017 20:03:38 GMT
RUN mv -v /usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample /usr/share/postgresql/$PG_MAJOR/ 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Thu, 08 Jun 2017 20:03:40 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Thu, 08 Jun 2017 20:03:40 GMT
ENV PATH=/usr/lib/postgresql/9.4/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 08 Jun 2017 20:03:41 GMT
ENV PGDATA=/var/lib/postgresql/data
# Thu, 08 Jun 2017 20:03:43 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Thu, 08 Jun 2017 20:03:44 GMT
VOLUME [/var/lib/postgresql/data]
# Thu, 08 Jun 2017 20:03:45 GMT
COPY file:80a75a207cb3d72777ff2cb8654a6d03754b58aed9199464284f3587637e1403 in /usr/local/bin/ 
# Thu, 08 Jun 2017 20:03:46 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 08 Jun 2017 20:03:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 08 Jun 2017 20:03:48 GMT
EXPOSE 5432/tcp
# Thu, 08 Jun 2017 20:03:49 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:ef0380f84d05d3cdc5a5f660232d35ccb020ccf1d635b585580dea44691a13a7`  
		Last Modified: Wed, 07 Jun 2017 17:58:44 GMT  
		Size: 52.6 MB (52568269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50cf91dc1db82cd63fb612711adebccc0583d55af4150dcf6596673738440357`  
		Last Modified: Thu, 08 Jun 2017 20:14:42 GMT  
		Size: 2.1 KB (2063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3add4cd115cf668465ceeb6a67912fd59c085d818610f1565a36df443d96e92`  
		Last Modified: Thu, 08 Jun 2017 20:14:41 GMT  
		Size: 1.3 MB (1302740 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:467830d8a6162f00d537f9defbc198620cb0f4369cd3c0e4f45270875c9cf1d4`  
		Last Modified: Thu, 08 Jun 2017 20:14:43 GMT  
		Size: 7.1 MB (7112107 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:089b9db7dc57093db23de2e4960e5d3d7043f30e883bf86a830b6c16c0af1e78`  
		Last Modified: Thu, 08 Jun 2017 20:14:40 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fba0a36935c6b3c124af229a9c07f5295c5a95120bd29d2d624ee3e2d2acb73`  
		Last Modified: Thu, 08 Jun 2017 20:14:40 GMT  
		Size: 4.5 KB (4488 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8e1e8d232c410ac974232fd8eaa808699206ce284c29e96ebe79225e2e2f34f`  
		Last Modified: Thu, 08 Jun 2017 20:20:27 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b173224cc2ca337df091e49007ffd10ec6179ced2ef8e78a762e84e2fb4e14d9`  
		Last Modified: Thu, 08 Jun 2017 20:20:35 GMT  
		Size: 42.5 MB (42457460 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:023683ba7d4a8e5fe3243a180ca7c1e98988690a9f592ee7acb99ff9e61243c4`  
		Last Modified: Thu, 08 Jun 2017 20:20:25 GMT  
		Size: 6.7 KB (6678 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:021870459b595ad11b70c1e4cd53bfa95fb25ed177ba96a62e44105e249e20db`  
		Last Modified: Thu, 08 Jun 2017 20:20:25 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3ac3e806378e2bd5d30eff5872bd58d7d589060e39bed4f5f95f8c1a2a0da1a`  
		Last Modified: Thu, 08 Jun 2017 20:20:25 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6eeede6a607effe519e75141428fd20682ec9990974725d51c0db4335f2e467`  
		Last Modified: Thu, 08 Jun 2017 20:20:25 GMT  
		Size: 1.8 KB (1795 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c4e7b4ebcbc031af1d010c4d8ce17f99bb4919a54f876a37337210d3fa2ac6a`  
		Last Modified: Thu, 08 Jun 2017 20:20:24 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.4.12-alpine`

```console
$ docker pull postgres@sha256:f1d546f2f1d5bf4a77932db3e167dd24a443527a484db31f075fb90e15127c66
```

-	Platforms:
	-	linux; amd64

### `postgres:9.4.12-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.3 MB (14286911 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a4e818f65a5b51193912f64adba301cc9840c352a739880dfb7eab4f6c7ce3a4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Thu, 25 May 2017 23:32:38 GMT
ADD file:df15515197b183747a0b7ccefd75973edc87fc7a5bce30fa10ae94e75928d25c in / 
# Thu, 25 May 2017 23:32:38 GMT
CMD ["/bin/sh"]
# Thu, 08 Jun 2017 19:56:06 GMT
RUN set -ex; 	postgresHome="$(getent passwd postgres)"; 	postgresHome="$(echo "$postgresHome" | cut -d: -f6)"; 	[ "$postgresHome" = '/var/lib/postgresql' ]; 	mkdir -p "$postgresHome"; 	chown -R postgres:postgres "$postgresHome"
# Thu, 08 Jun 2017 19:56:07 GMT
ENV LANG=en_US.utf8
# Thu, 08 Jun 2017 19:56:08 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 08 Jun 2017 20:04:12 GMT
ENV PG_MAJOR=9.4
# Thu, 08 Jun 2017 20:04:13 GMT
ENV PG_VERSION=9.4.12
# Thu, 08 Jun 2017 20:04:13 GMT
ENV PG_SHA256=fca055481875d1c49e31c28443f56472a1474b3fbe25b7ae64440c6118f82e64
# Thu, 08 Jun 2017 20:06:19 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl 		util-linux-dev 		zlib-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& wget -O config/config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Thu, 08 Jun 2017 20:06:21 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Thu, 08 Jun 2017 20:06:22 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Thu, 08 Jun 2017 20:06:23 GMT
ENV PATH=/usr/lib/postgresql/9.4/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 08 Jun 2017 20:06:24 GMT
ENV PGDATA=/var/lib/postgresql/data
# Thu, 08 Jun 2017 20:06:26 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Thu, 08 Jun 2017 20:06:26 GMT
VOLUME [/var/lib/postgresql/data]
# Thu, 08 Jun 2017 20:06:28 GMT
COPY file:0db93797e962937881947161a43da7695835a2b6d5ad1184d0886e35249b5e39 in /usr/local/bin/ 
# Thu, 08 Jun 2017 20:06:29 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 08 Jun 2017 20:06:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 08 Jun 2017 20:06:31 GMT
EXPOSE 5432/tcp
# Thu, 08 Jun 2017 20:06:31 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:6f821164d5b7ec94868795c1fb8dc6fd7d1fe51e04f97a6cf3a487868f2f5d68`  
		Last Modified: Thu, 25 May 2017 23:36:24 GMT  
		Size: 2.0 MB (1967927 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7fef033e254dd482aae8e514a9e6cd92d3b70c40b191dfecad08d0163e8486f`  
		Last Modified: Thu, 08 Jun 2017 20:16:36 GMT  
		Size: 142.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:066e5b16f28cfabf384f05b8758d01407cef2970bbfc491b1aedf8fb40929769`  
		Last Modified: Thu, 08 Jun 2017 20:16:36 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b12964e12174a1c6e895318944da0920681afd4e76a41af1539b94ff01fab5ed`  
		Last Modified: Thu, 08 Jun 2017 20:21:31 GMT  
		Size: 12.3 MB (12309866 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:237a88105e5586605c65e7b31800403a345b0c07bb399aa93e6786a221ee8c68`  
		Last Modified: Thu, 08 Jun 2017 20:21:29 GMT  
		Size: 6.6 KB (6647 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09526cd4f282514e15e52ea3f8cdc38973a064e7f77ce78d4c5e0f0338156a79`  
		Last Modified: Thu, 08 Jun 2017 20:21:29 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4025d6482edfcc7c662f03a932b7f8a0ef6e3a2e11324445678d31b55478645c`  
		Last Modified: Thu, 08 Jun 2017 20:21:29 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4a5575cc0766b768477908df0ede6eb31303577b2478374152df390d029f875`  
		Last Modified: Thu, 08 Jun 2017 20:21:29 GMT  
		Size: 1.8 KB (1787 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00756120815c2ac0613327066215dfee3410a8cbc86b6b53dc8cf382004ca912`  
		Last Modified: Thu, 08 Jun 2017 20:21:29 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.4-alpine`

```console
$ docker pull postgres@sha256:f1d546f2f1d5bf4a77932db3e167dd24a443527a484db31f075fb90e15127c66
```

-	Platforms:
	-	linux; amd64

### `postgres:9.4-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.3 MB (14286911 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a4e818f65a5b51193912f64adba301cc9840c352a739880dfb7eab4f6c7ce3a4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Thu, 25 May 2017 23:32:38 GMT
ADD file:df15515197b183747a0b7ccefd75973edc87fc7a5bce30fa10ae94e75928d25c in / 
# Thu, 25 May 2017 23:32:38 GMT
CMD ["/bin/sh"]
# Thu, 08 Jun 2017 19:56:06 GMT
RUN set -ex; 	postgresHome="$(getent passwd postgres)"; 	postgresHome="$(echo "$postgresHome" | cut -d: -f6)"; 	[ "$postgresHome" = '/var/lib/postgresql' ]; 	mkdir -p "$postgresHome"; 	chown -R postgres:postgres "$postgresHome"
# Thu, 08 Jun 2017 19:56:07 GMT
ENV LANG=en_US.utf8
# Thu, 08 Jun 2017 19:56:08 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 08 Jun 2017 20:04:12 GMT
ENV PG_MAJOR=9.4
# Thu, 08 Jun 2017 20:04:13 GMT
ENV PG_VERSION=9.4.12
# Thu, 08 Jun 2017 20:04:13 GMT
ENV PG_SHA256=fca055481875d1c49e31c28443f56472a1474b3fbe25b7ae64440c6118f82e64
# Thu, 08 Jun 2017 20:06:19 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl 		util-linux-dev 		zlib-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& wget -O config/config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Thu, 08 Jun 2017 20:06:21 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Thu, 08 Jun 2017 20:06:22 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Thu, 08 Jun 2017 20:06:23 GMT
ENV PATH=/usr/lib/postgresql/9.4/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 08 Jun 2017 20:06:24 GMT
ENV PGDATA=/var/lib/postgresql/data
# Thu, 08 Jun 2017 20:06:26 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Thu, 08 Jun 2017 20:06:26 GMT
VOLUME [/var/lib/postgresql/data]
# Thu, 08 Jun 2017 20:06:28 GMT
COPY file:0db93797e962937881947161a43da7695835a2b6d5ad1184d0886e35249b5e39 in /usr/local/bin/ 
# Thu, 08 Jun 2017 20:06:29 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 08 Jun 2017 20:06:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 08 Jun 2017 20:06:31 GMT
EXPOSE 5432/tcp
# Thu, 08 Jun 2017 20:06:31 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:6f821164d5b7ec94868795c1fb8dc6fd7d1fe51e04f97a6cf3a487868f2f5d68`  
		Last Modified: Thu, 25 May 2017 23:36:24 GMT  
		Size: 2.0 MB (1967927 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7fef033e254dd482aae8e514a9e6cd92d3b70c40b191dfecad08d0163e8486f`  
		Last Modified: Thu, 08 Jun 2017 20:16:36 GMT  
		Size: 142.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:066e5b16f28cfabf384f05b8758d01407cef2970bbfc491b1aedf8fb40929769`  
		Last Modified: Thu, 08 Jun 2017 20:16:36 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b12964e12174a1c6e895318944da0920681afd4e76a41af1539b94ff01fab5ed`  
		Last Modified: Thu, 08 Jun 2017 20:21:31 GMT  
		Size: 12.3 MB (12309866 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:237a88105e5586605c65e7b31800403a345b0c07bb399aa93e6786a221ee8c68`  
		Last Modified: Thu, 08 Jun 2017 20:21:29 GMT  
		Size: 6.6 KB (6647 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09526cd4f282514e15e52ea3f8cdc38973a064e7f77ce78d4c5e0f0338156a79`  
		Last Modified: Thu, 08 Jun 2017 20:21:29 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4025d6482edfcc7c662f03a932b7f8a0ef6e3a2e11324445678d31b55478645c`  
		Last Modified: Thu, 08 Jun 2017 20:21:29 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4a5575cc0766b768477908df0ede6eb31303577b2478374152df390d029f875`  
		Last Modified: Thu, 08 Jun 2017 20:21:29 GMT  
		Size: 1.8 KB (1787 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00756120815c2ac0613327066215dfee3410a8cbc86b6b53dc8cf382004ca912`  
		Last Modified: Thu, 08 Jun 2017 20:21:29 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.3.17`

```console
$ docker pull postgres@sha256:b7a2ce11ef43c2c89aa02c500908c33dd105b085d8210029088cc7c6f5e25793
```

-	Platforms:
	-	linux; amd64

### `postgres:9.3.17` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **103.1 MB (103101629 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:177c775d5f1578c26343e946abff4731c9dcb8d3740a8fc7a30dd5e37a0f9a52`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 07 Jun 2017 17:32:31 GMT
ADD file:ce4be6f55b1f47cba28efd351c82dd9fa4efd3d29fa0ae365574adb52151dda1 in / 
# Wed, 07 Jun 2017 17:32:32 GMT
CMD ["bash"]
# Thu, 08 Jun 2017 19:53:53 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Thu, 08 Jun 2017 19:53:53 GMT
ENV GOSU_VERSION=1.7
# Thu, 08 Jun 2017 19:54:15 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Thu, 08 Jun 2017 19:54:25 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Thu, 08 Jun 2017 19:54:26 GMT
ENV LANG=en_US.utf8
# Thu, 08 Jun 2017 19:54:27 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 08 Jun 2017 19:54:30 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Thu, 08 Jun 2017 20:06:56 GMT
ENV PG_MAJOR=9.3
# Thu, 08 Jun 2017 20:06:56 GMT
ENV PG_VERSION=9.3.17-1.pgdg80+1
# Thu, 08 Jun 2017 20:06:58 GMT
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main' $PG_MAJOR > /etc/apt/sources.list.d/pgdg.list
# Thu, 08 Jun 2017 20:07:32 GMT
RUN apt-get update 	&& apt-get install -y postgresql-common 	&& sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf 	&& apt-get install -y 		postgresql-$PG_MAJOR=$PG_VERSION 		postgresql-contrib-$PG_MAJOR=$PG_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Thu, 08 Jun 2017 20:07:34 GMT
RUN mv -v /usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample /usr/share/postgresql/$PG_MAJOR/ 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Thu, 08 Jun 2017 20:07:35 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Thu, 08 Jun 2017 20:07:36 GMT
ENV PATH=/usr/lib/postgresql/9.3/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 08 Jun 2017 20:07:37 GMT
ENV PGDATA=/var/lib/postgresql/data
# Thu, 08 Jun 2017 20:07:39 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Thu, 08 Jun 2017 20:07:39 GMT
VOLUME [/var/lib/postgresql/data]
# Thu, 08 Jun 2017 20:07:40 GMT
COPY file:80a75a207cb3d72777ff2cb8654a6d03754b58aed9199464284f3587637e1403 in /usr/local/bin/ 
# Thu, 08 Jun 2017 20:07:42 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 08 Jun 2017 20:07:43 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 08 Jun 2017 20:07:44 GMT
EXPOSE 5432/tcp
# Thu, 08 Jun 2017 20:07:44 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:ef0380f84d05d3cdc5a5f660232d35ccb020ccf1d635b585580dea44691a13a7`  
		Last Modified: Wed, 07 Jun 2017 17:58:44 GMT  
		Size: 52.6 MB (52568269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50cf91dc1db82cd63fb612711adebccc0583d55af4150dcf6596673738440357`  
		Last Modified: Thu, 08 Jun 2017 20:14:42 GMT  
		Size: 2.1 KB (2063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3add4cd115cf668465ceeb6a67912fd59c085d818610f1565a36df443d96e92`  
		Last Modified: Thu, 08 Jun 2017 20:14:41 GMT  
		Size: 1.3 MB (1302740 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:467830d8a6162f00d537f9defbc198620cb0f4369cd3c0e4f45270875c9cf1d4`  
		Last Modified: Thu, 08 Jun 2017 20:14:43 GMT  
		Size: 7.1 MB (7112107 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:089b9db7dc57093db23de2e4960e5d3d7043f30e883bf86a830b6c16c0af1e78`  
		Last Modified: Thu, 08 Jun 2017 20:14:40 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fba0a36935c6b3c124af229a9c07f5295c5a95120bd29d2d624ee3e2d2acb73`  
		Last Modified: Thu, 08 Jun 2017 20:14:40 GMT  
		Size: 4.5 KB (4488 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91da4f9184b69148505be9ce87479a7f38ea2fca30dc84eabadd85a34bc73f0b`  
		Last Modified: Thu, 08 Jun 2017 20:22:26 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3118096e7abba0dbf269fbeffd9db65e22284f5696e0e11e4eb3d41661ad3763`  
		Last Modified: Thu, 08 Jun 2017 20:22:31 GMT  
		Size: 42.1 MB (42102916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:367a90468ef803a1b982b924f098c7eb0bc4634255df6e08d3833867d1f75ddf`  
		Last Modified: Thu, 08 Jun 2017 20:22:23 GMT  
		Size: 6.5 KB (6494 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1520a3cfe327a1ec9f95c16953d985ca0d9cfb1d25c000920d36280d6f390f53`  
		Last Modified: Thu, 08 Jun 2017 20:22:24 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51bd94051212fb4f719aa796527f32a9fbec4b667ea3df4712cdf9c995d5d746`  
		Last Modified: Thu, 08 Jun 2017 20:22:24 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3035d9d18781480df105480e9f0ae3b6c90aac646a16f9996821f4cced87cd51`  
		Last Modified: Thu, 08 Jun 2017 20:22:24 GMT  
		Size: 1.8 KB (1797 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f45e97c285ca8c347c0550b3b73ef9d477cf3ad47c1309740a01a0b4c7f1d40f`  
		Last Modified: Thu, 08 Jun 2017 20:22:25 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.3`

```console
$ docker pull postgres@sha256:b7a2ce11ef43c2c89aa02c500908c33dd105b085d8210029088cc7c6f5e25793
```

-	Platforms:
	-	linux; amd64

### `postgres:9.3` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **103.1 MB (103101629 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:177c775d5f1578c26343e946abff4731c9dcb8d3740a8fc7a30dd5e37a0f9a52`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 07 Jun 2017 17:32:31 GMT
ADD file:ce4be6f55b1f47cba28efd351c82dd9fa4efd3d29fa0ae365574adb52151dda1 in / 
# Wed, 07 Jun 2017 17:32:32 GMT
CMD ["bash"]
# Thu, 08 Jun 2017 19:53:53 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Thu, 08 Jun 2017 19:53:53 GMT
ENV GOSU_VERSION=1.7
# Thu, 08 Jun 2017 19:54:15 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Thu, 08 Jun 2017 19:54:25 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Thu, 08 Jun 2017 19:54:26 GMT
ENV LANG=en_US.utf8
# Thu, 08 Jun 2017 19:54:27 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 08 Jun 2017 19:54:30 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Thu, 08 Jun 2017 20:06:56 GMT
ENV PG_MAJOR=9.3
# Thu, 08 Jun 2017 20:06:56 GMT
ENV PG_VERSION=9.3.17-1.pgdg80+1
# Thu, 08 Jun 2017 20:06:58 GMT
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main' $PG_MAJOR > /etc/apt/sources.list.d/pgdg.list
# Thu, 08 Jun 2017 20:07:32 GMT
RUN apt-get update 	&& apt-get install -y postgresql-common 	&& sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf 	&& apt-get install -y 		postgresql-$PG_MAJOR=$PG_VERSION 		postgresql-contrib-$PG_MAJOR=$PG_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Thu, 08 Jun 2017 20:07:34 GMT
RUN mv -v /usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample /usr/share/postgresql/$PG_MAJOR/ 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Thu, 08 Jun 2017 20:07:35 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Thu, 08 Jun 2017 20:07:36 GMT
ENV PATH=/usr/lib/postgresql/9.3/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 08 Jun 2017 20:07:37 GMT
ENV PGDATA=/var/lib/postgresql/data
# Thu, 08 Jun 2017 20:07:39 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Thu, 08 Jun 2017 20:07:39 GMT
VOLUME [/var/lib/postgresql/data]
# Thu, 08 Jun 2017 20:07:40 GMT
COPY file:80a75a207cb3d72777ff2cb8654a6d03754b58aed9199464284f3587637e1403 in /usr/local/bin/ 
# Thu, 08 Jun 2017 20:07:42 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 08 Jun 2017 20:07:43 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 08 Jun 2017 20:07:44 GMT
EXPOSE 5432/tcp
# Thu, 08 Jun 2017 20:07:44 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:ef0380f84d05d3cdc5a5f660232d35ccb020ccf1d635b585580dea44691a13a7`  
		Last Modified: Wed, 07 Jun 2017 17:58:44 GMT  
		Size: 52.6 MB (52568269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50cf91dc1db82cd63fb612711adebccc0583d55af4150dcf6596673738440357`  
		Last Modified: Thu, 08 Jun 2017 20:14:42 GMT  
		Size: 2.1 KB (2063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3add4cd115cf668465ceeb6a67912fd59c085d818610f1565a36df443d96e92`  
		Last Modified: Thu, 08 Jun 2017 20:14:41 GMT  
		Size: 1.3 MB (1302740 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:467830d8a6162f00d537f9defbc198620cb0f4369cd3c0e4f45270875c9cf1d4`  
		Last Modified: Thu, 08 Jun 2017 20:14:43 GMT  
		Size: 7.1 MB (7112107 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:089b9db7dc57093db23de2e4960e5d3d7043f30e883bf86a830b6c16c0af1e78`  
		Last Modified: Thu, 08 Jun 2017 20:14:40 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fba0a36935c6b3c124af229a9c07f5295c5a95120bd29d2d624ee3e2d2acb73`  
		Last Modified: Thu, 08 Jun 2017 20:14:40 GMT  
		Size: 4.5 KB (4488 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91da4f9184b69148505be9ce87479a7f38ea2fca30dc84eabadd85a34bc73f0b`  
		Last Modified: Thu, 08 Jun 2017 20:22:26 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3118096e7abba0dbf269fbeffd9db65e22284f5696e0e11e4eb3d41661ad3763`  
		Last Modified: Thu, 08 Jun 2017 20:22:31 GMT  
		Size: 42.1 MB (42102916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:367a90468ef803a1b982b924f098c7eb0bc4634255df6e08d3833867d1f75ddf`  
		Last Modified: Thu, 08 Jun 2017 20:22:23 GMT  
		Size: 6.5 KB (6494 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1520a3cfe327a1ec9f95c16953d985ca0d9cfb1d25c000920d36280d6f390f53`  
		Last Modified: Thu, 08 Jun 2017 20:22:24 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51bd94051212fb4f719aa796527f32a9fbec4b667ea3df4712cdf9c995d5d746`  
		Last Modified: Thu, 08 Jun 2017 20:22:24 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3035d9d18781480df105480e9f0ae3b6c90aac646a16f9996821f4cced87cd51`  
		Last Modified: Thu, 08 Jun 2017 20:22:24 GMT  
		Size: 1.8 KB (1797 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f45e97c285ca8c347c0550b3b73ef9d477cf3ad47c1309740a01a0b4c7f1d40f`  
		Last Modified: Thu, 08 Jun 2017 20:22:25 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.3.17-alpine`

```console
$ docker pull postgres@sha256:c274526f92c062f0e6e36b456660c82031b97777f3efff5f628017e06e308660
```

-	Platforms:
	-	linux; amd64

### `postgres:9.3.17-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.0 MB (13996195 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8917e93a3604887b266cad7cd054b581f2a7178acbe1ea1b3738d87395087175`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Thu, 25 May 2017 23:32:38 GMT
ADD file:df15515197b183747a0b7ccefd75973edc87fc7a5bce30fa10ae94e75928d25c in / 
# Thu, 25 May 2017 23:32:38 GMT
CMD ["/bin/sh"]
# Thu, 08 Jun 2017 19:56:06 GMT
RUN set -ex; 	postgresHome="$(getent passwd postgres)"; 	postgresHome="$(echo "$postgresHome" | cut -d: -f6)"; 	[ "$postgresHome" = '/var/lib/postgresql' ]; 	mkdir -p "$postgresHome"; 	chown -R postgres:postgres "$postgresHome"
# Thu, 08 Jun 2017 19:56:07 GMT
ENV LANG=en_US.utf8
# Thu, 08 Jun 2017 19:56:08 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 08 Jun 2017 20:08:07 GMT
ENV PG_MAJOR=9.3
# Thu, 08 Jun 2017 20:08:08 GMT
ENV PG_VERSION=9.3.17
# Thu, 08 Jun 2017 20:08:09 GMT
ENV PG_SHA256=9c03e5f280cfe9bd202fa01af773eb146abd8ab3065f7279d574c568f6948dbe
# Thu, 08 Jun 2017 20:08:10 GMT
ENV OSSP_UUID_VERSION=1.6.2
# Thu, 08 Jun 2017 20:08:11 GMT
ENV OSSP_UUID_SHA256=11a615225baa5f8bb686824423f50e4427acd3f70d394765bdff32801f0fd5b0
# Thu, 08 Jun 2017 20:10:13 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl 		util-linux-dev 		zlib-dev 		&& wget -O uuid.tar.gz "https://www.mirrorservice.org/sites/ftp.ossp.org/pkg/lib/uuid/uuid-$OSSP_UUID_VERSION.tar.gz" 	&& echo "$OSSP_UUID_SHA256 *uuid.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/ossp-uuid 	&& tar 		--extract 		--file uuid.tar.gz 		--directory /usr/src/ossp-uuid 		--strip-components 1 	&& rm uuid.tar.gz 	&& ( 		cd /usr/src/ossp-uuid 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		&& wget -O config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 		&& wget -O config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 		&& ./configure 			--build="$gnuArch" 			--prefix=/usr/local 		&& make -j "$(nproc)" 		&& make install 	) 	&& rm -rf /usr/src/ossp-uuid 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& wget -O config/config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--disable-rpath 		--with-ossp-uuid 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Thu, 08 Jun 2017 20:10:15 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Thu, 08 Jun 2017 20:10:16 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Thu, 08 Jun 2017 20:10:17 GMT
ENV PATH=/usr/lib/postgresql/9.3/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 08 Jun 2017 20:10:18 GMT
ENV PGDATA=/var/lib/postgresql/data
# Thu, 08 Jun 2017 20:10:20 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Thu, 08 Jun 2017 20:10:20 GMT
VOLUME [/var/lib/postgresql/data]
# Thu, 08 Jun 2017 20:10:22 GMT
COPY file:0db93797e962937881947161a43da7695835a2b6d5ad1184d0886e35249b5e39 in /usr/local/bin/ 
# Thu, 08 Jun 2017 20:10:23 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 08 Jun 2017 20:10:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 08 Jun 2017 20:10:25 GMT
EXPOSE 5432/tcp
# Thu, 08 Jun 2017 20:10:26 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:6f821164d5b7ec94868795c1fb8dc6fd7d1fe51e04f97a6cf3a487868f2f5d68`  
		Last Modified: Thu, 25 May 2017 23:36:24 GMT  
		Size: 2.0 MB (1967927 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7fef033e254dd482aae8e514a9e6cd92d3b70c40b191dfecad08d0163e8486f`  
		Last Modified: Thu, 08 Jun 2017 20:16:36 GMT  
		Size: 142.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:066e5b16f28cfabf384f05b8758d01407cef2970bbfc491b1aedf8fb40929769`  
		Last Modified: Thu, 08 Jun 2017 20:16:36 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95a17fd15cb87cec8ba32d702edad52577fb98a293f1b3eeb6fce80ed113ac2f`  
		Last Modified: Thu, 08 Jun 2017 20:23:26 GMT  
		Size: 12.0 MB (12019332 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b5c5283a0b4833c77b2b9a00d113d1b48c47a12b8857303553af455fe4f9a7d`  
		Last Modified: Thu, 08 Jun 2017 20:23:24 GMT  
		Size: 6.5 KB (6465 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09749486f43488aa5905f547612078152b6c9e571cbed3b821c8a931b8fdf950`  
		Last Modified: Thu, 08 Jun 2017 20:23:25 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92bffe694af89655eed06d5fa1829cdf222be72ac69f5e76dbd4c3b01499ce17`  
		Last Modified: Thu, 08 Jun 2017 20:23:24 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c18a0d4e8485f80c30fe269c724f6ed0402324a7c82e60ebd250a4f34a3b05dc`  
		Last Modified: Thu, 08 Jun 2017 20:23:24 GMT  
		Size: 1.8 KB (1786 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86f07d5d356c155fb032c646576eebe91049fb15e935b3c6d258edcff95bb5d8`  
		Last Modified: Thu, 08 Jun 2017 20:23:24 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.3-alpine`

```console
$ docker pull postgres@sha256:c274526f92c062f0e6e36b456660c82031b97777f3efff5f628017e06e308660
```

-	Platforms:
	-	linux; amd64

### `postgres:9.3-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.0 MB (13996195 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8917e93a3604887b266cad7cd054b581f2a7178acbe1ea1b3738d87395087175`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Thu, 25 May 2017 23:32:38 GMT
ADD file:df15515197b183747a0b7ccefd75973edc87fc7a5bce30fa10ae94e75928d25c in / 
# Thu, 25 May 2017 23:32:38 GMT
CMD ["/bin/sh"]
# Thu, 08 Jun 2017 19:56:06 GMT
RUN set -ex; 	postgresHome="$(getent passwd postgres)"; 	postgresHome="$(echo "$postgresHome" | cut -d: -f6)"; 	[ "$postgresHome" = '/var/lib/postgresql' ]; 	mkdir -p "$postgresHome"; 	chown -R postgres:postgres "$postgresHome"
# Thu, 08 Jun 2017 19:56:07 GMT
ENV LANG=en_US.utf8
# Thu, 08 Jun 2017 19:56:08 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 08 Jun 2017 20:08:07 GMT
ENV PG_MAJOR=9.3
# Thu, 08 Jun 2017 20:08:08 GMT
ENV PG_VERSION=9.3.17
# Thu, 08 Jun 2017 20:08:09 GMT
ENV PG_SHA256=9c03e5f280cfe9bd202fa01af773eb146abd8ab3065f7279d574c568f6948dbe
# Thu, 08 Jun 2017 20:08:10 GMT
ENV OSSP_UUID_VERSION=1.6.2
# Thu, 08 Jun 2017 20:08:11 GMT
ENV OSSP_UUID_SHA256=11a615225baa5f8bb686824423f50e4427acd3f70d394765bdff32801f0fd5b0
# Thu, 08 Jun 2017 20:10:13 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl 		util-linux-dev 		zlib-dev 		&& wget -O uuid.tar.gz "https://www.mirrorservice.org/sites/ftp.ossp.org/pkg/lib/uuid/uuid-$OSSP_UUID_VERSION.tar.gz" 	&& echo "$OSSP_UUID_SHA256 *uuid.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/ossp-uuid 	&& tar 		--extract 		--file uuid.tar.gz 		--directory /usr/src/ossp-uuid 		--strip-components 1 	&& rm uuid.tar.gz 	&& ( 		cd /usr/src/ossp-uuid 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		&& wget -O config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 		&& wget -O config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 		&& ./configure 			--build="$gnuArch" 			--prefix=/usr/local 		&& make -j "$(nproc)" 		&& make install 	) 	&& rm -rf /usr/src/ossp-uuid 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& wget -O config/config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--disable-rpath 		--with-ossp-uuid 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Thu, 08 Jun 2017 20:10:15 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Thu, 08 Jun 2017 20:10:16 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Thu, 08 Jun 2017 20:10:17 GMT
ENV PATH=/usr/lib/postgresql/9.3/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 08 Jun 2017 20:10:18 GMT
ENV PGDATA=/var/lib/postgresql/data
# Thu, 08 Jun 2017 20:10:20 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Thu, 08 Jun 2017 20:10:20 GMT
VOLUME [/var/lib/postgresql/data]
# Thu, 08 Jun 2017 20:10:22 GMT
COPY file:0db93797e962937881947161a43da7695835a2b6d5ad1184d0886e35249b5e39 in /usr/local/bin/ 
# Thu, 08 Jun 2017 20:10:23 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 08 Jun 2017 20:10:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 08 Jun 2017 20:10:25 GMT
EXPOSE 5432/tcp
# Thu, 08 Jun 2017 20:10:26 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:6f821164d5b7ec94868795c1fb8dc6fd7d1fe51e04f97a6cf3a487868f2f5d68`  
		Last Modified: Thu, 25 May 2017 23:36:24 GMT  
		Size: 2.0 MB (1967927 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7fef033e254dd482aae8e514a9e6cd92d3b70c40b191dfecad08d0163e8486f`  
		Last Modified: Thu, 08 Jun 2017 20:16:36 GMT  
		Size: 142.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:066e5b16f28cfabf384f05b8758d01407cef2970bbfc491b1aedf8fb40929769`  
		Last Modified: Thu, 08 Jun 2017 20:16:36 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95a17fd15cb87cec8ba32d702edad52577fb98a293f1b3eeb6fce80ed113ac2f`  
		Last Modified: Thu, 08 Jun 2017 20:23:26 GMT  
		Size: 12.0 MB (12019332 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b5c5283a0b4833c77b2b9a00d113d1b48c47a12b8857303553af455fe4f9a7d`  
		Last Modified: Thu, 08 Jun 2017 20:23:24 GMT  
		Size: 6.5 KB (6465 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09749486f43488aa5905f547612078152b6c9e571cbed3b821c8a931b8fdf950`  
		Last Modified: Thu, 08 Jun 2017 20:23:25 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92bffe694af89655eed06d5fa1829cdf222be72ac69f5e76dbd4c3b01499ce17`  
		Last Modified: Thu, 08 Jun 2017 20:23:24 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c18a0d4e8485f80c30fe269c724f6ed0402324a7c82e60ebd250a4f34a3b05dc`  
		Last Modified: Thu, 08 Jun 2017 20:23:24 GMT  
		Size: 1.8 KB (1786 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86f07d5d356c155fb032c646576eebe91049fb15e935b3c6d258edcff95bb5d8`  
		Last Modified: Thu, 08 Jun 2017 20:23:24 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.2.21`

```console
$ docker pull postgres@sha256:669ed66da6d473d2eb131edf391a1efe53c0d7b68ebbb598f6863e7f622a6dd8
```

-	Platforms:
	-	linux; amd64

### `postgres:9.2.21` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **102.9 MB (102937380 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6c80e00213efd715bf35214846f3bf3bebccca646abe5402d7bbfa6a8211498c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 07 Jun 2017 17:32:31 GMT
ADD file:ce4be6f55b1f47cba28efd351c82dd9fa4efd3d29fa0ae365574adb52151dda1 in / 
# Wed, 07 Jun 2017 17:32:32 GMT
CMD ["bash"]
# Thu, 08 Jun 2017 19:53:53 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Thu, 08 Jun 2017 19:53:53 GMT
ENV GOSU_VERSION=1.7
# Thu, 08 Jun 2017 19:54:15 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Thu, 08 Jun 2017 19:54:25 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Thu, 08 Jun 2017 19:54:26 GMT
ENV LANG=en_US.utf8
# Thu, 08 Jun 2017 19:54:27 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 08 Jun 2017 19:54:30 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Thu, 08 Jun 2017 20:10:49 GMT
ENV PG_MAJOR=9.2
# Thu, 08 Jun 2017 20:10:50 GMT
ENV PG_VERSION=9.2.21-1.pgdg80+1
# Thu, 08 Jun 2017 20:10:52 GMT
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main' $PG_MAJOR > /etc/apt/sources.list.d/pgdg.list
# Thu, 08 Jun 2017 20:11:21 GMT
RUN apt-get update 	&& apt-get install -y postgresql-common 	&& sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf 	&& apt-get install -y 		postgresql-$PG_MAJOR=$PG_VERSION 		postgresql-contrib-$PG_MAJOR=$PG_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Thu, 08 Jun 2017 20:11:23 GMT
RUN mv -v /usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample /usr/share/postgresql/$PG_MAJOR/ 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Thu, 08 Jun 2017 20:11:24 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Thu, 08 Jun 2017 20:11:25 GMT
ENV PATH=/usr/lib/postgresql/9.2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 08 Jun 2017 20:11:26 GMT
ENV PGDATA=/var/lib/postgresql/data
# Thu, 08 Jun 2017 20:11:27 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Thu, 08 Jun 2017 20:11:28 GMT
VOLUME [/var/lib/postgresql/data]
# Thu, 08 Jun 2017 20:11:29 GMT
COPY file:80a75a207cb3d72777ff2cb8654a6d03754b58aed9199464284f3587637e1403 in /usr/local/bin/ 
# Thu, 08 Jun 2017 20:11:31 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 08 Jun 2017 20:11:31 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 08 Jun 2017 20:11:32 GMT
EXPOSE 5432/tcp
# Thu, 08 Jun 2017 20:11:33 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:ef0380f84d05d3cdc5a5f660232d35ccb020ccf1d635b585580dea44691a13a7`  
		Last Modified: Wed, 07 Jun 2017 17:58:44 GMT  
		Size: 52.6 MB (52568269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50cf91dc1db82cd63fb612711adebccc0583d55af4150dcf6596673738440357`  
		Last Modified: Thu, 08 Jun 2017 20:14:42 GMT  
		Size: 2.1 KB (2063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3add4cd115cf668465ceeb6a67912fd59c085d818610f1565a36df443d96e92`  
		Last Modified: Thu, 08 Jun 2017 20:14:41 GMT  
		Size: 1.3 MB (1302740 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:467830d8a6162f00d537f9defbc198620cb0f4369cd3c0e4f45270875c9cf1d4`  
		Last Modified: Thu, 08 Jun 2017 20:14:43 GMT  
		Size: 7.1 MB (7112107 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:089b9db7dc57093db23de2e4960e5d3d7043f30e883bf86a830b6c16c0af1e78`  
		Last Modified: Thu, 08 Jun 2017 20:14:40 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fba0a36935c6b3c124af229a9c07f5295c5a95120bd29d2d624ee3e2d2acb73`  
		Last Modified: Thu, 08 Jun 2017 20:14:40 GMT  
		Size: 4.5 KB (4488 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f8d59bad63d4b0523ac475f4b8dc919d9b56e8114a5282322a85a78e40559bd`  
		Last Modified: Thu, 08 Jun 2017 20:24:33 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3dade1e25c3a038a16b9401d5620177c3a9b3d47e44fea14a15fe1bfe048d220`  
		Last Modified: Thu, 08 Jun 2017 20:24:38 GMT  
		Size: 41.9 MB (41938729 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d6a43b4fe9c8f88d14e0607d6ff313721b4912612be589243846917c544bfed`  
		Last Modified: Thu, 08 Jun 2017 20:24:31 GMT  
		Size: 6.4 KB (6436 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73205850af4dfc855d6fff2e97516bca2f2c03330a75bb58f8cb320a8b5ad853`  
		Last Modified: Thu, 08 Jun 2017 20:24:31 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed8c494a4847b33551f9868f6a0d521905afa2340af21b304735e6cbccdcf668`  
		Last Modified: Thu, 08 Jun 2017 20:24:31 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aca7558eee17f02227c906d84ee7b6193b618a0e50830d2f791c5116d92500c0`  
		Last Modified: Thu, 08 Jun 2017 20:24:30 GMT  
		Size: 1.8 KB (1794 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc0c4e1e09e73101c69bcd7d900ad76ca9f74219e75de3d97b9659f7e8238487`  
		Last Modified: Thu, 08 Jun 2017 20:24:30 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.2`

```console
$ docker pull postgres@sha256:669ed66da6d473d2eb131edf391a1efe53c0d7b68ebbb598f6863e7f622a6dd8
```

-	Platforms:
	-	linux; amd64

### `postgres:9.2` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **102.9 MB (102937380 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6c80e00213efd715bf35214846f3bf3bebccca646abe5402d7bbfa6a8211498c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 07 Jun 2017 17:32:31 GMT
ADD file:ce4be6f55b1f47cba28efd351c82dd9fa4efd3d29fa0ae365574adb52151dda1 in / 
# Wed, 07 Jun 2017 17:32:32 GMT
CMD ["bash"]
# Thu, 08 Jun 2017 19:53:53 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Thu, 08 Jun 2017 19:53:53 GMT
ENV GOSU_VERSION=1.7
# Thu, 08 Jun 2017 19:54:15 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Thu, 08 Jun 2017 19:54:25 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Thu, 08 Jun 2017 19:54:26 GMT
ENV LANG=en_US.utf8
# Thu, 08 Jun 2017 19:54:27 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 08 Jun 2017 19:54:30 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Thu, 08 Jun 2017 20:10:49 GMT
ENV PG_MAJOR=9.2
# Thu, 08 Jun 2017 20:10:50 GMT
ENV PG_VERSION=9.2.21-1.pgdg80+1
# Thu, 08 Jun 2017 20:10:52 GMT
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main' $PG_MAJOR > /etc/apt/sources.list.d/pgdg.list
# Thu, 08 Jun 2017 20:11:21 GMT
RUN apt-get update 	&& apt-get install -y postgresql-common 	&& sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf 	&& apt-get install -y 		postgresql-$PG_MAJOR=$PG_VERSION 		postgresql-contrib-$PG_MAJOR=$PG_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Thu, 08 Jun 2017 20:11:23 GMT
RUN mv -v /usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample /usr/share/postgresql/$PG_MAJOR/ 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Thu, 08 Jun 2017 20:11:24 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Thu, 08 Jun 2017 20:11:25 GMT
ENV PATH=/usr/lib/postgresql/9.2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 08 Jun 2017 20:11:26 GMT
ENV PGDATA=/var/lib/postgresql/data
# Thu, 08 Jun 2017 20:11:27 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Thu, 08 Jun 2017 20:11:28 GMT
VOLUME [/var/lib/postgresql/data]
# Thu, 08 Jun 2017 20:11:29 GMT
COPY file:80a75a207cb3d72777ff2cb8654a6d03754b58aed9199464284f3587637e1403 in /usr/local/bin/ 
# Thu, 08 Jun 2017 20:11:31 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 08 Jun 2017 20:11:31 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 08 Jun 2017 20:11:32 GMT
EXPOSE 5432/tcp
# Thu, 08 Jun 2017 20:11:33 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:ef0380f84d05d3cdc5a5f660232d35ccb020ccf1d635b585580dea44691a13a7`  
		Last Modified: Wed, 07 Jun 2017 17:58:44 GMT  
		Size: 52.6 MB (52568269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50cf91dc1db82cd63fb612711adebccc0583d55af4150dcf6596673738440357`  
		Last Modified: Thu, 08 Jun 2017 20:14:42 GMT  
		Size: 2.1 KB (2063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3add4cd115cf668465ceeb6a67912fd59c085d818610f1565a36df443d96e92`  
		Last Modified: Thu, 08 Jun 2017 20:14:41 GMT  
		Size: 1.3 MB (1302740 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:467830d8a6162f00d537f9defbc198620cb0f4369cd3c0e4f45270875c9cf1d4`  
		Last Modified: Thu, 08 Jun 2017 20:14:43 GMT  
		Size: 7.1 MB (7112107 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:089b9db7dc57093db23de2e4960e5d3d7043f30e883bf86a830b6c16c0af1e78`  
		Last Modified: Thu, 08 Jun 2017 20:14:40 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fba0a36935c6b3c124af229a9c07f5295c5a95120bd29d2d624ee3e2d2acb73`  
		Last Modified: Thu, 08 Jun 2017 20:14:40 GMT  
		Size: 4.5 KB (4488 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f8d59bad63d4b0523ac475f4b8dc919d9b56e8114a5282322a85a78e40559bd`  
		Last Modified: Thu, 08 Jun 2017 20:24:33 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3dade1e25c3a038a16b9401d5620177c3a9b3d47e44fea14a15fe1bfe048d220`  
		Last Modified: Thu, 08 Jun 2017 20:24:38 GMT  
		Size: 41.9 MB (41938729 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d6a43b4fe9c8f88d14e0607d6ff313721b4912612be589243846917c544bfed`  
		Last Modified: Thu, 08 Jun 2017 20:24:31 GMT  
		Size: 6.4 KB (6436 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73205850af4dfc855d6fff2e97516bca2f2c03330a75bb58f8cb320a8b5ad853`  
		Last Modified: Thu, 08 Jun 2017 20:24:31 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed8c494a4847b33551f9868f6a0d521905afa2340af21b304735e6cbccdcf668`  
		Last Modified: Thu, 08 Jun 2017 20:24:31 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aca7558eee17f02227c906d84ee7b6193b618a0e50830d2f791c5116d92500c0`  
		Last Modified: Thu, 08 Jun 2017 20:24:30 GMT  
		Size: 1.8 KB (1794 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc0c4e1e09e73101c69bcd7d900ad76ca9f74219e75de3d97b9659f7e8238487`  
		Last Modified: Thu, 08 Jun 2017 20:24:30 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.2.21-alpine`

```console
$ docker pull postgres@sha256:7465021c197d44da6941b6a9fbff99b23469f6cd35384ee688843aa816ea5c2e
```

-	Platforms:
	-	linux; amd64

### `postgres:9.2.21-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.8 MB (13830503 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:938d3beda9061bfba9f8cbdee6a6c5693eb38378f49143f9855ffced9ce00d77`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Thu, 25 May 2017 23:32:38 GMT
ADD file:df15515197b183747a0b7ccefd75973edc87fc7a5bce30fa10ae94e75928d25c in / 
# Thu, 25 May 2017 23:32:38 GMT
CMD ["/bin/sh"]
# Thu, 08 Jun 2017 19:56:06 GMT
RUN set -ex; 	postgresHome="$(getent passwd postgres)"; 	postgresHome="$(echo "$postgresHome" | cut -d: -f6)"; 	[ "$postgresHome" = '/var/lib/postgresql' ]; 	mkdir -p "$postgresHome"; 	chown -R postgres:postgres "$postgresHome"
# Thu, 08 Jun 2017 19:56:07 GMT
ENV LANG=en_US.utf8
# Thu, 08 Jun 2017 19:56:08 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 08 Jun 2017 20:11:56 GMT
ENV PG_MAJOR=9.2
# Thu, 08 Jun 2017 20:11:57 GMT
ENV PG_VERSION=9.2.21
# Thu, 08 Jun 2017 20:11:58 GMT
ENV PG_SHA256=0697e843523ee60c563f987f9c65bc4201294b18525d6e5e4b2c50c6d4058ef9
# Thu, 08 Jun 2017 20:11:59 GMT
ENV OSSP_UUID_VERSION=1.6.2
# Thu, 08 Jun 2017 20:12:00 GMT
ENV OSSP_UUID_SHA256=11a615225baa5f8bb686824423f50e4427acd3f70d394765bdff32801f0fd5b0
# Thu, 08 Jun 2017 20:13:58 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl 		util-linux-dev 		zlib-dev 		&& wget -O uuid.tar.gz "https://www.mirrorservice.org/sites/ftp.ossp.org/pkg/lib/uuid/uuid-$OSSP_UUID_VERSION.tar.gz" 	&& echo "$OSSP_UUID_SHA256 *uuid.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/ossp-uuid 	&& tar 		--extract 		--file uuid.tar.gz 		--directory /usr/src/ossp-uuid 		--strip-components 1 	&& rm uuid.tar.gz 	&& ( 		cd /usr/src/ossp-uuid 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		&& wget -O config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 		&& wget -O config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 		&& ./configure 			--build="$gnuArch" 			--prefix=/usr/local 		&& make -j "$(nproc)" 		&& make install 	) 	&& rm -rf /usr/src/ossp-uuid 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& wget -O config/config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--disable-rpath 		--with-ossp-uuid 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Thu, 08 Jun 2017 20:14:00 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Thu, 08 Jun 2017 20:14:01 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Thu, 08 Jun 2017 20:14:02 GMT
ENV PATH=/usr/lib/postgresql/9.2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 08 Jun 2017 20:14:03 GMT
ENV PGDATA=/var/lib/postgresql/data
# Thu, 08 Jun 2017 20:14:04 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Thu, 08 Jun 2017 20:14:05 GMT
VOLUME [/var/lib/postgresql/data]
# Thu, 08 Jun 2017 20:14:06 GMT
COPY file:0db93797e962937881947161a43da7695835a2b6d5ad1184d0886e35249b5e39 in /usr/local/bin/ 
# Thu, 08 Jun 2017 20:14:08 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 08 Jun 2017 20:14:09 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 08 Jun 2017 20:14:09 GMT
EXPOSE 5432/tcp
# Thu, 08 Jun 2017 20:14:10 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:6f821164d5b7ec94868795c1fb8dc6fd7d1fe51e04f97a6cf3a487868f2f5d68`  
		Last Modified: Thu, 25 May 2017 23:36:24 GMT  
		Size: 2.0 MB (1967927 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7fef033e254dd482aae8e514a9e6cd92d3b70c40b191dfecad08d0163e8486f`  
		Last Modified: Thu, 08 Jun 2017 20:16:36 GMT  
		Size: 142.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:066e5b16f28cfabf384f05b8758d01407cef2970bbfc491b1aedf8fb40929769`  
		Last Modified: Thu, 08 Jun 2017 20:16:36 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a89a6187f49a6ef93db16f9ab0c62879c795de7663a574e3c499f19592604475`  
		Last Modified: Thu, 08 Jun 2017 20:25:36 GMT  
		Size: 11.9 MB (11853699 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae97919cfb1eb524232e3c6f4b449cf3996634191ec78936a03263eff2e3cfa6`  
		Last Modified: Thu, 08 Jun 2017 20:25:34 GMT  
		Size: 6.4 KB (6404 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5421851da68a184b22acf8daaa57af7833f8b07e05121d1a27aff4eadbc0cbb2`  
		Last Modified: Thu, 08 Jun 2017 20:25:34 GMT  
		Size: 145.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98cc9b0e37af0e64aa9fe4b12d7ae29f80a0b3f2c4a1cc5ad7b5d04251c5ac8e`  
		Last Modified: Thu, 08 Jun 2017 20:25:34 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:336af3ebd3fea459ed159c02778cfe24b7809577797403f76e378f326266ba11`  
		Last Modified: Thu, 08 Jun 2017 20:25:34 GMT  
		Size: 1.8 KB (1790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:781f2e25c2252ce27bf7a506a6d16aaefe07ef768b2b02e225464ddfaf169039`  
		Last Modified: Thu, 08 Jun 2017 20:25:34 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.2-alpine`

```console
$ docker pull postgres@sha256:7465021c197d44da6941b6a9fbff99b23469f6cd35384ee688843aa816ea5c2e
```

-	Platforms:
	-	linux; amd64

### `postgres:9.2-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.8 MB (13830503 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:938d3beda9061bfba9f8cbdee6a6c5693eb38378f49143f9855ffced9ce00d77`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Thu, 25 May 2017 23:32:38 GMT
ADD file:df15515197b183747a0b7ccefd75973edc87fc7a5bce30fa10ae94e75928d25c in / 
# Thu, 25 May 2017 23:32:38 GMT
CMD ["/bin/sh"]
# Thu, 08 Jun 2017 19:56:06 GMT
RUN set -ex; 	postgresHome="$(getent passwd postgres)"; 	postgresHome="$(echo "$postgresHome" | cut -d: -f6)"; 	[ "$postgresHome" = '/var/lib/postgresql' ]; 	mkdir -p "$postgresHome"; 	chown -R postgres:postgres "$postgresHome"
# Thu, 08 Jun 2017 19:56:07 GMT
ENV LANG=en_US.utf8
# Thu, 08 Jun 2017 19:56:08 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 08 Jun 2017 20:11:56 GMT
ENV PG_MAJOR=9.2
# Thu, 08 Jun 2017 20:11:57 GMT
ENV PG_VERSION=9.2.21
# Thu, 08 Jun 2017 20:11:58 GMT
ENV PG_SHA256=0697e843523ee60c563f987f9c65bc4201294b18525d6e5e4b2c50c6d4058ef9
# Thu, 08 Jun 2017 20:11:59 GMT
ENV OSSP_UUID_VERSION=1.6.2
# Thu, 08 Jun 2017 20:12:00 GMT
ENV OSSP_UUID_SHA256=11a615225baa5f8bb686824423f50e4427acd3f70d394765bdff32801f0fd5b0
# Thu, 08 Jun 2017 20:13:58 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl 		util-linux-dev 		zlib-dev 		&& wget -O uuid.tar.gz "https://www.mirrorservice.org/sites/ftp.ossp.org/pkg/lib/uuid/uuid-$OSSP_UUID_VERSION.tar.gz" 	&& echo "$OSSP_UUID_SHA256 *uuid.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/ossp-uuid 	&& tar 		--extract 		--file uuid.tar.gz 		--directory /usr/src/ossp-uuid 		--strip-components 1 	&& rm uuid.tar.gz 	&& ( 		cd /usr/src/ossp-uuid 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		&& wget -O config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 		&& wget -O config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 		&& ./configure 			--build="$gnuArch" 			--prefix=/usr/local 		&& make -j "$(nproc)" 		&& make install 	) 	&& rm -rf /usr/src/ossp-uuid 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& wget -O config/config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--disable-rpath 		--with-ossp-uuid 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Thu, 08 Jun 2017 20:14:00 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Thu, 08 Jun 2017 20:14:01 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Thu, 08 Jun 2017 20:14:02 GMT
ENV PATH=/usr/lib/postgresql/9.2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 08 Jun 2017 20:14:03 GMT
ENV PGDATA=/var/lib/postgresql/data
# Thu, 08 Jun 2017 20:14:04 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Thu, 08 Jun 2017 20:14:05 GMT
VOLUME [/var/lib/postgresql/data]
# Thu, 08 Jun 2017 20:14:06 GMT
COPY file:0db93797e962937881947161a43da7695835a2b6d5ad1184d0886e35249b5e39 in /usr/local/bin/ 
# Thu, 08 Jun 2017 20:14:08 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 08 Jun 2017 20:14:09 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 08 Jun 2017 20:14:09 GMT
EXPOSE 5432/tcp
# Thu, 08 Jun 2017 20:14:10 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:6f821164d5b7ec94868795c1fb8dc6fd7d1fe51e04f97a6cf3a487868f2f5d68`  
		Last Modified: Thu, 25 May 2017 23:36:24 GMT  
		Size: 2.0 MB (1967927 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7fef033e254dd482aae8e514a9e6cd92d3b70c40b191dfecad08d0163e8486f`  
		Last Modified: Thu, 08 Jun 2017 20:16:36 GMT  
		Size: 142.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:066e5b16f28cfabf384f05b8758d01407cef2970bbfc491b1aedf8fb40929769`  
		Last Modified: Thu, 08 Jun 2017 20:16:36 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a89a6187f49a6ef93db16f9ab0c62879c795de7663a574e3c499f19592604475`  
		Last Modified: Thu, 08 Jun 2017 20:25:36 GMT  
		Size: 11.9 MB (11853699 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae97919cfb1eb524232e3c6f4b449cf3996634191ec78936a03263eff2e3cfa6`  
		Last Modified: Thu, 08 Jun 2017 20:25:34 GMT  
		Size: 6.4 KB (6404 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5421851da68a184b22acf8daaa57af7833f8b07e05121d1a27aff4eadbc0cbb2`  
		Last Modified: Thu, 08 Jun 2017 20:25:34 GMT  
		Size: 145.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98cc9b0e37af0e64aa9fe4b12d7ae29f80a0b3f2c4a1cc5ad7b5d04251c5ac8e`  
		Last Modified: Thu, 08 Jun 2017 20:25:34 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:336af3ebd3fea459ed159c02778cfe24b7809577797403f76e378f326266ba11`  
		Last Modified: Thu, 08 Jun 2017 20:25:34 GMT  
		Size: 1.8 KB (1790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:781f2e25c2252ce27bf7a506a6d16aaefe07ef768b2b02e225464ddfaf169039`  
		Last Modified: Thu, 08 Jun 2017 20:25:34 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
