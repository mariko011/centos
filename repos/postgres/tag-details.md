<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `postgres`

-	[`postgres:9.6.0`](#postgres960)
-	[`postgres:9.6`](#postgres96)
-	[`postgres:9`](#postgres9)
-	[`postgres:latest`](#postgreslatest)
-	[`postgres:9.5.4`](#postgres954)
-	[`postgres:9.5`](#postgres95)
-	[`postgres:9.4.9`](#postgres949)
-	[`postgres:9.4`](#postgres94)
-	[`postgres:9.3.14`](#postgres9314)
-	[`postgres:9.3`](#postgres93)
-	[`postgres:9.2.18`](#postgres9218)
-	[`postgres:9.2`](#postgres92)
-	[`postgres:9.1.23`](#postgres9123)
-	[`postgres:9.1`](#postgres91)

## `postgres:9.6.0`

```console
$ docker pull postgres@sha256:e22a0fd554c62f7a5fb589bce5812ce380edc5ea99f6065f0cd9684ecec4fb12
```

-	Platforms:
	-	linux; amd64

### `postgres:9.6.0` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **101.6 MB (101550481 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bff88803c2dfb3174fc38adef3a080640e89c712e4d5b902582bf5d4a66738a0`
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
# Sat, 22 Oct 2016 00:19:40 GMT
ENV PG_VERSION=9.6.0-1.pgdg80+1
# Sat, 22 Oct 2016 00:19:41 GMT
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main' $PG_MAJOR > /etc/apt/sources.list.d/pgdg.list
# Sat, 22 Oct 2016 00:20:11 GMT
RUN apt-get update 	&& apt-get install -y postgresql-common 	&& sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf 	&& apt-get install -y 		postgresql-$PG_MAJOR=$PG_VERSION 		postgresql-contrib-$PG_MAJOR=$PG_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Sat, 22 Oct 2016 00:20:13 GMT
RUN mv -v /usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample /usr/share/postgresql/$PG_MAJOR/ 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Sat, 22 Oct 2016 00:20:14 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres /var/run/postgresql
# Sat, 22 Oct 2016 00:20:14 GMT
ENV PATH=/usr/lib/postgresql/9.6/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 22 Oct 2016 00:20:14 GMT
ENV PGDATA=/var/lib/postgresql/data
# Sat, 22 Oct 2016 00:20:15 GMT
VOLUME [/var/lib/postgresql/data]
# Sat, 22 Oct 2016 00:20:15 GMT
COPY file:aefa30113260f63949e77cbc9a66aa22f27b1f79479507fd0d32f9b6a6994d69 in / 
# Sat, 22 Oct 2016 00:20:16 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 22 Oct 2016 00:20:16 GMT
EXPOSE 5432/tcp
# Sat, 22 Oct 2016 00:20:17 GMT
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
	-	`sha256:08d98aaec35e729e07f05a6fd1fa6545815ceac2f1e09239710a015746b35c56`  
		Last Modified: Sat, 22 Oct 2016 00:20:27 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca4fc6359e84275597ad3acd6e6d1ee8c2bd408163b539cd8ebed56d4c96264e`  
		Last Modified: Sat, 22 Oct 2016 00:20:38 GMT  
		Size: 42.1 MB (42101601 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e7b79b890f7b2aef3fe107f7e4e2f5228e14fb5c30ac3a7a6605ddbc6a65708`  
		Last Modified: Sat, 22 Oct 2016 00:20:26 GMT  
		Size: 7.2 KB (7153 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f303060a572de1ed38c1352bb993c89ca2ff796ae2b728031b456bb272711f0a`  
		Last Modified: Sat, 22 Oct 2016 00:20:26 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2f58482141af3909d28c36edb275bb37dac848da1eeabe45972a9c7625268f6`  
		Last Modified: Sat, 22 Oct 2016 00:20:26 GMT  
		Size: 1.3 KB (1252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.6`

```console
$ docker pull postgres@sha256:e22a0fd554c62f7a5fb589bce5812ce380edc5ea99f6065f0cd9684ecec4fb12
```

-	Platforms:
	-	linux; amd64

### `postgres:9.6` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **101.6 MB (101550481 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bff88803c2dfb3174fc38adef3a080640e89c712e4d5b902582bf5d4a66738a0`
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
# Sat, 22 Oct 2016 00:19:40 GMT
ENV PG_VERSION=9.6.0-1.pgdg80+1
# Sat, 22 Oct 2016 00:19:41 GMT
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main' $PG_MAJOR > /etc/apt/sources.list.d/pgdg.list
# Sat, 22 Oct 2016 00:20:11 GMT
RUN apt-get update 	&& apt-get install -y postgresql-common 	&& sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf 	&& apt-get install -y 		postgresql-$PG_MAJOR=$PG_VERSION 		postgresql-contrib-$PG_MAJOR=$PG_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Sat, 22 Oct 2016 00:20:13 GMT
RUN mv -v /usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample /usr/share/postgresql/$PG_MAJOR/ 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Sat, 22 Oct 2016 00:20:14 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres /var/run/postgresql
# Sat, 22 Oct 2016 00:20:14 GMT
ENV PATH=/usr/lib/postgresql/9.6/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 22 Oct 2016 00:20:14 GMT
ENV PGDATA=/var/lib/postgresql/data
# Sat, 22 Oct 2016 00:20:15 GMT
VOLUME [/var/lib/postgresql/data]
# Sat, 22 Oct 2016 00:20:15 GMT
COPY file:aefa30113260f63949e77cbc9a66aa22f27b1f79479507fd0d32f9b6a6994d69 in / 
# Sat, 22 Oct 2016 00:20:16 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 22 Oct 2016 00:20:16 GMT
EXPOSE 5432/tcp
# Sat, 22 Oct 2016 00:20:17 GMT
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
	-	`sha256:08d98aaec35e729e07f05a6fd1fa6545815ceac2f1e09239710a015746b35c56`  
		Last Modified: Sat, 22 Oct 2016 00:20:27 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca4fc6359e84275597ad3acd6e6d1ee8c2bd408163b539cd8ebed56d4c96264e`  
		Last Modified: Sat, 22 Oct 2016 00:20:38 GMT  
		Size: 42.1 MB (42101601 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e7b79b890f7b2aef3fe107f7e4e2f5228e14fb5c30ac3a7a6605ddbc6a65708`  
		Last Modified: Sat, 22 Oct 2016 00:20:26 GMT  
		Size: 7.2 KB (7153 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f303060a572de1ed38c1352bb993c89ca2ff796ae2b728031b456bb272711f0a`  
		Last Modified: Sat, 22 Oct 2016 00:20:26 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2f58482141af3909d28c36edb275bb37dac848da1eeabe45972a9c7625268f6`  
		Last Modified: Sat, 22 Oct 2016 00:20:26 GMT  
		Size: 1.3 KB (1252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9`

```console
$ docker pull postgres@sha256:e22a0fd554c62f7a5fb589bce5812ce380edc5ea99f6065f0cd9684ecec4fb12
```

-	Platforms:
	-	linux; amd64

### `postgres:9` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **101.6 MB (101550481 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bff88803c2dfb3174fc38adef3a080640e89c712e4d5b902582bf5d4a66738a0`
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
# Sat, 22 Oct 2016 00:19:40 GMT
ENV PG_VERSION=9.6.0-1.pgdg80+1
# Sat, 22 Oct 2016 00:19:41 GMT
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main' $PG_MAJOR > /etc/apt/sources.list.d/pgdg.list
# Sat, 22 Oct 2016 00:20:11 GMT
RUN apt-get update 	&& apt-get install -y postgresql-common 	&& sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf 	&& apt-get install -y 		postgresql-$PG_MAJOR=$PG_VERSION 		postgresql-contrib-$PG_MAJOR=$PG_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Sat, 22 Oct 2016 00:20:13 GMT
RUN mv -v /usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample /usr/share/postgresql/$PG_MAJOR/ 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Sat, 22 Oct 2016 00:20:14 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres /var/run/postgresql
# Sat, 22 Oct 2016 00:20:14 GMT
ENV PATH=/usr/lib/postgresql/9.6/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 22 Oct 2016 00:20:14 GMT
ENV PGDATA=/var/lib/postgresql/data
# Sat, 22 Oct 2016 00:20:15 GMT
VOLUME [/var/lib/postgresql/data]
# Sat, 22 Oct 2016 00:20:15 GMT
COPY file:aefa30113260f63949e77cbc9a66aa22f27b1f79479507fd0d32f9b6a6994d69 in / 
# Sat, 22 Oct 2016 00:20:16 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 22 Oct 2016 00:20:16 GMT
EXPOSE 5432/tcp
# Sat, 22 Oct 2016 00:20:17 GMT
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
	-	`sha256:08d98aaec35e729e07f05a6fd1fa6545815ceac2f1e09239710a015746b35c56`  
		Last Modified: Sat, 22 Oct 2016 00:20:27 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca4fc6359e84275597ad3acd6e6d1ee8c2bd408163b539cd8ebed56d4c96264e`  
		Last Modified: Sat, 22 Oct 2016 00:20:38 GMT  
		Size: 42.1 MB (42101601 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e7b79b890f7b2aef3fe107f7e4e2f5228e14fb5c30ac3a7a6605ddbc6a65708`  
		Last Modified: Sat, 22 Oct 2016 00:20:26 GMT  
		Size: 7.2 KB (7153 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f303060a572de1ed38c1352bb993c89ca2ff796ae2b728031b456bb272711f0a`  
		Last Modified: Sat, 22 Oct 2016 00:20:26 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2f58482141af3909d28c36edb275bb37dac848da1eeabe45972a9c7625268f6`  
		Last Modified: Sat, 22 Oct 2016 00:20:26 GMT  
		Size: 1.3 KB (1252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:latest`

```console
$ docker pull postgres@sha256:e22a0fd554c62f7a5fb589bce5812ce380edc5ea99f6065f0cd9684ecec4fb12
```

-	Platforms:
	-	linux; amd64

### `postgres:latest` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **101.6 MB (101550481 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bff88803c2dfb3174fc38adef3a080640e89c712e4d5b902582bf5d4a66738a0`
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
# Sat, 22 Oct 2016 00:19:40 GMT
ENV PG_VERSION=9.6.0-1.pgdg80+1
# Sat, 22 Oct 2016 00:19:41 GMT
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main' $PG_MAJOR > /etc/apt/sources.list.d/pgdg.list
# Sat, 22 Oct 2016 00:20:11 GMT
RUN apt-get update 	&& apt-get install -y postgresql-common 	&& sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf 	&& apt-get install -y 		postgresql-$PG_MAJOR=$PG_VERSION 		postgresql-contrib-$PG_MAJOR=$PG_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Sat, 22 Oct 2016 00:20:13 GMT
RUN mv -v /usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample /usr/share/postgresql/$PG_MAJOR/ 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Sat, 22 Oct 2016 00:20:14 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres /var/run/postgresql
# Sat, 22 Oct 2016 00:20:14 GMT
ENV PATH=/usr/lib/postgresql/9.6/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 22 Oct 2016 00:20:14 GMT
ENV PGDATA=/var/lib/postgresql/data
# Sat, 22 Oct 2016 00:20:15 GMT
VOLUME [/var/lib/postgresql/data]
# Sat, 22 Oct 2016 00:20:15 GMT
COPY file:aefa30113260f63949e77cbc9a66aa22f27b1f79479507fd0d32f9b6a6994d69 in / 
# Sat, 22 Oct 2016 00:20:16 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 22 Oct 2016 00:20:16 GMT
EXPOSE 5432/tcp
# Sat, 22 Oct 2016 00:20:17 GMT
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
	-	`sha256:08d98aaec35e729e07f05a6fd1fa6545815ceac2f1e09239710a015746b35c56`  
		Last Modified: Sat, 22 Oct 2016 00:20:27 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca4fc6359e84275597ad3acd6e6d1ee8c2bd408163b539cd8ebed56d4c96264e`  
		Last Modified: Sat, 22 Oct 2016 00:20:38 GMT  
		Size: 42.1 MB (42101601 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e7b79b890f7b2aef3fe107f7e4e2f5228e14fb5c30ac3a7a6605ddbc6a65708`  
		Last Modified: Sat, 22 Oct 2016 00:20:26 GMT  
		Size: 7.2 KB (7153 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f303060a572de1ed38c1352bb993c89ca2ff796ae2b728031b456bb272711f0a`  
		Last Modified: Sat, 22 Oct 2016 00:20:26 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2f58482141af3909d28c36edb275bb37dac848da1eeabe45972a9c7625268f6`  
		Last Modified: Sat, 22 Oct 2016 00:20:26 GMT  
		Size: 1.3 KB (1252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.5.4`

```console
$ docker pull postgres@sha256:1480f2446dabb1116fafa426ac530d2404277873a84dc4a4d0d9d4b37a5601e8
```

-	Platforms:
	-	linux; amd64

### `postgres:9.5.4` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **101.3 MB (101294488 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2417ea518abc0db32cf2fb0d021ce57dab2e16f480ac924000e52afd07d3b0a4`
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
# Sat, 22 Oct 2016 00:26:53 GMT
ENV PG_VERSION=9.5.4-1.pgdg80+2
# Sat, 22 Oct 2016 00:26:54 GMT
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main' $PG_MAJOR > /etc/apt/sources.list.d/pgdg.list
# Sat, 22 Oct 2016 00:27:27 GMT
RUN apt-get update 	&& apt-get install -y postgresql-common 	&& sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf 	&& apt-get install -y 		postgresql-$PG_MAJOR=$PG_VERSION 		postgresql-contrib-$PG_MAJOR=$PG_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Sat, 22 Oct 2016 00:27:28 GMT
RUN mv -v /usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample /usr/share/postgresql/$PG_MAJOR/ 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Sat, 22 Oct 2016 00:27:29 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres /var/run/postgresql
# Sat, 22 Oct 2016 00:27:30 GMT
ENV PATH=/usr/lib/postgresql/9.5/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 22 Oct 2016 00:27:30 GMT
ENV PGDATA=/var/lib/postgresql/data
# Sat, 22 Oct 2016 00:27:31 GMT
VOLUME [/var/lib/postgresql/data]
# Sat, 22 Oct 2016 00:27:31 GMT
COPY file:aefa30113260f63949e77cbc9a66aa22f27b1f79479507fd0d32f9b6a6994d69 in / 
# Sat, 22 Oct 2016 00:27:32 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 22 Oct 2016 00:27:32 GMT
EXPOSE 5432/tcp
# Sat, 22 Oct 2016 00:27:32 GMT
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
	-	`sha256:ecc63fd465b8e39e4858bf2b00a2f44171b1b1142802abec80170b3d7a0ed8f2`  
		Last Modified: Sat, 22 Oct 2016 00:27:42 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8eb11995a95ad8bc35b2bdbaadb3252f06443846406bd63dcc70c4d6b297397e`  
		Last Modified: Sat, 22 Oct 2016 00:27:54 GMT  
		Size: 41.8 MB (41845902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c82fb17fc44110db494721af806193cd3dace12b5a244e38cc654fe895bd1c4`  
		Last Modified: Sat, 22 Oct 2016 00:27:42 GMT  
		Size: 6.9 KB (6856 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:389787480cc253c61d02e0e7450a7f5ca2ffb770459bb81674648363c2dcb1e1`  
		Last Modified: Sat, 22 Oct 2016 00:27:43 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01988d09a399d3860650f4c7b550bc90c7e65454aa69dad96f09a3ad1f1802bf`  
		Last Modified: Sat, 22 Oct 2016 00:27:43 GMT  
		Size: 1.3 KB (1253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.5`

```console
$ docker pull postgres@sha256:1480f2446dabb1116fafa426ac530d2404277873a84dc4a4d0d9d4b37a5601e8
```

-	Platforms:
	-	linux; amd64

### `postgres:9.5` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **101.3 MB (101294488 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2417ea518abc0db32cf2fb0d021ce57dab2e16f480ac924000e52afd07d3b0a4`
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
# Sat, 22 Oct 2016 00:26:53 GMT
ENV PG_VERSION=9.5.4-1.pgdg80+2
# Sat, 22 Oct 2016 00:26:54 GMT
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main' $PG_MAJOR > /etc/apt/sources.list.d/pgdg.list
# Sat, 22 Oct 2016 00:27:27 GMT
RUN apt-get update 	&& apt-get install -y postgresql-common 	&& sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf 	&& apt-get install -y 		postgresql-$PG_MAJOR=$PG_VERSION 		postgresql-contrib-$PG_MAJOR=$PG_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Sat, 22 Oct 2016 00:27:28 GMT
RUN mv -v /usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample /usr/share/postgresql/$PG_MAJOR/ 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Sat, 22 Oct 2016 00:27:29 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres /var/run/postgresql
# Sat, 22 Oct 2016 00:27:30 GMT
ENV PATH=/usr/lib/postgresql/9.5/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 22 Oct 2016 00:27:30 GMT
ENV PGDATA=/var/lib/postgresql/data
# Sat, 22 Oct 2016 00:27:31 GMT
VOLUME [/var/lib/postgresql/data]
# Sat, 22 Oct 2016 00:27:31 GMT
COPY file:aefa30113260f63949e77cbc9a66aa22f27b1f79479507fd0d32f9b6a6994d69 in / 
# Sat, 22 Oct 2016 00:27:32 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 22 Oct 2016 00:27:32 GMT
EXPOSE 5432/tcp
# Sat, 22 Oct 2016 00:27:32 GMT
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
	-	`sha256:ecc63fd465b8e39e4858bf2b00a2f44171b1b1142802abec80170b3d7a0ed8f2`  
		Last Modified: Sat, 22 Oct 2016 00:27:42 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8eb11995a95ad8bc35b2bdbaadb3252f06443846406bd63dcc70c4d6b297397e`  
		Last Modified: Sat, 22 Oct 2016 00:27:54 GMT  
		Size: 41.8 MB (41845902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c82fb17fc44110db494721af806193cd3dace12b5a244e38cc654fe895bd1c4`  
		Last Modified: Sat, 22 Oct 2016 00:27:42 GMT  
		Size: 6.9 KB (6856 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:389787480cc253c61d02e0e7450a7f5ca2ffb770459bb81674648363c2dcb1e1`  
		Last Modified: Sat, 22 Oct 2016 00:27:43 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01988d09a399d3860650f4c7b550bc90c7e65454aa69dad96f09a3ad1f1802bf`  
		Last Modified: Sat, 22 Oct 2016 00:27:43 GMT  
		Size: 1.3 KB (1253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.4.9`

```console
$ docker pull postgres@sha256:a824a0ff836c61ab7167767862225eb64d0bfd2f7edb2db03e63ce2a4eb1eeef
```

-	Platforms:
	-	linux; amd64

### `postgres:9.4.9` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **100.9 MB (100890628 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:29a38907855371a566c130b380faeec28e0f515a9fd388e3d8db7f10d66f7350`
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
# Sat, 22 Oct 2016 00:25:29 GMT
ENV PG_VERSION=9.4.9-1.pgdg80+1
# Sat, 22 Oct 2016 00:25:30 GMT
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main' $PG_MAJOR > /etc/apt/sources.list.d/pgdg.list
# Sat, 22 Oct 2016 00:26:01 GMT
RUN apt-get update 	&& apt-get install -y postgresql-common 	&& sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf 	&& apt-get install -y 		postgresql-$PG_MAJOR=$PG_VERSION 		postgresql-contrib-$PG_MAJOR=$PG_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Sat, 22 Oct 2016 00:26:02 GMT
RUN mv -v /usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample /usr/share/postgresql/$PG_MAJOR/ 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Sat, 22 Oct 2016 00:26:03 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres /var/run/postgresql
# Sat, 22 Oct 2016 00:26:04 GMT
ENV PATH=/usr/lib/postgresql/9.4/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 22 Oct 2016 00:26:04 GMT
ENV PGDATA=/var/lib/postgresql/data
# Sat, 22 Oct 2016 00:26:04 GMT
VOLUME [/var/lib/postgresql/data]
# Sat, 22 Oct 2016 00:26:05 GMT
COPY file:aefa30113260f63949e77cbc9a66aa22f27b1f79479507fd0d32f9b6a6994d69 in / 
# Sat, 22 Oct 2016 00:26:05 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 22 Oct 2016 00:26:06 GMT
EXPOSE 5432/tcp
# Sat, 22 Oct 2016 00:26:06 GMT
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
	-	`sha256:141310376dbec45b91adac5b235ba76066ec167718177b5d73dbb791d8160237`  
		Last Modified: Sat, 22 Oct 2016 00:26:16 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3db5794e14d09fc215d5af7bb76f3a3bb2bcd07c1fa50266e2a2c2d35b342e6`  
		Last Modified: Sat, 22 Oct 2016 00:26:28 GMT  
		Size: 41.4 MB (41442187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7c04b102f3516fa4be86ad757b92488b8a9e3b621f9bae6c0590023a5027fb6`  
		Last Modified: Sat, 22 Oct 2016 00:26:16 GMT  
		Size: 6.7 KB (6712 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f22590a25f8bfb5e4c0d9c6e6a7d1b9e160c1d4c01c79821d085d38df5cc9f7`  
		Last Modified: Sat, 22 Oct 2016 00:26:16 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f67039ac4ad600732c0196293a6b8eddc975cfa77a6bd21ac10ebaa3fac7cf04`  
		Last Modified: Sat, 22 Oct 2016 00:26:16 GMT  
		Size: 1.3 KB (1251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.4`

```console
$ docker pull postgres@sha256:a824a0ff836c61ab7167767862225eb64d0bfd2f7edb2db03e63ce2a4eb1eeef
```

-	Platforms:
	-	linux; amd64

### `postgres:9.4` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **100.9 MB (100890628 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:29a38907855371a566c130b380faeec28e0f515a9fd388e3d8db7f10d66f7350`
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
# Sat, 22 Oct 2016 00:25:29 GMT
ENV PG_VERSION=9.4.9-1.pgdg80+1
# Sat, 22 Oct 2016 00:25:30 GMT
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main' $PG_MAJOR > /etc/apt/sources.list.d/pgdg.list
# Sat, 22 Oct 2016 00:26:01 GMT
RUN apt-get update 	&& apt-get install -y postgresql-common 	&& sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf 	&& apt-get install -y 		postgresql-$PG_MAJOR=$PG_VERSION 		postgresql-contrib-$PG_MAJOR=$PG_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Sat, 22 Oct 2016 00:26:02 GMT
RUN mv -v /usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample /usr/share/postgresql/$PG_MAJOR/ 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Sat, 22 Oct 2016 00:26:03 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres /var/run/postgresql
# Sat, 22 Oct 2016 00:26:04 GMT
ENV PATH=/usr/lib/postgresql/9.4/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 22 Oct 2016 00:26:04 GMT
ENV PGDATA=/var/lib/postgresql/data
# Sat, 22 Oct 2016 00:26:04 GMT
VOLUME [/var/lib/postgresql/data]
# Sat, 22 Oct 2016 00:26:05 GMT
COPY file:aefa30113260f63949e77cbc9a66aa22f27b1f79479507fd0d32f9b6a6994d69 in / 
# Sat, 22 Oct 2016 00:26:05 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 22 Oct 2016 00:26:06 GMT
EXPOSE 5432/tcp
# Sat, 22 Oct 2016 00:26:06 GMT
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
	-	`sha256:141310376dbec45b91adac5b235ba76066ec167718177b5d73dbb791d8160237`  
		Last Modified: Sat, 22 Oct 2016 00:26:16 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3db5794e14d09fc215d5af7bb76f3a3bb2bcd07c1fa50266e2a2c2d35b342e6`  
		Last Modified: Sat, 22 Oct 2016 00:26:28 GMT  
		Size: 41.4 MB (41442187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7c04b102f3516fa4be86ad757b92488b8a9e3b621f9bae6c0590023a5027fb6`  
		Last Modified: Sat, 22 Oct 2016 00:26:16 GMT  
		Size: 6.7 KB (6712 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f22590a25f8bfb5e4c0d9c6e6a7d1b9e160c1d4c01c79821d085d38df5cc9f7`  
		Last Modified: Sat, 22 Oct 2016 00:26:16 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f67039ac4ad600732c0196293a6b8eddc975cfa77a6bd21ac10ebaa3fac7cf04`  
		Last Modified: Sat, 22 Oct 2016 00:26:16 GMT  
		Size: 1.3 KB (1251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.3.14`

```console
$ docker pull postgres@sha256:e8e74dafd6a4595f715784261c979066b4494f60ebddd90338633915c57d5aac
```

-	Platforms:
	-	linux; amd64

### `postgres:9.3.14` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **100.5 MB (100534645 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fe40b7500dc0082f3f4823eaa95ef7b35269d3ccfbaedd760010b0f8ffd58d37`
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
# Sat, 22 Oct 2016 00:24:12 GMT
ENV PG_VERSION=9.3.14-1.pgdg80+1
# Sat, 22 Oct 2016 00:24:13 GMT
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main' $PG_MAJOR > /etc/apt/sources.list.d/pgdg.list
# Sat, 22 Oct 2016 00:24:42 GMT
RUN apt-get update 	&& apt-get install -y postgresql-common 	&& sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf 	&& apt-get install -y 		postgresql-$PG_MAJOR=$PG_VERSION 		postgresql-contrib-$PG_MAJOR=$PG_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Sat, 22 Oct 2016 00:24:43 GMT
RUN mv -v /usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample /usr/share/postgresql/$PG_MAJOR/ 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Sat, 22 Oct 2016 00:24:44 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres /var/run/postgresql
# Sat, 22 Oct 2016 00:24:44 GMT
ENV PATH=/usr/lib/postgresql/9.3/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 22 Oct 2016 00:24:45 GMT
ENV PGDATA=/var/lib/postgresql/data
# Sat, 22 Oct 2016 00:24:45 GMT
VOLUME [/var/lib/postgresql/data]
# Sat, 22 Oct 2016 00:24:46 GMT
COPY file:aefa30113260f63949e77cbc9a66aa22f27b1f79479507fd0d32f9b6a6994d69 in / 
# Sat, 22 Oct 2016 00:24:46 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 22 Oct 2016 00:24:46 GMT
EXPOSE 5432/tcp
# Sat, 22 Oct 2016 00:24:47 GMT
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
	-	`sha256:d2eecd2a767f84b8a1520263512b330f25c7cfc439a4a64cc373327eab479066`  
		Last Modified: Sat, 22 Oct 2016 00:24:56 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a048ed13853808067d9d0e1ca13c316fea9e4865f2a62b791b4a157aafd7add`  
		Last Modified: Sat, 22 Oct 2016 00:25:08 GMT  
		Size: 41.1 MB (41086383 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7487d5578125ad1d7c2b13c9e8a8f85b293aff7a69c07036033a332a4ffcd86b`  
		Last Modified: Sat, 22 Oct 2016 00:24:56 GMT  
		Size: 6.5 KB (6530 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ab8e65bde8de08fec6eba7ed2dcfcc5461ac0f3c6f2d9c1488474d4d6ce337f`  
		Last Modified: Sat, 22 Oct 2016 00:24:56 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6af84eb79794b7a6a1485e52218fe3822a2874712c31ec960810d65ce4781d79`  
		Last Modified: Sat, 22 Oct 2016 00:24:56 GMT  
		Size: 1.3 KB (1254 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.3`

```console
$ docker pull postgres@sha256:e8e74dafd6a4595f715784261c979066b4494f60ebddd90338633915c57d5aac
```

-	Platforms:
	-	linux; amd64

### `postgres:9.3` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **100.5 MB (100534645 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fe40b7500dc0082f3f4823eaa95ef7b35269d3ccfbaedd760010b0f8ffd58d37`
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
# Sat, 22 Oct 2016 00:24:12 GMT
ENV PG_VERSION=9.3.14-1.pgdg80+1
# Sat, 22 Oct 2016 00:24:13 GMT
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main' $PG_MAJOR > /etc/apt/sources.list.d/pgdg.list
# Sat, 22 Oct 2016 00:24:42 GMT
RUN apt-get update 	&& apt-get install -y postgresql-common 	&& sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf 	&& apt-get install -y 		postgresql-$PG_MAJOR=$PG_VERSION 		postgresql-contrib-$PG_MAJOR=$PG_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Sat, 22 Oct 2016 00:24:43 GMT
RUN mv -v /usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample /usr/share/postgresql/$PG_MAJOR/ 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Sat, 22 Oct 2016 00:24:44 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres /var/run/postgresql
# Sat, 22 Oct 2016 00:24:44 GMT
ENV PATH=/usr/lib/postgresql/9.3/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 22 Oct 2016 00:24:45 GMT
ENV PGDATA=/var/lib/postgresql/data
# Sat, 22 Oct 2016 00:24:45 GMT
VOLUME [/var/lib/postgresql/data]
# Sat, 22 Oct 2016 00:24:46 GMT
COPY file:aefa30113260f63949e77cbc9a66aa22f27b1f79479507fd0d32f9b6a6994d69 in / 
# Sat, 22 Oct 2016 00:24:46 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 22 Oct 2016 00:24:46 GMT
EXPOSE 5432/tcp
# Sat, 22 Oct 2016 00:24:47 GMT
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
	-	`sha256:d2eecd2a767f84b8a1520263512b330f25c7cfc439a4a64cc373327eab479066`  
		Last Modified: Sat, 22 Oct 2016 00:24:56 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a048ed13853808067d9d0e1ca13c316fea9e4865f2a62b791b4a157aafd7add`  
		Last Modified: Sat, 22 Oct 2016 00:25:08 GMT  
		Size: 41.1 MB (41086383 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7487d5578125ad1d7c2b13c9e8a8f85b293aff7a69c07036033a332a4ffcd86b`  
		Last Modified: Sat, 22 Oct 2016 00:24:56 GMT  
		Size: 6.5 KB (6530 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ab8e65bde8de08fec6eba7ed2dcfcc5461ac0f3c6f2d9c1488474d4d6ce337f`  
		Last Modified: Sat, 22 Oct 2016 00:24:56 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6af84eb79794b7a6a1485e52218fe3822a2874712c31ec960810d65ce4781d79`  
		Last Modified: Sat, 22 Oct 2016 00:24:56 GMT  
		Size: 1.3 KB (1254 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.2.18`

```console
$ docker pull postgres@sha256:fd19dd29ebce10c1f23879aca84c6226a37e6dc1bf38c0569233e55f50c65c86
```

-	Platforms:
	-	linux; amd64

### `postgres:9.2.18` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **100.4 MB (100375228 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:be79f8be56ca34e5957a44862bcf0449db9d2babbfb58acf2cca2f14ae3d26fd`
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
# Sat, 22 Oct 2016 00:22:48 GMT
ENV PG_VERSION=9.2.18-1.pgdg80+1
# Sat, 22 Oct 2016 00:22:49 GMT
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main' $PG_MAJOR > /etc/apt/sources.list.d/pgdg.list
# Sat, 22 Oct 2016 00:23:26 GMT
RUN apt-get update 	&& apt-get install -y postgresql-common 	&& sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf 	&& apt-get install -y 		postgresql-$PG_MAJOR=$PG_VERSION 		postgresql-contrib-$PG_MAJOR=$PG_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Sat, 22 Oct 2016 00:23:27 GMT
RUN mv -v /usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample /usr/share/postgresql/$PG_MAJOR/ 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Sat, 22 Oct 2016 00:23:28 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres /var/run/postgresql
# Sat, 22 Oct 2016 00:23:29 GMT
ENV PATH=/usr/lib/postgresql/9.2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 22 Oct 2016 00:23:29 GMT
ENV PGDATA=/var/lib/postgresql/data
# Sat, 22 Oct 2016 00:23:29 GMT
VOLUME [/var/lib/postgresql/data]
# Sat, 22 Oct 2016 00:23:30 GMT
COPY file:aefa30113260f63949e77cbc9a66aa22f27b1f79479507fd0d32f9b6a6994d69 in / 
# Sat, 22 Oct 2016 00:23:30 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 22 Oct 2016 00:23:31 GMT
EXPOSE 5432/tcp
# Sat, 22 Oct 2016 00:23:31 GMT
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
	-	`sha256:53584d9d5fe6b319d36d4e70ef1c96dae121808bb5aefe71f6e97b79053cc840`  
		Last Modified: Sat, 22 Oct 2016 00:23:40 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87f8843adf95d19fdbb5597acdf176ffc0fa6cdb7c3100ec8a987ea915e10403`  
		Last Modified: Sat, 22 Oct 2016 00:23:53 GMT  
		Size: 40.9 MB (40927025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:399f6bf67d428a3d0d86b9b8139f2dbb86f2677f5777d49645656369d6e1757b`  
		Last Modified: Sat, 22 Oct 2016 00:23:40 GMT  
		Size: 6.5 KB (6471 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ba505042d1b6772d73290922a38c9b18c5e70a71c6476fe3381343f5c494158`  
		Last Modified: Sat, 22 Oct 2016 00:23:40 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a07cff514125eb5f5a3305b4c7e73b122b8b468eecaec579051da652a4e38984`  
		Last Modified: Sat, 22 Oct 2016 00:23:41 GMT  
		Size: 1.3 KB (1252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.2`

```console
$ docker pull postgres@sha256:fd19dd29ebce10c1f23879aca84c6226a37e6dc1bf38c0569233e55f50c65c86
```

-	Platforms:
	-	linux; amd64

### `postgres:9.2` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **100.4 MB (100375228 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:be79f8be56ca34e5957a44862bcf0449db9d2babbfb58acf2cca2f14ae3d26fd`
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
# Sat, 22 Oct 2016 00:22:48 GMT
ENV PG_VERSION=9.2.18-1.pgdg80+1
# Sat, 22 Oct 2016 00:22:49 GMT
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main' $PG_MAJOR > /etc/apt/sources.list.d/pgdg.list
# Sat, 22 Oct 2016 00:23:26 GMT
RUN apt-get update 	&& apt-get install -y postgresql-common 	&& sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf 	&& apt-get install -y 		postgresql-$PG_MAJOR=$PG_VERSION 		postgresql-contrib-$PG_MAJOR=$PG_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Sat, 22 Oct 2016 00:23:27 GMT
RUN mv -v /usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample /usr/share/postgresql/$PG_MAJOR/ 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Sat, 22 Oct 2016 00:23:28 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres /var/run/postgresql
# Sat, 22 Oct 2016 00:23:29 GMT
ENV PATH=/usr/lib/postgresql/9.2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 22 Oct 2016 00:23:29 GMT
ENV PGDATA=/var/lib/postgresql/data
# Sat, 22 Oct 2016 00:23:29 GMT
VOLUME [/var/lib/postgresql/data]
# Sat, 22 Oct 2016 00:23:30 GMT
COPY file:aefa30113260f63949e77cbc9a66aa22f27b1f79479507fd0d32f9b6a6994d69 in / 
# Sat, 22 Oct 2016 00:23:30 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 22 Oct 2016 00:23:31 GMT
EXPOSE 5432/tcp
# Sat, 22 Oct 2016 00:23:31 GMT
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
	-	`sha256:53584d9d5fe6b319d36d4e70ef1c96dae121808bb5aefe71f6e97b79053cc840`  
		Last Modified: Sat, 22 Oct 2016 00:23:40 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87f8843adf95d19fdbb5597acdf176ffc0fa6cdb7c3100ec8a987ea915e10403`  
		Last Modified: Sat, 22 Oct 2016 00:23:53 GMT  
		Size: 40.9 MB (40927025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:399f6bf67d428a3d0d86b9b8139f2dbb86f2677f5777d49645656369d6e1757b`  
		Last Modified: Sat, 22 Oct 2016 00:23:40 GMT  
		Size: 6.5 KB (6471 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ba505042d1b6772d73290922a38c9b18c5e70a71c6476fe3381343f5c494158`  
		Last Modified: Sat, 22 Oct 2016 00:23:40 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a07cff514125eb5f5a3305b4c7e73b122b8b468eecaec579051da652a4e38984`  
		Last Modified: Sat, 22 Oct 2016 00:23:41 GMT  
		Size: 1.3 KB (1252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.1.23`

```console
$ docker pull postgres@sha256:82be34551363f60f7f0a060d7618ae997a9dab75e70f6c473574f06f60d14e26
```

-	Platforms:
	-	linux; amd64

### `postgres:9.1.23` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **100.2 MB (100191731 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:029f2a0025acefddc3a0d8b375a019ffadfe3aece8909d93c40ceb0ad56005e8`
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
# Sat, 22 Oct 2016 00:21:23 GMT
ENV PG_VERSION=9.1.23-1.pgdg80+1
# Sat, 22 Oct 2016 00:21:24 GMT
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main' $PG_MAJOR > /etc/apt/sources.list.d/pgdg.list
# Sat, 22 Oct 2016 00:22:01 GMT
RUN apt-get update 	&& apt-get install -y postgresql-common 	&& sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf 	&& apt-get install -y 		postgresql-$PG_MAJOR=$PG_VERSION 		postgresql-contrib-$PG_MAJOR=$PG_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Sat, 22 Oct 2016 00:22:02 GMT
RUN mv -v /usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample /usr/share/postgresql/$PG_MAJOR/ 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Sat, 22 Oct 2016 00:22:03 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres /var/run/postgresql
# Sat, 22 Oct 2016 00:22:03 GMT
ENV PATH=/usr/lib/postgresql/9.1/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 22 Oct 2016 00:22:04 GMT
ENV PGDATA=/var/lib/postgresql/data
# Sat, 22 Oct 2016 00:22:04 GMT
VOLUME [/var/lib/postgresql/data]
# Sat, 22 Oct 2016 00:22:05 GMT
COPY file:aefa30113260f63949e77cbc9a66aa22f27b1f79479507fd0d32f9b6a6994d69 in / 
# Sat, 22 Oct 2016 00:22:05 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 22 Oct 2016 00:22:06 GMT
EXPOSE 5432/tcp
# Sat, 22 Oct 2016 00:22:06 GMT
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
	-	`sha256:e1f4d0352c6310b103ea3db2106f9bb80ec0020d6c7ff5f140b1b9d19311bfeb`  
		Last Modified: Sat, 22 Oct 2016 00:22:16 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83f7472af5cdf93b590ff3fb6090d74636415c96b2249729d60666c04c7b2043`  
		Last Modified: Sat, 22 Oct 2016 00:22:28 GMT  
		Size: 40.7 MB (40743700 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:150684f0242a418aca103da3489154daffcae60db976fac131b38fc023ab3e7e`  
		Last Modified: Sat, 22 Oct 2016 00:22:16 GMT  
		Size: 6.3 KB (6298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec08bd7096dcd76217310b7d7d884aece97fe3eb9d024dc6d7ca861573bd46d4`  
		Last Modified: Sat, 22 Oct 2016 00:22:16 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ca3ddd87c3cbb01777f459f1c7a11ea3da3d0402b347e64d67b65f64a235e02`  
		Last Modified: Sat, 22 Oct 2016 00:22:16 GMT  
		Size: 1.3 KB (1253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.1`

```console
$ docker pull postgres@sha256:82be34551363f60f7f0a060d7618ae997a9dab75e70f6c473574f06f60d14e26
```

-	Platforms:
	-	linux; amd64

### `postgres:9.1` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **100.2 MB (100191731 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:029f2a0025acefddc3a0d8b375a019ffadfe3aece8909d93c40ceb0ad56005e8`
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
# Sat, 22 Oct 2016 00:21:23 GMT
ENV PG_VERSION=9.1.23-1.pgdg80+1
# Sat, 22 Oct 2016 00:21:24 GMT
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main' $PG_MAJOR > /etc/apt/sources.list.d/pgdg.list
# Sat, 22 Oct 2016 00:22:01 GMT
RUN apt-get update 	&& apt-get install -y postgresql-common 	&& sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf 	&& apt-get install -y 		postgresql-$PG_MAJOR=$PG_VERSION 		postgresql-contrib-$PG_MAJOR=$PG_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Sat, 22 Oct 2016 00:22:02 GMT
RUN mv -v /usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample /usr/share/postgresql/$PG_MAJOR/ 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Sat, 22 Oct 2016 00:22:03 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres /var/run/postgresql
# Sat, 22 Oct 2016 00:22:03 GMT
ENV PATH=/usr/lib/postgresql/9.1/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 22 Oct 2016 00:22:04 GMT
ENV PGDATA=/var/lib/postgresql/data
# Sat, 22 Oct 2016 00:22:04 GMT
VOLUME [/var/lib/postgresql/data]
# Sat, 22 Oct 2016 00:22:05 GMT
COPY file:aefa30113260f63949e77cbc9a66aa22f27b1f79479507fd0d32f9b6a6994d69 in / 
# Sat, 22 Oct 2016 00:22:05 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 22 Oct 2016 00:22:06 GMT
EXPOSE 5432/tcp
# Sat, 22 Oct 2016 00:22:06 GMT
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
	-	`sha256:e1f4d0352c6310b103ea3db2106f9bb80ec0020d6c7ff5f140b1b9d19311bfeb`  
		Last Modified: Sat, 22 Oct 2016 00:22:16 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83f7472af5cdf93b590ff3fb6090d74636415c96b2249729d60666c04c7b2043`  
		Last Modified: Sat, 22 Oct 2016 00:22:28 GMT  
		Size: 40.7 MB (40743700 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:150684f0242a418aca103da3489154daffcae60db976fac131b38fc023ab3e7e`  
		Last Modified: Sat, 22 Oct 2016 00:22:16 GMT  
		Size: 6.3 KB (6298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec08bd7096dcd76217310b7d7d884aece97fe3eb9d024dc6d7ca861573bd46d4`  
		Last Modified: Sat, 22 Oct 2016 00:22:16 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ca3ddd87c3cbb01777f459f1c7a11ea3da3d0402b347e64d67b65f64a235e02`  
		Last Modified: Sat, 22 Oct 2016 00:22:16 GMT  
		Size: 1.3 KB (1253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
