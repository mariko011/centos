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
$ docker pull postgres@sha256:0842a7ef786aa2658623085160cb38451eb3d40856e7d222ae0069b6e6296877
```

-	Platforms:
	-	linux; amd64

### `postgres:9.6.1` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **101.6 MB (101602000 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4023a747a01a29f94939c41fc5c2441837d9ebc05030c2681dc47853d73978c5`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 19:36:05 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Tue, 17 Jan 2017 19:36:05 GMT
ENV GOSU_VERSION=1.7
# Tue, 17 Jan 2017 19:36:20 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 17 Jan 2017 19:36:27 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Tue, 17 Jan 2017 19:36:27 GMT
ENV LANG=en_US.utf8
# Tue, 17 Jan 2017 19:36:28 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 17 Jan 2017 19:36:30 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 17 Jan 2017 19:36:30 GMT
ENV PG_MAJOR=9.6
# Tue, 17 Jan 2017 19:36:30 GMT
ENV PG_VERSION=9.6.1-2.pgdg80+1
# Tue, 17 Jan 2017 19:36:31 GMT
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main' $PG_MAJOR > /etc/apt/sources.list.d/pgdg.list
# Tue, 17 Jan 2017 19:37:02 GMT
RUN apt-get update 	&& apt-get install -y postgresql-common 	&& sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf 	&& apt-get install -y 		postgresql-$PG_MAJOR=$PG_VERSION 		postgresql-contrib-$PG_MAJOR=$PG_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 19:37:03 GMT
RUN mv -v /usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample /usr/share/postgresql/$PG_MAJOR/ 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Fri, 20 Jan 2017 22:06:36 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod g+s /var/run/postgresql
# Fri, 20 Jan 2017 22:06:36 GMT
ENV PATH=/usr/lib/postgresql/9.6/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 20 Jan 2017 22:06:37 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 20 Jan 2017 22:06:38 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 20 Jan 2017 22:06:38 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 20 Jan 2017 22:06:39 GMT
COPY file:8d267d76d9551f01f3b15b68c484da091c34fd675a9b6adc8c279d52364efdfc in / 
# Fri, 20 Jan 2017 22:06:40 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 20 Jan 2017 22:06:40 GMT
EXPOSE 5432/tcp
# Fri, 20 Jan 2017 22:06:41 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f08454c3c700a0100e8c3424e7048c4160e48c03bf045eada703f69fae65a3f2`  
		Last Modified: Wed, 18 Jan 2017 06:53:25 GMT  
		Size: 2.0 KB (2041 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4db038cdfe0347fab843472aa89d5b85a99a77dac608e5b91962eebcf6a8d1da`  
		Last Modified: Wed, 18 Jan 2017 06:53:23 GMT  
		Size: 1.2 MB (1216697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1d9ba315f03586d7698b3e6157539dc65c58c4af524a5570506d954eee51a49`  
		Last Modified: Wed, 18 Jan 2017 06:53:26 GMT  
		Size: 6.9 MB (6865805 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25e0ee93170ea48b465208dd9a5b66c43359df595268299d92caed4ed36f59be`  
		Last Modified: Wed, 18 Jan 2017 06:53:23 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f28084c3f5120489e6a0d65a6838996fd8ef9f688ad92024b2e01d8955273c5`  
		Last Modified: Wed, 18 Jan 2017 06:53:22 GMT  
		Size: 3.4 KB (3400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78c91f0aedcd497505c709b6bdaddf0f9f793dc77c9bbbaa8523794cdada545b`  
		Last Modified: Wed, 18 Jan 2017 06:57:55 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93ab52dbcbb871cf2b35c385bd2f17eb702e72653a9b9c692db1ca3c0613f826`  
		Last Modified: Wed, 18 Jan 2017 06:58:17 GMT  
		Size: 42.1 MB (42143440 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27ec75825613d9aac8c0713df7a0a73b5ff4f508313ec39fe6a6b35399cfd77e`  
		Last Modified: Wed, 18 Jan 2017 06:57:56 GMT  
		Size: 7.2 KB (7156 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28ef691a9920e2c53e433896317f52d682b16645aa9ba3df39d0f5e7d4775a48`  
		Last Modified: Fri, 20 Jan 2017 22:23:15 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f0dd20755c9fc0d0ffea23516f40b60613796495c438d30fc61bce14338e033`  
		Last Modified: Fri, 20 Jan 2017 22:23:15 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a4a824861f7154bc86e18f6ed800bb9689610dbdf3da9cf39ce14045af61529`  
		Last Modified: Fri, 20 Jan 2017 22:23:15 GMT  
		Size: 1.6 KB (1617 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.6`

```console
$ docker pull postgres@sha256:0842a7ef786aa2658623085160cb38451eb3d40856e7d222ae0069b6e6296877
```

-	Platforms:
	-	linux; amd64

### `postgres:9.6` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **101.6 MB (101602000 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4023a747a01a29f94939c41fc5c2441837d9ebc05030c2681dc47853d73978c5`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 19:36:05 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Tue, 17 Jan 2017 19:36:05 GMT
ENV GOSU_VERSION=1.7
# Tue, 17 Jan 2017 19:36:20 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 17 Jan 2017 19:36:27 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Tue, 17 Jan 2017 19:36:27 GMT
ENV LANG=en_US.utf8
# Tue, 17 Jan 2017 19:36:28 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 17 Jan 2017 19:36:30 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 17 Jan 2017 19:36:30 GMT
ENV PG_MAJOR=9.6
# Tue, 17 Jan 2017 19:36:30 GMT
ENV PG_VERSION=9.6.1-2.pgdg80+1
# Tue, 17 Jan 2017 19:36:31 GMT
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main' $PG_MAJOR > /etc/apt/sources.list.d/pgdg.list
# Tue, 17 Jan 2017 19:37:02 GMT
RUN apt-get update 	&& apt-get install -y postgresql-common 	&& sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf 	&& apt-get install -y 		postgresql-$PG_MAJOR=$PG_VERSION 		postgresql-contrib-$PG_MAJOR=$PG_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 19:37:03 GMT
RUN mv -v /usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample /usr/share/postgresql/$PG_MAJOR/ 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Fri, 20 Jan 2017 22:06:36 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod g+s /var/run/postgresql
# Fri, 20 Jan 2017 22:06:36 GMT
ENV PATH=/usr/lib/postgresql/9.6/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 20 Jan 2017 22:06:37 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 20 Jan 2017 22:06:38 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 20 Jan 2017 22:06:38 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 20 Jan 2017 22:06:39 GMT
COPY file:8d267d76d9551f01f3b15b68c484da091c34fd675a9b6adc8c279d52364efdfc in / 
# Fri, 20 Jan 2017 22:06:40 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 20 Jan 2017 22:06:40 GMT
EXPOSE 5432/tcp
# Fri, 20 Jan 2017 22:06:41 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f08454c3c700a0100e8c3424e7048c4160e48c03bf045eada703f69fae65a3f2`  
		Last Modified: Wed, 18 Jan 2017 06:53:25 GMT  
		Size: 2.0 KB (2041 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4db038cdfe0347fab843472aa89d5b85a99a77dac608e5b91962eebcf6a8d1da`  
		Last Modified: Wed, 18 Jan 2017 06:53:23 GMT  
		Size: 1.2 MB (1216697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1d9ba315f03586d7698b3e6157539dc65c58c4af524a5570506d954eee51a49`  
		Last Modified: Wed, 18 Jan 2017 06:53:26 GMT  
		Size: 6.9 MB (6865805 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25e0ee93170ea48b465208dd9a5b66c43359df595268299d92caed4ed36f59be`  
		Last Modified: Wed, 18 Jan 2017 06:53:23 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f28084c3f5120489e6a0d65a6838996fd8ef9f688ad92024b2e01d8955273c5`  
		Last Modified: Wed, 18 Jan 2017 06:53:22 GMT  
		Size: 3.4 KB (3400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78c91f0aedcd497505c709b6bdaddf0f9f793dc77c9bbbaa8523794cdada545b`  
		Last Modified: Wed, 18 Jan 2017 06:57:55 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93ab52dbcbb871cf2b35c385bd2f17eb702e72653a9b9c692db1ca3c0613f826`  
		Last Modified: Wed, 18 Jan 2017 06:58:17 GMT  
		Size: 42.1 MB (42143440 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27ec75825613d9aac8c0713df7a0a73b5ff4f508313ec39fe6a6b35399cfd77e`  
		Last Modified: Wed, 18 Jan 2017 06:57:56 GMT  
		Size: 7.2 KB (7156 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28ef691a9920e2c53e433896317f52d682b16645aa9ba3df39d0f5e7d4775a48`  
		Last Modified: Fri, 20 Jan 2017 22:23:15 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f0dd20755c9fc0d0ffea23516f40b60613796495c438d30fc61bce14338e033`  
		Last Modified: Fri, 20 Jan 2017 22:23:15 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a4a824861f7154bc86e18f6ed800bb9689610dbdf3da9cf39ce14045af61529`  
		Last Modified: Fri, 20 Jan 2017 22:23:15 GMT  
		Size: 1.6 KB (1617 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9`

```console
$ docker pull postgres@sha256:0842a7ef786aa2658623085160cb38451eb3d40856e7d222ae0069b6e6296877
```

-	Platforms:
	-	linux; amd64

### `postgres:9` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **101.6 MB (101602000 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4023a747a01a29f94939c41fc5c2441837d9ebc05030c2681dc47853d73978c5`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 19:36:05 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Tue, 17 Jan 2017 19:36:05 GMT
ENV GOSU_VERSION=1.7
# Tue, 17 Jan 2017 19:36:20 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 17 Jan 2017 19:36:27 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Tue, 17 Jan 2017 19:36:27 GMT
ENV LANG=en_US.utf8
# Tue, 17 Jan 2017 19:36:28 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 17 Jan 2017 19:36:30 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 17 Jan 2017 19:36:30 GMT
ENV PG_MAJOR=9.6
# Tue, 17 Jan 2017 19:36:30 GMT
ENV PG_VERSION=9.6.1-2.pgdg80+1
# Tue, 17 Jan 2017 19:36:31 GMT
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main' $PG_MAJOR > /etc/apt/sources.list.d/pgdg.list
# Tue, 17 Jan 2017 19:37:02 GMT
RUN apt-get update 	&& apt-get install -y postgresql-common 	&& sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf 	&& apt-get install -y 		postgresql-$PG_MAJOR=$PG_VERSION 		postgresql-contrib-$PG_MAJOR=$PG_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 19:37:03 GMT
RUN mv -v /usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample /usr/share/postgresql/$PG_MAJOR/ 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Fri, 20 Jan 2017 22:06:36 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod g+s /var/run/postgresql
# Fri, 20 Jan 2017 22:06:36 GMT
ENV PATH=/usr/lib/postgresql/9.6/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 20 Jan 2017 22:06:37 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 20 Jan 2017 22:06:38 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 20 Jan 2017 22:06:38 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 20 Jan 2017 22:06:39 GMT
COPY file:8d267d76d9551f01f3b15b68c484da091c34fd675a9b6adc8c279d52364efdfc in / 
# Fri, 20 Jan 2017 22:06:40 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 20 Jan 2017 22:06:40 GMT
EXPOSE 5432/tcp
# Fri, 20 Jan 2017 22:06:41 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f08454c3c700a0100e8c3424e7048c4160e48c03bf045eada703f69fae65a3f2`  
		Last Modified: Wed, 18 Jan 2017 06:53:25 GMT  
		Size: 2.0 KB (2041 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4db038cdfe0347fab843472aa89d5b85a99a77dac608e5b91962eebcf6a8d1da`  
		Last Modified: Wed, 18 Jan 2017 06:53:23 GMT  
		Size: 1.2 MB (1216697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1d9ba315f03586d7698b3e6157539dc65c58c4af524a5570506d954eee51a49`  
		Last Modified: Wed, 18 Jan 2017 06:53:26 GMT  
		Size: 6.9 MB (6865805 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25e0ee93170ea48b465208dd9a5b66c43359df595268299d92caed4ed36f59be`  
		Last Modified: Wed, 18 Jan 2017 06:53:23 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f28084c3f5120489e6a0d65a6838996fd8ef9f688ad92024b2e01d8955273c5`  
		Last Modified: Wed, 18 Jan 2017 06:53:22 GMT  
		Size: 3.4 KB (3400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78c91f0aedcd497505c709b6bdaddf0f9f793dc77c9bbbaa8523794cdada545b`  
		Last Modified: Wed, 18 Jan 2017 06:57:55 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93ab52dbcbb871cf2b35c385bd2f17eb702e72653a9b9c692db1ca3c0613f826`  
		Last Modified: Wed, 18 Jan 2017 06:58:17 GMT  
		Size: 42.1 MB (42143440 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27ec75825613d9aac8c0713df7a0a73b5ff4f508313ec39fe6a6b35399cfd77e`  
		Last Modified: Wed, 18 Jan 2017 06:57:56 GMT  
		Size: 7.2 KB (7156 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28ef691a9920e2c53e433896317f52d682b16645aa9ba3df39d0f5e7d4775a48`  
		Last Modified: Fri, 20 Jan 2017 22:23:15 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f0dd20755c9fc0d0ffea23516f40b60613796495c438d30fc61bce14338e033`  
		Last Modified: Fri, 20 Jan 2017 22:23:15 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a4a824861f7154bc86e18f6ed800bb9689610dbdf3da9cf39ce14045af61529`  
		Last Modified: Fri, 20 Jan 2017 22:23:15 GMT  
		Size: 1.6 KB (1617 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:latest`

```console
$ docker pull postgres@sha256:0842a7ef786aa2658623085160cb38451eb3d40856e7d222ae0069b6e6296877
```

-	Platforms:
	-	linux; amd64

### `postgres:latest` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **101.6 MB (101602000 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4023a747a01a29f94939c41fc5c2441837d9ebc05030c2681dc47853d73978c5`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 19:36:05 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Tue, 17 Jan 2017 19:36:05 GMT
ENV GOSU_VERSION=1.7
# Tue, 17 Jan 2017 19:36:20 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 17 Jan 2017 19:36:27 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Tue, 17 Jan 2017 19:36:27 GMT
ENV LANG=en_US.utf8
# Tue, 17 Jan 2017 19:36:28 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 17 Jan 2017 19:36:30 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 17 Jan 2017 19:36:30 GMT
ENV PG_MAJOR=9.6
# Tue, 17 Jan 2017 19:36:30 GMT
ENV PG_VERSION=9.6.1-2.pgdg80+1
# Tue, 17 Jan 2017 19:36:31 GMT
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main' $PG_MAJOR > /etc/apt/sources.list.d/pgdg.list
# Tue, 17 Jan 2017 19:37:02 GMT
RUN apt-get update 	&& apt-get install -y postgresql-common 	&& sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf 	&& apt-get install -y 		postgresql-$PG_MAJOR=$PG_VERSION 		postgresql-contrib-$PG_MAJOR=$PG_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 19:37:03 GMT
RUN mv -v /usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample /usr/share/postgresql/$PG_MAJOR/ 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Fri, 20 Jan 2017 22:06:36 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod g+s /var/run/postgresql
# Fri, 20 Jan 2017 22:06:36 GMT
ENV PATH=/usr/lib/postgresql/9.6/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 20 Jan 2017 22:06:37 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 20 Jan 2017 22:06:38 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 20 Jan 2017 22:06:38 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 20 Jan 2017 22:06:39 GMT
COPY file:8d267d76d9551f01f3b15b68c484da091c34fd675a9b6adc8c279d52364efdfc in / 
# Fri, 20 Jan 2017 22:06:40 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 20 Jan 2017 22:06:40 GMT
EXPOSE 5432/tcp
# Fri, 20 Jan 2017 22:06:41 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f08454c3c700a0100e8c3424e7048c4160e48c03bf045eada703f69fae65a3f2`  
		Last Modified: Wed, 18 Jan 2017 06:53:25 GMT  
		Size: 2.0 KB (2041 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4db038cdfe0347fab843472aa89d5b85a99a77dac608e5b91962eebcf6a8d1da`  
		Last Modified: Wed, 18 Jan 2017 06:53:23 GMT  
		Size: 1.2 MB (1216697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1d9ba315f03586d7698b3e6157539dc65c58c4af524a5570506d954eee51a49`  
		Last Modified: Wed, 18 Jan 2017 06:53:26 GMT  
		Size: 6.9 MB (6865805 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25e0ee93170ea48b465208dd9a5b66c43359df595268299d92caed4ed36f59be`  
		Last Modified: Wed, 18 Jan 2017 06:53:23 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f28084c3f5120489e6a0d65a6838996fd8ef9f688ad92024b2e01d8955273c5`  
		Last Modified: Wed, 18 Jan 2017 06:53:22 GMT  
		Size: 3.4 KB (3400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78c91f0aedcd497505c709b6bdaddf0f9f793dc77c9bbbaa8523794cdada545b`  
		Last Modified: Wed, 18 Jan 2017 06:57:55 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93ab52dbcbb871cf2b35c385bd2f17eb702e72653a9b9c692db1ca3c0613f826`  
		Last Modified: Wed, 18 Jan 2017 06:58:17 GMT  
		Size: 42.1 MB (42143440 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27ec75825613d9aac8c0713df7a0a73b5ff4f508313ec39fe6a6b35399cfd77e`  
		Last Modified: Wed, 18 Jan 2017 06:57:56 GMT  
		Size: 7.2 KB (7156 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28ef691a9920e2c53e433896317f52d682b16645aa9ba3df39d0f5e7d4775a48`  
		Last Modified: Fri, 20 Jan 2017 22:23:15 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f0dd20755c9fc0d0ffea23516f40b60613796495c438d30fc61bce14338e033`  
		Last Modified: Fri, 20 Jan 2017 22:23:15 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a4a824861f7154bc86e18f6ed800bb9689610dbdf3da9cf39ce14045af61529`  
		Last Modified: Fri, 20 Jan 2017 22:23:15 GMT  
		Size: 1.6 KB (1617 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.6.1-alpine`

```console
$ docker pull postgres@sha256:fa48df82694141793fb0cd52b9a93a3618ba03e5814e11dbf0dd43797f4d4cf7
```

-	Platforms:
	-	linux; amd64

### `postgres:9.6.1-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.4 MB (14365118 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a47bdf2113e9a02e55899a26adebe3f5c64a3bd5c6e7e8abec39f18237607cf8`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
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
# Wed, 04 Jan 2017 21:12:53 GMT
ENV PG_VERSION=9.6.1
# Wed, 04 Jan 2017 21:12:53 GMT
ENV PG_SHA256=e5101e0a49141fc12a7018c6dad594694d3a3325f5ab71e93e0e51bd94e51fcd
# Fri, 27 Jan 2017 23:35:34 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl 		util-linux-dev 		zlib-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& ./configure 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(getconf _NPROCESSORS_ONLN)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Fri, 27 Jan 2017 23:35:35 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Fri, 27 Jan 2017 23:35:37 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod g+s /var/run/postgresql
# Fri, 27 Jan 2017 23:35:37 GMT
ENV PATH=/usr/lib/postgresql/9.6/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 27 Jan 2017 23:35:38 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 27 Jan 2017 23:35:39 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 27 Jan 2017 23:35:39 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 27 Jan 2017 23:35:40 GMT
COPY file:f9a2410e9ac1ac1f8eaaa7097935e1bc01697a3aea28753ca0ff43bcb928e743 in / 
# Fri, 27 Jan 2017 23:35:41 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 27 Jan 2017 23:35:41 GMT
EXPOSE 5432/tcp
# Fri, 27 Jan 2017 23:35:42 GMT
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
	-	`sha256:ba55801edf3d9e64df4061dfaef7e6ec047a927b050b1a58a573a4bc8c31cd17`  
		Last Modified: Fri, 27 Jan 2017 23:45:05 GMT  
		Size: 12.5 MB (12453891 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f132014bbab8431b12b6f44259d9ba8e44df9aa5e78651ff17b18b9f80fccc62`  
		Last Modified: Fri, 27 Jan 2017 23:45:02 GMT  
		Size: 7.1 KB (7125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9775497ec4a591f6f581c28d783f37b3a7a01b7da9f9df1c6cae016767c0341f`  
		Last Modified: Fri, 27 Jan 2017 23:45:02 GMT  
		Size: 144.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:678be380896e6c0eb0153a57b0ae8467fcaca960873414763f548a8afedcb114`  
		Last Modified: Fri, 27 Jan 2017 23:45:01 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31e4998cc9ecf593079ca8a9c67f340e1bd0127bc7fc2d357252643e0fcfe9de`  
		Last Modified: Fri, 27 Jan 2017 23:45:01 GMT  
		Size: 1.6 KB (1618 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.6-alpine`

```console
$ docker pull postgres@sha256:fa48df82694141793fb0cd52b9a93a3618ba03e5814e11dbf0dd43797f4d4cf7
```

-	Platforms:
	-	linux; amd64

### `postgres:9.6-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.4 MB (14365118 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a47bdf2113e9a02e55899a26adebe3f5c64a3bd5c6e7e8abec39f18237607cf8`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
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
# Wed, 04 Jan 2017 21:12:53 GMT
ENV PG_VERSION=9.6.1
# Wed, 04 Jan 2017 21:12:53 GMT
ENV PG_SHA256=e5101e0a49141fc12a7018c6dad594694d3a3325f5ab71e93e0e51bd94e51fcd
# Fri, 27 Jan 2017 23:35:34 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl 		util-linux-dev 		zlib-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& ./configure 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(getconf _NPROCESSORS_ONLN)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Fri, 27 Jan 2017 23:35:35 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Fri, 27 Jan 2017 23:35:37 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod g+s /var/run/postgresql
# Fri, 27 Jan 2017 23:35:37 GMT
ENV PATH=/usr/lib/postgresql/9.6/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 27 Jan 2017 23:35:38 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 27 Jan 2017 23:35:39 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 27 Jan 2017 23:35:39 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 27 Jan 2017 23:35:40 GMT
COPY file:f9a2410e9ac1ac1f8eaaa7097935e1bc01697a3aea28753ca0ff43bcb928e743 in / 
# Fri, 27 Jan 2017 23:35:41 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 27 Jan 2017 23:35:41 GMT
EXPOSE 5432/tcp
# Fri, 27 Jan 2017 23:35:42 GMT
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
	-	`sha256:ba55801edf3d9e64df4061dfaef7e6ec047a927b050b1a58a573a4bc8c31cd17`  
		Last Modified: Fri, 27 Jan 2017 23:45:05 GMT  
		Size: 12.5 MB (12453891 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f132014bbab8431b12b6f44259d9ba8e44df9aa5e78651ff17b18b9f80fccc62`  
		Last Modified: Fri, 27 Jan 2017 23:45:02 GMT  
		Size: 7.1 KB (7125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9775497ec4a591f6f581c28d783f37b3a7a01b7da9f9df1c6cae016767c0341f`  
		Last Modified: Fri, 27 Jan 2017 23:45:02 GMT  
		Size: 144.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:678be380896e6c0eb0153a57b0ae8467fcaca960873414763f548a8afedcb114`  
		Last Modified: Fri, 27 Jan 2017 23:45:01 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31e4998cc9ecf593079ca8a9c67f340e1bd0127bc7fc2d357252643e0fcfe9de`  
		Last Modified: Fri, 27 Jan 2017 23:45:01 GMT  
		Size: 1.6 KB (1618 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9-alpine`

```console
$ docker pull postgres@sha256:fa48df82694141793fb0cd52b9a93a3618ba03e5814e11dbf0dd43797f4d4cf7
```

-	Platforms:
	-	linux; amd64

### `postgres:9-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.4 MB (14365118 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a47bdf2113e9a02e55899a26adebe3f5c64a3bd5c6e7e8abec39f18237607cf8`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
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
# Wed, 04 Jan 2017 21:12:53 GMT
ENV PG_VERSION=9.6.1
# Wed, 04 Jan 2017 21:12:53 GMT
ENV PG_SHA256=e5101e0a49141fc12a7018c6dad594694d3a3325f5ab71e93e0e51bd94e51fcd
# Fri, 27 Jan 2017 23:35:34 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl 		util-linux-dev 		zlib-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& ./configure 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(getconf _NPROCESSORS_ONLN)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Fri, 27 Jan 2017 23:35:35 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Fri, 27 Jan 2017 23:35:37 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod g+s /var/run/postgresql
# Fri, 27 Jan 2017 23:35:37 GMT
ENV PATH=/usr/lib/postgresql/9.6/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 27 Jan 2017 23:35:38 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 27 Jan 2017 23:35:39 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 27 Jan 2017 23:35:39 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 27 Jan 2017 23:35:40 GMT
COPY file:f9a2410e9ac1ac1f8eaaa7097935e1bc01697a3aea28753ca0ff43bcb928e743 in / 
# Fri, 27 Jan 2017 23:35:41 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 27 Jan 2017 23:35:41 GMT
EXPOSE 5432/tcp
# Fri, 27 Jan 2017 23:35:42 GMT
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
	-	`sha256:ba55801edf3d9e64df4061dfaef7e6ec047a927b050b1a58a573a4bc8c31cd17`  
		Last Modified: Fri, 27 Jan 2017 23:45:05 GMT  
		Size: 12.5 MB (12453891 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f132014bbab8431b12b6f44259d9ba8e44df9aa5e78651ff17b18b9f80fccc62`  
		Last Modified: Fri, 27 Jan 2017 23:45:02 GMT  
		Size: 7.1 KB (7125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9775497ec4a591f6f581c28d783f37b3a7a01b7da9f9df1c6cae016767c0341f`  
		Last Modified: Fri, 27 Jan 2017 23:45:02 GMT  
		Size: 144.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:678be380896e6c0eb0153a57b0ae8467fcaca960873414763f548a8afedcb114`  
		Last Modified: Fri, 27 Jan 2017 23:45:01 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31e4998cc9ecf593079ca8a9c67f340e1bd0127bc7fc2d357252643e0fcfe9de`  
		Last Modified: Fri, 27 Jan 2017 23:45:01 GMT  
		Size: 1.6 KB (1618 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:alpine`

```console
$ docker pull postgres@sha256:fa48df82694141793fb0cd52b9a93a3618ba03e5814e11dbf0dd43797f4d4cf7
```

-	Platforms:
	-	linux; amd64

### `postgres:alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.4 MB (14365118 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a47bdf2113e9a02e55899a26adebe3f5c64a3bd5c6e7e8abec39f18237607cf8`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
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
# Wed, 04 Jan 2017 21:12:53 GMT
ENV PG_VERSION=9.6.1
# Wed, 04 Jan 2017 21:12:53 GMT
ENV PG_SHA256=e5101e0a49141fc12a7018c6dad594694d3a3325f5ab71e93e0e51bd94e51fcd
# Fri, 27 Jan 2017 23:35:34 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl 		util-linux-dev 		zlib-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& ./configure 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(getconf _NPROCESSORS_ONLN)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Fri, 27 Jan 2017 23:35:35 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Fri, 27 Jan 2017 23:35:37 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod g+s /var/run/postgresql
# Fri, 27 Jan 2017 23:35:37 GMT
ENV PATH=/usr/lib/postgresql/9.6/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 27 Jan 2017 23:35:38 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 27 Jan 2017 23:35:39 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 27 Jan 2017 23:35:39 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 27 Jan 2017 23:35:40 GMT
COPY file:f9a2410e9ac1ac1f8eaaa7097935e1bc01697a3aea28753ca0ff43bcb928e743 in / 
# Fri, 27 Jan 2017 23:35:41 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 27 Jan 2017 23:35:41 GMT
EXPOSE 5432/tcp
# Fri, 27 Jan 2017 23:35:42 GMT
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
	-	`sha256:ba55801edf3d9e64df4061dfaef7e6ec047a927b050b1a58a573a4bc8c31cd17`  
		Last Modified: Fri, 27 Jan 2017 23:45:05 GMT  
		Size: 12.5 MB (12453891 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f132014bbab8431b12b6f44259d9ba8e44df9aa5e78651ff17b18b9f80fccc62`  
		Last Modified: Fri, 27 Jan 2017 23:45:02 GMT  
		Size: 7.1 KB (7125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9775497ec4a591f6f581c28d783f37b3a7a01b7da9f9df1c6cae016767c0341f`  
		Last Modified: Fri, 27 Jan 2017 23:45:02 GMT  
		Size: 144.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:678be380896e6c0eb0153a57b0ae8467fcaca960873414763f548a8afedcb114`  
		Last Modified: Fri, 27 Jan 2017 23:45:01 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31e4998cc9ecf593079ca8a9c67f340e1bd0127bc7fc2d357252643e0fcfe9de`  
		Last Modified: Fri, 27 Jan 2017 23:45:01 GMT  
		Size: 1.6 KB (1618 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.5.5`

```console
$ docker pull postgres@sha256:31ad07e210425064e1acaf8ccc48abe8868b1c249892e162586d46fe3be3d678
```

-	Platforms:
	-	linux; amd64

### `postgres:9.5.5` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **101.3 MB (101313103 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5390fd716d0a36386b8451b386cfaba057df3464493265a413a24ff12f1fdb38`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 19:36:05 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Tue, 17 Jan 2017 19:36:05 GMT
ENV GOSU_VERSION=1.7
# Tue, 17 Jan 2017 19:36:20 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 17 Jan 2017 19:36:27 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Tue, 17 Jan 2017 19:36:27 GMT
ENV LANG=en_US.utf8
# Tue, 17 Jan 2017 19:36:28 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 17 Jan 2017 19:36:30 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 17 Jan 2017 19:38:58 GMT
ENV PG_MAJOR=9.5
# Tue, 17 Jan 2017 19:38:58 GMT
ENV PG_VERSION=9.5.5-1.pgdg80+1
# Tue, 17 Jan 2017 19:38:59 GMT
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main' $PG_MAJOR > /etc/apt/sources.list.d/pgdg.list
# Tue, 17 Jan 2017 19:39:30 GMT
RUN apt-get update 	&& apt-get install -y postgresql-common 	&& sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf 	&& apt-get install -y 		postgresql-$PG_MAJOR=$PG_VERSION 		postgresql-contrib-$PG_MAJOR=$PG_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 19:39:31 GMT
RUN mv -v /usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample /usr/share/postgresql/$PG_MAJOR/ 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Fri, 20 Jan 2017 22:08:57 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod g+s /var/run/postgresql
# Fri, 20 Jan 2017 22:08:57 GMT
ENV PATH=/usr/lib/postgresql/9.5/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 20 Jan 2017 22:08:58 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 20 Jan 2017 22:08:59 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 20 Jan 2017 22:09:00 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 20 Jan 2017 22:09:00 GMT
COPY file:8d267d76d9551f01f3b15b68c484da091c34fd675a9b6adc8c279d52364efdfc in / 
# Fri, 20 Jan 2017 22:09:01 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 20 Jan 2017 22:09:01 GMT
EXPOSE 5432/tcp
# Fri, 20 Jan 2017 22:09:02 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f08454c3c700a0100e8c3424e7048c4160e48c03bf045eada703f69fae65a3f2`  
		Last Modified: Wed, 18 Jan 2017 06:53:25 GMT  
		Size: 2.0 KB (2041 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4db038cdfe0347fab843472aa89d5b85a99a77dac608e5b91962eebcf6a8d1da`  
		Last Modified: Wed, 18 Jan 2017 06:53:23 GMT  
		Size: 1.2 MB (1216697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1d9ba315f03586d7698b3e6157539dc65c58c4af524a5570506d954eee51a49`  
		Last Modified: Wed, 18 Jan 2017 06:53:26 GMT  
		Size: 6.9 MB (6865805 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25e0ee93170ea48b465208dd9a5b66c43359df595268299d92caed4ed36f59be`  
		Last Modified: Wed, 18 Jan 2017 06:53:23 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f28084c3f5120489e6a0d65a6838996fd8ef9f688ad92024b2e01d8955273c5`  
		Last Modified: Wed, 18 Jan 2017 06:53:22 GMT  
		Size: 3.4 KB (3400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f8bb4f2cfddb8b0dadf938083a33318f05907815b0306d8aa74c1e691c53c5f`  
		Last Modified: Wed, 18 Jan 2017 06:56:42 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da7bb946515a558ee5eb2fa3a61aed68ac35237a23c5adcf6889a92747a9425f`  
		Last Modified: Wed, 18 Jan 2017 06:57:11 GMT  
		Size: 41.9 MB (41854841 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce0628d3a405469859f31f813ad683901d0e6d386630404df5a24942c472b497`  
		Last Modified: Wed, 18 Jan 2017 06:56:42 GMT  
		Size: 6.9 KB (6858 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f764065b6375cefe1d013c1e57d8237153635a6a8297d1754f5bc90d0ca6717b`  
		Last Modified: Fri, 20 Jan 2017 22:26:28 GMT  
		Size: 135.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6aae68aa32af1048ba7dd549781ccd0cd9313e29fe97e4820c69903d10634957`  
		Last Modified: Fri, 20 Jan 2017 22:26:30 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f4f4b908d6b3d320866335fa0c5fb9b6187e5e0c3629cf3b3112f841bb0ed88`  
		Last Modified: Fri, 20 Jan 2017 22:26:29 GMT  
		Size: 1.6 KB (1616 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.5`

```console
$ docker pull postgres@sha256:31ad07e210425064e1acaf8ccc48abe8868b1c249892e162586d46fe3be3d678
```

-	Platforms:
	-	linux; amd64

### `postgres:9.5` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **101.3 MB (101313103 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5390fd716d0a36386b8451b386cfaba057df3464493265a413a24ff12f1fdb38`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 19:36:05 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Tue, 17 Jan 2017 19:36:05 GMT
ENV GOSU_VERSION=1.7
# Tue, 17 Jan 2017 19:36:20 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 17 Jan 2017 19:36:27 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Tue, 17 Jan 2017 19:36:27 GMT
ENV LANG=en_US.utf8
# Tue, 17 Jan 2017 19:36:28 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 17 Jan 2017 19:36:30 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 17 Jan 2017 19:38:58 GMT
ENV PG_MAJOR=9.5
# Tue, 17 Jan 2017 19:38:58 GMT
ENV PG_VERSION=9.5.5-1.pgdg80+1
# Tue, 17 Jan 2017 19:38:59 GMT
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main' $PG_MAJOR > /etc/apt/sources.list.d/pgdg.list
# Tue, 17 Jan 2017 19:39:30 GMT
RUN apt-get update 	&& apt-get install -y postgresql-common 	&& sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf 	&& apt-get install -y 		postgresql-$PG_MAJOR=$PG_VERSION 		postgresql-contrib-$PG_MAJOR=$PG_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 19:39:31 GMT
RUN mv -v /usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample /usr/share/postgresql/$PG_MAJOR/ 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Fri, 20 Jan 2017 22:08:57 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod g+s /var/run/postgresql
# Fri, 20 Jan 2017 22:08:57 GMT
ENV PATH=/usr/lib/postgresql/9.5/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 20 Jan 2017 22:08:58 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 20 Jan 2017 22:08:59 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 20 Jan 2017 22:09:00 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 20 Jan 2017 22:09:00 GMT
COPY file:8d267d76d9551f01f3b15b68c484da091c34fd675a9b6adc8c279d52364efdfc in / 
# Fri, 20 Jan 2017 22:09:01 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 20 Jan 2017 22:09:01 GMT
EXPOSE 5432/tcp
# Fri, 20 Jan 2017 22:09:02 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f08454c3c700a0100e8c3424e7048c4160e48c03bf045eada703f69fae65a3f2`  
		Last Modified: Wed, 18 Jan 2017 06:53:25 GMT  
		Size: 2.0 KB (2041 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4db038cdfe0347fab843472aa89d5b85a99a77dac608e5b91962eebcf6a8d1da`  
		Last Modified: Wed, 18 Jan 2017 06:53:23 GMT  
		Size: 1.2 MB (1216697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1d9ba315f03586d7698b3e6157539dc65c58c4af524a5570506d954eee51a49`  
		Last Modified: Wed, 18 Jan 2017 06:53:26 GMT  
		Size: 6.9 MB (6865805 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25e0ee93170ea48b465208dd9a5b66c43359df595268299d92caed4ed36f59be`  
		Last Modified: Wed, 18 Jan 2017 06:53:23 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f28084c3f5120489e6a0d65a6838996fd8ef9f688ad92024b2e01d8955273c5`  
		Last Modified: Wed, 18 Jan 2017 06:53:22 GMT  
		Size: 3.4 KB (3400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f8bb4f2cfddb8b0dadf938083a33318f05907815b0306d8aa74c1e691c53c5f`  
		Last Modified: Wed, 18 Jan 2017 06:56:42 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da7bb946515a558ee5eb2fa3a61aed68ac35237a23c5adcf6889a92747a9425f`  
		Last Modified: Wed, 18 Jan 2017 06:57:11 GMT  
		Size: 41.9 MB (41854841 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce0628d3a405469859f31f813ad683901d0e6d386630404df5a24942c472b497`  
		Last Modified: Wed, 18 Jan 2017 06:56:42 GMT  
		Size: 6.9 KB (6858 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f764065b6375cefe1d013c1e57d8237153635a6a8297d1754f5bc90d0ca6717b`  
		Last Modified: Fri, 20 Jan 2017 22:26:28 GMT  
		Size: 135.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6aae68aa32af1048ba7dd549781ccd0cd9313e29fe97e4820c69903d10634957`  
		Last Modified: Fri, 20 Jan 2017 22:26:30 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f4f4b908d6b3d320866335fa0c5fb9b6187e5e0c3629cf3b3112f841bb0ed88`  
		Last Modified: Fri, 20 Jan 2017 22:26:29 GMT  
		Size: 1.6 KB (1616 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.5.5-alpine`

```console
$ docker pull postgres@sha256:ff6b73f647ba71bb949670459a3cffddb5c4b32180bc90398a479ebe4b102387
```

-	Platforms:
	-	linux; amd64

### `postgres:9.5.5-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.1 MB (14089978 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9702f3fa788b7b7cb6a72cbe4a5abd5333b72521babeedfa2b6cee4335e297a4`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
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
# Wed, 04 Jan 2017 21:15:10 GMT
ENV PG_VERSION=9.5.5
# Wed, 04 Jan 2017 21:15:10 GMT
ENV PG_SHA256=02c65290be74de6604c3fed87c9fd3e6b32e949f0ab8105a75bd7ed5aa71f394
# Fri, 27 Jan 2017 23:37:43 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl 		util-linux-dev 		zlib-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& ./configure 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(getconf _NPROCESSORS_ONLN)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Fri, 27 Jan 2017 23:37:44 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Fri, 27 Jan 2017 23:37:45 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod g+s /var/run/postgresql
# Fri, 27 Jan 2017 23:37:45 GMT
ENV PATH=/usr/lib/postgresql/9.5/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 27 Jan 2017 23:37:46 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 27 Jan 2017 23:37:47 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 27 Jan 2017 23:37:48 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 27 Jan 2017 23:37:49 GMT
COPY file:f9a2410e9ac1ac1f8eaaa7097935e1bc01697a3aea28753ca0ff43bcb928e743 in / 
# Fri, 27 Jan 2017 23:37:49 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 27 Jan 2017 23:37:50 GMT
EXPOSE 5432/tcp
# Fri, 27 Jan 2017 23:37:50 GMT
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
	-	`sha256:02d55c2da224852e305bed3397cbb2d1e813cde778df17820923b304e844721a`  
		Last Modified: Fri, 27 Jan 2017 23:46:43 GMT  
		Size: 12.2 MB (12179048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c70e3ae27ac1f35dbf912b8928b231edd71a0dfa13c6a622e51cddcfb403d996`  
		Last Modified: Fri, 27 Jan 2017 23:46:39 GMT  
		Size: 6.8 KB (6827 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a30ebf836e76b83839375bb44a629fa9cf98b8f84b1839a225d1db7d829d7932`  
		Last Modified: Fri, 27 Jan 2017 23:46:38 GMT  
		Size: 144.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4216d4893bb3a2725171ca2d05d76014d990e7d91a7161347e20faaad9b6901`  
		Last Modified: Fri, 27 Jan 2017 23:46:38 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a433b7c4e0312f6c493c79dee16fc4c15dddbb2bdc06297099231e97653110aa`  
		Last Modified: Fri, 27 Jan 2017 23:46:38 GMT  
		Size: 1.6 KB (1618 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.5-alpine`

```console
$ docker pull postgres@sha256:ff6b73f647ba71bb949670459a3cffddb5c4b32180bc90398a479ebe4b102387
```

-	Platforms:
	-	linux; amd64

### `postgres:9.5-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.1 MB (14089978 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9702f3fa788b7b7cb6a72cbe4a5abd5333b72521babeedfa2b6cee4335e297a4`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
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
# Wed, 04 Jan 2017 21:15:10 GMT
ENV PG_VERSION=9.5.5
# Wed, 04 Jan 2017 21:15:10 GMT
ENV PG_SHA256=02c65290be74de6604c3fed87c9fd3e6b32e949f0ab8105a75bd7ed5aa71f394
# Fri, 27 Jan 2017 23:37:43 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl 		util-linux-dev 		zlib-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& ./configure 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(getconf _NPROCESSORS_ONLN)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Fri, 27 Jan 2017 23:37:44 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Fri, 27 Jan 2017 23:37:45 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod g+s /var/run/postgresql
# Fri, 27 Jan 2017 23:37:45 GMT
ENV PATH=/usr/lib/postgresql/9.5/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 27 Jan 2017 23:37:46 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 27 Jan 2017 23:37:47 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 27 Jan 2017 23:37:48 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 27 Jan 2017 23:37:49 GMT
COPY file:f9a2410e9ac1ac1f8eaaa7097935e1bc01697a3aea28753ca0ff43bcb928e743 in / 
# Fri, 27 Jan 2017 23:37:49 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 27 Jan 2017 23:37:50 GMT
EXPOSE 5432/tcp
# Fri, 27 Jan 2017 23:37:50 GMT
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
	-	`sha256:02d55c2da224852e305bed3397cbb2d1e813cde778df17820923b304e844721a`  
		Last Modified: Fri, 27 Jan 2017 23:46:43 GMT  
		Size: 12.2 MB (12179048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c70e3ae27ac1f35dbf912b8928b231edd71a0dfa13c6a622e51cddcfb403d996`  
		Last Modified: Fri, 27 Jan 2017 23:46:39 GMT  
		Size: 6.8 KB (6827 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a30ebf836e76b83839375bb44a629fa9cf98b8f84b1839a225d1db7d829d7932`  
		Last Modified: Fri, 27 Jan 2017 23:46:38 GMT  
		Size: 144.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4216d4893bb3a2725171ca2d05d76014d990e7d91a7161347e20faaad9b6901`  
		Last Modified: Fri, 27 Jan 2017 23:46:38 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a433b7c4e0312f6c493c79dee16fc4c15dddbb2bdc06297099231e97653110aa`  
		Last Modified: Fri, 27 Jan 2017 23:46:38 GMT  
		Size: 1.6 KB (1618 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.4.10`

```console
$ docker pull postgres@sha256:0dfca35b7cc89b3faf1a4d2df34aa59ede4f5eeceaecbb82e165d686324f230d
```

-	Platforms:
	-	linux; amd64

### `postgres:9.4.10` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **100.9 MB (100910469 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ba17e1dd6f5f70b07053c6b8fb56bf112f8a3b266379b3641e6fa98234baa0fa`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 19:36:05 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Tue, 17 Jan 2017 19:36:05 GMT
ENV GOSU_VERSION=1.7
# Tue, 17 Jan 2017 19:36:20 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 17 Jan 2017 19:36:27 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Tue, 17 Jan 2017 19:36:27 GMT
ENV LANG=en_US.utf8
# Tue, 17 Jan 2017 19:36:28 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 17 Jan 2017 19:36:30 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 17 Jan 2017 19:38:20 GMT
ENV PG_MAJOR=9.4
# Tue, 17 Jan 2017 19:38:20 GMT
ENV PG_VERSION=9.4.10-1.pgdg80+1
# Tue, 17 Jan 2017 19:38:21 GMT
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main' $PG_MAJOR > /etc/apt/sources.list.d/pgdg.list
# Tue, 17 Jan 2017 19:38:53 GMT
RUN apt-get update 	&& apt-get install -y postgresql-common 	&& sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf 	&& apt-get install -y 		postgresql-$PG_MAJOR=$PG_VERSION 		postgresql-contrib-$PG_MAJOR=$PG_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 19:38:54 GMT
RUN mv -v /usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample /usr/share/postgresql/$PG_MAJOR/ 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Fri, 20 Jan 2017 22:12:22 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod g+s /var/run/postgresql
# Fri, 20 Jan 2017 22:12:34 GMT
ENV PATH=/usr/lib/postgresql/9.4/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 20 Jan 2017 22:12:35 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 20 Jan 2017 22:12:36 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 20 Jan 2017 22:12:48 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 20 Jan 2017 22:12:49 GMT
COPY file:8d267d76d9551f01f3b15b68c484da091c34fd675a9b6adc8c279d52364efdfc in / 
# Fri, 20 Jan 2017 22:12:49 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 20 Jan 2017 22:12:50 GMT
EXPOSE 5432/tcp
# Fri, 20 Jan 2017 22:12:50 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f08454c3c700a0100e8c3424e7048c4160e48c03bf045eada703f69fae65a3f2`  
		Last Modified: Wed, 18 Jan 2017 06:53:25 GMT  
		Size: 2.0 KB (2041 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4db038cdfe0347fab843472aa89d5b85a99a77dac608e5b91962eebcf6a8d1da`  
		Last Modified: Wed, 18 Jan 2017 06:53:23 GMT  
		Size: 1.2 MB (1216697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1d9ba315f03586d7698b3e6157539dc65c58c4af524a5570506d954eee51a49`  
		Last Modified: Wed, 18 Jan 2017 06:53:26 GMT  
		Size: 6.9 MB (6865805 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25e0ee93170ea48b465208dd9a5b66c43359df595268299d92caed4ed36f59be`  
		Last Modified: Wed, 18 Jan 2017 06:53:23 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f28084c3f5120489e6a0d65a6838996fd8ef9f688ad92024b2e01d8955273c5`  
		Last Modified: Wed, 18 Jan 2017 06:53:22 GMT  
		Size: 3.4 KB (3400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49188203ed556f6dd25ddd1fb1e3ed9cd0cf67920b37a6e3ac05cde3f7b50f13`  
		Last Modified: Wed, 18 Jan 2017 06:55:32 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5da302d69bca6f45ce8e2cbb3e0a30955a34f4822340e3d583554aee5df828a7`  
		Last Modified: Wed, 18 Jan 2017 06:55:53 GMT  
		Size: 41.5 MB (41452354 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f23bf261ff325c62e411650e0b1105099ebd12103b51652d9a14d53cefda12a`  
		Last Modified: Wed, 18 Jan 2017 06:55:32 GMT  
		Size: 6.7 KB (6709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9aa15144400e7a20caa5299492a4b9e7e78e3937aebfecd1a6a77221db7dd045`  
		Last Modified: Fri, 20 Jan 2017 22:28:06 GMT  
		Size: 135.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71acd5053051195ac773598639334072ace5a8e78fb6abe9dea7acaa87187c92`  
		Last Modified: Fri, 20 Jan 2017 22:28:06 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:daa2fc9488d439b139e5cf276a554d6554e235e37f9992f159d2c267ecdf2440`  
		Last Modified: Fri, 20 Jan 2017 22:28:06 GMT  
		Size: 1.6 KB (1616 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.4`

```console
$ docker pull postgres@sha256:0dfca35b7cc89b3faf1a4d2df34aa59ede4f5eeceaecbb82e165d686324f230d
```

-	Platforms:
	-	linux; amd64

### `postgres:9.4` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **100.9 MB (100910469 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ba17e1dd6f5f70b07053c6b8fb56bf112f8a3b266379b3641e6fa98234baa0fa`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 19:36:05 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Tue, 17 Jan 2017 19:36:05 GMT
ENV GOSU_VERSION=1.7
# Tue, 17 Jan 2017 19:36:20 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 17 Jan 2017 19:36:27 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Tue, 17 Jan 2017 19:36:27 GMT
ENV LANG=en_US.utf8
# Tue, 17 Jan 2017 19:36:28 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 17 Jan 2017 19:36:30 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 17 Jan 2017 19:38:20 GMT
ENV PG_MAJOR=9.4
# Tue, 17 Jan 2017 19:38:20 GMT
ENV PG_VERSION=9.4.10-1.pgdg80+1
# Tue, 17 Jan 2017 19:38:21 GMT
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main' $PG_MAJOR > /etc/apt/sources.list.d/pgdg.list
# Tue, 17 Jan 2017 19:38:53 GMT
RUN apt-get update 	&& apt-get install -y postgresql-common 	&& sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf 	&& apt-get install -y 		postgresql-$PG_MAJOR=$PG_VERSION 		postgresql-contrib-$PG_MAJOR=$PG_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 19:38:54 GMT
RUN mv -v /usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample /usr/share/postgresql/$PG_MAJOR/ 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Fri, 20 Jan 2017 22:12:22 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod g+s /var/run/postgresql
# Fri, 20 Jan 2017 22:12:34 GMT
ENV PATH=/usr/lib/postgresql/9.4/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 20 Jan 2017 22:12:35 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 20 Jan 2017 22:12:36 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 20 Jan 2017 22:12:48 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 20 Jan 2017 22:12:49 GMT
COPY file:8d267d76d9551f01f3b15b68c484da091c34fd675a9b6adc8c279d52364efdfc in / 
# Fri, 20 Jan 2017 22:12:49 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 20 Jan 2017 22:12:50 GMT
EXPOSE 5432/tcp
# Fri, 20 Jan 2017 22:12:50 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f08454c3c700a0100e8c3424e7048c4160e48c03bf045eada703f69fae65a3f2`  
		Last Modified: Wed, 18 Jan 2017 06:53:25 GMT  
		Size: 2.0 KB (2041 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4db038cdfe0347fab843472aa89d5b85a99a77dac608e5b91962eebcf6a8d1da`  
		Last Modified: Wed, 18 Jan 2017 06:53:23 GMT  
		Size: 1.2 MB (1216697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1d9ba315f03586d7698b3e6157539dc65c58c4af524a5570506d954eee51a49`  
		Last Modified: Wed, 18 Jan 2017 06:53:26 GMT  
		Size: 6.9 MB (6865805 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25e0ee93170ea48b465208dd9a5b66c43359df595268299d92caed4ed36f59be`  
		Last Modified: Wed, 18 Jan 2017 06:53:23 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f28084c3f5120489e6a0d65a6838996fd8ef9f688ad92024b2e01d8955273c5`  
		Last Modified: Wed, 18 Jan 2017 06:53:22 GMT  
		Size: 3.4 KB (3400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49188203ed556f6dd25ddd1fb1e3ed9cd0cf67920b37a6e3ac05cde3f7b50f13`  
		Last Modified: Wed, 18 Jan 2017 06:55:32 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5da302d69bca6f45ce8e2cbb3e0a30955a34f4822340e3d583554aee5df828a7`  
		Last Modified: Wed, 18 Jan 2017 06:55:53 GMT  
		Size: 41.5 MB (41452354 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f23bf261ff325c62e411650e0b1105099ebd12103b51652d9a14d53cefda12a`  
		Last Modified: Wed, 18 Jan 2017 06:55:32 GMT  
		Size: 6.7 KB (6709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9aa15144400e7a20caa5299492a4b9e7e78e3937aebfecd1a6a77221db7dd045`  
		Last Modified: Fri, 20 Jan 2017 22:28:06 GMT  
		Size: 135.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71acd5053051195ac773598639334072ace5a8e78fb6abe9dea7acaa87187c92`  
		Last Modified: Fri, 20 Jan 2017 22:28:06 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:daa2fc9488d439b139e5cf276a554d6554e235e37f9992f159d2c267ecdf2440`  
		Last Modified: Fri, 20 Jan 2017 22:28:06 GMT  
		Size: 1.6 KB (1616 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.4.10-alpine`

```console
$ docker pull postgres@sha256:25620b6565182d95dee9ab09c9e60d8aa277af5005901d7d7a5648d97f8170af
```

-	Platforms:
	-	linux; amd64

### `postgres:9.4.10-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.9 MB (13874173 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:511eb24be1c91ffe323ce9dfe8fcad5c25ee3ce2e3d13fc705d878c7dbde0b15`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
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
# Wed, 04 Jan 2017 21:17:17 GMT
ENV PG_VERSION=9.4.10
# Wed, 04 Jan 2017 21:17:17 GMT
ENV PG_SHA256=7061678bed1981c681ce54c76b98b6ec17743f090a9775104a45e7e1a8826ecf
# Fri, 27 Jan 2017 23:39:41 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl 		util-linux-dev 		zlib-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& ./configure 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(getconf _NPROCESSORS_ONLN)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Fri, 27 Jan 2017 23:39:43 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Fri, 27 Jan 2017 23:39:44 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod g+s /var/run/postgresql
# Fri, 27 Jan 2017 23:39:44 GMT
ENV PATH=/usr/lib/postgresql/9.4/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 27 Jan 2017 23:39:45 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 27 Jan 2017 23:39:46 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 27 Jan 2017 23:39:46 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 27 Jan 2017 23:39:47 GMT
COPY file:f9a2410e9ac1ac1f8eaaa7097935e1bc01697a3aea28753ca0ff43bcb928e743 in / 
# Fri, 27 Jan 2017 23:39:48 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 27 Jan 2017 23:39:48 GMT
EXPOSE 5432/tcp
# Fri, 27 Jan 2017 23:39:49 GMT
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
	-	`sha256:321042f4ba43d57802dd9e52181aafec974f4cae97a8a1eaaed1e19bf0178dea`  
		Last Modified: Fri, 27 Jan 2017 23:47:53 GMT  
		Size: 12.0 MB (11963389 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e57a83612bdc2011047673cd8704ca1bd982f0ecc3d085e215f31e79257f310f`  
		Last Modified: Fri, 27 Jan 2017 23:47:48 GMT  
		Size: 6.7 KB (6680 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d288597ea1e32b494a084459b2fbd2a3adeb8fbe72e2bec5a9c42029294df45`  
		Last Modified: Fri, 27 Jan 2017 23:47:48 GMT  
		Size: 145.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a59b1ef7b866df4d5cf7ef5f2bcb74685077857b2224a4810f8b0af0fb3be661`  
		Last Modified: Fri, 27 Jan 2017 23:47:48 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e86b65a4c20733ee6b5fe9db0a3990f80f82e2eb5c98e3be010b1663b5d3a5f0`  
		Last Modified: Fri, 27 Jan 2017 23:47:48 GMT  
		Size: 1.6 KB (1618 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.4-alpine`

```console
$ docker pull postgres@sha256:25620b6565182d95dee9ab09c9e60d8aa277af5005901d7d7a5648d97f8170af
```

-	Platforms:
	-	linux; amd64

### `postgres:9.4-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.9 MB (13874173 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:511eb24be1c91ffe323ce9dfe8fcad5c25ee3ce2e3d13fc705d878c7dbde0b15`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
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
# Wed, 04 Jan 2017 21:17:17 GMT
ENV PG_VERSION=9.4.10
# Wed, 04 Jan 2017 21:17:17 GMT
ENV PG_SHA256=7061678bed1981c681ce54c76b98b6ec17743f090a9775104a45e7e1a8826ecf
# Fri, 27 Jan 2017 23:39:41 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl 		util-linux-dev 		zlib-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& ./configure 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(getconf _NPROCESSORS_ONLN)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Fri, 27 Jan 2017 23:39:43 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Fri, 27 Jan 2017 23:39:44 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod g+s /var/run/postgresql
# Fri, 27 Jan 2017 23:39:44 GMT
ENV PATH=/usr/lib/postgresql/9.4/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 27 Jan 2017 23:39:45 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 27 Jan 2017 23:39:46 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 27 Jan 2017 23:39:46 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 27 Jan 2017 23:39:47 GMT
COPY file:f9a2410e9ac1ac1f8eaaa7097935e1bc01697a3aea28753ca0ff43bcb928e743 in / 
# Fri, 27 Jan 2017 23:39:48 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 27 Jan 2017 23:39:48 GMT
EXPOSE 5432/tcp
# Fri, 27 Jan 2017 23:39:49 GMT
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
	-	`sha256:321042f4ba43d57802dd9e52181aafec974f4cae97a8a1eaaed1e19bf0178dea`  
		Last Modified: Fri, 27 Jan 2017 23:47:53 GMT  
		Size: 12.0 MB (11963389 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e57a83612bdc2011047673cd8704ca1bd982f0ecc3d085e215f31e79257f310f`  
		Last Modified: Fri, 27 Jan 2017 23:47:48 GMT  
		Size: 6.7 KB (6680 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d288597ea1e32b494a084459b2fbd2a3adeb8fbe72e2bec5a9c42029294df45`  
		Last Modified: Fri, 27 Jan 2017 23:47:48 GMT  
		Size: 145.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a59b1ef7b866df4d5cf7ef5f2bcb74685077857b2224a4810f8b0af0fb3be661`  
		Last Modified: Fri, 27 Jan 2017 23:47:48 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e86b65a4c20733ee6b5fe9db0a3990f80f82e2eb5c98e3be010b1663b5d3a5f0`  
		Last Modified: Fri, 27 Jan 2017 23:47:48 GMT  
		Size: 1.6 KB (1618 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.3.15`

```console
$ docker pull postgres@sha256:be49c63a358491ef40d09e684f92d65a102eebd1dc403be9bf4367ff38014d57
```

-	Platforms:
	-	linux; amd64

### `postgres:9.3.15` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **100.5 MB (100548312 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bc568efbef58debd743f33227a3bf643e0e25aacbea4a992013fd1471c8319ed`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 19:36:05 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Tue, 17 Jan 2017 19:36:05 GMT
ENV GOSU_VERSION=1.7
# Tue, 17 Jan 2017 19:36:20 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 17 Jan 2017 19:36:27 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Tue, 17 Jan 2017 19:36:27 GMT
ENV LANG=en_US.utf8
# Tue, 17 Jan 2017 19:36:28 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 17 Jan 2017 19:36:30 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 17 Jan 2017 19:37:44 GMT
ENV PG_MAJOR=9.3
# Tue, 17 Jan 2017 19:37:44 GMT
ENV PG_VERSION=9.3.15-1.pgdg80+1
# Tue, 17 Jan 2017 19:37:45 GMT
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main' $PG_MAJOR > /etc/apt/sources.list.d/pgdg.list
# Tue, 17 Jan 2017 19:38:15 GMT
RUN apt-get update 	&& apt-get install -y postgresql-common 	&& sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf 	&& apt-get install -y 		postgresql-$PG_MAJOR=$PG_VERSION 		postgresql-contrib-$PG_MAJOR=$PG_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 19:38:16 GMT
RUN mv -v /usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample /usr/share/postgresql/$PG_MAJOR/ 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Fri, 20 Jan 2017 22:16:27 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod g+s /var/run/postgresql
# Fri, 20 Jan 2017 22:16:40 GMT
ENV PATH=/usr/lib/postgresql/9.3/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 20 Jan 2017 22:16:40 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 20 Jan 2017 22:16:41 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 20 Jan 2017 22:16:42 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 20 Jan 2017 22:16:55 GMT
COPY file:8d267d76d9551f01f3b15b68c484da091c34fd675a9b6adc8c279d52364efdfc in / 
# Fri, 20 Jan 2017 22:16:55 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 20 Jan 2017 22:16:56 GMT
EXPOSE 5432/tcp
# Fri, 20 Jan 2017 22:16:56 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f08454c3c700a0100e8c3424e7048c4160e48c03bf045eada703f69fae65a3f2`  
		Last Modified: Wed, 18 Jan 2017 06:53:25 GMT  
		Size: 2.0 KB (2041 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4db038cdfe0347fab843472aa89d5b85a99a77dac608e5b91962eebcf6a8d1da`  
		Last Modified: Wed, 18 Jan 2017 06:53:23 GMT  
		Size: 1.2 MB (1216697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1d9ba315f03586d7698b3e6157539dc65c58c4af524a5570506d954eee51a49`  
		Last Modified: Wed, 18 Jan 2017 06:53:26 GMT  
		Size: 6.9 MB (6865805 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25e0ee93170ea48b465208dd9a5b66c43359df595268299d92caed4ed36f59be`  
		Last Modified: Wed, 18 Jan 2017 06:53:23 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f28084c3f5120489e6a0d65a6838996fd8ef9f688ad92024b2e01d8955273c5`  
		Last Modified: Wed, 18 Jan 2017 06:53:22 GMT  
		Size: 3.4 KB (3400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5af0cfb2ada34fc08f205cbf8686700a2c8e21605d9a1cab8b33b9da0c36b30`  
		Last Modified: Wed, 18 Jan 2017 06:54:30 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bffddd6d811c069a9de87c621edf904a107df15ba5ebc0dde3eaa28006cb8f08`  
		Last Modified: Wed, 18 Jan 2017 06:54:47 GMT  
		Size: 41.1 MB (41090380 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4a40b65613dc1d8c9e4e1ec6f3df0874ee3132caa80e581074da471d14feb98`  
		Last Modified: Wed, 18 Jan 2017 06:54:30 GMT  
		Size: 6.5 KB (6526 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0642e115cfca5d1bf29f63abe34451a7916a9ca1b218d0bb301eb291b804fb2a`  
		Last Modified: Fri, 20 Jan 2017 22:29:43 GMT  
		Size: 136.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8014451bb4aee303607f4dbfcf311867281d44d7a97e769bd53e6079f68d3233`  
		Last Modified: Fri, 20 Jan 2017 22:29:44 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51160ab3229673c2fa30c7e753d10e8f63260b29bba4ac7072094236688d5ad4`  
		Last Modified: Fri, 20 Jan 2017 22:29:43 GMT  
		Size: 1.6 KB (1616 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.3`

```console
$ docker pull postgres@sha256:be49c63a358491ef40d09e684f92d65a102eebd1dc403be9bf4367ff38014d57
```

-	Platforms:
	-	linux; amd64

### `postgres:9.3` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **100.5 MB (100548312 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bc568efbef58debd743f33227a3bf643e0e25aacbea4a992013fd1471c8319ed`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 19:36:05 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Tue, 17 Jan 2017 19:36:05 GMT
ENV GOSU_VERSION=1.7
# Tue, 17 Jan 2017 19:36:20 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 17 Jan 2017 19:36:27 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Tue, 17 Jan 2017 19:36:27 GMT
ENV LANG=en_US.utf8
# Tue, 17 Jan 2017 19:36:28 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 17 Jan 2017 19:36:30 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 17 Jan 2017 19:37:44 GMT
ENV PG_MAJOR=9.3
# Tue, 17 Jan 2017 19:37:44 GMT
ENV PG_VERSION=9.3.15-1.pgdg80+1
# Tue, 17 Jan 2017 19:37:45 GMT
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main' $PG_MAJOR > /etc/apt/sources.list.d/pgdg.list
# Tue, 17 Jan 2017 19:38:15 GMT
RUN apt-get update 	&& apt-get install -y postgresql-common 	&& sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf 	&& apt-get install -y 		postgresql-$PG_MAJOR=$PG_VERSION 		postgresql-contrib-$PG_MAJOR=$PG_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 19:38:16 GMT
RUN mv -v /usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample /usr/share/postgresql/$PG_MAJOR/ 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Fri, 20 Jan 2017 22:16:27 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod g+s /var/run/postgresql
# Fri, 20 Jan 2017 22:16:40 GMT
ENV PATH=/usr/lib/postgresql/9.3/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 20 Jan 2017 22:16:40 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 20 Jan 2017 22:16:41 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 20 Jan 2017 22:16:42 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 20 Jan 2017 22:16:55 GMT
COPY file:8d267d76d9551f01f3b15b68c484da091c34fd675a9b6adc8c279d52364efdfc in / 
# Fri, 20 Jan 2017 22:16:55 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 20 Jan 2017 22:16:56 GMT
EXPOSE 5432/tcp
# Fri, 20 Jan 2017 22:16:56 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f08454c3c700a0100e8c3424e7048c4160e48c03bf045eada703f69fae65a3f2`  
		Last Modified: Wed, 18 Jan 2017 06:53:25 GMT  
		Size: 2.0 KB (2041 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4db038cdfe0347fab843472aa89d5b85a99a77dac608e5b91962eebcf6a8d1da`  
		Last Modified: Wed, 18 Jan 2017 06:53:23 GMT  
		Size: 1.2 MB (1216697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1d9ba315f03586d7698b3e6157539dc65c58c4af524a5570506d954eee51a49`  
		Last Modified: Wed, 18 Jan 2017 06:53:26 GMT  
		Size: 6.9 MB (6865805 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25e0ee93170ea48b465208dd9a5b66c43359df595268299d92caed4ed36f59be`  
		Last Modified: Wed, 18 Jan 2017 06:53:23 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f28084c3f5120489e6a0d65a6838996fd8ef9f688ad92024b2e01d8955273c5`  
		Last Modified: Wed, 18 Jan 2017 06:53:22 GMT  
		Size: 3.4 KB (3400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5af0cfb2ada34fc08f205cbf8686700a2c8e21605d9a1cab8b33b9da0c36b30`  
		Last Modified: Wed, 18 Jan 2017 06:54:30 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bffddd6d811c069a9de87c621edf904a107df15ba5ebc0dde3eaa28006cb8f08`  
		Last Modified: Wed, 18 Jan 2017 06:54:47 GMT  
		Size: 41.1 MB (41090380 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4a40b65613dc1d8c9e4e1ec6f3df0874ee3132caa80e581074da471d14feb98`  
		Last Modified: Wed, 18 Jan 2017 06:54:30 GMT  
		Size: 6.5 KB (6526 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0642e115cfca5d1bf29f63abe34451a7916a9ca1b218d0bb301eb291b804fb2a`  
		Last Modified: Fri, 20 Jan 2017 22:29:43 GMT  
		Size: 136.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8014451bb4aee303607f4dbfcf311867281d44d7a97e769bd53e6079f68d3233`  
		Last Modified: Fri, 20 Jan 2017 22:29:44 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51160ab3229673c2fa30c7e753d10e8f63260b29bba4ac7072094236688d5ad4`  
		Last Modified: Fri, 20 Jan 2017 22:29:43 GMT  
		Size: 1.6 KB (1616 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.3.15-alpine`

```console
$ docker pull postgres@sha256:21a4ef830e308c2139add3f1235d9c0d8c04e8ab5762a3baab7e6aeae62b8401
```

-	Platforms:
	-	linux; amd64

### `postgres:9.3.15-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.6 MB (13561971 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7e449ff8645264203d7573880d244a959a59249107408a8a94e732ce8bb94e72`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
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
# Wed, 04 Jan 2017 21:19:18 GMT
ENV PG_VERSION=9.3.15
# Wed, 04 Jan 2017 21:19:18 GMT
ENV PG_SHA256=a9fcba1446a93aa95e3e1b6535756f0472d10b0f267a0845f8b2b29f89de5c4f
# Fri, 27 Jan 2017 23:41:46 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl 		util-linux-dev 		zlib-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& ./configure 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(getconf _NPROCESSORS_ONLN)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Fri, 27 Jan 2017 23:41:47 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Fri, 27 Jan 2017 23:41:48 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod g+s /var/run/postgresql
# Fri, 27 Jan 2017 23:41:48 GMT
ENV PATH=/usr/lib/postgresql/9.3/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 27 Jan 2017 23:41:49 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 27 Jan 2017 23:41:50 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 27 Jan 2017 23:41:50 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 27 Jan 2017 23:41:51 GMT
COPY file:f9a2410e9ac1ac1f8eaaa7097935e1bc01697a3aea28753ca0ff43bcb928e743 in / 
# Fri, 27 Jan 2017 23:41:51 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 27 Jan 2017 23:41:51 GMT
EXPOSE 5432/tcp
# Fri, 27 Jan 2017 23:41:52 GMT
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
	-	`sha256:8f7c6ba65d3791f8a490790b68b3b3b861da46f09564145b8d7ba9791cbb437f`  
		Last Modified: Fri, 27 Jan 2017 23:49:02 GMT  
		Size: 11.7 MB (11651367 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:286e58dc282664f7eb8c06253cb4a52b736c1d2eef364ee2d5925ba31dacb934`  
		Last Modified: Fri, 27 Jan 2017 23:48:58 GMT  
		Size: 6.5 KB (6500 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4050755211986b279b7332ca6c28df69a40efb84fdb493cea5836f7562ebd5a`  
		Last Modified: Fri, 27 Jan 2017 23:48:58 GMT  
		Size: 145.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d495aae2f8373532dc0b19488650b5a105df878e7b45378fba526a5f6695440`  
		Last Modified: Fri, 27 Jan 2017 23:48:58 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e36127f4c87f2e7ef4801c04fa056c07941f108ca314fe422ac215b5f842f1b`  
		Last Modified: Fri, 27 Jan 2017 23:48:58 GMT  
		Size: 1.6 KB (1618 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.3-alpine`

```console
$ docker pull postgres@sha256:21a4ef830e308c2139add3f1235d9c0d8c04e8ab5762a3baab7e6aeae62b8401
```

-	Platforms:
	-	linux; amd64

### `postgres:9.3-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.6 MB (13561971 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7e449ff8645264203d7573880d244a959a59249107408a8a94e732ce8bb94e72`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
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
# Wed, 04 Jan 2017 21:19:18 GMT
ENV PG_VERSION=9.3.15
# Wed, 04 Jan 2017 21:19:18 GMT
ENV PG_SHA256=a9fcba1446a93aa95e3e1b6535756f0472d10b0f267a0845f8b2b29f89de5c4f
# Fri, 27 Jan 2017 23:41:46 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl 		util-linux-dev 		zlib-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& ./configure 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(getconf _NPROCESSORS_ONLN)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Fri, 27 Jan 2017 23:41:47 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Fri, 27 Jan 2017 23:41:48 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod g+s /var/run/postgresql
# Fri, 27 Jan 2017 23:41:48 GMT
ENV PATH=/usr/lib/postgresql/9.3/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 27 Jan 2017 23:41:49 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 27 Jan 2017 23:41:50 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 27 Jan 2017 23:41:50 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 27 Jan 2017 23:41:51 GMT
COPY file:f9a2410e9ac1ac1f8eaaa7097935e1bc01697a3aea28753ca0ff43bcb928e743 in / 
# Fri, 27 Jan 2017 23:41:51 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 27 Jan 2017 23:41:51 GMT
EXPOSE 5432/tcp
# Fri, 27 Jan 2017 23:41:52 GMT
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
	-	`sha256:8f7c6ba65d3791f8a490790b68b3b3b861da46f09564145b8d7ba9791cbb437f`  
		Last Modified: Fri, 27 Jan 2017 23:49:02 GMT  
		Size: 11.7 MB (11651367 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:286e58dc282664f7eb8c06253cb4a52b736c1d2eef364ee2d5925ba31dacb934`  
		Last Modified: Fri, 27 Jan 2017 23:48:58 GMT  
		Size: 6.5 KB (6500 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4050755211986b279b7332ca6c28df69a40efb84fdb493cea5836f7562ebd5a`  
		Last Modified: Fri, 27 Jan 2017 23:48:58 GMT  
		Size: 145.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d495aae2f8373532dc0b19488650b5a105df878e7b45378fba526a5f6695440`  
		Last Modified: Fri, 27 Jan 2017 23:48:58 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e36127f4c87f2e7ef4801c04fa056c07941f108ca314fe422ac215b5f842f1b`  
		Last Modified: Fri, 27 Jan 2017 23:48:58 GMT  
		Size: 1.6 KB (1618 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.2.19`

```console
$ docker pull postgres@sha256:64cde3c46c0f10f4c7079a633586415dd12bf365e821e3a316a7e661045487b1
```

-	Platforms:
	-	linux; amd64

### `postgres:9.2.19` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **100.4 MB (100386575 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:02b45836f2c84124ec298ab30a6e46dca48638cb02e4c8cc0921777b87a77ed1`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 19:36:05 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Tue, 17 Jan 2017 19:36:05 GMT
ENV GOSU_VERSION=1.7
# Tue, 17 Jan 2017 19:36:20 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 17 Jan 2017 19:36:27 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Tue, 17 Jan 2017 19:36:27 GMT
ENV LANG=en_US.utf8
# Tue, 17 Jan 2017 19:36:28 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 17 Jan 2017 19:36:30 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 17 Jan 2017 19:37:06 GMT
ENV PG_MAJOR=9.2
# Tue, 17 Jan 2017 19:37:07 GMT
ENV PG_VERSION=9.2.19-1.pgdg80+1
# Tue, 17 Jan 2017 19:37:08 GMT
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main' $PG_MAJOR > /etc/apt/sources.list.d/pgdg.list
# Tue, 17 Jan 2017 19:37:39 GMT
RUN apt-get update 	&& apt-get install -y postgresql-common 	&& sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf 	&& apt-get install -y 		postgresql-$PG_MAJOR=$PG_VERSION 		postgresql-contrib-$PG_MAJOR=$PG_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 19:37:40 GMT
RUN mv -v /usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample /usr/share/postgresql/$PG_MAJOR/ 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Fri, 20 Jan 2017 22:19:47 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod g+s /var/run/postgresql
# Fri, 20 Jan 2017 22:19:47 GMT
ENV PATH=/usr/lib/postgresql/9.2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 20 Jan 2017 22:19:48 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 20 Jan 2017 22:19:49 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 20 Jan 2017 22:19:49 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 20 Jan 2017 22:19:50 GMT
COPY file:8d267d76d9551f01f3b15b68c484da091c34fd675a9b6adc8c279d52364efdfc in / 
# Fri, 20 Jan 2017 22:19:51 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 20 Jan 2017 22:19:51 GMT
EXPOSE 5432/tcp
# Fri, 20 Jan 2017 22:19:52 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f08454c3c700a0100e8c3424e7048c4160e48c03bf045eada703f69fae65a3f2`  
		Last Modified: Wed, 18 Jan 2017 06:53:25 GMT  
		Size: 2.0 KB (2041 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4db038cdfe0347fab843472aa89d5b85a99a77dac608e5b91962eebcf6a8d1da`  
		Last Modified: Wed, 18 Jan 2017 06:53:23 GMT  
		Size: 1.2 MB (1216697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1d9ba315f03586d7698b3e6157539dc65c58c4af524a5570506d954eee51a49`  
		Last Modified: Wed, 18 Jan 2017 06:53:26 GMT  
		Size: 6.9 MB (6865805 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25e0ee93170ea48b465208dd9a5b66c43359df595268299d92caed4ed36f59be`  
		Last Modified: Wed, 18 Jan 2017 06:53:23 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f28084c3f5120489e6a0d65a6838996fd8ef9f688ad92024b2e01d8955273c5`  
		Last Modified: Wed, 18 Jan 2017 06:53:22 GMT  
		Size: 3.4 KB (3400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74bee52d42705f0b4e86029e7f2a99d1e9bed39ded04aecd98d4080bc9de3c71`  
		Last Modified: Wed, 18 Jan 2017 06:53:20 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4dfc7eace36387c14ce5cb8cfdd376c883dc3a55d13b6811436654e8f0252743`  
		Last Modified: Wed, 18 Jan 2017 06:53:37 GMT  
		Size: 40.9 MB (40928698 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71c12043988812a4576bc46d6b230c5b4e61ef4a2ab491e13ef7b3fe184390e5`  
		Last Modified: Wed, 18 Jan 2017 06:53:20 GMT  
		Size: 6.5 KB (6471 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4026c076ec0db31c45b132305cc9c673cff3dfe37585a32a4bcb304c45cdd8a2`  
		Last Modified: Fri, 20 Jan 2017 22:30:54 GMT  
		Size: 136.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab06c84f20076038f1e30fc85a0d3cc15d6e88686fdaa8bcbcb0523b645174b1`  
		Last Modified: Fri, 20 Jan 2017 22:30:52 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fffdfa9f14947a75b7dabb5f4eed68aa2de070adc2854b17c50f22ea04c4d36`  
		Last Modified: Fri, 20 Jan 2017 22:30:53 GMT  
		Size: 1.6 KB (1616 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.2`

```console
$ docker pull postgres@sha256:64cde3c46c0f10f4c7079a633586415dd12bf365e821e3a316a7e661045487b1
```

-	Platforms:
	-	linux; amd64

### `postgres:9.2` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **100.4 MB (100386575 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:02b45836f2c84124ec298ab30a6e46dca48638cb02e4c8cc0921777b87a77ed1`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 19:36:05 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Tue, 17 Jan 2017 19:36:05 GMT
ENV GOSU_VERSION=1.7
# Tue, 17 Jan 2017 19:36:20 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 17 Jan 2017 19:36:27 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Tue, 17 Jan 2017 19:36:27 GMT
ENV LANG=en_US.utf8
# Tue, 17 Jan 2017 19:36:28 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 17 Jan 2017 19:36:30 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 17 Jan 2017 19:37:06 GMT
ENV PG_MAJOR=9.2
# Tue, 17 Jan 2017 19:37:07 GMT
ENV PG_VERSION=9.2.19-1.pgdg80+1
# Tue, 17 Jan 2017 19:37:08 GMT
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main' $PG_MAJOR > /etc/apt/sources.list.d/pgdg.list
# Tue, 17 Jan 2017 19:37:39 GMT
RUN apt-get update 	&& apt-get install -y postgresql-common 	&& sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf 	&& apt-get install -y 		postgresql-$PG_MAJOR=$PG_VERSION 		postgresql-contrib-$PG_MAJOR=$PG_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 19:37:40 GMT
RUN mv -v /usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample /usr/share/postgresql/$PG_MAJOR/ 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Fri, 20 Jan 2017 22:19:47 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod g+s /var/run/postgresql
# Fri, 20 Jan 2017 22:19:47 GMT
ENV PATH=/usr/lib/postgresql/9.2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 20 Jan 2017 22:19:48 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 20 Jan 2017 22:19:49 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 20 Jan 2017 22:19:49 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 20 Jan 2017 22:19:50 GMT
COPY file:8d267d76d9551f01f3b15b68c484da091c34fd675a9b6adc8c279d52364efdfc in / 
# Fri, 20 Jan 2017 22:19:51 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 20 Jan 2017 22:19:51 GMT
EXPOSE 5432/tcp
# Fri, 20 Jan 2017 22:19:52 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f08454c3c700a0100e8c3424e7048c4160e48c03bf045eada703f69fae65a3f2`  
		Last Modified: Wed, 18 Jan 2017 06:53:25 GMT  
		Size: 2.0 KB (2041 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4db038cdfe0347fab843472aa89d5b85a99a77dac608e5b91962eebcf6a8d1da`  
		Last Modified: Wed, 18 Jan 2017 06:53:23 GMT  
		Size: 1.2 MB (1216697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1d9ba315f03586d7698b3e6157539dc65c58c4af524a5570506d954eee51a49`  
		Last Modified: Wed, 18 Jan 2017 06:53:26 GMT  
		Size: 6.9 MB (6865805 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25e0ee93170ea48b465208dd9a5b66c43359df595268299d92caed4ed36f59be`  
		Last Modified: Wed, 18 Jan 2017 06:53:23 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f28084c3f5120489e6a0d65a6838996fd8ef9f688ad92024b2e01d8955273c5`  
		Last Modified: Wed, 18 Jan 2017 06:53:22 GMT  
		Size: 3.4 KB (3400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74bee52d42705f0b4e86029e7f2a99d1e9bed39ded04aecd98d4080bc9de3c71`  
		Last Modified: Wed, 18 Jan 2017 06:53:20 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4dfc7eace36387c14ce5cb8cfdd376c883dc3a55d13b6811436654e8f0252743`  
		Last Modified: Wed, 18 Jan 2017 06:53:37 GMT  
		Size: 40.9 MB (40928698 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71c12043988812a4576bc46d6b230c5b4e61ef4a2ab491e13ef7b3fe184390e5`  
		Last Modified: Wed, 18 Jan 2017 06:53:20 GMT  
		Size: 6.5 KB (6471 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4026c076ec0db31c45b132305cc9c673cff3dfe37585a32a4bcb304c45cdd8a2`  
		Last Modified: Fri, 20 Jan 2017 22:30:54 GMT  
		Size: 136.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab06c84f20076038f1e30fc85a0d3cc15d6e88686fdaa8bcbcb0523b645174b1`  
		Last Modified: Fri, 20 Jan 2017 22:30:52 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fffdfa9f14947a75b7dabb5f4eed68aa2de070adc2854b17c50f22ea04c4d36`  
		Last Modified: Fri, 20 Jan 2017 22:30:53 GMT  
		Size: 1.6 KB (1616 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.2.19-alpine`

```console
$ docker pull postgres@sha256:ea832ce6362e1ecc130bae4aaf04444f255654e0afcf24582d779696d6130392
```

-	Platforms:
	-	linux; amd64

### `postgres:9.2.19-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.4 MB (13395569 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2e23430855bb64a2b582d711ae4f1b70135c6171b7bd320b82c02fbca5328fb6`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
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
# Wed, 04 Jan 2017 21:21:14 GMT
ENV PG_VERSION=9.2.19
# Wed, 04 Jan 2017 21:21:14 GMT
ENV PG_SHA256=1d29d73a4f590fcc348280f13ac2ff6a0f72c94908c54e3c20b7ab1560e8dbad
# Fri, 27 Jan 2017 23:43:38 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl 		util-linux-dev 		zlib-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& ./configure 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(getconf _NPROCESSORS_ONLN)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Fri, 27 Jan 2017 23:43:39 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Fri, 27 Jan 2017 23:43:40 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod g+s /var/run/postgresql
# Fri, 27 Jan 2017 23:43:40 GMT
ENV PATH=/usr/lib/postgresql/9.2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 27 Jan 2017 23:43:40 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 27 Jan 2017 23:43:41 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 27 Jan 2017 23:43:42 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 27 Jan 2017 23:43:42 GMT
COPY file:f9a2410e9ac1ac1f8eaaa7097935e1bc01697a3aea28753ca0ff43bcb928e743 in / 
# Fri, 27 Jan 2017 23:43:42 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 27 Jan 2017 23:43:43 GMT
EXPOSE 5432/tcp
# Fri, 27 Jan 2017 23:43:43 GMT
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
	-	`sha256:7721346522bc7f683d2364786bac8e198ae8789f7626a855d3c0bf799a63f6dd`  
		Last Modified: Fri, 27 Jan 2017 23:50:10 GMT  
		Size: 11.5 MB (11485026 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33d2f6d8f065264dc7896ed97cd09f104f6b5afc537122aa2dc093958d8465ac`  
		Last Modified: Fri, 27 Jan 2017 23:50:07 GMT  
		Size: 6.4 KB (6443 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ff53cad95f6f1e365bc2f03f8d136f0a049b91a68a61e2e3ee1dcd15d2124b6`  
		Last Modified: Fri, 27 Jan 2017 23:50:09 GMT  
		Size: 145.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e93b2d22d68402bdf35a54c1f861a98d5177a40858ecc0373e95aea84e6378a`  
		Last Modified: Fri, 27 Jan 2017 23:50:06 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52dfc0127626e0192c7df3617129b37d2b4e39af25e123fcdf9d7deb328467b0`  
		Last Modified: Fri, 27 Jan 2017 23:50:06 GMT  
		Size: 1.6 KB (1614 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.2-alpine`

```console
$ docker pull postgres@sha256:ea832ce6362e1ecc130bae4aaf04444f255654e0afcf24582d779696d6130392
```

-	Platforms:
	-	linux; amd64

### `postgres:9.2-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.4 MB (13395569 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2e23430855bb64a2b582d711ae4f1b70135c6171b7bd320b82c02fbca5328fb6`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
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
# Wed, 04 Jan 2017 21:21:14 GMT
ENV PG_VERSION=9.2.19
# Wed, 04 Jan 2017 21:21:14 GMT
ENV PG_SHA256=1d29d73a4f590fcc348280f13ac2ff6a0f72c94908c54e3c20b7ab1560e8dbad
# Fri, 27 Jan 2017 23:43:38 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl 		util-linux-dev 		zlib-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& ./configure 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(getconf _NPROCESSORS_ONLN)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Fri, 27 Jan 2017 23:43:39 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Fri, 27 Jan 2017 23:43:40 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod g+s /var/run/postgresql
# Fri, 27 Jan 2017 23:43:40 GMT
ENV PATH=/usr/lib/postgresql/9.2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 27 Jan 2017 23:43:40 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 27 Jan 2017 23:43:41 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 27 Jan 2017 23:43:42 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 27 Jan 2017 23:43:42 GMT
COPY file:f9a2410e9ac1ac1f8eaaa7097935e1bc01697a3aea28753ca0ff43bcb928e743 in / 
# Fri, 27 Jan 2017 23:43:42 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 27 Jan 2017 23:43:43 GMT
EXPOSE 5432/tcp
# Fri, 27 Jan 2017 23:43:43 GMT
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
	-	`sha256:7721346522bc7f683d2364786bac8e198ae8789f7626a855d3c0bf799a63f6dd`  
		Last Modified: Fri, 27 Jan 2017 23:50:10 GMT  
		Size: 11.5 MB (11485026 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33d2f6d8f065264dc7896ed97cd09f104f6b5afc537122aa2dc093958d8465ac`  
		Last Modified: Fri, 27 Jan 2017 23:50:07 GMT  
		Size: 6.4 KB (6443 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ff53cad95f6f1e365bc2f03f8d136f0a049b91a68a61e2e3ee1dcd15d2124b6`  
		Last Modified: Fri, 27 Jan 2017 23:50:09 GMT  
		Size: 145.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e93b2d22d68402bdf35a54c1f861a98d5177a40858ecc0373e95aea84e6378a`  
		Last Modified: Fri, 27 Jan 2017 23:50:06 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52dfc0127626e0192c7df3617129b37d2b4e39af25e123fcdf9d7deb328467b0`  
		Last Modified: Fri, 27 Jan 2017 23:50:06 GMT  
		Size: 1.6 KB (1614 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
