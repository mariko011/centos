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
$ docker pull postgres@sha256:a2e6e6012a9056fa7647df5746119768bdb0bf4e82bb04819d5a8e450968a967
```

-	Platforms:
	-	linux; amd64

### `postgres:9.6.3` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.3 MB (104317100 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ca3a55649cfcdb182466c48d5be1b5c17f004e6df7b71680c6b647a53ca2b4ed`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Wed, 10 May 2017 15:21:03 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Wed, 10 May 2017 15:21:04 GMT
ENV GOSU_VERSION=1.7
# Wed, 10 May 2017 15:21:23 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 10 May 2017 15:21:33 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Wed, 10 May 2017 15:21:34 GMT
ENV LANG=en_US.utf8
# Wed, 10 May 2017 15:21:35 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 10 May 2017 15:21:38 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 10 May 2017 15:21:39 GMT
ENV PG_MAJOR=9.6
# Mon, 15 May 2017 21:18:15 GMT
ENV PG_VERSION=9.6.3-1.pgdg80+1
# Mon, 15 May 2017 21:18:17 GMT
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main' $PG_MAJOR > /etc/apt/sources.list.d/pgdg.list
# Mon, 15 May 2017 21:19:01 GMT
RUN apt-get update 	&& apt-get install -y postgresql-common 	&& sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf 	&& apt-get install -y 		postgresql-$PG_MAJOR=$PG_VERSION 		postgresql-contrib-$PG_MAJOR=$PG_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Mon, 15 May 2017 21:19:03 GMT
RUN mv -v /usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample /usr/share/postgresql/$PG_MAJOR/ 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Fri, 19 May 2017 23:34:48 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 19 May 2017 23:34:49 GMT
ENV PATH=/usr/lib/postgresql/9.6/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 19 May 2017 23:34:50 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 19 May 2017 23:34:51 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 19 May 2017 23:34:52 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 19 May 2017 23:34:53 GMT
COPY file:80a75a207cb3d72777ff2cb8654a6d03754b58aed9199464284f3587637e1403 in /usr/local/bin/ 
# Fri, 19 May 2017 23:34:55 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 19 May 2017 23:34:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 19 May 2017 23:34:56 GMT
EXPOSE 5432/tcp
# Fri, 19 May 2017 23:34:57 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:10a267c67f423630f3afe5e04bbbc93d578861ddcc54283526222f3ad5e895b9`  
		Last Modified: Mon, 08 May 2017 23:43:59 GMT  
		Size: 52.6 MB (52584016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9a920522e337511674336d96c1c64887243444c12d3a4841cae1aebfd2191f8`  
		Last Modified: Thu, 11 May 2017 18:13:27 GMT  
		Size: 2.1 KB (2065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6888e696bd718215dfb98e6d92059fcb982308e23ffd12e120b741b496170602`  
		Last Modified: Thu, 11 May 2017 18:13:27 GMT  
		Size: 1.3 MB (1307723 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:798096eed143cbeb4c60f929e93b1835dc782c59296795892a80ea740072a6f5`  
		Last Modified: Thu, 11 May 2017 18:13:28 GMT  
		Size: 7.1 MB (7116767 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb58419959b59bd0f196e45992732e44ed1b1aea40fd7463532de1020e77a695`  
		Last Modified: Thu, 11 May 2017 18:13:24 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97f9ec09cb6847298a7bfe62bf7d0361cfe56117fbd7f16e3c754a774b6f977a`  
		Last Modified: Thu, 11 May 2017 18:13:24 GMT  
		Size: 4.5 KB (4489 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba9f11a5c9fce7fb61ee557016399473708fea2386f87a583d9d8d818d7b1195`  
		Last Modified: Mon, 15 May 2017 21:37:25 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dff989d6d72eac64a856ef74c5a110a8bed3594c30b628aed6b0ce3223680532`  
		Last Modified: Mon, 15 May 2017 21:37:30 GMT  
		Size: 43.3 MB (43292396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82906cc5619b19d53b4be9d210dae4b20069f787c74d497e9ee08f494dcd49c7`  
		Last Modified: Mon, 15 May 2017 21:37:24 GMT  
		Size: 7.1 KB (7095 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9469a1db6d7acd984bc4156284d4252ed5acecb325d59eacd5735eb0287c7e6b`  
		Last Modified: Fri, 19 May 2017 23:40:04 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df8c751c405de18592e8f3684fc6dc710a2c245566345762d01ace81abc0b25c`  
		Last Modified: Fri, 19 May 2017 23:40:04 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:618cc1b488975d71a83025a72055fda67db13885373e82e9b2cba1be4695b7c6`  
		Last Modified: Fri, 19 May 2017 23:40:04 GMT  
		Size: 1.8 KB (1796 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42d855c8b47c7070bdbb37c1fcd082f6caac3962953042a76e630d51c3a61808`  
		Last Modified: Fri, 19 May 2017 23:40:04 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.6`

```console
$ docker pull postgres@sha256:a2e6e6012a9056fa7647df5746119768bdb0bf4e82bb04819d5a8e450968a967
```

-	Platforms:
	-	linux; amd64

### `postgres:9.6` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.3 MB (104317100 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ca3a55649cfcdb182466c48d5be1b5c17f004e6df7b71680c6b647a53ca2b4ed`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Wed, 10 May 2017 15:21:03 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Wed, 10 May 2017 15:21:04 GMT
ENV GOSU_VERSION=1.7
# Wed, 10 May 2017 15:21:23 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 10 May 2017 15:21:33 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Wed, 10 May 2017 15:21:34 GMT
ENV LANG=en_US.utf8
# Wed, 10 May 2017 15:21:35 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 10 May 2017 15:21:38 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 10 May 2017 15:21:39 GMT
ENV PG_MAJOR=9.6
# Mon, 15 May 2017 21:18:15 GMT
ENV PG_VERSION=9.6.3-1.pgdg80+1
# Mon, 15 May 2017 21:18:17 GMT
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main' $PG_MAJOR > /etc/apt/sources.list.d/pgdg.list
# Mon, 15 May 2017 21:19:01 GMT
RUN apt-get update 	&& apt-get install -y postgresql-common 	&& sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf 	&& apt-get install -y 		postgresql-$PG_MAJOR=$PG_VERSION 		postgresql-contrib-$PG_MAJOR=$PG_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Mon, 15 May 2017 21:19:03 GMT
RUN mv -v /usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample /usr/share/postgresql/$PG_MAJOR/ 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Fri, 19 May 2017 23:34:48 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 19 May 2017 23:34:49 GMT
ENV PATH=/usr/lib/postgresql/9.6/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 19 May 2017 23:34:50 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 19 May 2017 23:34:51 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 19 May 2017 23:34:52 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 19 May 2017 23:34:53 GMT
COPY file:80a75a207cb3d72777ff2cb8654a6d03754b58aed9199464284f3587637e1403 in /usr/local/bin/ 
# Fri, 19 May 2017 23:34:55 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 19 May 2017 23:34:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 19 May 2017 23:34:56 GMT
EXPOSE 5432/tcp
# Fri, 19 May 2017 23:34:57 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:10a267c67f423630f3afe5e04bbbc93d578861ddcc54283526222f3ad5e895b9`  
		Last Modified: Mon, 08 May 2017 23:43:59 GMT  
		Size: 52.6 MB (52584016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9a920522e337511674336d96c1c64887243444c12d3a4841cae1aebfd2191f8`  
		Last Modified: Thu, 11 May 2017 18:13:27 GMT  
		Size: 2.1 KB (2065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6888e696bd718215dfb98e6d92059fcb982308e23ffd12e120b741b496170602`  
		Last Modified: Thu, 11 May 2017 18:13:27 GMT  
		Size: 1.3 MB (1307723 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:798096eed143cbeb4c60f929e93b1835dc782c59296795892a80ea740072a6f5`  
		Last Modified: Thu, 11 May 2017 18:13:28 GMT  
		Size: 7.1 MB (7116767 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb58419959b59bd0f196e45992732e44ed1b1aea40fd7463532de1020e77a695`  
		Last Modified: Thu, 11 May 2017 18:13:24 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97f9ec09cb6847298a7bfe62bf7d0361cfe56117fbd7f16e3c754a774b6f977a`  
		Last Modified: Thu, 11 May 2017 18:13:24 GMT  
		Size: 4.5 KB (4489 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba9f11a5c9fce7fb61ee557016399473708fea2386f87a583d9d8d818d7b1195`  
		Last Modified: Mon, 15 May 2017 21:37:25 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dff989d6d72eac64a856ef74c5a110a8bed3594c30b628aed6b0ce3223680532`  
		Last Modified: Mon, 15 May 2017 21:37:30 GMT  
		Size: 43.3 MB (43292396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82906cc5619b19d53b4be9d210dae4b20069f787c74d497e9ee08f494dcd49c7`  
		Last Modified: Mon, 15 May 2017 21:37:24 GMT  
		Size: 7.1 KB (7095 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9469a1db6d7acd984bc4156284d4252ed5acecb325d59eacd5735eb0287c7e6b`  
		Last Modified: Fri, 19 May 2017 23:40:04 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df8c751c405de18592e8f3684fc6dc710a2c245566345762d01ace81abc0b25c`  
		Last Modified: Fri, 19 May 2017 23:40:04 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:618cc1b488975d71a83025a72055fda67db13885373e82e9b2cba1be4695b7c6`  
		Last Modified: Fri, 19 May 2017 23:40:04 GMT  
		Size: 1.8 KB (1796 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42d855c8b47c7070bdbb37c1fcd082f6caac3962953042a76e630d51c3a61808`  
		Last Modified: Fri, 19 May 2017 23:40:04 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9`

```console
$ docker pull postgres@sha256:a2e6e6012a9056fa7647df5746119768bdb0bf4e82bb04819d5a8e450968a967
```

-	Platforms:
	-	linux; amd64

### `postgres:9` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.3 MB (104317100 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ca3a55649cfcdb182466c48d5be1b5c17f004e6df7b71680c6b647a53ca2b4ed`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Wed, 10 May 2017 15:21:03 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Wed, 10 May 2017 15:21:04 GMT
ENV GOSU_VERSION=1.7
# Wed, 10 May 2017 15:21:23 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 10 May 2017 15:21:33 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Wed, 10 May 2017 15:21:34 GMT
ENV LANG=en_US.utf8
# Wed, 10 May 2017 15:21:35 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 10 May 2017 15:21:38 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 10 May 2017 15:21:39 GMT
ENV PG_MAJOR=9.6
# Mon, 15 May 2017 21:18:15 GMT
ENV PG_VERSION=9.6.3-1.pgdg80+1
# Mon, 15 May 2017 21:18:17 GMT
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main' $PG_MAJOR > /etc/apt/sources.list.d/pgdg.list
# Mon, 15 May 2017 21:19:01 GMT
RUN apt-get update 	&& apt-get install -y postgresql-common 	&& sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf 	&& apt-get install -y 		postgresql-$PG_MAJOR=$PG_VERSION 		postgresql-contrib-$PG_MAJOR=$PG_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Mon, 15 May 2017 21:19:03 GMT
RUN mv -v /usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample /usr/share/postgresql/$PG_MAJOR/ 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Fri, 19 May 2017 23:34:48 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 19 May 2017 23:34:49 GMT
ENV PATH=/usr/lib/postgresql/9.6/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 19 May 2017 23:34:50 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 19 May 2017 23:34:51 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 19 May 2017 23:34:52 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 19 May 2017 23:34:53 GMT
COPY file:80a75a207cb3d72777ff2cb8654a6d03754b58aed9199464284f3587637e1403 in /usr/local/bin/ 
# Fri, 19 May 2017 23:34:55 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 19 May 2017 23:34:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 19 May 2017 23:34:56 GMT
EXPOSE 5432/tcp
# Fri, 19 May 2017 23:34:57 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:10a267c67f423630f3afe5e04bbbc93d578861ddcc54283526222f3ad5e895b9`  
		Last Modified: Mon, 08 May 2017 23:43:59 GMT  
		Size: 52.6 MB (52584016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9a920522e337511674336d96c1c64887243444c12d3a4841cae1aebfd2191f8`  
		Last Modified: Thu, 11 May 2017 18:13:27 GMT  
		Size: 2.1 KB (2065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6888e696bd718215dfb98e6d92059fcb982308e23ffd12e120b741b496170602`  
		Last Modified: Thu, 11 May 2017 18:13:27 GMT  
		Size: 1.3 MB (1307723 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:798096eed143cbeb4c60f929e93b1835dc782c59296795892a80ea740072a6f5`  
		Last Modified: Thu, 11 May 2017 18:13:28 GMT  
		Size: 7.1 MB (7116767 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb58419959b59bd0f196e45992732e44ed1b1aea40fd7463532de1020e77a695`  
		Last Modified: Thu, 11 May 2017 18:13:24 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97f9ec09cb6847298a7bfe62bf7d0361cfe56117fbd7f16e3c754a774b6f977a`  
		Last Modified: Thu, 11 May 2017 18:13:24 GMT  
		Size: 4.5 KB (4489 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba9f11a5c9fce7fb61ee557016399473708fea2386f87a583d9d8d818d7b1195`  
		Last Modified: Mon, 15 May 2017 21:37:25 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dff989d6d72eac64a856ef74c5a110a8bed3594c30b628aed6b0ce3223680532`  
		Last Modified: Mon, 15 May 2017 21:37:30 GMT  
		Size: 43.3 MB (43292396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82906cc5619b19d53b4be9d210dae4b20069f787c74d497e9ee08f494dcd49c7`  
		Last Modified: Mon, 15 May 2017 21:37:24 GMT  
		Size: 7.1 KB (7095 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9469a1db6d7acd984bc4156284d4252ed5acecb325d59eacd5735eb0287c7e6b`  
		Last Modified: Fri, 19 May 2017 23:40:04 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df8c751c405de18592e8f3684fc6dc710a2c245566345762d01ace81abc0b25c`  
		Last Modified: Fri, 19 May 2017 23:40:04 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:618cc1b488975d71a83025a72055fda67db13885373e82e9b2cba1be4695b7c6`  
		Last Modified: Fri, 19 May 2017 23:40:04 GMT  
		Size: 1.8 KB (1796 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42d855c8b47c7070bdbb37c1fcd082f6caac3962953042a76e630d51c3a61808`  
		Last Modified: Fri, 19 May 2017 23:40:04 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:latest`

```console
$ docker pull postgres@sha256:a2e6e6012a9056fa7647df5746119768bdb0bf4e82bb04819d5a8e450968a967
```

-	Platforms:
	-	linux; amd64

### `postgres:latest` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.3 MB (104317100 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ca3a55649cfcdb182466c48d5be1b5c17f004e6df7b71680c6b647a53ca2b4ed`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Wed, 10 May 2017 15:21:03 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Wed, 10 May 2017 15:21:04 GMT
ENV GOSU_VERSION=1.7
# Wed, 10 May 2017 15:21:23 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 10 May 2017 15:21:33 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Wed, 10 May 2017 15:21:34 GMT
ENV LANG=en_US.utf8
# Wed, 10 May 2017 15:21:35 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 10 May 2017 15:21:38 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 10 May 2017 15:21:39 GMT
ENV PG_MAJOR=9.6
# Mon, 15 May 2017 21:18:15 GMT
ENV PG_VERSION=9.6.3-1.pgdg80+1
# Mon, 15 May 2017 21:18:17 GMT
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main' $PG_MAJOR > /etc/apt/sources.list.d/pgdg.list
# Mon, 15 May 2017 21:19:01 GMT
RUN apt-get update 	&& apt-get install -y postgresql-common 	&& sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf 	&& apt-get install -y 		postgresql-$PG_MAJOR=$PG_VERSION 		postgresql-contrib-$PG_MAJOR=$PG_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Mon, 15 May 2017 21:19:03 GMT
RUN mv -v /usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample /usr/share/postgresql/$PG_MAJOR/ 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Fri, 19 May 2017 23:34:48 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 19 May 2017 23:34:49 GMT
ENV PATH=/usr/lib/postgresql/9.6/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 19 May 2017 23:34:50 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 19 May 2017 23:34:51 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 19 May 2017 23:34:52 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 19 May 2017 23:34:53 GMT
COPY file:80a75a207cb3d72777ff2cb8654a6d03754b58aed9199464284f3587637e1403 in /usr/local/bin/ 
# Fri, 19 May 2017 23:34:55 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 19 May 2017 23:34:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 19 May 2017 23:34:56 GMT
EXPOSE 5432/tcp
# Fri, 19 May 2017 23:34:57 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:10a267c67f423630f3afe5e04bbbc93d578861ddcc54283526222f3ad5e895b9`  
		Last Modified: Mon, 08 May 2017 23:43:59 GMT  
		Size: 52.6 MB (52584016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9a920522e337511674336d96c1c64887243444c12d3a4841cae1aebfd2191f8`  
		Last Modified: Thu, 11 May 2017 18:13:27 GMT  
		Size: 2.1 KB (2065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6888e696bd718215dfb98e6d92059fcb982308e23ffd12e120b741b496170602`  
		Last Modified: Thu, 11 May 2017 18:13:27 GMT  
		Size: 1.3 MB (1307723 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:798096eed143cbeb4c60f929e93b1835dc782c59296795892a80ea740072a6f5`  
		Last Modified: Thu, 11 May 2017 18:13:28 GMT  
		Size: 7.1 MB (7116767 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb58419959b59bd0f196e45992732e44ed1b1aea40fd7463532de1020e77a695`  
		Last Modified: Thu, 11 May 2017 18:13:24 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97f9ec09cb6847298a7bfe62bf7d0361cfe56117fbd7f16e3c754a774b6f977a`  
		Last Modified: Thu, 11 May 2017 18:13:24 GMT  
		Size: 4.5 KB (4489 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba9f11a5c9fce7fb61ee557016399473708fea2386f87a583d9d8d818d7b1195`  
		Last Modified: Mon, 15 May 2017 21:37:25 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dff989d6d72eac64a856ef74c5a110a8bed3594c30b628aed6b0ce3223680532`  
		Last Modified: Mon, 15 May 2017 21:37:30 GMT  
		Size: 43.3 MB (43292396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82906cc5619b19d53b4be9d210dae4b20069f787c74d497e9ee08f494dcd49c7`  
		Last Modified: Mon, 15 May 2017 21:37:24 GMT  
		Size: 7.1 KB (7095 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9469a1db6d7acd984bc4156284d4252ed5acecb325d59eacd5735eb0287c7e6b`  
		Last Modified: Fri, 19 May 2017 23:40:04 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df8c751c405de18592e8f3684fc6dc710a2c245566345762d01ace81abc0b25c`  
		Last Modified: Fri, 19 May 2017 23:40:04 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:618cc1b488975d71a83025a72055fda67db13885373e82e9b2cba1be4695b7c6`  
		Last Modified: Fri, 19 May 2017 23:40:04 GMT  
		Size: 1.8 KB (1796 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42d855c8b47c7070bdbb37c1fcd082f6caac3962953042a76e630d51c3a61808`  
		Last Modified: Fri, 19 May 2017 23:40:04 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.6.3-alpine`

```console
$ docker pull postgres@sha256:9076e9f6f9fbcd9f91a14597fcfc651f59ade4d41c7fda7e071fca4be00e50eb
```

-	Platforms:
	-	linux; amd64

### `postgres:9.6.3-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.7 MB (14663963 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4ddf1c7ef6b333121c2b8e69b08540f758f9786f211662ecf4efc4304b8cce43`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 10 May 2017 16:38:16 GMT
ADD file:63f63606d6e289eb607c90e31de81802258906712727e473a2898f0f1ae55bb5 in / 
# Wed, 10 May 2017 16:38:17 GMT
CMD ["/bin/sh"]
# Wed, 10 May 2017 22:44:19 GMT
RUN set -ex; 	postgresHome="$(getent passwd postgres)"; 	postgresHome="$(echo "$postgresHome" | cut -d: -f6)"; 	[ "$postgresHome" = '/var/lib/postgresql' ]; 	mkdir -p "$postgresHome"; 	chown -R postgres:postgres "$postgresHome"
# Wed, 10 May 2017 22:44:20 GMT
ENV LANG=en_US.utf8
# Wed, 10 May 2017 22:44:21 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 10 May 2017 22:44:22 GMT
ENV PG_MAJOR=9.6
# Mon, 15 May 2017 21:19:34 GMT
ENV PG_VERSION=9.6.3
# Mon, 15 May 2017 21:19:35 GMT
ENV PG_SHA256=1645b3736901f6d854e695a937389e68ff2066ce0cde9d73919d6ab7c995b9c6
# Mon, 15 May 2017 21:21:50 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl 		util-linux-dev 		zlib-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess "http://git.savannah.gnu.org/gitweb/?p=config.git;a=blob_plain;f=config.guess;hb=HEAD" 	&& wget -O config/config.sub "http://git.savannah.gnu.org/gitweb/?p=config.git;a=blob_plain;f=config.sub;hb=HEAD" 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Mon, 15 May 2017 21:21:51 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Fri, 19 May 2017 23:35:20 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 19 May 2017 23:35:20 GMT
ENV PATH=/usr/lib/postgresql/9.6/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 19 May 2017 23:35:21 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 19 May 2017 23:35:23 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 19 May 2017 23:35:24 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 19 May 2017 23:35:25 GMT
COPY file:0db93797e962937881947161a43da7695835a2b6d5ad1184d0886e35249b5e39 in /usr/local/bin/ 
# Fri, 19 May 2017 23:35:26 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 19 May 2017 23:35:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 19 May 2017 23:35:28 GMT
EXPOSE 5432/tcp
# Fri, 19 May 2017 23:35:28 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:cfc728c1c5584d8e0ae69368fc9c34d54d72651355573ba42554c2469a0a6299`  
		Last Modified: Wed, 10 May 2017 16:41:01 GMT  
		Size: 2.0 MB (1967906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b749e72b24f9914e9c03f0cd76903382375d2080c19aacdb90e2a56267b64af7`  
		Last Modified: Thu, 11 May 2017 18:15:41 GMT  
		Size: 142.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0abdb8c9c36be26aa6f66e5496998f32a5ab79b3b65ce2ffe0abdf2c877ebbeb`  
		Last Modified: Thu, 11 May 2017 18:15:41 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2582819537b744558c7fba75a65d469b76a5eda8083d059c38eaca4c0792a98c`  
		Last Modified: Mon, 15 May 2017 21:39:08 GMT  
		Size: 12.7 MB (12686525 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb8a3b83da3b9346ed3eca97c1a53a99b4d5ed663a09a689b27861abce96e024`  
		Last Modified: Mon, 15 May 2017 21:39:05 GMT  
		Size: 7.1 KB (7062 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29bdb20ec3fe03059ca3124c40487daf5a775544fcb0774ea1ea348c3389e994`  
		Last Modified: Fri, 19 May 2017 23:41:39 GMT  
		Size: 145.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a64eb6fd8b12b5f911c40ef225c9381aefe97e62079e2a2a17171b13bb9655fd`  
		Last Modified: Fri, 19 May 2017 23:41:40 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:712cbc8a2d0a7b848ac3e248e427ea18ca14178e2c318ef9e4532f002098a92a`  
		Last Modified: Fri, 19 May 2017 23:41:40 GMT  
		Size: 1.8 KB (1787 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afc187c05586a548dec1bd69f08658e1b4c846f1e0df0771f8b28a2223cd3ce1`  
		Last Modified: Fri, 19 May 2017 23:41:40 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.6-alpine`

```console
$ docker pull postgres@sha256:9076e9f6f9fbcd9f91a14597fcfc651f59ade4d41c7fda7e071fca4be00e50eb
```

-	Platforms:
	-	linux; amd64

### `postgres:9.6-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.7 MB (14663963 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4ddf1c7ef6b333121c2b8e69b08540f758f9786f211662ecf4efc4304b8cce43`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 10 May 2017 16:38:16 GMT
ADD file:63f63606d6e289eb607c90e31de81802258906712727e473a2898f0f1ae55bb5 in / 
# Wed, 10 May 2017 16:38:17 GMT
CMD ["/bin/sh"]
# Wed, 10 May 2017 22:44:19 GMT
RUN set -ex; 	postgresHome="$(getent passwd postgres)"; 	postgresHome="$(echo "$postgresHome" | cut -d: -f6)"; 	[ "$postgresHome" = '/var/lib/postgresql' ]; 	mkdir -p "$postgresHome"; 	chown -R postgres:postgres "$postgresHome"
# Wed, 10 May 2017 22:44:20 GMT
ENV LANG=en_US.utf8
# Wed, 10 May 2017 22:44:21 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 10 May 2017 22:44:22 GMT
ENV PG_MAJOR=9.6
# Mon, 15 May 2017 21:19:34 GMT
ENV PG_VERSION=9.6.3
# Mon, 15 May 2017 21:19:35 GMT
ENV PG_SHA256=1645b3736901f6d854e695a937389e68ff2066ce0cde9d73919d6ab7c995b9c6
# Mon, 15 May 2017 21:21:50 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl 		util-linux-dev 		zlib-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess "http://git.savannah.gnu.org/gitweb/?p=config.git;a=blob_plain;f=config.guess;hb=HEAD" 	&& wget -O config/config.sub "http://git.savannah.gnu.org/gitweb/?p=config.git;a=blob_plain;f=config.sub;hb=HEAD" 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Mon, 15 May 2017 21:21:51 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Fri, 19 May 2017 23:35:20 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 19 May 2017 23:35:20 GMT
ENV PATH=/usr/lib/postgresql/9.6/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 19 May 2017 23:35:21 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 19 May 2017 23:35:23 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 19 May 2017 23:35:24 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 19 May 2017 23:35:25 GMT
COPY file:0db93797e962937881947161a43da7695835a2b6d5ad1184d0886e35249b5e39 in /usr/local/bin/ 
# Fri, 19 May 2017 23:35:26 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 19 May 2017 23:35:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 19 May 2017 23:35:28 GMT
EXPOSE 5432/tcp
# Fri, 19 May 2017 23:35:28 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:cfc728c1c5584d8e0ae69368fc9c34d54d72651355573ba42554c2469a0a6299`  
		Last Modified: Wed, 10 May 2017 16:41:01 GMT  
		Size: 2.0 MB (1967906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b749e72b24f9914e9c03f0cd76903382375d2080c19aacdb90e2a56267b64af7`  
		Last Modified: Thu, 11 May 2017 18:15:41 GMT  
		Size: 142.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0abdb8c9c36be26aa6f66e5496998f32a5ab79b3b65ce2ffe0abdf2c877ebbeb`  
		Last Modified: Thu, 11 May 2017 18:15:41 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2582819537b744558c7fba75a65d469b76a5eda8083d059c38eaca4c0792a98c`  
		Last Modified: Mon, 15 May 2017 21:39:08 GMT  
		Size: 12.7 MB (12686525 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb8a3b83da3b9346ed3eca97c1a53a99b4d5ed663a09a689b27861abce96e024`  
		Last Modified: Mon, 15 May 2017 21:39:05 GMT  
		Size: 7.1 KB (7062 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29bdb20ec3fe03059ca3124c40487daf5a775544fcb0774ea1ea348c3389e994`  
		Last Modified: Fri, 19 May 2017 23:41:39 GMT  
		Size: 145.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a64eb6fd8b12b5f911c40ef225c9381aefe97e62079e2a2a17171b13bb9655fd`  
		Last Modified: Fri, 19 May 2017 23:41:40 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:712cbc8a2d0a7b848ac3e248e427ea18ca14178e2c318ef9e4532f002098a92a`  
		Last Modified: Fri, 19 May 2017 23:41:40 GMT  
		Size: 1.8 KB (1787 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afc187c05586a548dec1bd69f08658e1b4c846f1e0df0771f8b28a2223cd3ce1`  
		Last Modified: Fri, 19 May 2017 23:41:40 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9-alpine`

```console
$ docker pull postgres@sha256:9076e9f6f9fbcd9f91a14597fcfc651f59ade4d41c7fda7e071fca4be00e50eb
```

-	Platforms:
	-	linux; amd64

### `postgres:9-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.7 MB (14663963 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4ddf1c7ef6b333121c2b8e69b08540f758f9786f211662ecf4efc4304b8cce43`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 10 May 2017 16:38:16 GMT
ADD file:63f63606d6e289eb607c90e31de81802258906712727e473a2898f0f1ae55bb5 in / 
# Wed, 10 May 2017 16:38:17 GMT
CMD ["/bin/sh"]
# Wed, 10 May 2017 22:44:19 GMT
RUN set -ex; 	postgresHome="$(getent passwd postgres)"; 	postgresHome="$(echo "$postgresHome" | cut -d: -f6)"; 	[ "$postgresHome" = '/var/lib/postgresql' ]; 	mkdir -p "$postgresHome"; 	chown -R postgres:postgres "$postgresHome"
# Wed, 10 May 2017 22:44:20 GMT
ENV LANG=en_US.utf8
# Wed, 10 May 2017 22:44:21 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 10 May 2017 22:44:22 GMT
ENV PG_MAJOR=9.6
# Mon, 15 May 2017 21:19:34 GMT
ENV PG_VERSION=9.6.3
# Mon, 15 May 2017 21:19:35 GMT
ENV PG_SHA256=1645b3736901f6d854e695a937389e68ff2066ce0cde9d73919d6ab7c995b9c6
# Mon, 15 May 2017 21:21:50 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl 		util-linux-dev 		zlib-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess "http://git.savannah.gnu.org/gitweb/?p=config.git;a=blob_plain;f=config.guess;hb=HEAD" 	&& wget -O config/config.sub "http://git.savannah.gnu.org/gitweb/?p=config.git;a=blob_plain;f=config.sub;hb=HEAD" 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Mon, 15 May 2017 21:21:51 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Fri, 19 May 2017 23:35:20 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 19 May 2017 23:35:20 GMT
ENV PATH=/usr/lib/postgresql/9.6/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 19 May 2017 23:35:21 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 19 May 2017 23:35:23 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 19 May 2017 23:35:24 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 19 May 2017 23:35:25 GMT
COPY file:0db93797e962937881947161a43da7695835a2b6d5ad1184d0886e35249b5e39 in /usr/local/bin/ 
# Fri, 19 May 2017 23:35:26 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 19 May 2017 23:35:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 19 May 2017 23:35:28 GMT
EXPOSE 5432/tcp
# Fri, 19 May 2017 23:35:28 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:cfc728c1c5584d8e0ae69368fc9c34d54d72651355573ba42554c2469a0a6299`  
		Last Modified: Wed, 10 May 2017 16:41:01 GMT  
		Size: 2.0 MB (1967906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b749e72b24f9914e9c03f0cd76903382375d2080c19aacdb90e2a56267b64af7`  
		Last Modified: Thu, 11 May 2017 18:15:41 GMT  
		Size: 142.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0abdb8c9c36be26aa6f66e5496998f32a5ab79b3b65ce2ffe0abdf2c877ebbeb`  
		Last Modified: Thu, 11 May 2017 18:15:41 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2582819537b744558c7fba75a65d469b76a5eda8083d059c38eaca4c0792a98c`  
		Last Modified: Mon, 15 May 2017 21:39:08 GMT  
		Size: 12.7 MB (12686525 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb8a3b83da3b9346ed3eca97c1a53a99b4d5ed663a09a689b27861abce96e024`  
		Last Modified: Mon, 15 May 2017 21:39:05 GMT  
		Size: 7.1 KB (7062 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29bdb20ec3fe03059ca3124c40487daf5a775544fcb0774ea1ea348c3389e994`  
		Last Modified: Fri, 19 May 2017 23:41:39 GMT  
		Size: 145.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a64eb6fd8b12b5f911c40ef225c9381aefe97e62079e2a2a17171b13bb9655fd`  
		Last Modified: Fri, 19 May 2017 23:41:40 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:712cbc8a2d0a7b848ac3e248e427ea18ca14178e2c318ef9e4532f002098a92a`  
		Last Modified: Fri, 19 May 2017 23:41:40 GMT  
		Size: 1.8 KB (1787 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afc187c05586a548dec1bd69f08658e1b4c846f1e0df0771f8b28a2223cd3ce1`  
		Last Modified: Fri, 19 May 2017 23:41:40 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:alpine`

```console
$ docker pull postgres@sha256:9076e9f6f9fbcd9f91a14597fcfc651f59ade4d41c7fda7e071fca4be00e50eb
```

-	Platforms:
	-	linux; amd64

### `postgres:alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.7 MB (14663963 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4ddf1c7ef6b333121c2b8e69b08540f758f9786f211662ecf4efc4304b8cce43`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 10 May 2017 16:38:16 GMT
ADD file:63f63606d6e289eb607c90e31de81802258906712727e473a2898f0f1ae55bb5 in / 
# Wed, 10 May 2017 16:38:17 GMT
CMD ["/bin/sh"]
# Wed, 10 May 2017 22:44:19 GMT
RUN set -ex; 	postgresHome="$(getent passwd postgres)"; 	postgresHome="$(echo "$postgresHome" | cut -d: -f6)"; 	[ "$postgresHome" = '/var/lib/postgresql' ]; 	mkdir -p "$postgresHome"; 	chown -R postgres:postgres "$postgresHome"
# Wed, 10 May 2017 22:44:20 GMT
ENV LANG=en_US.utf8
# Wed, 10 May 2017 22:44:21 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 10 May 2017 22:44:22 GMT
ENV PG_MAJOR=9.6
# Mon, 15 May 2017 21:19:34 GMT
ENV PG_VERSION=9.6.3
# Mon, 15 May 2017 21:19:35 GMT
ENV PG_SHA256=1645b3736901f6d854e695a937389e68ff2066ce0cde9d73919d6ab7c995b9c6
# Mon, 15 May 2017 21:21:50 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl 		util-linux-dev 		zlib-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess "http://git.savannah.gnu.org/gitweb/?p=config.git;a=blob_plain;f=config.guess;hb=HEAD" 	&& wget -O config/config.sub "http://git.savannah.gnu.org/gitweb/?p=config.git;a=blob_plain;f=config.sub;hb=HEAD" 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Mon, 15 May 2017 21:21:51 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Fri, 19 May 2017 23:35:20 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 19 May 2017 23:35:20 GMT
ENV PATH=/usr/lib/postgresql/9.6/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 19 May 2017 23:35:21 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 19 May 2017 23:35:23 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 19 May 2017 23:35:24 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 19 May 2017 23:35:25 GMT
COPY file:0db93797e962937881947161a43da7695835a2b6d5ad1184d0886e35249b5e39 in /usr/local/bin/ 
# Fri, 19 May 2017 23:35:26 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 19 May 2017 23:35:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 19 May 2017 23:35:28 GMT
EXPOSE 5432/tcp
# Fri, 19 May 2017 23:35:28 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:cfc728c1c5584d8e0ae69368fc9c34d54d72651355573ba42554c2469a0a6299`  
		Last Modified: Wed, 10 May 2017 16:41:01 GMT  
		Size: 2.0 MB (1967906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b749e72b24f9914e9c03f0cd76903382375d2080c19aacdb90e2a56267b64af7`  
		Last Modified: Thu, 11 May 2017 18:15:41 GMT  
		Size: 142.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0abdb8c9c36be26aa6f66e5496998f32a5ab79b3b65ce2ffe0abdf2c877ebbeb`  
		Last Modified: Thu, 11 May 2017 18:15:41 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2582819537b744558c7fba75a65d469b76a5eda8083d059c38eaca4c0792a98c`  
		Last Modified: Mon, 15 May 2017 21:39:08 GMT  
		Size: 12.7 MB (12686525 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb8a3b83da3b9346ed3eca97c1a53a99b4d5ed663a09a689b27861abce96e024`  
		Last Modified: Mon, 15 May 2017 21:39:05 GMT  
		Size: 7.1 KB (7062 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29bdb20ec3fe03059ca3124c40487daf5a775544fcb0774ea1ea348c3389e994`  
		Last Modified: Fri, 19 May 2017 23:41:39 GMT  
		Size: 145.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a64eb6fd8b12b5f911c40ef225c9381aefe97e62079e2a2a17171b13bb9655fd`  
		Last Modified: Fri, 19 May 2017 23:41:40 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:712cbc8a2d0a7b848ac3e248e427ea18ca14178e2c318ef9e4532f002098a92a`  
		Last Modified: Fri, 19 May 2017 23:41:40 GMT  
		Size: 1.8 KB (1787 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afc187c05586a548dec1bd69f08658e1b4c846f1e0df0771f8b28a2223cd3ce1`  
		Last Modified: Fri, 19 May 2017 23:41:40 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.5.7`

```console
$ docker pull postgres@sha256:1473bfc4dfea68d61ea28ace181c16fd3f39a11431e7f3bc864d8c73e1d015a3
```

-	Platforms:
	-	linux; amd64

### `postgres:9.5.7` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **103.8 MB (103818779 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:285433a9049db3a078f5fca26753fccda662775b8cd8637b79425471c03ebaec`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Wed, 10 May 2017 15:21:03 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Wed, 10 May 2017 15:21:04 GMT
ENV GOSU_VERSION=1.7
# Wed, 10 May 2017 15:21:23 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 10 May 2017 15:21:33 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Wed, 10 May 2017 15:21:34 GMT
ENV LANG=en_US.utf8
# Wed, 10 May 2017 15:21:35 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 10 May 2017 15:21:38 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 10 May 2017 15:26:07 GMT
ENV PG_MAJOR=9.5
# Mon, 15 May 2017 21:22:24 GMT
ENV PG_VERSION=9.5.7-1.pgdg80+1
# Mon, 15 May 2017 21:22:25 GMT
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main' $PG_MAJOR > /etc/apt/sources.list.d/pgdg.list
# Mon, 15 May 2017 21:23:09 GMT
RUN apt-get update 	&& apt-get install -y postgresql-common 	&& sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf 	&& apt-get install -y 		postgresql-$PG_MAJOR=$PG_VERSION 		postgresql-contrib-$PG_MAJOR=$PG_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Mon, 15 May 2017 21:23:11 GMT
RUN mv -v /usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample /usr/share/postgresql/$PG_MAJOR/ 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Fri, 19 May 2017 23:35:51 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 19 May 2017 23:35:52 GMT
ENV PATH=/usr/lib/postgresql/9.5/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 19 May 2017 23:35:53 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 19 May 2017 23:35:54 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 19 May 2017 23:35:55 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 19 May 2017 23:35:56 GMT
COPY file:80a75a207cb3d72777ff2cb8654a6d03754b58aed9199464284f3587637e1403 in /usr/local/bin/ 
# Fri, 19 May 2017 23:35:58 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 19 May 2017 23:35:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 19 May 2017 23:35:59 GMT
EXPOSE 5432/tcp
# Fri, 19 May 2017 23:36:00 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:10a267c67f423630f3afe5e04bbbc93d578861ddcc54283526222f3ad5e895b9`  
		Last Modified: Mon, 08 May 2017 23:43:59 GMT  
		Size: 52.6 MB (52584016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9a920522e337511674336d96c1c64887243444c12d3a4841cae1aebfd2191f8`  
		Last Modified: Thu, 11 May 2017 18:13:27 GMT  
		Size: 2.1 KB (2065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6888e696bd718215dfb98e6d92059fcb982308e23ffd12e120b741b496170602`  
		Last Modified: Thu, 11 May 2017 18:13:27 GMT  
		Size: 1.3 MB (1307723 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:798096eed143cbeb4c60f929e93b1835dc782c59296795892a80ea740072a6f5`  
		Last Modified: Thu, 11 May 2017 18:13:28 GMT  
		Size: 7.1 MB (7116767 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb58419959b59bd0f196e45992732e44ed1b1aea40fd7463532de1020e77a695`  
		Last Modified: Thu, 11 May 2017 18:13:24 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97f9ec09cb6847298a7bfe62bf7d0361cfe56117fbd7f16e3c754a774b6f977a`  
		Last Modified: Thu, 11 May 2017 18:13:24 GMT  
		Size: 4.5 KB (4489 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a3c81c4f1ea9f79bf735f91487217f7f125808ff3fb2a21e2db923de075f048`  
		Last Modified: Mon, 15 May 2017 21:40:43 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:948206ff7803806300df5b6d0c6d3f631a9fa48c99a1739d81f51b7e58523e52`  
		Last Modified: Mon, 15 May 2017 21:40:46 GMT  
		Size: 42.8 MB (42794351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1447edda3d552f330211ab8a8f429007e95afa0e8eadf6927767029b01e2d4d9`  
		Last Modified: Mon, 15 May 2017 21:40:40 GMT  
		Size: 6.8 KB (6817 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e356caad65586810dc2ae5777be5f13d47a9603ef489c02ccac6c0a258cbf3e`  
		Last Modified: Fri, 19 May 2017 23:43:13 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:549029a9fb4429ac5528f6f354face8b8e935590b134b1192b262e2f2866b01a`  
		Last Modified: Fri, 19 May 2017 23:43:13 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ce96c0fe15b6ea82928b2143a0e924e94d5b6de130da1171d62c83eee023503`  
		Last Modified: Fri, 19 May 2017 23:43:13 GMT  
		Size: 1.8 KB (1796 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:896b710098ab2d2f4fded9d9d17e82d717d2f72b8f36f66b25044d588043968a`  
		Last Modified: Fri, 19 May 2017 23:43:13 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.5`

```console
$ docker pull postgres@sha256:1473bfc4dfea68d61ea28ace181c16fd3f39a11431e7f3bc864d8c73e1d015a3
```

-	Platforms:
	-	linux; amd64

### `postgres:9.5` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **103.8 MB (103818779 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:285433a9049db3a078f5fca26753fccda662775b8cd8637b79425471c03ebaec`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Wed, 10 May 2017 15:21:03 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Wed, 10 May 2017 15:21:04 GMT
ENV GOSU_VERSION=1.7
# Wed, 10 May 2017 15:21:23 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 10 May 2017 15:21:33 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Wed, 10 May 2017 15:21:34 GMT
ENV LANG=en_US.utf8
# Wed, 10 May 2017 15:21:35 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 10 May 2017 15:21:38 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 10 May 2017 15:26:07 GMT
ENV PG_MAJOR=9.5
# Mon, 15 May 2017 21:22:24 GMT
ENV PG_VERSION=9.5.7-1.pgdg80+1
# Mon, 15 May 2017 21:22:25 GMT
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main' $PG_MAJOR > /etc/apt/sources.list.d/pgdg.list
# Mon, 15 May 2017 21:23:09 GMT
RUN apt-get update 	&& apt-get install -y postgresql-common 	&& sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf 	&& apt-get install -y 		postgresql-$PG_MAJOR=$PG_VERSION 		postgresql-contrib-$PG_MAJOR=$PG_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Mon, 15 May 2017 21:23:11 GMT
RUN mv -v /usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample /usr/share/postgresql/$PG_MAJOR/ 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Fri, 19 May 2017 23:35:51 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 19 May 2017 23:35:52 GMT
ENV PATH=/usr/lib/postgresql/9.5/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 19 May 2017 23:35:53 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 19 May 2017 23:35:54 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 19 May 2017 23:35:55 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 19 May 2017 23:35:56 GMT
COPY file:80a75a207cb3d72777ff2cb8654a6d03754b58aed9199464284f3587637e1403 in /usr/local/bin/ 
# Fri, 19 May 2017 23:35:58 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 19 May 2017 23:35:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 19 May 2017 23:35:59 GMT
EXPOSE 5432/tcp
# Fri, 19 May 2017 23:36:00 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:10a267c67f423630f3afe5e04bbbc93d578861ddcc54283526222f3ad5e895b9`  
		Last Modified: Mon, 08 May 2017 23:43:59 GMT  
		Size: 52.6 MB (52584016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9a920522e337511674336d96c1c64887243444c12d3a4841cae1aebfd2191f8`  
		Last Modified: Thu, 11 May 2017 18:13:27 GMT  
		Size: 2.1 KB (2065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6888e696bd718215dfb98e6d92059fcb982308e23ffd12e120b741b496170602`  
		Last Modified: Thu, 11 May 2017 18:13:27 GMT  
		Size: 1.3 MB (1307723 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:798096eed143cbeb4c60f929e93b1835dc782c59296795892a80ea740072a6f5`  
		Last Modified: Thu, 11 May 2017 18:13:28 GMT  
		Size: 7.1 MB (7116767 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb58419959b59bd0f196e45992732e44ed1b1aea40fd7463532de1020e77a695`  
		Last Modified: Thu, 11 May 2017 18:13:24 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97f9ec09cb6847298a7bfe62bf7d0361cfe56117fbd7f16e3c754a774b6f977a`  
		Last Modified: Thu, 11 May 2017 18:13:24 GMT  
		Size: 4.5 KB (4489 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a3c81c4f1ea9f79bf735f91487217f7f125808ff3fb2a21e2db923de075f048`  
		Last Modified: Mon, 15 May 2017 21:40:43 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:948206ff7803806300df5b6d0c6d3f631a9fa48c99a1739d81f51b7e58523e52`  
		Last Modified: Mon, 15 May 2017 21:40:46 GMT  
		Size: 42.8 MB (42794351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1447edda3d552f330211ab8a8f429007e95afa0e8eadf6927767029b01e2d4d9`  
		Last Modified: Mon, 15 May 2017 21:40:40 GMT  
		Size: 6.8 KB (6817 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e356caad65586810dc2ae5777be5f13d47a9603ef489c02ccac6c0a258cbf3e`  
		Last Modified: Fri, 19 May 2017 23:43:13 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:549029a9fb4429ac5528f6f354face8b8e935590b134b1192b262e2f2866b01a`  
		Last Modified: Fri, 19 May 2017 23:43:13 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ce96c0fe15b6ea82928b2143a0e924e94d5b6de130da1171d62c83eee023503`  
		Last Modified: Fri, 19 May 2017 23:43:13 GMT  
		Size: 1.8 KB (1796 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:896b710098ab2d2f4fded9d9d17e82d717d2f72b8f36f66b25044d588043968a`  
		Last Modified: Fri, 19 May 2017 23:43:13 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.5.7-alpine`

```console
$ docker pull postgres@sha256:07009ff4752cebf941926c9abcdc0b0bf5b4b5ae858581c845aa36328b1abf50
```

-	Platforms:
	-	linux; amd64

### `postgres:9.5.7-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.4 MB (14374404 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0d51cfc7c4d391db3572d4829b59b1478f020bf822b066d7de995687a07e119c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 10 May 2017 16:38:16 GMT
ADD file:63f63606d6e289eb607c90e31de81802258906712727e473a2898f0f1ae55bb5 in / 
# Wed, 10 May 2017 16:38:17 GMT
CMD ["/bin/sh"]
# Wed, 10 May 2017 22:44:19 GMT
RUN set -ex; 	postgresHome="$(getent passwd postgres)"; 	postgresHome="$(echo "$postgresHome" | cut -d: -f6)"; 	[ "$postgresHome" = '/var/lib/postgresql' ]; 	mkdir -p "$postgresHome"; 	chown -R postgres:postgres "$postgresHome"
# Wed, 10 May 2017 22:44:20 GMT
ENV LANG=en_US.utf8
# Wed, 10 May 2017 22:44:21 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 10 May 2017 22:54:06 GMT
ENV PG_MAJOR=9.5
# Mon, 15 May 2017 21:23:42 GMT
ENV PG_VERSION=9.5.7
# Mon, 15 May 2017 21:23:43 GMT
ENV PG_SHA256=8b1e936f82109325decc0f5575e846b93fb4fd384e8c4bde83ff5e7f87fc6cad
# Mon, 15 May 2017 21:26:00 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl 		util-linux-dev 		zlib-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess "http://git.savannah.gnu.org/gitweb/?p=config.git;a=blob_plain;f=config.guess;hb=HEAD" 	&& wget -O config/config.sub "http://git.savannah.gnu.org/gitweb/?p=config.git;a=blob_plain;f=config.sub;hb=HEAD" 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Mon, 15 May 2017 21:26:01 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Fri, 19 May 2017 23:36:23 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 19 May 2017 23:36:23 GMT
ENV PATH=/usr/lib/postgresql/9.5/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 19 May 2017 23:36:24 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 19 May 2017 23:36:26 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 19 May 2017 23:36:27 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 19 May 2017 23:36:28 GMT
COPY file:0db93797e962937881947161a43da7695835a2b6d5ad1184d0886e35249b5e39 in /usr/local/bin/ 
# Fri, 19 May 2017 23:36:29 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 19 May 2017 23:36:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 19 May 2017 23:36:31 GMT
EXPOSE 5432/tcp
# Fri, 19 May 2017 23:36:32 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:cfc728c1c5584d8e0ae69368fc9c34d54d72651355573ba42554c2469a0a6299`  
		Last Modified: Wed, 10 May 2017 16:41:01 GMT  
		Size: 2.0 MB (1967906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b749e72b24f9914e9c03f0cd76903382375d2080c19aacdb90e2a56267b64af7`  
		Last Modified: Thu, 11 May 2017 18:15:41 GMT  
		Size: 142.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0abdb8c9c36be26aa6f66e5496998f32a5ab79b3b65ce2ffe0abdf2c877ebbeb`  
		Last Modified: Thu, 11 May 2017 18:15:41 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09a7efb874894cf8db4f482a7c67beeee34fb0ddb005d64ed7a543496b9b8bf6`  
		Last Modified: Mon, 15 May 2017 21:41:42 GMT  
		Size: 12.4 MB (12397243 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87f05387695f20b8edd05452a75d65a4d0296c4977e426388d3bec87ccf293d7`  
		Last Modified: Mon, 15 May 2017 21:41:36 GMT  
		Size: 6.8 KB (6787 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a081dd966ec8e6a172fdea3dbde9dd02478fa76b7cb563ffc6959e211c5da04`  
		Last Modified: Fri, 19 May 2017 23:44:02 GMT  
		Size: 145.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d40e6e64ec6bd8bf86bd5e199a313185623872b7498815109ee6b7bfd73c22e`  
		Last Modified: Fri, 19 May 2017 23:44:02 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44572aca128e3fa5dad7b90c0a1a85f16db5f32d4eb3799d26e80a926c908274`  
		Last Modified: Fri, 19 May 2017 23:44:03 GMT  
		Size: 1.8 KB (1787 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a525932ed73446b31cd81d1cb19d80d6a338c3b3f8ac2a2044c6fb0adf80b7ed`  
		Last Modified: Fri, 19 May 2017 23:44:02 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.5-alpine`

```console
$ docker pull postgres@sha256:07009ff4752cebf941926c9abcdc0b0bf5b4b5ae858581c845aa36328b1abf50
```

-	Platforms:
	-	linux; amd64

### `postgres:9.5-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.4 MB (14374404 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0d51cfc7c4d391db3572d4829b59b1478f020bf822b066d7de995687a07e119c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 10 May 2017 16:38:16 GMT
ADD file:63f63606d6e289eb607c90e31de81802258906712727e473a2898f0f1ae55bb5 in / 
# Wed, 10 May 2017 16:38:17 GMT
CMD ["/bin/sh"]
# Wed, 10 May 2017 22:44:19 GMT
RUN set -ex; 	postgresHome="$(getent passwd postgres)"; 	postgresHome="$(echo "$postgresHome" | cut -d: -f6)"; 	[ "$postgresHome" = '/var/lib/postgresql' ]; 	mkdir -p "$postgresHome"; 	chown -R postgres:postgres "$postgresHome"
# Wed, 10 May 2017 22:44:20 GMT
ENV LANG=en_US.utf8
# Wed, 10 May 2017 22:44:21 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 10 May 2017 22:54:06 GMT
ENV PG_MAJOR=9.5
# Mon, 15 May 2017 21:23:42 GMT
ENV PG_VERSION=9.5.7
# Mon, 15 May 2017 21:23:43 GMT
ENV PG_SHA256=8b1e936f82109325decc0f5575e846b93fb4fd384e8c4bde83ff5e7f87fc6cad
# Mon, 15 May 2017 21:26:00 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl 		util-linux-dev 		zlib-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess "http://git.savannah.gnu.org/gitweb/?p=config.git;a=blob_plain;f=config.guess;hb=HEAD" 	&& wget -O config/config.sub "http://git.savannah.gnu.org/gitweb/?p=config.git;a=blob_plain;f=config.sub;hb=HEAD" 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Mon, 15 May 2017 21:26:01 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Fri, 19 May 2017 23:36:23 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 19 May 2017 23:36:23 GMT
ENV PATH=/usr/lib/postgresql/9.5/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 19 May 2017 23:36:24 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 19 May 2017 23:36:26 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 19 May 2017 23:36:27 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 19 May 2017 23:36:28 GMT
COPY file:0db93797e962937881947161a43da7695835a2b6d5ad1184d0886e35249b5e39 in /usr/local/bin/ 
# Fri, 19 May 2017 23:36:29 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 19 May 2017 23:36:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 19 May 2017 23:36:31 GMT
EXPOSE 5432/tcp
# Fri, 19 May 2017 23:36:32 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:cfc728c1c5584d8e0ae69368fc9c34d54d72651355573ba42554c2469a0a6299`  
		Last Modified: Wed, 10 May 2017 16:41:01 GMT  
		Size: 2.0 MB (1967906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b749e72b24f9914e9c03f0cd76903382375d2080c19aacdb90e2a56267b64af7`  
		Last Modified: Thu, 11 May 2017 18:15:41 GMT  
		Size: 142.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0abdb8c9c36be26aa6f66e5496998f32a5ab79b3b65ce2ffe0abdf2c877ebbeb`  
		Last Modified: Thu, 11 May 2017 18:15:41 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09a7efb874894cf8db4f482a7c67beeee34fb0ddb005d64ed7a543496b9b8bf6`  
		Last Modified: Mon, 15 May 2017 21:41:42 GMT  
		Size: 12.4 MB (12397243 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87f05387695f20b8edd05452a75d65a4d0296c4977e426388d3bec87ccf293d7`  
		Last Modified: Mon, 15 May 2017 21:41:36 GMT  
		Size: 6.8 KB (6787 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a081dd966ec8e6a172fdea3dbde9dd02478fa76b7cb563ffc6959e211c5da04`  
		Last Modified: Fri, 19 May 2017 23:44:02 GMT  
		Size: 145.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d40e6e64ec6bd8bf86bd5e199a313185623872b7498815109ee6b7bfd73c22e`  
		Last Modified: Fri, 19 May 2017 23:44:02 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44572aca128e3fa5dad7b90c0a1a85f16db5f32d4eb3799d26e80a926c908274`  
		Last Modified: Fri, 19 May 2017 23:44:03 GMT  
		Size: 1.8 KB (1787 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a525932ed73446b31cd81d1cb19d80d6a338c3b3f8ac2a2044c6fb0adf80b7ed`  
		Last Modified: Fri, 19 May 2017 23:44:02 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.4.12`

```console
$ docker pull postgres@sha256:6743b5df62f49988756e0d0cc7aca4c1bd07e4028f3a724e75ae7eac6d078d8d
```

-	Platforms:
	-	linux; amd64

### `postgres:9.4.12` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **103.5 MB (103486296 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6a9d1feea01bd566d9a42ab2b10ca446575469c7ee63f24c2a11cf32d3afef7e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Wed, 10 May 2017 15:21:03 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Wed, 10 May 2017 15:21:04 GMT
ENV GOSU_VERSION=1.7
# Wed, 10 May 2017 15:21:23 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 10 May 2017 15:21:33 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Wed, 10 May 2017 15:21:34 GMT
ENV LANG=en_US.utf8
# Wed, 10 May 2017 15:21:35 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 10 May 2017 15:21:38 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 10 May 2017 15:25:00 GMT
ENV PG_MAJOR=9.4
# Mon, 15 May 2017 21:26:33 GMT
ENV PG_VERSION=9.4.12-1.pgdg80+1
# Mon, 15 May 2017 21:26:35 GMT
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main' $PG_MAJOR > /etc/apt/sources.list.d/pgdg.list
# Mon, 15 May 2017 21:27:04 GMT
RUN apt-get update 	&& apt-get install -y postgresql-common 	&& sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf 	&& apt-get install -y 		postgresql-$PG_MAJOR=$PG_VERSION 		postgresql-contrib-$PG_MAJOR=$PG_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Mon, 15 May 2017 21:27:06 GMT
RUN mv -v /usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample /usr/share/postgresql/$PG_MAJOR/ 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Fri, 19 May 2017 23:36:54 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 19 May 2017 23:36:55 GMT
ENV PATH=/usr/lib/postgresql/9.4/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 19 May 2017 23:36:56 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 19 May 2017 23:36:57 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 19 May 2017 23:36:58 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 19 May 2017 23:36:59 GMT
COPY file:80a75a207cb3d72777ff2cb8654a6d03754b58aed9199464284f3587637e1403 in /usr/local/bin/ 
# Fri, 19 May 2017 23:37:01 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 19 May 2017 23:37:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 19 May 2017 23:37:02 GMT
EXPOSE 5432/tcp
# Fri, 19 May 2017 23:37:03 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:10a267c67f423630f3afe5e04bbbc93d578861ddcc54283526222f3ad5e895b9`  
		Last Modified: Mon, 08 May 2017 23:43:59 GMT  
		Size: 52.6 MB (52584016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9a920522e337511674336d96c1c64887243444c12d3a4841cae1aebfd2191f8`  
		Last Modified: Thu, 11 May 2017 18:13:27 GMT  
		Size: 2.1 KB (2065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6888e696bd718215dfb98e6d92059fcb982308e23ffd12e120b741b496170602`  
		Last Modified: Thu, 11 May 2017 18:13:27 GMT  
		Size: 1.3 MB (1307723 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:798096eed143cbeb4c60f929e93b1835dc782c59296795892a80ea740072a6f5`  
		Last Modified: Thu, 11 May 2017 18:13:28 GMT  
		Size: 7.1 MB (7116767 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb58419959b59bd0f196e45992732e44ed1b1aea40fd7463532de1020e77a695`  
		Last Modified: Thu, 11 May 2017 18:13:24 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97f9ec09cb6847298a7bfe62bf7d0361cfe56117fbd7f16e3c754a774b6f977a`  
		Last Modified: Thu, 11 May 2017 18:13:24 GMT  
		Size: 4.5 KB (4489 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94972b6e82a045810c391a768e82d9a1f82cd214090ce5ca135810b1c5c25dbc`  
		Last Modified: Mon, 15 May 2017 21:42:32 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a281bad165d7c1d9ced943ced4298c92625fe5b6d0024f017ad9525bfad5872e`  
		Last Modified: Mon, 15 May 2017 21:42:36 GMT  
		Size: 42.5 MB (42462009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:080dd452e4afcc91fcf8dc17f8681fc766d06c8d9456491f347145dc84391afe`  
		Last Modified: Mon, 15 May 2017 21:42:30 GMT  
		Size: 6.7 KB (6678 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c450db9c7685a0b9d43de68752e068688e5425411f786dc93ff4107c15672674`  
		Last Modified: Fri, 19 May 2017 23:44:52 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e913210284c67551af669afa091b6681e4d36cf25a180f1a857579ce79b2f195`  
		Last Modified: Fri, 19 May 2017 23:44:52 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f91d19ace04569b73f7a4c85edb040a0476f6ff458eb3bbdbdc6b07180c852f8`  
		Last Modified: Fri, 19 May 2017 23:44:52 GMT  
		Size: 1.8 KB (1796 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d032324a2b57b9896bafb88018f1aa1f4ee8d7d53f927c4b3cffd33d49112123`  
		Last Modified: Fri, 19 May 2017 23:44:53 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.4`

```console
$ docker pull postgres@sha256:6743b5df62f49988756e0d0cc7aca4c1bd07e4028f3a724e75ae7eac6d078d8d
```

-	Platforms:
	-	linux; amd64

### `postgres:9.4` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **103.5 MB (103486296 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6a9d1feea01bd566d9a42ab2b10ca446575469c7ee63f24c2a11cf32d3afef7e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Wed, 10 May 2017 15:21:03 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Wed, 10 May 2017 15:21:04 GMT
ENV GOSU_VERSION=1.7
# Wed, 10 May 2017 15:21:23 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 10 May 2017 15:21:33 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Wed, 10 May 2017 15:21:34 GMT
ENV LANG=en_US.utf8
# Wed, 10 May 2017 15:21:35 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 10 May 2017 15:21:38 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 10 May 2017 15:25:00 GMT
ENV PG_MAJOR=9.4
# Mon, 15 May 2017 21:26:33 GMT
ENV PG_VERSION=9.4.12-1.pgdg80+1
# Mon, 15 May 2017 21:26:35 GMT
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main' $PG_MAJOR > /etc/apt/sources.list.d/pgdg.list
# Mon, 15 May 2017 21:27:04 GMT
RUN apt-get update 	&& apt-get install -y postgresql-common 	&& sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf 	&& apt-get install -y 		postgresql-$PG_MAJOR=$PG_VERSION 		postgresql-contrib-$PG_MAJOR=$PG_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Mon, 15 May 2017 21:27:06 GMT
RUN mv -v /usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample /usr/share/postgresql/$PG_MAJOR/ 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Fri, 19 May 2017 23:36:54 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 19 May 2017 23:36:55 GMT
ENV PATH=/usr/lib/postgresql/9.4/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 19 May 2017 23:36:56 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 19 May 2017 23:36:57 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 19 May 2017 23:36:58 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 19 May 2017 23:36:59 GMT
COPY file:80a75a207cb3d72777ff2cb8654a6d03754b58aed9199464284f3587637e1403 in /usr/local/bin/ 
# Fri, 19 May 2017 23:37:01 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 19 May 2017 23:37:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 19 May 2017 23:37:02 GMT
EXPOSE 5432/tcp
# Fri, 19 May 2017 23:37:03 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:10a267c67f423630f3afe5e04bbbc93d578861ddcc54283526222f3ad5e895b9`  
		Last Modified: Mon, 08 May 2017 23:43:59 GMT  
		Size: 52.6 MB (52584016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9a920522e337511674336d96c1c64887243444c12d3a4841cae1aebfd2191f8`  
		Last Modified: Thu, 11 May 2017 18:13:27 GMT  
		Size: 2.1 KB (2065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6888e696bd718215dfb98e6d92059fcb982308e23ffd12e120b741b496170602`  
		Last Modified: Thu, 11 May 2017 18:13:27 GMT  
		Size: 1.3 MB (1307723 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:798096eed143cbeb4c60f929e93b1835dc782c59296795892a80ea740072a6f5`  
		Last Modified: Thu, 11 May 2017 18:13:28 GMT  
		Size: 7.1 MB (7116767 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb58419959b59bd0f196e45992732e44ed1b1aea40fd7463532de1020e77a695`  
		Last Modified: Thu, 11 May 2017 18:13:24 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97f9ec09cb6847298a7bfe62bf7d0361cfe56117fbd7f16e3c754a774b6f977a`  
		Last Modified: Thu, 11 May 2017 18:13:24 GMT  
		Size: 4.5 KB (4489 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94972b6e82a045810c391a768e82d9a1f82cd214090ce5ca135810b1c5c25dbc`  
		Last Modified: Mon, 15 May 2017 21:42:32 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a281bad165d7c1d9ced943ced4298c92625fe5b6d0024f017ad9525bfad5872e`  
		Last Modified: Mon, 15 May 2017 21:42:36 GMT  
		Size: 42.5 MB (42462009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:080dd452e4afcc91fcf8dc17f8681fc766d06c8d9456491f347145dc84391afe`  
		Last Modified: Mon, 15 May 2017 21:42:30 GMT  
		Size: 6.7 KB (6678 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c450db9c7685a0b9d43de68752e068688e5425411f786dc93ff4107c15672674`  
		Last Modified: Fri, 19 May 2017 23:44:52 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e913210284c67551af669afa091b6681e4d36cf25a180f1a857579ce79b2f195`  
		Last Modified: Fri, 19 May 2017 23:44:52 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f91d19ace04569b73f7a4c85edb040a0476f6ff458eb3bbdbdc6b07180c852f8`  
		Last Modified: Fri, 19 May 2017 23:44:52 GMT  
		Size: 1.8 KB (1796 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d032324a2b57b9896bafb88018f1aa1f4ee8d7d53f927c4b3cffd33d49112123`  
		Last Modified: Fri, 19 May 2017 23:44:53 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.4.12-alpine`

```console
$ docker pull postgres@sha256:04298c839a6f35f0101dcc0198eebd12696a55b3a2e9529a45d23a2bc45f99b6
```

-	Platforms:
	-	linux; amd64

### `postgres:9.4.12-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.2 MB (14240143 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:631feb428653276fe116cab42dd6af767d6f1da7f8fb36ea67b660b35f572fbb`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 10 May 2017 16:38:16 GMT
ADD file:63f63606d6e289eb607c90e31de81802258906712727e473a2898f0f1ae55bb5 in / 
# Wed, 10 May 2017 16:38:17 GMT
CMD ["/bin/sh"]
# Wed, 10 May 2017 22:44:19 GMT
RUN set -ex; 	postgresHome="$(getent passwd postgres)"; 	postgresHome="$(echo "$postgresHome" | cut -d: -f6)"; 	[ "$postgresHome" = '/var/lib/postgresql' ]; 	mkdir -p "$postgresHome"; 	chown -R postgres:postgres "$postgresHome"
# Wed, 10 May 2017 22:44:20 GMT
ENV LANG=en_US.utf8
# Wed, 10 May 2017 22:44:21 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 10 May 2017 22:51:46 GMT
ENV PG_MAJOR=9.4
# Mon, 15 May 2017 21:27:37 GMT
ENV PG_VERSION=9.4.12
# Mon, 15 May 2017 21:27:38 GMT
ENV PG_SHA256=fca055481875d1c49e31c28443f56472a1474b3fbe25b7ae64440c6118f82e64
# Mon, 15 May 2017 21:29:36 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl 		util-linux-dev 		zlib-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess "http://git.savannah.gnu.org/gitweb/?p=config.git;a=blob_plain;f=config.guess;hb=HEAD" 	&& wget -O config/config.sub "http://git.savannah.gnu.org/gitweb/?p=config.git;a=blob_plain;f=config.sub;hb=HEAD" 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Mon, 15 May 2017 21:29:38 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Fri, 19 May 2017 23:37:26 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 19 May 2017 23:37:27 GMT
ENV PATH=/usr/lib/postgresql/9.4/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 19 May 2017 23:37:27 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 19 May 2017 23:37:29 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 19 May 2017 23:37:30 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 19 May 2017 23:37:31 GMT
COPY file:0db93797e962937881947161a43da7695835a2b6d5ad1184d0886e35249b5e39 in /usr/local/bin/ 
# Fri, 19 May 2017 23:37:32 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 19 May 2017 23:37:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 19 May 2017 23:37:34 GMT
EXPOSE 5432/tcp
# Fri, 19 May 2017 23:37:34 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:cfc728c1c5584d8e0ae69368fc9c34d54d72651355573ba42554c2469a0a6299`  
		Last Modified: Wed, 10 May 2017 16:41:01 GMT  
		Size: 2.0 MB (1967906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b749e72b24f9914e9c03f0cd76903382375d2080c19aacdb90e2a56267b64af7`  
		Last Modified: Thu, 11 May 2017 18:15:41 GMT  
		Size: 142.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0abdb8c9c36be26aa6f66e5496998f32a5ab79b3b65ce2ffe0abdf2c877ebbeb`  
		Last Modified: Thu, 11 May 2017 18:15:41 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b12ffabf833483b37630a04c57a6e7844d8b4efcc9ef6180d62ed7c5a4f6d3b`  
		Last Modified: Mon, 15 May 2017 21:43:28 GMT  
		Size: 12.3 MB (12263123 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ba2e18fbf7bc0208403eaa9affec300d218c5d3351a7a856d32158ef97f8618`  
		Last Modified: Mon, 15 May 2017 21:43:26 GMT  
		Size: 6.6 KB (6646 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d50359261792e52dae5a0cebdf3ce356cbed8ec75fee25e1bb216b91bd19aa05`  
		Last Modified: Fri, 19 May 2017 23:45:44 GMT  
		Size: 145.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:292abfb1c290c11eeda005315729fa91678730318fac571a7c39b58f06d1792b`  
		Last Modified: Fri, 19 May 2017 23:45:44 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abba6cc961edd8cc8d6edd8e49356f9e92c4fd0e867d662443d75c32cd3a92df`  
		Last Modified: Fri, 19 May 2017 23:45:44 GMT  
		Size: 1.8 KB (1787 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d09f129c9de184212eac013d7a0d1baef77f24ee5fc8ccc1a709dbba67b8162a`  
		Last Modified: Fri, 19 May 2017 23:45:44 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.4-alpine`

```console
$ docker pull postgres@sha256:04298c839a6f35f0101dcc0198eebd12696a55b3a2e9529a45d23a2bc45f99b6
```

-	Platforms:
	-	linux; amd64

### `postgres:9.4-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.2 MB (14240143 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:631feb428653276fe116cab42dd6af767d6f1da7f8fb36ea67b660b35f572fbb`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 10 May 2017 16:38:16 GMT
ADD file:63f63606d6e289eb607c90e31de81802258906712727e473a2898f0f1ae55bb5 in / 
# Wed, 10 May 2017 16:38:17 GMT
CMD ["/bin/sh"]
# Wed, 10 May 2017 22:44:19 GMT
RUN set -ex; 	postgresHome="$(getent passwd postgres)"; 	postgresHome="$(echo "$postgresHome" | cut -d: -f6)"; 	[ "$postgresHome" = '/var/lib/postgresql' ]; 	mkdir -p "$postgresHome"; 	chown -R postgres:postgres "$postgresHome"
# Wed, 10 May 2017 22:44:20 GMT
ENV LANG=en_US.utf8
# Wed, 10 May 2017 22:44:21 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 10 May 2017 22:51:46 GMT
ENV PG_MAJOR=9.4
# Mon, 15 May 2017 21:27:37 GMT
ENV PG_VERSION=9.4.12
# Mon, 15 May 2017 21:27:38 GMT
ENV PG_SHA256=fca055481875d1c49e31c28443f56472a1474b3fbe25b7ae64440c6118f82e64
# Mon, 15 May 2017 21:29:36 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl 		util-linux-dev 		zlib-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess "http://git.savannah.gnu.org/gitweb/?p=config.git;a=blob_plain;f=config.guess;hb=HEAD" 	&& wget -O config/config.sub "http://git.savannah.gnu.org/gitweb/?p=config.git;a=blob_plain;f=config.sub;hb=HEAD" 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Mon, 15 May 2017 21:29:38 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Fri, 19 May 2017 23:37:26 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 19 May 2017 23:37:27 GMT
ENV PATH=/usr/lib/postgresql/9.4/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 19 May 2017 23:37:27 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 19 May 2017 23:37:29 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 19 May 2017 23:37:30 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 19 May 2017 23:37:31 GMT
COPY file:0db93797e962937881947161a43da7695835a2b6d5ad1184d0886e35249b5e39 in /usr/local/bin/ 
# Fri, 19 May 2017 23:37:32 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 19 May 2017 23:37:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 19 May 2017 23:37:34 GMT
EXPOSE 5432/tcp
# Fri, 19 May 2017 23:37:34 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:cfc728c1c5584d8e0ae69368fc9c34d54d72651355573ba42554c2469a0a6299`  
		Last Modified: Wed, 10 May 2017 16:41:01 GMT  
		Size: 2.0 MB (1967906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b749e72b24f9914e9c03f0cd76903382375d2080c19aacdb90e2a56267b64af7`  
		Last Modified: Thu, 11 May 2017 18:15:41 GMT  
		Size: 142.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0abdb8c9c36be26aa6f66e5496998f32a5ab79b3b65ce2ffe0abdf2c877ebbeb`  
		Last Modified: Thu, 11 May 2017 18:15:41 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b12ffabf833483b37630a04c57a6e7844d8b4efcc9ef6180d62ed7c5a4f6d3b`  
		Last Modified: Mon, 15 May 2017 21:43:28 GMT  
		Size: 12.3 MB (12263123 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ba2e18fbf7bc0208403eaa9affec300d218c5d3351a7a856d32158ef97f8618`  
		Last Modified: Mon, 15 May 2017 21:43:26 GMT  
		Size: 6.6 KB (6646 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d50359261792e52dae5a0cebdf3ce356cbed8ec75fee25e1bb216b91bd19aa05`  
		Last Modified: Fri, 19 May 2017 23:45:44 GMT  
		Size: 145.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:292abfb1c290c11eeda005315729fa91678730318fac571a7c39b58f06d1792b`  
		Last Modified: Fri, 19 May 2017 23:45:44 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abba6cc961edd8cc8d6edd8e49356f9e92c4fd0e867d662443d75c32cd3a92df`  
		Last Modified: Fri, 19 May 2017 23:45:44 GMT  
		Size: 1.8 KB (1787 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d09f129c9de184212eac013d7a0d1baef77f24ee5fc8ccc1a709dbba67b8162a`  
		Last Modified: Fri, 19 May 2017 23:45:44 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.3.17`

```console
$ docker pull postgres@sha256:40e5770cbed93056852a4276c75c954f570d2972eaf7ead931d7d5defc901517
```

-	Platforms:
	-	linux; amd64

### `postgres:9.3.17` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **103.1 MB (103130959 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0dd7d39ff91b9f9833155afd50f357d876da9891bf5b1f69363177124c23de86`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Wed, 10 May 2017 15:21:03 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Wed, 10 May 2017 15:21:04 GMT
ENV GOSU_VERSION=1.7
# Wed, 10 May 2017 15:21:23 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 10 May 2017 15:21:33 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Wed, 10 May 2017 15:21:34 GMT
ENV LANG=en_US.utf8
# Wed, 10 May 2017 15:21:35 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 10 May 2017 15:21:38 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 10 May 2017 15:23:54 GMT
ENV PG_MAJOR=9.3
# Mon, 15 May 2017 21:30:09 GMT
ENV PG_VERSION=9.3.17-1.pgdg80+1
# Mon, 15 May 2017 21:30:11 GMT
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main' $PG_MAJOR > /etc/apt/sources.list.d/pgdg.list
# Mon, 15 May 2017 21:30:42 GMT
RUN apt-get update 	&& apt-get install -y postgresql-common 	&& sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf 	&& apt-get install -y 		postgresql-$PG_MAJOR=$PG_VERSION 		postgresql-contrib-$PG_MAJOR=$PG_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Mon, 15 May 2017 21:30:43 GMT
RUN mv -v /usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample /usr/share/postgresql/$PG_MAJOR/ 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Fri, 19 May 2017 23:37:57 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 19 May 2017 23:37:57 GMT
ENV PATH=/usr/lib/postgresql/9.3/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 19 May 2017 23:37:58 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 19 May 2017 23:38:00 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 19 May 2017 23:38:00 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 19 May 2017 23:38:02 GMT
COPY file:80a75a207cb3d72777ff2cb8654a6d03754b58aed9199464284f3587637e1403 in /usr/local/bin/ 
# Fri, 19 May 2017 23:38:03 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 19 May 2017 23:38:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 19 May 2017 23:38:05 GMT
EXPOSE 5432/tcp
# Fri, 19 May 2017 23:38:05 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:10a267c67f423630f3afe5e04bbbc93d578861ddcc54283526222f3ad5e895b9`  
		Last Modified: Mon, 08 May 2017 23:43:59 GMT  
		Size: 52.6 MB (52584016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9a920522e337511674336d96c1c64887243444c12d3a4841cae1aebfd2191f8`  
		Last Modified: Thu, 11 May 2017 18:13:27 GMT  
		Size: 2.1 KB (2065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6888e696bd718215dfb98e6d92059fcb982308e23ffd12e120b741b496170602`  
		Last Modified: Thu, 11 May 2017 18:13:27 GMT  
		Size: 1.3 MB (1307723 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:798096eed143cbeb4c60f929e93b1835dc782c59296795892a80ea740072a6f5`  
		Last Modified: Thu, 11 May 2017 18:13:28 GMT  
		Size: 7.1 MB (7116767 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb58419959b59bd0f196e45992732e44ed1b1aea40fd7463532de1020e77a695`  
		Last Modified: Thu, 11 May 2017 18:13:24 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97f9ec09cb6847298a7bfe62bf7d0361cfe56117fbd7f16e3c754a774b6f977a`  
		Last Modified: Thu, 11 May 2017 18:13:24 GMT  
		Size: 4.5 KB (4489 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16c182f44343b05be6386e7de58aa9fe7c131938bd60bbce616a754541a31aa0`  
		Last Modified: Mon, 15 May 2017 21:44:20 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21649515ad3876cc16b2cec81b16037a186736bad99273612c8b1c776475ef13`  
		Last Modified: Mon, 15 May 2017 21:44:24 GMT  
		Size: 42.1 MB (42106851 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2e8a956ee9c1380edb3283cdfc1438e5c95c3a102baad43df50837acf4b79f5`  
		Last Modified: Mon, 15 May 2017 21:44:17 GMT  
		Size: 6.5 KB (6496 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea1bf85d85ec9d89be40f47e8f40f80ba8ee5e6bee88a65ab98fdf2619777749`  
		Last Modified: Fri, 19 May 2017 23:46:33 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc77b875ff25a07b698a9c4bf23c0fdc03d42e6250497429b58994b25fc40fc4`  
		Last Modified: Fri, 19 May 2017 23:46:34 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07b92958d655c236c62b7e00eeb2699ca7ceafa7ee77eed5df79a99affb1fc95`  
		Last Modified: Fri, 19 May 2017 23:46:35 GMT  
		Size: 1.8 KB (1797 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f27a11d3392e9033ee631130198be33470313c6d380bf78a40b2e260f4a07175`  
		Last Modified: Fri, 19 May 2017 23:46:33 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.3`

```console
$ docker pull postgres@sha256:40e5770cbed93056852a4276c75c954f570d2972eaf7ead931d7d5defc901517
```

-	Platforms:
	-	linux; amd64

### `postgres:9.3` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **103.1 MB (103130959 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0dd7d39ff91b9f9833155afd50f357d876da9891bf5b1f69363177124c23de86`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Wed, 10 May 2017 15:21:03 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Wed, 10 May 2017 15:21:04 GMT
ENV GOSU_VERSION=1.7
# Wed, 10 May 2017 15:21:23 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 10 May 2017 15:21:33 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Wed, 10 May 2017 15:21:34 GMT
ENV LANG=en_US.utf8
# Wed, 10 May 2017 15:21:35 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 10 May 2017 15:21:38 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 10 May 2017 15:23:54 GMT
ENV PG_MAJOR=9.3
# Mon, 15 May 2017 21:30:09 GMT
ENV PG_VERSION=9.3.17-1.pgdg80+1
# Mon, 15 May 2017 21:30:11 GMT
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main' $PG_MAJOR > /etc/apt/sources.list.d/pgdg.list
# Mon, 15 May 2017 21:30:42 GMT
RUN apt-get update 	&& apt-get install -y postgresql-common 	&& sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf 	&& apt-get install -y 		postgresql-$PG_MAJOR=$PG_VERSION 		postgresql-contrib-$PG_MAJOR=$PG_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Mon, 15 May 2017 21:30:43 GMT
RUN mv -v /usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample /usr/share/postgresql/$PG_MAJOR/ 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Fri, 19 May 2017 23:37:57 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 19 May 2017 23:37:57 GMT
ENV PATH=/usr/lib/postgresql/9.3/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 19 May 2017 23:37:58 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 19 May 2017 23:38:00 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 19 May 2017 23:38:00 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 19 May 2017 23:38:02 GMT
COPY file:80a75a207cb3d72777ff2cb8654a6d03754b58aed9199464284f3587637e1403 in /usr/local/bin/ 
# Fri, 19 May 2017 23:38:03 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 19 May 2017 23:38:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 19 May 2017 23:38:05 GMT
EXPOSE 5432/tcp
# Fri, 19 May 2017 23:38:05 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:10a267c67f423630f3afe5e04bbbc93d578861ddcc54283526222f3ad5e895b9`  
		Last Modified: Mon, 08 May 2017 23:43:59 GMT  
		Size: 52.6 MB (52584016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9a920522e337511674336d96c1c64887243444c12d3a4841cae1aebfd2191f8`  
		Last Modified: Thu, 11 May 2017 18:13:27 GMT  
		Size: 2.1 KB (2065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6888e696bd718215dfb98e6d92059fcb982308e23ffd12e120b741b496170602`  
		Last Modified: Thu, 11 May 2017 18:13:27 GMT  
		Size: 1.3 MB (1307723 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:798096eed143cbeb4c60f929e93b1835dc782c59296795892a80ea740072a6f5`  
		Last Modified: Thu, 11 May 2017 18:13:28 GMT  
		Size: 7.1 MB (7116767 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb58419959b59bd0f196e45992732e44ed1b1aea40fd7463532de1020e77a695`  
		Last Modified: Thu, 11 May 2017 18:13:24 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97f9ec09cb6847298a7bfe62bf7d0361cfe56117fbd7f16e3c754a774b6f977a`  
		Last Modified: Thu, 11 May 2017 18:13:24 GMT  
		Size: 4.5 KB (4489 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16c182f44343b05be6386e7de58aa9fe7c131938bd60bbce616a754541a31aa0`  
		Last Modified: Mon, 15 May 2017 21:44:20 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21649515ad3876cc16b2cec81b16037a186736bad99273612c8b1c776475ef13`  
		Last Modified: Mon, 15 May 2017 21:44:24 GMT  
		Size: 42.1 MB (42106851 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2e8a956ee9c1380edb3283cdfc1438e5c95c3a102baad43df50837acf4b79f5`  
		Last Modified: Mon, 15 May 2017 21:44:17 GMT  
		Size: 6.5 KB (6496 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea1bf85d85ec9d89be40f47e8f40f80ba8ee5e6bee88a65ab98fdf2619777749`  
		Last Modified: Fri, 19 May 2017 23:46:33 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc77b875ff25a07b698a9c4bf23c0fdc03d42e6250497429b58994b25fc40fc4`  
		Last Modified: Fri, 19 May 2017 23:46:34 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07b92958d655c236c62b7e00eeb2699ca7ceafa7ee77eed5df79a99affb1fc95`  
		Last Modified: Fri, 19 May 2017 23:46:35 GMT  
		Size: 1.8 KB (1797 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f27a11d3392e9033ee631130198be33470313c6d380bf78a40b2e260f4a07175`  
		Last Modified: Fri, 19 May 2017 23:46:33 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.3.17-alpine`

```console
$ docker pull postgres@sha256:b3311189c041dff9b6cc4d99e3a669221a56fa4b6f51f3faaf672311922f90ba
```

-	Platforms:
	-	linux; amd64

### `postgres:9.3.17-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.0 MB (13950755 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:46fcc27bf33456ec6168f9bf36dceb0c1329d8bbab2074cfde5a2d9ef030e8a2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 10 May 2017 16:38:16 GMT
ADD file:63f63606d6e289eb607c90e31de81802258906712727e473a2898f0f1ae55bb5 in / 
# Wed, 10 May 2017 16:38:17 GMT
CMD ["/bin/sh"]
# Wed, 10 May 2017 22:44:19 GMT
RUN set -ex; 	postgresHome="$(getent passwd postgres)"; 	postgresHome="$(echo "$postgresHome" | cut -d: -f6)"; 	[ "$postgresHome" = '/var/lib/postgresql' ]; 	mkdir -p "$postgresHome"; 	chown -R postgres:postgres "$postgresHome"
# Wed, 10 May 2017 22:44:20 GMT
ENV LANG=en_US.utf8
# Wed, 10 May 2017 22:44:21 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 10 May 2017 22:49:22 GMT
ENV PG_MAJOR=9.3
# Mon, 15 May 2017 21:31:14 GMT
ENV PG_VERSION=9.3.17
# Mon, 15 May 2017 21:31:15 GMT
ENV PG_SHA256=9c03e5f280cfe9bd202fa01af773eb146abd8ab3065f7279d574c568f6948dbe
# Mon, 15 May 2017 21:31:16 GMT
ENV OSSP_UUID_VERSION=1.6.2
# Mon, 15 May 2017 21:31:17 GMT
ENV OSSP_UUID_SHA256=11a615225baa5f8bb686824423f50e4427acd3f70d394765bdff32801f0fd5b0
# Mon, 15 May 2017 21:33:16 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl 		util-linux-dev 		zlib-dev 		&& wget -O uuid.tar.gz "https://www.mirrorservice.org/sites/ftp.ossp.org/pkg/lib/uuid/uuid-$OSSP_UUID_VERSION.tar.gz" 	&& echo "$OSSP_UUID_SHA256 *uuid.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/ossp-uuid 	&& tar 		--extract 		--file uuid.tar.gz 		--directory /usr/src/ossp-uuid 		--strip-components 1 	&& rm uuid.tar.gz 	&& ( 		cd /usr/src/ossp-uuid 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		&& wget -O config.guess "http://git.savannah.gnu.org/gitweb/?p=config.git;a=blob_plain;f=config.guess;hb=HEAD" 		&& wget -O config.sub "http://git.savannah.gnu.org/gitweb/?p=config.git;a=blob_plain;f=config.sub;hb=HEAD" 		&& ./configure 			--build="$gnuArch" 			--prefix=/usr/local 		&& make -j "$(nproc)" 		&& make install 	) 	&& rm -rf /usr/src/ossp-uuid 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess "http://git.savannah.gnu.org/gitweb/?p=config.git;a=blob_plain;f=config.guess;hb=HEAD" 	&& wget -O config/config.sub "http://git.savannah.gnu.org/gitweb/?p=config.git;a=blob_plain;f=config.sub;hb=HEAD" 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--disable-rpath 		--with-ossp-uuid 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Mon, 15 May 2017 21:33:18 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Fri, 19 May 2017 23:38:28 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 19 May 2017 23:38:29 GMT
ENV PATH=/usr/lib/postgresql/9.3/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 19 May 2017 23:38:30 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 19 May 2017 23:38:31 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 19 May 2017 23:38:32 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 19 May 2017 23:38:33 GMT
COPY file:0db93797e962937881947161a43da7695835a2b6d5ad1184d0886e35249b5e39 in /usr/local/bin/ 
# Fri, 19 May 2017 23:38:34 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 19 May 2017 23:38:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 19 May 2017 23:38:36 GMT
EXPOSE 5432/tcp
# Fri, 19 May 2017 23:38:37 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:cfc728c1c5584d8e0ae69368fc9c34d54d72651355573ba42554c2469a0a6299`  
		Last Modified: Wed, 10 May 2017 16:41:01 GMT  
		Size: 2.0 MB (1967906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b749e72b24f9914e9c03f0cd76903382375d2080c19aacdb90e2a56267b64af7`  
		Last Modified: Thu, 11 May 2017 18:15:41 GMT  
		Size: 142.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0abdb8c9c36be26aa6f66e5496998f32a5ab79b3b65ce2ffe0abdf2c877ebbeb`  
		Last Modified: Thu, 11 May 2017 18:15:41 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d472c8fadae5c3d8454730ea74dffa9eb9396405fe7c271f7045ac33ab388e6c`  
		Last Modified: Mon, 15 May 2017 21:45:16 GMT  
		Size: 12.0 MB (11973917 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8538b3a63edac3f0faf9f5dda4057b0d384497d0bba13429f9b0133f5f8abba`  
		Last Modified: Mon, 15 May 2017 21:45:14 GMT  
		Size: 6.5 KB (6463 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93f66c7778a1fa1c2b6b87b539c59c0ad10eb15dffcd8f8b66e6b8daac2e016e`  
		Last Modified: Fri, 19 May 2017 23:47:24 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3571d3a6efcc6deb6f3defa1cb3183c222c9c7f19572b538f1d2a73f529fdeaf`  
		Last Modified: Fri, 19 May 2017 23:47:24 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f55ec97991d4c339e44bb980f7dd9a3d5e44e61f150e15aba31d445322ea7637`  
		Last Modified: Fri, 19 May 2017 23:47:25 GMT  
		Size: 1.8 KB (1785 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3486acc0846c99f04945671a97b457e6a9fcf8a2c0ae619be33683b209d879d2`  
		Last Modified: Fri, 19 May 2017 23:47:25 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.3-alpine`

```console
$ docker pull postgres@sha256:b3311189c041dff9b6cc4d99e3a669221a56fa4b6f51f3faaf672311922f90ba
```

-	Platforms:
	-	linux; amd64

### `postgres:9.3-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.0 MB (13950755 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:46fcc27bf33456ec6168f9bf36dceb0c1329d8bbab2074cfde5a2d9ef030e8a2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 10 May 2017 16:38:16 GMT
ADD file:63f63606d6e289eb607c90e31de81802258906712727e473a2898f0f1ae55bb5 in / 
# Wed, 10 May 2017 16:38:17 GMT
CMD ["/bin/sh"]
# Wed, 10 May 2017 22:44:19 GMT
RUN set -ex; 	postgresHome="$(getent passwd postgres)"; 	postgresHome="$(echo "$postgresHome" | cut -d: -f6)"; 	[ "$postgresHome" = '/var/lib/postgresql' ]; 	mkdir -p "$postgresHome"; 	chown -R postgres:postgres "$postgresHome"
# Wed, 10 May 2017 22:44:20 GMT
ENV LANG=en_US.utf8
# Wed, 10 May 2017 22:44:21 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 10 May 2017 22:49:22 GMT
ENV PG_MAJOR=9.3
# Mon, 15 May 2017 21:31:14 GMT
ENV PG_VERSION=9.3.17
# Mon, 15 May 2017 21:31:15 GMT
ENV PG_SHA256=9c03e5f280cfe9bd202fa01af773eb146abd8ab3065f7279d574c568f6948dbe
# Mon, 15 May 2017 21:31:16 GMT
ENV OSSP_UUID_VERSION=1.6.2
# Mon, 15 May 2017 21:31:17 GMT
ENV OSSP_UUID_SHA256=11a615225baa5f8bb686824423f50e4427acd3f70d394765bdff32801f0fd5b0
# Mon, 15 May 2017 21:33:16 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl 		util-linux-dev 		zlib-dev 		&& wget -O uuid.tar.gz "https://www.mirrorservice.org/sites/ftp.ossp.org/pkg/lib/uuid/uuid-$OSSP_UUID_VERSION.tar.gz" 	&& echo "$OSSP_UUID_SHA256 *uuid.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/ossp-uuid 	&& tar 		--extract 		--file uuid.tar.gz 		--directory /usr/src/ossp-uuid 		--strip-components 1 	&& rm uuid.tar.gz 	&& ( 		cd /usr/src/ossp-uuid 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		&& wget -O config.guess "http://git.savannah.gnu.org/gitweb/?p=config.git;a=blob_plain;f=config.guess;hb=HEAD" 		&& wget -O config.sub "http://git.savannah.gnu.org/gitweb/?p=config.git;a=blob_plain;f=config.sub;hb=HEAD" 		&& ./configure 			--build="$gnuArch" 			--prefix=/usr/local 		&& make -j "$(nproc)" 		&& make install 	) 	&& rm -rf /usr/src/ossp-uuid 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess "http://git.savannah.gnu.org/gitweb/?p=config.git;a=blob_plain;f=config.guess;hb=HEAD" 	&& wget -O config/config.sub "http://git.savannah.gnu.org/gitweb/?p=config.git;a=blob_plain;f=config.sub;hb=HEAD" 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--disable-rpath 		--with-ossp-uuid 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Mon, 15 May 2017 21:33:18 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Fri, 19 May 2017 23:38:28 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 19 May 2017 23:38:29 GMT
ENV PATH=/usr/lib/postgresql/9.3/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 19 May 2017 23:38:30 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 19 May 2017 23:38:31 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 19 May 2017 23:38:32 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 19 May 2017 23:38:33 GMT
COPY file:0db93797e962937881947161a43da7695835a2b6d5ad1184d0886e35249b5e39 in /usr/local/bin/ 
# Fri, 19 May 2017 23:38:34 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 19 May 2017 23:38:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 19 May 2017 23:38:36 GMT
EXPOSE 5432/tcp
# Fri, 19 May 2017 23:38:37 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:cfc728c1c5584d8e0ae69368fc9c34d54d72651355573ba42554c2469a0a6299`  
		Last Modified: Wed, 10 May 2017 16:41:01 GMT  
		Size: 2.0 MB (1967906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b749e72b24f9914e9c03f0cd76903382375d2080c19aacdb90e2a56267b64af7`  
		Last Modified: Thu, 11 May 2017 18:15:41 GMT  
		Size: 142.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0abdb8c9c36be26aa6f66e5496998f32a5ab79b3b65ce2ffe0abdf2c877ebbeb`  
		Last Modified: Thu, 11 May 2017 18:15:41 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d472c8fadae5c3d8454730ea74dffa9eb9396405fe7c271f7045ac33ab388e6c`  
		Last Modified: Mon, 15 May 2017 21:45:16 GMT  
		Size: 12.0 MB (11973917 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8538b3a63edac3f0faf9f5dda4057b0d384497d0bba13429f9b0133f5f8abba`  
		Last Modified: Mon, 15 May 2017 21:45:14 GMT  
		Size: 6.5 KB (6463 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93f66c7778a1fa1c2b6b87b539c59c0ad10eb15dffcd8f8b66e6b8daac2e016e`  
		Last Modified: Fri, 19 May 2017 23:47:24 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3571d3a6efcc6deb6f3defa1cb3183c222c9c7f19572b538f1d2a73f529fdeaf`  
		Last Modified: Fri, 19 May 2017 23:47:24 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f55ec97991d4c339e44bb980f7dd9a3d5e44e61f150e15aba31d445322ea7637`  
		Last Modified: Fri, 19 May 2017 23:47:25 GMT  
		Size: 1.8 KB (1785 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3486acc0846c99f04945671a97b457e6a9fcf8a2c0ae619be33683b209d879d2`  
		Last Modified: Fri, 19 May 2017 23:47:25 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.2.21`

```console
$ docker pull postgres@sha256:6b110fa4840a76c38e037b60d9bac8edcd6e39ca1a858d9c4238c9bfe3a7e322
```

-	Platforms:
	-	linux; amd64

### `postgres:9.2.21` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **103.0 MB (102967169 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:381e4b42209f9adda20fff22630fb26d551c6d30c0ad4d47d283915f4957bd7d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Wed, 10 May 2017 15:21:03 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Wed, 10 May 2017 15:21:04 GMT
ENV GOSU_VERSION=1.7
# Wed, 10 May 2017 15:21:23 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 10 May 2017 15:21:33 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Wed, 10 May 2017 15:21:34 GMT
ENV LANG=en_US.utf8
# Wed, 10 May 2017 15:21:35 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 10 May 2017 15:21:38 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 10 May 2017 15:22:46 GMT
ENV PG_MAJOR=9.2
# Mon, 15 May 2017 21:33:48 GMT
ENV PG_VERSION=9.2.21-1.pgdg80+1
# Mon, 15 May 2017 21:33:50 GMT
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main' $PG_MAJOR > /etc/apt/sources.list.d/pgdg.list
# Mon, 15 May 2017 21:34:18 GMT
RUN apt-get update 	&& apt-get install -y postgresql-common 	&& sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf 	&& apt-get install -y 		postgresql-$PG_MAJOR=$PG_VERSION 		postgresql-contrib-$PG_MAJOR=$PG_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Mon, 15 May 2017 21:34:20 GMT
RUN mv -v /usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample /usr/share/postgresql/$PG_MAJOR/ 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Fri, 19 May 2017 23:38:59 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 19 May 2017 23:39:00 GMT
ENV PATH=/usr/lib/postgresql/9.2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 19 May 2017 23:39:01 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 19 May 2017 23:39:02 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 19 May 2017 23:39:03 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 19 May 2017 23:39:04 GMT
COPY file:80a75a207cb3d72777ff2cb8654a6d03754b58aed9199464284f3587637e1403 in /usr/local/bin/ 
# Fri, 19 May 2017 23:39:05 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 19 May 2017 23:39:06 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 19 May 2017 23:39:07 GMT
EXPOSE 5432/tcp
# Fri, 19 May 2017 23:39:08 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:10a267c67f423630f3afe5e04bbbc93d578861ddcc54283526222f3ad5e895b9`  
		Last Modified: Mon, 08 May 2017 23:43:59 GMT  
		Size: 52.6 MB (52584016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9a920522e337511674336d96c1c64887243444c12d3a4841cae1aebfd2191f8`  
		Last Modified: Thu, 11 May 2017 18:13:27 GMT  
		Size: 2.1 KB (2065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6888e696bd718215dfb98e6d92059fcb982308e23ffd12e120b741b496170602`  
		Last Modified: Thu, 11 May 2017 18:13:27 GMT  
		Size: 1.3 MB (1307723 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:798096eed143cbeb4c60f929e93b1835dc782c59296795892a80ea740072a6f5`  
		Last Modified: Thu, 11 May 2017 18:13:28 GMT  
		Size: 7.1 MB (7116767 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb58419959b59bd0f196e45992732e44ed1b1aea40fd7463532de1020e77a695`  
		Last Modified: Thu, 11 May 2017 18:13:24 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97f9ec09cb6847298a7bfe62bf7d0361cfe56117fbd7f16e3c754a774b6f977a`  
		Last Modified: Thu, 11 May 2017 18:13:24 GMT  
		Size: 4.5 KB (4489 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0aec6622ad96ab0800f8ee477845e5c813442bff4deb8ede06d14e660d2aafcc`  
		Last Modified: Mon, 15 May 2017 21:46:06 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:120cd2a341dc8edd26eb8304e2772090d4e69a681c1a209ce6755b5dac9aed2c`  
		Last Modified: Mon, 15 May 2017 21:46:11 GMT  
		Size: 41.9 MB (41943126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2a56539c9e8ada8f90f4a42c54b2812910c589b4f69787738b06f7791eb9574`  
		Last Modified: Mon, 15 May 2017 21:46:04 GMT  
		Size: 6.4 KB (6435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2649156c5f5103ce06c84819ced688ffa548c6107ca3b4afce769e4e8e4b447`  
		Last Modified: Fri, 19 May 2017 23:48:14 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0597a617843084183193093c9b71466d990d27a8ad23ea8b167a6f65964f65f`  
		Last Modified: Fri, 19 May 2017 23:48:14 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2572885eb18f6d5b7704b50d8ab6f71ecf11d9852a3a7a0c2352bc50c47772b`  
		Last Modified: Fri, 19 May 2017 23:48:13 GMT  
		Size: 1.8 KB (1795 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78ba3cb1f6bb67626589d0a20b77d48c0424b145fa1b4b74ed9c82c5d381ea65`  
		Last Modified: Fri, 19 May 2017 23:48:14 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.2`

```console
$ docker pull postgres@sha256:6b110fa4840a76c38e037b60d9bac8edcd6e39ca1a858d9c4238c9bfe3a7e322
```

-	Platforms:
	-	linux; amd64

### `postgres:9.2` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **103.0 MB (102967169 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:381e4b42209f9adda20fff22630fb26d551c6d30c0ad4d47d283915f4957bd7d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Wed, 10 May 2017 15:21:03 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Wed, 10 May 2017 15:21:04 GMT
ENV GOSU_VERSION=1.7
# Wed, 10 May 2017 15:21:23 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 10 May 2017 15:21:33 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Wed, 10 May 2017 15:21:34 GMT
ENV LANG=en_US.utf8
# Wed, 10 May 2017 15:21:35 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 10 May 2017 15:21:38 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 10 May 2017 15:22:46 GMT
ENV PG_MAJOR=9.2
# Mon, 15 May 2017 21:33:48 GMT
ENV PG_VERSION=9.2.21-1.pgdg80+1
# Mon, 15 May 2017 21:33:50 GMT
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main' $PG_MAJOR > /etc/apt/sources.list.d/pgdg.list
# Mon, 15 May 2017 21:34:18 GMT
RUN apt-get update 	&& apt-get install -y postgresql-common 	&& sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf 	&& apt-get install -y 		postgresql-$PG_MAJOR=$PG_VERSION 		postgresql-contrib-$PG_MAJOR=$PG_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Mon, 15 May 2017 21:34:20 GMT
RUN mv -v /usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample /usr/share/postgresql/$PG_MAJOR/ 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Fri, 19 May 2017 23:38:59 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 19 May 2017 23:39:00 GMT
ENV PATH=/usr/lib/postgresql/9.2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 19 May 2017 23:39:01 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 19 May 2017 23:39:02 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 19 May 2017 23:39:03 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 19 May 2017 23:39:04 GMT
COPY file:80a75a207cb3d72777ff2cb8654a6d03754b58aed9199464284f3587637e1403 in /usr/local/bin/ 
# Fri, 19 May 2017 23:39:05 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 19 May 2017 23:39:06 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 19 May 2017 23:39:07 GMT
EXPOSE 5432/tcp
# Fri, 19 May 2017 23:39:08 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:10a267c67f423630f3afe5e04bbbc93d578861ddcc54283526222f3ad5e895b9`  
		Last Modified: Mon, 08 May 2017 23:43:59 GMT  
		Size: 52.6 MB (52584016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9a920522e337511674336d96c1c64887243444c12d3a4841cae1aebfd2191f8`  
		Last Modified: Thu, 11 May 2017 18:13:27 GMT  
		Size: 2.1 KB (2065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6888e696bd718215dfb98e6d92059fcb982308e23ffd12e120b741b496170602`  
		Last Modified: Thu, 11 May 2017 18:13:27 GMT  
		Size: 1.3 MB (1307723 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:798096eed143cbeb4c60f929e93b1835dc782c59296795892a80ea740072a6f5`  
		Last Modified: Thu, 11 May 2017 18:13:28 GMT  
		Size: 7.1 MB (7116767 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb58419959b59bd0f196e45992732e44ed1b1aea40fd7463532de1020e77a695`  
		Last Modified: Thu, 11 May 2017 18:13:24 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97f9ec09cb6847298a7bfe62bf7d0361cfe56117fbd7f16e3c754a774b6f977a`  
		Last Modified: Thu, 11 May 2017 18:13:24 GMT  
		Size: 4.5 KB (4489 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0aec6622ad96ab0800f8ee477845e5c813442bff4deb8ede06d14e660d2aafcc`  
		Last Modified: Mon, 15 May 2017 21:46:06 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:120cd2a341dc8edd26eb8304e2772090d4e69a681c1a209ce6755b5dac9aed2c`  
		Last Modified: Mon, 15 May 2017 21:46:11 GMT  
		Size: 41.9 MB (41943126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2a56539c9e8ada8f90f4a42c54b2812910c589b4f69787738b06f7791eb9574`  
		Last Modified: Mon, 15 May 2017 21:46:04 GMT  
		Size: 6.4 KB (6435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2649156c5f5103ce06c84819ced688ffa548c6107ca3b4afce769e4e8e4b447`  
		Last Modified: Fri, 19 May 2017 23:48:14 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0597a617843084183193093c9b71466d990d27a8ad23ea8b167a6f65964f65f`  
		Last Modified: Fri, 19 May 2017 23:48:14 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2572885eb18f6d5b7704b50d8ab6f71ecf11d9852a3a7a0c2352bc50c47772b`  
		Last Modified: Fri, 19 May 2017 23:48:13 GMT  
		Size: 1.8 KB (1795 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78ba3cb1f6bb67626589d0a20b77d48c0424b145fa1b4b74ed9c82c5d381ea65`  
		Last Modified: Fri, 19 May 2017 23:48:14 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.2.21-alpine`

```console
$ docker pull postgres@sha256:e7b6fb9d67e5a82a905b1309a97fd6e5314eb20f005760dcc456bf37c906c49e
```

-	Platforms:
	-	linux; amd64

### `postgres:9.2.21-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.8 MB (13779070 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d930b293a4d4236654e6bb848f72feb861497cca0ad688932cb47eeb62079ff5`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 10 May 2017 16:38:16 GMT
ADD file:63f63606d6e289eb607c90e31de81802258906712727e473a2898f0f1ae55bb5 in / 
# Wed, 10 May 2017 16:38:17 GMT
CMD ["/bin/sh"]
# Wed, 10 May 2017 22:44:19 GMT
RUN set -ex; 	postgresHome="$(getent passwd postgres)"; 	postgresHome="$(echo "$postgresHome" | cut -d: -f6)"; 	[ "$postgresHome" = '/var/lib/postgresql' ]; 	mkdir -p "$postgresHome"; 	chown -R postgres:postgres "$postgresHome"
# Wed, 10 May 2017 22:44:20 GMT
ENV LANG=en_US.utf8
# Wed, 10 May 2017 22:44:21 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 10 May 2017 22:47:00 GMT
ENV PG_MAJOR=9.2
# Mon, 15 May 2017 21:34:50 GMT
ENV PG_VERSION=9.2.21
# Mon, 15 May 2017 21:34:51 GMT
ENV PG_SHA256=0697e843523ee60c563f987f9c65bc4201294b18525d6e5e4b2c50c6d4058ef9
# Mon, 15 May 2017 21:34:51 GMT
ENV OSSP_UUID_VERSION=1.6.2
# Mon, 15 May 2017 21:34:52 GMT
ENV OSSP_UUID_SHA256=11a615225baa5f8bb686824423f50e4427acd3f70d394765bdff32801f0fd5b0
# Mon, 15 May 2017 21:36:47 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl 		util-linux-dev 		zlib-dev 		&& wget -O uuid.tar.gz "https://www.mirrorservice.org/sites/ftp.ossp.org/pkg/lib/uuid/uuid-$OSSP_UUID_VERSION.tar.gz" 	&& echo "$OSSP_UUID_SHA256 *uuid.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/ossp-uuid 	&& tar 		--extract 		--file uuid.tar.gz 		--directory /usr/src/ossp-uuid 		--strip-components 1 	&& rm uuid.tar.gz 	&& ( 		cd /usr/src/ossp-uuid 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		&& wget -O config.guess "http://git.savannah.gnu.org/gitweb/?p=config.git;a=blob_plain;f=config.guess;hb=HEAD" 		&& wget -O config.sub "http://git.savannah.gnu.org/gitweb/?p=config.git;a=blob_plain;f=config.sub;hb=HEAD" 		&& ./configure 			--build="$gnuArch" 			--prefix=/usr/local 		&& make -j "$(nproc)" 		&& make install 	) 	&& rm -rf /usr/src/ossp-uuid 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess "http://git.savannah.gnu.org/gitweb/?p=config.git;a=blob_plain;f=config.guess;hb=HEAD" 	&& wget -O config/config.sub "http://git.savannah.gnu.org/gitweb/?p=config.git;a=blob_plain;f=config.sub;hb=HEAD" 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--disable-rpath 		--with-ossp-uuid 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Mon, 15 May 2017 21:36:48 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Fri, 19 May 2017 23:39:30 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 19 May 2017 23:39:31 GMT
ENV PATH=/usr/lib/postgresql/9.2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 19 May 2017 23:39:31 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 19 May 2017 23:39:33 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 19 May 2017 23:39:33 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 19 May 2017 23:39:35 GMT
COPY file:0db93797e962937881947161a43da7695835a2b6d5ad1184d0886e35249b5e39 in /usr/local/bin/ 
# Fri, 19 May 2017 23:39:36 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 19 May 2017 23:39:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 19 May 2017 23:39:37 GMT
EXPOSE 5432/tcp
# Fri, 19 May 2017 23:39:38 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:cfc728c1c5584d8e0ae69368fc9c34d54d72651355573ba42554c2469a0a6299`  
		Last Modified: Wed, 10 May 2017 16:41:01 GMT  
		Size: 2.0 MB (1967906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b749e72b24f9914e9c03f0cd76903382375d2080c19aacdb90e2a56267b64af7`  
		Last Modified: Thu, 11 May 2017 18:15:41 GMT  
		Size: 142.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0abdb8c9c36be26aa6f66e5496998f32a5ab79b3b65ce2ffe0abdf2c877ebbeb`  
		Last Modified: Thu, 11 May 2017 18:15:41 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef3a7713fd8f0db31bd784e97132d719f9d9af1565636b967052428480f4e725`  
		Last Modified: Mon, 15 May 2017 21:47:04 GMT  
		Size: 11.8 MB (11802294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e46420a57d77b42ce63181fb51ef633bf101f62b15070376636023f7eebd283`  
		Last Modified: Mon, 15 May 2017 21:47:02 GMT  
		Size: 6.4 KB (6402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e9de49bdd1af22787e1692dbe9d4984746635920442008164ba4a88204e867f`  
		Last Modified: Fri, 19 May 2017 23:49:03 GMT  
		Size: 145.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36e03f9c104c5fec30d86615e61367f3b656d052fc82e4a2bc08ce645fa029b3`  
		Last Modified: Fri, 19 May 2017 23:49:04 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aed151af7a7dde99df1758d878bc6322f0c772693b98935a0ee76604f4adaefe`  
		Last Modified: Fri, 19 May 2017 23:49:03 GMT  
		Size: 1.8 KB (1786 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3f2441f9008bd98a91161bdd3169af84f95882646e7fa41c7598525164c34fe`  
		Last Modified: Fri, 19 May 2017 23:49:03 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.2-alpine`

```console
$ docker pull postgres@sha256:e7b6fb9d67e5a82a905b1309a97fd6e5314eb20f005760dcc456bf37c906c49e
```

-	Platforms:
	-	linux; amd64

### `postgres:9.2-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.8 MB (13779070 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d930b293a4d4236654e6bb848f72feb861497cca0ad688932cb47eeb62079ff5`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 10 May 2017 16:38:16 GMT
ADD file:63f63606d6e289eb607c90e31de81802258906712727e473a2898f0f1ae55bb5 in / 
# Wed, 10 May 2017 16:38:17 GMT
CMD ["/bin/sh"]
# Wed, 10 May 2017 22:44:19 GMT
RUN set -ex; 	postgresHome="$(getent passwd postgres)"; 	postgresHome="$(echo "$postgresHome" | cut -d: -f6)"; 	[ "$postgresHome" = '/var/lib/postgresql' ]; 	mkdir -p "$postgresHome"; 	chown -R postgres:postgres "$postgresHome"
# Wed, 10 May 2017 22:44:20 GMT
ENV LANG=en_US.utf8
# Wed, 10 May 2017 22:44:21 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 10 May 2017 22:47:00 GMT
ENV PG_MAJOR=9.2
# Mon, 15 May 2017 21:34:50 GMT
ENV PG_VERSION=9.2.21
# Mon, 15 May 2017 21:34:51 GMT
ENV PG_SHA256=0697e843523ee60c563f987f9c65bc4201294b18525d6e5e4b2c50c6d4058ef9
# Mon, 15 May 2017 21:34:51 GMT
ENV OSSP_UUID_VERSION=1.6.2
# Mon, 15 May 2017 21:34:52 GMT
ENV OSSP_UUID_SHA256=11a615225baa5f8bb686824423f50e4427acd3f70d394765bdff32801f0fd5b0
# Mon, 15 May 2017 21:36:47 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl 		util-linux-dev 		zlib-dev 		&& wget -O uuid.tar.gz "https://www.mirrorservice.org/sites/ftp.ossp.org/pkg/lib/uuid/uuid-$OSSP_UUID_VERSION.tar.gz" 	&& echo "$OSSP_UUID_SHA256 *uuid.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/ossp-uuid 	&& tar 		--extract 		--file uuid.tar.gz 		--directory /usr/src/ossp-uuid 		--strip-components 1 	&& rm uuid.tar.gz 	&& ( 		cd /usr/src/ossp-uuid 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		&& wget -O config.guess "http://git.savannah.gnu.org/gitweb/?p=config.git;a=blob_plain;f=config.guess;hb=HEAD" 		&& wget -O config.sub "http://git.savannah.gnu.org/gitweb/?p=config.git;a=blob_plain;f=config.sub;hb=HEAD" 		&& ./configure 			--build="$gnuArch" 			--prefix=/usr/local 		&& make -j "$(nproc)" 		&& make install 	) 	&& rm -rf /usr/src/ossp-uuid 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess "http://git.savannah.gnu.org/gitweb/?p=config.git;a=blob_plain;f=config.guess;hb=HEAD" 	&& wget -O config/config.sub "http://git.savannah.gnu.org/gitweb/?p=config.git;a=blob_plain;f=config.sub;hb=HEAD" 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--disable-rpath 		--with-ossp-uuid 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Mon, 15 May 2017 21:36:48 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Fri, 19 May 2017 23:39:30 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 19 May 2017 23:39:31 GMT
ENV PATH=/usr/lib/postgresql/9.2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 19 May 2017 23:39:31 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 19 May 2017 23:39:33 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 19 May 2017 23:39:33 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 19 May 2017 23:39:35 GMT
COPY file:0db93797e962937881947161a43da7695835a2b6d5ad1184d0886e35249b5e39 in /usr/local/bin/ 
# Fri, 19 May 2017 23:39:36 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 19 May 2017 23:39:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 19 May 2017 23:39:37 GMT
EXPOSE 5432/tcp
# Fri, 19 May 2017 23:39:38 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:cfc728c1c5584d8e0ae69368fc9c34d54d72651355573ba42554c2469a0a6299`  
		Last Modified: Wed, 10 May 2017 16:41:01 GMT  
		Size: 2.0 MB (1967906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b749e72b24f9914e9c03f0cd76903382375d2080c19aacdb90e2a56267b64af7`  
		Last Modified: Thu, 11 May 2017 18:15:41 GMT  
		Size: 142.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0abdb8c9c36be26aa6f66e5496998f32a5ab79b3b65ce2ffe0abdf2c877ebbeb`  
		Last Modified: Thu, 11 May 2017 18:15:41 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef3a7713fd8f0db31bd784e97132d719f9d9af1565636b967052428480f4e725`  
		Last Modified: Mon, 15 May 2017 21:47:04 GMT  
		Size: 11.8 MB (11802294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e46420a57d77b42ce63181fb51ef633bf101f62b15070376636023f7eebd283`  
		Last Modified: Mon, 15 May 2017 21:47:02 GMT  
		Size: 6.4 KB (6402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e9de49bdd1af22787e1692dbe9d4984746635920442008164ba4a88204e867f`  
		Last Modified: Fri, 19 May 2017 23:49:03 GMT  
		Size: 145.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36e03f9c104c5fec30d86615e61367f3b656d052fc82e4a2bc08ce645fa029b3`  
		Last Modified: Fri, 19 May 2017 23:49:04 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aed151af7a7dde99df1758d878bc6322f0c772693b98935a0ee76604f4adaefe`  
		Last Modified: Fri, 19 May 2017 23:49:03 GMT  
		Size: 1.8 KB (1786 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3f2441f9008bd98a91161bdd3169af84f95882646e7fa41c7598525164c34fe`  
		Last Modified: Fri, 19 May 2017 23:49:03 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
