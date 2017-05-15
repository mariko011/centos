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
$ docker pull postgres@sha256:b9fa1cdbe4d3445c08e1496e36a3f18a3cd6d368154ce90469a298a5950a4b69
```

-	Platforms:
	-	linux; amd64

### `postgres:9.6.3` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.3 MB (104317098 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dd0f50742a348456c934cd169944f4212657272f1e552eb385bc171a1330d32a`
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
# Mon, 15 May 2017 21:19:04 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod g+s /var/run/postgresql
# Mon, 15 May 2017 21:19:05 GMT
ENV PATH=/usr/lib/postgresql/9.6/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 15 May 2017 21:19:06 GMT
ENV PGDATA=/var/lib/postgresql/data
# Mon, 15 May 2017 21:19:07 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Mon, 15 May 2017 21:19:08 GMT
VOLUME [/var/lib/postgresql/data]
# Mon, 15 May 2017 21:19:09 GMT
COPY file:88406fb9d8f255c2eafecd84ec6558ad6c5da8e54a6228a71d059ef88604493b in /usr/local/bin/ 
# Mon, 15 May 2017 21:19:11 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Mon, 15 May 2017 21:19:11 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 15 May 2017 21:19:12 GMT
EXPOSE 5432/tcp
# Mon, 15 May 2017 21:19:13 GMT
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
	-	`sha256:e6744ef841dbb484f5041f5a7e2e775b2be3e8fc01e9130873832fdb9df65675`  
		Last Modified: Mon, 15 May 2017 21:37:23 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eea92d4e4b879ea52f11d3b60573730c0cf051c80591408157b4e9e4b8b33cc7`  
		Last Modified: Mon, 15 May 2017 21:37:23 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4aa1806cedf8728da92ca7771c4d5012e5c396dce41336ce6d423c97b5590614`  
		Last Modified: Mon, 15 May 2017 21:37:23 GMT  
		Size: 1.8 KB (1795 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6537d862689cfcefc894b45d3a766f1d6bc49d00810cc9d28b8072a5bfbd8cd`  
		Last Modified: Mon, 15 May 2017 21:37:23 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.6`

```console
$ docker pull postgres@sha256:b9fa1cdbe4d3445c08e1496e36a3f18a3cd6d368154ce90469a298a5950a4b69
```

-	Platforms:
	-	linux; amd64

### `postgres:9.6` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.3 MB (104317098 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dd0f50742a348456c934cd169944f4212657272f1e552eb385bc171a1330d32a`
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
# Mon, 15 May 2017 21:19:04 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod g+s /var/run/postgresql
# Mon, 15 May 2017 21:19:05 GMT
ENV PATH=/usr/lib/postgresql/9.6/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 15 May 2017 21:19:06 GMT
ENV PGDATA=/var/lib/postgresql/data
# Mon, 15 May 2017 21:19:07 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Mon, 15 May 2017 21:19:08 GMT
VOLUME [/var/lib/postgresql/data]
# Mon, 15 May 2017 21:19:09 GMT
COPY file:88406fb9d8f255c2eafecd84ec6558ad6c5da8e54a6228a71d059ef88604493b in /usr/local/bin/ 
# Mon, 15 May 2017 21:19:11 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Mon, 15 May 2017 21:19:11 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 15 May 2017 21:19:12 GMT
EXPOSE 5432/tcp
# Mon, 15 May 2017 21:19:13 GMT
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
	-	`sha256:e6744ef841dbb484f5041f5a7e2e775b2be3e8fc01e9130873832fdb9df65675`  
		Last Modified: Mon, 15 May 2017 21:37:23 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eea92d4e4b879ea52f11d3b60573730c0cf051c80591408157b4e9e4b8b33cc7`  
		Last Modified: Mon, 15 May 2017 21:37:23 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4aa1806cedf8728da92ca7771c4d5012e5c396dce41336ce6d423c97b5590614`  
		Last Modified: Mon, 15 May 2017 21:37:23 GMT  
		Size: 1.8 KB (1795 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6537d862689cfcefc894b45d3a766f1d6bc49d00810cc9d28b8072a5bfbd8cd`  
		Last Modified: Mon, 15 May 2017 21:37:23 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9`

```console
$ docker pull postgres@sha256:b9fa1cdbe4d3445c08e1496e36a3f18a3cd6d368154ce90469a298a5950a4b69
```

-	Platforms:
	-	linux; amd64

### `postgres:9` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.3 MB (104317098 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dd0f50742a348456c934cd169944f4212657272f1e552eb385bc171a1330d32a`
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
# Mon, 15 May 2017 21:19:04 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod g+s /var/run/postgresql
# Mon, 15 May 2017 21:19:05 GMT
ENV PATH=/usr/lib/postgresql/9.6/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 15 May 2017 21:19:06 GMT
ENV PGDATA=/var/lib/postgresql/data
# Mon, 15 May 2017 21:19:07 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Mon, 15 May 2017 21:19:08 GMT
VOLUME [/var/lib/postgresql/data]
# Mon, 15 May 2017 21:19:09 GMT
COPY file:88406fb9d8f255c2eafecd84ec6558ad6c5da8e54a6228a71d059ef88604493b in /usr/local/bin/ 
# Mon, 15 May 2017 21:19:11 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Mon, 15 May 2017 21:19:11 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 15 May 2017 21:19:12 GMT
EXPOSE 5432/tcp
# Mon, 15 May 2017 21:19:13 GMT
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
	-	`sha256:e6744ef841dbb484f5041f5a7e2e775b2be3e8fc01e9130873832fdb9df65675`  
		Last Modified: Mon, 15 May 2017 21:37:23 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eea92d4e4b879ea52f11d3b60573730c0cf051c80591408157b4e9e4b8b33cc7`  
		Last Modified: Mon, 15 May 2017 21:37:23 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4aa1806cedf8728da92ca7771c4d5012e5c396dce41336ce6d423c97b5590614`  
		Last Modified: Mon, 15 May 2017 21:37:23 GMT  
		Size: 1.8 KB (1795 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6537d862689cfcefc894b45d3a766f1d6bc49d00810cc9d28b8072a5bfbd8cd`  
		Last Modified: Mon, 15 May 2017 21:37:23 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:latest`

```console
$ docker pull postgres@sha256:b9fa1cdbe4d3445c08e1496e36a3f18a3cd6d368154ce90469a298a5950a4b69
```

-	Platforms:
	-	linux; amd64

### `postgres:latest` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.3 MB (104317098 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dd0f50742a348456c934cd169944f4212657272f1e552eb385bc171a1330d32a`
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
# Mon, 15 May 2017 21:19:04 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod g+s /var/run/postgresql
# Mon, 15 May 2017 21:19:05 GMT
ENV PATH=/usr/lib/postgresql/9.6/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 15 May 2017 21:19:06 GMT
ENV PGDATA=/var/lib/postgresql/data
# Mon, 15 May 2017 21:19:07 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Mon, 15 May 2017 21:19:08 GMT
VOLUME [/var/lib/postgresql/data]
# Mon, 15 May 2017 21:19:09 GMT
COPY file:88406fb9d8f255c2eafecd84ec6558ad6c5da8e54a6228a71d059ef88604493b in /usr/local/bin/ 
# Mon, 15 May 2017 21:19:11 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Mon, 15 May 2017 21:19:11 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 15 May 2017 21:19:12 GMT
EXPOSE 5432/tcp
# Mon, 15 May 2017 21:19:13 GMT
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
	-	`sha256:e6744ef841dbb484f5041f5a7e2e775b2be3e8fc01e9130873832fdb9df65675`  
		Last Modified: Mon, 15 May 2017 21:37:23 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eea92d4e4b879ea52f11d3b60573730c0cf051c80591408157b4e9e4b8b33cc7`  
		Last Modified: Mon, 15 May 2017 21:37:23 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4aa1806cedf8728da92ca7771c4d5012e5c396dce41336ce6d423c97b5590614`  
		Last Modified: Mon, 15 May 2017 21:37:23 GMT  
		Size: 1.8 KB (1795 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6537d862689cfcefc894b45d3a766f1d6bc49d00810cc9d28b8072a5bfbd8cd`  
		Last Modified: Mon, 15 May 2017 21:37:23 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.6.3-alpine`

```console
$ docker pull postgres@sha256:ac1615bc3ada70b3e9abe0c9cda81c3deec1b1b3a051ffadde32a17973f631f4
```

-	Platforms:
	-	linux; amd64

### `postgres:9.6.3-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.7 MB (14663961 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:727b7f7ac52a1e21cbd2b23cb3440b86d331d3dab1ab0188bd268e73f7734d3f`
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
# Mon, 15 May 2017 21:21:53 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod g+s /var/run/postgresql
# Mon, 15 May 2017 21:21:54 GMT
ENV PATH=/usr/lib/postgresql/9.6/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 15 May 2017 21:21:54 GMT
ENV PGDATA=/var/lib/postgresql/data
# Mon, 15 May 2017 21:21:56 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Mon, 15 May 2017 21:21:57 GMT
VOLUME [/var/lib/postgresql/data]
# Mon, 15 May 2017 21:21:58 GMT
COPY file:b7f16d53ff9b4f99d3e3c8fd87c7ffb72ffdcb5ddd9b0773ca122008aba3de5d in /usr/local/bin/ 
# Mon, 15 May 2017 21:21:59 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Mon, 15 May 2017 21:22:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 15 May 2017 21:22:01 GMT
EXPOSE 5432/tcp
# Mon, 15 May 2017 21:22:02 GMT
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
	-	`sha256:d66b6da6fb5e2929eef36fbc9d66c8cdb9d40908f608461cb8f248d3505f29e9`  
		Last Modified: Mon, 15 May 2017 21:39:05 GMT  
		Size: 144.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e8b98e4a698184fd4d4f8a22b914b72de6428df3bce8aa5eb50180cb3543900`  
		Last Modified: Mon, 15 May 2017 21:39:06 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7dec7279bf3042341bfb96b1c00c4f7027409cdc26ac48c91939617c3a7ca69`  
		Last Modified: Mon, 15 May 2017 21:39:05 GMT  
		Size: 1.8 KB (1786 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91a8d91a2c11242e92d6e7c37ff2e06d8066d91d626358563fd5afd389f81e53`  
		Last Modified: Mon, 15 May 2017 21:39:07 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.6-alpine`

```console
$ docker pull postgres@sha256:ac1615bc3ada70b3e9abe0c9cda81c3deec1b1b3a051ffadde32a17973f631f4
```

-	Platforms:
	-	linux; amd64

### `postgres:9.6-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.7 MB (14663961 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:727b7f7ac52a1e21cbd2b23cb3440b86d331d3dab1ab0188bd268e73f7734d3f`
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
# Mon, 15 May 2017 21:21:53 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod g+s /var/run/postgresql
# Mon, 15 May 2017 21:21:54 GMT
ENV PATH=/usr/lib/postgresql/9.6/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 15 May 2017 21:21:54 GMT
ENV PGDATA=/var/lib/postgresql/data
# Mon, 15 May 2017 21:21:56 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Mon, 15 May 2017 21:21:57 GMT
VOLUME [/var/lib/postgresql/data]
# Mon, 15 May 2017 21:21:58 GMT
COPY file:b7f16d53ff9b4f99d3e3c8fd87c7ffb72ffdcb5ddd9b0773ca122008aba3de5d in /usr/local/bin/ 
# Mon, 15 May 2017 21:21:59 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Mon, 15 May 2017 21:22:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 15 May 2017 21:22:01 GMT
EXPOSE 5432/tcp
# Mon, 15 May 2017 21:22:02 GMT
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
	-	`sha256:d66b6da6fb5e2929eef36fbc9d66c8cdb9d40908f608461cb8f248d3505f29e9`  
		Last Modified: Mon, 15 May 2017 21:39:05 GMT  
		Size: 144.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e8b98e4a698184fd4d4f8a22b914b72de6428df3bce8aa5eb50180cb3543900`  
		Last Modified: Mon, 15 May 2017 21:39:06 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7dec7279bf3042341bfb96b1c00c4f7027409cdc26ac48c91939617c3a7ca69`  
		Last Modified: Mon, 15 May 2017 21:39:05 GMT  
		Size: 1.8 KB (1786 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91a8d91a2c11242e92d6e7c37ff2e06d8066d91d626358563fd5afd389f81e53`  
		Last Modified: Mon, 15 May 2017 21:39:07 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9-alpine`

```console
$ docker pull postgres@sha256:ac1615bc3ada70b3e9abe0c9cda81c3deec1b1b3a051ffadde32a17973f631f4
```

-	Platforms:
	-	linux; amd64

### `postgres:9-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.7 MB (14663961 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:727b7f7ac52a1e21cbd2b23cb3440b86d331d3dab1ab0188bd268e73f7734d3f`
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
# Mon, 15 May 2017 21:21:53 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod g+s /var/run/postgresql
# Mon, 15 May 2017 21:21:54 GMT
ENV PATH=/usr/lib/postgresql/9.6/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 15 May 2017 21:21:54 GMT
ENV PGDATA=/var/lib/postgresql/data
# Mon, 15 May 2017 21:21:56 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Mon, 15 May 2017 21:21:57 GMT
VOLUME [/var/lib/postgresql/data]
# Mon, 15 May 2017 21:21:58 GMT
COPY file:b7f16d53ff9b4f99d3e3c8fd87c7ffb72ffdcb5ddd9b0773ca122008aba3de5d in /usr/local/bin/ 
# Mon, 15 May 2017 21:21:59 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Mon, 15 May 2017 21:22:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 15 May 2017 21:22:01 GMT
EXPOSE 5432/tcp
# Mon, 15 May 2017 21:22:02 GMT
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
	-	`sha256:d66b6da6fb5e2929eef36fbc9d66c8cdb9d40908f608461cb8f248d3505f29e9`  
		Last Modified: Mon, 15 May 2017 21:39:05 GMT  
		Size: 144.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e8b98e4a698184fd4d4f8a22b914b72de6428df3bce8aa5eb50180cb3543900`  
		Last Modified: Mon, 15 May 2017 21:39:06 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7dec7279bf3042341bfb96b1c00c4f7027409cdc26ac48c91939617c3a7ca69`  
		Last Modified: Mon, 15 May 2017 21:39:05 GMT  
		Size: 1.8 KB (1786 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91a8d91a2c11242e92d6e7c37ff2e06d8066d91d626358563fd5afd389f81e53`  
		Last Modified: Mon, 15 May 2017 21:39:07 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:alpine`

```console
$ docker pull postgres@sha256:ac1615bc3ada70b3e9abe0c9cda81c3deec1b1b3a051ffadde32a17973f631f4
```

-	Platforms:
	-	linux; amd64

### `postgres:alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.7 MB (14663961 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:727b7f7ac52a1e21cbd2b23cb3440b86d331d3dab1ab0188bd268e73f7734d3f`
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
# Mon, 15 May 2017 21:21:53 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod g+s /var/run/postgresql
# Mon, 15 May 2017 21:21:54 GMT
ENV PATH=/usr/lib/postgresql/9.6/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 15 May 2017 21:21:54 GMT
ENV PGDATA=/var/lib/postgresql/data
# Mon, 15 May 2017 21:21:56 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Mon, 15 May 2017 21:21:57 GMT
VOLUME [/var/lib/postgresql/data]
# Mon, 15 May 2017 21:21:58 GMT
COPY file:b7f16d53ff9b4f99d3e3c8fd87c7ffb72ffdcb5ddd9b0773ca122008aba3de5d in /usr/local/bin/ 
# Mon, 15 May 2017 21:21:59 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Mon, 15 May 2017 21:22:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 15 May 2017 21:22:01 GMT
EXPOSE 5432/tcp
# Mon, 15 May 2017 21:22:02 GMT
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
	-	`sha256:d66b6da6fb5e2929eef36fbc9d66c8cdb9d40908f608461cb8f248d3505f29e9`  
		Last Modified: Mon, 15 May 2017 21:39:05 GMT  
		Size: 144.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e8b98e4a698184fd4d4f8a22b914b72de6428df3bce8aa5eb50180cb3543900`  
		Last Modified: Mon, 15 May 2017 21:39:06 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7dec7279bf3042341bfb96b1c00c4f7027409cdc26ac48c91939617c3a7ca69`  
		Last Modified: Mon, 15 May 2017 21:39:05 GMT  
		Size: 1.8 KB (1786 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91a8d91a2c11242e92d6e7c37ff2e06d8066d91d626358563fd5afd389f81e53`  
		Last Modified: Mon, 15 May 2017 21:39:07 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.5.7`

```console
$ docker pull postgres@sha256:751bebbc12716d7d9818678e91cbec8138e52dc4a084f0e81c58cd8b419930e5
```

-	Platforms:
	-	linux; amd64

### `postgres:9.5.7` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **103.8 MB (103818778 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9364d06c7824521f183d62dcb3b4e4c41f03b228fd4cd38b741973937f1291e0`
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
# Mon, 15 May 2017 21:23:12 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod g+s /var/run/postgresql
# Mon, 15 May 2017 21:23:13 GMT
ENV PATH=/usr/lib/postgresql/9.5/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 15 May 2017 21:23:14 GMT
ENV PGDATA=/var/lib/postgresql/data
# Mon, 15 May 2017 21:23:15 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Mon, 15 May 2017 21:23:16 GMT
VOLUME [/var/lib/postgresql/data]
# Mon, 15 May 2017 21:23:17 GMT
COPY file:88406fb9d8f255c2eafecd84ec6558ad6c5da8e54a6228a71d059ef88604493b in /usr/local/bin/ 
# Mon, 15 May 2017 21:23:19 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Mon, 15 May 2017 21:23:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 15 May 2017 21:23:20 GMT
EXPOSE 5432/tcp
# Mon, 15 May 2017 21:23:21 GMT
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
	-	`sha256:647e2f2a113d0b2440c594e0614ca1293707bbf580815a7ea4b02600e95d6535`  
		Last Modified: Mon, 15 May 2017 21:40:40 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:483c57b9c1765b0e350dfffd3186a48d2792b60611830e32fdae4dda3b61ea18`  
		Last Modified: Mon, 15 May 2017 21:40:40 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5d97d4d885d630a607c4d130d38795ee28bab141027aed9b780fac71ac269ce`  
		Last Modified: Mon, 15 May 2017 21:40:41 GMT  
		Size: 1.8 KB (1797 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8cf523033c1db6930dc4cd8f5437a681da69eed860e2f3979253d46f8cfff319`  
		Last Modified: Mon, 15 May 2017 21:40:40 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.5`

```console
$ docker pull postgres@sha256:751bebbc12716d7d9818678e91cbec8138e52dc4a084f0e81c58cd8b419930e5
```

-	Platforms:
	-	linux; amd64

### `postgres:9.5` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **103.8 MB (103818778 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9364d06c7824521f183d62dcb3b4e4c41f03b228fd4cd38b741973937f1291e0`
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
# Mon, 15 May 2017 21:23:12 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod g+s /var/run/postgresql
# Mon, 15 May 2017 21:23:13 GMT
ENV PATH=/usr/lib/postgresql/9.5/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 15 May 2017 21:23:14 GMT
ENV PGDATA=/var/lib/postgresql/data
# Mon, 15 May 2017 21:23:15 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Mon, 15 May 2017 21:23:16 GMT
VOLUME [/var/lib/postgresql/data]
# Mon, 15 May 2017 21:23:17 GMT
COPY file:88406fb9d8f255c2eafecd84ec6558ad6c5da8e54a6228a71d059ef88604493b in /usr/local/bin/ 
# Mon, 15 May 2017 21:23:19 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Mon, 15 May 2017 21:23:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 15 May 2017 21:23:20 GMT
EXPOSE 5432/tcp
# Mon, 15 May 2017 21:23:21 GMT
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
	-	`sha256:647e2f2a113d0b2440c594e0614ca1293707bbf580815a7ea4b02600e95d6535`  
		Last Modified: Mon, 15 May 2017 21:40:40 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:483c57b9c1765b0e350dfffd3186a48d2792b60611830e32fdae4dda3b61ea18`  
		Last Modified: Mon, 15 May 2017 21:40:40 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5d97d4d885d630a607c4d130d38795ee28bab141027aed9b780fac71ac269ce`  
		Last Modified: Mon, 15 May 2017 21:40:41 GMT  
		Size: 1.8 KB (1797 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8cf523033c1db6930dc4cd8f5437a681da69eed860e2f3979253d46f8cfff319`  
		Last Modified: Mon, 15 May 2017 21:40:40 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.5.7-alpine`

```console
$ docker pull postgres@sha256:756df13351703747ae4f7956c4fe96d4d3a9b157a366c709f2382d65e7e4c9e7
```

-	Platforms:
	-	linux; amd64

### `postgres:9.5.7-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.4 MB (14374411 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1d1e985ca3a726dd93502d664ec473ba9733a438a658951fddd6b48dc8368594`
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
# Mon, 15 May 2017 21:26:03 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod g+s /var/run/postgresql
# Mon, 15 May 2017 21:26:04 GMT
ENV PATH=/usr/lib/postgresql/9.5/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 15 May 2017 21:26:05 GMT
ENV PGDATA=/var/lib/postgresql/data
# Mon, 15 May 2017 21:26:06 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Mon, 15 May 2017 21:26:07 GMT
VOLUME [/var/lib/postgresql/data]
# Mon, 15 May 2017 21:26:08 GMT
COPY file:b7f16d53ff9b4f99d3e3c8fd87c7ffb72ffdcb5ddd9b0773ca122008aba3de5d in /usr/local/bin/ 
# Mon, 15 May 2017 21:26:09 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Mon, 15 May 2017 21:26:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 15 May 2017 21:26:11 GMT
EXPOSE 5432/tcp
# Mon, 15 May 2017 21:26:12 GMT
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
	-	`sha256:707aaa0aadc29e62d70b080166b42ef88a24be09290c1206d68e88eb84f8b1f4`  
		Last Modified: Mon, 15 May 2017 21:41:36 GMT  
		Size: 143.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:487e4ffed5bc9272101e69deed2776e1d98a8ca7474ac1074dedb2b30d79d12d`  
		Last Modified: Mon, 15 May 2017 21:41:36 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1de94b36a78d2c52a2a103ec7fe26ab612f81ea9736fef74e5ac5c311bd26020`  
		Last Modified: Mon, 15 May 2017 21:41:36 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac109e5b6f455d2b47ffe2a21caf2a89a8458291fdf823017cd8fe69fe6dd00b`  
		Last Modified: Mon, 15 May 2017 21:41:36 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.5-alpine`

```console
$ docker pull postgres@sha256:756df13351703747ae4f7956c4fe96d4d3a9b157a366c709f2382d65e7e4c9e7
```

-	Platforms:
	-	linux; amd64

### `postgres:9.5-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.4 MB (14374411 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1d1e985ca3a726dd93502d664ec473ba9733a438a658951fddd6b48dc8368594`
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
# Mon, 15 May 2017 21:26:03 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod g+s /var/run/postgresql
# Mon, 15 May 2017 21:26:04 GMT
ENV PATH=/usr/lib/postgresql/9.5/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 15 May 2017 21:26:05 GMT
ENV PGDATA=/var/lib/postgresql/data
# Mon, 15 May 2017 21:26:06 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Mon, 15 May 2017 21:26:07 GMT
VOLUME [/var/lib/postgresql/data]
# Mon, 15 May 2017 21:26:08 GMT
COPY file:b7f16d53ff9b4f99d3e3c8fd87c7ffb72ffdcb5ddd9b0773ca122008aba3de5d in /usr/local/bin/ 
# Mon, 15 May 2017 21:26:09 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Mon, 15 May 2017 21:26:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 15 May 2017 21:26:11 GMT
EXPOSE 5432/tcp
# Mon, 15 May 2017 21:26:12 GMT
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
	-	`sha256:707aaa0aadc29e62d70b080166b42ef88a24be09290c1206d68e88eb84f8b1f4`  
		Last Modified: Mon, 15 May 2017 21:41:36 GMT  
		Size: 143.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:487e4ffed5bc9272101e69deed2776e1d98a8ca7474ac1074dedb2b30d79d12d`  
		Last Modified: Mon, 15 May 2017 21:41:36 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1de94b36a78d2c52a2a103ec7fe26ab612f81ea9736fef74e5ac5c311bd26020`  
		Last Modified: Mon, 15 May 2017 21:41:36 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac109e5b6f455d2b47ffe2a21caf2a89a8458291fdf823017cd8fe69fe6dd00b`  
		Last Modified: Mon, 15 May 2017 21:41:36 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.4.12`

```console
$ docker pull postgres@sha256:8988064772fc8a39f0be47f7f2557788559221b27a51cbba595f23868edbc426
```

-	Platforms:
	-	linux; amd64

### `postgres:9.4.12` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **103.5 MB (103486293 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:82964be89503a28b287401b63f7059d9df59e23095cc790efb512b010f6abbc2`
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
# Mon, 15 May 2017 21:27:08 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod g+s /var/run/postgresql
# Mon, 15 May 2017 21:27:09 GMT
ENV PATH=/usr/lib/postgresql/9.4/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 15 May 2017 21:27:09 GMT
ENV PGDATA=/var/lib/postgresql/data
# Mon, 15 May 2017 21:27:11 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Mon, 15 May 2017 21:27:11 GMT
VOLUME [/var/lib/postgresql/data]
# Mon, 15 May 2017 21:27:13 GMT
COPY file:88406fb9d8f255c2eafecd84ec6558ad6c5da8e54a6228a71d059ef88604493b in /usr/local/bin/ 
# Mon, 15 May 2017 21:27:14 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Mon, 15 May 2017 21:27:15 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 15 May 2017 21:27:15 GMT
EXPOSE 5432/tcp
# Mon, 15 May 2017 21:27:16 GMT
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
	-	`sha256:e049735581774feb8ce397826373bd6ea91a390fc75ed6f1cfdd5a5fc31dbd15`  
		Last Modified: Mon, 15 May 2017 21:42:30 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79155f9ed5e1bb97aa66ba8f4073995d9437aefbdf3a8bd5d1e9075a8494f7cf`  
		Last Modified: Mon, 15 May 2017 21:42:30 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:010432309d6c118adc122af1d00fcacffa8adc24015ac878791ee8e139af82c8`  
		Last Modified: Mon, 15 May 2017 21:42:30 GMT  
		Size: 1.8 KB (1795 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1d8761b1faef3ce0cfe74ed53e6c7bba53405b572b43b845ee4932368162d19`  
		Last Modified: Mon, 15 May 2017 21:42:31 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.4`

```console
$ docker pull postgres@sha256:8988064772fc8a39f0be47f7f2557788559221b27a51cbba595f23868edbc426
```

-	Platforms:
	-	linux; amd64

### `postgres:9.4` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **103.5 MB (103486293 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:82964be89503a28b287401b63f7059d9df59e23095cc790efb512b010f6abbc2`
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
# Mon, 15 May 2017 21:27:08 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod g+s /var/run/postgresql
# Mon, 15 May 2017 21:27:09 GMT
ENV PATH=/usr/lib/postgresql/9.4/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 15 May 2017 21:27:09 GMT
ENV PGDATA=/var/lib/postgresql/data
# Mon, 15 May 2017 21:27:11 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Mon, 15 May 2017 21:27:11 GMT
VOLUME [/var/lib/postgresql/data]
# Mon, 15 May 2017 21:27:13 GMT
COPY file:88406fb9d8f255c2eafecd84ec6558ad6c5da8e54a6228a71d059ef88604493b in /usr/local/bin/ 
# Mon, 15 May 2017 21:27:14 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Mon, 15 May 2017 21:27:15 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 15 May 2017 21:27:15 GMT
EXPOSE 5432/tcp
# Mon, 15 May 2017 21:27:16 GMT
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
	-	`sha256:e049735581774feb8ce397826373bd6ea91a390fc75ed6f1cfdd5a5fc31dbd15`  
		Last Modified: Mon, 15 May 2017 21:42:30 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79155f9ed5e1bb97aa66ba8f4073995d9437aefbdf3a8bd5d1e9075a8494f7cf`  
		Last Modified: Mon, 15 May 2017 21:42:30 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:010432309d6c118adc122af1d00fcacffa8adc24015ac878791ee8e139af82c8`  
		Last Modified: Mon, 15 May 2017 21:42:30 GMT  
		Size: 1.8 KB (1795 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1d8761b1faef3ce0cfe74ed53e6c7bba53405b572b43b845ee4932368162d19`  
		Last Modified: Mon, 15 May 2017 21:42:31 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.4.12-alpine`

```console
$ docker pull postgres@sha256:ad4479b0bcd49a8996487ab4751f681aa6ff3613f63f4b9d2d9cbba45610adfc
```

-	Platforms:
	-	linux; amd64

### `postgres:9.4.12-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.2 MB (14240145 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ac970cf19abba9943c72980b71ff4c4102e6f0bf06e6e6cf33b2b5084667f71b`
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
# Mon, 15 May 2017 21:29:39 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod g+s /var/run/postgresql
# Mon, 15 May 2017 21:29:40 GMT
ENV PATH=/usr/lib/postgresql/9.4/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 15 May 2017 21:29:41 GMT
ENV PGDATA=/var/lib/postgresql/data
# Mon, 15 May 2017 21:29:42 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Mon, 15 May 2017 21:29:43 GMT
VOLUME [/var/lib/postgresql/data]
# Mon, 15 May 2017 21:29:44 GMT
COPY file:b7f16d53ff9b4f99d3e3c8fd87c7ffb72ffdcb5ddd9b0773ca122008aba3de5d in /usr/local/bin/ 
# Mon, 15 May 2017 21:29:46 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Mon, 15 May 2017 21:29:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 15 May 2017 21:29:47 GMT
EXPOSE 5432/tcp
# Mon, 15 May 2017 21:29:48 GMT
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
	-	`sha256:4fec3d2f436ef88dd363f7e880ea12593376a60ac1ef922724acd96d554dc759`  
		Last Modified: Mon, 15 May 2017 21:43:26 GMT  
		Size: 143.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8df7986db83a92912cf5708de83058d579ceb9a59d2e1ef519ddf1dbc07f2189`  
		Last Modified: Mon, 15 May 2017 21:43:26 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b51a15b93f8e98941a6c6f16ebd522ca23657d89526f24a1216f106fac265425`  
		Last Modified: Mon, 15 May 2017 21:43:26 GMT  
		Size: 1.8 KB (1788 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0cd9a965981bde13095a4217ecc06d6c5f32d78f1a40d1d83c43fd50513014fc`  
		Last Modified: Mon, 15 May 2017 21:43:27 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.4-alpine`

```console
$ docker pull postgres@sha256:ad4479b0bcd49a8996487ab4751f681aa6ff3613f63f4b9d2d9cbba45610adfc
```

-	Platforms:
	-	linux; amd64

### `postgres:9.4-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.2 MB (14240145 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ac970cf19abba9943c72980b71ff4c4102e6f0bf06e6e6cf33b2b5084667f71b`
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
# Mon, 15 May 2017 21:29:39 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod g+s /var/run/postgresql
# Mon, 15 May 2017 21:29:40 GMT
ENV PATH=/usr/lib/postgresql/9.4/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 15 May 2017 21:29:41 GMT
ENV PGDATA=/var/lib/postgresql/data
# Mon, 15 May 2017 21:29:42 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Mon, 15 May 2017 21:29:43 GMT
VOLUME [/var/lib/postgresql/data]
# Mon, 15 May 2017 21:29:44 GMT
COPY file:b7f16d53ff9b4f99d3e3c8fd87c7ffb72ffdcb5ddd9b0773ca122008aba3de5d in /usr/local/bin/ 
# Mon, 15 May 2017 21:29:46 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Mon, 15 May 2017 21:29:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 15 May 2017 21:29:47 GMT
EXPOSE 5432/tcp
# Mon, 15 May 2017 21:29:48 GMT
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
	-	`sha256:4fec3d2f436ef88dd363f7e880ea12593376a60ac1ef922724acd96d554dc759`  
		Last Modified: Mon, 15 May 2017 21:43:26 GMT  
		Size: 143.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8df7986db83a92912cf5708de83058d579ceb9a59d2e1ef519ddf1dbc07f2189`  
		Last Modified: Mon, 15 May 2017 21:43:26 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b51a15b93f8e98941a6c6f16ebd522ca23657d89526f24a1216f106fac265425`  
		Last Modified: Mon, 15 May 2017 21:43:26 GMT  
		Size: 1.8 KB (1788 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0cd9a965981bde13095a4217ecc06d6c5f32d78f1a40d1d83c43fd50513014fc`  
		Last Modified: Mon, 15 May 2017 21:43:27 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.3.17`

```console
$ docker pull postgres@sha256:f83df25be36b21c7809531d7f1711ef9a75e38fea7846013b92bc3f1db864a07
```

-	Platforms:
	-	linux; amd64

### `postgres:9.3.17` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **103.1 MB (103130953 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c84b6e0450cf66f7bc1d1f795e9236aa97aae82092416b284f47563b1ea2931e`
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
# Mon, 15 May 2017 21:30:45 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod g+s /var/run/postgresql
# Mon, 15 May 2017 21:30:45 GMT
ENV PATH=/usr/lib/postgresql/9.3/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 15 May 2017 21:30:46 GMT
ENV PGDATA=/var/lib/postgresql/data
# Mon, 15 May 2017 21:30:48 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Mon, 15 May 2017 21:30:48 GMT
VOLUME [/var/lib/postgresql/data]
# Mon, 15 May 2017 21:30:50 GMT
COPY file:88406fb9d8f255c2eafecd84ec6558ad6c5da8e54a6228a71d059ef88604493b in /usr/local/bin/ 
# Mon, 15 May 2017 21:30:51 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Mon, 15 May 2017 21:30:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 15 May 2017 21:30:53 GMT
EXPOSE 5432/tcp
# Mon, 15 May 2017 21:30:53 GMT
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
	-	`sha256:11b9556eb9dfc885e95df880abe3b490916f508140a15efbdc9206c3b0a105ad`  
		Last Modified: Mon, 15 May 2017 21:44:17 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb66ad0786d9b57de5bebf120819ae51dd3a48e2ff0a8547dbbf9f774be77b10`  
		Last Modified: Mon, 15 May 2017 21:44:17 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:639a08ad78626dce9e887db8832cccf1dc90468d823d6aeae753b3140cf2b243`  
		Last Modified: Mon, 15 May 2017 21:44:17 GMT  
		Size: 1.8 KB (1796 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5be3017e3caeb02e78639867cd1d9c74e6f5cc34bdd4bfc7f24b1916be522441`  
		Last Modified: Mon, 15 May 2017 21:44:17 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.3`

```console
$ docker pull postgres@sha256:f83df25be36b21c7809531d7f1711ef9a75e38fea7846013b92bc3f1db864a07
```

-	Platforms:
	-	linux; amd64

### `postgres:9.3` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **103.1 MB (103130953 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c84b6e0450cf66f7bc1d1f795e9236aa97aae82092416b284f47563b1ea2931e`
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
# Mon, 15 May 2017 21:30:45 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod g+s /var/run/postgresql
# Mon, 15 May 2017 21:30:45 GMT
ENV PATH=/usr/lib/postgresql/9.3/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 15 May 2017 21:30:46 GMT
ENV PGDATA=/var/lib/postgresql/data
# Mon, 15 May 2017 21:30:48 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Mon, 15 May 2017 21:30:48 GMT
VOLUME [/var/lib/postgresql/data]
# Mon, 15 May 2017 21:30:50 GMT
COPY file:88406fb9d8f255c2eafecd84ec6558ad6c5da8e54a6228a71d059ef88604493b in /usr/local/bin/ 
# Mon, 15 May 2017 21:30:51 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Mon, 15 May 2017 21:30:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 15 May 2017 21:30:53 GMT
EXPOSE 5432/tcp
# Mon, 15 May 2017 21:30:53 GMT
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
	-	`sha256:11b9556eb9dfc885e95df880abe3b490916f508140a15efbdc9206c3b0a105ad`  
		Last Modified: Mon, 15 May 2017 21:44:17 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb66ad0786d9b57de5bebf120819ae51dd3a48e2ff0a8547dbbf9f774be77b10`  
		Last Modified: Mon, 15 May 2017 21:44:17 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:639a08ad78626dce9e887db8832cccf1dc90468d823d6aeae753b3140cf2b243`  
		Last Modified: Mon, 15 May 2017 21:44:17 GMT  
		Size: 1.8 KB (1796 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5be3017e3caeb02e78639867cd1d9c74e6f5cc34bdd4bfc7f24b1916be522441`  
		Last Modified: Mon, 15 May 2017 21:44:17 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.3.17-alpine`

```console
$ docker pull postgres@sha256:21bc2d249434aacbf330f6f1fd8ff572f8598af47aa5afb51f69e74d2f1cebaa
```

-	Platforms:
	-	linux; amd64

### `postgres:9.3.17-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.0 MB (13950756 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d4654f4b6bcf62e9638310abc8c9a32ef17bd9b77470111cb48882a06a05e394`
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
# Mon, 15 May 2017 21:33:19 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod g+s /var/run/postgresql
# Mon, 15 May 2017 21:33:20 GMT
ENV PATH=/usr/lib/postgresql/9.3/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 15 May 2017 21:33:20 GMT
ENV PGDATA=/var/lib/postgresql/data
# Mon, 15 May 2017 21:33:22 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Mon, 15 May 2017 21:33:23 GMT
VOLUME [/var/lib/postgresql/data]
# Mon, 15 May 2017 21:33:24 GMT
COPY file:b7f16d53ff9b4f99d3e3c8fd87c7ffb72ffdcb5ddd9b0773ca122008aba3de5d in /usr/local/bin/ 
# Mon, 15 May 2017 21:33:25 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Mon, 15 May 2017 21:33:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 15 May 2017 21:33:26 GMT
EXPOSE 5432/tcp
# Mon, 15 May 2017 21:33:27 GMT
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
	-	`sha256:c084d4d390537c221bf56cd49a2ab0817323bf8b3bf18180a2e6aed627fde104`  
		Last Modified: Mon, 15 May 2017 21:45:13 GMT  
		Size: 144.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d53a649e89cefbf043679557e188989d62cb1cbe5a346baf009f57af0a4da83`  
		Last Modified: Mon, 15 May 2017 21:45:13 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69b734c6cf41d7dbd6bfd55cf863bf53a37724fbfa22843a2b06d69444f3d75b`  
		Last Modified: Mon, 15 May 2017 21:45:13 GMT  
		Size: 1.8 KB (1787 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e2e94300486a1c02baf1389dd84e652e264a92e29a8f55c5d61b41d483bd83d`  
		Last Modified: Mon, 15 May 2017 21:45:13 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.3-alpine`

```console
$ docker pull postgres@sha256:21bc2d249434aacbf330f6f1fd8ff572f8598af47aa5afb51f69e74d2f1cebaa
```

-	Platforms:
	-	linux; amd64

### `postgres:9.3-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.0 MB (13950756 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d4654f4b6bcf62e9638310abc8c9a32ef17bd9b77470111cb48882a06a05e394`
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
# Mon, 15 May 2017 21:33:19 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod g+s /var/run/postgresql
# Mon, 15 May 2017 21:33:20 GMT
ENV PATH=/usr/lib/postgresql/9.3/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 15 May 2017 21:33:20 GMT
ENV PGDATA=/var/lib/postgresql/data
# Mon, 15 May 2017 21:33:22 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Mon, 15 May 2017 21:33:23 GMT
VOLUME [/var/lib/postgresql/data]
# Mon, 15 May 2017 21:33:24 GMT
COPY file:b7f16d53ff9b4f99d3e3c8fd87c7ffb72ffdcb5ddd9b0773ca122008aba3de5d in /usr/local/bin/ 
# Mon, 15 May 2017 21:33:25 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Mon, 15 May 2017 21:33:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 15 May 2017 21:33:26 GMT
EXPOSE 5432/tcp
# Mon, 15 May 2017 21:33:27 GMT
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
	-	`sha256:c084d4d390537c221bf56cd49a2ab0817323bf8b3bf18180a2e6aed627fde104`  
		Last Modified: Mon, 15 May 2017 21:45:13 GMT  
		Size: 144.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d53a649e89cefbf043679557e188989d62cb1cbe5a346baf009f57af0a4da83`  
		Last Modified: Mon, 15 May 2017 21:45:13 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69b734c6cf41d7dbd6bfd55cf863bf53a37724fbfa22843a2b06d69444f3d75b`  
		Last Modified: Mon, 15 May 2017 21:45:13 GMT  
		Size: 1.8 KB (1787 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e2e94300486a1c02baf1389dd84e652e264a92e29a8f55c5d61b41d483bd83d`  
		Last Modified: Mon, 15 May 2017 21:45:13 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.2.21`

```console
$ docker pull postgres@sha256:add979c2e0884298b33fd8e9ac57e3fb96498e60dfb2b71f0c43462c3bc4210a
```

-	Platforms:
	-	linux; amd64

### `postgres:9.2.21` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **103.0 MB (102967170 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0e7ddc7ba3711fdb031d4106d25168da205220d2d600a4da2ac306f286691bda`
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
# Mon, 15 May 2017 21:34:21 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod g+s /var/run/postgresql
# Mon, 15 May 2017 21:34:22 GMT
ENV PATH=/usr/lib/postgresql/9.2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 15 May 2017 21:34:22 GMT
ENV PGDATA=/var/lib/postgresql/data
# Mon, 15 May 2017 21:34:24 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Mon, 15 May 2017 21:34:24 GMT
VOLUME [/var/lib/postgresql/data]
# Mon, 15 May 2017 21:34:25 GMT
COPY file:88406fb9d8f255c2eafecd84ec6558ad6c5da8e54a6228a71d059ef88604493b in /usr/local/bin/ 
# Mon, 15 May 2017 21:34:27 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Mon, 15 May 2017 21:34:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 15 May 2017 21:34:28 GMT
EXPOSE 5432/tcp
# Mon, 15 May 2017 21:34:29 GMT
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
	-	`sha256:7ad593e6d0891bf67f216282640f0a177eced4117f5106b9ffd7efcd2b1e4332`  
		Last Modified: Mon, 15 May 2017 21:46:07 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b43620f8faf8e6e77dacf7ddb9e9981506064f73724023d71497fa06b242aea2`  
		Last Modified: Mon, 15 May 2017 21:46:04 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0e200ded6af8bccbaff0992d73b1eb91897f93883cab6f27627fec3d05d8cca`  
		Last Modified: Mon, 15 May 2017 21:46:04 GMT  
		Size: 1.8 KB (1797 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49d3551bedbe032e6c8f8d916f3f4ee6662776076f2250c18316433050354603`  
		Last Modified: Mon, 15 May 2017 21:46:04 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.2`

```console
$ docker pull postgres@sha256:add979c2e0884298b33fd8e9ac57e3fb96498e60dfb2b71f0c43462c3bc4210a
```

-	Platforms:
	-	linux; amd64

### `postgres:9.2` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **103.0 MB (102967170 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0e7ddc7ba3711fdb031d4106d25168da205220d2d600a4da2ac306f286691bda`
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
# Mon, 15 May 2017 21:34:21 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod g+s /var/run/postgresql
# Mon, 15 May 2017 21:34:22 GMT
ENV PATH=/usr/lib/postgresql/9.2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 15 May 2017 21:34:22 GMT
ENV PGDATA=/var/lib/postgresql/data
# Mon, 15 May 2017 21:34:24 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Mon, 15 May 2017 21:34:24 GMT
VOLUME [/var/lib/postgresql/data]
# Mon, 15 May 2017 21:34:25 GMT
COPY file:88406fb9d8f255c2eafecd84ec6558ad6c5da8e54a6228a71d059ef88604493b in /usr/local/bin/ 
# Mon, 15 May 2017 21:34:27 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Mon, 15 May 2017 21:34:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 15 May 2017 21:34:28 GMT
EXPOSE 5432/tcp
# Mon, 15 May 2017 21:34:29 GMT
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
	-	`sha256:7ad593e6d0891bf67f216282640f0a177eced4117f5106b9ffd7efcd2b1e4332`  
		Last Modified: Mon, 15 May 2017 21:46:07 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b43620f8faf8e6e77dacf7ddb9e9981506064f73724023d71497fa06b242aea2`  
		Last Modified: Mon, 15 May 2017 21:46:04 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0e200ded6af8bccbaff0992d73b1eb91897f93883cab6f27627fec3d05d8cca`  
		Last Modified: Mon, 15 May 2017 21:46:04 GMT  
		Size: 1.8 KB (1797 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49d3551bedbe032e6c8f8d916f3f4ee6662776076f2250c18316433050354603`  
		Last Modified: Mon, 15 May 2017 21:46:04 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.2.21-alpine`

```console
$ docker pull postgres@sha256:18b81f43bba5ff9f32539568e96773b378d3e8bec0e66c3d0af21b2e298212af
```

-	Platforms:
	-	linux; amd64

### `postgres:9.2.21-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.8 MB (13779070 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6b3631f1c63aa8c76163eee021e17008d285ecc7ecd0fac3e5cd69170e8fd47f`
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
# Mon, 15 May 2017 21:36:50 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod g+s /var/run/postgresql
# Mon, 15 May 2017 21:36:50 GMT
ENV PATH=/usr/lib/postgresql/9.2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 15 May 2017 21:36:51 GMT
ENV PGDATA=/var/lib/postgresql/data
# Mon, 15 May 2017 21:36:53 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Mon, 15 May 2017 21:36:53 GMT
VOLUME [/var/lib/postgresql/data]
# Mon, 15 May 2017 21:36:54 GMT
COPY file:b7f16d53ff9b4f99d3e3c8fd87c7ffb72ffdcb5ddd9b0773ca122008aba3de5d in /usr/local/bin/ 
# Mon, 15 May 2017 21:36:56 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Mon, 15 May 2017 21:36:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 15 May 2017 21:36:57 GMT
EXPOSE 5432/tcp
# Mon, 15 May 2017 21:36:58 GMT
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
	-	`sha256:5c0364073f52db82df2464b4469d9b2a22a92eef7b0f4e46a3d58ae2f6836560`  
		Last Modified: Mon, 15 May 2017 21:47:02 GMT  
		Size: 143.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad237ee92c34aa857e4e22244a1ea48c3799038be801d0d8399a1aa18ecfaae7`  
		Last Modified: Mon, 15 May 2017 21:47:01 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9b89f03ff923da2c659b9afe4e528fda125b3678874da78e5927e59fc4fab2c`  
		Last Modified: Mon, 15 May 2017 21:47:02 GMT  
		Size: 1.8 KB (1787 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f32a17143640a26fd385d3c4f7d80a29030e886bf482d0de5239f9df3339b43`  
		Last Modified: Mon, 15 May 2017 21:47:02 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.2-alpine`

```console
$ docker pull postgres@sha256:18b81f43bba5ff9f32539568e96773b378d3e8bec0e66c3d0af21b2e298212af
```

-	Platforms:
	-	linux; amd64

### `postgres:9.2-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.8 MB (13779070 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6b3631f1c63aa8c76163eee021e17008d285ecc7ecd0fac3e5cd69170e8fd47f`
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
# Mon, 15 May 2017 21:36:50 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod g+s /var/run/postgresql
# Mon, 15 May 2017 21:36:50 GMT
ENV PATH=/usr/lib/postgresql/9.2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 15 May 2017 21:36:51 GMT
ENV PGDATA=/var/lib/postgresql/data
# Mon, 15 May 2017 21:36:53 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Mon, 15 May 2017 21:36:53 GMT
VOLUME [/var/lib/postgresql/data]
# Mon, 15 May 2017 21:36:54 GMT
COPY file:b7f16d53ff9b4f99d3e3c8fd87c7ffb72ffdcb5ddd9b0773ca122008aba3de5d in /usr/local/bin/ 
# Mon, 15 May 2017 21:36:56 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Mon, 15 May 2017 21:36:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 15 May 2017 21:36:57 GMT
EXPOSE 5432/tcp
# Mon, 15 May 2017 21:36:58 GMT
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
	-	`sha256:5c0364073f52db82df2464b4469d9b2a22a92eef7b0f4e46a3d58ae2f6836560`  
		Last Modified: Mon, 15 May 2017 21:47:02 GMT  
		Size: 143.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad237ee92c34aa857e4e22244a1ea48c3799038be801d0d8399a1aa18ecfaae7`  
		Last Modified: Mon, 15 May 2017 21:47:01 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9b89f03ff923da2c659b9afe4e528fda125b3678874da78e5927e59fc4fab2c`  
		Last Modified: Mon, 15 May 2017 21:47:02 GMT  
		Size: 1.8 KB (1787 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f32a17143640a26fd385d3c4f7d80a29030e886bf482d0de5239f9df3339b43`  
		Last Modified: Mon, 15 May 2017 21:47:02 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
