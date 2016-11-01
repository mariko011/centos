<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `postgres`

-	[`postgres:9.6.1`](#postgres961)
-	[`postgres:9.6`](#postgres96)
-	[`postgres:9`](#postgres9)
-	[`postgres:latest`](#postgreslatest)
-	[`postgres:9.5.5`](#postgres955)
-	[`postgres:9.5`](#postgres95)
-	[`postgres:9.4.10`](#postgres9410)
-	[`postgres:9.4`](#postgres94)
-	[`postgres:9.3.15`](#postgres9315)
-	[`postgres:9.3`](#postgres93)
-	[`postgres:9.2.19`](#postgres9219)
-	[`postgres:9.2`](#postgres92)
-	[`postgres:9.1.24`](#postgres9124)
-	[`postgres:9.1`](#postgres91)

## `postgres:9.6.1`

```console
$ docker pull postgres@sha256:5d099602560ecd727832e143e5c565a6dab6db67e295e982d3e07e3204bb902a
```

-	Platforms:
	-	linux; amd64

### `postgres:9.6.1` - linux; amd64

-	Docker Version: 1.12.2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **101.6 MB (101586268 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0267f82ab721308a5a6e1bf4e0ad82223315c9a81fdf6d912d6ebcbdf788c37d`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Fri, 21 Oct 2016 16:22:34 GMT
ADD file:23aa4f893e3288698c017b90be657911b72d54edb3b3a7c4d05c308f50f9228f in / 
# Fri, 21 Oct 2016 16:22:34 GMT
CMD ["/bin/bash"]
# Sat, 22 Oct 2016 00:19:10 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Sat, 22 Oct 2016 00:19:11 GMT
ENV GOSU_VERSION=1.7
# Sat, 22 Oct 2016 00:19:28 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Sat, 22 Oct 2016 00:19:36 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Sat, 22 Oct 2016 00:19:36 GMT
ENV LANG=en_US.utf8
# Sat, 22 Oct 2016 00:19:37 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Sat, 22 Oct 2016 00:19:39 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8
# Sat, 22 Oct 2016 00:19:39 GMT
ENV PG_MAJOR=9.6
# Mon, 31 Oct 2016 23:14:00 GMT
ENV PG_VERSION=9.6.1-1.pgdg80+1
# Mon, 31 Oct 2016 23:14:01 GMT
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main' $PG_MAJOR > /etc/apt/sources.list.d/pgdg.list
# Mon, 31 Oct 2016 23:37:43 GMT
RUN apt-get update 	&& apt-get install -y postgresql-common 	&& sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf 	&& apt-get install -y 		postgresql-$PG_MAJOR=$PG_VERSION 		postgresql-contrib-$PG_MAJOR=$PG_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Mon, 31 Oct 2016 23:37:44 GMT
RUN mv -v /usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample /usr/share/postgresql/$PG_MAJOR/ 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Mon, 31 Oct 2016 23:37:44 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres /var/run/postgresql
# Mon, 31 Oct 2016 23:37:45 GMT
ENV PATH=/usr/lib/postgresql/9.6/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 31 Oct 2016 23:37:45 GMT
ENV PGDATA=/var/lib/postgresql/data
# Mon, 31 Oct 2016 23:37:45 GMT
VOLUME [/var/lib/postgresql/data]
# Mon, 31 Oct 2016 23:37:46 GMT
COPY file:4b356f6912993c9d5f125faa3c148085ac46c2af55c8ae0c7001052402825fef in / 
# Mon, 31 Oct 2016 23:37:46 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 31 Oct 2016 23:37:46 GMT
EXPOSE 5432/tcp
# Mon, 31 Oct 2016 23:37:47 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:43c265008fae5d1f3cbee0dac9697235320b174d85acbed002a4fe44236adec0`  
		Last Modified: Fri, 21 Oct 2016 16:22:58 GMT  
		Size: 51.4 MB (51353125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:215df7ad1b9befb2dffcb9e479c3188cae86893b676de1b4c9c1f4acc2327b7d`  
		Last Modified: Sat, 22 Oct 2016 00:20:31 GMT  
		Size: 2.0 KB (2046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:833a4a9c3573e61e91a092bafde646d8679f852ca221c76143e431a87b8ed06e`  
		Last Modified: Sat, 22 Oct 2016 00:20:30 GMT  
		Size: 1.2 MB (1216342 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5716357a052f614f869a7277fb4492c69a98c5628517dfe493d981a64e49d8f`  
		Last Modified: Sat, 22 Oct 2016 00:20:32 GMT  
		Size: 6.9 MB (6865078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6552dfce18a32eb601a1f854d5eabe82aea2f79c102a427dba22c4fbf831e329`  
		Last Modified: Sat, 22 Oct 2016 00:20:29 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b75b371d1e9f8a4ca71f0866349d9462a04896afef650ea3e631825ada19836b`  
		Last Modified: Sat, 22 Oct 2016 00:20:31 GMT  
		Size: 3.4 KB (3415 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a340e53d25e6c2aedacfd53e5811dce56e71481c0e5e337155bdc39a57a621d`  
		Last Modified: Mon, 31 Oct 2016 23:41:49 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8aee05390a99b2f29a18df3e47c603ed0fcfd15c09f0fed4345ccccf0f25c858`  
		Last Modified: Mon, 31 Oct 2016 23:42:10 GMT  
		Size: 42.1 MB (42137364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e7e8acdc0bd31ad42ff8fa0a8bc05732ab99995d76065694d2d754550825250`  
		Last Modified: Mon, 31 Oct 2016 23:41:46 GMT  
		Size: 7.2 KB (7156 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5f086b9b66b380f89fd1afb9294bd5cf2b876ec54183d9c5223f6afc46baae5`  
		Last Modified: Mon, 31 Oct 2016 23:41:46 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e61434a25ecca3c80b7daa7854f6178fb90a120c7b985b82ab49fe40a4326285`  
		Last Modified: Mon, 31 Oct 2016 23:41:46 GMT  
		Size: 1.3 KB (1270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.6`

```console
$ docker pull postgres@sha256:5d099602560ecd727832e143e5c565a6dab6db67e295e982d3e07e3204bb902a
```

-	Platforms:
	-	linux; amd64

### `postgres:9.6` - linux; amd64

-	Docker Version: 1.12.2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **101.6 MB (101586268 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0267f82ab721308a5a6e1bf4e0ad82223315c9a81fdf6d912d6ebcbdf788c37d`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Fri, 21 Oct 2016 16:22:34 GMT
ADD file:23aa4f893e3288698c017b90be657911b72d54edb3b3a7c4d05c308f50f9228f in / 
# Fri, 21 Oct 2016 16:22:34 GMT
CMD ["/bin/bash"]
# Sat, 22 Oct 2016 00:19:10 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Sat, 22 Oct 2016 00:19:11 GMT
ENV GOSU_VERSION=1.7
# Sat, 22 Oct 2016 00:19:28 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Sat, 22 Oct 2016 00:19:36 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Sat, 22 Oct 2016 00:19:36 GMT
ENV LANG=en_US.utf8
# Sat, 22 Oct 2016 00:19:37 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Sat, 22 Oct 2016 00:19:39 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8
# Sat, 22 Oct 2016 00:19:39 GMT
ENV PG_MAJOR=9.6
# Mon, 31 Oct 2016 23:14:00 GMT
ENV PG_VERSION=9.6.1-1.pgdg80+1
# Mon, 31 Oct 2016 23:14:01 GMT
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main' $PG_MAJOR > /etc/apt/sources.list.d/pgdg.list
# Mon, 31 Oct 2016 23:37:43 GMT
RUN apt-get update 	&& apt-get install -y postgresql-common 	&& sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf 	&& apt-get install -y 		postgresql-$PG_MAJOR=$PG_VERSION 		postgresql-contrib-$PG_MAJOR=$PG_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Mon, 31 Oct 2016 23:37:44 GMT
RUN mv -v /usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample /usr/share/postgresql/$PG_MAJOR/ 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Mon, 31 Oct 2016 23:37:44 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres /var/run/postgresql
# Mon, 31 Oct 2016 23:37:45 GMT
ENV PATH=/usr/lib/postgresql/9.6/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 31 Oct 2016 23:37:45 GMT
ENV PGDATA=/var/lib/postgresql/data
# Mon, 31 Oct 2016 23:37:45 GMT
VOLUME [/var/lib/postgresql/data]
# Mon, 31 Oct 2016 23:37:46 GMT
COPY file:4b356f6912993c9d5f125faa3c148085ac46c2af55c8ae0c7001052402825fef in / 
# Mon, 31 Oct 2016 23:37:46 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 31 Oct 2016 23:37:46 GMT
EXPOSE 5432/tcp
# Mon, 31 Oct 2016 23:37:47 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:43c265008fae5d1f3cbee0dac9697235320b174d85acbed002a4fe44236adec0`  
		Last Modified: Fri, 21 Oct 2016 16:22:58 GMT  
		Size: 51.4 MB (51353125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:215df7ad1b9befb2dffcb9e479c3188cae86893b676de1b4c9c1f4acc2327b7d`  
		Last Modified: Sat, 22 Oct 2016 00:20:31 GMT  
		Size: 2.0 KB (2046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:833a4a9c3573e61e91a092bafde646d8679f852ca221c76143e431a87b8ed06e`  
		Last Modified: Sat, 22 Oct 2016 00:20:30 GMT  
		Size: 1.2 MB (1216342 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5716357a052f614f869a7277fb4492c69a98c5628517dfe493d981a64e49d8f`  
		Last Modified: Sat, 22 Oct 2016 00:20:32 GMT  
		Size: 6.9 MB (6865078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6552dfce18a32eb601a1f854d5eabe82aea2f79c102a427dba22c4fbf831e329`  
		Last Modified: Sat, 22 Oct 2016 00:20:29 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b75b371d1e9f8a4ca71f0866349d9462a04896afef650ea3e631825ada19836b`  
		Last Modified: Sat, 22 Oct 2016 00:20:31 GMT  
		Size: 3.4 KB (3415 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a340e53d25e6c2aedacfd53e5811dce56e71481c0e5e337155bdc39a57a621d`  
		Last Modified: Mon, 31 Oct 2016 23:41:49 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8aee05390a99b2f29a18df3e47c603ed0fcfd15c09f0fed4345ccccf0f25c858`  
		Last Modified: Mon, 31 Oct 2016 23:42:10 GMT  
		Size: 42.1 MB (42137364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e7e8acdc0bd31ad42ff8fa0a8bc05732ab99995d76065694d2d754550825250`  
		Last Modified: Mon, 31 Oct 2016 23:41:46 GMT  
		Size: 7.2 KB (7156 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5f086b9b66b380f89fd1afb9294bd5cf2b876ec54183d9c5223f6afc46baae5`  
		Last Modified: Mon, 31 Oct 2016 23:41:46 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e61434a25ecca3c80b7daa7854f6178fb90a120c7b985b82ab49fe40a4326285`  
		Last Modified: Mon, 31 Oct 2016 23:41:46 GMT  
		Size: 1.3 KB (1270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9`

```console
$ docker pull postgres@sha256:5d099602560ecd727832e143e5c565a6dab6db67e295e982d3e07e3204bb902a
```

-	Platforms:
	-	linux; amd64

### `postgres:9` - linux; amd64

-	Docker Version: 1.12.2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **101.6 MB (101586268 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0267f82ab721308a5a6e1bf4e0ad82223315c9a81fdf6d912d6ebcbdf788c37d`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Fri, 21 Oct 2016 16:22:34 GMT
ADD file:23aa4f893e3288698c017b90be657911b72d54edb3b3a7c4d05c308f50f9228f in / 
# Fri, 21 Oct 2016 16:22:34 GMT
CMD ["/bin/bash"]
# Sat, 22 Oct 2016 00:19:10 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Sat, 22 Oct 2016 00:19:11 GMT
ENV GOSU_VERSION=1.7
# Sat, 22 Oct 2016 00:19:28 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Sat, 22 Oct 2016 00:19:36 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Sat, 22 Oct 2016 00:19:36 GMT
ENV LANG=en_US.utf8
# Sat, 22 Oct 2016 00:19:37 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Sat, 22 Oct 2016 00:19:39 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8
# Sat, 22 Oct 2016 00:19:39 GMT
ENV PG_MAJOR=9.6
# Mon, 31 Oct 2016 23:14:00 GMT
ENV PG_VERSION=9.6.1-1.pgdg80+1
# Mon, 31 Oct 2016 23:14:01 GMT
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main' $PG_MAJOR > /etc/apt/sources.list.d/pgdg.list
# Mon, 31 Oct 2016 23:37:43 GMT
RUN apt-get update 	&& apt-get install -y postgresql-common 	&& sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf 	&& apt-get install -y 		postgresql-$PG_MAJOR=$PG_VERSION 		postgresql-contrib-$PG_MAJOR=$PG_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Mon, 31 Oct 2016 23:37:44 GMT
RUN mv -v /usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample /usr/share/postgresql/$PG_MAJOR/ 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Mon, 31 Oct 2016 23:37:44 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres /var/run/postgresql
# Mon, 31 Oct 2016 23:37:45 GMT
ENV PATH=/usr/lib/postgresql/9.6/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 31 Oct 2016 23:37:45 GMT
ENV PGDATA=/var/lib/postgresql/data
# Mon, 31 Oct 2016 23:37:45 GMT
VOLUME [/var/lib/postgresql/data]
# Mon, 31 Oct 2016 23:37:46 GMT
COPY file:4b356f6912993c9d5f125faa3c148085ac46c2af55c8ae0c7001052402825fef in / 
# Mon, 31 Oct 2016 23:37:46 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 31 Oct 2016 23:37:46 GMT
EXPOSE 5432/tcp
# Mon, 31 Oct 2016 23:37:47 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:43c265008fae5d1f3cbee0dac9697235320b174d85acbed002a4fe44236adec0`  
		Last Modified: Fri, 21 Oct 2016 16:22:58 GMT  
		Size: 51.4 MB (51353125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:215df7ad1b9befb2dffcb9e479c3188cae86893b676de1b4c9c1f4acc2327b7d`  
		Last Modified: Sat, 22 Oct 2016 00:20:31 GMT  
		Size: 2.0 KB (2046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:833a4a9c3573e61e91a092bafde646d8679f852ca221c76143e431a87b8ed06e`  
		Last Modified: Sat, 22 Oct 2016 00:20:30 GMT  
		Size: 1.2 MB (1216342 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5716357a052f614f869a7277fb4492c69a98c5628517dfe493d981a64e49d8f`  
		Last Modified: Sat, 22 Oct 2016 00:20:32 GMT  
		Size: 6.9 MB (6865078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6552dfce18a32eb601a1f854d5eabe82aea2f79c102a427dba22c4fbf831e329`  
		Last Modified: Sat, 22 Oct 2016 00:20:29 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b75b371d1e9f8a4ca71f0866349d9462a04896afef650ea3e631825ada19836b`  
		Last Modified: Sat, 22 Oct 2016 00:20:31 GMT  
		Size: 3.4 KB (3415 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a340e53d25e6c2aedacfd53e5811dce56e71481c0e5e337155bdc39a57a621d`  
		Last Modified: Mon, 31 Oct 2016 23:41:49 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8aee05390a99b2f29a18df3e47c603ed0fcfd15c09f0fed4345ccccf0f25c858`  
		Last Modified: Mon, 31 Oct 2016 23:42:10 GMT  
		Size: 42.1 MB (42137364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e7e8acdc0bd31ad42ff8fa0a8bc05732ab99995d76065694d2d754550825250`  
		Last Modified: Mon, 31 Oct 2016 23:41:46 GMT  
		Size: 7.2 KB (7156 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5f086b9b66b380f89fd1afb9294bd5cf2b876ec54183d9c5223f6afc46baae5`  
		Last Modified: Mon, 31 Oct 2016 23:41:46 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e61434a25ecca3c80b7daa7854f6178fb90a120c7b985b82ab49fe40a4326285`  
		Last Modified: Mon, 31 Oct 2016 23:41:46 GMT  
		Size: 1.3 KB (1270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:latest`

```console
$ docker pull postgres@sha256:5d099602560ecd727832e143e5c565a6dab6db67e295e982d3e07e3204bb902a
```

-	Platforms:
	-	linux; amd64

### `postgres:latest` - linux; amd64

-	Docker Version: 1.12.2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **101.6 MB (101586268 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0267f82ab721308a5a6e1bf4e0ad82223315c9a81fdf6d912d6ebcbdf788c37d`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Fri, 21 Oct 2016 16:22:34 GMT
ADD file:23aa4f893e3288698c017b90be657911b72d54edb3b3a7c4d05c308f50f9228f in / 
# Fri, 21 Oct 2016 16:22:34 GMT
CMD ["/bin/bash"]
# Sat, 22 Oct 2016 00:19:10 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Sat, 22 Oct 2016 00:19:11 GMT
ENV GOSU_VERSION=1.7
# Sat, 22 Oct 2016 00:19:28 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Sat, 22 Oct 2016 00:19:36 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Sat, 22 Oct 2016 00:19:36 GMT
ENV LANG=en_US.utf8
# Sat, 22 Oct 2016 00:19:37 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Sat, 22 Oct 2016 00:19:39 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8
# Sat, 22 Oct 2016 00:19:39 GMT
ENV PG_MAJOR=9.6
# Mon, 31 Oct 2016 23:14:00 GMT
ENV PG_VERSION=9.6.1-1.pgdg80+1
# Mon, 31 Oct 2016 23:14:01 GMT
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main' $PG_MAJOR > /etc/apt/sources.list.d/pgdg.list
# Mon, 31 Oct 2016 23:37:43 GMT
RUN apt-get update 	&& apt-get install -y postgresql-common 	&& sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf 	&& apt-get install -y 		postgresql-$PG_MAJOR=$PG_VERSION 		postgresql-contrib-$PG_MAJOR=$PG_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Mon, 31 Oct 2016 23:37:44 GMT
RUN mv -v /usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample /usr/share/postgresql/$PG_MAJOR/ 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Mon, 31 Oct 2016 23:37:44 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres /var/run/postgresql
# Mon, 31 Oct 2016 23:37:45 GMT
ENV PATH=/usr/lib/postgresql/9.6/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 31 Oct 2016 23:37:45 GMT
ENV PGDATA=/var/lib/postgresql/data
# Mon, 31 Oct 2016 23:37:45 GMT
VOLUME [/var/lib/postgresql/data]
# Mon, 31 Oct 2016 23:37:46 GMT
COPY file:4b356f6912993c9d5f125faa3c148085ac46c2af55c8ae0c7001052402825fef in / 
# Mon, 31 Oct 2016 23:37:46 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 31 Oct 2016 23:37:46 GMT
EXPOSE 5432/tcp
# Mon, 31 Oct 2016 23:37:47 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:43c265008fae5d1f3cbee0dac9697235320b174d85acbed002a4fe44236adec0`  
		Last Modified: Fri, 21 Oct 2016 16:22:58 GMT  
		Size: 51.4 MB (51353125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:215df7ad1b9befb2dffcb9e479c3188cae86893b676de1b4c9c1f4acc2327b7d`  
		Last Modified: Sat, 22 Oct 2016 00:20:31 GMT  
		Size: 2.0 KB (2046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:833a4a9c3573e61e91a092bafde646d8679f852ca221c76143e431a87b8ed06e`  
		Last Modified: Sat, 22 Oct 2016 00:20:30 GMT  
		Size: 1.2 MB (1216342 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5716357a052f614f869a7277fb4492c69a98c5628517dfe493d981a64e49d8f`  
		Last Modified: Sat, 22 Oct 2016 00:20:32 GMT  
		Size: 6.9 MB (6865078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6552dfce18a32eb601a1f854d5eabe82aea2f79c102a427dba22c4fbf831e329`  
		Last Modified: Sat, 22 Oct 2016 00:20:29 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b75b371d1e9f8a4ca71f0866349d9462a04896afef650ea3e631825ada19836b`  
		Last Modified: Sat, 22 Oct 2016 00:20:31 GMT  
		Size: 3.4 KB (3415 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a340e53d25e6c2aedacfd53e5811dce56e71481c0e5e337155bdc39a57a621d`  
		Last Modified: Mon, 31 Oct 2016 23:41:49 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8aee05390a99b2f29a18df3e47c603ed0fcfd15c09f0fed4345ccccf0f25c858`  
		Last Modified: Mon, 31 Oct 2016 23:42:10 GMT  
		Size: 42.1 MB (42137364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e7e8acdc0bd31ad42ff8fa0a8bc05732ab99995d76065694d2d754550825250`  
		Last Modified: Mon, 31 Oct 2016 23:41:46 GMT  
		Size: 7.2 KB (7156 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5f086b9b66b380f89fd1afb9294bd5cf2b876ec54183d9c5223f6afc46baae5`  
		Last Modified: Mon, 31 Oct 2016 23:41:46 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e61434a25ecca3c80b7daa7854f6178fb90a120c7b985b82ab49fe40a4326285`  
		Last Modified: Mon, 31 Oct 2016 23:41:46 GMT  
		Size: 1.3 KB (1270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.5.5`

```console
$ docker pull postgres@sha256:9426fda01b64518216f305ee9c22f54305a1bb28a79f02c2c0b2a0cd68b0062c
```

-	Platforms:
	-	linux; amd64

### `postgres:9.5.5` - linux; amd64

-	Docker Version: 1.12.2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **101.3 MB (101299246 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9267e375533ec584d347c0664705ce41bcd997f9872c5116c9fc68f19a71eca7`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Fri, 21 Oct 2016 16:22:34 GMT
ADD file:23aa4f893e3288698c017b90be657911b72d54edb3b3a7c4d05c308f50f9228f in / 
# Fri, 21 Oct 2016 16:22:34 GMT
CMD ["/bin/bash"]
# Sat, 22 Oct 2016 00:19:10 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Sat, 22 Oct 2016 00:19:11 GMT
ENV GOSU_VERSION=1.7
# Sat, 22 Oct 2016 00:19:28 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Sat, 22 Oct 2016 00:19:36 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Sat, 22 Oct 2016 00:19:36 GMT
ENV LANG=en_US.utf8
# Sat, 22 Oct 2016 00:19:37 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Sat, 22 Oct 2016 00:19:39 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8
# Sat, 22 Oct 2016 00:26:53 GMT
ENV PG_MAJOR=9.5
# Mon, 31 Oct 2016 23:37:47 GMT
ENV PG_VERSION=9.5.5-1.pgdg80+1
# Mon, 31 Oct 2016 23:37:48 GMT
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main' $PG_MAJOR > /etc/apt/sources.list.d/pgdg.list
# Mon, 31 Oct 2016 23:38:26 GMT
RUN apt-get update 	&& apt-get install -y postgresql-common 	&& sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf 	&& apt-get install -y 		postgresql-$PG_MAJOR=$PG_VERSION 		postgresql-contrib-$PG_MAJOR=$PG_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Mon, 31 Oct 2016 23:38:27 GMT
RUN mv -v /usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample /usr/share/postgresql/$PG_MAJOR/ 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Mon, 31 Oct 2016 23:38:28 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres /var/run/postgresql
# Mon, 31 Oct 2016 23:38:28 GMT
ENV PATH=/usr/lib/postgresql/9.5/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 31 Oct 2016 23:38:28 GMT
ENV PGDATA=/var/lib/postgresql/data
# Mon, 31 Oct 2016 23:38:28 GMT
VOLUME [/var/lib/postgresql/data]
# Mon, 31 Oct 2016 23:38:29 GMT
COPY file:4b356f6912993c9d5f125faa3c148085ac46c2af55c8ae0c7001052402825fef in / 
# Mon, 31 Oct 2016 23:38:29 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 31 Oct 2016 23:38:29 GMT
EXPOSE 5432/tcp
# Mon, 31 Oct 2016 23:38:30 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:43c265008fae5d1f3cbee0dac9697235320b174d85acbed002a4fe44236adec0`  
		Last Modified: Fri, 21 Oct 2016 16:22:58 GMT  
		Size: 51.4 MB (51353125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:215df7ad1b9befb2dffcb9e479c3188cae86893b676de1b4c9c1f4acc2327b7d`  
		Last Modified: Sat, 22 Oct 2016 00:20:31 GMT  
		Size: 2.0 KB (2046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:833a4a9c3573e61e91a092bafde646d8679f852ca221c76143e431a87b8ed06e`  
		Last Modified: Sat, 22 Oct 2016 00:20:30 GMT  
		Size: 1.2 MB (1216342 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5716357a052f614f869a7277fb4492c69a98c5628517dfe493d981a64e49d8f`  
		Last Modified: Sat, 22 Oct 2016 00:20:32 GMT  
		Size: 6.9 MB (6865078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6552dfce18a32eb601a1f854d5eabe82aea2f79c102a427dba22c4fbf831e329`  
		Last Modified: Sat, 22 Oct 2016 00:20:29 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b75b371d1e9f8a4ca71f0866349d9462a04896afef650ea3e631825ada19836b`  
		Last Modified: Sat, 22 Oct 2016 00:20:31 GMT  
		Size: 3.4 KB (3415 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:977dadb81c5d6482cfe84d01f30cb13bbbcffd6b171864be34b7c3b0d89e91eb`  
		Last Modified: Mon, 31 Oct 2016 23:43:12 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:077d2dcbaa28830795d829b0cecc60720189478962813837d4ca665c76455480`  
		Last Modified: Mon, 31 Oct 2016 23:43:30 GMT  
		Size: 41.9 MB (41850640 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:609b32d190e73cb4fda1bfe1153665f5074cc3efcc0a32d3f90f34a412844bb0`  
		Last Modified: Mon, 31 Oct 2016 23:43:12 GMT  
		Size: 6.9 KB (6859 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c5d4db0795c83a52b0470bfc18888e6751b5b170bca42e3712342bbb8584717`  
		Last Modified: Mon, 31 Oct 2016 23:43:13 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:beb2f1c21e07a8a16391cae839e98360e2fe968b8ba3a8689a524c51d3dc561d`  
		Last Modified: Mon, 31 Oct 2016 23:43:12 GMT  
		Size: 1.3 KB (1270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.5`

```console
$ docker pull postgres@sha256:9426fda01b64518216f305ee9c22f54305a1bb28a79f02c2c0b2a0cd68b0062c
```

-	Platforms:
	-	linux; amd64

### `postgres:9.5` - linux; amd64

-	Docker Version: 1.12.2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **101.3 MB (101299246 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9267e375533ec584d347c0664705ce41bcd997f9872c5116c9fc68f19a71eca7`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Fri, 21 Oct 2016 16:22:34 GMT
ADD file:23aa4f893e3288698c017b90be657911b72d54edb3b3a7c4d05c308f50f9228f in / 
# Fri, 21 Oct 2016 16:22:34 GMT
CMD ["/bin/bash"]
# Sat, 22 Oct 2016 00:19:10 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Sat, 22 Oct 2016 00:19:11 GMT
ENV GOSU_VERSION=1.7
# Sat, 22 Oct 2016 00:19:28 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Sat, 22 Oct 2016 00:19:36 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Sat, 22 Oct 2016 00:19:36 GMT
ENV LANG=en_US.utf8
# Sat, 22 Oct 2016 00:19:37 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Sat, 22 Oct 2016 00:19:39 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8
# Sat, 22 Oct 2016 00:26:53 GMT
ENV PG_MAJOR=9.5
# Mon, 31 Oct 2016 23:37:47 GMT
ENV PG_VERSION=9.5.5-1.pgdg80+1
# Mon, 31 Oct 2016 23:37:48 GMT
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main' $PG_MAJOR > /etc/apt/sources.list.d/pgdg.list
# Mon, 31 Oct 2016 23:38:26 GMT
RUN apt-get update 	&& apt-get install -y postgresql-common 	&& sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf 	&& apt-get install -y 		postgresql-$PG_MAJOR=$PG_VERSION 		postgresql-contrib-$PG_MAJOR=$PG_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Mon, 31 Oct 2016 23:38:27 GMT
RUN mv -v /usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample /usr/share/postgresql/$PG_MAJOR/ 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Mon, 31 Oct 2016 23:38:28 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres /var/run/postgresql
# Mon, 31 Oct 2016 23:38:28 GMT
ENV PATH=/usr/lib/postgresql/9.5/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 31 Oct 2016 23:38:28 GMT
ENV PGDATA=/var/lib/postgresql/data
# Mon, 31 Oct 2016 23:38:28 GMT
VOLUME [/var/lib/postgresql/data]
# Mon, 31 Oct 2016 23:38:29 GMT
COPY file:4b356f6912993c9d5f125faa3c148085ac46c2af55c8ae0c7001052402825fef in / 
# Mon, 31 Oct 2016 23:38:29 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 31 Oct 2016 23:38:29 GMT
EXPOSE 5432/tcp
# Mon, 31 Oct 2016 23:38:30 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:43c265008fae5d1f3cbee0dac9697235320b174d85acbed002a4fe44236adec0`  
		Last Modified: Fri, 21 Oct 2016 16:22:58 GMT  
		Size: 51.4 MB (51353125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:215df7ad1b9befb2dffcb9e479c3188cae86893b676de1b4c9c1f4acc2327b7d`  
		Last Modified: Sat, 22 Oct 2016 00:20:31 GMT  
		Size: 2.0 KB (2046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:833a4a9c3573e61e91a092bafde646d8679f852ca221c76143e431a87b8ed06e`  
		Last Modified: Sat, 22 Oct 2016 00:20:30 GMT  
		Size: 1.2 MB (1216342 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5716357a052f614f869a7277fb4492c69a98c5628517dfe493d981a64e49d8f`  
		Last Modified: Sat, 22 Oct 2016 00:20:32 GMT  
		Size: 6.9 MB (6865078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6552dfce18a32eb601a1f854d5eabe82aea2f79c102a427dba22c4fbf831e329`  
		Last Modified: Sat, 22 Oct 2016 00:20:29 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b75b371d1e9f8a4ca71f0866349d9462a04896afef650ea3e631825ada19836b`  
		Last Modified: Sat, 22 Oct 2016 00:20:31 GMT  
		Size: 3.4 KB (3415 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:977dadb81c5d6482cfe84d01f30cb13bbbcffd6b171864be34b7c3b0d89e91eb`  
		Last Modified: Mon, 31 Oct 2016 23:43:12 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:077d2dcbaa28830795d829b0cecc60720189478962813837d4ca665c76455480`  
		Last Modified: Mon, 31 Oct 2016 23:43:30 GMT  
		Size: 41.9 MB (41850640 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:609b32d190e73cb4fda1bfe1153665f5074cc3efcc0a32d3f90f34a412844bb0`  
		Last Modified: Mon, 31 Oct 2016 23:43:12 GMT  
		Size: 6.9 KB (6859 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c5d4db0795c83a52b0470bfc18888e6751b5b170bca42e3712342bbb8584717`  
		Last Modified: Mon, 31 Oct 2016 23:43:13 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:beb2f1c21e07a8a16391cae839e98360e2fe968b8ba3a8689a524c51d3dc561d`  
		Last Modified: Mon, 31 Oct 2016 23:43:12 GMT  
		Size: 1.3 KB (1270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.4.10`

```console
$ docker pull postgres@sha256:d6b51879ca8558c68c5ed74f95ea9f76539fab003335adf5908a9042e53c7987
```

-	Platforms:
	-	linux; amd64

### `postgres:9.4.10` - linux; amd64

-	Docker Version: 1.12.2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **100.9 MB (100897005 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa0512ba025b5bb02c8c19b7652deff0530efdcde8de91165d43171cc8fa22d1`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Fri, 21 Oct 2016 16:22:34 GMT
ADD file:23aa4f893e3288698c017b90be657911b72d54edb3b3a7c4d05c308f50f9228f in / 
# Fri, 21 Oct 2016 16:22:34 GMT
CMD ["/bin/bash"]
# Sat, 22 Oct 2016 00:19:10 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Sat, 22 Oct 2016 00:19:11 GMT
ENV GOSU_VERSION=1.7
# Sat, 22 Oct 2016 00:19:28 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Sat, 22 Oct 2016 00:19:36 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Sat, 22 Oct 2016 00:19:36 GMT
ENV LANG=en_US.utf8
# Sat, 22 Oct 2016 00:19:37 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Sat, 22 Oct 2016 00:19:39 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8
# Sat, 22 Oct 2016 00:25:29 GMT
ENV PG_MAJOR=9.4
# Mon, 31 Oct 2016 23:38:30 GMT
ENV PG_VERSION=9.4.10-1.pgdg80+1
# Mon, 31 Oct 2016 23:38:31 GMT
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main' $PG_MAJOR > /etc/apt/sources.list.d/pgdg.list
# Mon, 31 Oct 2016 23:39:12 GMT
RUN apt-get update 	&& apt-get install -y postgresql-common 	&& sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf 	&& apt-get install -y 		postgresql-$PG_MAJOR=$PG_VERSION 		postgresql-contrib-$PG_MAJOR=$PG_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Mon, 31 Oct 2016 23:39:13 GMT
RUN mv -v /usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample /usr/share/postgresql/$PG_MAJOR/ 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Mon, 31 Oct 2016 23:39:14 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres /var/run/postgresql
# Mon, 31 Oct 2016 23:39:14 GMT
ENV PATH=/usr/lib/postgresql/9.4/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 31 Oct 2016 23:39:15 GMT
ENV PGDATA=/var/lib/postgresql/data
# Mon, 31 Oct 2016 23:39:15 GMT
VOLUME [/var/lib/postgresql/data]
# Mon, 31 Oct 2016 23:39:15 GMT
COPY file:4b356f6912993c9d5f125faa3c148085ac46c2af55c8ae0c7001052402825fef in / 
# Mon, 31 Oct 2016 23:39:15 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 31 Oct 2016 23:39:16 GMT
EXPOSE 5432/tcp
# Mon, 31 Oct 2016 23:39:16 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:43c265008fae5d1f3cbee0dac9697235320b174d85acbed002a4fe44236adec0`  
		Last Modified: Fri, 21 Oct 2016 16:22:58 GMT  
		Size: 51.4 MB (51353125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:215df7ad1b9befb2dffcb9e479c3188cae86893b676de1b4c9c1f4acc2327b7d`  
		Last Modified: Sat, 22 Oct 2016 00:20:31 GMT  
		Size: 2.0 KB (2046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:833a4a9c3573e61e91a092bafde646d8679f852ca221c76143e431a87b8ed06e`  
		Last Modified: Sat, 22 Oct 2016 00:20:30 GMT  
		Size: 1.2 MB (1216342 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5716357a052f614f869a7277fb4492c69a98c5628517dfe493d981a64e49d8f`  
		Last Modified: Sat, 22 Oct 2016 00:20:32 GMT  
		Size: 6.9 MB (6865078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6552dfce18a32eb601a1f854d5eabe82aea2f79c102a427dba22c4fbf831e329`  
		Last Modified: Sat, 22 Oct 2016 00:20:29 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b75b371d1e9f8a4ca71f0866349d9462a04896afef650ea3e631825ada19836b`  
		Last Modified: Sat, 22 Oct 2016 00:20:31 GMT  
		Size: 3.4 KB (3415 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd9a6234e02e60a38ecacad433260c493849fb3cde7d96494ba9ebe78d009336`  
		Last Modified: Mon, 31 Oct 2016 23:44:06 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d5634efcb5f3bf280e1431c5d6de3c046d9b698ddf7df3d18beb16a814a550c`  
		Last Modified: Mon, 31 Oct 2016 23:44:18 GMT  
		Size: 41.4 MB (41448547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e092d16528f1f9d296983e9b34b971c813031f170430b964e8f88a2e29f94458`  
		Last Modified: Mon, 31 Oct 2016 23:44:04 GMT  
		Size: 6.7 KB (6710 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0128ee5ebda9519036cedb46fd5e5d96839d12c5d6f343423c98de7b56fa48f`  
		Last Modified: Mon, 31 Oct 2016 23:44:04 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b8fc7df0363bdeab0e1bbd8a471c6905fa9a3fb19445f88c631c09843c49f0d`  
		Last Modified: Mon, 31 Oct 2016 23:44:04 GMT  
		Size: 1.3 KB (1270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.4`

```console
$ docker pull postgres@sha256:d6b51879ca8558c68c5ed74f95ea9f76539fab003335adf5908a9042e53c7987
```

-	Platforms:
	-	linux; amd64

### `postgres:9.4` - linux; amd64

-	Docker Version: 1.12.2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **100.9 MB (100897005 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa0512ba025b5bb02c8c19b7652deff0530efdcde8de91165d43171cc8fa22d1`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Fri, 21 Oct 2016 16:22:34 GMT
ADD file:23aa4f893e3288698c017b90be657911b72d54edb3b3a7c4d05c308f50f9228f in / 
# Fri, 21 Oct 2016 16:22:34 GMT
CMD ["/bin/bash"]
# Sat, 22 Oct 2016 00:19:10 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Sat, 22 Oct 2016 00:19:11 GMT
ENV GOSU_VERSION=1.7
# Sat, 22 Oct 2016 00:19:28 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Sat, 22 Oct 2016 00:19:36 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Sat, 22 Oct 2016 00:19:36 GMT
ENV LANG=en_US.utf8
# Sat, 22 Oct 2016 00:19:37 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Sat, 22 Oct 2016 00:19:39 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8
# Sat, 22 Oct 2016 00:25:29 GMT
ENV PG_MAJOR=9.4
# Mon, 31 Oct 2016 23:38:30 GMT
ENV PG_VERSION=9.4.10-1.pgdg80+1
# Mon, 31 Oct 2016 23:38:31 GMT
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main' $PG_MAJOR > /etc/apt/sources.list.d/pgdg.list
# Mon, 31 Oct 2016 23:39:12 GMT
RUN apt-get update 	&& apt-get install -y postgresql-common 	&& sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf 	&& apt-get install -y 		postgresql-$PG_MAJOR=$PG_VERSION 		postgresql-contrib-$PG_MAJOR=$PG_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Mon, 31 Oct 2016 23:39:13 GMT
RUN mv -v /usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample /usr/share/postgresql/$PG_MAJOR/ 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Mon, 31 Oct 2016 23:39:14 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres /var/run/postgresql
# Mon, 31 Oct 2016 23:39:14 GMT
ENV PATH=/usr/lib/postgresql/9.4/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 31 Oct 2016 23:39:15 GMT
ENV PGDATA=/var/lib/postgresql/data
# Mon, 31 Oct 2016 23:39:15 GMT
VOLUME [/var/lib/postgresql/data]
# Mon, 31 Oct 2016 23:39:15 GMT
COPY file:4b356f6912993c9d5f125faa3c148085ac46c2af55c8ae0c7001052402825fef in / 
# Mon, 31 Oct 2016 23:39:15 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 31 Oct 2016 23:39:16 GMT
EXPOSE 5432/tcp
# Mon, 31 Oct 2016 23:39:16 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:43c265008fae5d1f3cbee0dac9697235320b174d85acbed002a4fe44236adec0`  
		Last Modified: Fri, 21 Oct 2016 16:22:58 GMT  
		Size: 51.4 MB (51353125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:215df7ad1b9befb2dffcb9e479c3188cae86893b676de1b4c9c1f4acc2327b7d`  
		Last Modified: Sat, 22 Oct 2016 00:20:31 GMT  
		Size: 2.0 KB (2046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:833a4a9c3573e61e91a092bafde646d8679f852ca221c76143e431a87b8ed06e`  
		Last Modified: Sat, 22 Oct 2016 00:20:30 GMT  
		Size: 1.2 MB (1216342 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5716357a052f614f869a7277fb4492c69a98c5628517dfe493d981a64e49d8f`  
		Last Modified: Sat, 22 Oct 2016 00:20:32 GMT  
		Size: 6.9 MB (6865078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6552dfce18a32eb601a1f854d5eabe82aea2f79c102a427dba22c4fbf831e329`  
		Last Modified: Sat, 22 Oct 2016 00:20:29 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b75b371d1e9f8a4ca71f0866349d9462a04896afef650ea3e631825ada19836b`  
		Last Modified: Sat, 22 Oct 2016 00:20:31 GMT  
		Size: 3.4 KB (3415 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd9a6234e02e60a38ecacad433260c493849fb3cde7d96494ba9ebe78d009336`  
		Last Modified: Mon, 31 Oct 2016 23:44:06 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d5634efcb5f3bf280e1431c5d6de3c046d9b698ddf7df3d18beb16a814a550c`  
		Last Modified: Mon, 31 Oct 2016 23:44:18 GMT  
		Size: 41.4 MB (41448547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e092d16528f1f9d296983e9b34b971c813031f170430b964e8f88a2e29f94458`  
		Last Modified: Mon, 31 Oct 2016 23:44:04 GMT  
		Size: 6.7 KB (6710 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0128ee5ebda9519036cedb46fd5e5d96839d12c5d6f343423c98de7b56fa48f`  
		Last Modified: Mon, 31 Oct 2016 23:44:04 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b8fc7df0363bdeab0e1bbd8a471c6905fa9a3fb19445f88c631c09843c49f0d`  
		Last Modified: Mon, 31 Oct 2016 23:44:04 GMT  
		Size: 1.3 KB (1270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.3.15`

```console
$ docker pull postgres@sha256:4901663d53f084f79efc7031577bf6580dd596660c06abb1b5de8e9b4e54c310
```

-	Platforms:
	-	linux; amd64

### `postgres:9.3.15` - linux; amd64

-	Docker Version: 1.12.2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **100.5 MB (100537798 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c4219073c41d54f72bdb766e1a5d24a8a56b90d56c99aa8bae02dd3de3bf0d61`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Fri, 21 Oct 2016 16:22:34 GMT
ADD file:23aa4f893e3288698c017b90be657911b72d54edb3b3a7c4d05c308f50f9228f in / 
# Fri, 21 Oct 2016 16:22:34 GMT
CMD ["/bin/bash"]
# Sat, 22 Oct 2016 00:19:10 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Sat, 22 Oct 2016 00:19:11 GMT
ENV GOSU_VERSION=1.7
# Sat, 22 Oct 2016 00:19:28 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Sat, 22 Oct 2016 00:19:36 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Sat, 22 Oct 2016 00:19:36 GMT
ENV LANG=en_US.utf8
# Sat, 22 Oct 2016 00:19:37 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Sat, 22 Oct 2016 00:19:39 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8
# Sat, 22 Oct 2016 00:24:11 GMT
ENV PG_MAJOR=9.3
# Mon, 31 Oct 2016 23:39:16 GMT
ENV PG_VERSION=9.3.15-1.pgdg80+1
# Mon, 31 Oct 2016 23:39:17 GMT
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main' $PG_MAJOR > /etc/apt/sources.list.d/pgdg.list
# Mon, 31 Oct 2016 23:40:04 GMT
RUN apt-get update 	&& apt-get install -y postgresql-common 	&& sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf 	&& apt-get install -y 		postgresql-$PG_MAJOR=$PG_VERSION 		postgresql-contrib-$PG_MAJOR=$PG_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Mon, 31 Oct 2016 23:40:05 GMT
RUN mv -v /usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample /usr/share/postgresql/$PG_MAJOR/ 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Mon, 31 Oct 2016 23:40:06 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres /var/run/postgresql
# Mon, 31 Oct 2016 23:40:06 GMT
ENV PATH=/usr/lib/postgresql/9.3/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 31 Oct 2016 23:40:07 GMT
ENV PGDATA=/var/lib/postgresql/data
# Mon, 31 Oct 2016 23:40:07 GMT
VOLUME [/var/lib/postgresql/data]
# Mon, 31 Oct 2016 23:40:07 GMT
COPY file:4b356f6912993c9d5f125faa3c148085ac46c2af55c8ae0c7001052402825fef in / 
# Mon, 31 Oct 2016 23:40:08 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 31 Oct 2016 23:40:08 GMT
EXPOSE 5432/tcp
# Mon, 31 Oct 2016 23:40:08 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:43c265008fae5d1f3cbee0dac9697235320b174d85acbed002a4fe44236adec0`  
		Last Modified: Fri, 21 Oct 2016 16:22:58 GMT  
		Size: 51.4 MB (51353125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:215df7ad1b9befb2dffcb9e479c3188cae86893b676de1b4c9c1f4acc2327b7d`  
		Last Modified: Sat, 22 Oct 2016 00:20:31 GMT  
		Size: 2.0 KB (2046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:833a4a9c3573e61e91a092bafde646d8679f852ca221c76143e431a87b8ed06e`  
		Last Modified: Sat, 22 Oct 2016 00:20:30 GMT  
		Size: 1.2 MB (1216342 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5716357a052f614f869a7277fb4492c69a98c5628517dfe493d981a64e49d8f`  
		Last Modified: Sat, 22 Oct 2016 00:20:32 GMT  
		Size: 6.9 MB (6865078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6552dfce18a32eb601a1f854d5eabe82aea2f79c102a427dba22c4fbf831e329`  
		Last Modified: Sat, 22 Oct 2016 00:20:29 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b75b371d1e9f8a4ca71f0866349d9462a04896afef650ea3e631825ada19836b`  
		Last Modified: Sat, 22 Oct 2016 00:20:31 GMT  
		Size: 3.4 KB (3415 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac7abf2cf41b9c3d85ea3e0021997f50cbb9fad260d4e9782f5d52bb194bdaf0`  
		Last Modified: Mon, 31 Oct 2016 23:44:53 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e22ff7293896cdf66f3b1b8b7e15a118529fc99ef8bc9c727ac4202bc0eb1a92`  
		Last Modified: Mon, 31 Oct 2016 23:45:05 GMT  
		Size: 41.1 MB (41089521 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:745c0f8fa72865d1c7087462b9437ceb39a84554f7814c0d135ebd0fe929c59c`  
		Last Modified: Mon, 31 Oct 2016 23:44:50 GMT  
		Size: 6.5 KB (6528 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df056047ef196357fe3e26220a43517e7201af180126bcdcb44fae3f8b9d1f64`  
		Last Modified: Mon, 31 Oct 2016 23:44:50 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2668fcc8063b42d7a30b292ea5e712371d82d419cba0a01d0d06733106f9e3f1`  
		Last Modified: Mon, 31 Oct 2016 23:44:50 GMT  
		Size: 1.3 KB (1271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.3`

```console
$ docker pull postgres@sha256:4901663d53f084f79efc7031577bf6580dd596660c06abb1b5de8e9b4e54c310
```

-	Platforms:
	-	linux; amd64

### `postgres:9.3` - linux; amd64

-	Docker Version: 1.12.2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **100.5 MB (100537798 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c4219073c41d54f72bdb766e1a5d24a8a56b90d56c99aa8bae02dd3de3bf0d61`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Fri, 21 Oct 2016 16:22:34 GMT
ADD file:23aa4f893e3288698c017b90be657911b72d54edb3b3a7c4d05c308f50f9228f in / 
# Fri, 21 Oct 2016 16:22:34 GMT
CMD ["/bin/bash"]
# Sat, 22 Oct 2016 00:19:10 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Sat, 22 Oct 2016 00:19:11 GMT
ENV GOSU_VERSION=1.7
# Sat, 22 Oct 2016 00:19:28 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Sat, 22 Oct 2016 00:19:36 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Sat, 22 Oct 2016 00:19:36 GMT
ENV LANG=en_US.utf8
# Sat, 22 Oct 2016 00:19:37 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Sat, 22 Oct 2016 00:19:39 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8
# Sat, 22 Oct 2016 00:24:11 GMT
ENV PG_MAJOR=9.3
# Mon, 31 Oct 2016 23:39:16 GMT
ENV PG_VERSION=9.3.15-1.pgdg80+1
# Mon, 31 Oct 2016 23:39:17 GMT
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main' $PG_MAJOR > /etc/apt/sources.list.d/pgdg.list
# Mon, 31 Oct 2016 23:40:04 GMT
RUN apt-get update 	&& apt-get install -y postgresql-common 	&& sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf 	&& apt-get install -y 		postgresql-$PG_MAJOR=$PG_VERSION 		postgresql-contrib-$PG_MAJOR=$PG_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Mon, 31 Oct 2016 23:40:05 GMT
RUN mv -v /usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample /usr/share/postgresql/$PG_MAJOR/ 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Mon, 31 Oct 2016 23:40:06 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres /var/run/postgresql
# Mon, 31 Oct 2016 23:40:06 GMT
ENV PATH=/usr/lib/postgresql/9.3/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 31 Oct 2016 23:40:07 GMT
ENV PGDATA=/var/lib/postgresql/data
# Mon, 31 Oct 2016 23:40:07 GMT
VOLUME [/var/lib/postgresql/data]
# Mon, 31 Oct 2016 23:40:07 GMT
COPY file:4b356f6912993c9d5f125faa3c148085ac46c2af55c8ae0c7001052402825fef in / 
# Mon, 31 Oct 2016 23:40:08 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 31 Oct 2016 23:40:08 GMT
EXPOSE 5432/tcp
# Mon, 31 Oct 2016 23:40:08 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:43c265008fae5d1f3cbee0dac9697235320b174d85acbed002a4fe44236adec0`  
		Last Modified: Fri, 21 Oct 2016 16:22:58 GMT  
		Size: 51.4 MB (51353125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:215df7ad1b9befb2dffcb9e479c3188cae86893b676de1b4c9c1f4acc2327b7d`  
		Last Modified: Sat, 22 Oct 2016 00:20:31 GMT  
		Size: 2.0 KB (2046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:833a4a9c3573e61e91a092bafde646d8679f852ca221c76143e431a87b8ed06e`  
		Last Modified: Sat, 22 Oct 2016 00:20:30 GMT  
		Size: 1.2 MB (1216342 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5716357a052f614f869a7277fb4492c69a98c5628517dfe493d981a64e49d8f`  
		Last Modified: Sat, 22 Oct 2016 00:20:32 GMT  
		Size: 6.9 MB (6865078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6552dfce18a32eb601a1f854d5eabe82aea2f79c102a427dba22c4fbf831e329`  
		Last Modified: Sat, 22 Oct 2016 00:20:29 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b75b371d1e9f8a4ca71f0866349d9462a04896afef650ea3e631825ada19836b`  
		Last Modified: Sat, 22 Oct 2016 00:20:31 GMT  
		Size: 3.4 KB (3415 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac7abf2cf41b9c3d85ea3e0021997f50cbb9fad260d4e9782f5d52bb194bdaf0`  
		Last Modified: Mon, 31 Oct 2016 23:44:53 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e22ff7293896cdf66f3b1b8b7e15a118529fc99ef8bc9c727ac4202bc0eb1a92`  
		Last Modified: Mon, 31 Oct 2016 23:45:05 GMT  
		Size: 41.1 MB (41089521 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:745c0f8fa72865d1c7087462b9437ceb39a84554f7814c0d135ebd0fe929c59c`  
		Last Modified: Mon, 31 Oct 2016 23:44:50 GMT  
		Size: 6.5 KB (6528 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df056047ef196357fe3e26220a43517e7201af180126bcdcb44fae3f8b9d1f64`  
		Last Modified: Mon, 31 Oct 2016 23:44:50 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2668fcc8063b42d7a30b292ea5e712371d82d419cba0a01d0d06733106f9e3f1`  
		Last Modified: Mon, 31 Oct 2016 23:44:50 GMT  
		Size: 1.3 KB (1271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.2.19`

```console
$ docker pull postgres@sha256:5019ed495f96a0c287fbf7e46854deb0e026dc8304f9c83ca467988b37462c00
```

-	Platforms:
	-	linux; amd64

### `postgres:9.2.19` - linux; amd64

-	Docker Version: 1.12.2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **100.4 MB (100377597 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4a1fec6897c359d24ceef84ce9567038b73c33a28dfb70e69315609df0a7ddf3`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Fri, 21 Oct 2016 16:22:34 GMT
ADD file:23aa4f893e3288698c017b90be657911b72d54edb3b3a7c4d05c308f50f9228f in / 
# Fri, 21 Oct 2016 16:22:34 GMT
CMD ["/bin/bash"]
# Sat, 22 Oct 2016 00:19:10 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Sat, 22 Oct 2016 00:19:11 GMT
ENV GOSU_VERSION=1.7
# Sat, 22 Oct 2016 00:19:28 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Sat, 22 Oct 2016 00:19:36 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Sat, 22 Oct 2016 00:19:36 GMT
ENV LANG=en_US.utf8
# Sat, 22 Oct 2016 00:19:37 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Sat, 22 Oct 2016 00:19:39 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8
# Sat, 22 Oct 2016 00:22:47 GMT
ENV PG_MAJOR=9.2
# Mon, 31 Oct 2016 23:40:09 GMT
ENV PG_VERSION=9.2.19-1.pgdg80+1
# Mon, 31 Oct 2016 23:40:09 GMT
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main' $PG_MAJOR > /etc/apt/sources.list.d/pgdg.list
# Mon, 31 Oct 2016 23:40:47 GMT
RUN apt-get update 	&& apt-get install -y postgresql-common 	&& sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf 	&& apt-get install -y 		postgresql-$PG_MAJOR=$PG_VERSION 		postgresql-contrib-$PG_MAJOR=$PG_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Mon, 31 Oct 2016 23:40:48 GMT
RUN mv -v /usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample /usr/share/postgresql/$PG_MAJOR/ 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Mon, 31 Oct 2016 23:40:49 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres /var/run/postgresql
# Mon, 31 Oct 2016 23:40:50 GMT
ENV PATH=/usr/lib/postgresql/9.2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 31 Oct 2016 23:40:50 GMT
ENV PGDATA=/var/lib/postgresql/data
# Mon, 31 Oct 2016 23:40:50 GMT
VOLUME [/var/lib/postgresql/data]
# Mon, 31 Oct 2016 23:40:51 GMT
COPY file:4b356f6912993c9d5f125faa3c148085ac46c2af55c8ae0c7001052402825fef in / 
# Mon, 31 Oct 2016 23:40:51 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 31 Oct 2016 23:40:52 GMT
EXPOSE 5432/tcp
# Mon, 31 Oct 2016 23:40:52 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:43c265008fae5d1f3cbee0dac9697235320b174d85acbed002a4fe44236adec0`  
		Last Modified: Fri, 21 Oct 2016 16:22:58 GMT  
		Size: 51.4 MB (51353125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:215df7ad1b9befb2dffcb9e479c3188cae86893b676de1b4c9c1f4acc2327b7d`  
		Last Modified: Sat, 22 Oct 2016 00:20:31 GMT  
		Size: 2.0 KB (2046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:833a4a9c3573e61e91a092bafde646d8679f852ca221c76143e431a87b8ed06e`  
		Last Modified: Sat, 22 Oct 2016 00:20:30 GMT  
		Size: 1.2 MB (1216342 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5716357a052f614f869a7277fb4492c69a98c5628517dfe493d981a64e49d8f`  
		Last Modified: Sat, 22 Oct 2016 00:20:32 GMT  
		Size: 6.9 MB (6865078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6552dfce18a32eb601a1f854d5eabe82aea2f79c102a427dba22c4fbf831e329`  
		Last Modified: Sat, 22 Oct 2016 00:20:29 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b75b371d1e9f8a4ca71f0866349d9462a04896afef650ea3e631825ada19836b`  
		Last Modified: Sat, 22 Oct 2016 00:20:31 GMT  
		Size: 3.4 KB (3415 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:069a18be386d267100071cd46751a03282632e955fa294c5d56664582c299072`  
		Last Modified: Mon, 31 Oct 2016 23:45:36 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a9ad635eed5d3bbecdc458cdd50f1904d33b39b4ffdcf401b66b907e869d1c5`  
		Last Modified: Mon, 31 Oct 2016 23:45:47 GMT  
		Size: 40.9 MB (40929381 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:329a94802bb2e87c743b073d5e2c11692e5e9aedd6d9a3531d45dd9b7621f56e`  
		Last Modified: Mon, 31 Oct 2016 23:45:35 GMT  
		Size: 6.5 KB (6469 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c84d9d5d50c2b35a7cd94a66acf21d2410c73a890a213fed26b6323d9a968858`  
		Last Modified: Mon, 31 Oct 2016 23:45:35 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a8132a0c041d6ef50813c075b62a436693fd69e3c7c7b1e28c947d06d5d6d0c`  
		Last Modified: Mon, 31 Oct 2016 23:45:36 GMT  
		Size: 1.3 KB (1269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.2`

```console
$ docker pull postgres@sha256:5019ed495f96a0c287fbf7e46854deb0e026dc8304f9c83ca467988b37462c00
```

-	Platforms:
	-	linux; amd64

### `postgres:9.2` - linux; amd64

-	Docker Version: 1.12.2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **100.4 MB (100377597 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4a1fec6897c359d24ceef84ce9567038b73c33a28dfb70e69315609df0a7ddf3`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Fri, 21 Oct 2016 16:22:34 GMT
ADD file:23aa4f893e3288698c017b90be657911b72d54edb3b3a7c4d05c308f50f9228f in / 
# Fri, 21 Oct 2016 16:22:34 GMT
CMD ["/bin/bash"]
# Sat, 22 Oct 2016 00:19:10 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Sat, 22 Oct 2016 00:19:11 GMT
ENV GOSU_VERSION=1.7
# Sat, 22 Oct 2016 00:19:28 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Sat, 22 Oct 2016 00:19:36 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Sat, 22 Oct 2016 00:19:36 GMT
ENV LANG=en_US.utf8
# Sat, 22 Oct 2016 00:19:37 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Sat, 22 Oct 2016 00:19:39 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8
# Sat, 22 Oct 2016 00:22:47 GMT
ENV PG_MAJOR=9.2
# Mon, 31 Oct 2016 23:40:09 GMT
ENV PG_VERSION=9.2.19-1.pgdg80+1
# Mon, 31 Oct 2016 23:40:09 GMT
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main' $PG_MAJOR > /etc/apt/sources.list.d/pgdg.list
# Mon, 31 Oct 2016 23:40:47 GMT
RUN apt-get update 	&& apt-get install -y postgresql-common 	&& sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf 	&& apt-get install -y 		postgresql-$PG_MAJOR=$PG_VERSION 		postgresql-contrib-$PG_MAJOR=$PG_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Mon, 31 Oct 2016 23:40:48 GMT
RUN mv -v /usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample /usr/share/postgresql/$PG_MAJOR/ 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Mon, 31 Oct 2016 23:40:49 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres /var/run/postgresql
# Mon, 31 Oct 2016 23:40:50 GMT
ENV PATH=/usr/lib/postgresql/9.2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 31 Oct 2016 23:40:50 GMT
ENV PGDATA=/var/lib/postgresql/data
# Mon, 31 Oct 2016 23:40:50 GMT
VOLUME [/var/lib/postgresql/data]
# Mon, 31 Oct 2016 23:40:51 GMT
COPY file:4b356f6912993c9d5f125faa3c148085ac46c2af55c8ae0c7001052402825fef in / 
# Mon, 31 Oct 2016 23:40:51 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 31 Oct 2016 23:40:52 GMT
EXPOSE 5432/tcp
# Mon, 31 Oct 2016 23:40:52 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:43c265008fae5d1f3cbee0dac9697235320b174d85acbed002a4fe44236adec0`  
		Last Modified: Fri, 21 Oct 2016 16:22:58 GMT  
		Size: 51.4 MB (51353125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:215df7ad1b9befb2dffcb9e479c3188cae86893b676de1b4c9c1f4acc2327b7d`  
		Last Modified: Sat, 22 Oct 2016 00:20:31 GMT  
		Size: 2.0 KB (2046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:833a4a9c3573e61e91a092bafde646d8679f852ca221c76143e431a87b8ed06e`  
		Last Modified: Sat, 22 Oct 2016 00:20:30 GMT  
		Size: 1.2 MB (1216342 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5716357a052f614f869a7277fb4492c69a98c5628517dfe493d981a64e49d8f`  
		Last Modified: Sat, 22 Oct 2016 00:20:32 GMT  
		Size: 6.9 MB (6865078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6552dfce18a32eb601a1f854d5eabe82aea2f79c102a427dba22c4fbf831e329`  
		Last Modified: Sat, 22 Oct 2016 00:20:29 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b75b371d1e9f8a4ca71f0866349d9462a04896afef650ea3e631825ada19836b`  
		Last Modified: Sat, 22 Oct 2016 00:20:31 GMT  
		Size: 3.4 KB (3415 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:069a18be386d267100071cd46751a03282632e955fa294c5d56664582c299072`  
		Last Modified: Mon, 31 Oct 2016 23:45:36 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a9ad635eed5d3bbecdc458cdd50f1904d33b39b4ffdcf401b66b907e869d1c5`  
		Last Modified: Mon, 31 Oct 2016 23:45:47 GMT  
		Size: 40.9 MB (40929381 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:329a94802bb2e87c743b073d5e2c11692e5e9aedd6d9a3531d45dd9b7621f56e`  
		Last Modified: Mon, 31 Oct 2016 23:45:35 GMT  
		Size: 6.5 KB (6469 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c84d9d5d50c2b35a7cd94a66acf21d2410c73a890a213fed26b6323d9a968858`  
		Last Modified: Mon, 31 Oct 2016 23:45:35 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a8132a0c041d6ef50813c075b62a436693fd69e3c7c7b1e28c947d06d5d6d0c`  
		Last Modified: Mon, 31 Oct 2016 23:45:36 GMT  
		Size: 1.3 KB (1269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.1.24`

```console
$ docker pull postgres@sha256:491c6fb57d6f3858e8b50466463ae05149de0d0d07de3d434a7fdcfca719d5b8
```

-	Platforms:
	-	linux; amd64

### `postgres:9.1.24` - linux; amd64

-	Docker Version: 1.12.2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **100.2 MB (100209223 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3a9dca7b3f692432c6c314a4b719a512ccc507625314bdbaf4ebff3cfc322474`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Fri, 21 Oct 2016 16:22:34 GMT
ADD file:23aa4f893e3288698c017b90be657911b72d54edb3b3a7c4d05c308f50f9228f in / 
# Fri, 21 Oct 2016 16:22:34 GMT
CMD ["/bin/bash"]
# Sat, 22 Oct 2016 00:19:10 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Sat, 22 Oct 2016 00:19:11 GMT
ENV GOSU_VERSION=1.7
# Sat, 22 Oct 2016 00:19:28 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Sat, 22 Oct 2016 00:19:36 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Sat, 22 Oct 2016 00:19:36 GMT
ENV LANG=en_US.utf8
# Sat, 22 Oct 2016 00:19:37 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Sat, 22 Oct 2016 00:19:39 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8
# Sat, 22 Oct 2016 00:21:23 GMT
ENV PG_MAJOR=9.1
# Mon, 31 Oct 2016 23:40:52 GMT
ENV PG_VERSION=9.1.24-1.pgdg80+1
# Mon, 31 Oct 2016 23:40:53 GMT
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main' $PG_MAJOR > /etc/apt/sources.list.d/pgdg.list
# Mon, 31 Oct 2016 23:41:29 GMT
RUN apt-get update 	&& apt-get install -y postgresql-common 	&& sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf 	&& apt-get install -y 		postgresql-$PG_MAJOR=$PG_VERSION 		postgresql-contrib-$PG_MAJOR=$PG_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Mon, 31 Oct 2016 23:41:30 GMT
RUN mv -v /usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample /usr/share/postgresql/$PG_MAJOR/ 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Mon, 31 Oct 2016 23:41:31 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres /var/run/postgresql
# Mon, 31 Oct 2016 23:41:31 GMT
ENV PATH=/usr/lib/postgresql/9.1/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 31 Oct 2016 23:41:32 GMT
ENV PGDATA=/var/lib/postgresql/data
# Mon, 31 Oct 2016 23:41:32 GMT
VOLUME [/var/lib/postgresql/data]
# Mon, 31 Oct 2016 23:41:32 GMT
COPY file:4b356f6912993c9d5f125faa3c148085ac46c2af55c8ae0c7001052402825fef in / 
# Mon, 31 Oct 2016 23:41:33 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 31 Oct 2016 23:41:33 GMT
EXPOSE 5432/tcp
# Mon, 31 Oct 2016 23:41:33 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:43c265008fae5d1f3cbee0dac9697235320b174d85acbed002a4fe44236adec0`  
		Last Modified: Fri, 21 Oct 2016 16:22:58 GMT  
		Size: 51.4 MB (51353125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:215df7ad1b9befb2dffcb9e479c3188cae86893b676de1b4c9c1f4acc2327b7d`  
		Last Modified: Sat, 22 Oct 2016 00:20:31 GMT  
		Size: 2.0 KB (2046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:833a4a9c3573e61e91a092bafde646d8679f852ca221c76143e431a87b8ed06e`  
		Last Modified: Sat, 22 Oct 2016 00:20:30 GMT  
		Size: 1.2 MB (1216342 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5716357a052f614f869a7277fb4492c69a98c5628517dfe493d981a64e49d8f`  
		Last Modified: Sat, 22 Oct 2016 00:20:32 GMT  
		Size: 6.9 MB (6865078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6552dfce18a32eb601a1f854d5eabe82aea2f79c102a427dba22c4fbf831e329`  
		Last Modified: Sat, 22 Oct 2016 00:20:29 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b75b371d1e9f8a4ca71f0866349d9462a04896afef650ea3e631825ada19836b`  
		Last Modified: Sat, 22 Oct 2016 00:20:31 GMT  
		Size: 3.4 KB (3415 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f72f6d18a2be527c4073098979e71012f15d4620e5a89ee709b6db79e986f275`  
		Last Modified: Mon, 31 Oct 2016 23:46:21 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be040d5455660776a5911fa41b3c9db313b05f343e1bde00e84cd4db68aced96`  
		Last Modified: Mon, 31 Oct 2016 23:46:35 GMT  
		Size: 40.8 MB (40761177 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:974f417b99d9fad748525a51c83479afad9b73fd69d7614c52dd4b1ad0d0b12b`  
		Last Modified: Mon, 31 Oct 2016 23:46:21 GMT  
		Size: 6.3 KB (6300 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d5acdbaca79c80f24f7edecfefd1b18883e4b9b07eef21056aedf3442ffbf56`  
		Last Modified: Mon, 31 Oct 2016 23:46:22 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23fd2719a2159c3a0ba00ac3f3bf06c25a97f5b9f19bfa2cd27aca9687437eea`  
		Last Modified: Mon, 31 Oct 2016 23:46:21 GMT  
		Size: 1.3 KB (1270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.1`

```console
$ docker pull postgres@sha256:491c6fb57d6f3858e8b50466463ae05149de0d0d07de3d434a7fdcfca719d5b8
```

-	Platforms:
	-	linux; amd64

### `postgres:9.1` - linux; amd64

-	Docker Version: 1.12.2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **100.2 MB (100209223 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3a9dca7b3f692432c6c314a4b719a512ccc507625314bdbaf4ebff3cfc322474`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Fri, 21 Oct 2016 16:22:34 GMT
ADD file:23aa4f893e3288698c017b90be657911b72d54edb3b3a7c4d05c308f50f9228f in / 
# Fri, 21 Oct 2016 16:22:34 GMT
CMD ["/bin/bash"]
# Sat, 22 Oct 2016 00:19:10 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Sat, 22 Oct 2016 00:19:11 GMT
ENV GOSU_VERSION=1.7
# Sat, 22 Oct 2016 00:19:28 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Sat, 22 Oct 2016 00:19:36 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Sat, 22 Oct 2016 00:19:36 GMT
ENV LANG=en_US.utf8
# Sat, 22 Oct 2016 00:19:37 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Sat, 22 Oct 2016 00:19:39 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8
# Sat, 22 Oct 2016 00:21:23 GMT
ENV PG_MAJOR=9.1
# Mon, 31 Oct 2016 23:40:52 GMT
ENV PG_VERSION=9.1.24-1.pgdg80+1
# Mon, 31 Oct 2016 23:40:53 GMT
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main' $PG_MAJOR > /etc/apt/sources.list.d/pgdg.list
# Mon, 31 Oct 2016 23:41:29 GMT
RUN apt-get update 	&& apt-get install -y postgresql-common 	&& sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf 	&& apt-get install -y 		postgresql-$PG_MAJOR=$PG_VERSION 		postgresql-contrib-$PG_MAJOR=$PG_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Mon, 31 Oct 2016 23:41:30 GMT
RUN mv -v /usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample /usr/share/postgresql/$PG_MAJOR/ 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Mon, 31 Oct 2016 23:41:31 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres /var/run/postgresql
# Mon, 31 Oct 2016 23:41:31 GMT
ENV PATH=/usr/lib/postgresql/9.1/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 31 Oct 2016 23:41:32 GMT
ENV PGDATA=/var/lib/postgresql/data
# Mon, 31 Oct 2016 23:41:32 GMT
VOLUME [/var/lib/postgresql/data]
# Mon, 31 Oct 2016 23:41:32 GMT
COPY file:4b356f6912993c9d5f125faa3c148085ac46c2af55c8ae0c7001052402825fef in / 
# Mon, 31 Oct 2016 23:41:33 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 31 Oct 2016 23:41:33 GMT
EXPOSE 5432/tcp
# Mon, 31 Oct 2016 23:41:33 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:43c265008fae5d1f3cbee0dac9697235320b174d85acbed002a4fe44236adec0`  
		Last Modified: Fri, 21 Oct 2016 16:22:58 GMT  
		Size: 51.4 MB (51353125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:215df7ad1b9befb2dffcb9e479c3188cae86893b676de1b4c9c1f4acc2327b7d`  
		Last Modified: Sat, 22 Oct 2016 00:20:31 GMT  
		Size: 2.0 KB (2046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:833a4a9c3573e61e91a092bafde646d8679f852ca221c76143e431a87b8ed06e`  
		Last Modified: Sat, 22 Oct 2016 00:20:30 GMT  
		Size: 1.2 MB (1216342 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5716357a052f614f869a7277fb4492c69a98c5628517dfe493d981a64e49d8f`  
		Last Modified: Sat, 22 Oct 2016 00:20:32 GMT  
		Size: 6.9 MB (6865078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6552dfce18a32eb601a1f854d5eabe82aea2f79c102a427dba22c4fbf831e329`  
		Last Modified: Sat, 22 Oct 2016 00:20:29 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b75b371d1e9f8a4ca71f0866349d9462a04896afef650ea3e631825ada19836b`  
		Last Modified: Sat, 22 Oct 2016 00:20:31 GMT  
		Size: 3.4 KB (3415 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f72f6d18a2be527c4073098979e71012f15d4620e5a89ee709b6db79e986f275`  
		Last Modified: Mon, 31 Oct 2016 23:46:21 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be040d5455660776a5911fa41b3c9db313b05f343e1bde00e84cd4db68aced96`  
		Last Modified: Mon, 31 Oct 2016 23:46:35 GMT  
		Size: 40.8 MB (40761177 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:974f417b99d9fad748525a51c83479afad9b73fd69d7614c52dd4b1ad0d0b12b`  
		Last Modified: Mon, 31 Oct 2016 23:46:21 GMT  
		Size: 6.3 KB (6300 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d5acdbaca79c80f24f7edecfefd1b18883e4b9b07eef21056aedf3442ffbf56`  
		Last Modified: Mon, 31 Oct 2016 23:46:22 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23fd2719a2159c3a0ba00ac3f3bf06c25a97f5b9f19bfa2cd27aca9687437eea`  
		Last Modified: Mon, 31 Oct 2016 23:46:21 GMT  
		Size: 1.3 KB (1270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
