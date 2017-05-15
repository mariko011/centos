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

**does not exist** (yet?)

## `postgres:9.6`

```console
$ docker pull postgres@sha256:5284ba74a1065e34cf1bfccd64caf8c497c8dc623d6207b060b5ebd369427d34
```

-	Platforms:
	-	linux; amd64

### `postgres:9.6` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.3 MB (104287382 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b3b8a22299537a43dc0eb06d8cd469fcdbbca5e8b221dd5f67653242c3951fa1`
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
# Wed, 10 May 2017 15:21:40 GMT
ENV PG_VERSION=9.6.2-1.pgdg80+1
# Wed, 10 May 2017 15:21:41 GMT
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main' $PG_MAJOR > /etc/apt/sources.list.d/pgdg.list
# Wed, 10 May 2017 15:22:15 GMT
RUN apt-get update 	&& apt-get install -y postgresql-common 	&& sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf 	&& apt-get install -y 		postgresql-$PG_MAJOR=$PG_VERSION 		postgresql-contrib-$PG_MAJOR=$PG_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 15:22:16 GMT
RUN mv -v /usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample /usr/share/postgresql/$PG_MAJOR/ 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Wed, 10 May 2017 15:22:18 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod g+s /var/run/postgresql
# Wed, 10 May 2017 15:22:19 GMT
ENV PATH=/usr/lib/postgresql/9.6/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 10 May 2017 15:22:19 GMT
ENV PGDATA=/var/lib/postgresql/data
# Wed, 10 May 2017 15:22:21 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Wed, 10 May 2017 15:22:22 GMT
VOLUME [/var/lib/postgresql/data]
# Thu, 11 May 2017 17:20:43 GMT
COPY file:88406fb9d8f255c2eafecd84ec6558ad6c5da8e54a6228a71d059ef88604493b in /usr/local/bin/ 
# Thu, 11 May 2017 17:20:46 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 11 May 2017 17:20:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 11 May 2017 17:20:48 GMT
EXPOSE 5432/tcp
# Thu, 11 May 2017 17:20:49 GMT
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
	-	`sha256:d58678d9d3ab5c99007ee9b25a5a7ed6021bb7c1555d13e718c9d66470fffdec`  
		Last Modified: Thu, 11 May 2017 18:13:24 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ece2bc4a78f4a264b1e0b657710fdd73348030c449fd0d9b2a898c7c412b4616`  
		Last Modified: Thu, 11 May 2017 18:13:38 GMT  
		Size: 43.3 MB (43262679 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eadac36b8440b924264972ee381a8dd913a8d965dc06e140f0d8fa94695d1345`  
		Last Modified: Thu, 11 May 2017 18:13:22 GMT  
		Size: 7.1 KB (7096 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4da13987a6ca321f93c7f0129f65263596e3d7a49b5358a311275cb65ab7c4fc`  
		Last Modified: Thu, 11 May 2017 18:13:22 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd2eab93fc5af7bad0d9ca20fbb399b8fea658245ec0ca74e3baecbdc17ca3b5`  
		Last Modified: Thu, 11 May 2017 18:13:24 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2efd8a94a8d7694c2204d7297a57bf788dc8b99a8b7d7a6754d3acfb6dafd112`  
		Last Modified: Thu, 11 May 2017 18:13:22 GMT  
		Size: 1.8 KB (1795 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd1f07c4ebbed75bd19867a29912ede50d8ce5292227c8c2ed730908d10fba9b`  
		Last Modified: Thu, 11 May 2017 18:13:22 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9`

```console
$ docker pull postgres@sha256:5284ba74a1065e34cf1bfccd64caf8c497c8dc623d6207b060b5ebd369427d34
```

-	Platforms:
	-	linux; amd64

### `postgres:9` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.3 MB (104287382 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b3b8a22299537a43dc0eb06d8cd469fcdbbca5e8b221dd5f67653242c3951fa1`
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
# Wed, 10 May 2017 15:21:40 GMT
ENV PG_VERSION=9.6.2-1.pgdg80+1
# Wed, 10 May 2017 15:21:41 GMT
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main' $PG_MAJOR > /etc/apt/sources.list.d/pgdg.list
# Wed, 10 May 2017 15:22:15 GMT
RUN apt-get update 	&& apt-get install -y postgresql-common 	&& sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf 	&& apt-get install -y 		postgresql-$PG_MAJOR=$PG_VERSION 		postgresql-contrib-$PG_MAJOR=$PG_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 15:22:16 GMT
RUN mv -v /usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample /usr/share/postgresql/$PG_MAJOR/ 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Wed, 10 May 2017 15:22:18 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod g+s /var/run/postgresql
# Wed, 10 May 2017 15:22:19 GMT
ENV PATH=/usr/lib/postgresql/9.6/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 10 May 2017 15:22:19 GMT
ENV PGDATA=/var/lib/postgresql/data
# Wed, 10 May 2017 15:22:21 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Wed, 10 May 2017 15:22:22 GMT
VOLUME [/var/lib/postgresql/data]
# Thu, 11 May 2017 17:20:43 GMT
COPY file:88406fb9d8f255c2eafecd84ec6558ad6c5da8e54a6228a71d059ef88604493b in /usr/local/bin/ 
# Thu, 11 May 2017 17:20:46 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 11 May 2017 17:20:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 11 May 2017 17:20:48 GMT
EXPOSE 5432/tcp
# Thu, 11 May 2017 17:20:49 GMT
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
	-	`sha256:d58678d9d3ab5c99007ee9b25a5a7ed6021bb7c1555d13e718c9d66470fffdec`  
		Last Modified: Thu, 11 May 2017 18:13:24 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ece2bc4a78f4a264b1e0b657710fdd73348030c449fd0d9b2a898c7c412b4616`  
		Last Modified: Thu, 11 May 2017 18:13:38 GMT  
		Size: 43.3 MB (43262679 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eadac36b8440b924264972ee381a8dd913a8d965dc06e140f0d8fa94695d1345`  
		Last Modified: Thu, 11 May 2017 18:13:22 GMT  
		Size: 7.1 KB (7096 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4da13987a6ca321f93c7f0129f65263596e3d7a49b5358a311275cb65ab7c4fc`  
		Last Modified: Thu, 11 May 2017 18:13:22 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd2eab93fc5af7bad0d9ca20fbb399b8fea658245ec0ca74e3baecbdc17ca3b5`  
		Last Modified: Thu, 11 May 2017 18:13:24 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2efd8a94a8d7694c2204d7297a57bf788dc8b99a8b7d7a6754d3acfb6dafd112`  
		Last Modified: Thu, 11 May 2017 18:13:22 GMT  
		Size: 1.8 KB (1795 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd1f07c4ebbed75bd19867a29912ede50d8ce5292227c8c2ed730908d10fba9b`  
		Last Modified: Thu, 11 May 2017 18:13:22 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:latest`

```console
$ docker pull postgres@sha256:5284ba74a1065e34cf1bfccd64caf8c497c8dc623d6207b060b5ebd369427d34
```

-	Platforms:
	-	linux; amd64

### `postgres:latest` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.3 MB (104287382 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b3b8a22299537a43dc0eb06d8cd469fcdbbca5e8b221dd5f67653242c3951fa1`
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
# Wed, 10 May 2017 15:21:40 GMT
ENV PG_VERSION=9.6.2-1.pgdg80+1
# Wed, 10 May 2017 15:21:41 GMT
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main' $PG_MAJOR > /etc/apt/sources.list.d/pgdg.list
# Wed, 10 May 2017 15:22:15 GMT
RUN apt-get update 	&& apt-get install -y postgresql-common 	&& sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf 	&& apt-get install -y 		postgresql-$PG_MAJOR=$PG_VERSION 		postgresql-contrib-$PG_MAJOR=$PG_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 15:22:16 GMT
RUN mv -v /usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample /usr/share/postgresql/$PG_MAJOR/ 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Wed, 10 May 2017 15:22:18 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod g+s /var/run/postgresql
# Wed, 10 May 2017 15:22:19 GMT
ENV PATH=/usr/lib/postgresql/9.6/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 10 May 2017 15:22:19 GMT
ENV PGDATA=/var/lib/postgresql/data
# Wed, 10 May 2017 15:22:21 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Wed, 10 May 2017 15:22:22 GMT
VOLUME [/var/lib/postgresql/data]
# Thu, 11 May 2017 17:20:43 GMT
COPY file:88406fb9d8f255c2eafecd84ec6558ad6c5da8e54a6228a71d059ef88604493b in /usr/local/bin/ 
# Thu, 11 May 2017 17:20:46 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 11 May 2017 17:20:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 11 May 2017 17:20:48 GMT
EXPOSE 5432/tcp
# Thu, 11 May 2017 17:20:49 GMT
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
	-	`sha256:d58678d9d3ab5c99007ee9b25a5a7ed6021bb7c1555d13e718c9d66470fffdec`  
		Last Modified: Thu, 11 May 2017 18:13:24 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ece2bc4a78f4a264b1e0b657710fdd73348030c449fd0d9b2a898c7c412b4616`  
		Last Modified: Thu, 11 May 2017 18:13:38 GMT  
		Size: 43.3 MB (43262679 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eadac36b8440b924264972ee381a8dd913a8d965dc06e140f0d8fa94695d1345`  
		Last Modified: Thu, 11 May 2017 18:13:22 GMT  
		Size: 7.1 KB (7096 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4da13987a6ca321f93c7f0129f65263596e3d7a49b5358a311275cb65ab7c4fc`  
		Last Modified: Thu, 11 May 2017 18:13:22 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd2eab93fc5af7bad0d9ca20fbb399b8fea658245ec0ca74e3baecbdc17ca3b5`  
		Last Modified: Thu, 11 May 2017 18:13:24 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2efd8a94a8d7694c2204d7297a57bf788dc8b99a8b7d7a6754d3acfb6dafd112`  
		Last Modified: Thu, 11 May 2017 18:13:22 GMT  
		Size: 1.8 KB (1795 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd1f07c4ebbed75bd19867a29912ede50d8ce5292227c8c2ed730908d10fba9b`  
		Last Modified: Thu, 11 May 2017 18:13:22 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.6.3-alpine`

**does not exist** (yet?)

## `postgres:9.6-alpine`

```console
$ docker pull postgres@sha256:f88000211e3c682e7419ac6e6cbd3a7a4980b483ac416a3b5d5ee81d4f831cc9
```

-	Platforms:
	-	linux; amd64

### `postgres:9.6-alpine` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.7 MB (14656636 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bf72189a3c51c803b0b0b146c0b4fad7811b3c53674755fc2a66f55ecfb8f4ac`
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
# Wed, 10 May 2017 22:44:23 GMT
ENV PG_VERSION=9.6.2
# Wed, 10 May 2017 22:44:24 GMT
ENV PG_SHA256=0187b5184be1c09034e74e44761505e52357248451b0c854dddec6c231fe50c9
# Thu, 11 May 2017 17:55:52 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl 		util-linux-dev 		zlib-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess "http://git.savannah.gnu.org/gitweb/?p=config.git;a=blob_plain;f=config.guess;hb=HEAD" 	&& wget -O config/config.sub "http://git.savannah.gnu.org/gitweb/?p=config.git;a=blob_plain;f=config.sub;hb=HEAD" 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Thu, 11 May 2017 17:55:55 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Thu, 11 May 2017 17:55:57 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod g+s /var/run/postgresql
# Thu, 11 May 2017 17:55:58 GMT
ENV PATH=/usr/lib/postgresql/9.6/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 11 May 2017 17:55:59 GMT
ENV PGDATA=/var/lib/postgresql/data
# Thu, 11 May 2017 17:56:02 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Thu, 11 May 2017 17:56:03 GMT
VOLUME [/var/lib/postgresql/data]
# Thu, 11 May 2017 17:56:04 GMT
COPY file:b7f16d53ff9b4f99d3e3c8fd87c7ffb72ffdcb5ddd9b0773ca122008aba3de5d in /usr/local/bin/ 
# Thu, 11 May 2017 17:56:06 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 11 May 2017 17:56:07 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 11 May 2017 17:56:08 GMT
EXPOSE 5432/tcp
# Thu, 11 May 2017 17:56:09 GMT
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
	-	`sha256:90ca3848ef7e941c5d0331d47b7d6965447a5f5ea2cfcfe918691a581c2c80c9`  
		Last Modified: Thu, 11 May 2017 18:15:43 GMT  
		Size: 12.7 MB (12679198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ecf037a5034680daf3817d74777183770ec2476a5bafa9337102a911b5a219a`  
		Last Modified: Thu, 11 May 2017 18:15:38 GMT  
		Size: 7.1 KB (7062 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9327e3c5554cc5a23515e10de81b331545a137b4f4f03b743af0f41507de6f55`  
		Last Modified: Thu, 11 May 2017 18:15:39 GMT  
		Size: 144.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3133782bad17fd9ba229d2fe66a4eb39ae967a0c067de0a4549756316aea956f`  
		Last Modified: Thu, 11 May 2017 18:15:38 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:143bac6c8910694cd99059b7dcdc039e6584bd8f609cbc75dfdbb3c6dc515e7d`  
		Last Modified: Thu, 11 May 2017 18:15:39 GMT  
		Size: 1.8 KB (1787 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6da9f4bd18e38d2e2a3276dbb184522ff6cc3cea461216ab977205c2cb400e2`  
		Last Modified: Thu, 11 May 2017 18:15:38 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9-alpine`

```console
$ docker pull postgres@sha256:f88000211e3c682e7419ac6e6cbd3a7a4980b483ac416a3b5d5ee81d4f831cc9
```

-	Platforms:
	-	linux; amd64

### `postgres:9-alpine` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.7 MB (14656636 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bf72189a3c51c803b0b0b146c0b4fad7811b3c53674755fc2a66f55ecfb8f4ac`
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
# Wed, 10 May 2017 22:44:23 GMT
ENV PG_VERSION=9.6.2
# Wed, 10 May 2017 22:44:24 GMT
ENV PG_SHA256=0187b5184be1c09034e74e44761505e52357248451b0c854dddec6c231fe50c9
# Thu, 11 May 2017 17:55:52 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl 		util-linux-dev 		zlib-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess "http://git.savannah.gnu.org/gitweb/?p=config.git;a=blob_plain;f=config.guess;hb=HEAD" 	&& wget -O config/config.sub "http://git.savannah.gnu.org/gitweb/?p=config.git;a=blob_plain;f=config.sub;hb=HEAD" 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Thu, 11 May 2017 17:55:55 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Thu, 11 May 2017 17:55:57 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod g+s /var/run/postgresql
# Thu, 11 May 2017 17:55:58 GMT
ENV PATH=/usr/lib/postgresql/9.6/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 11 May 2017 17:55:59 GMT
ENV PGDATA=/var/lib/postgresql/data
# Thu, 11 May 2017 17:56:02 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Thu, 11 May 2017 17:56:03 GMT
VOLUME [/var/lib/postgresql/data]
# Thu, 11 May 2017 17:56:04 GMT
COPY file:b7f16d53ff9b4f99d3e3c8fd87c7ffb72ffdcb5ddd9b0773ca122008aba3de5d in /usr/local/bin/ 
# Thu, 11 May 2017 17:56:06 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 11 May 2017 17:56:07 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 11 May 2017 17:56:08 GMT
EXPOSE 5432/tcp
# Thu, 11 May 2017 17:56:09 GMT
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
	-	`sha256:90ca3848ef7e941c5d0331d47b7d6965447a5f5ea2cfcfe918691a581c2c80c9`  
		Last Modified: Thu, 11 May 2017 18:15:43 GMT  
		Size: 12.7 MB (12679198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ecf037a5034680daf3817d74777183770ec2476a5bafa9337102a911b5a219a`  
		Last Modified: Thu, 11 May 2017 18:15:38 GMT  
		Size: 7.1 KB (7062 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9327e3c5554cc5a23515e10de81b331545a137b4f4f03b743af0f41507de6f55`  
		Last Modified: Thu, 11 May 2017 18:15:39 GMT  
		Size: 144.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3133782bad17fd9ba229d2fe66a4eb39ae967a0c067de0a4549756316aea956f`  
		Last Modified: Thu, 11 May 2017 18:15:38 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:143bac6c8910694cd99059b7dcdc039e6584bd8f609cbc75dfdbb3c6dc515e7d`  
		Last Modified: Thu, 11 May 2017 18:15:39 GMT  
		Size: 1.8 KB (1787 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6da9f4bd18e38d2e2a3276dbb184522ff6cc3cea461216ab977205c2cb400e2`  
		Last Modified: Thu, 11 May 2017 18:15:38 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:alpine`

```console
$ docker pull postgres@sha256:f88000211e3c682e7419ac6e6cbd3a7a4980b483ac416a3b5d5ee81d4f831cc9
```

-	Platforms:
	-	linux; amd64

### `postgres:alpine` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.7 MB (14656636 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bf72189a3c51c803b0b0b146c0b4fad7811b3c53674755fc2a66f55ecfb8f4ac`
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
# Wed, 10 May 2017 22:44:23 GMT
ENV PG_VERSION=9.6.2
# Wed, 10 May 2017 22:44:24 GMT
ENV PG_SHA256=0187b5184be1c09034e74e44761505e52357248451b0c854dddec6c231fe50c9
# Thu, 11 May 2017 17:55:52 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl 		util-linux-dev 		zlib-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess "http://git.savannah.gnu.org/gitweb/?p=config.git;a=blob_plain;f=config.guess;hb=HEAD" 	&& wget -O config/config.sub "http://git.savannah.gnu.org/gitweb/?p=config.git;a=blob_plain;f=config.sub;hb=HEAD" 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Thu, 11 May 2017 17:55:55 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Thu, 11 May 2017 17:55:57 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod g+s /var/run/postgresql
# Thu, 11 May 2017 17:55:58 GMT
ENV PATH=/usr/lib/postgresql/9.6/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 11 May 2017 17:55:59 GMT
ENV PGDATA=/var/lib/postgresql/data
# Thu, 11 May 2017 17:56:02 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Thu, 11 May 2017 17:56:03 GMT
VOLUME [/var/lib/postgresql/data]
# Thu, 11 May 2017 17:56:04 GMT
COPY file:b7f16d53ff9b4f99d3e3c8fd87c7ffb72ffdcb5ddd9b0773ca122008aba3de5d in /usr/local/bin/ 
# Thu, 11 May 2017 17:56:06 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 11 May 2017 17:56:07 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 11 May 2017 17:56:08 GMT
EXPOSE 5432/tcp
# Thu, 11 May 2017 17:56:09 GMT
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
	-	`sha256:90ca3848ef7e941c5d0331d47b7d6965447a5f5ea2cfcfe918691a581c2c80c9`  
		Last Modified: Thu, 11 May 2017 18:15:43 GMT  
		Size: 12.7 MB (12679198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ecf037a5034680daf3817d74777183770ec2476a5bafa9337102a911b5a219a`  
		Last Modified: Thu, 11 May 2017 18:15:38 GMT  
		Size: 7.1 KB (7062 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9327e3c5554cc5a23515e10de81b331545a137b4f4f03b743af0f41507de6f55`  
		Last Modified: Thu, 11 May 2017 18:15:39 GMT  
		Size: 144.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3133782bad17fd9ba229d2fe66a4eb39ae967a0c067de0a4549756316aea956f`  
		Last Modified: Thu, 11 May 2017 18:15:38 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:143bac6c8910694cd99059b7dcdc039e6584bd8f609cbc75dfdbb3c6dc515e7d`  
		Last Modified: Thu, 11 May 2017 18:15:39 GMT  
		Size: 1.8 KB (1787 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6da9f4bd18e38d2e2a3276dbb184522ff6cc3cea461216ab977205c2cb400e2`  
		Last Modified: Thu, 11 May 2017 18:15:38 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.5.7`

**does not exist** (yet?)

## `postgres:9.5`

```console
$ docker pull postgres@sha256:cae1046bde02d10fdcd1eaf3a725bfe214e9869977e989b4b3c8d1e4bed2f615
```

-	Platforms:
	-	linux; amd64

### `postgres:9.5` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **103.8 MB (103807764 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:52caac8f7edde6227d261a010a188104d2aebe3c5449b268416ac38b3795b0af`
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
# Wed, 10 May 2017 15:26:08 GMT
ENV PG_VERSION=9.5.6-1.pgdg80+1
# Wed, 10 May 2017 15:26:09 GMT
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main' $PG_MAJOR > /etc/apt/sources.list.d/pgdg.list
# Wed, 10 May 2017 15:26:41 GMT
RUN apt-get update 	&& apt-get install -y postgresql-common 	&& sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf 	&& apt-get install -y 		postgresql-$PG_MAJOR=$PG_VERSION 		postgresql-contrib-$PG_MAJOR=$PG_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 15:26:43 GMT
RUN mv -v /usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample /usr/share/postgresql/$PG_MAJOR/ 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Wed, 10 May 2017 15:26:45 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod g+s /var/run/postgresql
# Wed, 10 May 2017 15:26:45 GMT
ENV PATH=/usr/lib/postgresql/9.5/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 10 May 2017 15:26:46 GMT
ENV PGDATA=/var/lib/postgresql/data
# Wed, 10 May 2017 15:26:48 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Wed, 10 May 2017 15:26:48 GMT
VOLUME [/var/lib/postgresql/data]
# Thu, 11 May 2017 17:56:41 GMT
COPY file:88406fb9d8f255c2eafecd84ec6558ad6c5da8e54a6228a71d059ef88604493b in /usr/local/bin/ 
# Thu, 11 May 2017 17:56:43 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 11 May 2017 17:56:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 11 May 2017 17:56:45 GMT
EXPOSE 5432/tcp
# Thu, 11 May 2017 17:56:46 GMT
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
	-	`sha256:0498e96c3812723be0a2dee0a6af21a3c74ca855be2373c0affd7799a0ccdedd`  
		Last Modified: Thu, 11 May 2017 18:17:40 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31eca02df98830e54505e37049c04bb67a1fdea8e85261667734467a68ac93e3`  
		Last Modified: Thu, 11 May 2017 18:17:53 GMT  
		Size: 42.8 MB (42783335 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e31c05340e90cecc3b5da850552f5ae8e0cee1f05d5bc6c836ef3aa7e84ac1d3`  
		Last Modified: Thu, 11 May 2017 18:17:37 GMT  
		Size: 6.8 KB (6820 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb8a6fa85389ebbdf9787c4f2c691663b6b54f6f5c006f49703d29c3646452a6`  
		Last Modified: Thu, 11 May 2017 18:17:37 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65d80430933d66daf884746282a24fa141c55708c6c7ac80721c226ef5ae9889`  
		Last Modified: Thu, 11 May 2017 18:17:37 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7bb2e4df899949dde3e2dfbe81fff1a9735316d25d7a21f65938cb964a61563d`  
		Last Modified: Thu, 11 May 2017 18:17:37 GMT  
		Size: 1.8 KB (1795 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44e77ec4cb581809a5fee480ea3560a6e2ea5d88a7652abbe63105b95a3b889a`  
		Last Modified: Thu, 11 May 2017 18:17:38 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.5.7-alpine`

**does not exist** (yet?)

## `postgres:9.5-alpine`

```console
$ docker pull postgres@sha256:4b3671742b41c78e4499bcdbf3d22a776f5c7a02ff5d00766919c7159e78a293
```

-	Platforms:
	-	linux; amd64

### `postgres:9.5-alpine` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.4 MB (14370559 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cc38b642ca5894a045b70192db3d712ef6423c3cbad5db3da2b29143aaca181b`
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
# Wed, 10 May 2017 22:54:07 GMT
ENV PG_VERSION=9.5.6
# Wed, 10 May 2017 22:54:08 GMT
ENV PG_SHA256=bb9e5f6d34e20783e96e10c1d6c0c09c31749e802aaa46b793ce2522725ae12f
# Thu, 11 May 2017 17:59:48 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl 		util-linux-dev 		zlib-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess "http://git.savannah.gnu.org/gitweb/?p=config.git;a=blob_plain;f=config.guess;hb=HEAD" 	&& wget -O config/config.sub "http://git.savannah.gnu.org/gitweb/?p=config.git;a=blob_plain;f=config.sub;hb=HEAD" 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Thu, 11 May 2017 17:59:50 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Thu, 11 May 2017 17:59:51 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod g+s /var/run/postgresql
# Thu, 11 May 2017 17:59:52 GMT
ENV PATH=/usr/lib/postgresql/9.5/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 11 May 2017 17:59:53 GMT
ENV PGDATA=/var/lib/postgresql/data
# Thu, 11 May 2017 17:59:55 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Thu, 11 May 2017 17:59:55 GMT
VOLUME [/var/lib/postgresql/data]
# Thu, 11 May 2017 17:59:57 GMT
COPY file:b7f16d53ff9b4f99d3e3c8fd87c7ffb72ffdcb5ddd9b0773ca122008aba3de5d in /usr/local/bin/ 
# Thu, 11 May 2017 17:59:58 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 11 May 2017 17:59:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 11 May 2017 18:00:00 GMT
EXPOSE 5432/tcp
# Thu, 11 May 2017 18:00:00 GMT
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
	-	`sha256:1ec02b601f237b703b6756b03cffe0cdb0fffadf5f9401a1bf2819ced900764e`  
		Last Modified: Thu, 11 May 2017 18:19:00 GMT  
		Size: 12.4 MB (12393395 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b513a42f9c5780e9dd3a6143042c62a4597bd823f1f6330ff1d652d504e1e1a6`  
		Last Modified: Thu, 11 May 2017 18:18:53 GMT  
		Size: 6.8 KB (6787 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c404fe49842ddd6c70c331f2eda53cb0be28f74ef62beffd7bb6b8322c332c5`  
		Last Modified: Thu, 11 May 2017 18:18:53 GMT  
		Size: 144.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:296d2963c440a6bb6fc5e2ac8ffde72a5e0c53fd208d0d8ff446e50c487ce3f9`  
		Last Modified: Thu, 11 May 2017 18:18:53 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf8213592166b6ab9ef695941e008d22565a5343e4275484125f6dde1b05e396`  
		Last Modified: Thu, 11 May 2017 18:18:53 GMT  
		Size: 1.8 KB (1789 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40e47913a424b7148b1947ebd57754045a4984e477f924d1ff3d29d43e5fff90`  
		Last Modified: Thu, 11 May 2017 18:18:53 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.4.12`

**does not exist** (yet?)

## `postgres:9.4`

```console
$ docker pull postgres@sha256:a8defffc20fbace05b45c53e023183efb3ab873f0b051ad824ac979a246b4e6b
```

-	Platforms:
	-	linux; amd64

### `postgres:9.4` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **103.5 MB (103474141 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5375b9e1e4a2d36510bd4a9861141247519cdd02382b1d98e20a0970197bbe3b`
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
# Wed, 10 May 2017 15:25:01 GMT
ENV PG_VERSION=9.4.11-1.pgdg80+1
# Wed, 10 May 2017 15:25:02 GMT
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main' $PG_MAJOR > /etc/apt/sources.list.d/pgdg.list
# Wed, 10 May 2017 15:25:35 GMT
RUN apt-get update 	&& apt-get install -y postgresql-common 	&& sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf 	&& apt-get install -y 		postgresql-$PG_MAJOR=$PG_VERSION 		postgresql-contrib-$PG_MAJOR=$PG_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 15:25:37 GMT
RUN mv -v /usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample /usr/share/postgresql/$PG_MAJOR/ 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Wed, 10 May 2017 15:25:39 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod g+s /var/run/postgresql
# Wed, 10 May 2017 15:25:39 GMT
ENV PATH=/usr/lib/postgresql/9.4/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 10 May 2017 15:25:40 GMT
ENV PGDATA=/var/lib/postgresql/data
# Wed, 10 May 2017 15:25:42 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Wed, 10 May 2017 15:25:43 GMT
VOLUME [/var/lib/postgresql/data]
# Thu, 11 May 2017 18:00:29 GMT
COPY file:88406fb9d8f255c2eafecd84ec6558ad6c5da8e54a6228a71d059ef88604493b in /usr/local/bin/ 
# Thu, 11 May 2017 18:00:32 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 11 May 2017 18:00:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 11 May 2017 18:00:34 GMT
EXPOSE 5432/tcp
# Thu, 11 May 2017 18:00:35 GMT
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
	-	`sha256:fe3712c43044945076ac9bf3e5387f54b68364fdfc49d6f75ebeb57c730e59ec`  
		Last Modified: Thu, 11 May 2017 18:20:04 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a64fbc47ee248623cc098696fd6c380412cb50f3ef9bb355069681a78e9c62a`  
		Last Modified: Thu, 11 May 2017 18:20:16 GMT  
		Size: 42.4 MB (42449857 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:caf55f11a89406e39ca2fbef7b057a8677a49220824be47c8189f026db6bc9ab`  
		Last Modified: Thu, 11 May 2017 18:20:02 GMT  
		Size: 6.7 KB (6679 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b03417d4e23957017756b00dc08926669772f677c404f1da12a38165b6f11c7c`  
		Last Modified: Thu, 11 May 2017 18:20:02 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0f3044afddbe198cca29cacfa3bb27a6308be59d40882a2d54d8b41be3bd00e`  
		Last Modified: Thu, 11 May 2017 18:20:02 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e26a44f79daa901e7d5298fd06383a0cdd18cd6ff64a634e27b29dd0c0aa8ae3`  
		Last Modified: Thu, 11 May 2017 18:20:02 GMT  
		Size: 1.8 KB (1795 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3cc8a8de0fec5011d1579fab6d3cec50c915cb44020dfa992f6f97fca46872f`  
		Last Modified: Thu, 11 May 2017 18:20:02 GMT  
		Size: 119.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.4.12-alpine`

**does not exist** (yet?)

## `postgres:9.4-alpine`

```console
$ docker pull postgres@sha256:a4e88864a0d1ae245baa92ddfc4ad130705e51df668a44a02c42f384ee1a53c5
```

-	Platforms:
	-	linux; amd64

### `postgres:9.4-alpine` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.2 MB (14230767 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:59432c618c6ee86e7c46991063322682a1b620e28c1cbed1f731adaf2c223af1`
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
# Wed, 10 May 2017 22:51:47 GMT
ENV PG_VERSION=9.4.11
# Wed, 10 May 2017 22:51:47 GMT
ENV PG_SHA256=e3eb51d045c180b03d2de1f0c3af9356e10be49448e966ca01dfc2c6d1cc9d23
# Thu, 11 May 2017 18:03:50 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl 		util-linux-dev 		zlib-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess "http://git.savannah.gnu.org/gitweb/?p=config.git;a=blob_plain;f=config.guess;hb=HEAD" 	&& wget -O config/config.sub "http://git.savannah.gnu.org/gitweb/?p=config.git;a=blob_plain;f=config.sub;hb=HEAD" 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Thu, 11 May 2017 18:03:52 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Thu, 11 May 2017 18:03:54 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod g+s /var/run/postgresql
# Thu, 11 May 2017 18:03:54 GMT
ENV PATH=/usr/lib/postgresql/9.4/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 11 May 2017 18:03:55 GMT
ENV PGDATA=/var/lib/postgresql/data
# Thu, 11 May 2017 18:03:57 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Thu, 11 May 2017 18:03:58 GMT
VOLUME [/var/lib/postgresql/data]
# Thu, 11 May 2017 18:04:00 GMT
COPY file:b7f16d53ff9b4f99d3e3c8fd87c7ffb72ffdcb5ddd9b0773ca122008aba3de5d in /usr/local/bin/ 
# Thu, 11 May 2017 18:04:02 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 11 May 2017 18:04:02 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 11 May 2017 18:04:04 GMT
EXPOSE 5432/tcp
# Thu, 11 May 2017 18:04:04 GMT
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
	-	`sha256:419fb3903bbc01c3595a40ea3f4dbe77c0321ebeb81abce19459d44629720926`  
		Last Modified: Thu, 11 May 2017 18:21:25 GMT  
		Size: 12.3 MB (12253745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee4a63a9f357e9664eea878551684c89198d3b8ad8342e3eae7d209fc5b48287`  
		Last Modified: Thu, 11 May 2017 18:21:18 GMT  
		Size: 6.6 KB (6647 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f633f8ae62e21162dda941970c9cdf624f359e0f6605295279c643ac440a6f0e`  
		Last Modified: Thu, 11 May 2017 18:21:20 GMT  
		Size: 143.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4f55b1dc806b71a23f2da6e0277aa8e3aa10d4b98315122665689b36b12f0d6`  
		Last Modified: Thu, 11 May 2017 18:21:18 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77fe5620511da2514bc16d75a1def278c61416a1b04b063b63f9d175b05f4fbe`  
		Last Modified: Thu, 11 May 2017 18:21:20 GMT  
		Size: 1.8 KB (1787 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a5422fae1b3e96d5d79592e1437763f4614bd7d0bdad6c07ed5a34e0ffdc053`  
		Last Modified: Thu, 11 May 2017 18:21:18 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.3.17`

**does not exist** (yet?)

## `postgres:9.3`

```console
$ docker pull postgres@sha256:8c3c15c6240ef6d15b95648d03c21a58d9debad4697c1f857ca8238a09e300e0
```

-	Platforms:
	-	linux; amd64

### `postgres:9.3` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **103.1 MB (103119652 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8bf8461f2ff0b130441311730eba99ab46d2bc10e72d9a123ae53299459a3af1`
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
# Wed, 10 May 2017 15:23:54 GMT
ENV PG_VERSION=9.3.16-1.pgdg80+1
# Wed, 10 May 2017 15:23:56 GMT
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main' $PG_MAJOR > /etc/apt/sources.list.d/pgdg.list
# Wed, 10 May 2017 15:24:28 GMT
RUN apt-get update 	&& apt-get install -y postgresql-common 	&& sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf 	&& apt-get install -y 		postgresql-$PG_MAJOR=$PG_VERSION 		postgresql-contrib-$PG_MAJOR=$PG_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 15:24:30 GMT
RUN mv -v /usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample /usr/share/postgresql/$PG_MAJOR/ 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Wed, 10 May 2017 15:24:32 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod g+s /var/run/postgresql
# Wed, 10 May 2017 15:24:32 GMT
ENV PATH=/usr/lib/postgresql/9.3/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 10 May 2017 15:24:33 GMT
ENV PGDATA=/var/lib/postgresql/data
# Wed, 10 May 2017 15:24:35 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Wed, 10 May 2017 15:24:35 GMT
VOLUME [/var/lib/postgresql/data]
# Thu, 11 May 2017 18:04:27 GMT
COPY file:88406fb9d8f255c2eafecd84ec6558ad6c5da8e54a6228a71d059ef88604493b in /usr/local/bin/ 
# Thu, 11 May 2017 18:04:28 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 11 May 2017 18:04:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 11 May 2017 18:04:30 GMT
EXPOSE 5432/tcp
# Thu, 11 May 2017 18:04:31 GMT
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
	-	`sha256:83820b9db04b9ba26c843060aa562b6d87737ee34cba470725b2bb9dd32f5f9f`  
		Last Modified: Thu, 11 May 2017 18:22:28 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:011d117e1516a162e993b9ba70e6cde3b50dd6231a5e68bbe18c7fe487ff6da8`  
		Last Modified: Thu, 11 May 2017 18:22:37 GMT  
		Size: 42.1 MB (42095550 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c201fc82ab868a2de1cc2839a05584e27d567fda4b3269c2525dc9df2d061c54`  
		Last Modified: Thu, 11 May 2017 18:22:26 GMT  
		Size: 6.5 KB (6493 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3936fbb693a47506249c277c7331cb97956d644dfb2dd22d37113a20235188d7`  
		Last Modified: Thu, 11 May 2017 18:22:26 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7711ab2ffc2cbdf3f7d656a7084845d41968a2fccf1b4bb3ef2abd1ec5799192`  
		Last Modified: Thu, 11 May 2017 18:22:26 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:646f3feb4f9cb558232c35d0a79381c87b6b104c0fbe895d9a8835aba4cfeb76`  
		Last Modified: Thu, 11 May 2017 18:22:25 GMT  
		Size: 1.8 KB (1795 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1284710a81e750ce8d27401bd147557ee5e1dcd4ccbd82f76674e7dd45683f71`  
		Last Modified: Thu, 11 May 2017 18:22:26 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.3.17-alpine`

**does not exist** (yet?)

## `postgres:9.3-alpine`

```console
$ docker pull postgres@sha256:7abcaccde9698501b92cb4bd789308509cef346e0917698a061f9fee86803f4f
```

-	Platforms:
	-	linux; amd64

### `postgres:9.3-alpine` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.9 MB (13945768 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b4b8a5922c48553d211bd911b68c0ef3f7745afab461c8bd80d4a5f8d1a7e201`
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
# Wed, 10 May 2017 22:49:23 GMT
ENV PG_VERSION=9.3.16
# Wed, 10 May 2017 22:49:24 GMT
ENV PG_SHA256=845f5e4ac8cf026b6a77c5a180a2fe869f51e9d06acf8d0365b05505a2c66873
# Wed, 10 May 2017 22:49:25 GMT
ENV OSSP_UUID_VERSION=1.6.2
# Wed, 10 May 2017 22:49:25 GMT
ENV OSSP_UUID_SHA256=11a615225baa5f8bb686824423f50e4427acd3f70d394765bdff32801f0fd5b0
# Thu, 11 May 2017 18:08:26 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl 		util-linux-dev 		zlib-dev 		&& wget -O uuid.tar.gz "https://www.mirrorservice.org/sites/ftp.ossp.org/pkg/lib/uuid/uuid-$OSSP_UUID_VERSION.tar.gz" 	&& echo "$OSSP_UUID_SHA256 *uuid.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/ossp-uuid 	&& tar 		--extract 		--file uuid.tar.gz 		--directory /usr/src/ossp-uuid 		--strip-components 1 	&& rm uuid.tar.gz 	&& ( 		cd /usr/src/ossp-uuid 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		&& wget -O config.guess "http://git.savannah.gnu.org/gitweb/?p=config.git;a=blob_plain;f=config.guess;hb=HEAD" 		&& wget -O config.sub "http://git.savannah.gnu.org/gitweb/?p=config.git;a=blob_plain;f=config.sub;hb=HEAD" 		&& ./configure 			--build="$gnuArch" 			--prefix=/usr/local 		&& make -j "$(nproc)" 		&& make install 	) 	&& rm -rf /usr/src/ossp-uuid 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess "http://git.savannah.gnu.org/gitweb/?p=config.git;a=blob_plain;f=config.guess;hb=HEAD" 	&& wget -O config/config.sub "http://git.savannah.gnu.org/gitweb/?p=config.git;a=blob_plain;f=config.sub;hb=HEAD" 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--disable-rpath 		--with-ossp-uuid 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Thu, 11 May 2017 18:08:29 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Thu, 11 May 2017 18:08:31 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod g+s /var/run/postgresql
# Thu, 11 May 2017 18:08:32 GMT
ENV PATH=/usr/lib/postgresql/9.3/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 11 May 2017 18:08:33 GMT
ENV PGDATA=/var/lib/postgresql/data
# Thu, 11 May 2017 18:08:35 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Thu, 11 May 2017 18:08:36 GMT
VOLUME [/var/lib/postgresql/data]
# Thu, 11 May 2017 18:08:38 GMT
COPY file:b7f16d53ff9b4f99d3e3c8fd87c7ffb72ffdcb5ddd9b0773ca122008aba3de5d in /usr/local/bin/ 
# Thu, 11 May 2017 18:08:40 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 11 May 2017 18:08:41 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 11 May 2017 18:08:42 GMT
EXPOSE 5432/tcp
# Thu, 11 May 2017 18:08:43 GMT
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
	-	`sha256:556ccf90b6d73f73358d0e3438ee938b01b2ec7c04492120d90ddbe81db5b74f`  
		Last Modified: Thu, 11 May 2017 18:23:32 GMT  
		Size: 12.0 MB (11968929 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8648c3db7aede6d73058f2e40a0120978b0b623081211a6305b91cb5cd3c67d8`  
		Last Modified: Thu, 11 May 2017 18:23:28 GMT  
		Size: 6.5 KB (6463 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2abd33f3824cff36db3a51fb545daf38b0d6f05c23d20896b0728a212517bc08`  
		Last Modified: Thu, 11 May 2017 18:23:28 GMT  
		Size: 144.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ab1fa2564df5de985f03c69876f6d3528c4d515ba9fac3245598f2e311d4206`  
		Last Modified: Thu, 11 May 2017 18:23:28 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dae44edca18b2b5d5ea1a6916565865001e7cc39c61f27cd823f510057650c52`  
		Last Modified: Thu, 11 May 2017 18:23:28 GMT  
		Size: 1.8 KB (1788 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:204b274d0738921a44f634dc9d5b6e57c7ef6393a20544783a8b218513ae7d37`  
		Last Modified: Thu, 11 May 2017 18:23:28 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.2.21`

**does not exist** (yet?)

## `postgres:9.2`

```console
$ docker pull postgres@sha256:da8d67c1d24b6c1fb9a9bf40f748a18bbc6afa36d0c1f448e16592142c81edb2
```

-	Platforms:
	-	linux; amd64

### `postgres:9.2` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **103.0 MB (102959435 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:32bc9532556d3d307a5d579d9a73870b1a8637da8cb80bbaef7f8341cc915ffa`
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
# Wed, 10 May 2017 15:22:47 GMT
ENV PG_VERSION=9.2.20-1.pgdg80+1
# Wed, 10 May 2017 15:22:49 GMT
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main' $PG_MAJOR > /etc/apt/sources.list.d/pgdg.list
# Wed, 10 May 2017 15:23:22 GMT
RUN apt-get update 	&& apt-get install -y postgresql-common 	&& sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf 	&& apt-get install -y 		postgresql-$PG_MAJOR=$PG_VERSION 		postgresql-contrib-$PG_MAJOR=$PG_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 15:23:23 GMT
RUN mv -v /usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample /usr/share/postgresql/$PG_MAJOR/ 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Wed, 10 May 2017 15:23:25 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod g+s /var/run/postgresql
# Wed, 10 May 2017 15:23:26 GMT
ENV PATH=/usr/lib/postgresql/9.2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 10 May 2017 15:23:26 GMT
ENV PGDATA=/var/lib/postgresql/data
# Wed, 10 May 2017 15:23:28 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Wed, 10 May 2017 15:23:29 GMT
VOLUME [/var/lib/postgresql/data]
# Thu, 11 May 2017 18:09:17 GMT
COPY file:88406fb9d8f255c2eafecd84ec6558ad6c5da8e54a6228a71d059ef88604493b in /usr/local/bin/ 
# Thu, 11 May 2017 18:09:19 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 11 May 2017 18:09:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 11 May 2017 18:09:20 GMT
EXPOSE 5432/tcp
# Thu, 11 May 2017 18:09:21 GMT
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
	-	`sha256:20ab8bcccbccdbd348e63a02195fa2a4958967f053b54769ac712ad0b2f3fdbb`  
		Last Modified: Thu, 11 May 2017 18:24:32 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13fb48c555d438c4a6d50b2041b5d5f50cab1e7e5cb4ed356f3b0aea89046d70`  
		Last Modified: Thu, 11 May 2017 18:24:42 GMT  
		Size: 41.9 MB (41935392 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57d38e6d7b017215670dcf558dc4f8d99f12f069d11dc43733ade9f09926bdcd`  
		Last Modified: Thu, 11 May 2017 18:24:30 GMT  
		Size: 6.4 KB (6436 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80aa31b7bd4e4b8298ac5f0a0fb3650f028c89846f1d29424b357fce09958a6b`  
		Last Modified: Thu, 11 May 2017 18:24:29 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:681b29b7142cb1e140c68ffd08e4a256789cbfc93cc5ff0ea127251d70ab8891`  
		Last Modified: Thu, 11 May 2017 18:24:29 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6235f053c6f1d83d183c18079a618db54a4a1d1c761b3b685a92f98f93e33de`  
		Last Modified: Thu, 11 May 2017 18:24:30 GMT  
		Size: 1.8 KB (1795 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b1fd8e3b6cd65579d59c39b75a0381acb0bdab2b54114ec3026d3339d84225d`  
		Last Modified: Thu, 11 May 2017 18:24:29 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.2.21-alpine`

**does not exist** (yet?)

## `postgres:9.2-alpine`

```console
$ docker pull postgres@sha256:78daf020df83793f70275901c45419138e4de97760fd0538025a97a44a3abf5c
```

-	Platforms:
	-	linux; amd64

### `postgres:9.2-alpine` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.8 MB (13777432 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d3d85a172dbcb32d25c1b57d48ea65b933944c316037920c4330e7865058a33e`
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
# Wed, 10 May 2017 22:47:00 GMT
ENV PG_VERSION=9.2.20
# Wed, 10 May 2017 22:47:01 GMT
ENV PG_SHA256=0b8abdae8400cabea5587a726003c9dd71c73c049bdae523abc35f9312dd8f26
# Wed, 10 May 2017 22:47:02 GMT
ENV OSSP_UUID_VERSION=1.6.2
# Wed, 10 May 2017 22:47:03 GMT
ENV OSSP_UUID_SHA256=11a615225baa5f8bb686824423f50e4427acd3f70d394765bdff32801f0fd5b0
# Thu, 11 May 2017 18:12:31 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl 		util-linux-dev 		zlib-dev 		&& wget -O uuid.tar.gz "https://www.mirrorservice.org/sites/ftp.ossp.org/pkg/lib/uuid/uuid-$OSSP_UUID_VERSION.tar.gz" 	&& echo "$OSSP_UUID_SHA256 *uuid.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/ossp-uuid 	&& tar 		--extract 		--file uuid.tar.gz 		--directory /usr/src/ossp-uuid 		--strip-components 1 	&& rm uuid.tar.gz 	&& ( 		cd /usr/src/ossp-uuid 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		&& wget -O config.guess "http://git.savannah.gnu.org/gitweb/?p=config.git;a=blob_plain;f=config.guess;hb=HEAD" 		&& wget -O config.sub "http://git.savannah.gnu.org/gitweb/?p=config.git;a=blob_plain;f=config.sub;hb=HEAD" 		&& ./configure 			--build="$gnuArch" 			--prefix=/usr/local 		&& make -j "$(nproc)" 		&& make install 	) 	&& rm -rf /usr/src/ossp-uuid 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess "http://git.savannah.gnu.org/gitweb/?p=config.git;a=blob_plain;f=config.guess;hb=HEAD" 	&& wget -O config/config.sub "http://git.savannah.gnu.org/gitweb/?p=config.git;a=blob_plain;f=config.sub;hb=HEAD" 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--disable-rpath 		--with-ossp-uuid 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Thu, 11 May 2017 18:12:33 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Thu, 11 May 2017 18:12:35 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod g+s /var/run/postgresql
# Thu, 11 May 2017 18:12:36 GMT
ENV PATH=/usr/lib/postgresql/9.2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 11 May 2017 18:12:37 GMT
ENV PGDATA=/var/lib/postgresql/data
# Thu, 11 May 2017 18:12:40 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Thu, 11 May 2017 18:12:41 GMT
VOLUME [/var/lib/postgresql/data]
# Thu, 11 May 2017 18:12:42 GMT
COPY file:b7f16d53ff9b4f99d3e3c8fd87c7ffb72ffdcb5ddd9b0773ca122008aba3de5d in /usr/local/bin/ 
# Thu, 11 May 2017 18:12:45 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 11 May 2017 18:12:46 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 11 May 2017 18:12:47 GMT
EXPOSE 5432/tcp
# Thu, 11 May 2017 18:12:48 GMT
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
	-	`sha256:27eb34f5a2b695fb3edd102b9f676a8684e0fcc8d035e5d988057c8c02f38338`  
		Last Modified: Thu, 11 May 2017 18:25:54 GMT  
		Size: 11.8 MB (11800648 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8985d9649126862a51e37bdd009d2c85f208220210c162fcabb471a1b7ee0e1`  
		Last Modified: Thu, 11 May 2017 18:25:49 GMT  
		Size: 6.4 KB (6404 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff4314da334a15d41a1f473734e32700d110175b31c43b42fb6139d5d4663013`  
		Last Modified: Thu, 11 May 2017 18:25:49 GMT  
		Size: 144.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72ff00dbddfe84b9eb1dcefe8a40e9dd41417cd16c606791f1f72e0af4323c1c`  
		Last Modified: Thu, 11 May 2017 18:25:49 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acb6796e93cec343d0af87961bce044dd7dac677e37e6ae16fafdcd8315c58e2`  
		Last Modified: Thu, 11 May 2017 18:25:49 GMT  
		Size: 1.8 KB (1792 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1a37bda4cf82128086eb47284a205390d3342886eec3ac7979fa86b75f77b5e`  
		Last Modified: Thu, 11 May 2017 18:25:49 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
