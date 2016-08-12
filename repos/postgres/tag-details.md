<!-- THIS FILE IS GENERATED VIA './update-tag-details.sh' -->

# Tags of `postgres`

-	[`postgres:9.6-beta4`](#postgres96-beta4)
-	[`postgres:9.6`](#postgres96)
-	[`postgres:9.5.4`](#postgres954)
-	[`postgres:9.5`](#postgres95)
-	[`postgres:9`](#postgres9)
-	[`postgres:latest`](#postgreslatest)
-	[`postgres:9.4.9`](#postgres949)
-	[`postgres:9.4`](#postgres94)
-	[`postgres:9.3.14`](#postgres9314)
-	[`postgres:9.3`](#postgres93)
-	[`postgres:9.2.18`](#postgres9218)
-	[`postgres:9.2`](#postgres92)
-	[`postgres:9.1.23`](#postgres9123)
-	[`postgres:9.1`](#postgres91)

## `postgres:9.6-beta4`

```console
$ docker pull postgres@sha256:5ad3ca07b9612cc4c58a656e20a730d6e0c2cadcdc40f1b71b2f7372cee8c96c
```

-	Platforms:
	-	linux; amd64

### `postgres:9.6-beta4` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **101.5 MB (101511854 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6f7bdedd87bd83a92858a973c8744af23b66c44caaec127e37889b9fee80cacd`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Thu, 28 Jul 2016 17:47:54 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in /
# Thu, 28 Jul 2016 17:47:55 GMT
CMD ["/bin/bash"]
# Mon, 01 Aug 2016 20:57:15 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Mon, 01 Aug 2016 20:57:15 GMT
ENV GOSU_VERSION=1.7
# Mon, 01 Aug 2016 20:58:40 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Mon, 01 Aug 2016 20:59:40 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Mon, 01 Aug 2016 20:59:40 GMT
ENV LANG=en_US.utf8
# Mon, 01 Aug 2016 20:59:42 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Mon, 01 Aug 2016 21:00:01 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8
# Mon, 01 Aug 2016 21:10:55 GMT
ENV PG_MAJOR=9.6
# Fri, 12 Aug 2016 16:10:58 GMT
ENV PG_VERSION=9.6~beta4-1.pgdg80+1
# Fri, 12 Aug 2016 16:11:01 GMT
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main' $PG_MAJOR > /etc/apt/sources.list.d/pgdg.list
# Fri, 12 Aug 2016 16:13:44 GMT
RUN apt-get update 	&& apt-get install -y postgresql-common 	&& sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf 	&& apt-get install -y 		postgresql-$PG_MAJOR=$PG_VERSION 		postgresql-contrib-$PG_MAJOR=$PG_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Fri, 12 Aug 2016 16:13:46 GMT
RUN mv -v /usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample /usr/share/postgresql/$PG_MAJOR/ 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Fri, 12 Aug 2016 16:13:48 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres /var/run/postgresql
# Fri, 12 Aug 2016 16:13:49 GMT
ENV PATH=/usr/lib/postgresql/9.6/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 12 Aug 2016 16:13:50 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 12 Aug 2016 16:13:51 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 12 Aug 2016 16:13:53 GMT
COPY file:aefa30113260f63949e77cbc9a66aa22f27b1f79479507fd0d32f9b6a6994d69 in /
# Fri, 12 Aug 2016 16:13:54 GMT
ENTRYPOINT &{["/docker-entrypoint.sh"]}
# Fri, 12 Aug 2016 16:13:55 GMT
EXPOSE 5432/tcp
# Fri, 12 Aug 2016 16:13:56 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)
	-	`sha256:c2c7a60f64c55d6c68b6efd3fa2be1000b00f0d21eae3b308e9b11233e06d97f`  
		Last Modified: Mon, 01 Aug 2016 21:03:07 GMT  
		Size: 2.0 KB (2041 bytes)
	-	`sha256:41ae9dccaf61454fcc40e613824212e861d7f3154edabe5e2de5bbae5b7783a7`  
		Last Modified: Mon, 01 Aug 2016 21:03:06 GMT  
		Size: 1.2 MB (1216533 bytes)
	-	`sha256:f97dc66893dee780a3df721bc5e03abf97e6a6b43b7e4fc938697a04640d50f9`  
		Last Modified: Mon, 01 Aug 2016 21:03:08 GMT  
		Size: 6.9 MB (6863889 bytes)
	-	`sha256:ff0ae6b27f855237075b51a1351670a20344803dc9c8a889f641df6eee2fa39c`  
		Last Modified: Mon, 01 Aug 2016 21:03:05 GMT  
		Size: 112.0 B
	-	`sha256:0ad5d181a0a159544163c500b295eb921192028a2340120958df6147ec53543c`  
		Last Modified: Mon, 01 Aug 2016 21:03:05 GMT  
		Size: 3.4 KB (3415 bytes)
	-	`sha256:7fba101135e68bcd010e076e2c7f6d86721a22a1f30f466209427f5f0056c07d`  
		Last Modified: Fri, 12 Aug 2016 16:28:12 GMT  
		Size: 225.0 B
	-	`sha256:e4f6ddd3ea3aa27474f2b9727d07cffc41592e3d80e96772bcfc1699309cbf8c`  
		Last Modified: Fri, 12 Aug 2016 16:28:24 GMT  
		Size: 42.1 MB (42051490 bytes)
	-	`sha256:76308683a99b75cc300665c4160578ba61cbf2a9379836fcda43d4fca516cb17`  
		Last Modified: Fri, 12 Aug 2016 16:28:12 GMT  
		Size: 7.2 KB (7156 bytes)
	-	`sha256:e19a3ccd59037c74809ace50e05225601dd05d6de9d547824281831685f3dc27`  
		Last Modified: Fri, 12 Aug 2016 16:28:12 GMT  
		Size: 130.0 B
	-	`sha256:eb416e5a36c8113ab5d2577dadfe53788687a5ac10508704efdea8bb1d452722`  
		Last Modified: Fri, 12 Aug 2016 16:28:13 GMT  
		Size: 1.3 KB (1252 bytes)

## `postgres:9.6`

```console
$ docker pull postgres@sha256:5ad3ca07b9612cc4c58a656e20a730d6e0c2cadcdc40f1b71b2f7372cee8c96c
```

-	Platforms:
	-	linux; amd64

### `postgres:9.6` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **101.5 MB (101511854 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6f7bdedd87bd83a92858a973c8744af23b66c44caaec127e37889b9fee80cacd`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Thu, 28 Jul 2016 17:47:54 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in /
# Thu, 28 Jul 2016 17:47:55 GMT
CMD ["/bin/bash"]
# Mon, 01 Aug 2016 20:57:15 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Mon, 01 Aug 2016 20:57:15 GMT
ENV GOSU_VERSION=1.7
# Mon, 01 Aug 2016 20:58:40 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Mon, 01 Aug 2016 20:59:40 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Mon, 01 Aug 2016 20:59:40 GMT
ENV LANG=en_US.utf8
# Mon, 01 Aug 2016 20:59:42 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Mon, 01 Aug 2016 21:00:01 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8
# Mon, 01 Aug 2016 21:10:55 GMT
ENV PG_MAJOR=9.6
# Fri, 12 Aug 2016 16:10:58 GMT
ENV PG_VERSION=9.6~beta4-1.pgdg80+1
# Fri, 12 Aug 2016 16:11:01 GMT
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main' $PG_MAJOR > /etc/apt/sources.list.d/pgdg.list
# Fri, 12 Aug 2016 16:13:44 GMT
RUN apt-get update 	&& apt-get install -y postgresql-common 	&& sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf 	&& apt-get install -y 		postgresql-$PG_MAJOR=$PG_VERSION 		postgresql-contrib-$PG_MAJOR=$PG_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Fri, 12 Aug 2016 16:13:46 GMT
RUN mv -v /usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample /usr/share/postgresql/$PG_MAJOR/ 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Fri, 12 Aug 2016 16:13:48 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres /var/run/postgresql
# Fri, 12 Aug 2016 16:13:49 GMT
ENV PATH=/usr/lib/postgresql/9.6/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 12 Aug 2016 16:13:50 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 12 Aug 2016 16:13:51 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 12 Aug 2016 16:13:53 GMT
COPY file:aefa30113260f63949e77cbc9a66aa22f27b1f79479507fd0d32f9b6a6994d69 in /
# Fri, 12 Aug 2016 16:13:54 GMT
ENTRYPOINT &{["/docker-entrypoint.sh"]}
# Fri, 12 Aug 2016 16:13:55 GMT
EXPOSE 5432/tcp
# Fri, 12 Aug 2016 16:13:56 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)
	-	`sha256:c2c7a60f64c55d6c68b6efd3fa2be1000b00f0d21eae3b308e9b11233e06d97f`  
		Last Modified: Mon, 01 Aug 2016 21:03:07 GMT  
		Size: 2.0 KB (2041 bytes)
	-	`sha256:41ae9dccaf61454fcc40e613824212e861d7f3154edabe5e2de5bbae5b7783a7`  
		Last Modified: Mon, 01 Aug 2016 21:03:06 GMT  
		Size: 1.2 MB (1216533 bytes)
	-	`sha256:f97dc66893dee780a3df721bc5e03abf97e6a6b43b7e4fc938697a04640d50f9`  
		Last Modified: Mon, 01 Aug 2016 21:03:08 GMT  
		Size: 6.9 MB (6863889 bytes)
	-	`sha256:ff0ae6b27f855237075b51a1351670a20344803dc9c8a889f641df6eee2fa39c`  
		Last Modified: Mon, 01 Aug 2016 21:03:05 GMT  
		Size: 112.0 B
	-	`sha256:0ad5d181a0a159544163c500b295eb921192028a2340120958df6147ec53543c`  
		Last Modified: Mon, 01 Aug 2016 21:03:05 GMT  
		Size: 3.4 KB (3415 bytes)
	-	`sha256:7fba101135e68bcd010e076e2c7f6d86721a22a1f30f466209427f5f0056c07d`  
		Last Modified: Fri, 12 Aug 2016 16:28:12 GMT  
		Size: 225.0 B
	-	`sha256:e4f6ddd3ea3aa27474f2b9727d07cffc41592e3d80e96772bcfc1699309cbf8c`  
		Last Modified: Fri, 12 Aug 2016 16:28:24 GMT  
		Size: 42.1 MB (42051490 bytes)
	-	`sha256:76308683a99b75cc300665c4160578ba61cbf2a9379836fcda43d4fca516cb17`  
		Last Modified: Fri, 12 Aug 2016 16:28:12 GMT  
		Size: 7.2 KB (7156 bytes)
	-	`sha256:e19a3ccd59037c74809ace50e05225601dd05d6de9d547824281831685f3dc27`  
		Last Modified: Fri, 12 Aug 2016 16:28:12 GMT  
		Size: 130.0 B
	-	`sha256:eb416e5a36c8113ab5d2577dadfe53788687a5ac10508704efdea8bb1d452722`  
		Last Modified: Fri, 12 Aug 2016 16:28:13 GMT  
		Size: 1.3 KB (1252 bytes)

## `postgres:9.5.4`

```console
$ docker pull postgres@sha256:f99a43d2db2734265d40ec6305681e7edb2c8119ae5a7e5873a65907dfc77af0
```

-	Platforms:
	-	linux; amd64

### `postgres:9.5.4` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **101.3 MB (101299178 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5ff2afd2f5c3905db4e61e5db86b084649ea07b5245fddbef4bb632e4561c689`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Thu, 28 Jul 2016 17:47:54 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in /
# Thu, 28 Jul 2016 17:47:55 GMT
CMD ["/bin/bash"]
# Mon, 01 Aug 2016 20:57:15 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Mon, 01 Aug 2016 20:57:15 GMT
ENV GOSU_VERSION=1.7
# Mon, 01 Aug 2016 20:58:40 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Mon, 01 Aug 2016 20:59:40 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Mon, 01 Aug 2016 20:59:40 GMT
ENV LANG=en_US.utf8
# Mon, 01 Aug 2016 20:59:42 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Mon, 01 Aug 2016 21:00:01 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8
# Mon, 01 Aug 2016 21:07:04 GMT
ENV PG_MAJOR=9.5
# Fri, 12 Aug 2016 16:13:57 GMT
ENV PG_VERSION=9.5.4-1.pgdg80+1
# Fri, 12 Aug 2016 16:13:59 GMT
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main' $PG_MAJOR > /etc/apt/sources.list.d/pgdg.list
# Fri, 12 Aug 2016 16:16:40 GMT
RUN apt-get update 	&& apt-get install -y postgresql-common 	&& sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf 	&& apt-get install -y 		postgresql-$PG_MAJOR=$PG_VERSION 		postgresql-contrib-$PG_MAJOR=$PG_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Fri, 12 Aug 2016 16:16:42 GMT
RUN mv -v /usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample /usr/share/postgresql/$PG_MAJOR/ 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Fri, 12 Aug 2016 16:16:44 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres /var/run/postgresql
# Fri, 12 Aug 2016 16:16:45 GMT
ENV PATH=/usr/lib/postgresql/9.5/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 12 Aug 2016 16:16:46 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 12 Aug 2016 16:16:47 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 12 Aug 2016 16:16:49 GMT
COPY file:aefa30113260f63949e77cbc9a66aa22f27b1f79479507fd0d32f9b6a6994d69 in /
# Fri, 12 Aug 2016 16:16:50 GMT
ENTRYPOINT &{["/docker-entrypoint.sh"]}
# Fri, 12 Aug 2016 16:16:51 GMT
EXPOSE 5432/tcp
# Fri, 12 Aug 2016 16:16:52 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)
	-	`sha256:c2c7a60f64c55d6c68b6efd3fa2be1000b00f0d21eae3b308e9b11233e06d97f`  
		Last Modified: Mon, 01 Aug 2016 21:03:07 GMT  
		Size: 2.0 KB (2041 bytes)
	-	`sha256:41ae9dccaf61454fcc40e613824212e861d7f3154edabe5e2de5bbae5b7783a7`  
		Last Modified: Mon, 01 Aug 2016 21:03:06 GMT  
		Size: 1.2 MB (1216533 bytes)
	-	`sha256:f97dc66893dee780a3df721bc5e03abf97e6a6b43b7e4fc938697a04640d50f9`  
		Last Modified: Mon, 01 Aug 2016 21:03:08 GMT  
		Size: 6.9 MB (6863889 bytes)
	-	`sha256:ff0ae6b27f855237075b51a1351670a20344803dc9c8a889f641df6eee2fa39c`  
		Last Modified: Mon, 01 Aug 2016 21:03:05 GMT  
		Size: 112.0 B
	-	`sha256:0ad5d181a0a159544163c500b295eb921192028a2340120958df6147ec53543c`  
		Last Modified: Mon, 01 Aug 2016 21:03:05 GMT  
		Size: 3.4 KB (3415 bytes)
	-	`sha256:da7e988cfd3f2ddc10100037249934380506bb3e32ecaa677564fbdfdd32af63`  
		Last Modified: Fri, 12 Aug 2016 16:28:52 GMT  
		Size: 227.0 B
	-	`sha256:fc2b381c21048c1eb0507d91ad5f158d0268e4120dee2ea01e915b33c8269c1d`  
		Last Modified: Fri, 12 Aug 2016 16:29:04 GMT  
		Size: 41.8 MB (41839109 bytes)
	-	`sha256:ab13cd075635eae92e657bdd3c0f65969f1cd1b8642f1873931c75ef123e8fe5`  
		Last Modified: Fri, 12 Aug 2016 16:28:52 GMT  
		Size: 6.9 KB (6855 bytes)
	-	`sha256:d7ce612e91b2810ec35630978849fa8877233ec8a4b203e4ed793df5a56b997f`  
		Last Modified: Fri, 12 Aug 2016 16:28:52 GMT  
		Size: 133.0 B
	-	`sha256:34dffd90d86f21f8ce6511ebabe2cac11ba66c58d9cc689a5ecbf79bf5e44806`  
		Last Modified: Fri, 12 Aug 2016 16:28:52 GMT  
		Size: 1.3 KB (1253 bytes)

## `postgres:9.5`

```console
$ docker pull postgres@sha256:f99a43d2db2734265d40ec6305681e7edb2c8119ae5a7e5873a65907dfc77af0
```

-	Platforms:
	-	linux; amd64

### `postgres:9.5` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **101.3 MB (101299178 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5ff2afd2f5c3905db4e61e5db86b084649ea07b5245fddbef4bb632e4561c689`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Thu, 28 Jul 2016 17:47:54 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in /
# Thu, 28 Jul 2016 17:47:55 GMT
CMD ["/bin/bash"]
# Mon, 01 Aug 2016 20:57:15 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Mon, 01 Aug 2016 20:57:15 GMT
ENV GOSU_VERSION=1.7
# Mon, 01 Aug 2016 20:58:40 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Mon, 01 Aug 2016 20:59:40 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Mon, 01 Aug 2016 20:59:40 GMT
ENV LANG=en_US.utf8
# Mon, 01 Aug 2016 20:59:42 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Mon, 01 Aug 2016 21:00:01 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8
# Mon, 01 Aug 2016 21:07:04 GMT
ENV PG_MAJOR=9.5
# Fri, 12 Aug 2016 16:13:57 GMT
ENV PG_VERSION=9.5.4-1.pgdg80+1
# Fri, 12 Aug 2016 16:13:59 GMT
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main' $PG_MAJOR > /etc/apt/sources.list.d/pgdg.list
# Fri, 12 Aug 2016 16:16:40 GMT
RUN apt-get update 	&& apt-get install -y postgresql-common 	&& sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf 	&& apt-get install -y 		postgresql-$PG_MAJOR=$PG_VERSION 		postgresql-contrib-$PG_MAJOR=$PG_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Fri, 12 Aug 2016 16:16:42 GMT
RUN mv -v /usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample /usr/share/postgresql/$PG_MAJOR/ 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Fri, 12 Aug 2016 16:16:44 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres /var/run/postgresql
# Fri, 12 Aug 2016 16:16:45 GMT
ENV PATH=/usr/lib/postgresql/9.5/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 12 Aug 2016 16:16:46 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 12 Aug 2016 16:16:47 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 12 Aug 2016 16:16:49 GMT
COPY file:aefa30113260f63949e77cbc9a66aa22f27b1f79479507fd0d32f9b6a6994d69 in /
# Fri, 12 Aug 2016 16:16:50 GMT
ENTRYPOINT &{["/docker-entrypoint.sh"]}
# Fri, 12 Aug 2016 16:16:51 GMT
EXPOSE 5432/tcp
# Fri, 12 Aug 2016 16:16:52 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)
	-	`sha256:c2c7a60f64c55d6c68b6efd3fa2be1000b00f0d21eae3b308e9b11233e06d97f`  
		Last Modified: Mon, 01 Aug 2016 21:03:07 GMT  
		Size: 2.0 KB (2041 bytes)
	-	`sha256:41ae9dccaf61454fcc40e613824212e861d7f3154edabe5e2de5bbae5b7783a7`  
		Last Modified: Mon, 01 Aug 2016 21:03:06 GMT  
		Size: 1.2 MB (1216533 bytes)
	-	`sha256:f97dc66893dee780a3df721bc5e03abf97e6a6b43b7e4fc938697a04640d50f9`  
		Last Modified: Mon, 01 Aug 2016 21:03:08 GMT  
		Size: 6.9 MB (6863889 bytes)
	-	`sha256:ff0ae6b27f855237075b51a1351670a20344803dc9c8a889f641df6eee2fa39c`  
		Last Modified: Mon, 01 Aug 2016 21:03:05 GMT  
		Size: 112.0 B
	-	`sha256:0ad5d181a0a159544163c500b295eb921192028a2340120958df6147ec53543c`  
		Last Modified: Mon, 01 Aug 2016 21:03:05 GMT  
		Size: 3.4 KB (3415 bytes)
	-	`sha256:da7e988cfd3f2ddc10100037249934380506bb3e32ecaa677564fbdfdd32af63`  
		Last Modified: Fri, 12 Aug 2016 16:28:52 GMT  
		Size: 227.0 B
	-	`sha256:fc2b381c21048c1eb0507d91ad5f158d0268e4120dee2ea01e915b33c8269c1d`  
		Last Modified: Fri, 12 Aug 2016 16:29:04 GMT  
		Size: 41.8 MB (41839109 bytes)
	-	`sha256:ab13cd075635eae92e657bdd3c0f65969f1cd1b8642f1873931c75ef123e8fe5`  
		Last Modified: Fri, 12 Aug 2016 16:28:52 GMT  
		Size: 6.9 KB (6855 bytes)
	-	`sha256:d7ce612e91b2810ec35630978849fa8877233ec8a4b203e4ed793df5a56b997f`  
		Last Modified: Fri, 12 Aug 2016 16:28:52 GMT  
		Size: 133.0 B
	-	`sha256:34dffd90d86f21f8ce6511ebabe2cac11ba66c58d9cc689a5ecbf79bf5e44806`  
		Last Modified: Fri, 12 Aug 2016 16:28:52 GMT  
		Size: 1.3 KB (1253 bytes)

## `postgres:9`

```console
$ docker pull postgres@sha256:f99a43d2db2734265d40ec6305681e7edb2c8119ae5a7e5873a65907dfc77af0
```

-	Platforms:
	-	linux; amd64

### `postgres:9` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **101.3 MB (101299178 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5ff2afd2f5c3905db4e61e5db86b084649ea07b5245fddbef4bb632e4561c689`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Thu, 28 Jul 2016 17:47:54 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in /
# Thu, 28 Jul 2016 17:47:55 GMT
CMD ["/bin/bash"]
# Mon, 01 Aug 2016 20:57:15 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Mon, 01 Aug 2016 20:57:15 GMT
ENV GOSU_VERSION=1.7
# Mon, 01 Aug 2016 20:58:40 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Mon, 01 Aug 2016 20:59:40 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Mon, 01 Aug 2016 20:59:40 GMT
ENV LANG=en_US.utf8
# Mon, 01 Aug 2016 20:59:42 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Mon, 01 Aug 2016 21:00:01 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8
# Mon, 01 Aug 2016 21:07:04 GMT
ENV PG_MAJOR=9.5
# Fri, 12 Aug 2016 16:13:57 GMT
ENV PG_VERSION=9.5.4-1.pgdg80+1
# Fri, 12 Aug 2016 16:13:59 GMT
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main' $PG_MAJOR > /etc/apt/sources.list.d/pgdg.list
# Fri, 12 Aug 2016 16:16:40 GMT
RUN apt-get update 	&& apt-get install -y postgresql-common 	&& sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf 	&& apt-get install -y 		postgresql-$PG_MAJOR=$PG_VERSION 		postgresql-contrib-$PG_MAJOR=$PG_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Fri, 12 Aug 2016 16:16:42 GMT
RUN mv -v /usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample /usr/share/postgresql/$PG_MAJOR/ 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Fri, 12 Aug 2016 16:16:44 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres /var/run/postgresql
# Fri, 12 Aug 2016 16:16:45 GMT
ENV PATH=/usr/lib/postgresql/9.5/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 12 Aug 2016 16:16:46 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 12 Aug 2016 16:16:47 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 12 Aug 2016 16:16:49 GMT
COPY file:aefa30113260f63949e77cbc9a66aa22f27b1f79479507fd0d32f9b6a6994d69 in /
# Fri, 12 Aug 2016 16:16:50 GMT
ENTRYPOINT &{["/docker-entrypoint.sh"]}
# Fri, 12 Aug 2016 16:16:51 GMT
EXPOSE 5432/tcp
# Fri, 12 Aug 2016 16:16:52 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)
	-	`sha256:c2c7a60f64c55d6c68b6efd3fa2be1000b00f0d21eae3b308e9b11233e06d97f`  
		Last Modified: Mon, 01 Aug 2016 21:03:07 GMT  
		Size: 2.0 KB (2041 bytes)
	-	`sha256:41ae9dccaf61454fcc40e613824212e861d7f3154edabe5e2de5bbae5b7783a7`  
		Last Modified: Mon, 01 Aug 2016 21:03:06 GMT  
		Size: 1.2 MB (1216533 bytes)
	-	`sha256:f97dc66893dee780a3df721bc5e03abf97e6a6b43b7e4fc938697a04640d50f9`  
		Last Modified: Mon, 01 Aug 2016 21:03:08 GMT  
		Size: 6.9 MB (6863889 bytes)
	-	`sha256:ff0ae6b27f855237075b51a1351670a20344803dc9c8a889f641df6eee2fa39c`  
		Last Modified: Mon, 01 Aug 2016 21:03:05 GMT  
		Size: 112.0 B
	-	`sha256:0ad5d181a0a159544163c500b295eb921192028a2340120958df6147ec53543c`  
		Last Modified: Mon, 01 Aug 2016 21:03:05 GMT  
		Size: 3.4 KB (3415 bytes)
	-	`sha256:da7e988cfd3f2ddc10100037249934380506bb3e32ecaa677564fbdfdd32af63`  
		Last Modified: Fri, 12 Aug 2016 16:28:52 GMT  
		Size: 227.0 B
	-	`sha256:fc2b381c21048c1eb0507d91ad5f158d0268e4120dee2ea01e915b33c8269c1d`  
		Last Modified: Fri, 12 Aug 2016 16:29:04 GMT  
		Size: 41.8 MB (41839109 bytes)
	-	`sha256:ab13cd075635eae92e657bdd3c0f65969f1cd1b8642f1873931c75ef123e8fe5`  
		Last Modified: Fri, 12 Aug 2016 16:28:52 GMT  
		Size: 6.9 KB (6855 bytes)
	-	`sha256:d7ce612e91b2810ec35630978849fa8877233ec8a4b203e4ed793df5a56b997f`  
		Last Modified: Fri, 12 Aug 2016 16:28:52 GMT  
		Size: 133.0 B
	-	`sha256:34dffd90d86f21f8ce6511ebabe2cac11ba66c58d9cc689a5ecbf79bf5e44806`  
		Last Modified: Fri, 12 Aug 2016 16:28:52 GMT  
		Size: 1.3 KB (1253 bytes)

## `postgres:latest`

```console
$ docker pull postgres@sha256:f99a43d2db2734265d40ec6305681e7edb2c8119ae5a7e5873a65907dfc77af0
```

-	Platforms:
	-	linux; amd64

### `postgres:latest` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **101.3 MB (101299178 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5ff2afd2f5c3905db4e61e5db86b084649ea07b5245fddbef4bb632e4561c689`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Thu, 28 Jul 2016 17:47:54 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in /
# Thu, 28 Jul 2016 17:47:55 GMT
CMD ["/bin/bash"]
# Mon, 01 Aug 2016 20:57:15 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Mon, 01 Aug 2016 20:57:15 GMT
ENV GOSU_VERSION=1.7
# Mon, 01 Aug 2016 20:58:40 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Mon, 01 Aug 2016 20:59:40 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Mon, 01 Aug 2016 20:59:40 GMT
ENV LANG=en_US.utf8
# Mon, 01 Aug 2016 20:59:42 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Mon, 01 Aug 2016 21:00:01 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8
# Mon, 01 Aug 2016 21:07:04 GMT
ENV PG_MAJOR=9.5
# Fri, 12 Aug 2016 16:13:57 GMT
ENV PG_VERSION=9.5.4-1.pgdg80+1
# Fri, 12 Aug 2016 16:13:59 GMT
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main' $PG_MAJOR > /etc/apt/sources.list.d/pgdg.list
# Fri, 12 Aug 2016 16:16:40 GMT
RUN apt-get update 	&& apt-get install -y postgresql-common 	&& sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf 	&& apt-get install -y 		postgresql-$PG_MAJOR=$PG_VERSION 		postgresql-contrib-$PG_MAJOR=$PG_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Fri, 12 Aug 2016 16:16:42 GMT
RUN mv -v /usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample /usr/share/postgresql/$PG_MAJOR/ 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Fri, 12 Aug 2016 16:16:44 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres /var/run/postgresql
# Fri, 12 Aug 2016 16:16:45 GMT
ENV PATH=/usr/lib/postgresql/9.5/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 12 Aug 2016 16:16:46 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 12 Aug 2016 16:16:47 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 12 Aug 2016 16:16:49 GMT
COPY file:aefa30113260f63949e77cbc9a66aa22f27b1f79479507fd0d32f9b6a6994d69 in /
# Fri, 12 Aug 2016 16:16:50 GMT
ENTRYPOINT &{["/docker-entrypoint.sh"]}
# Fri, 12 Aug 2016 16:16:51 GMT
EXPOSE 5432/tcp
# Fri, 12 Aug 2016 16:16:52 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)
	-	`sha256:c2c7a60f64c55d6c68b6efd3fa2be1000b00f0d21eae3b308e9b11233e06d97f`  
		Last Modified: Mon, 01 Aug 2016 21:03:07 GMT  
		Size: 2.0 KB (2041 bytes)
	-	`sha256:41ae9dccaf61454fcc40e613824212e861d7f3154edabe5e2de5bbae5b7783a7`  
		Last Modified: Mon, 01 Aug 2016 21:03:06 GMT  
		Size: 1.2 MB (1216533 bytes)
	-	`sha256:f97dc66893dee780a3df721bc5e03abf97e6a6b43b7e4fc938697a04640d50f9`  
		Last Modified: Mon, 01 Aug 2016 21:03:08 GMT  
		Size: 6.9 MB (6863889 bytes)
	-	`sha256:ff0ae6b27f855237075b51a1351670a20344803dc9c8a889f641df6eee2fa39c`  
		Last Modified: Mon, 01 Aug 2016 21:03:05 GMT  
		Size: 112.0 B
	-	`sha256:0ad5d181a0a159544163c500b295eb921192028a2340120958df6147ec53543c`  
		Last Modified: Mon, 01 Aug 2016 21:03:05 GMT  
		Size: 3.4 KB (3415 bytes)
	-	`sha256:da7e988cfd3f2ddc10100037249934380506bb3e32ecaa677564fbdfdd32af63`  
		Last Modified: Fri, 12 Aug 2016 16:28:52 GMT  
		Size: 227.0 B
	-	`sha256:fc2b381c21048c1eb0507d91ad5f158d0268e4120dee2ea01e915b33c8269c1d`  
		Last Modified: Fri, 12 Aug 2016 16:29:04 GMT  
		Size: 41.8 MB (41839109 bytes)
	-	`sha256:ab13cd075635eae92e657bdd3c0f65969f1cd1b8642f1873931c75ef123e8fe5`  
		Last Modified: Fri, 12 Aug 2016 16:28:52 GMT  
		Size: 6.9 KB (6855 bytes)
	-	`sha256:d7ce612e91b2810ec35630978849fa8877233ec8a4b203e4ed793df5a56b997f`  
		Last Modified: Fri, 12 Aug 2016 16:28:52 GMT  
		Size: 133.0 B
	-	`sha256:34dffd90d86f21f8ce6511ebabe2cac11ba66c58d9cc689a5ecbf79bf5e44806`  
		Last Modified: Fri, 12 Aug 2016 16:28:52 GMT  
		Size: 1.3 KB (1253 bytes)

## `postgres:9.4.9`

```console
$ docker pull postgres@sha256:be73038dcc0f49cf0d569305cd084695e0989e817bb325335c91d4a9c70820f6
```

-	Platforms:
	-	linux; amd64

### `postgres:9.4.9` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **100.9 MB (100892924 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5dd312583eea63c1005cb93cb3ce54f6d43203227f2c0580e5f7b101b24eeb26`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Thu, 28 Jul 2016 17:47:54 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in /
# Thu, 28 Jul 2016 17:47:55 GMT
CMD ["/bin/bash"]
# Mon, 01 Aug 2016 20:57:15 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Mon, 01 Aug 2016 20:57:15 GMT
ENV GOSU_VERSION=1.7
# Mon, 01 Aug 2016 20:58:40 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Mon, 01 Aug 2016 20:59:40 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Mon, 01 Aug 2016 20:59:40 GMT
ENV LANG=en_US.utf8
# Mon, 01 Aug 2016 20:59:42 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Mon, 01 Aug 2016 21:00:01 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8
# Mon, 01 Aug 2016 21:03:33 GMT
ENV PG_MAJOR=9.4
# Fri, 12 Aug 2016 16:16:53 GMT
ENV PG_VERSION=9.4.9-1.pgdg80+1
# Fri, 12 Aug 2016 16:16:55 GMT
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main' $PG_MAJOR > /etc/apt/sources.list.d/pgdg.list
# Fri, 12 Aug 2016 16:19:31 GMT
RUN apt-get update 	&& apt-get install -y postgresql-common 	&& sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf 	&& apt-get install -y 		postgresql-$PG_MAJOR=$PG_VERSION 		postgresql-contrib-$PG_MAJOR=$PG_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Fri, 12 Aug 2016 16:19:34 GMT
RUN mv -v /usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample /usr/share/postgresql/$PG_MAJOR/ 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Fri, 12 Aug 2016 16:19:36 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres /var/run/postgresql
# Fri, 12 Aug 2016 16:19:37 GMT
ENV PATH=/usr/lib/postgresql/9.4/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 12 Aug 2016 16:19:38 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 12 Aug 2016 16:19:39 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 12 Aug 2016 16:19:40 GMT
COPY file:aefa30113260f63949e77cbc9a66aa22f27b1f79479507fd0d32f9b6a6994d69 in /
# Fri, 12 Aug 2016 16:19:41 GMT
ENTRYPOINT &{["/docker-entrypoint.sh"]}
# Fri, 12 Aug 2016 16:19:42 GMT
EXPOSE 5432/tcp
# Fri, 12 Aug 2016 16:19:43 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)
	-	`sha256:c2c7a60f64c55d6c68b6efd3fa2be1000b00f0d21eae3b308e9b11233e06d97f`  
		Last Modified: Mon, 01 Aug 2016 21:03:07 GMT  
		Size: 2.0 KB (2041 bytes)
	-	`sha256:41ae9dccaf61454fcc40e613824212e861d7f3154edabe5e2de5bbae5b7783a7`  
		Last Modified: Mon, 01 Aug 2016 21:03:06 GMT  
		Size: 1.2 MB (1216533 bytes)
	-	`sha256:f97dc66893dee780a3df721bc5e03abf97e6a6b43b7e4fc938697a04640d50f9`  
		Last Modified: Mon, 01 Aug 2016 21:03:08 GMT  
		Size: 6.9 MB (6863889 bytes)
	-	`sha256:ff0ae6b27f855237075b51a1351670a20344803dc9c8a889f641df6eee2fa39c`  
		Last Modified: Mon, 01 Aug 2016 21:03:05 GMT  
		Size: 112.0 B
	-	`sha256:0ad5d181a0a159544163c500b295eb921192028a2340120958df6147ec53543c`  
		Last Modified: Mon, 01 Aug 2016 21:03:05 GMT  
		Size: 3.4 KB (3415 bytes)
	-	`sha256:6de255872cb1450c520635a956fb241fa1c54cd148ce731e628bc9f020889830`  
		Last Modified: Fri, 12 Aug 2016 16:29:55 GMT  
		Size: 226.0 B
	-	`sha256:2aef85027584daeb34959639c7c6779a166d082baedd1c83317decd1f7f91c18`  
		Last Modified: Fri, 12 Aug 2016 16:30:07 GMT  
		Size: 41.4 MB (41433001 bytes)
	-	`sha256:62a477ca5006929e6c508342df1af9922a89e7807f88885d6c7599a0dd6fe04a`  
		Last Modified: Fri, 12 Aug 2016 16:29:55 GMT  
		Size: 6.7 KB (6712 bytes)
	-	`sha256:80c799b49e0070834ba454bfdaead3e9bc569b724245cfabaf7b951a6b3298c5`  
		Last Modified: Fri, 12 Aug 2016 16:29:55 GMT  
		Size: 132.0 B
	-	`sha256:abd7f5dfd91417d4dc8db50c1dcb7d55927dcbfddd67e000a947532532ff547e`  
		Last Modified: Fri, 12 Aug 2016 16:29:55 GMT  
		Size: 1.3 KB (1252 bytes)

## `postgres:9.4`

```console
$ docker pull postgres@sha256:be73038dcc0f49cf0d569305cd084695e0989e817bb325335c91d4a9c70820f6
```

-	Platforms:
	-	linux; amd64

### `postgres:9.4` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **100.9 MB (100892924 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5dd312583eea63c1005cb93cb3ce54f6d43203227f2c0580e5f7b101b24eeb26`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Thu, 28 Jul 2016 17:47:54 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in /
# Thu, 28 Jul 2016 17:47:55 GMT
CMD ["/bin/bash"]
# Mon, 01 Aug 2016 20:57:15 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Mon, 01 Aug 2016 20:57:15 GMT
ENV GOSU_VERSION=1.7
# Mon, 01 Aug 2016 20:58:40 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Mon, 01 Aug 2016 20:59:40 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Mon, 01 Aug 2016 20:59:40 GMT
ENV LANG=en_US.utf8
# Mon, 01 Aug 2016 20:59:42 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Mon, 01 Aug 2016 21:00:01 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8
# Mon, 01 Aug 2016 21:03:33 GMT
ENV PG_MAJOR=9.4
# Fri, 12 Aug 2016 16:16:53 GMT
ENV PG_VERSION=9.4.9-1.pgdg80+1
# Fri, 12 Aug 2016 16:16:55 GMT
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main' $PG_MAJOR > /etc/apt/sources.list.d/pgdg.list
# Fri, 12 Aug 2016 16:19:31 GMT
RUN apt-get update 	&& apt-get install -y postgresql-common 	&& sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf 	&& apt-get install -y 		postgresql-$PG_MAJOR=$PG_VERSION 		postgresql-contrib-$PG_MAJOR=$PG_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Fri, 12 Aug 2016 16:19:34 GMT
RUN mv -v /usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample /usr/share/postgresql/$PG_MAJOR/ 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Fri, 12 Aug 2016 16:19:36 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres /var/run/postgresql
# Fri, 12 Aug 2016 16:19:37 GMT
ENV PATH=/usr/lib/postgresql/9.4/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 12 Aug 2016 16:19:38 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 12 Aug 2016 16:19:39 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 12 Aug 2016 16:19:40 GMT
COPY file:aefa30113260f63949e77cbc9a66aa22f27b1f79479507fd0d32f9b6a6994d69 in /
# Fri, 12 Aug 2016 16:19:41 GMT
ENTRYPOINT &{["/docker-entrypoint.sh"]}
# Fri, 12 Aug 2016 16:19:42 GMT
EXPOSE 5432/tcp
# Fri, 12 Aug 2016 16:19:43 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)
	-	`sha256:c2c7a60f64c55d6c68b6efd3fa2be1000b00f0d21eae3b308e9b11233e06d97f`  
		Last Modified: Mon, 01 Aug 2016 21:03:07 GMT  
		Size: 2.0 KB (2041 bytes)
	-	`sha256:41ae9dccaf61454fcc40e613824212e861d7f3154edabe5e2de5bbae5b7783a7`  
		Last Modified: Mon, 01 Aug 2016 21:03:06 GMT  
		Size: 1.2 MB (1216533 bytes)
	-	`sha256:f97dc66893dee780a3df721bc5e03abf97e6a6b43b7e4fc938697a04640d50f9`  
		Last Modified: Mon, 01 Aug 2016 21:03:08 GMT  
		Size: 6.9 MB (6863889 bytes)
	-	`sha256:ff0ae6b27f855237075b51a1351670a20344803dc9c8a889f641df6eee2fa39c`  
		Last Modified: Mon, 01 Aug 2016 21:03:05 GMT  
		Size: 112.0 B
	-	`sha256:0ad5d181a0a159544163c500b295eb921192028a2340120958df6147ec53543c`  
		Last Modified: Mon, 01 Aug 2016 21:03:05 GMT  
		Size: 3.4 KB (3415 bytes)
	-	`sha256:6de255872cb1450c520635a956fb241fa1c54cd148ce731e628bc9f020889830`  
		Last Modified: Fri, 12 Aug 2016 16:29:55 GMT  
		Size: 226.0 B
	-	`sha256:2aef85027584daeb34959639c7c6779a166d082baedd1c83317decd1f7f91c18`  
		Last Modified: Fri, 12 Aug 2016 16:30:07 GMT  
		Size: 41.4 MB (41433001 bytes)
	-	`sha256:62a477ca5006929e6c508342df1af9922a89e7807f88885d6c7599a0dd6fe04a`  
		Last Modified: Fri, 12 Aug 2016 16:29:55 GMT  
		Size: 6.7 KB (6712 bytes)
	-	`sha256:80c799b49e0070834ba454bfdaead3e9bc569b724245cfabaf7b951a6b3298c5`  
		Last Modified: Fri, 12 Aug 2016 16:29:55 GMT  
		Size: 132.0 B
	-	`sha256:abd7f5dfd91417d4dc8db50c1dcb7d55927dcbfddd67e000a947532532ff547e`  
		Last Modified: Fri, 12 Aug 2016 16:29:55 GMT  
		Size: 1.3 KB (1252 bytes)

## `postgres:9.3.14`

```console
$ docker pull postgres@sha256:0d0ed9fa5485570135bf91b91bac1755f575d4296e8faba2d31ef9c0389f0a15
```

-	Platforms:
	-	linux; amd64

### `postgres:9.3.14` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **100.5 MB (100541148 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2765954481f69ae7805f12a55a891dd65e31ffb8184c66bc386c5999509a5e34`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Thu, 28 Jul 2016 17:47:54 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in /
# Thu, 28 Jul 2016 17:47:55 GMT
CMD ["/bin/bash"]
# Mon, 01 Aug 2016 20:57:15 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Mon, 01 Aug 2016 20:57:15 GMT
ENV GOSU_VERSION=1.7
# Mon, 01 Aug 2016 20:58:40 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Mon, 01 Aug 2016 20:59:40 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Mon, 01 Aug 2016 20:59:40 GMT
ENV LANG=en_US.utf8
# Mon, 01 Aug 2016 20:59:42 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Mon, 01 Aug 2016 21:00:01 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8
# Mon, 01 Aug 2016 21:18:06 GMT
ENV PG_MAJOR=9.3
# Fri, 12 Aug 2016 16:19:44 GMT
ENV PG_VERSION=9.3.14-1.pgdg80+1
# Fri, 12 Aug 2016 16:19:47 GMT
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main' $PG_MAJOR > /etc/apt/sources.list.d/pgdg.list
# Fri, 12 Aug 2016 16:22:32 GMT
RUN apt-get update 	&& apt-get install -y postgresql-common 	&& sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf 	&& apt-get install -y 		postgresql-$PG_MAJOR=$PG_VERSION 		postgresql-contrib-$PG_MAJOR=$PG_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Fri, 12 Aug 2016 16:22:34 GMT
RUN mv -v /usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample /usr/share/postgresql/$PG_MAJOR/ 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Fri, 12 Aug 2016 16:22:35 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres /var/run/postgresql
# Fri, 12 Aug 2016 16:22:36 GMT
ENV PATH=/usr/lib/postgresql/9.3/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 12 Aug 2016 16:22:36 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 12 Aug 2016 16:22:37 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 12 Aug 2016 16:22:37 GMT
COPY file:aefa30113260f63949e77cbc9a66aa22f27b1f79479507fd0d32f9b6a6994d69 in /
# Fri, 12 Aug 2016 16:22:38 GMT
ENTRYPOINT &{["/docker-entrypoint.sh"]}
# Fri, 12 Aug 2016 16:22:38 GMT
EXPOSE 5432/tcp
# Fri, 12 Aug 2016 16:22:39 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)
	-	`sha256:c2c7a60f64c55d6c68b6efd3fa2be1000b00f0d21eae3b308e9b11233e06d97f`  
		Last Modified: Mon, 01 Aug 2016 21:03:07 GMT  
		Size: 2.0 KB (2041 bytes)
	-	`sha256:41ae9dccaf61454fcc40e613824212e861d7f3154edabe5e2de5bbae5b7783a7`  
		Last Modified: Mon, 01 Aug 2016 21:03:06 GMT  
		Size: 1.2 MB (1216533 bytes)
	-	`sha256:f97dc66893dee780a3df721bc5e03abf97e6a6b43b7e4fc938697a04640d50f9`  
		Last Modified: Mon, 01 Aug 2016 21:03:08 GMT  
		Size: 6.9 MB (6863889 bytes)
	-	`sha256:ff0ae6b27f855237075b51a1351670a20344803dc9c8a889f641df6eee2fa39c`  
		Last Modified: Mon, 01 Aug 2016 21:03:05 GMT  
		Size: 112.0 B
	-	`sha256:0ad5d181a0a159544163c500b295eb921192028a2340120958df6147ec53543c`  
		Last Modified: Mon, 01 Aug 2016 21:03:05 GMT  
		Size: 3.4 KB (3415 bytes)
	-	`sha256:725814e14c5e2436b44b363a8a65bcc7bb141cc32817e8f1e2d7156cd72f8d17`  
		Last Modified: Fri, 12 Aug 2016 16:30:40 GMT  
		Size: 225.0 B
	-	`sha256:f65e999c26b4cecb5c14e7272eda93691c40fc476c8b7fb8b10b7185adc5b6f2`  
		Last Modified: Fri, 12 Aug 2016 16:30:51 GMT  
		Size: 41.1 MB (41081406 bytes)
	-	`sha256:a649ce7f4fe4d8e08fc2f966f76885372c6f0b3bee61e874ababb6dc1e994174`  
		Last Modified: Fri, 12 Aug 2016 16:30:39 GMT  
		Size: 6.5 KB (6529 bytes)
	-	`sha256:3f4499a710c33be882fd3f51f5013dd47e8170c4d5b6a34ac42941cb0277c11d`  
		Last Modified: Fri, 12 Aug 2016 16:30:39 GMT  
		Size: 134.0 B
	-	`sha256:79ada2a6d699c9cb9b97ccbaa41aa0b8d36d2267f68460fdb8ea05e4f5c029d5`  
		Last Modified: Fri, 12 Aug 2016 16:30:40 GMT  
		Size: 1.3 KB (1253 bytes)

## `postgres:9.3`

```console
$ docker pull postgres@sha256:0d0ed9fa5485570135bf91b91bac1755f575d4296e8faba2d31ef9c0389f0a15
```

-	Platforms:
	-	linux; amd64

### `postgres:9.3` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **100.5 MB (100541148 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2765954481f69ae7805f12a55a891dd65e31ffb8184c66bc386c5999509a5e34`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Thu, 28 Jul 2016 17:47:54 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in /
# Thu, 28 Jul 2016 17:47:55 GMT
CMD ["/bin/bash"]
# Mon, 01 Aug 2016 20:57:15 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Mon, 01 Aug 2016 20:57:15 GMT
ENV GOSU_VERSION=1.7
# Mon, 01 Aug 2016 20:58:40 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Mon, 01 Aug 2016 20:59:40 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Mon, 01 Aug 2016 20:59:40 GMT
ENV LANG=en_US.utf8
# Mon, 01 Aug 2016 20:59:42 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Mon, 01 Aug 2016 21:00:01 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8
# Mon, 01 Aug 2016 21:18:06 GMT
ENV PG_MAJOR=9.3
# Fri, 12 Aug 2016 16:19:44 GMT
ENV PG_VERSION=9.3.14-1.pgdg80+1
# Fri, 12 Aug 2016 16:19:47 GMT
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main' $PG_MAJOR > /etc/apt/sources.list.d/pgdg.list
# Fri, 12 Aug 2016 16:22:32 GMT
RUN apt-get update 	&& apt-get install -y postgresql-common 	&& sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf 	&& apt-get install -y 		postgresql-$PG_MAJOR=$PG_VERSION 		postgresql-contrib-$PG_MAJOR=$PG_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Fri, 12 Aug 2016 16:22:34 GMT
RUN mv -v /usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample /usr/share/postgresql/$PG_MAJOR/ 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Fri, 12 Aug 2016 16:22:35 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres /var/run/postgresql
# Fri, 12 Aug 2016 16:22:36 GMT
ENV PATH=/usr/lib/postgresql/9.3/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 12 Aug 2016 16:22:36 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 12 Aug 2016 16:22:37 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 12 Aug 2016 16:22:37 GMT
COPY file:aefa30113260f63949e77cbc9a66aa22f27b1f79479507fd0d32f9b6a6994d69 in /
# Fri, 12 Aug 2016 16:22:38 GMT
ENTRYPOINT &{["/docker-entrypoint.sh"]}
# Fri, 12 Aug 2016 16:22:38 GMT
EXPOSE 5432/tcp
# Fri, 12 Aug 2016 16:22:39 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)
	-	`sha256:c2c7a60f64c55d6c68b6efd3fa2be1000b00f0d21eae3b308e9b11233e06d97f`  
		Last Modified: Mon, 01 Aug 2016 21:03:07 GMT  
		Size: 2.0 KB (2041 bytes)
	-	`sha256:41ae9dccaf61454fcc40e613824212e861d7f3154edabe5e2de5bbae5b7783a7`  
		Last Modified: Mon, 01 Aug 2016 21:03:06 GMT  
		Size: 1.2 MB (1216533 bytes)
	-	`sha256:f97dc66893dee780a3df721bc5e03abf97e6a6b43b7e4fc938697a04640d50f9`  
		Last Modified: Mon, 01 Aug 2016 21:03:08 GMT  
		Size: 6.9 MB (6863889 bytes)
	-	`sha256:ff0ae6b27f855237075b51a1351670a20344803dc9c8a889f641df6eee2fa39c`  
		Last Modified: Mon, 01 Aug 2016 21:03:05 GMT  
		Size: 112.0 B
	-	`sha256:0ad5d181a0a159544163c500b295eb921192028a2340120958df6147ec53543c`  
		Last Modified: Mon, 01 Aug 2016 21:03:05 GMT  
		Size: 3.4 KB (3415 bytes)
	-	`sha256:725814e14c5e2436b44b363a8a65bcc7bb141cc32817e8f1e2d7156cd72f8d17`  
		Last Modified: Fri, 12 Aug 2016 16:30:40 GMT  
		Size: 225.0 B
	-	`sha256:f65e999c26b4cecb5c14e7272eda93691c40fc476c8b7fb8b10b7185adc5b6f2`  
		Last Modified: Fri, 12 Aug 2016 16:30:51 GMT  
		Size: 41.1 MB (41081406 bytes)
	-	`sha256:a649ce7f4fe4d8e08fc2f966f76885372c6f0b3bee61e874ababb6dc1e994174`  
		Last Modified: Fri, 12 Aug 2016 16:30:39 GMT  
		Size: 6.5 KB (6529 bytes)
	-	`sha256:3f4499a710c33be882fd3f51f5013dd47e8170c4d5b6a34ac42941cb0277c11d`  
		Last Modified: Fri, 12 Aug 2016 16:30:39 GMT  
		Size: 134.0 B
	-	`sha256:79ada2a6d699c9cb9b97ccbaa41aa0b8d36d2267f68460fdb8ea05e4f5c029d5`  
		Last Modified: Fri, 12 Aug 2016 16:30:40 GMT  
		Size: 1.3 KB (1253 bytes)

## `postgres:9.2.18`

```console
$ docker pull postgres@sha256:81e668ab855f1d25bf6aee12af8fc07b0e6148a87810b447a954fae69a012b89
```

-	Platforms:
	-	linux; amd64

### `postgres:9.2.18` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **100.4 MB (100378874 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8bb0f78d3fb1399cae6a043234ea8f9286a44bca8675b849aea8c42ece475f84`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Thu, 28 Jul 2016 17:47:54 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in /
# Thu, 28 Jul 2016 17:47:55 GMT
CMD ["/bin/bash"]
# Mon, 01 Aug 2016 20:57:15 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Mon, 01 Aug 2016 20:57:15 GMT
ENV GOSU_VERSION=1.7
# Mon, 01 Aug 2016 20:58:40 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Mon, 01 Aug 2016 20:59:40 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Mon, 01 Aug 2016 20:59:40 GMT
ENV LANG=en_US.utf8
# Mon, 01 Aug 2016 20:59:42 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Mon, 01 Aug 2016 21:00:01 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8
# Mon, 01 Aug 2016 21:14:34 GMT
ENV PG_MAJOR=9.2
# Fri, 12 Aug 2016 16:22:39 GMT
ENV PG_VERSION=9.2.18-1.pgdg80+1
# Fri, 12 Aug 2016 16:22:41 GMT
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main' $PG_MAJOR > /etc/apt/sources.list.d/pgdg.list
# Fri, 12 Aug 2016 16:25:18 GMT
RUN apt-get update 	&& apt-get install -y postgresql-common 	&& sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf 	&& apt-get install -y 		postgresql-$PG_MAJOR=$PG_VERSION 		postgresql-contrib-$PG_MAJOR=$PG_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Fri, 12 Aug 2016 16:25:20 GMT
RUN mv -v /usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample /usr/share/postgresql/$PG_MAJOR/ 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Fri, 12 Aug 2016 16:25:21 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres /var/run/postgresql
# Fri, 12 Aug 2016 16:25:22 GMT
ENV PATH=/usr/lib/postgresql/9.2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 12 Aug 2016 16:25:22 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 12 Aug 2016 16:25:23 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 12 Aug 2016 16:25:23 GMT
COPY file:aefa30113260f63949e77cbc9a66aa22f27b1f79479507fd0d32f9b6a6994d69 in /
# Fri, 12 Aug 2016 16:25:24 GMT
ENTRYPOINT &{["/docker-entrypoint.sh"]}
# Fri, 12 Aug 2016 16:25:24 GMT
EXPOSE 5432/tcp
# Fri, 12 Aug 2016 16:25:25 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)
	-	`sha256:c2c7a60f64c55d6c68b6efd3fa2be1000b00f0d21eae3b308e9b11233e06d97f`  
		Last Modified: Mon, 01 Aug 2016 21:03:07 GMT  
		Size: 2.0 KB (2041 bytes)
	-	`sha256:41ae9dccaf61454fcc40e613824212e861d7f3154edabe5e2de5bbae5b7783a7`  
		Last Modified: Mon, 01 Aug 2016 21:03:06 GMT  
		Size: 1.2 MB (1216533 bytes)
	-	`sha256:f97dc66893dee780a3df721bc5e03abf97e6a6b43b7e4fc938697a04640d50f9`  
		Last Modified: Mon, 01 Aug 2016 21:03:08 GMT  
		Size: 6.9 MB (6863889 bytes)
	-	`sha256:ff0ae6b27f855237075b51a1351670a20344803dc9c8a889f641df6eee2fa39c`  
		Last Modified: Mon, 01 Aug 2016 21:03:05 GMT  
		Size: 112.0 B
	-	`sha256:0ad5d181a0a159544163c500b295eb921192028a2340120958df6147ec53543c`  
		Last Modified: Mon, 01 Aug 2016 21:03:05 GMT  
		Size: 3.4 KB (3415 bytes)
	-	`sha256:d999441d60877ac29b69ebdeeaa2c56407e244e655dfdce6bba18f2461eeedbf`  
		Last Modified: Fri, 12 Aug 2016 16:31:20 GMT  
		Size: 226.0 B
	-	`sha256:77825fc04171cbd5a9f46d73da505de06401446e560a95ac4603d38d1c66a4c4`  
		Last Modified: Fri, 12 Aug 2016 16:31:31 GMT  
		Size: 40.9 MB (40919188 bytes)
	-	`sha256:c81ee70c10d630843a8a1dce68e6e37204d3947bbdff781a37194f2a983dfe78`  
		Last Modified: Fri, 12 Aug 2016 16:31:20 GMT  
		Size: 6.5 KB (6474 bytes)
	-	`sha256:09bf53cd2c0c6efb4890c253d165c2bf5c7041ed29975f6c0a078eb6a5ecaeb4`  
		Last Modified: Fri, 12 Aug 2016 16:31:19 GMT  
		Size: 132.0 B
	-	`sha256:b5b66122b77483837bee15a8cfb7e25ffe1fcb8b63d0a9b18ba4ecf4e9bed3ad`  
		Last Modified: Fri, 12 Aug 2016 16:31:19 GMT  
		Size: 1.3 KB (1253 bytes)

## `postgres:9.2`

```console
$ docker pull postgres@sha256:81e668ab855f1d25bf6aee12af8fc07b0e6148a87810b447a954fae69a012b89
```

-	Platforms:
	-	linux; amd64

### `postgres:9.2` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **100.4 MB (100378874 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8bb0f78d3fb1399cae6a043234ea8f9286a44bca8675b849aea8c42ece475f84`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Thu, 28 Jul 2016 17:47:54 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in /
# Thu, 28 Jul 2016 17:47:55 GMT
CMD ["/bin/bash"]
# Mon, 01 Aug 2016 20:57:15 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Mon, 01 Aug 2016 20:57:15 GMT
ENV GOSU_VERSION=1.7
# Mon, 01 Aug 2016 20:58:40 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Mon, 01 Aug 2016 20:59:40 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Mon, 01 Aug 2016 20:59:40 GMT
ENV LANG=en_US.utf8
# Mon, 01 Aug 2016 20:59:42 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Mon, 01 Aug 2016 21:00:01 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8
# Mon, 01 Aug 2016 21:14:34 GMT
ENV PG_MAJOR=9.2
# Fri, 12 Aug 2016 16:22:39 GMT
ENV PG_VERSION=9.2.18-1.pgdg80+1
# Fri, 12 Aug 2016 16:22:41 GMT
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main' $PG_MAJOR > /etc/apt/sources.list.d/pgdg.list
# Fri, 12 Aug 2016 16:25:18 GMT
RUN apt-get update 	&& apt-get install -y postgresql-common 	&& sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf 	&& apt-get install -y 		postgresql-$PG_MAJOR=$PG_VERSION 		postgresql-contrib-$PG_MAJOR=$PG_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Fri, 12 Aug 2016 16:25:20 GMT
RUN mv -v /usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample /usr/share/postgresql/$PG_MAJOR/ 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Fri, 12 Aug 2016 16:25:21 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres /var/run/postgresql
# Fri, 12 Aug 2016 16:25:22 GMT
ENV PATH=/usr/lib/postgresql/9.2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 12 Aug 2016 16:25:22 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 12 Aug 2016 16:25:23 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 12 Aug 2016 16:25:23 GMT
COPY file:aefa30113260f63949e77cbc9a66aa22f27b1f79479507fd0d32f9b6a6994d69 in /
# Fri, 12 Aug 2016 16:25:24 GMT
ENTRYPOINT &{["/docker-entrypoint.sh"]}
# Fri, 12 Aug 2016 16:25:24 GMT
EXPOSE 5432/tcp
# Fri, 12 Aug 2016 16:25:25 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)
	-	`sha256:c2c7a60f64c55d6c68b6efd3fa2be1000b00f0d21eae3b308e9b11233e06d97f`  
		Last Modified: Mon, 01 Aug 2016 21:03:07 GMT  
		Size: 2.0 KB (2041 bytes)
	-	`sha256:41ae9dccaf61454fcc40e613824212e861d7f3154edabe5e2de5bbae5b7783a7`  
		Last Modified: Mon, 01 Aug 2016 21:03:06 GMT  
		Size: 1.2 MB (1216533 bytes)
	-	`sha256:f97dc66893dee780a3df721bc5e03abf97e6a6b43b7e4fc938697a04640d50f9`  
		Last Modified: Mon, 01 Aug 2016 21:03:08 GMT  
		Size: 6.9 MB (6863889 bytes)
	-	`sha256:ff0ae6b27f855237075b51a1351670a20344803dc9c8a889f641df6eee2fa39c`  
		Last Modified: Mon, 01 Aug 2016 21:03:05 GMT  
		Size: 112.0 B
	-	`sha256:0ad5d181a0a159544163c500b295eb921192028a2340120958df6147ec53543c`  
		Last Modified: Mon, 01 Aug 2016 21:03:05 GMT  
		Size: 3.4 KB (3415 bytes)
	-	`sha256:d999441d60877ac29b69ebdeeaa2c56407e244e655dfdce6bba18f2461eeedbf`  
		Last Modified: Fri, 12 Aug 2016 16:31:20 GMT  
		Size: 226.0 B
	-	`sha256:77825fc04171cbd5a9f46d73da505de06401446e560a95ac4603d38d1c66a4c4`  
		Last Modified: Fri, 12 Aug 2016 16:31:31 GMT  
		Size: 40.9 MB (40919188 bytes)
	-	`sha256:c81ee70c10d630843a8a1dce68e6e37204d3947bbdff781a37194f2a983dfe78`  
		Last Modified: Fri, 12 Aug 2016 16:31:20 GMT  
		Size: 6.5 KB (6474 bytes)
	-	`sha256:09bf53cd2c0c6efb4890c253d165c2bf5c7041ed29975f6c0a078eb6a5ecaeb4`  
		Last Modified: Fri, 12 Aug 2016 16:31:19 GMT  
		Size: 132.0 B
	-	`sha256:b5b66122b77483837bee15a8cfb7e25ffe1fcb8b63d0a9b18ba4ecf4e9bed3ad`  
		Last Modified: Fri, 12 Aug 2016 16:31:19 GMT  
		Size: 1.3 KB (1253 bytes)

## `postgres:9.1.23`

```console
$ docker pull postgres@sha256:fea8c3a6bcfed733f76d25bcc3f0a98f561070392032dba014d8f5f73fe54ed7
```

-	Platforms:
	-	linux; amd64

### `postgres:9.1.23` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **100.2 MB (100199372 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6643b21948e88f140e0c684b50f325d45cdca59c38550566196580dee9984860`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Thu, 28 Jul 2016 17:47:54 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in /
# Thu, 28 Jul 2016 17:47:55 GMT
CMD ["/bin/bash"]
# Mon, 01 Aug 2016 20:57:15 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Mon, 01 Aug 2016 20:57:15 GMT
ENV GOSU_VERSION=1.7
# Mon, 01 Aug 2016 20:58:40 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Mon, 01 Aug 2016 20:59:40 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Mon, 01 Aug 2016 20:59:40 GMT
ENV LANG=en_US.utf8
# Mon, 01 Aug 2016 20:59:42 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Mon, 01 Aug 2016 21:00:01 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8
# Mon, 01 Aug 2016 21:00:01 GMT
ENV PG_MAJOR=9.1
# Fri, 12 Aug 2016 16:25:25 GMT
ENV PG_VERSION=9.1.23-1.pgdg80+1
# Fri, 12 Aug 2016 16:25:27 GMT
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main' $PG_MAJOR > /etc/apt/sources.list.d/pgdg.list
# Fri, 12 Aug 2016 16:27:54 GMT
RUN apt-get update 	&& apt-get install -y postgresql-common 	&& sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf 	&& apt-get install -y 		postgresql-$PG_MAJOR=$PG_VERSION 		postgresql-contrib-$PG_MAJOR=$PG_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Fri, 12 Aug 2016 16:27:56 GMT
RUN mv -v /usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample /usr/share/postgresql/$PG_MAJOR/ 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Fri, 12 Aug 2016 16:27:57 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres /var/run/postgresql
# Fri, 12 Aug 2016 16:27:58 GMT
ENV PATH=/usr/lib/postgresql/9.1/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 12 Aug 2016 16:27:58 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 12 Aug 2016 16:27:59 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 12 Aug 2016 16:27:59 GMT
COPY file:aefa30113260f63949e77cbc9a66aa22f27b1f79479507fd0d32f9b6a6994d69 in /
# Fri, 12 Aug 2016 16:28:00 GMT
ENTRYPOINT &{["/docker-entrypoint.sh"]}
# Fri, 12 Aug 2016 16:28:00 GMT
EXPOSE 5432/tcp
# Fri, 12 Aug 2016 16:28:01 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)
	-	`sha256:c2c7a60f64c55d6c68b6efd3fa2be1000b00f0d21eae3b308e9b11233e06d97f`  
		Last Modified: Mon, 01 Aug 2016 21:03:07 GMT  
		Size: 2.0 KB (2041 bytes)
	-	`sha256:41ae9dccaf61454fcc40e613824212e861d7f3154edabe5e2de5bbae5b7783a7`  
		Last Modified: Mon, 01 Aug 2016 21:03:06 GMT  
		Size: 1.2 MB (1216533 bytes)
	-	`sha256:f97dc66893dee780a3df721bc5e03abf97e6a6b43b7e4fc938697a04640d50f9`  
		Last Modified: Mon, 01 Aug 2016 21:03:08 GMT  
		Size: 6.9 MB (6863889 bytes)
	-	`sha256:ff0ae6b27f855237075b51a1351670a20344803dc9c8a889f641df6eee2fa39c`  
		Last Modified: Mon, 01 Aug 2016 21:03:05 GMT  
		Size: 112.0 B
	-	`sha256:0ad5d181a0a159544163c500b295eb921192028a2340120958df6147ec53543c`  
		Last Modified: Mon, 01 Aug 2016 21:03:05 GMT  
		Size: 3.4 KB (3415 bytes)
	-	`sha256:26204f388991db92303fe729a1c09843ac7c917f4c60a8206c7436916da33362`  
		Last Modified: Fri, 12 Aug 2016 16:32:02 GMT  
		Size: 227.0 B
	-	`sha256:a52290e190f79256a8dd96af30f4a9d3a5044aa8e98f8e9464d5c405e7fa870d`  
		Last Modified: Fri, 12 Aug 2016 16:32:13 GMT  
		Size: 40.7 MB (40739859 bytes)
	-	`sha256:17bdee9c27e76ca2f769a1c4870be6d041c20da7a75fe2ed0bc5fd3f2a8987b1`  
		Last Modified: Fri, 12 Aug 2016 16:32:02 GMT  
		Size: 6.3 KB (6297 bytes)
	-	`sha256:34cfee5231f87d113aa1349f6554abfed863b62d232575067f1673ecb9718463`  
		Last Modified: Fri, 12 Aug 2016 16:32:02 GMT  
		Size: 134.0 B
	-	`sha256:9ff1c675ba9759f4fe12b1be55eda17eab4e66cf2f86f14db25b90bede40aa29`  
		Last Modified: Fri, 12 Aug 2016 16:32:02 GMT  
		Size: 1.3 KB (1254 bytes)

## `postgres:9.1`

```console
$ docker pull postgres@sha256:fea8c3a6bcfed733f76d25bcc3f0a98f561070392032dba014d8f5f73fe54ed7
```

-	Platforms:
	-	linux; amd64

### `postgres:9.1` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **100.2 MB (100199372 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6643b21948e88f140e0c684b50f325d45cdca59c38550566196580dee9984860`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Thu, 28 Jul 2016 17:47:54 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in /
# Thu, 28 Jul 2016 17:47:55 GMT
CMD ["/bin/bash"]
# Mon, 01 Aug 2016 20:57:15 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Mon, 01 Aug 2016 20:57:15 GMT
ENV GOSU_VERSION=1.7
# Mon, 01 Aug 2016 20:58:40 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Mon, 01 Aug 2016 20:59:40 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Mon, 01 Aug 2016 20:59:40 GMT
ENV LANG=en_US.utf8
# Mon, 01 Aug 2016 20:59:42 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Mon, 01 Aug 2016 21:00:01 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8
# Mon, 01 Aug 2016 21:00:01 GMT
ENV PG_MAJOR=9.1
# Fri, 12 Aug 2016 16:25:25 GMT
ENV PG_VERSION=9.1.23-1.pgdg80+1
# Fri, 12 Aug 2016 16:25:27 GMT
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main' $PG_MAJOR > /etc/apt/sources.list.d/pgdg.list
# Fri, 12 Aug 2016 16:27:54 GMT
RUN apt-get update 	&& apt-get install -y postgresql-common 	&& sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf 	&& apt-get install -y 		postgresql-$PG_MAJOR=$PG_VERSION 		postgresql-contrib-$PG_MAJOR=$PG_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Fri, 12 Aug 2016 16:27:56 GMT
RUN mv -v /usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample /usr/share/postgresql/$PG_MAJOR/ 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Fri, 12 Aug 2016 16:27:57 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres /var/run/postgresql
# Fri, 12 Aug 2016 16:27:58 GMT
ENV PATH=/usr/lib/postgresql/9.1/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 12 Aug 2016 16:27:58 GMT
ENV PGDATA=/var/lib/postgresql/data
# Fri, 12 Aug 2016 16:27:59 GMT
VOLUME [/var/lib/postgresql/data]
# Fri, 12 Aug 2016 16:27:59 GMT
COPY file:aefa30113260f63949e77cbc9a66aa22f27b1f79479507fd0d32f9b6a6994d69 in /
# Fri, 12 Aug 2016 16:28:00 GMT
ENTRYPOINT &{["/docker-entrypoint.sh"]}
# Fri, 12 Aug 2016 16:28:00 GMT
EXPOSE 5432/tcp
# Fri, 12 Aug 2016 16:28:01 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)
	-	`sha256:c2c7a60f64c55d6c68b6efd3fa2be1000b00f0d21eae3b308e9b11233e06d97f`  
		Last Modified: Mon, 01 Aug 2016 21:03:07 GMT  
		Size: 2.0 KB (2041 bytes)
	-	`sha256:41ae9dccaf61454fcc40e613824212e861d7f3154edabe5e2de5bbae5b7783a7`  
		Last Modified: Mon, 01 Aug 2016 21:03:06 GMT  
		Size: 1.2 MB (1216533 bytes)
	-	`sha256:f97dc66893dee780a3df721bc5e03abf97e6a6b43b7e4fc938697a04640d50f9`  
		Last Modified: Mon, 01 Aug 2016 21:03:08 GMT  
		Size: 6.9 MB (6863889 bytes)
	-	`sha256:ff0ae6b27f855237075b51a1351670a20344803dc9c8a889f641df6eee2fa39c`  
		Last Modified: Mon, 01 Aug 2016 21:03:05 GMT  
		Size: 112.0 B
	-	`sha256:0ad5d181a0a159544163c500b295eb921192028a2340120958df6147ec53543c`  
		Last Modified: Mon, 01 Aug 2016 21:03:05 GMT  
		Size: 3.4 KB (3415 bytes)
	-	`sha256:26204f388991db92303fe729a1c09843ac7c917f4c60a8206c7436916da33362`  
		Last Modified: Fri, 12 Aug 2016 16:32:02 GMT  
		Size: 227.0 B
	-	`sha256:a52290e190f79256a8dd96af30f4a9d3a5044aa8e98f8e9464d5c405e7fa870d`  
		Last Modified: Fri, 12 Aug 2016 16:32:13 GMT  
		Size: 40.7 MB (40739859 bytes)
	-	`sha256:17bdee9c27e76ca2f769a1c4870be6d041c20da7a75fe2ed0bc5fd3f2a8987b1`  
		Last Modified: Fri, 12 Aug 2016 16:32:02 GMT  
		Size: 6.3 KB (6297 bytes)
	-	`sha256:34cfee5231f87d113aa1349f6554abfed863b62d232575067f1673ecb9718463`  
		Last Modified: Fri, 12 Aug 2016 16:32:02 GMT  
		Size: 134.0 B
	-	`sha256:9ff1c675ba9759f4fe12b1be55eda17eab4e66cf2f86f14db25b90bede40aa29`  
		Last Modified: Fri, 12 Aug 2016 16:32:02 GMT  
		Size: 1.3 KB (1254 bytes)
