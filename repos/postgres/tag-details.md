<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `postgres`

-	[`postgres:10-beta1`](#postgres10-beta1)
-	[`postgres:10`](#postgres10)
-	[`postgres:10-beta1-alpine`](#postgres10-beta1-alpine)
-	[`postgres:10-alpine`](#postgres10-alpine)
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

## `postgres:10-beta1`

**does not exist** (yet?)

## `postgres:10`

**does not exist** (yet?)

## `postgres:10-beta1-alpine`

**does not exist** (yet?)

## `postgres:10-alpine`

**does not exist** (yet?)

## `postgres:9.6.3`

```console
$ docker pull postgres@sha256:6d2f933d41ecf85d6291c5ae855caa59f1040c82c3adbfdca5d6ba60b8d37613
```

-	Platforms:
	-	linux; amd64

### `postgres:9.6.3` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.3 MB (104340164 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5fa273ee7568e8e05ebc54dc91e843228f91de91613072a5bebd969df6e88676`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Tue, 20 Jun 2017 20:13:32 GMT
ADD file:9c48682ff75c756544d4491472081a078edf5dd0bb5038d1cb850a1f9c480e3e in / 
# Tue, 20 Jun 2017 20:13:34 GMT
CMD ["bash"]
# Fri, 23 Jun 2017 04:07:15 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Fri, 23 Jun 2017 04:07:16 GMT
ENV GOSU_VERSION=1.7
# Fri, 23 Jun 2017 04:07:36 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 23 Jun 2017 04:07:49 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Fri, 23 Jun 2017 04:07:49 GMT
ENV LANG=en_US.utf8
# Fri, 23 Jun 2017 04:07:51 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 23 Jun 2017 04:07:54 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Fri, 23 Jun 2017 04:07:55 GMT
ENV PG_MAJOR=9.6
# Fri, 23 Jun 2017 04:07:56 GMT
ENV PG_VERSION=9.6.3-1.pgdg80+1
# Fri, 23 Jun 2017 04:07:57 GMT
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main' $PG_MAJOR > /etc/apt/sources.list.d/pgdg.list
# Fri, 23 Jun 2017 04:08:44 GMT
RUN apt-get update 	&& apt-get install -y postgresql-common 	&& sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf 	&& apt-get install -y 		postgresql-$PG_MAJOR=$PG_VERSION 		postgresql-contrib-$PG_MAJOR=$PG_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 04:08:46 GMT
RUN mv -v /usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample /usr/share/postgresql/$PG_MAJOR/ 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Fri, 23 Jun 2017 04:08:48 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 23 Jun 2017 04:08:49 GMT
ENV PATH=/usr/lib/postgresql/9.6/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Jun 2017 04:08:50 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 23 Jun 2017 04:08:51 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 23 Jun 2017 04:08:52 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 23 Jun 2017 04:08:53 GMT
COPY file:80a75a207cb3d72777ff2cb8654a6d03754b58aed9199464284f3587637e1403 in /usr/local/bin/ 
# Fri, 23 Jun 2017 04:08:55 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 23 Jun 2017 04:08:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 23 Jun 2017 04:08:57 GMT
EXPOSE 5432/tcp
# Fri, 23 Jun 2017 04:08:57 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:9f0706ba7422412cd468804fee456786f88bed94bf9aea6dde2a47f770d19d27`  
		Last Modified: Tue, 20 Jun 2017 20:35:47 GMT  
		Size: 52.6 MB (52614808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7f935097c1dc51b4ee616da0d59bfd42c2473fcb2a9a9c7ad1284437a50ba74`  
		Last Modified: Sat, 24 Jun 2017 19:48:42 GMT  
		Size: 2.1 KB (2067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d3be652286b116e49c14f129c65f4d393c06a93329f4233aca9a259f935dfbf`  
		Last Modified: Sat, 24 Jun 2017 19:48:41 GMT  
		Size: 1.3 MB (1304149 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93ca38c967a2ec51002eafaf0705cb0238590c5399b8cbd7d6e1776215cd288b`  
		Last Modified: Sat, 24 Jun 2017 19:48:44 GMT  
		Size: 7.1 MB (7114233 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:757f9036ad24fe9376b8ab2610b1bc7f8c8966c645d70305943d6299ffb7b25b`  
		Last Modified: Sat, 24 Jun 2017 19:48:40 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2278e49211f18cd08beadfe0e6d9903cb89c02c5a3ea5f2e4f8e2db71c734232`  
		Last Modified: Sat, 24 Jun 2017 19:48:40 GMT  
		Size: 4.5 KB (4489 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:717785ad82209310369b928cd3c4a5ca724ca956946df7f15c0dde0ef055891c`  
		Last Modified: Sat, 24 Jun 2017 19:48:40 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63d5177d701bdc3904fe89fbc6ec2248ca0aba76da0e3c9d8c2230387ec44183`  
		Last Modified: Sat, 24 Jun 2017 19:48:50 GMT  
		Size: 43.3 MB (43290774 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b71fb03d2bdf19951e69b9061b975ebf17bc712ffc54268d6aa84b216d5e9557`  
		Last Modified: Sat, 24 Jun 2017 19:48:38 GMT  
		Size: 7.1 KB (7094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8f2a0b376a0a57ce4e40cbcd997f826a2422229f6f4a8fe2149921b39abff8e`  
		Last Modified: Sat, 24 Jun 2017 19:48:38 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9686ffff9deeb0e99832706c2dce10c42ead6b5df8e6e857bb0630742b30733`  
		Last Modified: Sat, 24 Jun 2017 19:48:38 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba508d242abcdff4dbc4aefdd9230adbfc0e17a82b730266f2a0f283f51c37a0`  
		Last Modified: Sat, 24 Jun 2017 19:48:38 GMT  
		Size: 1.8 KB (1798 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8f09ded3eeca3f96ddebc718b5ebb1948ad7fac7d25a6771ef7793375bd90df`  
		Last Modified: Sat, 24 Jun 2017 19:48:38 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.6`

```console
$ docker pull postgres@sha256:6d2f933d41ecf85d6291c5ae855caa59f1040c82c3adbfdca5d6ba60b8d37613
```

-	Platforms:
	-	linux; amd64

### `postgres:9.6` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.3 MB (104340164 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5fa273ee7568e8e05ebc54dc91e843228f91de91613072a5bebd969df6e88676`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Tue, 20 Jun 2017 20:13:32 GMT
ADD file:9c48682ff75c756544d4491472081a078edf5dd0bb5038d1cb850a1f9c480e3e in / 
# Tue, 20 Jun 2017 20:13:34 GMT
CMD ["bash"]
# Fri, 23 Jun 2017 04:07:15 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Fri, 23 Jun 2017 04:07:16 GMT
ENV GOSU_VERSION=1.7
# Fri, 23 Jun 2017 04:07:36 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 23 Jun 2017 04:07:49 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Fri, 23 Jun 2017 04:07:49 GMT
ENV LANG=en_US.utf8
# Fri, 23 Jun 2017 04:07:51 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 23 Jun 2017 04:07:54 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Fri, 23 Jun 2017 04:07:55 GMT
ENV PG_MAJOR=9.6
# Fri, 23 Jun 2017 04:07:56 GMT
ENV PG_VERSION=9.6.3-1.pgdg80+1
# Fri, 23 Jun 2017 04:07:57 GMT
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main' $PG_MAJOR > /etc/apt/sources.list.d/pgdg.list
# Fri, 23 Jun 2017 04:08:44 GMT
RUN apt-get update 	&& apt-get install -y postgresql-common 	&& sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf 	&& apt-get install -y 		postgresql-$PG_MAJOR=$PG_VERSION 		postgresql-contrib-$PG_MAJOR=$PG_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 04:08:46 GMT
RUN mv -v /usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample /usr/share/postgresql/$PG_MAJOR/ 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Fri, 23 Jun 2017 04:08:48 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 23 Jun 2017 04:08:49 GMT
ENV PATH=/usr/lib/postgresql/9.6/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Jun 2017 04:08:50 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 23 Jun 2017 04:08:51 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 23 Jun 2017 04:08:52 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 23 Jun 2017 04:08:53 GMT
COPY file:80a75a207cb3d72777ff2cb8654a6d03754b58aed9199464284f3587637e1403 in /usr/local/bin/ 
# Fri, 23 Jun 2017 04:08:55 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 23 Jun 2017 04:08:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 23 Jun 2017 04:08:57 GMT
EXPOSE 5432/tcp
# Fri, 23 Jun 2017 04:08:57 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:9f0706ba7422412cd468804fee456786f88bed94bf9aea6dde2a47f770d19d27`  
		Last Modified: Tue, 20 Jun 2017 20:35:47 GMT  
		Size: 52.6 MB (52614808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7f935097c1dc51b4ee616da0d59bfd42c2473fcb2a9a9c7ad1284437a50ba74`  
		Last Modified: Sat, 24 Jun 2017 19:48:42 GMT  
		Size: 2.1 KB (2067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d3be652286b116e49c14f129c65f4d393c06a93329f4233aca9a259f935dfbf`  
		Last Modified: Sat, 24 Jun 2017 19:48:41 GMT  
		Size: 1.3 MB (1304149 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93ca38c967a2ec51002eafaf0705cb0238590c5399b8cbd7d6e1776215cd288b`  
		Last Modified: Sat, 24 Jun 2017 19:48:44 GMT  
		Size: 7.1 MB (7114233 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:757f9036ad24fe9376b8ab2610b1bc7f8c8966c645d70305943d6299ffb7b25b`  
		Last Modified: Sat, 24 Jun 2017 19:48:40 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2278e49211f18cd08beadfe0e6d9903cb89c02c5a3ea5f2e4f8e2db71c734232`  
		Last Modified: Sat, 24 Jun 2017 19:48:40 GMT  
		Size: 4.5 KB (4489 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:717785ad82209310369b928cd3c4a5ca724ca956946df7f15c0dde0ef055891c`  
		Last Modified: Sat, 24 Jun 2017 19:48:40 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63d5177d701bdc3904fe89fbc6ec2248ca0aba76da0e3c9d8c2230387ec44183`  
		Last Modified: Sat, 24 Jun 2017 19:48:50 GMT  
		Size: 43.3 MB (43290774 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b71fb03d2bdf19951e69b9061b975ebf17bc712ffc54268d6aa84b216d5e9557`  
		Last Modified: Sat, 24 Jun 2017 19:48:38 GMT  
		Size: 7.1 KB (7094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8f2a0b376a0a57ce4e40cbcd997f826a2422229f6f4a8fe2149921b39abff8e`  
		Last Modified: Sat, 24 Jun 2017 19:48:38 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9686ffff9deeb0e99832706c2dce10c42ead6b5df8e6e857bb0630742b30733`  
		Last Modified: Sat, 24 Jun 2017 19:48:38 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba508d242abcdff4dbc4aefdd9230adbfc0e17a82b730266f2a0f283f51c37a0`  
		Last Modified: Sat, 24 Jun 2017 19:48:38 GMT  
		Size: 1.8 KB (1798 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8f09ded3eeca3f96ddebc718b5ebb1948ad7fac7d25a6771ef7793375bd90df`  
		Last Modified: Sat, 24 Jun 2017 19:48:38 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9`

```console
$ docker pull postgres@sha256:6d2f933d41ecf85d6291c5ae855caa59f1040c82c3adbfdca5d6ba60b8d37613
```

-	Platforms:
	-	linux; amd64

### `postgres:9` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.3 MB (104340164 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5fa273ee7568e8e05ebc54dc91e843228f91de91613072a5bebd969df6e88676`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Tue, 20 Jun 2017 20:13:32 GMT
ADD file:9c48682ff75c756544d4491472081a078edf5dd0bb5038d1cb850a1f9c480e3e in / 
# Tue, 20 Jun 2017 20:13:34 GMT
CMD ["bash"]
# Fri, 23 Jun 2017 04:07:15 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Fri, 23 Jun 2017 04:07:16 GMT
ENV GOSU_VERSION=1.7
# Fri, 23 Jun 2017 04:07:36 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 23 Jun 2017 04:07:49 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Fri, 23 Jun 2017 04:07:49 GMT
ENV LANG=en_US.utf8
# Fri, 23 Jun 2017 04:07:51 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 23 Jun 2017 04:07:54 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Fri, 23 Jun 2017 04:07:55 GMT
ENV PG_MAJOR=9.6
# Fri, 23 Jun 2017 04:07:56 GMT
ENV PG_VERSION=9.6.3-1.pgdg80+1
# Fri, 23 Jun 2017 04:07:57 GMT
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main' $PG_MAJOR > /etc/apt/sources.list.d/pgdg.list
# Fri, 23 Jun 2017 04:08:44 GMT
RUN apt-get update 	&& apt-get install -y postgresql-common 	&& sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf 	&& apt-get install -y 		postgresql-$PG_MAJOR=$PG_VERSION 		postgresql-contrib-$PG_MAJOR=$PG_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 04:08:46 GMT
RUN mv -v /usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample /usr/share/postgresql/$PG_MAJOR/ 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Fri, 23 Jun 2017 04:08:48 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 23 Jun 2017 04:08:49 GMT
ENV PATH=/usr/lib/postgresql/9.6/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Jun 2017 04:08:50 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 23 Jun 2017 04:08:51 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 23 Jun 2017 04:08:52 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 23 Jun 2017 04:08:53 GMT
COPY file:80a75a207cb3d72777ff2cb8654a6d03754b58aed9199464284f3587637e1403 in /usr/local/bin/ 
# Fri, 23 Jun 2017 04:08:55 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 23 Jun 2017 04:08:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 23 Jun 2017 04:08:57 GMT
EXPOSE 5432/tcp
# Fri, 23 Jun 2017 04:08:57 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:9f0706ba7422412cd468804fee456786f88bed94bf9aea6dde2a47f770d19d27`  
		Last Modified: Tue, 20 Jun 2017 20:35:47 GMT  
		Size: 52.6 MB (52614808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7f935097c1dc51b4ee616da0d59bfd42c2473fcb2a9a9c7ad1284437a50ba74`  
		Last Modified: Sat, 24 Jun 2017 19:48:42 GMT  
		Size: 2.1 KB (2067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d3be652286b116e49c14f129c65f4d393c06a93329f4233aca9a259f935dfbf`  
		Last Modified: Sat, 24 Jun 2017 19:48:41 GMT  
		Size: 1.3 MB (1304149 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93ca38c967a2ec51002eafaf0705cb0238590c5399b8cbd7d6e1776215cd288b`  
		Last Modified: Sat, 24 Jun 2017 19:48:44 GMT  
		Size: 7.1 MB (7114233 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:757f9036ad24fe9376b8ab2610b1bc7f8c8966c645d70305943d6299ffb7b25b`  
		Last Modified: Sat, 24 Jun 2017 19:48:40 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2278e49211f18cd08beadfe0e6d9903cb89c02c5a3ea5f2e4f8e2db71c734232`  
		Last Modified: Sat, 24 Jun 2017 19:48:40 GMT  
		Size: 4.5 KB (4489 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:717785ad82209310369b928cd3c4a5ca724ca956946df7f15c0dde0ef055891c`  
		Last Modified: Sat, 24 Jun 2017 19:48:40 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63d5177d701bdc3904fe89fbc6ec2248ca0aba76da0e3c9d8c2230387ec44183`  
		Last Modified: Sat, 24 Jun 2017 19:48:50 GMT  
		Size: 43.3 MB (43290774 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b71fb03d2bdf19951e69b9061b975ebf17bc712ffc54268d6aa84b216d5e9557`  
		Last Modified: Sat, 24 Jun 2017 19:48:38 GMT  
		Size: 7.1 KB (7094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8f2a0b376a0a57ce4e40cbcd997f826a2422229f6f4a8fe2149921b39abff8e`  
		Last Modified: Sat, 24 Jun 2017 19:48:38 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9686ffff9deeb0e99832706c2dce10c42ead6b5df8e6e857bb0630742b30733`  
		Last Modified: Sat, 24 Jun 2017 19:48:38 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba508d242abcdff4dbc4aefdd9230adbfc0e17a82b730266f2a0f283f51c37a0`  
		Last Modified: Sat, 24 Jun 2017 19:48:38 GMT  
		Size: 1.8 KB (1798 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8f09ded3eeca3f96ddebc718b5ebb1948ad7fac7d25a6771ef7793375bd90df`  
		Last Modified: Sat, 24 Jun 2017 19:48:38 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:latest`

```console
$ docker pull postgres@sha256:6d2f933d41ecf85d6291c5ae855caa59f1040c82c3adbfdca5d6ba60b8d37613
```

-	Platforms:
	-	linux; amd64

### `postgres:latest` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.3 MB (104340164 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5fa273ee7568e8e05ebc54dc91e843228f91de91613072a5bebd969df6e88676`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Tue, 20 Jun 2017 20:13:32 GMT
ADD file:9c48682ff75c756544d4491472081a078edf5dd0bb5038d1cb850a1f9c480e3e in / 
# Tue, 20 Jun 2017 20:13:34 GMT
CMD ["bash"]
# Fri, 23 Jun 2017 04:07:15 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Fri, 23 Jun 2017 04:07:16 GMT
ENV GOSU_VERSION=1.7
# Fri, 23 Jun 2017 04:07:36 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 23 Jun 2017 04:07:49 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Fri, 23 Jun 2017 04:07:49 GMT
ENV LANG=en_US.utf8
# Fri, 23 Jun 2017 04:07:51 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 23 Jun 2017 04:07:54 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Fri, 23 Jun 2017 04:07:55 GMT
ENV PG_MAJOR=9.6
# Fri, 23 Jun 2017 04:07:56 GMT
ENV PG_VERSION=9.6.3-1.pgdg80+1
# Fri, 23 Jun 2017 04:07:57 GMT
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main' $PG_MAJOR > /etc/apt/sources.list.d/pgdg.list
# Fri, 23 Jun 2017 04:08:44 GMT
RUN apt-get update 	&& apt-get install -y postgresql-common 	&& sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf 	&& apt-get install -y 		postgresql-$PG_MAJOR=$PG_VERSION 		postgresql-contrib-$PG_MAJOR=$PG_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 04:08:46 GMT
RUN mv -v /usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample /usr/share/postgresql/$PG_MAJOR/ 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Fri, 23 Jun 2017 04:08:48 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 23 Jun 2017 04:08:49 GMT
ENV PATH=/usr/lib/postgresql/9.6/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Jun 2017 04:08:50 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 23 Jun 2017 04:08:51 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 23 Jun 2017 04:08:52 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 23 Jun 2017 04:08:53 GMT
COPY file:80a75a207cb3d72777ff2cb8654a6d03754b58aed9199464284f3587637e1403 in /usr/local/bin/ 
# Fri, 23 Jun 2017 04:08:55 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 23 Jun 2017 04:08:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 23 Jun 2017 04:08:57 GMT
EXPOSE 5432/tcp
# Fri, 23 Jun 2017 04:08:57 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:9f0706ba7422412cd468804fee456786f88bed94bf9aea6dde2a47f770d19d27`  
		Last Modified: Tue, 20 Jun 2017 20:35:47 GMT  
		Size: 52.6 MB (52614808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7f935097c1dc51b4ee616da0d59bfd42c2473fcb2a9a9c7ad1284437a50ba74`  
		Last Modified: Sat, 24 Jun 2017 19:48:42 GMT  
		Size: 2.1 KB (2067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d3be652286b116e49c14f129c65f4d393c06a93329f4233aca9a259f935dfbf`  
		Last Modified: Sat, 24 Jun 2017 19:48:41 GMT  
		Size: 1.3 MB (1304149 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93ca38c967a2ec51002eafaf0705cb0238590c5399b8cbd7d6e1776215cd288b`  
		Last Modified: Sat, 24 Jun 2017 19:48:44 GMT  
		Size: 7.1 MB (7114233 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:757f9036ad24fe9376b8ab2610b1bc7f8c8966c645d70305943d6299ffb7b25b`  
		Last Modified: Sat, 24 Jun 2017 19:48:40 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2278e49211f18cd08beadfe0e6d9903cb89c02c5a3ea5f2e4f8e2db71c734232`  
		Last Modified: Sat, 24 Jun 2017 19:48:40 GMT  
		Size: 4.5 KB (4489 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:717785ad82209310369b928cd3c4a5ca724ca956946df7f15c0dde0ef055891c`  
		Last Modified: Sat, 24 Jun 2017 19:48:40 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63d5177d701bdc3904fe89fbc6ec2248ca0aba76da0e3c9d8c2230387ec44183`  
		Last Modified: Sat, 24 Jun 2017 19:48:50 GMT  
		Size: 43.3 MB (43290774 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b71fb03d2bdf19951e69b9061b975ebf17bc712ffc54268d6aa84b216d5e9557`  
		Last Modified: Sat, 24 Jun 2017 19:48:38 GMT  
		Size: 7.1 KB (7094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8f2a0b376a0a57ce4e40cbcd997f826a2422229f6f4a8fe2149921b39abff8e`  
		Last Modified: Sat, 24 Jun 2017 19:48:38 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9686ffff9deeb0e99832706c2dce10c42ead6b5df8e6e857bb0630742b30733`  
		Last Modified: Sat, 24 Jun 2017 19:48:38 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba508d242abcdff4dbc4aefdd9230adbfc0e17a82b730266f2a0f283f51c37a0`  
		Last Modified: Sat, 24 Jun 2017 19:48:38 GMT  
		Size: 1.8 KB (1798 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8f09ded3eeca3f96ddebc718b5ebb1948ad7fac7d25a6771ef7793375bd90df`  
		Last Modified: Sat, 24 Jun 2017 19:48:38 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.6.3-alpine`

```console
$ docker pull postgres@sha256:5eda6ed2f466aff615c625fc3956771076ed8e52bf10b9d773b4f14e6591e0fd
```

-	Platforms:
	-	linux; amd64

### `postgres:9.6.3-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.7 MB (14666174 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f2580abe343dd1ffa201c3b7595144286dfd58c94e2f4d807b4d5c9944560818`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 19 Jun 2017 16:56:25 GMT
ADD file:dc33e8c0381ed8cecdd07c4b77c58a0c1bfa3266629bbce3fc0e49a047fbdd62 in / 
# Mon, 19 Jun 2017 16:56:48 GMT
CMD ["/bin/sh"]
# Tue, 20 Jun 2017 00:06:24 GMT
RUN set -ex; 	postgresHome="$(getent passwd postgres)"; 	postgresHome="$(echo "$postgresHome" | cut -d: -f6)"; 	[ "$postgresHome" = '/var/lib/postgresql' ]; 	mkdir -p "$postgresHome"; 	chown -R postgres:postgres "$postgresHome"
# Tue, 20 Jun 2017 00:06:25 GMT
ENV LANG=en_US.utf8
# Tue, 20 Jun 2017 00:06:27 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 20 Jun 2017 00:06:29 GMT
ENV PG_MAJOR=9.6
# Tue, 20 Jun 2017 00:06:30 GMT
ENV PG_VERSION=9.6.3
# Tue, 20 Jun 2017 00:06:31 GMT
ENV PG_SHA256=1645b3736901f6d854e695a937389e68ff2066ce0cde9d73919d6ab7c995b9c6
# Tue, 20 Jun 2017 00:09:19 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl 		util-linux-dev 		zlib-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& wget -O config/config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Tue, 20 Jun 2017 00:09:21 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Tue, 20 Jun 2017 00:09:22 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Tue, 20 Jun 2017 00:09:23 GMT
ENV PATH=/usr/lib/postgresql/9.6/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 20 Jun 2017 00:09:24 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 20 Jun 2017 00:09:25 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Tue, 20 Jun 2017 00:09:26 GMT
VOLUME [/var/lib/postgresql/data]
# Tue, 20 Jun 2017 00:09:27 GMT
COPY file:0db93797e962937881947161a43da7695835a2b6d5ad1184d0886e35249b5e39 in /usr/local/bin/ 
# Tue, 20 Jun 2017 00:09:29 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 20 Jun 2017 00:09:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 20 Jun 2017 00:09:31 GMT
EXPOSE 5432/tcp
# Tue, 20 Jun 2017 00:09:32 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:c800c6a61b4898becded5aa2cd373c6549651b809d2317b6922cbb269b7bbd0c`  
		Last Modified: Mon, 19 Jun 2017 17:08:03 GMT  
		Size: 2.0 MB (1970311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cee79530d29c44c8fd6b9f4fde7efe6bec90f1d96c5edc98f2cd9739a28c729`  
		Last Modified: Sat, 24 Jun 2017 19:57:33 GMT  
		Size: 141.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6956b64ec92a968fd13dda50faf186e85500954eac53cfc57ed8220beb340bb0`  
		Last Modified: Sat, 24 Jun 2017 19:57:33 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c8cba0468487573b53e1dfcbf116681c4f037624e8a09c974ce6219f0283806`  
		Last Modified: Sat, 24 Jun 2017 19:57:37 GMT  
		Size: 12.7 MB (12686332 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6942ee1bd66e1e2638cc66a32faa0e9b91916abae598450f3ec2d3ff09d3198a`  
		Last Modified: Sat, 24 Jun 2017 19:57:31 GMT  
		Size: 7.1 KB (7059 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d42fd7ff3e5d4873a23d140f67e3cf512f3d0cc036577f702617b0883d04495`  
		Last Modified: Sat, 24 Jun 2017 19:57:31 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a698492a10fba5eec2cacf86f50b3c7cc8e12fd943f0dc32ac8fd5a9332613d`  
		Last Modified: Sat, 24 Jun 2017 19:57:30 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4902b557c84ef5b92a39e4a7648299d370ec517c33183727da3750a71f043437`  
		Last Modified: Sat, 24 Jun 2017 19:57:31 GMT  
		Size: 1.8 KB (1787 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3bb11d39824184e3b68da10b851b1fc5800a0e56bc2aa50559d0c27efe9f3e6`  
		Last Modified: Sat, 24 Jun 2017 19:57:31 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.6-alpine`

```console
$ docker pull postgres@sha256:5eda6ed2f466aff615c625fc3956771076ed8e52bf10b9d773b4f14e6591e0fd
```

-	Platforms:
	-	linux; amd64

### `postgres:9.6-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.7 MB (14666174 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f2580abe343dd1ffa201c3b7595144286dfd58c94e2f4d807b4d5c9944560818`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 19 Jun 2017 16:56:25 GMT
ADD file:dc33e8c0381ed8cecdd07c4b77c58a0c1bfa3266629bbce3fc0e49a047fbdd62 in / 
# Mon, 19 Jun 2017 16:56:48 GMT
CMD ["/bin/sh"]
# Tue, 20 Jun 2017 00:06:24 GMT
RUN set -ex; 	postgresHome="$(getent passwd postgres)"; 	postgresHome="$(echo "$postgresHome" | cut -d: -f6)"; 	[ "$postgresHome" = '/var/lib/postgresql' ]; 	mkdir -p "$postgresHome"; 	chown -R postgres:postgres "$postgresHome"
# Tue, 20 Jun 2017 00:06:25 GMT
ENV LANG=en_US.utf8
# Tue, 20 Jun 2017 00:06:27 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 20 Jun 2017 00:06:29 GMT
ENV PG_MAJOR=9.6
# Tue, 20 Jun 2017 00:06:30 GMT
ENV PG_VERSION=9.6.3
# Tue, 20 Jun 2017 00:06:31 GMT
ENV PG_SHA256=1645b3736901f6d854e695a937389e68ff2066ce0cde9d73919d6ab7c995b9c6
# Tue, 20 Jun 2017 00:09:19 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl 		util-linux-dev 		zlib-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& wget -O config/config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Tue, 20 Jun 2017 00:09:21 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Tue, 20 Jun 2017 00:09:22 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Tue, 20 Jun 2017 00:09:23 GMT
ENV PATH=/usr/lib/postgresql/9.6/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 20 Jun 2017 00:09:24 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 20 Jun 2017 00:09:25 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Tue, 20 Jun 2017 00:09:26 GMT
VOLUME [/var/lib/postgresql/data]
# Tue, 20 Jun 2017 00:09:27 GMT
COPY file:0db93797e962937881947161a43da7695835a2b6d5ad1184d0886e35249b5e39 in /usr/local/bin/ 
# Tue, 20 Jun 2017 00:09:29 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 20 Jun 2017 00:09:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 20 Jun 2017 00:09:31 GMT
EXPOSE 5432/tcp
# Tue, 20 Jun 2017 00:09:32 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:c800c6a61b4898becded5aa2cd373c6549651b809d2317b6922cbb269b7bbd0c`  
		Last Modified: Mon, 19 Jun 2017 17:08:03 GMT  
		Size: 2.0 MB (1970311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cee79530d29c44c8fd6b9f4fde7efe6bec90f1d96c5edc98f2cd9739a28c729`  
		Last Modified: Sat, 24 Jun 2017 19:57:33 GMT  
		Size: 141.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6956b64ec92a968fd13dda50faf186e85500954eac53cfc57ed8220beb340bb0`  
		Last Modified: Sat, 24 Jun 2017 19:57:33 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c8cba0468487573b53e1dfcbf116681c4f037624e8a09c974ce6219f0283806`  
		Last Modified: Sat, 24 Jun 2017 19:57:37 GMT  
		Size: 12.7 MB (12686332 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6942ee1bd66e1e2638cc66a32faa0e9b91916abae598450f3ec2d3ff09d3198a`  
		Last Modified: Sat, 24 Jun 2017 19:57:31 GMT  
		Size: 7.1 KB (7059 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d42fd7ff3e5d4873a23d140f67e3cf512f3d0cc036577f702617b0883d04495`  
		Last Modified: Sat, 24 Jun 2017 19:57:31 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a698492a10fba5eec2cacf86f50b3c7cc8e12fd943f0dc32ac8fd5a9332613d`  
		Last Modified: Sat, 24 Jun 2017 19:57:30 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4902b557c84ef5b92a39e4a7648299d370ec517c33183727da3750a71f043437`  
		Last Modified: Sat, 24 Jun 2017 19:57:31 GMT  
		Size: 1.8 KB (1787 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3bb11d39824184e3b68da10b851b1fc5800a0e56bc2aa50559d0c27efe9f3e6`  
		Last Modified: Sat, 24 Jun 2017 19:57:31 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9-alpine`

```console
$ docker pull postgres@sha256:5eda6ed2f466aff615c625fc3956771076ed8e52bf10b9d773b4f14e6591e0fd
```

-	Platforms:
	-	linux; amd64

### `postgres:9-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.7 MB (14666174 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f2580abe343dd1ffa201c3b7595144286dfd58c94e2f4d807b4d5c9944560818`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 19 Jun 2017 16:56:25 GMT
ADD file:dc33e8c0381ed8cecdd07c4b77c58a0c1bfa3266629bbce3fc0e49a047fbdd62 in / 
# Mon, 19 Jun 2017 16:56:48 GMT
CMD ["/bin/sh"]
# Tue, 20 Jun 2017 00:06:24 GMT
RUN set -ex; 	postgresHome="$(getent passwd postgres)"; 	postgresHome="$(echo "$postgresHome" | cut -d: -f6)"; 	[ "$postgresHome" = '/var/lib/postgresql' ]; 	mkdir -p "$postgresHome"; 	chown -R postgres:postgres "$postgresHome"
# Tue, 20 Jun 2017 00:06:25 GMT
ENV LANG=en_US.utf8
# Tue, 20 Jun 2017 00:06:27 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 20 Jun 2017 00:06:29 GMT
ENV PG_MAJOR=9.6
# Tue, 20 Jun 2017 00:06:30 GMT
ENV PG_VERSION=9.6.3
# Tue, 20 Jun 2017 00:06:31 GMT
ENV PG_SHA256=1645b3736901f6d854e695a937389e68ff2066ce0cde9d73919d6ab7c995b9c6
# Tue, 20 Jun 2017 00:09:19 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl 		util-linux-dev 		zlib-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& wget -O config/config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Tue, 20 Jun 2017 00:09:21 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Tue, 20 Jun 2017 00:09:22 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Tue, 20 Jun 2017 00:09:23 GMT
ENV PATH=/usr/lib/postgresql/9.6/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 20 Jun 2017 00:09:24 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 20 Jun 2017 00:09:25 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Tue, 20 Jun 2017 00:09:26 GMT
VOLUME [/var/lib/postgresql/data]
# Tue, 20 Jun 2017 00:09:27 GMT
COPY file:0db93797e962937881947161a43da7695835a2b6d5ad1184d0886e35249b5e39 in /usr/local/bin/ 
# Tue, 20 Jun 2017 00:09:29 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 20 Jun 2017 00:09:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 20 Jun 2017 00:09:31 GMT
EXPOSE 5432/tcp
# Tue, 20 Jun 2017 00:09:32 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:c800c6a61b4898becded5aa2cd373c6549651b809d2317b6922cbb269b7bbd0c`  
		Last Modified: Mon, 19 Jun 2017 17:08:03 GMT  
		Size: 2.0 MB (1970311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cee79530d29c44c8fd6b9f4fde7efe6bec90f1d96c5edc98f2cd9739a28c729`  
		Last Modified: Sat, 24 Jun 2017 19:57:33 GMT  
		Size: 141.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6956b64ec92a968fd13dda50faf186e85500954eac53cfc57ed8220beb340bb0`  
		Last Modified: Sat, 24 Jun 2017 19:57:33 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c8cba0468487573b53e1dfcbf116681c4f037624e8a09c974ce6219f0283806`  
		Last Modified: Sat, 24 Jun 2017 19:57:37 GMT  
		Size: 12.7 MB (12686332 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6942ee1bd66e1e2638cc66a32faa0e9b91916abae598450f3ec2d3ff09d3198a`  
		Last Modified: Sat, 24 Jun 2017 19:57:31 GMT  
		Size: 7.1 KB (7059 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d42fd7ff3e5d4873a23d140f67e3cf512f3d0cc036577f702617b0883d04495`  
		Last Modified: Sat, 24 Jun 2017 19:57:31 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a698492a10fba5eec2cacf86f50b3c7cc8e12fd943f0dc32ac8fd5a9332613d`  
		Last Modified: Sat, 24 Jun 2017 19:57:30 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4902b557c84ef5b92a39e4a7648299d370ec517c33183727da3750a71f043437`  
		Last Modified: Sat, 24 Jun 2017 19:57:31 GMT  
		Size: 1.8 KB (1787 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3bb11d39824184e3b68da10b851b1fc5800a0e56bc2aa50559d0c27efe9f3e6`  
		Last Modified: Sat, 24 Jun 2017 19:57:31 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:alpine`

```console
$ docker pull postgres@sha256:5eda6ed2f466aff615c625fc3956771076ed8e52bf10b9d773b4f14e6591e0fd
```

-	Platforms:
	-	linux; amd64

### `postgres:alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.7 MB (14666174 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f2580abe343dd1ffa201c3b7595144286dfd58c94e2f4d807b4d5c9944560818`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 19 Jun 2017 16:56:25 GMT
ADD file:dc33e8c0381ed8cecdd07c4b77c58a0c1bfa3266629bbce3fc0e49a047fbdd62 in / 
# Mon, 19 Jun 2017 16:56:48 GMT
CMD ["/bin/sh"]
# Tue, 20 Jun 2017 00:06:24 GMT
RUN set -ex; 	postgresHome="$(getent passwd postgres)"; 	postgresHome="$(echo "$postgresHome" | cut -d: -f6)"; 	[ "$postgresHome" = '/var/lib/postgresql' ]; 	mkdir -p "$postgresHome"; 	chown -R postgres:postgres "$postgresHome"
# Tue, 20 Jun 2017 00:06:25 GMT
ENV LANG=en_US.utf8
# Tue, 20 Jun 2017 00:06:27 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 20 Jun 2017 00:06:29 GMT
ENV PG_MAJOR=9.6
# Tue, 20 Jun 2017 00:06:30 GMT
ENV PG_VERSION=9.6.3
# Tue, 20 Jun 2017 00:06:31 GMT
ENV PG_SHA256=1645b3736901f6d854e695a937389e68ff2066ce0cde9d73919d6ab7c995b9c6
# Tue, 20 Jun 2017 00:09:19 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl 		util-linux-dev 		zlib-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& wget -O config/config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Tue, 20 Jun 2017 00:09:21 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Tue, 20 Jun 2017 00:09:22 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Tue, 20 Jun 2017 00:09:23 GMT
ENV PATH=/usr/lib/postgresql/9.6/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 20 Jun 2017 00:09:24 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 20 Jun 2017 00:09:25 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Tue, 20 Jun 2017 00:09:26 GMT
VOLUME [/var/lib/postgresql/data]
# Tue, 20 Jun 2017 00:09:27 GMT
COPY file:0db93797e962937881947161a43da7695835a2b6d5ad1184d0886e35249b5e39 in /usr/local/bin/ 
# Tue, 20 Jun 2017 00:09:29 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 20 Jun 2017 00:09:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 20 Jun 2017 00:09:31 GMT
EXPOSE 5432/tcp
# Tue, 20 Jun 2017 00:09:32 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:c800c6a61b4898becded5aa2cd373c6549651b809d2317b6922cbb269b7bbd0c`  
		Last Modified: Mon, 19 Jun 2017 17:08:03 GMT  
		Size: 2.0 MB (1970311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cee79530d29c44c8fd6b9f4fde7efe6bec90f1d96c5edc98f2cd9739a28c729`  
		Last Modified: Sat, 24 Jun 2017 19:57:33 GMT  
		Size: 141.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6956b64ec92a968fd13dda50faf186e85500954eac53cfc57ed8220beb340bb0`  
		Last Modified: Sat, 24 Jun 2017 19:57:33 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c8cba0468487573b53e1dfcbf116681c4f037624e8a09c974ce6219f0283806`  
		Last Modified: Sat, 24 Jun 2017 19:57:37 GMT  
		Size: 12.7 MB (12686332 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6942ee1bd66e1e2638cc66a32faa0e9b91916abae598450f3ec2d3ff09d3198a`  
		Last Modified: Sat, 24 Jun 2017 19:57:31 GMT  
		Size: 7.1 KB (7059 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d42fd7ff3e5d4873a23d140f67e3cf512f3d0cc036577f702617b0883d04495`  
		Last Modified: Sat, 24 Jun 2017 19:57:31 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a698492a10fba5eec2cacf86f50b3c7cc8e12fd943f0dc32ac8fd5a9332613d`  
		Last Modified: Sat, 24 Jun 2017 19:57:30 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4902b557c84ef5b92a39e4a7648299d370ec517c33183727da3750a71f043437`  
		Last Modified: Sat, 24 Jun 2017 19:57:31 GMT  
		Size: 1.8 KB (1787 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3bb11d39824184e3b68da10b851b1fc5800a0e56bc2aa50559d0c27efe9f3e6`  
		Last Modified: Sat, 24 Jun 2017 19:57:31 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.5.7`

```console
$ docker pull postgres@sha256:61d1bbac804def372d197e7cb8dcba5ce926807bbd3aefdc2df4688f4c45a67c
```

-	Platforms:
	-	linux; amd64

### `postgres:9.5.7` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **103.8 MB (103840507 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2112f9b3d4fdb53207591e1ed167bdd77b9774985c7af3cfa05c3a27026da296`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Tue, 20 Jun 2017 20:13:32 GMT
ADD file:9c48682ff75c756544d4491472081a078edf5dd0bb5038d1cb850a1f9c480e3e in / 
# Tue, 20 Jun 2017 20:13:34 GMT
CMD ["bash"]
# Fri, 23 Jun 2017 04:07:15 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Fri, 23 Jun 2017 04:07:16 GMT
ENV GOSU_VERSION=1.7
# Fri, 23 Jun 2017 04:07:36 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 23 Jun 2017 04:07:49 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Fri, 23 Jun 2017 04:07:49 GMT
ENV LANG=en_US.utf8
# Fri, 23 Jun 2017 04:07:51 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 23 Jun 2017 04:07:54 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Fri, 23 Jun 2017 04:09:24 GMT
ENV PG_MAJOR=9.5
# Fri, 23 Jun 2017 04:09:25 GMT
ENV PG_VERSION=9.5.7-1.pgdg80+1
# Fri, 23 Jun 2017 04:09:26 GMT
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main' $PG_MAJOR > /etc/apt/sources.list.d/pgdg.list
# Fri, 23 Jun 2017 04:10:09 GMT
RUN apt-get update 	&& apt-get install -y postgresql-common 	&& sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf 	&& apt-get install -y 		postgresql-$PG_MAJOR=$PG_VERSION 		postgresql-contrib-$PG_MAJOR=$PG_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 04:10:11 GMT
RUN mv -v /usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample /usr/share/postgresql/$PG_MAJOR/ 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Fri, 23 Jun 2017 04:10:13 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 23 Jun 2017 04:10:14 GMT
ENV PATH=/usr/lib/postgresql/9.5/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Jun 2017 04:10:15 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 23 Jun 2017 04:10:17 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 23 Jun 2017 04:10:18 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 23 Jun 2017 04:10:19 GMT
COPY file:80a75a207cb3d72777ff2cb8654a6d03754b58aed9199464284f3587637e1403 in /usr/local/bin/ 
# Fri, 23 Jun 2017 04:10:21 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 23 Jun 2017 04:10:22 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 23 Jun 2017 04:10:23 GMT
EXPOSE 5432/tcp
# Fri, 23 Jun 2017 04:10:24 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:9f0706ba7422412cd468804fee456786f88bed94bf9aea6dde2a47f770d19d27`  
		Last Modified: Tue, 20 Jun 2017 20:35:47 GMT  
		Size: 52.6 MB (52614808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7f935097c1dc51b4ee616da0d59bfd42c2473fcb2a9a9c7ad1284437a50ba74`  
		Last Modified: Sat, 24 Jun 2017 19:48:42 GMT  
		Size: 2.1 KB (2067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d3be652286b116e49c14f129c65f4d393c06a93329f4233aca9a259f935dfbf`  
		Last Modified: Sat, 24 Jun 2017 19:48:41 GMT  
		Size: 1.3 MB (1304149 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93ca38c967a2ec51002eafaf0705cb0238590c5399b8cbd7d6e1776215cd288b`  
		Last Modified: Sat, 24 Jun 2017 19:48:44 GMT  
		Size: 7.1 MB (7114233 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:757f9036ad24fe9376b8ab2610b1bc7f8c8966c645d70305943d6299ffb7b25b`  
		Last Modified: Sat, 24 Jun 2017 19:48:40 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2278e49211f18cd08beadfe0e6d9903cb89c02c5a3ea5f2e4f8e2db71c734232`  
		Last Modified: Sat, 24 Jun 2017 19:48:40 GMT  
		Size: 4.5 KB (4489 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93004dd287b1c188a5ad80915c1a24278a1a8f844c86b1b92de967bc2ea2635f`  
		Last Modified: Sat, 24 Jun 2017 19:59:30 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1cc33e046163805028a75d5c7dbb85978b5989ff2e96e4b1c0ed61d4abdc715a`  
		Last Modified: Sat, 24 Jun 2017 19:59:39 GMT  
		Size: 42.8 MB (42791392 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44cdf936c9150fecc542bb677c0f1c7ba1bfa323a3acd386c88e7c25c39dcbbc`  
		Last Modified: Sat, 24 Jun 2017 19:59:27 GMT  
		Size: 6.8 KB (6820 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b40e04f9fd99dd5677bb51d6455f0e9c33efbf8fa6161bd53859dd223f7be95`  
		Last Modified: Sat, 24 Jun 2017 19:59:27 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b899a3af69554f9149547af23953fe8a4b7208b0e7e351c9623f58af6b569c99`  
		Last Modified: Sat, 24 Jun 2017 19:59:28 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4df0e4ff04db29aec7f7c6605ffed6e79085725e8581112eb7987e5c96ccfc33`  
		Last Modified: Sat, 24 Jun 2017 19:59:27 GMT  
		Size: 1.8 KB (1796 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a939df40826294b81e46bbbdcb596733f74847cada9a562cc27b9715b73371f`  
		Last Modified: Sat, 24 Jun 2017 19:59:28 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.5`

```console
$ docker pull postgres@sha256:61d1bbac804def372d197e7cb8dcba5ce926807bbd3aefdc2df4688f4c45a67c
```

-	Platforms:
	-	linux; amd64

### `postgres:9.5` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **103.8 MB (103840507 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2112f9b3d4fdb53207591e1ed167bdd77b9774985c7af3cfa05c3a27026da296`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Tue, 20 Jun 2017 20:13:32 GMT
ADD file:9c48682ff75c756544d4491472081a078edf5dd0bb5038d1cb850a1f9c480e3e in / 
# Tue, 20 Jun 2017 20:13:34 GMT
CMD ["bash"]
# Fri, 23 Jun 2017 04:07:15 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Fri, 23 Jun 2017 04:07:16 GMT
ENV GOSU_VERSION=1.7
# Fri, 23 Jun 2017 04:07:36 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 23 Jun 2017 04:07:49 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Fri, 23 Jun 2017 04:07:49 GMT
ENV LANG=en_US.utf8
# Fri, 23 Jun 2017 04:07:51 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 23 Jun 2017 04:07:54 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Fri, 23 Jun 2017 04:09:24 GMT
ENV PG_MAJOR=9.5
# Fri, 23 Jun 2017 04:09:25 GMT
ENV PG_VERSION=9.5.7-1.pgdg80+1
# Fri, 23 Jun 2017 04:09:26 GMT
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main' $PG_MAJOR > /etc/apt/sources.list.d/pgdg.list
# Fri, 23 Jun 2017 04:10:09 GMT
RUN apt-get update 	&& apt-get install -y postgresql-common 	&& sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf 	&& apt-get install -y 		postgresql-$PG_MAJOR=$PG_VERSION 		postgresql-contrib-$PG_MAJOR=$PG_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 04:10:11 GMT
RUN mv -v /usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample /usr/share/postgresql/$PG_MAJOR/ 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Fri, 23 Jun 2017 04:10:13 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 23 Jun 2017 04:10:14 GMT
ENV PATH=/usr/lib/postgresql/9.5/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Jun 2017 04:10:15 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 23 Jun 2017 04:10:17 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 23 Jun 2017 04:10:18 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 23 Jun 2017 04:10:19 GMT
COPY file:80a75a207cb3d72777ff2cb8654a6d03754b58aed9199464284f3587637e1403 in /usr/local/bin/ 
# Fri, 23 Jun 2017 04:10:21 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 23 Jun 2017 04:10:22 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 23 Jun 2017 04:10:23 GMT
EXPOSE 5432/tcp
# Fri, 23 Jun 2017 04:10:24 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:9f0706ba7422412cd468804fee456786f88bed94bf9aea6dde2a47f770d19d27`  
		Last Modified: Tue, 20 Jun 2017 20:35:47 GMT  
		Size: 52.6 MB (52614808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7f935097c1dc51b4ee616da0d59bfd42c2473fcb2a9a9c7ad1284437a50ba74`  
		Last Modified: Sat, 24 Jun 2017 19:48:42 GMT  
		Size: 2.1 KB (2067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d3be652286b116e49c14f129c65f4d393c06a93329f4233aca9a259f935dfbf`  
		Last Modified: Sat, 24 Jun 2017 19:48:41 GMT  
		Size: 1.3 MB (1304149 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93ca38c967a2ec51002eafaf0705cb0238590c5399b8cbd7d6e1776215cd288b`  
		Last Modified: Sat, 24 Jun 2017 19:48:44 GMT  
		Size: 7.1 MB (7114233 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:757f9036ad24fe9376b8ab2610b1bc7f8c8966c645d70305943d6299ffb7b25b`  
		Last Modified: Sat, 24 Jun 2017 19:48:40 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2278e49211f18cd08beadfe0e6d9903cb89c02c5a3ea5f2e4f8e2db71c734232`  
		Last Modified: Sat, 24 Jun 2017 19:48:40 GMT  
		Size: 4.5 KB (4489 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93004dd287b1c188a5ad80915c1a24278a1a8f844c86b1b92de967bc2ea2635f`  
		Last Modified: Sat, 24 Jun 2017 19:59:30 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1cc33e046163805028a75d5c7dbb85978b5989ff2e96e4b1c0ed61d4abdc715a`  
		Last Modified: Sat, 24 Jun 2017 19:59:39 GMT  
		Size: 42.8 MB (42791392 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44cdf936c9150fecc542bb677c0f1c7ba1bfa323a3acd386c88e7c25c39dcbbc`  
		Last Modified: Sat, 24 Jun 2017 19:59:27 GMT  
		Size: 6.8 KB (6820 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b40e04f9fd99dd5677bb51d6455f0e9c33efbf8fa6161bd53859dd223f7be95`  
		Last Modified: Sat, 24 Jun 2017 19:59:27 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b899a3af69554f9149547af23953fe8a4b7208b0e7e351c9623f58af6b569c99`  
		Last Modified: Sat, 24 Jun 2017 19:59:28 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4df0e4ff04db29aec7f7c6605ffed6e79085725e8581112eb7987e5c96ccfc33`  
		Last Modified: Sat, 24 Jun 2017 19:59:27 GMT  
		Size: 1.8 KB (1796 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a939df40826294b81e46bbbdcb596733f74847cada9a562cc27b9715b73371f`  
		Last Modified: Sat, 24 Jun 2017 19:59:28 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.5.7-alpine`

```console
$ docker pull postgres@sha256:31e45da2eee2cad30b5807a791f1fa0d4d2cddb9c9fcf87a7a26a99792ddc2b2
```

-	Platforms:
	-	linux; amd64

### `postgres:9.5.7-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.4 MB (14376608 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bef98d3afcbe310162c32e6ec06dd2293c7005627b9321f64b61d3f759a69af3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 19 Jun 2017 16:56:25 GMT
ADD file:dc33e8c0381ed8cecdd07c4b77c58a0c1bfa3266629bbce3fc0e49a047fbdd62 in / 
# Mon, 19 Jun 2017 16:56:48 GMT
CMD ["/bin/sh"]
# Tue, 20 Jun 2017 00:06:24 GMT
RUN set -ex; 	postgresHome="$(getent passwd postgres)"; 	postgresHome="$(echo "$postgresHome" | cut -d: -f6)"; 	[ "$postgresHome" = '/var/lib/postgresql' ]; 	mkdir -p "$postgresHome"; 	chown -R postgres:postgres "$postgresHome"
# Tue, 20 Jun 2017 00:06:25 GMT
ENV LANG=en_US.utf8
# Tue, 20 Jun 2017 00:06:27 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 20 Jun 2017 00:10:08 GMT
ENV PG_MAJOR=9.5
# Tue, 20 Jun 2017 00:10:09 GMT
ENV PG_VERSION=9.5.7
# Tue, 20 Jun 2017 00:10:10 GMT
ENV PG_SHA256=8b1e936f82109325decc0f5575e846b93fb4fd384e8c4bde83ff5e7f87fc6cad
# Tue, 20 Jun 2017 00:13:05 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl 		util-linux-dev 		zlib-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& wget -O config/config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Tue, 20 Jun 2017 00:13:08 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Tue, 20 Jun 2017 00:13:10 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Tue, 20 Jun 2017 00:13:11 GMT
ENV PATH=/usr/lib/postgresql/9.5/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 20 Jun 2017 00:13:12 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 20 Jun 2017 00:13:14 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Tue, 20 Jun 2017 00:13:15 GMT
VOLUME [/var/lib/postgresql/data]
# Tue, 20 Jun 2017 00:13:17 GMT
COPY file:0db93797e962937881947161a43da7695835a2b6d5ad1184d0886e35249b5e39 in /usr/local/bin/ 
# Tue, 20 Jun 2017 00:13:19 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 20 Jun 2017 00:13:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 20 Jun 2017 00:13:21 GMT
EXPOSE 5432/tcp
# Tue, 20 Jun 2017 00:13:22 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:c800c6a61b4898becded5aa2cd373c6549651b809d2317b6922cbb269b7bbd0c`  
		Last Modified: Mon, 19 Jun 2017 17:08:03 GMT  
		Size: 2.0 MB (1970311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cee79530d29c44c8fd6b9f4fde7efe6bec90f1d96c5edc98f2cd9739a28c729`  
		Last Modified: Sat, 24 Jun 2017 19:57:33 GMT  
		Size: 141.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6956b64ec92a968fd13dda50faf186e85500954eac53cfc57ed8220beb340bb0`  
		Last Modified: Sat, 24 Jun 2017 19:57:33 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:083885b7a5162672e5f320f3e8c47d60bc6f6f896fdba4f54ae3617bab57ee17`  
		Last Modified: Sat, 24 Jun 2017 20:00:43 GMT  
		Size: 12.4 MB (12397035 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:579fcda332a1a0e4c5b2b38cc081ec017b9d9d0fd5d8bddbbea3da5998214b92`  
		Last Modified: Sat, 24 Jun 2017 20:00:39 GMT  
		Size: 6.8 KB (6789 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:193dc2b2714b083a4c2b5f1d0c9fb9820d874a025b917ef5c818071edf426c83`  
		Last Modified: Sat, 24 Jun 2017 20:00:38 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5be48631a198c22f828a75710ea5688532787604709e925cfa2f9c9ce9668b7e`  
		Last Modified: Sat, 24 Jun 2017 20:00:38 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42594adef52f5b201eb1409ee01170e43d37280ecbfa371317c78a8ce119cec9`  
		Last Modified: Sat, 24 Jun 2017 20:00:38 GMT  
		Size: 1.8 KB (1789 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae42846bb19f33935dde5e95ec5537c32274e375417bcceb19df65fcea1ab778`  
		Last Modified: Sat, 24 Jun 2017 20:00:38 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.5-alpine`

```console
$ docker pull postgres@sha256:31e45da2eee2cad30b5807a791f1fa0d4d2cddb9c9fcf87a7a26a99792ddc2b2
```

-	Platforms:
	-	linux; amd64

### `postgres:9.5-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.4 MB (14376608 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bef98d3afcbe310162c32e6ec06dd2293c7005627b9321f64b61d3f759a69af3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 19 Jun 2017 16:56:25 GMT
ADD file:dc33e8c0381ed8cecdd07c4b77c58a0c1bfa3266629bbce3fc0e49a047fbdd62 in / 
# Mon, 19 Jun 2017 16:56:48 GMT
CMD ["/bin/sh"]
# Tue, 20 Jun 2017 00:06:24 GMT
RUN set -ex; 	postgresHome="$(getent passwd postgres)"; 	postgresHome="$(echo "$postgresHome" | cut -d: -f6)"; 	[ "$postgresHome" = '/var/lib/postgresql' ]; 	mkdir -p "$postgresHome"; 	chown -R postgres:postgres "$postgresHome"
# Tue, 20 Jun 2017 00:06:25 GMT
ENV LANG=en_US.utf8
# Tue, 20 Jun 2017 00:06:27 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 20 Jun 2017 00:10:08 GMT
ENV PG_MAJOR=9.5
# Tue, 20 Jun 2017 00:10:09 GMT
ENV PG_VERSION=9.5.7
# Tue, 20 Jun 2017 00:10:10 GMT
ENV PG_SHA256=8b1e936f82109325decc0f5575e846b93fb4fd384e8c4bde83ff5e7f87fc6cad
# Tue, 20 Jun 2017 00:13:05 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl 		util-linux-dev 		zlib-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& wget -O config/config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Tue, 20 Jun 2017 00:13:08 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Tue, 20 Jun 2017 00:13:10 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Tue, 20 Jun 2017 00:13:11 GMT
ENV PATH=/usr/lib/postgresql/9.5/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 20 Jun 2017 00:13:12 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 20 Jun 2017 00:13:14 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Tue, 20 Jun 2017 00:13:15 GMT
VOLUME [/var/lib/postgresql/data]
# Tue, 20 Jun 2017 00:13:17 GMT
COPY file:0db93797e962937881947161a43da7695835a2b6d5ad1184d0886e35249b5e39 in /usr/local/bin/ 
# Tue, 20 Jun 2017 00:13:19 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 20 Jun 2017 00:13:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 20 Jun 2017 00:13:21 GMT
EXPOSE 5432/tcp
# Tue, 20 Jun 2017 00:13:22 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:c800c6a61b4898becded5aa2cd373c6549651b809d2317b6922cbb269b7bbd0c`  
		Last Modified: Mon, 19 Jun 2017 17:08:03 GMT  
		Size: 2.0 MB (1970311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cee79530d29c44c8fd6b9f4fde7efe6bec90f1d96c5edc98f2cd9739a28c729`  
		Last Modified: Sat, 24 Jun 2017 19:57:33 GMT  
		Size: 141.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6956b64ec92a968fd13dda50faf186e85500954eac53cfc57ed8220beb340bb0`  
		Last Modified: Sat, 24 Jun 2017 19:57:33 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:083885b7a5162672e5f320f3e8c47d60bc6f6f896fdba4f54ae3617bab57ee17`  
		Last Modified: Sat, 24 Jun 2017 20:00:43 GMT  
		Size: 12.4 MB (12397035 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:579fcda332a1a0e4c5b2b38cc081ec017b9d9d0fd5d8bddbbea3da5998214b92`  
		Last Modified: Sat, 24 Jun 2017 20:00:39 GMT  
		Size: 6.8 KB (6789 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:193dc2b2714b083a4c2b5f1d0c9fb9820d874a025b917ef5c818071edf426c83`  
		Last Modified: Sat, 24 Jun 2017 20:00:38 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5be48631a198c22f828a75710ea5688532787604709e925cfa2f9c9ce9668b7e`  
		Last Modified: Sat, 24 Jun 2017 20:00:38 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42594adef52f5b201eb1409ee01170e43d37280ecbfa371317c78a8ce119cec9`  
		Last Modified: Sat, 24 Jun 2017 20:00:38 GMT  
		Size: 1.8 KB (1789 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae42846bb19f33935dde5e95ec5537c32274e375417bcceb19df65fcea1ab778`  
		Last Modified: Sat, 24 Jun 2017 20:00:38 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.4.12`

```console
$ docker pull postgres@sha256:a6b7c1d8e7188e3f65666b68773f73e4f41638eefc0bba06239e21fe685c63c4
```

-	Platforms:
	-	linux; amd64

### `postgres:9.4.12` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **103.5 MB (103507738 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3af4320fe6bcfb3ef9f3b4e1bb9286d76e02a82f79f56c4fec706a407dd5d072`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Tue, 20 Jun 2017 20:13:32 GMT
ADD file:9c48682ff75c756544d4491472081a078edf5dd0bb5038d1cb850a1f9c480e3e in / 
# Tue, 20 Jun 2017 20:13:34 GMT
CMD ["bash"]
# Fri, 23 Jun 2017 04:07:15 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Fri, 23 Jun 2017 04:07:16 GMT
ENV GOSU_VERSION=1.7
# Fri, 23 Jun 2017 04:07:36 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 23 Jun 2017 04:07:49 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Fri, 23 Jun 2017 04:07:49 GMT
ENV LANG=en_US.utf8
# Fri, 23 Jun 2017 04:07:51 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 23 Jun 2017 04:07:54 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Fri, 23 Jun 2017 04:10:50 GMT
ENV PG_MAJOR=9.4
# Fri, 23 Jun 2017 04:10:50 GMT
ENV PG_VERSION=9.4.12-1.pgdg80+1
# Fri, 23 Jun 2017 04:10:52 GMT
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main' $PG_MAJOR > /etc/apt/sources.list.d/pgdg.list
# Fri, 23 Jun 2017 04:11:31 GMT
RUN apt-get update 	&& apt-get install -y postgresql-common 	&& sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf 	&& apt-get install -y 		postgresql-$PG_MAJOR=$PG_VERSION 		postgresql-contrib-$PG_MAJOR=$PG_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 04:11:33 GMT
RUN mv -v /usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample /usr/share/postgresql/$PG_MAJOR/ 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Fri, 23 Jun 2017 04:11:35 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 23 Jun 2017 04:11:36 GMT
ENV PATH=/usr/lib/postgresql/9.4/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Jun 2017 04:11:37 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 23 Jun 2017 04:11:38 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 23 Jun 2017 04:11:39 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 23 Jun 2017 04:11:41 GMT
COPY file:80a75a207cb3d72777ff2cb8654a6d03754b58aed9199464284f3587637e1403 in /usr/local/bin/ 
# Fri, 23 Jun 2017 04:11:42 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 23 Jun 2017 04:11:43 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 23 Jun 2017 04:11:44 GMT
EXPOSE 5432/tcp
# Fri, 23 Jun 2017 04:11:45 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:9f0706ba7422412cd468804fee456786f88bed94bf9aea6dde2a47f770d19d27`  
		Last Modified: Tue, 20 Jun 2017 20:35:47 GMT  
		Size: 52.6 MB (52614808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7f935097c1dc51b4ee616da0d59bfd42c2473fcb2a9a9c7ad1284437a50ba74`  
		Last Modified: Sat, 24 Jun 2017 19:48:42 GMT  
		Size: 2.1 KB (2067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d3be652286b116e49c14f129c65f4d393c06a93329f4233aca9a259f935dfbf`  
		Last Modified: Sat, 24 Jun 2017 19:48:41 GMT  
		Size: 1.3 MB (1304149 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93ca38c967a2ec51002eafaf0705cb0238590c5399b8cbd7d6e1776215cd288b`  
		Last Modified: Sat, 24 Jun 2017 19:48:44 GMT  
		Size: 7.1 MB (7114233 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:757f9036ad24fe9376b8ab2610b1bc7f8c8966c645d70305943d6299ffb7b25b`  
		Last Modified: Sat, 24 Jun 2017 19:48:40 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2278e49211f18cd08beadfe0e6d9903cb89c02c5a3ea5f2e4f8e2db71c734232`  
		Last Modified: Sat, 24 Jun 2017 19:48:40 GMT  
		Size: 4.5 KB (4489 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a02b83f29a8386e22a6a2febd1f79e0720859e5245ed1763842c72abe4801337`  
		Last Modified: Sat, 24 Jun 2017 20:01:42 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:275c47c878278a86ad060bbd530bb7e68fdd21f19d61f216540bae18418695f8`  
		Last Modified: Sat, 24 Jun 2017 20:01:52 GMT  
		Size: 42.5 MB (42458763 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc201ada3c98ebc7c622928de479fec08ade91714d1f37b644313ecf656757c2`  
		Last Modified: Sat, 24 Jun 2017 20:01:40 GMT  
		Size: 6.7 KB (6679 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83c717f31ca4414152403e72318de4b95d94c96a70ecbf874ee9e20f73a2ff98`  
		Last Modified: Sat, 24 Jun 2017 20:01:41 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35f38ecff2cf69a6eedbcf3bc78b8ea4d3a57fff6600c6d1b5c19175c37f1f33`  
		Last Modified: Sat, 24 Jun 2017 20:01:40 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba2112dcbd09d366873988c5a9d853cac145ae061960d47c04cf8e406a312ffc`  
		Last Modified: Sat, 24 Jun 2017 20:01:40 GMT  
		Size: 1.8 KB (1796 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc0888db3fbf2ab3423fc5b8324fbab717b336fd0e0d6dd49bda7e8872894faf`  
		Last Modified: Sat, 24 Jun 2017 20:01:40 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.4`

```console
$ docker pull postgres@sha256:a6b7c1d8e7188e3f65666b68773f73e4f41638eefc0bba06239e21fe685c63c4
```

-	Platforms:
	-	linux; amd64

### `postgres:9.4` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **103.5 MB (103507738 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3af4320fe6bcfb3ef9f3b4e1bb9286d76e02a82f79f56c4fec706a407dd5d072`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Tue, 20 Jun 2017 20:13:32 GMT
ADD file:9c48682ff75c756544d4491472081a078edf5dd0bb5038d1cb850a1f9c480e3e in / 
# Tue, 20 Jun 2017 20:13:34 GMT
CMD ["bash"]
# Fri, 23 Jun 2017 04:07:15 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Fri, 23 Jun 2017 04:07:16 GMT
ENV GOSU_VERSION=1.7
# Fri, 23 Jun 2017 04:07:36 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 23 Jun 2017 04:07:49 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Fri, 23 Jun 2017 04:07:49 GMT
ENV LANG=en_US.utf8
# Fri, 23 Jun 2017 04:07:51 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 23 Jun 2017 04:07:54 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Fri, 23 Jun 2017 04:10:50 GMT
ENV PG_MAJOR=9.4
# Fri, 23 Jun 2017 04:10:50 GMT
ENV PG_VERSION=9.4.12-1.pgdg80+1
# Fri, 23 Jun 2017 04:10:52 GMT
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main' $PG_MAJOR > /etc/apt/sources.list.d/pgdg.list
# Fri, 23 Jun 2017 04:11:31 GMT
RUN apt-get update 	&& apt-get install -y postgresql-common 	&& sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf 	&& apt-get install -y 		postgresql-$PG_MAJOR=$PG_VERSION 		postgresql-contrib-$PG_MAJOR=$PG_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 04:11:33 GMT
RUN mv -v /usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample /usr/share/postgresql/$PG_MAJOR/ 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Fri, 23 Jun 2017 04:11:35 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 23 Jun 2017 04:11:36 GMT
ENV PATH=/usr/lib/postgresql/9.4/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Jun 2017 04:11:37 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 23 Jun 2017 04:11:38 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 23 Jun 2017 04:11:39 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 23 Jun 2017 04:11:41 GMT
COPY file:80a75a207cb3d72777ff2cb8654a6d03754b58aed9199464284f3587637e1403 in /usr/local/bin/ 
# Fri, 23 Jun 2017 04:11:42 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 23 Jun 2017 04:11:43 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 23 Jun 2017 04:11:44 GMT
EXPOSE 5432/tcp
# Fri, 23 Jun 2017 04:11:45 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:9f0706ba7422412cd468804fee456786f88bed94bf9aea6dde2a47f770d19d27`  
		Last Modified: Tue, 20 Jun 2017 20:35:47 GMT  
		Size: 52.6 MB (52614808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7f935097c1dc51b4ee616da0d59bfd42c2473fcb2a9a9c7ad1284437a50ba74`  
		Last Modified: Sat, 24 Jun 2017 19:48:42 GMT  
		Size: 2.1 KB (2067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d3be652286b116e49c14f129c65f4d393c06a93329f4233aca9a259f935dfbf`  
		Last Modified: Sat, 24 Jun 2017 19:48:41 GMT  
		Size: 1.3 MB (1304149 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93ca38c967a2ec51002eafaf0705cb0238590c5399b8cbd7d6e1776215cd288b`  
		Last Modified: Sat, 24 Jun 2017 19:48:44 GMT  
		Size: 7.1 MB (7114233 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:757f9036ad24fe9376b8ab2610b1bc7f8c8966c645d70305943d6299ffb7b25b`  
		Last Modified: Sat, 24 Jun 2017 19:48:40 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2278e49211f18cd08beadfe0e6d9903cb89c02c5a3ea5f2e4f8e2db71c734232`  
		Last Modified: Sat, 24 Jun 2017 19:48:40 GMT  
		Size: 4.5 KB (4489 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a02b83f29a8386e22a6a2febd1f79e0720859e5245ed1763842c72abe4801337`  
		Last Modified: Sat, 24 Jun 2017 20:01:42 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:275c47c878278a86ad060bbd530bb7e68fdd21f19d61f216540bae18418695f8`  
		Last Modified: Sat, 24 Jun 2017 20:01:52 GMT  
		Size: 42.5 MB (42458763 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc201ada3c98ebc7c622928de479fec08ade91714d1f37b644313ecf656757c2`  
		Last Modified: Sat, 24 Jun 2017 20:01:40 GMT  
		Size: 6.7 KB (6679 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83c717f31ca4414152403e72318de4b95d94c96a70ecbf874ee9e20f73a2ff98`  
		Last Modified: Sat, 24 Jun 2017 20:01:41 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35f38ecff2cf69a6eedbcf3bc78b8ea4d3a57fff6600c6d1b5c19175c37f1f33`  
		Last Modified: Sat, 24 Jun 2017 20:01:40 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba2112dcbd09d366873988c5a9d853cac145ae061960d47c04cf8e406a312ffc`  
		Last Modified: Sat, 24 Jun 2017 20:01:40 GMT  
		Size: 1.8 KB (1796 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc0888db3fbf2ab3423fc5b8324fbab717b336fd0e0d6dd49bda7e8872894faf`  
		Last Modified: Sat, 24 Jun 2017 20:01:40 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.4.12-alpine`

```console
$ docker pull postgres@sha256:b852abb3cbff6fb925dc65e736389f0a1facb8ff6a714c15f653cb5519c10a1c
```

-	Platforms:
	-	linux; amd64

### `postgres:9.4.12-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.2 MB (14242854 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4f2f7f57724edff1c584c1daca268d083b4a0dcb805b8cf44cd14913209a706e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 19 Jun 2017 16:56:25 GMT
ADD file:dc33e8c0381ed8cecdd07c4b77c58a0c1bfa3266629bbce3fc0e49a047fbdd62 in / 
# Mon, 19 Jun 2017 16:56:48 GMT
CMD ["/bin/sh"]
# Tue, 20 Jun 2017 00:06:24 GMT
RUN set -ex; 	postgresHome="$(getent passwd postgres)"; 	postgresHome="$(echo "$postgresHome" | cut -d: -f6)"; 	[ "$postgresHome" = '/var/lib/postgresql' ]; 	mkdir -p "$postgresHome"; 	chown -R postgres:postgres "$postgresHome"
# Tue, 20 Jun 2017 00:06:25 GMT
ENV LANG=en_US.utf8
# Tue, 20 Jun 2017 00:06:27 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 20 Jun 2017 00:13:53 GMT
ENV PG_MAJOR=9.4
# Tue, 20 Jun 2017 00:13:54 GMT
ENV PG_VERSION=9.4.12
# Tue, 20 Jun 2017 00:13:55 GMT
ENV PG_SHA256=fca055481875d1c49e31c28443f56472a1474b3fbe25b7ae64440c6118f82e64
# Tue, 20 Jun 2017 00:16:51 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl 		util-linux-dev 		zlib-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& wget -O config/config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Tue, 20 Jun 2017 00:16:53 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Tue, 20 Jun 2017 00:16:55 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Tue, 20 Jun 2017 00:16:56 GMT
ENV PATH=/usr/lib/postgresql/9.4/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 20 Jun 2017 00:16:57 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 20 Jun 2017 00:16:59 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Tue, 20 Jun 2017 00:17:00 GMT
VOLUME [/var/lib/postgresql/data]
# Tue, 20 Jun 2017 00:17:02 GMT
COPY file:0db93797e962937881947161a43da7695835a2b6d5ad1184d0886e35249b5e39 in /usr/local/bin/ 
# Tue, 20 Jun 2017 00:17:04 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 20 Jun 2017 00:17:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 20 Jun 2017 00:17:06 GMT
EXPOSE 5432/tcp
# Tue, 20 Jun 2017 00:17:06 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:c800c6a61b4898becded5aa2cd373c6549651b809d2317b6922cbb269b7bbd0c`  
		Last Modified: Mon, 19 Jun 2017 17:08:03 GMT  
		Size: 2.0 MB (1970311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cee79530d29c44c8fd6b9f4fde7efe6bec90f1d96c5edc98f2cd9739a28c729`  
		Last Modified: Sat, 24 Jun 2017 19:57:33 GMT  
		Size: 141.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6956b64ec92a968fd13dda50faf186e85500954eac53cfc57ed8220beb340bb0`  
		Last Modified: Sat, 24 Jun 2017 19:57:33 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2effae0f37f6c7cd01b626621820f089f6c2d2b94cc7d7d6c3856571c649cc6c`  
		Last Modified: Sat, 24 Jun 2017 20:02:57 GMT  
		Size: 12.3 MB (12263429 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8baf4c152b982ac487e3cd426eba46773d30ebb79ef06700cc2e3fedf1b84d60`  
		Last Modified: Sat, 24 Jun 2017 20:02:51 GMT  
		Size: 6.6 KB (6646 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a6363f56b4ba089e549189528ed2f8a05e7877fcc869fb2421360c435694b9f`  
		Last Modified: Sat, 24 Jun 2017 20:02:51 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da255accf68f7b08a09ed35b02b112828bc26543d904978da14a60d171647c91`  
		Last Modified: Sat, 24 Jun 2017 20:02:51 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f95bc80cd666a7fbb63c3d1c5638bb7f9d698089dcff97e66120d66d5ecd1b0`  
		Last Modified: Sat, 24 Jun 2017 20:02:51 GMT  
		Size: 1.8 KB (1786 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6eebc20a3d2fdea4e217000029f7cca3d931a4df9cb39ab55effbffd8b10b240`  
		Last Modified: Sat, 24 Jun 2017 20:02:51 GMT  
		Size: 119.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.4-alpine`

```console
$ docker pull postgres@sha256:b852abb3cbff6fb925dc65e736389f0a1facb8ff6a714c15f653cb5519c10a1c
```

-	Platforms:
	-	linux; amd64

### `postgres:9.4-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.2 MB (14242854 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4f2f7f57724edff1c584c1daca268d083b4a0dcb805b8cf44cd14913209a706e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 19 Jun 2017 16:56:25 GMT
ADD file:dc33e8c0381ed8cecdd07c4b77c58a0c1bfa3266629bbce3fc0e49a047fbdd62 in / 
# Mon, 19 Jun 2017 16:56:48 GMT
CMD ["/bin/sh"]
# Tue, 20 Jun 2017 00:06:24 GMT
RUN set -ex; 	postgresHome="$(getent passwd postgres)"; 	postgresHome="$(echo "$postgresHome" | cut -d: -f6)"; 	[ "$postgresHome" = '/var/lib/postgresql' ]; 	mkdir -p "$postgresHome"; 	chown -R postgres:postgres "$postgresHome"
# Tue, 20 Jun 2017 00:06:25 GMT
ENV LANG=en_US.utf8
# Tue, 20 Jun 2017 00:06:27 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 20 Jun 2017 00:13:53 GMT
ENV PG_MAJOR=9.4
# Tue, 20 Jun 2017 00:13:54 GMT
ENV PG_VERSION=9.4.12
# Tue, 20 Jun 2017 00:13:55 GMT
ENV PG_SHA256=fca055481875d1c49e31c28443f56472a1474b3fbe25b7ae64440c6118f82e64
# Tue, 20 Jun 2017 00:16:51 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl 		util-linux-dev 		zlib-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& wget -O config/config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Tue, 20 Jun 2017 00:16:53 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Tue, 20 Jun 2017 00:16:55 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Tue, 20 Jun 2017 00:16:56 GMT
ENV PATH=/usr/lib/postgresql/9.4/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 20 Jun 2017 00:16:57 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 20 Jun 2017 00:16:59 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Tue, 20 Jun 2017 00:17:00 GMT
VOLUME [/var/lib/postgresql/data]
# Tue, 20 Jun 2017 00:17:02 GMT
COPY file:0db93797e962937881947161a43da7695835a2b6d5ad1184d0886e35249b5e39 in /usr/local/bin/ 
# Tue, 20 Jun 2017 00:17:04 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 20 Jun 2017 00:17:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 20 Jun 2017 00:17:06 GMT
EXPOSE 5432/tcp
# Tue, 20 Jun 2017 00:17:06 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:c800c6a61b4898becded5aa2cd373c6549651b809d2317b6922cbb269b7bbd0c`  
		Last Modified: Mon, 19 Jun 2017 17:08:03 GMT  
		Size: 2.0 MB (1970311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cee79530d29c44c8fd6b9f4fde7efe6bec90f1d96c5edc98f2cd9739a28c729`  
		Last Modified: Sat, 24 Jun 2017 19:57:33 GMT  
		Size: 141.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6956b64ec92a968fd13dda50faf186e85500954eac53cfc57ed8220beb340bb0`  
		Last Modified: Sat, 24 Jun 2017 19:57:33 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2effae0f37f6c7cd01b626621820f089f6c2d2b94cc7d7d6c3856571c649cc6c`  
		Last Modified: Sat, 24 Jun 2017 20:02:57 GMT  
		Size: 12.3 MB (12263429 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8baf4c152b982ac487e3cd426eba46773d30ebb79ef06700cc2e3fedf1b84d60`  
		Last Modified: Sat, 24 Jun 2017 20:02:51 GMT  
		Size: 6.6 KB (6646 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a6363f56b4ba089e549189528ed2f8a05e7877fcc869fb2421360c435694b9f`  
		Last Modified: Sat, 24 Jun 2017 20:02:51 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da255accf68f7b08a09ed35b02b112828bc26543d904978da14a60d171647c91`  
		Last Modified: Sat, 24 Jun 2017 20:02:51 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f95bc80cd666a7fbb63c3d1c5638bb7f9d698089dcff97e66120d66d5ecd1b0`  
		Last Modified: Sat, 24 Jun 2017 20:02:51 GMT  
		Size: 1.8 KB (1786 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6eebc20a3d2fdea4e217000029f7cca3d931a4df9cb39ab55effbffd8b10b240`  
		Last Modified: Sat, 24 Jun 2017 20:02:51 GMT  
		Size: 119.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.3.17`

```console
$ docker pull postgres@sha256:d51a9239e8c493af851015e686753a7b8bb0c547ddd7440aa75f06c78cdce568
```

-	Platforms:
	-	linux; amd64

### `postgres:9.3.17` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **103.2 MB (103151718 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7667035071620034c63d4b2ac894fd034e5da64d29a2884bb8fccc8641137b63`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Tue, 20 Jun 2017 20:13:32 GMT
ADD file:9c48682ff75c756544d4491472081a078edf5dd0bb5038d1cb850a1f9c480e3e in / 
# Tue, 20 Jun 2017 20:13:34 GMT
CMD ["bash"]
# Fri, 23 Jun 2017 04:07:15 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Fri, 23 Jun 2017 04:07:16 GMT
ENV GOSU_VERSION=1.7
# Fri, 23 Jun 2017 04:07:36 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 23 Jun 2017 04:07:49 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Fri, 23 Jun 2017 04:07:49 GMT
ENV LANG=en_US.utf8
# Fri, 23 Jun 2017 04:07:51 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 23 Jun 2017 04:07:54 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Fri, 23 Jun 2017 04:12:12 GMT
ENV PG_MAJOR=9.3
# Fri, 23 Jun 2017 04:12:13 GMT
ENV PG_VERSION=9.3.17-1.pgdg80+1
# Fri, 23 Jun 2017 04:12:14 GMT
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main' $PG_MAJOR > /etc/apt/sources.list.d/pgdg.list
# Fri, 23 Jun 2017 04:12:50 GMT
RUN apt-get update 	&& apt-get install -y postgresql-common 	&& sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf 	&& apt-get install -y 		postgresql-$PG_MAJOR=$PG_VERSION 		postgresql-contrib-$PG_MAJOR=$PG_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 04:12:52 GMT
RUN mv -v /usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample /usr/share/postgresql/$PG_MAJOR/ 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Fri, 23 Jun 2017 04:12:54 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 23 Jun 2017 04:12:54 GMT
ENV PATH=/usr/lib/postgresql/9.3/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Jun 2017 04:12:55 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 23 Jun 2017 04:12:57 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 23 Jun 2017 04:12:58 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 23 Jun 2017 04:13:00 GMT
COPY file:80a75a207cb3d72777ff2cb8654a6d03754b58aed9199464284f3587637e1403 in /usr/local/bin/ 
# Fri, 23 Jun 2017 04:13:01 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 23 Jun 2017 04:13:02 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 23 Jun 2017 04:13:03 GMT
EXPOSE 5432/tcp
# Fri, 23 Jun 2017 04:13:04 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:9f0706ba7422412cd468804fee456786f88bed94bf9aea6dde2a47f770d19d27`  
		Last Modified: Tue, 20 Jun 2017 20:35:47 GMT  
		Size: 52.6 MB (52614808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7f935097c1dc51b4ee616da0d59bfd42c2473fcb2a9a9c7ad1284437a50ba74`  
		Last Modified: Sat, 24 Jun 2017 19:48:42 GMT  
		Size: 2.1 KB (2067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d3be652286b116e49c14f129c65f4d393c06a93329f4233aca9a259f935dfbf`  
		Last Modified: Sat, 24 Jun 2017 19:48:41 GMT  
		Size: 1.3 MB (1304149 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93ca38c967a2ec51002eafaf0705cb0238590c5399b8cbd7d6e1776215cd288b`  
		Last Modified: Sat, 24 Jun 2017 19:48:44 GMT  
		Size: 7.1 MB (7114233 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:757f9036ad24fe9376b8ab2610b1bc7f8c8966c645d70305943d6299ffb7b25b`  
		Last Modified: Sat, 24 Jun 2017 19:48:40 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2278e49211f18cd08beadfe0e6d9903cb89c02c5a3ea5f2e4f8e2db71c734232`  
		Last Modified: Sat, 24 Jun 2017 19:48:40 GMT  
		Size: 4.5 KB (4489 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a43b4317937cd6531229bad60aacfde1f82b3ebe4da1ae2cece9d77ed9c9bb70`  
		Last Modified: Sat, 24 Jun 2017 20:03:58 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19d3cda833a1e277c97385df17ea5cd83921e576bfb044a3e4884926ace905f2`  
		Last Modified: Sat, 24 Jun 2017 20:04:07 GMT  
		Size: 42.1 MB (42102929 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55997330e9471fca92bcaac1316060f46bd8163cebbdec906ba8ea8f3a62a1ae`  
		Last Modified: Sat, 24 Jun 2017 20:03:56 GMT  
		Size: 6.5 KB (6496 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e69c4c877a3e34b2a35ac48d9c2333e3dde3a5119490cf08c93144b22e85ee01`  
		Last Modified: Sat, 24 Jun 2017 20:03:56 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2972241f4f42aa1443e8e10e8a04d5349bda1868c1aba561d689f5c5de7ce43`  
		Last Modified: Sat, 24 Jun 2017 20:03:55 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84a367de74c2ee340a535cb95c09ed00625782b699f6bb1b3e9854805fd89563`  
		Last Modified: Sat, 24 Jun 2017 20:03:55 GMT  
		Size: 1.8 KB (1795 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ee1fe395c17ceabb23e251bf2a15782ab991243d5ad9f979d5bfa8d1e7f9527`  
		Last Modified: Sat, 24 Jun 2017 20:03:55 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.3`

```console
$ docker pull postgres@sha256:d51a9239e8c493af851015e686753a7b8bb0c547ddd7440aa75f06c78cdce568
```

-	Platforms:
	-	linux; amd64

### `postgres:9.3` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **103.2 MB (103151718 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7667035071620034c63d4b2ac894fd034e5da64d29a2884bb8fccc8641137b63`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Tue, 20 Jun 2017 20:13:32 GMT
ADD file:9c48682ff75c756544d4491472081a078edf5dd0bb5038d1cb850a1f9c480e3e in / 
# Tue, 20 Jun 2017 20:13:34 GMT
CMD ["bash"]
# Fri, 23 Jun 2017 04:07:15 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Fri, 23 Jun 2017 04:07:16 GMT
ENV GOSU_VERSION=1.7
# Fri, 23 Jun 2017 04:07:36 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 23 Jun 2017 04:07:49 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Fri, 23 Jun 2017 04:07:49 GMT
ENV LANG=en_US.utf8
# Fri, 23 Jun 2017 04:07:51 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 23 Jun 2017 04:07:54 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Fri, 23 Jun 2017 04:12:12 GMT
ENV PG_MAJOR=9.3
# Fri, 23 Jun 2017 04:12:13 GMT
ENV PG_VERSION=9.3.17-1.pgdg80+1
# Fri, 23 Jun 2017 04:12:14 GMT
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main' $PG_MAJOR > /etc/apt/sources.list.d/pgdg.list
# Fri, 23 Jun 2017 04:12:50 GMT
RUN apt-get update 	&& apt-get install -y postgresql-common 	&& sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf 	&& apt-get install -y 		postgresql-$PG_MAJOR=$PG_VERSION 		postgresql-contrib-$PG_MAJOR=$PG_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 04:12:52 GMT
RUN mv -v /usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample /usr/share/postgresql/$PG_MAJOR/ 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Fri, 23 Jun 2017 04:12:54 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 23 Jun 2017 04:12:54 GMT
ENV PATH=/usr/lib/postgresql/9.3/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Jun 2017 04:12:55 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 23 Jun 2017 04:12:57 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 23 Jun 2017 04:12:58 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 23 Jun 2017 04:13:00 GMT
COPY file:80a75a207cb3d72777ff2cb8654a6d03754b58aed9199464284f3587637e1403 in /usr/local/bin/ 
# Fri, 23 Jun 2017 04:13:01 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 23 Jun 2017 04:13:02 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 23 Jun 2017 04:13:03 GMT
EXPOSE 5432/tcp
# Fri, 23 Jun 2017 04:13:04 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:9f0706ba7422412cd468804fee456786f88bed94bf9aea6dde2a47f770d19d27`  
		Last Modified: Tue, 20 Jun 2017 20:35:47 GMT  
		Size: 52.6 MB (52614808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7f935097c1dc51b4ee616da0d59bfd42c2473fcb2a9a9c7ad1284437a50ba74`  
		Last Modified: Sat, 24 Jun 2017 19:48:42 GMT  
		Size: 2.1 KB (2067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d3be652286b116e49c14f129c65f4d393c06a93329f4233aca9a259f935dfbf`  
		Last Modified: Sat, 24 Jun 2017 19:48:41 GMT  
		Size: 1.3 MB (1304149 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93ca38c967a2ec51002eafaf0705cb0238590c5399b8cbd7d6e1776215cd288b`  
		Last Modified: Sat, 24 Jun 2017 19:48:44 GMT  
		Size: 7.1 MB (7114233 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:757f9036ad24fe9376b8ab2610b1bc7f8c8966c645d70305943d6299ffb7b25b`  
		Last Modified: Sat, 24 Jun 2017 19:48:40 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2278e49211f18cd08beadfe0e6d9903cb89c02c5a3ea5f2e4f8e2db71c734232`  
		Last Modified: Sat, 24 Jun 2017 19:48:40 GMT  
		Size: 4.5 KB (4489 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a43b4317937cd6531229bad60aacfde1f82b3ebe4da1ae2cece9d77ed9c9bb70`  
		Last Modified: Sat, 24 Jun 2017 20:03:58 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19d3cda833a1e277c97385df17ea5cd83921e576bfb044a3e4884926ace905f2`  
		Last Modified: Sat, 24 Jun 2017 20:04:07 GMT  
		Size: 42.1 MB (42102929 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55997330e9471fca92bcaac1316060f46bd8163cebbdec906ba8ea8f3a62a1ae`  
		Last Modified: Sat, 24 Jun 2017 20:03:56 GMT  
		Size: 6.5 KB (6496 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e69c4c877a3e34b2a35ac48d9c2333e3dde3a5119490cf08c93144b22e85ee01`  
		Last Modified: Sat, 24 Jun 2017 20:03:56 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2972241f4f42aa1443e8e10e8a04d5349bda1868c1aba561d689f5c5de7ce43`  
		Last Modified: Sat, 24 Jun 2017 20:03:55 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84a367de74c2ee340a535cb95c09ed00625782b699f6bb1b3e9854805fd89563`  
		Last Modified: Sat, 24 Jun 2017 20:03:55 GMT  
		Size: 1.8 KB (1795 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ee1fe395c17ceabb23e251bf2a15782ab991243d5ad9f979d5bfa8d1e7f9527`  
		Last Modified: Sat, 24 Jun 2017 20:03:55 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.3.17-alpine`

```console
$ docker pull postgres@sha256:bd5492f64a3706ea4b8f5f47a47e3b9f5973de389e8382a761499bf7b108e1de
```

-	Platforms:
	-	linux; amd64

### `postgres:9.3.17-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.0 MB (13953348 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:deeaa5610d51c89a007ca6206ab7c3d741779b313a5d714769d892144c4675cb`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 19 Jun 2017 16:56:25 GMT
ADD file:dc33e8c0381ed8cecdd07c4b77c58a0c1bfa3266629bbce3fc0e49a047fbdd62 in / 
# Mon, 19 Jun 2017 16:56:48 GMT
CMD ["/bin/sh"]
# Tue, 20 Jun 2017 00:06:24 GMT
RUN set -ex; 	postgresHome="$(getent passwd postgres)"; 	postgresHome="$(echo "$postgresHome" | cut -d: -f6)"; 	[ "$postgresHome" = '/var/lib/postgresql' ]; 	mkdir -p "$postgresHome"; 	chown -R postgres:postgres "$postgresHome"
# Tue, 20 Jun 2017 00:06:25 GMT
ENV LANG=en_US.utf8
# Tue, 20 Jun 2017 00:06:27 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 20 Jun 2017 00:17:39 GMT
ENV PG_MAJOR=9.3
# Tue, 20 Jun 2017 00:17:40 GMT
ENV PG_VERSION=9.3.17
# Tue, 20 Jun 2017 00:17:41 GMT
ENV PG_SHA256=9c03e5f280cfe9bd202fa01af773eb146abd8ab3065f7279d574c568f6948dbe
# Tue, 20 Jun 2017 00:17:43 GMT
ENV OSSP_UUID_VERSION=1.6.2
# Tue, 20 Jun 2017 00:17:43 GMT
ENV OSSP_UUID_SHA256=11a615225baa5f8bb686824423f50e4427acd3f70d394765bdff32801f0fd5b0
# Tue, 20 Jun 2017 00:20:26 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl 		util-linux-dev 		zlib-dev 		&& wget -O uuid.tar.gz "https://www.mirrorservice.org/sites/ftp.ossp.org/pkg/lib/uuid/uuid-$OSSP_UUID_VERSION.tar.gz" 	&& echo "$OSSP_UUID_SHA256 *uuid.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/ossp-uuid 	&& tar 		--extract 		--file uuid.tar.gz 		--directory /usr/src/ossp-uuid 		--strip-components 1 	&& rm uuid.tar.gz 	&& ( 		cd /usr/src/ossp-uuid 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		&& wget -O config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 		&& wget -O config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 		&& ./configure 			--build="$gnuArch" 			--prefix=/usr/local 		&& make -j "$(nproc)" 		&& make install 	) 	&& rm -rf /usr/src/ossp-uuid 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& wget -O config/config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--disable-rpath 		--with-ossp-uuid 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Tue, 20 Jun 2017 00:27:21 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Tue, 20 Jun 2017 00:27:22 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Tue, 20 Jun 2017 00:27:23 GMT
ENV PATH=/usr/lib/postgresql/9.3/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 20 Jun 2017 00:27:24 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 20 Jun 2017 00:27:48 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Tue, 20 Jun 2017 00:27:49 GMT
VOLUME [/var/lib/postgresql/data]
# Tue, 20 Jun 2017 00:27:50 GMT
COPY file:0db93797e962937881947161a43da7695835a2b6d5ad1184d0886e35249b5e39 in /usr/local/bin/ 
# Tue, 20 Jun 2017 00:28:14 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 20 Jun 2017 00:28:15 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 20 Jun 2017 00:28:16 GMT
EXPOSE 5432/tcp
# Tue, 20 Jun 2017 00:28:17 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:c800c6a61b4898becded5aa2cd373c6549651b809d2317b6922cbb269b7bbd0c`  
		Last Modified: Mon, 19 Jun 2017 17:08:03 GMT  
		Size: 2.0 MB (1970311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cee79530d29c44c8fd6b9f4fde7efe6bec90f1d96c5edc98f2cd9739a28c729`  
		Last Modified: Sat, 24 Jun 2017 19:57:33 GMT  
		Size: 141.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6956b64ec92a968fd13dda50faf186e85500954eac53cfc57ed8220beb340bb0`  
		Last Modified: Sat, 24 Jun 2017 19:57:33 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:812dfcb1d7afee68f32986e736c5da9fc7e1abd312ad030cc7b0b4688feacd7d`  
		Last Modified: Sat, 24 Jun 2017 20:05:13 GMT  
		Size: 12.0 MB (11974102 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:399c15cab4643460304a5ca41da5cbfa1bcffb00d0c5e21af740f2e45b07b4ab`  
		Last Modified: Sat, 24 Jun 2017 20:05:08 GMT  
		Size: 6.5 KB (6463 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2bef650cbf2c0a0843b403bbd9575c4caef808d218e0bb9693f254f4248e52b9`  
		Last Modified: Sat, 24 Jun 2017 20:05:08 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:385639f79041690e5621d0bcce5a96ba797f89913cb335b88b3e9151bcad88f3`  
		Last Modified: Sat, 24 Jun 2017 20:05:08 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69fe5ff156293b34feeeee034f768eb2c66ec54763046e58fb836d6e1b98916f`  
		Last Modified: Sat, 24 Jun 2017 20:05:08 GMT  
		Size: 1.8 KB (1789 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8df56064b2b8033e537098f2ee817ce27bd1f65171e8e44c02ba1840811e0f4`  
		Last Modified: Sat, 24 Jun 2017 20:05:07 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.3-alpine`

```console
$ docker pull postgres@sha256:bd5492f64a3706ea4b8f5f47a47e3b9f5973de389e8382a761499bf7b108e1de
```

-	Platforms:
	-	linux; amd64

### `postgres:9.3-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.0 MB (13953348 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:deeaa5610d51c89a007ca6206ab7c3d741779b313a5d714769d892144c4675cb`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 19 Jun 2017 16:56:25 GMT
ADD file:dc33e8c0381ed8cecdd07c4b77c58a0c1bfa3266629bbce3fc0e49a047fbdd62 in / 
# Mon, 19 Jun 2017 16:56:48 GMT
CMD ["/bin/sh"]
# Tue, 20 Jun 2017 00:06:24 GMT
RUN set -ex; 	postgresHome="$(getent passwd postgres)"; 	postgresHome="$(echo "$postgresHome" | cut -d: -f6)"; 	[ "$postgresHome" = '/var/lib/postgresql' ]; 	mkdir -p "$postgresHome"; 	chown -R postgres:postgres "$postgresHome"
# Tue, 20 Jun 2017 00:06:25 GMT
ENV LANG=en_US.utf8
# Tue, 20 Jun 2017 00:06:27 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 20 Jun 2017 00:17:39 GMT
ENV PG_MAJOR=9.3
# Tue, 20 Jun 2017 00:17:40 GMT
ENV PG_VERSION=9.3.17
# Tue, 20 Jun 2017 00:17:41 GMT
ENV PG_SHA256=9c03e5f280cfe9bd202fa01af773eb146abd8ab3065f7279d574c568f6948dbe
# Tue, 20 Jun 2017 00:17:43 GMT
ENV OSSP_UUID_VERSION=1.6.2
# Tue, 20 Jun 2017 00:17:43 GMT
ENV OSSP_UUID_SHA256=11a615225baa5f8bb686824423f50e4427acd3f70d394765bdff32801f0fd5b0
# Tue, 20 Jun 2017 00:20:26 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl 		util-linux-dev 		zlib-dev 		&& wget -O uuid.tar.gz "https://www.mirrorservice.org/sites/ftp.ossp.org/pkg/lib/uuid/uuid-$OSSP_UUID_VERSION.tar.gz" 	&& echo "$OSSP_UUID_SHA256 *uuid.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/ossp-uuid 	&& tar 		--extract 		--file uuid.tar.gz 		--directory /usr/src/ossp-uuid 		--strip-components 1 	&& rm uuid.tar.gz 	&& ( 		cd /usr/src/ossp-uuid 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		&& wget -O config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 		&& wget -O config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 		&& ./configure 			--build="$gnuArch" 			--prefix=/usr/local 		&& make -j "$(nproc)" 		&& make install 	) 	&& rm -rf /usr/src/ossp-uuid 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& wget -O config/config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--disable-rpath 		--with-ossp-uuid 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Tue, 20 Jun 2017 00:27:21 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Tue, 20 Jun 2017 00:27:22 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Tue, 20 Jun 2017 00:27:23 GMT
ENV PATH=/usr/lib/postgresql/9.3/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 20 Jun 2017 00:27:24 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 20 Jun 2017 00:27:48 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Tue, 20 Jun 2017 00:27:49 GMT
VOLUME [/var/lib/postgresql/data]
# Tue, 20 Jun 2017 00:27:50 GMT
COPY file:0db93797e962937881947161a43da7695835a2b6d5ad1184d0886e35249b5e39 in /usr/local/bin/ 
# Tue, 20 Jun 2017 00:28:14 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 20 Jun 2017 00:28:15 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 20 Jun 2017 00:28:16 GMT
EXPOSE 5432/tcp
# Tue, 20 Jun 2017 00:28:17 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:c800c6a61b4898becded5aa2cd373c6549651b809d2317b6922cbb269b7bbd0c`  
		Last Modified: Mon, 19 Jun 2017 17:08:03 GMT  
		Size: 2.0 MB (1970311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cee79530d29c44c8fd6b9f4fde7efe6bec90f1d96c5edc98f2cd9739a28c729`  
		Last Modified: Sat, 24 Jun 2017 19:57:33 GMT  
		Size: 141.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6956b64ec92a968fd13dda50faf186e85500954eac53cfc57ed8220beb340bb0`  
		Last Modified: Sat, 24 Jun 2017 19:57:33 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:812dfcb1d7afee68f32986e736c5da9fc7e1abd312ad030cc7b0b4688feacd7d`  
		Last Modified: Sat, 24 Jun 2017 20:05:13 GMT  
		Size: 12.0 MB (11974102 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:399c15cab4643460304a5ca41da5cbfa1bcffb00d0c5e21af740f2e45b07b4ab`  
		Last Modified: Sat, 24 Jun 2017 20:05:08 GMT  
		Size: 6.5 KB (6463 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2bef650cbf2c0a0843b403bbd9575c4caef808d218e0bb9693f254f4248e52b9`  
		Last Modified: Sat, 24 Jun 2017 20:05:08 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:385639f79041690e5621d0bcce5a96ba797f89913cb335b88b3e9151bcad88f3`  
		Last Modified: Sat, 24 Jun 2017 20:05:08 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69fe5ff156293b34feeeee034f768eb2c66ec54763046e58fb836d6e1b98916f`  
		Last Modified: Sat, 24 Jun 2017 20:05:08 GMT  
		Size: 1.8 KB (1789 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8df56064b2b8033e537098f2ee817ce27bd1f65171e8e44c02ba1840811e0f4`  
		Last Modified: Sat, 24 Jun 2017 20:05:07 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.2.21`

```console
$ docker pull postgres@sha256:0d0ebfc05d62a738e58115d888b57ef22708a33a2d9fcba5d24398946218a1af
```

-	Platforms:
	-	linux; amd64

### `postgres:9.2.21` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **103.0 MB (102991129 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:52c65a2015b998f950e22602a7c252f7d5dbb000189c4efc3da14046842c574d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Tue, 20 Jun 2017 20:13:32 GMT
ADD file:9c48682ff75c756544d4491472081a078edf5dd0bb5038d1cb850a1f9c480e3e in / 
# Tue, 20 Jun 2017 20:13:34 GMT
CMD ["bash"]
# Fri, 23 Jun 2017 04:07:15 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Fri, 23 Jun 2017 04:07:16 GMT
ENV GOSU_VERSION=1.7
# Fri, 23 Jun 2017 04:07:36 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 23 Jun 2017 04:07:49 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Fri, 23 Jun 2017 04:07:49 GMT
ENV LANG=en_US.utf8
# Fri, 23 Jun 2017 04:07:51 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 23 Jun 2017 04:07:54 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Fri, 23 Jun 2017 04:13:30 GMT
ENV PG_MAJOR=9.2
# Fri, 23 Jun 2017 04:13:31 GMT
ENV PG_VERSION=9.2.21-1.pgdg80+1
# Fri, 23 Jun 2017 04:13:33 GMT
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main' $PG_MAJOR > /etc/apt/sources.list.d/pgdg.list
# Fri, 23 Jun 2017 04:14:14 GMT
RUN apt-get update 	&& apt-get install -y postgresql-common 	&& sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf 	&& apt-get install -y 		postgresql-$PG_MAJOR=$PG_VERSION 		postgresql-contrib-$PG_MAJOR=$PG_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 04:14:16 GMT
RUN mv -v /usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample /usr/share/postgresql/$PG_MAJOR/ 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Fri, 23 Jun 2017 04:14:18 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 23 Jun 2017 04:14:19 GMT
ENV PATH=/usr/lib/postgresql/9.2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Jun 2017 04:14:20 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 23 Jun 2017 04:14:22 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 23 Jun 2017 04:14:23 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 23 Jun 2017 04:14:24 GMT
COPY file:80a75a207cb3d72777ff2cb8654a6d03754b58aed9199464284f3587637e1403 in /usr/local/bin/ 
# Fri, 23 Jun 2017 04:14:26 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 23 Jun 2017 04:14:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 23 Jun 2017 04:14:28 GMT
EXPOSE 5432/tcp
# Fri, 23 Jun 2017 04:14:29 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:9f0706ba7422412cd468804fee456786f88bed94bf9aea6dde2a47f770d19d27`  
		Last Modified: Tue, 20 Jun 2017 20:35:47 GMT  
		Size: 52.6 MB (52614808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7f935097c1dc51b4ee616da0d59bfd42c2473fcb2a9a9c7ad1284437a50ba74`  
		Last Modified: Sat, 24 Jun 2017 19:48:42 GMT  
		Size: 2.1 KB (2067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d3be652286b116e49c14f129c65f4d393c06a93329f4233aca9a259f935dfbf`  
		Last Modified: Sat, 24 Jun 2017 19:48:41 GMT  
		Size: 1.3 MB (1304149 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93ca38c967a2ec51002eafaf0705cb0238590c5399b8cbd7d6e1776215cd288b`  
		Last Modified: Sat, 24 Jun 2017 19:48:44 GMT  
		Size: 7.1 MB (7114233 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:757f9036ad24fe9376b8ab2610b1bc7f8c8966c645d70305943d6299ffb7b25b`  
		Last Modified: Sat, 24 Jun 2017 19:48:40 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2278e49211f18cd08beadfe0e6d9903cb89c02c5a3ea5f2e4f8e2db71c734232`  
		Last Modified: Sat, 24 Jun 2017 19:48:40 GMT  
		Size: 4.5 KB (4489 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81e59514eb5954b7cfdf923dc63b3caab04055bcc485cc1a3d26a282ef1b058a`  
		Last Modified: Sat, 24 Jun 2017 20:06:13 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:233cf47a6d2ac533467324ec461c66b841e4fb3c6c9b7cb95c8f8a42202d8d63`  
		Last Modified: Sat, 24 Jun 2017 20:06:24 GMT  
		Size: 41.9 MB (41942398 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f96ba5c12df885ae6fd23a5bf5324124d05bd3edceeed61d7125ab60e3080c37`  
		Last Modified: Sat, 24 Jun 2017 20:06:10 GMT  
		Size: 6.4 KB (6436 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fee561e6e8a2814f13f6f1c9b86d87c09e6cad33200bbe49adf9754393d5451`  
		Last Modified: Sat, 24 Jun 2017 20:06:11 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6652fb23d13d87c7c5e9db615a9dfcb56b43f8ec4abc8d57c8560145b548884`  
		Last Modified: Sat, 24 Jun 2017 20:06:11 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1a79ea399bd2ea261750de5199dd87c6e1c34e4c577bdeb0ef8640372e82efb`  
		Last Modified: Sat, 24 Jun 2017 20:06:11 GMT  
		Size: 1.8 KB (1797 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73fb76d447d1f865ec67bd98d81caed87d7742c1060eaba7d718323b96e95e99`  
		Last Modified: Sat, 24 Jun 2017 20:06:10 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.2`

```console
$ docker pull postgres@sha256:0d0ebfc05d62a738e58115d888b57ef22708a33a2d9fcba5d24398946218a1af
```

-	Platforms:
	-	linux; amd64

### `postgres:9.2` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **103.0 MB (102991129 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:52c65a2015b998f950e22602a7c252f7d5dbb000189c4efc3da14046842c574d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Tue, 20 Jun 2017 20:13:32 GMT
ADD file:9c48682ff75c756544d4491472081a078edf5dd0bb5038d1cb850a1f9c480e3e in / 
# Tue, 20 Jun 2017 20:13:34 GMT
CMD ["bash"]
# Fri, 23 Jun 2017 04:07:15 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Fri, 23 Jun 2017 04:07:16 GMT
ENV GOSU_VERSION=1.7
# Fri, 23 Jun 2017 04:07:36 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 23 Jun 2017 04:07:49 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Fri, 23 Jun 2017 04:07:49 GMT
ENV LANG=en_US.utf8
# Fri, 23 Jun 2017 04:07:51 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 23 Jun 2017 04:07:54 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Fri, 23 Jun 2017 04:13:30 GMT
ENV PG_MAJOR=9.2
# Fri, 23 Jun 2017 04:13:31 GMT
ENV PG_VERSION=9.2.21-1.pgdg80+1
# Fri, 23 Jun 2017 04:13:33 GMT
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main' $PG_MAJOR > /etc/apt/sources.list.d/pgdg.list
# Fri, 23 Jun 2017 04:14:14 GMT
RUN apt-get update 	&& apt-get install -y postgresql-common 	&& sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf 	&& apt-get install -y 		postgresql-$PG_MAJOR=$PG_VERSION 		postgresql-contrib-$PG_MAJOR=$PG_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 04:14:16 GMT
RUN mv -v /usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample /usr/share/postgresql/$PG_MAJOR/ 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Fri, 23 Jun 2017 04:14:18 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Fri, 23 Jun 2017 04:14:19 GMT
ENV PATH=/usr/lib/postgresql/9.2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Jun 2017 04:14:20 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 23 Jun 2017 04:14:22 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Fri, 23 Jun 2017 04:14:23 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 23 Jun 2017 04:14:24 GMT
COPY file:80a75a207cb3d72777ff2cb8654a6d03754b58aed9199464284f3587637e1403 in /usr/local/bin/ 
# Fri, 23 Jun 2017 04:14:26 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 23 Jun 2017 04:14:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 23 Jun 2017 04:14:28 GMT
EXPOSE 5432/tcp
# Fri, 23 Jun 2017 04:14:29 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:9f0706ba7422412cd468804fee456786f88bed94bf9aea6dde2a47f770d19d27`  
		Last Modified: Tue, 20 Jun 2017 20:35:47 GMT  
		Size: 52.6 MB (52614808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7f935097c1dc51b4ee616da0d59bfd42c2473fcb2a9a9c7ad1284437a50ba74`  
		Last Modified: Sat, 24 Jun 2017 19:48:42 GMT  
		Size: 2.1 KB (2067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d3be652286b116e49c14f129c65f4d393c06a93329f4233aca9a259f935dfbf`  
		Last Modified: Sat, 24 Jun 2017 19:48:41 GMT  
		Size: 1.3 MB (1304149 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93ca38c967a2ec51002eafaf0705cb0238590c5399b8cbd7d6e1776215cd288b`  
		Last Modified: Sat, 24 Jun 2017 19:48:44 GMT  
		Size: 7.1 MB (7114233 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:757f9036ad24fe9376b8ab2610b1bc7f8c8966c645d70305943d6299ffb7b25b`  
		Last Modified: Sat, 24 Jun 2017 19:48:40 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2278e49211f18cd08beadfe0e6d9903cb89c02c5a3ea5f2e4f8e2db71c734232`  
		Last Modified: Sat, 24 Jun 2017 19:48:40 GMT  
		Size: 4.5 KB (4489 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81e59514eb5954b7cfdf923dc63b3caab04055bcc485cc1a3d26a282ef1b058a`  
		Last Modified: Sat, 24 Jun 2017 20:06:13 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:233cf47a6d2ac533467324ec461c66b841e4fb3c6c9b7cb95c8f8a42202d8d63`  
		Last Modified: Sat, 24 Jun 2017 20:06:24 GMT  
		Size: 41.9 MB (41942398 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f96ba5c12df885ae6fd23a5bf5324124d05bd3edceeed61d7125ab60e3080c37`  
		Last Modified: Sat, 24 Jun 2017 20:06:10 GMT  
		Size: 6.4 KB (6436 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fee561e6e8a2814f13f6f1c9b86d87c09e6cad33200bbe49adf9754393d5451`  
		Last Modified: Sat, 24 Jun 2017 20:06:11 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6652fb23d13d87c7c5e9db615a9dfcb56b43f8ec4abc8d57c8560145b548884`  
		Last Modified: Sat, 24 Jun 2017 20:06:11 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1a79ea399bd2ea261750de5199dd87c6e1c34e4c577bdeb0ef8640372e82efb`  
		Last Modified: Sat, 24 Jun 2017 20:06:11 GMT  
		Size: 1.8 KB (1797 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73fb76d447d1f865ec67bd98d81caed87d7742c1060eaba7d718323b96e95e99`  
		Last Modified: Sat, 24 Jun 2017 20:06:10 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.2.21-alpine`

```console
$ docker pull postgres@sha256:3bd7a9df761374d41d5213385d0cbc91453eb34283af7d488f5232940cc774db
```

-	Platforms:
	-	linux; amd64

### `postgres:9.2.21-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.8 MB (13781541 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5cf3a806bae92550c67c2c277176aa4205870bb0f6fbd6d783a7787b931d2915`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 19 Jun 2017 16:56:25 GMT
ADD file:dc33e8c0381ed8cecdd07c4b77c58a0c1bfa3266629bbce3fc0e49a047fbdd62 in / 
# Mon, 19 Jun 2017 16:56:48 GMT
CMD ["/bin/sh"]
# Tue, 20 Jun 2017 00:06:24 GMT
RUN set -ex; 	postgresHome="$(getent passwd postgres)"; 	postgresHome="$(echo "$postgresHome" | cut -d: -f6)"; 	[ "$postgresHome" = '/var/lib/postgresql' ]; 	mkdir -p "$postgresHome"; 	chown -R postgres:postgres "$postgresHome"
# Tue, 20 Jun 2017 00:06:25 GMT
ENV LANG=en_US.utf8
# Tue, 20 Jun 2017 00:06:27 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 20 Jun 2017 00:29:27 GMT
ENV PG_MAJOR=9.2
# Tue, 20 Jun 2017 00:29:28 GMT
ENV PG_VERSION=9.2.21
# Tue, 20 Jun 2017 00:29:29 GMT
ENV PG_SHA256=0697e843523ee60c563f987f9c65bc4201294b18525d6e5e4b2c50c6d4058ef9
# Tue, 20 Jun 2017 00:29:30 GMT
ENV OSSP_UUID_VERSION=1.6.2
# Tue, 20 Jun 2017 00:29:54 GMT
ENV OSSP_UUID_SHA256=11a615225baa5f8bb686824423f50e4427acd3f70d394765bdff32801f0fd5b0
# Tue, 20 Jun 2017 00:32:26 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl 		util-linux-dev 		zlib-dev 		&& wget -O uuid.tar.gz "https://www.mirrorservice.org/sites/ftp.ossp.org/pkg/lib/uuid/uuid-$OSSP_UUID_VERSION.tar.gz" 	&& echo "$OSSP_UUID_SHA256 *uuid.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/ossp-uuid 	&& tar 		--extract 		--file uuid.tar.gz 		--directory /usr/src/ossp-uuid 		--strip-components 1 	&& rm uuid.tar.gz 	&& ( 		cd /usr/src/ossp-uuid 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		&& wget -O config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 		&& wget -O config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 		&& ./configure 			--build="$gnuArch" 			--prefix=/usr/local 		&& make -j "$(nproc)" 		&& make install 	) 	&& rm -rf /usr/src/ossp-uuid 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& wget -O config/config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--disable-rpath 		--with-ossp-uuid 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Tue, 20 Jun 2017 00:32:27 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Tue, 20 Jun 2017 00:32:29 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Tue, 20 Jun 2017 00:32:30 GMT
ENV PATH=/usr/lib/postgresql/9.2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 20 Jun 2017 00:32:54 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 20 Jun 2017 00:32:55 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Tue, 20 Jun 2017 00:33:19 GMT
VOLUME [/var/lib/postgresql/data]
# Tue, 20 Jun 2017 00:33:20 GMT
COPY file:0db93797e962937881947161a43da7695835a2b6d5ad1184d0886e35249b5e39 in /usr/local/bin/ 
# Tue, 20 Jun 2017 00:33:22 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 20 Jun 2017 00:33:45 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 20 Jun 2017 00:33:46 GMT
EXPOSE 5432/tcp
# Tue, 20 Jun 2017 00:33:47 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:c800c6a61b4898becded5aa2cd373c6549651b809d2317b6922cbb269b7bbd0c`  
		Last Modified: Mon, 19 Jun 2017 17:08:03 GMT  
		Size: 2.0 MB (1970311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cee79530d29c44c8fd6b9f4fde7efe6bec90f1d96c5edc98f2cd9739a28c729`  
		Last Modified: Sat, 24 Jun 2017 19:57:33 GMT  
		Size: 141.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6956b64ec92a968fd13dda50faf186e85500954eac53cfc57ed8220beb340bb0`  
		Last Modified: Sat, 24 Jun 2017 19:57:33 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ac3fff594af17a567d2d72c3c246f6ac481107ed7d58bb8d399a6e0efb097b8`  
		Last Modified: Sat, 24 Jun 2017 20:07:27 GMT  
		Size: 11.8 MB (11802357 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:571d1c8b6a456f40a54a94bfee426de7bac9e40ed0ed0db5bf4bf85ec1004491`  
		Last Modified: Sat, 24 Jun 2017 20:07:23 GMT  
		Size: 6.4 KB (6403 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5318a987c26cbcc462e4a208b23b895d3094f97821b9d6a5f983ae15854a1168`  
		Last Modified: Sat, 24 Jun 2017 20:07:22 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bb7912add3558f0729cfa85d74d588020db77dd5ea302e2e41b662221852cfd`  
		Last Modified: Sat, 24 Jun 2017 20:07:23 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22c2f0e95cbbd07e2b68429c2a8bed10a59332c6ba1d6d9e33c0c751a59dee6d`  
		Last Modified: Sat, 24 Jun 2017 20:07:23 GMT  
		Size: 1.8 KB (1785 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a59a3094d70b38d18e347c3273afeb4c6c833a7898d1fa40159de664446fe2e3`  
		Last Modified: Sat, 24 Jun 2017 20:07:22 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.2-alpine`

```console
$ docker pull postgres@sha256:3bd7a9df761374d41d5213385d0cbc91453eb34283af7d488f5232940cc774db
```

-	Platforms:
	-	linux; amd64

### `postgres:9.2-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.8 MB (13781541 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5cf3a806bae92550c67c2c277176aa4205870bb0f6fbd6d783a7787b931d2915`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 19 Jun 2017 16:56:25 GMT
ADD file:dc33e8c0381ed8cecdd07c4b77c58a0c1bfa3266629bbce3fc0e49a047fbdd62 in / 
# Mon, 19 Jun 2017 16:56:48 GMT
CMD ["/bin/sh"]
# Tue, 20 Jun 2017 00:06:24 GMT
RUN set -ex; 	postgresHome="$(getent passwd postgres)"; 	postgresHome="$(echo "$postgresHome" | cut -d: -f6)"; 	[ "$postgresHome" = '/var/lib/postgresql' ]; 	mkdir -p "$postgresHome"; 	chown -R postgres:postgres "$postgresHome"
# Tue, 20 Jun 2017 00:06:25 GMT
ENV LANG=en_US.utf8
# Tue, 20 Jun 2017 00:06:27 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 20 Jun 2017 00:29:27 GMT
ENV PG_MAJOR=9.2
# Tue, 20 Jun 2017 00:29:28 GMT
ENV PG_VERSION=9.2.21
# Tue, 20 Jun 2017 00:29:29 GMT
ENV PG_SHA256=0697e843523ee60c563f987f9c65bc4201294b18525d6e5e4b2c50c6d4058ef9
# Tue, 20 Jun 2017 00:29:30 GMT
ENV OSSP_UUID_VERSION=1.6.2
# Tue, 20 Jun 2017 00:29:54 GMT
ENV OSSP_UUID_SHA256=11a615225baa5f8bb686824423f50e4427acd3f70d394765bdff32801f0fd5b0
# Tue, 20 Jun 2017 00:32:26 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl 		util-linux-dev 		zlib-dev 		&& wget -O uuid.tar.gz "https://www.mirrorservice.org/sites/ftp.ossp.org/pkg/lib/uuid/uuid-$OSSP_UUID_VERSION.tar.gz" 	&& echo "$OSSP_UUID_SHA256 *uuid.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/ossp-uuid 	&& tar 		--extract 		--file uuid.tar.gz 		--directory /usr/src/ossp-uuid 		--strip-components 1 	&& rm uuid.tar.gz 	&& ( 		cd /usr/src/ossp-uuid 		&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 		&& wget -O config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 		&& wget -O config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 		&& ./configure 			--build="$gnuArch" 			--prefix=/usr/local 		&& make -j "$(nproc)" 		&& make install 	) 	&& rm -rf /usr/src/ossp-uuid 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& wget -O config/config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& wget -O config/config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb' 	&& ./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--disable-rpath 		--with-ossp-uuid 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Tue, 20 Jun 2017 00:32:27 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Tue, 20 Jun 2017 00:32:29 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Tue, 20 Jun 2017 00:32:30 GMT
ENV PATH=/usr/lib/postgresql/9.2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 20 Jun 2017 00:32:54 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 20 Jun 2017 00:32:55 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Tue, 20 Jun 2017 00:33:19 GMT
VOLUME [/var/lib/postgresql/data]
# Tue, 20 Jun 2017 00:33:20 GMT
COPY file:0db93797e962937881947161a43da7695835a2b6d5ad1184d0886e35249b5e39 in /usr/local/bin/ 
# Tue, 20 Jun 2017 00:33:22 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 20 Jun 2017 00:33:45 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 20 Jun 2017 00:33:46 GMT
EXPOSE 5432/tcp
# Tue, 20 Jun 2017 00:33:47 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:c800c6a61b4898becded5aa2cd373c6549651b809d2317b6922cbb269b7bbd0c`  
		Last Modified: Mon, 19 Jun 2017 17:08:03 GMT  
		Size: 2.0 MB (1970311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cee79530d29c44c8fd6b9f4fde7efe6bec90f1d96c5edc98f2cd9739a28c729`  
		Last Modified: Sat, 24 Jun 2017 19:57:33 GMT  
		Size: 141.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6956b64ec92a968fd13dda50faf186e85500954eac53cfc57ed8220beb340bb0`  
		Last Modified: Sat, 24 Jun 2017 19:57:33 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ac3fff594af17a567d2d72c3c246f6ac481107ed7d58bb8d399a6e0efb097b8`  
		Last Modified: Sat, 24 Jun 2017 20:07:27 GMT  
		Size: 11.8 MB (11802357 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:571d1c8b6a456f40a54a94bfee426de7bac9e40ed0ed0db5bf4bf85ec1004491`  
		Last Modified: Sat, 24 Jun 2017 20:07:23 GMT  
		Size: 6.4 KB (6403 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5318a987c26cbcc462e4a208b23b895d3094f97821b9d6a5f983ae15854a1168`  
		Last Modified: Sat, 24 Jun 2017 20:07:22 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bb7912add3558f0729cfa85d74d588020db77dd5ea302e2e41b662221852cfd`  
		Last Modified: Sat, 24 Jun 2017 20:07:23 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22c2f0e95cbbd07e2b68429c2a8bed10a59332c6ba1d6d9e33c0c751a59dee6d`  
		Last Modified: Sat, 24 Jun 2017 20:07:23 GMT  
		Size: 1.8 KB (1785 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a59a3094d70b38d18e347c3273afeb4c6c833a7898d1fa40159de664446fe2e3`  
		Last Modified: Sat, 24 Jun 2017 20:07:22 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
