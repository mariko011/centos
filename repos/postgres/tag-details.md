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
$ docker pull postgres@sha256:d1ebe8ea9d9126bf25e1d2c47dc88ca9213efe971266104c3f54de263783b4ca
```

-	Platforms:
	-	linux; amd64

### `postgres:9.6.1-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.1 MB (13089537 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3a95c146036d7b16d12dbd3842883faa1f6d7d8cc31a85c220d08c3ffbafeee1`
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
# Fri, 20 Jan 2017 22:08:48 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl 		util-linux-dev 		zlib-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& ./configure 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(getconf _NPROCESSORS_ONLN)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/include/* 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Fri, 20 Jan 2017 22:08:49 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Fri, 20 Jan 2017 22:08:50 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod g+s /var/run/postgresql
# Fri, 20 Jan 2017 22:08:51 GMT
ENV PATH=/usr/lib/postgresql/9.6/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 20 Jan 2017 22:08:51 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 20 Jan 2017 22:08:52 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 20 Jan 2017 22:08:53 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 20 Jan 2017 22:08:54 GMT
COPY file:f9a2410e9ac1ac1f8eaaa7097935e1bc01697a3aea28753ca0ff43bcb928e743 in / 
# Fri, 20 Jan 2017 22:08:54 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 20 Jan 2017 22:08:55 GMT
EXPOSE 5432/tcp
# Fri, 20 Jan 2017 22:08:55 GMT
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
	-	`sha256:1ef545a15f4b71bae2531771f7519fb8180e2083476f543fa166fa74db0da46e`  
		Last Modified: Fri, 20 Jan 2017 22:24:57 GMT  
		Size: 11.2 MB (11178312 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2512f4ad1f1c76e10006daf182d828fbf7a5567d5b6b7bb38c635f9bf9519ccc`  
		Last Modified: Fri, 20 Jan 2017 22:24:52 GMT  
		Size: 7.1 KB (7123 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8a8689a3384dbb95c711b29d7eb9ede59fe202c3641b78ed65fe86bf68dcc05`  
		Last Modified: Fri, 20 Jan 2017 22:24:52 GMT  
		Size: 145.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a88c564ca9ec9fc8befa6747ba6afb97e108de5b6abf88c858031f39e2860c2b`  
		Last Modified: Fri, 20 Jan 2017 22:24:52 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b04f6b201981e14803a630375e56f4df03a2bf65507e835d1e3cc2aae7630520`  
		Last Modified: Fri, 20 Jan 2017 22:24:52 GMT  
		Size: 1.6 KB (1617 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.6-alpine`

```console
$ docker pull postgres@sha256:d1ebe8ea9d9126bf25e1d2c47dc88ca9213efe971266104c3f54de263783b4ca
```

-	Platforms:
	-	linux; amd64

### `postgres:9.6-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.1 MB (13089537 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3a95c146036d7b16d12dbd3842883faa1f6d7d8cc31a85c220d08c3ffbafeee1`
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
# Fri, 20 Jan 2017 22:08:48 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl 		util-linux-dev 		zlib-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& ./configure 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(getconf _NPROCESSORS_ONLN)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/include/* 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Fri, 20 Jan 2017 22:08:49 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Fri, 20 Jan 2017 22:08:50 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod g+s /var/run/postgresql
# Fri, 20 Jan 2017 22:08:51 GMT
ENV PATH=/usr/lib/postgresql/9.6/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 20 Jan 2017 22:08:51 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 20 Jan 2017 22:08:52 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 20 Jan 2017 22:08:53 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 20 Jan 2017 22:08:54 GMT
COPY file:f9a2410e9ac1ac1f8eaaa7097935e1bc01697a3aea28753ca0ff43bcb928e743 in / 
# Fri, 20 Jan 2017 22:08:54 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 20 Jan 2017 22:08:55 GMT
EXPOSE 5432/tcp
# Fri, 20 Jan 2017 22:08:55 GMT
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
	-	`sha256:1ef545a15f4b71bae2531771f7519fb8180e2083476f543fa166fa74db0da46e`  
		Last Modified: Fri, 20 Jan 2017 22:24:57 GMT  
		Size: 11.2 MB (11178312 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2512f4ad1f1c76e10006daf182d828fbf7a5567d5b6b7bb38c635f9bf9519ccc`  
		Last Modified: Fri, 20 Jan 2017 22:24:52 GMT  
		Size: 7.1 KB (7123 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8a8689a3384dbb95c711b29d7eb9ede59fe202c3641b78ed65fe86bf68dcc05`  
		Last Modified: Fri, 20 Jan 2017 22:24:52 GMT  
		Size: 145.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a88c564ca9ec9fc8befa6747ba6afb97e108de5b6abf88c858031f39e2860c2b`  
		Last Modified: Fri, 20 Jan 2017 22:24:52 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b04f6b201981e14803a630375e56f4df03a2bf65507e835d1e3cc2aae7630520`  
		Last Modified: Fri, 20 Jan 2017 22:24:52 GMT  
		Size: 1.6 KB (1617 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9-alpine`

```console
$ docker pull postgres@sha256:d1ebe8ea9d9126bf25e1d2c47dc88ca9213efe971266104c3f54de263783b4ca
```

-	Platforms:
	-	linux; amd64

### `postgres:9-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.1 MB (13089537 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3a95c146036d7b16d12dbd3842883faa1f6d7d8cc31a85c220d08c3ffbafeee1`
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
# Fri, 20 Jan 2017 22:08:48 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl 		util-linux-dev 		zlib-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& ./configure 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(getconf _NPROCESSORS_ONLN)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/include/* 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Fri, 20 Jan 2017 22:08:49 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Fri, 20 Jan 2017 22:08:50 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod g+s /var/run/postgresql
# Fri, 20 Jan 2017 22:08:51 GMT
ENV PATH=/usr/lib/postgresql/9.6/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 20 Jan 2017 22:08:51 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 20 Jan 2017 22:08:52 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 20 Jan 2017 22:08:53 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 20 Jan 2017 22:08:54 GMT
COPY file:f9a2410e9ac1ac1f8eaaa7097935e1bc01697a3aea28753ca0ff43bcb928e743 in / 
# Fri, 20 Jan 2017 22:08:54 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 20 Jan 2017 22:08:55 GMT
EXPOSE 5432/tcp
# Fri, 20 Jan 2017 22:08:55 GMT
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
	-	`sha256:1ef545a15f4b71bae2531771f7519fb8180e2083476f543fa166fa74db0da46e`  
		Last Modified: Fri, 20 Jan 2017 22:24:57 GMT  
		Size: 11.2 MB (11178312 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2512f4ad1f1c76e10006daf182d828fbf7a5567d5b6b7bb38c635f9bf9519ccc`  
		Last Modified: Fri, 20 Jan 2017 22:24:52 GMT  
		Size: 7.1 KB (7123 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8a8689a3384dbb95c711b29d7eb9ede59fe202c3641b78ed65fe86bf68dcc05`  
		Last Modified: Fri, 20 Jan 2017 22:24:52 GMT  
		Size: 145.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a88c564ca9ec9fc8befa6747ba6afb97e108de5b6abf88c858031f39e2860c2b`  
		Last Modified: Fri, 20 Jan 2017 22:24:52 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b04f6b201981e14803a630375e56f4df03a2bf65507e835d1e3cc2aae7630520`  
		Last Modified: Fri, 20 Jan 2017 22:24:52 GMT  
		Size: 1.6 KB (1617 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:alpine`

```console
$ docker pull postgres@sha256:d1ebe8ea9d9126bf25e1d2c47dc88ca9213efe971266104c3f54de263783b4ca
```

-	Platforms:
	-	linux; amd64

### `postgres:alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.1 MB (13089537 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3a95c146036d7b16d12dbd3842883faa1f6d7d8cc31a85c220d08c3ffbafeee1`
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
# Fri, 20 Jan 2017 22:08:48 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl 		util-linux-dev 		zlib-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& ./configure 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(getconf _NPROCESSORS_ONLN)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/include/* 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Fri, 20 Jan 2017 22:08:49 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Fri, 20 Jan 2017 22:08:50 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod g+s /var/run/postgresql
# Fri, 20 Jan 2017 22:08:51 GMT
ENV PATH=/usr/lib/postgresql/9.6/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 20 Jan 2017 22:08:51 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 20 Jan 2017 22:08:52 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 20 Jan 2017 22:08:53 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 20 Jan 2017 22:08:54 GMT
COPY file:f9a2410e9ac1ac1f8eaaa7097935e1bc01697a3aea28753ca0ff43bcb928e743 in / 
# Fri, 20 Jan 2017 22:08:54 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 20 Jan 2017 22:08:55 GMT
EXPOSE 5432/tcp
# Fri, 20 Jan 2017 22:08:55 GMT
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
	-	`sha256:1ef545a15f4b71bae2531771f7519fb8180e2083476f543fa166fa74db0da46e`  
		Last Modified: Fri, 20 Jan 2017 22:24:57 GMT  
		Size: 11.2 MB (11178312 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2512f4ad1f1c76e10006daf182d828fbf7a5567d5b6b7bb38c635f9bf9519ccc`  
		Last Modified: Fri, 20 Jan 2017 22:24:52 GMT  
		Size: 7.1 KB (7123 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8a8689a3384dbb95c711b29d7eb9ede59fe202c3641b78ed65fe86bf68dcc05`  
		Last Modified: Fri, 20 Jan 2017 22:24:52 GMT  
		Size: 145.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a88c564ca9ec9fc8befa6747ba6afb97e108de5b6abf88c858031f39e2860c2b`  
		Last Modified: Fri, 20 Jan 2017 22:24:52 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b04f6b201981e14803a630375e56f4df03a2bf65507e835d1e3cc2aae7630520`  
		Last Modified: Fri, 20 Jan 2017 22:24:52 GMT  
		Size: 1.6 KB (1617 bytes)  
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
$ docker pull postgres@sha256:3f3db85aaba6caf9f45ca68dd8d394d136cfe0b5f732c7a58957c223562ab87f
```

-	Platforms:
	-	linux; amd64

### `postgres:9.5.5-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.9 MB (12854006 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:30eac03bbe1617ee05dbee41338761901ed6bac74e3421c2eac3f1165454dfda`
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
# Fri, 20 Jan 2017 22:11:31 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl 		util-linux-dev 		zlib-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& ./configure 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(getconf _NPROCESSORS_ONLN)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/include/* 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Fri, 20 Jan 2017 22:11:39 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Fri, 20 Jan 2017 22:11:40 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod g+s /var/run/postgresql
# Fri, 20 Jan 2017 22:11:52 GMT
ENV PATH=/usr/lib/postgresql/9.5/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 20 Jan 2017 22:11:52 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 20 Jan 2017 22:11:53 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 20 Jan 2017 22:12:06 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 20 Jan 2017 22:12:07 GMT
COPY file:f9a2410e9ac1ac1f8eaaa7097935e1bc01697a3aea28753ca0ff43bcb928e743 in / 
# Fri, 20 Jan 2017 22:12:07 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 20 Jan 2017 22:12:08 GMT
EXPOSE 5432/tcp
# Fri, 20 Jan 2017 22:12:20 GMT
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
	-	`sha256:dcdd746afc0be7e23b818e7d514f51c5a2a2a81f997edca7f41ea49d3fec6c17`  
		Last Modified: Fri, 20 Jan 2017 22:27:21 GMT  
		Size: 10.9 MB (10943084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:249495818e013bf0cc6512cfffe7a288050cf5ca41cf01ba4069d06f7421ac71`  
		Last Modified: Fri, 20 Jan 2017 22:27:17 GMT  
		Size: 6.8 KB (6820 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77a50f3f871d99ae633f6e1da87cf97e5ea600c971aee82d2d4fa12155b74e38`  
		Last Modified: Fri, 20 Jan 2017 22:27:17 GMT  
		Size: 144.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c83dc3f683ed86438bcd8cf64b85e8d6c69269d545549919dc2e7cbb7ea5905d`  
		Last Modified: Fri, 20 Jan 2017 22:27:17 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcdd8f61d69a9779d949762295298c813b42bb937fda4746690d884666bf62f4`  
		Last Modified: Fri, 20 Jan 2017 22:27:17 GMT  
		Size: 1.6 KB (1618 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.5-alpine`

```console
$ docker pull postgres@sha256:3f3db85aaba6caf9f45ca68dd8d394d136cfe0b5f732c7a58957c223562ab87f
```

-	Platforms:
	-	linux; amd64

### `postgres:9.5-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.9 MB (12854006 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:30eac03bbe1617ee05dbee41338761901ed6bac74e3421c2eac3f1165454dfda`
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
# Fri, 20 Jan 2017 22:11:31 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl 		util-linux-dev 		zlib-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& ./configure 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(getconf _NPROCESSORS_ONLN)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/include/* 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Fri, 20 Jan 2017 22:11:39 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Fri, 20 Jan 2017 22:11:40 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod g+s /var/run/postgresql
# Fri, 20 Jan 2017 22:11:52 GMT
ENV PATH=/usr/lib/postgresql/9.5/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 20 Jan 2017 22:11:52 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 20 Jan 2017 22:11:53 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 20 Jan 2017 22:12:06 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 20 Jan 2017 22:12:07 GMT
COPY file:f9a2410e9ac1ac1f8eaaa7097935e1bc01697a3aea28753ca0ff43bcb928e743 in / 
# Fri, 20 Jan 2017 22:12:07 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 20 Jan 2017 22:12:08 GMT
EXPOSE 5432/tcp
# Fri, 20 Jan 2017 22:12:20 GMT
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
	-	`sha256:dcdd746afc0be7e23b818e7d514f51c5a2a2a81f997edca7f41ea49d3fec6c17`  
		Last Modified: Fri, 20 Jan 2017 22:27:21 GMT  
		Size: 10.9 MB (10943084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:249495818e013bf0cc6512cfffe7a288050cf5ca41cf01ba4069d06f7421ac71`  
		Last Modified: Fri, 20 Jan 2017 22:27:17 GMT  
		Size: 6.8 KB (6820 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77a50f3f871d99ae633f6e1da87cf97e5ea600c971aee82d2d4fa12155b74e38`  
		Last Modified: Fri, 20 Jan 2017 22:27:17 GMT  
		Size: 144.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c83dc3f683ed86438bcd8cf64b85e8d6c69269d545549919dc2e7cbb7ea5905d`  
		Last Modified: Fri, 20 Jan 2017 22:27:17 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcdd8f61d69a9779d949762295298c813b42bb937fda4746690d884666bf62f4`  
		Last Modified: Fri, 20 Jan 2017 22:27:17 GMT  
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
$ docker pull postgres@sha256:54cd20e65e515a3c693fd560ebf361a00fcd119b8fcebb2ec0e313b9b90a43b9
```

-	Platforms:
	-	linux; amd64

### `postgres:9.4.10-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.7 MB (12695521 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:abd9d6b201e6ebfc2d2ba394e592e8971f1946c3cb461b8fa3b721ae486f3ba7`
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
# Fri, 20 Jan 2017 22:15:42 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl 		util-linux-dev 		zlib-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& ./configure 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(getconf _NPROCESSORS_ONLN)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/include/* 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Fri, 20 Jan 2017 22:15:44 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Fri, 20 Jan 2017 22:15:57 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod g+s /var/run/postgresql
# Fri, 20 Jan 2017 22:15:58 GMT
ENV PATH=/usr/lib/postgresql/9.4/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 20 Jan 2017 22:15:58 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 20 Jan 2017 22:16:11 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 20 Jan 2017 22:16:11 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 20 Jan 2017 22:16:12 GMT
COPY file:f9a2410e9ac1ac1f8eaaa7097935e1bc01697a3aea28753ca0ff43bcb928e743 in / 
# Fri, 20 Jan 2017 22:16:13 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 20 Jan 2017 22:16:25 GMT
EXPOSE 5432/tcp
# Fri, 20 Jan 2017 22:16:26 GMT
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
	-	`sha256:c1af7fa467aafacfe839e3aa72e0f1fb569bc818ab6674589ec58f15258ae4f6`  
		Last Modified: Fri, 20 Jan 2017 22:28:58 GMT  
		Size: 10.8 MB (10784743 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d67cdf6231085e0b7b0d2e8d5c643e4110593b2cd4a8e9f2755dbda34c4c870d`  
		Last Modified: Fri, 20 Jan 2017 22:28:54 GMT  
		Size: 6.7 KB (6676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da76f6ebfc5d33a1e8f9dd51a7f6f7dd604ba38dfac6f6b2358ea1bb7db26d4e`  
		Last Modified: Fri, 20 Jan 2017 22:28:54 GMT  
		Size: 144.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e26a4c53bd187c7aafb5344caa3e2159484d3d8d732f8657e7c8315d2614d7b`  
		Last Modified: Fri, 20 Jan 2017 22:28:54 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbe8d4810eb31861a19680b16ee2d6558993bcf4de807ae352884a67a4a764df`  
		Last Modified: Fri, 20 Jan 2017 22:28:54 GMT  
		Size: 1.6 KB (1617 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.4-alpine`

```console
$ docker pull postgres@sha256:54cd20e65e515a3c693fd560ebf361a00fcd119b8fcebb2ec0e313b9b90a43b9
```

-	Platforms:
	-	linux; amd64

### `postgres:9.4-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.7 MB (12695521 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:abd9d6b201e6ebfc2d2ba394e592e8971f1946c3cb461b8fa3b721ae486f3ba7`
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
# Fri, 20 Jan 2017 22:15:42 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl 		util-linux-dev 		zlib-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& ./configure 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(getconf _NPROCESSORS_ONLN)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/include/* 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Fri, 20 Jan 2017 22:15:44 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Fri, 20 Jan 2017 22:15:57 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod g+s /var/run/postgresql
# Fri, 20 Jan 2017 22:15:58 GMT
ENV PATH=/usr/lib/postgresql/9.4/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 20 Jan 2017 22:15:58 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 20 Jan 2017 22:16:11 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 20 Jan 2017 22:16:11 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 20 Jan 2017 22:16:12 GMT
COPY file:f9a2410e9ac1ac1f8eaaa7097935e1bc01697a3aea28753ca0ff43bcb928e743 in / 
# Fri, 20 Jan 2017 22:16:13 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 20 Jan 2017 22:16:25 GMT
EXPOSE 5432/tcp
# Fri, 20 Jan 2017 22:16:26 GMT
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
	-	`sha256:c1af7fa467aafacfe839e3aa72e0f1fb569bc818ab6674589ec58f15258ae4f6`  
		Last Modified: Fri, 20 Jan 2017 22:28:58 GMT  
		Size: 10.8 MB (10784743 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d67cdf6231085e0b7b0d2e8d5c643e4110593b2cd4a8e9f2755dbda34c4c870d`  
		Last Modified: Fri, 20 Jan 2017 22:28:54 GMT  
		Size: 6.7 KB (6676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da76f6ebfc5d33a1e8f9dd51a7f6f7dd604ba38dfac6f6b2358ea1bb7db26d4e`  
		Last Modified: Fri, 20 Jan 2017 22:28:54 GMT  
		Size: 144.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e26a4c53bd187c7aafb5344caa3e2159484d3d8d732f8657e7c8315d2614d7b`  
		Last Modified: Fri, 20 Jan 2017 22:28:54 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbe8d4810eb31861a19680b16ee2d6558993bcf4de807ae352884a67a4a764df`  
		Last Modified: Fri, 20 Jan 2017 22:28:54 GMT  
		Size: 1.6 KB (1617 bytes)  
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
$ docker pull postgres@sha256:9e8e166f1ce6184109668ebf1d9ec701333497904ca30859f7abdf5696921277
```

-	Platforms:
	-	linux; amd64

### `postgres:9.3.15-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.4 MB (12423209 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ea6adb7c87e0d8cef5e8ab0022141725dd56238ba71273c7cfe1447ebe589268`
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
# Fri, 20 Jan 2017 22:19:30 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl 		util-linux-dev 		zlib-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& ./configure 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(getconf _NPROCESSORS_ONLN)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/include/* 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Fri, 20 Jan 2017 22:19:40 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Fri, 20 Jan 2017 22:19:41 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod g+s /var/run/postgresql
# Fri, 20 Jan 2017 22:19:41 GMT
ENV PATH=/usr/lib/postgresql/9.3/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 20 Jan 2017 22:19:42 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 20 Jan 2017 22:19:43 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 20 Jan 2017 22:19:43 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 20 Jan 2017 22:19:44 GMT
COPY file:f9a2410e9ac1ac1f8eaaa7097935e1bc01697a3aea28753ca0ff43bcb928e743 in / 
# Fri, 20 Jan 2017 22:19:44 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 20 Jan 2017 22:19:45 GMT
EXPOSE 5432/tcp
# Fri, 20 Jan 2017 22:19:45 GMT
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
	-	`sha256:98e58a41e58ba0841d268b71c80e6bea1a7126caed6975fc820291de8d94585a`  
		Last Modified: Fri, 20 Jan 2017 22:30:20 GMT  
		Size: 10.5 MB (10512608 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba67d10273a8a218b10a72916f4a3cc20c7ca53932643eb942c458b32f8577db`  
		Last Modified: Fri, 20 Jan 2017 22:30:16 GMT  
		Size: 6.5 KB (6499 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30f0712795017478089ca7b44ddb549a9a440f81aad3c1c2996fffbd43dd68f3`  
		Last Modified: Fri, 20 Jan 2017 22:30:17 GMT  
		Size: 143.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:175d93d4275df4e973b92c1cbf41ccf807050d247e1bb1cae6ba8a7d41621255`  
		Last Modified: Fri, 20 Jan 2017 22:30:16 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c0698078ef5c8f663bb522f73157c2c21969a37d4d5833958dcf5c5209bbace`  
		Last Modified: Fri, 20 Jan 2017 22:30:18 GMT  
		Size: 1.6 KB (1618 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.3-alpine`

```console
$ docker pull postgres@sha256:9e8e166f1ce6184109668ebf1d9ec701333497904ca30859f7abdf5696921277
```

-	Platforms:
	-	linux; amd64

### `postgres:9.3-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.4 MB (12423209 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ea6adb7c87e0d8cef5e8ab0022141725dd56238ba71273c7cfe1447ebe589268`
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
# Fri, 20 Jan 2017 22:19:30 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl 		util-linux-dev 		zlib-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& ./configure 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(getconf _NPROCESSORS_ONLN)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/include/* 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Fri, 20 Jan 2017 22:19:40 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Fri, 20 Jan 2017 22:19:41 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod g+s /var/run/postgresql
# Fri, 20 Jan 2017 22:19:41 GMT
ENV PATH=/usr/lib/postgresql/9.3/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 20 Jan 2017 22:19:42 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 20 Jan 2017 22:19:43 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 20 Jan 2017 22:19:43 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 20 Jan 2017 22:19:44 GMT
COPY file:f9a2410e9ac1ac1f8eaaa7097935e1bc01697a3aea28753ca0ff43bcb928e743 in / 
# Fri, 20 Jan 2017 22:19:44 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 20 Jan 2017 22:19:45 GMT
EXPOSE 5432/tcp
# Fri, 20 Jan 2017 22:19:45 GMT
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
	-	`sha256:98e58a41e58ba0841d268b71c80e6bea1a7126caed6975fc820291de8d94585a`  
		Last Modified: Fri, 20 Jan 2017 22:30:20 GMT  
		Size: 10.5 MB (10512608 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba67d10273a8a218b10a72916f4a3cc20c7ca53932643eb942c458b32f8577db`  
		Last Modified: Fri, 20 Jan 2017 22:30:16 GMT  
		Size: 6.5 KB (6499 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30f0712795017478089ca7b44ddb549a9a440f81aad3c1c2996fffbd43dd68f3`  
		Last Modified: Fri, 20 Jan 2017 22:30:17 GMT  
		Size: 143.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:175d93d4275df4e973b92c1cbf41ccf807050d247e1bb1cae6ba8a7d41621255`  
		Last Modified: Fri, 20 Jan 2017 22:30:16 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c0698078ef5c8f663bb522f73157c2c21969a37d4d5833958dcf5c5209bbace`  
		Last Modified: Fri, 20 Jan 2017 22:30:18 GMT  
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
$ docker pull postgres@sha256:343f23e929d8ebee694fff9950b01d828e14cc00abe34058c5bcc0ff4e18af1b
```

-	Platforms:
	-	linux; amd64

### `postgres:9.2.19-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.3 MB (12294242 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a5fe8ec8e96df38260caf73523d8567c9d0c6a3e6449bb2680b9f6954c2de62f`
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
# Fri, 20 Jan 2017 22:22:10 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl 		util-linux-dev 		zlib-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& ./configure 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(getconf _NPROCESSORS_ONLN)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/include/* 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Fri, 20 Jan 2017 22:22:17 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Fri, 20 Jan 2017 22:22:18 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod g+s /var/run/postgresql
# Fri, 20 Jan 2017 22:22:19 GMT
ENV PATH=/usr/lib/postgresql/9.2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 20 Jan 2017 22:22:31 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 20 Jan 2017 22:22:32 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 20 Jan 2017 22:22:33 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 20 Jan 2017 22:22:45 GMT
COPY file:f9a2410e9ac1ac1f8eaaa7097935e1bc01697a3aea28753ca0ff43bcb928e743 in / 
# Fri, 20 Jan 2017 22:22:46 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 20 Jan 2017 22:22:46 GMT
EXPOSE 5432/tcp
# Fri, 20 Jan 2017 22:22:47 GMT
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
	-	`sha256:27992f334c974d239ff22b8e32ea6923fcec644076b5a6a149511c5d6bb3d92b`  
		Last Modified: Fri, 20 Jan 2017 22:31:31 GMT  
		Size: 10.4 MB (10383697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5413b47b3e25e6cb8740efd853f920f1f9230ae14b1def7d0305c2154c900e2d`  
		Last Modified: Fri, 20 Jan 2017 22:31:27 GMT  
		Size: 6.4 KB (6442 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6030d1bc051c952d6fb3399bed5fc80cebec021287a99ceacb2dc6030ff8eee2`  
		Last Modified: Fri, 20 Jan 2017 22:31:27 GMT  
		Size: 144.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26f891083153bb75fa40ab8cd5ac2d57a31719df39d4c2540afefc2e3f1970fb`  
		Last Modified: Fri, 20 Jan 2017 22:31:27 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54ebbcbbcf0ba92ebc339d2c687a7920c318b01018d52181953692ab1310f3ef`  
		Last Modified: Fri, 20 Jan 2017 22:31:27 GMT  
		Size: 1.6 KB (1618 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.2-alpine`

```console
$ docker pull postgres@sha256:343f23e929d8ebee694fff9950b01d828e14cc00abe34058c5bcc0ff4e18af1b
```

-	Platforms:
	-	linux; amd64

### `postgres:9.2-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.3 MB (12294242 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a5fe8ec8e96df38260caf73523d8567c9d0c6a3e6449bb2680b9f6954c2de62f`
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
# Fri, 20 Jan 2017 22:22:10 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl 		util-linux-dev 		zlib-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& ./configure 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(getconf _NPROCESSORS_ONLN)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/include/* 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Fri, 20 Jan 2017 22:22:17 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Fri, 20 Jan 2017 22:22:18 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod g+s /var/run/postgresql
# Fri, 20 Jan 2017 22:22:19 GMT
ENV PATH=/usr/lib/postgresql/9.2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 20 Jan 2017 22:22:31 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 20 Jan 2017 22:22:32 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 20 Jan 2017 22:22:33 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 20 Jan 2017 22:22:45 GMT
COPY file:f9a2410e9ac1ac1f8eaaa7097935e1bc01697a3aea28753ca0ff43bcb928e743 in / 
# Fri, 20 Jan 2017 22:22:46 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 20 Jan 2017 22:22:46 GMT
EXPOSE 5432/tcp
# Fri, 20 Jan 2017 22:22:47 GMT
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
	-	`sha256:27992f334c974d239ff22b8e32ea6923fcec644076b5a6a149511c5d6bb3d92b`  
		Last Modified: Fri, 20 Jan 2017 22:31:31 GMT  
		Size: 10.4 MB (10383697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5413b47b3e25e6cb8740efd853f920f1f9230ae14b1def7d0305c2154c900e2d`  
		Last Modified: Fri, 20 Jan 2017 22:31:27 GMT  
		Size: 6.4 KB (6442 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6030d1bc051c952d6fb3399bed5fc80cebec021287a99ceacb2dc6030ff8eee2`  
		Last Modified: Fri, 20 Jan 2017 22:31:27 GMT  
		Size: 144.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26f891083153bb75fa40ab8cd5ac2d57a31719df39d4c2540afefc2e3f1970fb`  
		Last Modified: Fri, 20 Jan 2017 22:31:27 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54ebbcbbcf0ba92ebc339d2c687a7920c318b01018d52181953692ab1310f3ef`  
		Last Modified: Fri, 20 Jan 2017 22:31:27 GMT  
		Size: 1.6 KB (1618 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
