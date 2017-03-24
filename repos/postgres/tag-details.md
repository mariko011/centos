<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `postgres`

-	[`postgres:9.6.2`](#postgres962)
-	[`postgres:9.6`](#postgres96)
-	[`postgres:9`](#postgres9)
-	[`postgres:latest`](#postgreslatest)
-	[`postgres:9.6.2-alpine`](#postgres962-alpine)
-	[`postgres:9.6-alpine`](#postgres96-alpine)
-	[`postgres:9-alpine`](#postgres9-alpine)
-	[`postgres:alpine`](#postgresalpine)
-	[`postgres:9.5.6`](#postgres956)
-	[`postgres:9.5`](#postgres95)
-	[`postgres:9.5.6-alpine`](#postgres956-alpine)
-	[`postgres:9.5-alpine`](#postgres95-alpine)
-	[`postgres:9.4.11`](#postgres9411)
-	[`postgres:9.4`](#postgres94)
-	[`postgres:9.4.11-alpine`](#postgres9411-alpine)
-	[`postgres:9.4-alpine`](#postgres94-alpine)
-	[`postgres:9.3.16`](#postgres9316)
-	[`postgres:9.3`](#postgres93)
-	[`postgres:9.3.16-alpine`](#postgres9316-alpine)
-	[`postgres:9.3-alpine`](#postgres93-alpine)
-	[`postgres:9.2.20`](#postgres9220)
-	[`postgres:9.2`](#postgres92)
-	[`postgres:9.2.20-alpine`](#postgres9220-alpine)
-	[`postgres:9.2-alpine`](#postgres92-alpine)

## `postgres:9.6.2`

```console
$ docker pull postgres@sha256:0983182790fa277da841f3f191bc00d20ca40d67b4c5bb27dec0a4ccbbbd8990
```

-	Platforms:
	-	linux; amd64

### `postgres:9.6.2` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **102.1 MB (102090200 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9910dc9f2ac0dbc193abc4718984cb3ad48989fc02cac4b36ad3d6b7d5d781f9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Tue, 21 Mar 2017 18:28:51 GMT
ADD file:4eedf861fb567fffb2694b65ebdd58d5e371a2c28c3863f363f333cb34e5eb7b in / 
# Tue, 21 Mar 2017 18:29:05 GMT
CMD ["/bin/bash"]
# Tue, 21 Mar 2017 23:38:28 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Tue, 21 Mar 2017 23:38:29 GMT
ENV GOSU_VERSION=1.7
# Tue, 21 Mar 2017 23:38:46 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 21 Mar 2017 23:38:54 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Tue, 21 Mar 2017 23:38:54 GMT
ENV LANG=en_US.utf8
# Tue, 21 Mar 2017 23:38:55 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 21 Mar 2017 23:38:56 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 21 Mar 2017 23:38:57 GMT
ENV PG_MAJOR=9.6
# Tue, 21 Mar 2017 23:38:57 GMT
ENV PG_VERSION=9.6.2-1.pgdg80+1
# Tue, 21 Mar 2017 23:38:58 GMT
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main' $PG_MAJOR > /etc/apt/sources.list.d/pgdg.list
# Tue, 21 Mar 2017 23:39:35 GMT
RUN apt-get update 	&& apt-get install -y postgresql-common 	&& sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf 	&& apt-get install -y 		postgresql-$PG_MAJOR=$PG_VERSION 		postgresql-contrib-$PG_MAJOR=$PG_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 23:39:36 GMT
RUN mv -v /usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample /usr/share/postgresql/$PG_MAJOR/ 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Tue, 21 Mar 2017 23:39:37 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod g+s /var/run/postgresql
# Tue, 21 Mar 2017 23:39:38 GMT
ENV PATH=/usr/lib/postgresql/9.6/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 21 Mar 2017 23:39:38 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 21 Mar 2017 23:39:39 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Tue, 21 Mar 2017 23:39:39 GMT
VOLUME [/var/lib/postgresql/data]
# Tue, 21 Mar 2017 23:39:40 GMT
COPY file:88a96354a6aaf272401b7f970f55a9dc174766547274d89eac38a4f16ed20c56 in /usr/local/bin/ 
# Tue, 21 Mar 2017 23:39:41 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 21 Mar 2017 23:39:41 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 21 Mar 2017 23:39:42 GMT
EXPOSE 5432/tcp
# Tue, 21 Mar 2017 23:39:42 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:6d827a3ef358f4fa21ef8251f95492e667da826653fd43641cef5a877dc03a70`  
		Last Modified: Tue, 21 Mar 2017 18:38:18 GMT  
		Size: 51.4 MB (51438476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d7f5459c169a3b3836db7a9501070438bc2c4a0dfc0577a073449fa7ee1ae40`  
		Last Modified: Fri, 24 Mar 2017 00:06:33 GMT  
		Size: 2.0 KB (2045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecb14191664d5b18e89d02ff79a6f4b0b698ddc6818f27a3d62a768dccc47845`  
		Last Modified: Fri, 24 Mar 2017 00:06:33 GMT  
		Size: 1.3 MB (1288981 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecd8857273964c150e39b2461772ec2d9445048adc0ee2c726ad42dc960cb1c0`  
		Last Modified: Fri, 24 Mar 2017 00:06:35 GMT  
		Size: 6.9 MB (6937295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1fc7408190a9a104bc4dff6ddc144ba86599c2e83dcdfcdfae3c331080bb7a4`  
		Last Modified: Fri, 24 Mar 2017 00:06:31 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3cf57a1b661d5e38def1a1b4258b6adfb329b4395951b35ab2d28a53af55b3b`  
		Last Modified: Fri, 24 Mar 2017 00:06:32 GMT  
		Size: 4.5 KB (4484 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91cef76ed67ea8d88d69ce88edc0c5b0aacb6a9ad5be49f825c6372d68dc0fd5`  
		Last Modified: Fri, 24 Mar 2017 00:11:20 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9236ca589ab42ba1deb8891f4bef7235a220b2e7768215fec469ef4eda6676bb`  
		Last Modified: Fri, 24 Mar 2017 00:11:35 GMT  
		Size: 42.4 MB (42409238 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69b3e91b94c544edcb87448c260fdc1f3ffe840fd2e560cbb42a9933a64e9963`  
		Last Modified: Fri, 24 Mar 2017 00:11:18 GMT  
		Size: 7.1 KB (7123 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cdc577dbd56f127ab86ce5db879714aa5e36ec188741354156795658e0e703b1`  
		Last Modified: Fri, 24 Mar 2017 00:11:17 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db908b0ac3de984dd97cee898d458d648a43586b00a90ba545097ced925a9faf`  
		Last Modified: Fri, 24 Mar 2017 00:11:17 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:336e0b933e27fbe48f6d2a3b3bdadaaa2fa87678127cceee16243f6571dbd370`  
		Last Modified: Fri, 24 Mar 2017 00:11:17 GMT  
		Size: 1.8 KB (1805 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0695813ce8e57ca8ca68de149a6155a308d6fbb9938dbf21657bbca0e646a36a`  
		Last Modified: Fri, 24 Mar 2017 00:11:18 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.6`

```console
$ docker pull postgres@sha256:0983182790fa277da841f3f191bc00d20ca40d67b4c5bb27dec0a4ccbbbd8990
```

-	Platforms:
	-	linux; amd64

### `postgres:9.6` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **102.1 MB (102090200 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9910dc9f2ac0dbc193abc4718984cb3ad48989fc02cac4b36ad3d6b7d5d781f9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Tue, 21 Mar 2017 18:28:51 GMT
ADD file:4eedf861fb567fffb2694b65ebdd58d5e371a2c28c3863f363f333cb34e5eb7b in / 
# Tue, 21 Mar 2017 18:29:05 GMT
CMD ["/bin/bash"]
# Tue, 21 Mar 2017 23:38:28 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Tue, 21 Mar 2017 23:38:29 GMT
ENV GOSU_VERSION=1.7
# Tue, 21 Mar 2017 23:38:46 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 21 Mar 2017 23:38:54 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Tue, 21 Mar 2017 23:38:54 GMT
ENV LANG=en_US.utf8
# Tue, 21 Mar 2017 23:38:55 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 21 Mar 2017 23:38:56 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 21 Mar 2017 23:38:57 GMT
ENV PG_MAJOR=9.6
# Tue, 21 Mar 2017 23:38:57 GMT
ENV PG_VERSION=9.6.2-1.pgdg80+1
# Tue, 21 Mar 2017 23:38:58 GMT
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main' $PG_MAJOR > /etc/apt/sources.list.d/pgdg.list
# Tue, 21 Mar 2017 23:39:35 GMT
RUN apt-get update 	&& apt-get install -y postgresql-common 	&& sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf 	&& apt-get install -y 		postgresql-$PG_MAJOR=$PG_VERSION 		postgresql-contrib-$PG_MAJOR=$PG_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 23:39:36 GMT
RUN mv -v /usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample /usr/share/postgresql/$PG_MAJOR/ 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Tue, 21 Mar 2017 23:39:37 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod g+s /var/run/postgresql
# Tue, 21 Mar 2017 23:39:38 GMT
ENV PATH=/usr/lib/postgresql/9.6/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 21 Mar 2017 23:39:38 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 21 Mar 2017 23:39:39 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Tue, 21 Mar 2017 23:39:39 GMT
VOLUME [/var/lib/postgresql/data]
# Tue, 21 Mar 2017 23:39:40 GMT
COPY file:88a96354a6aaf272401b7f970f55a9dc174766547274d89eac38a4f16ed20c56 in /usr/local/bin/ 
# Tue, 21 Mar 2017 23:39:41 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 21 Mar 2017 23:39:41 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 21 Mar 2017 23:39:42 GMT
EXPOSE 5432/tcp
# Tue, 21 Mar 2017 23:39:42 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:6d827a3ef358f4fa21ef8251f95492e667da826653fd43641cef5a877dc03a70`  
		Last Modified: Tue, 21 Mar 2017 18:38:18 GMT  
		Size: 51.4 MB (51438476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d7f5459c169a3b3836db7a9501070438bc2c4a0dfc0577a073449fa7ee1ae40`  
		Last Modified: Fri, 24 Mar 2017 00:06:33 GMT  
		Size: 2.0 KB (2045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecb14191664d5b18e89d02ff79a6f4b0b698ddc6818f27a3d62a768dccc47845`  
		Last Modified: Fri, 24 Mar 2017 00:06:33 GMT  
		Size: 1.3 MB (1288981 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecd8857273964c150e39b2461772ec2d9445048adc0ee2c726ad42dc960cb1c0`  
		Last Modified: Fri, 24 Mar 2017 00:06:35 GMT  
		Size: 6.9 MB (6937295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1fc7408190a9a104bc4dff6ddc144ba86599c2e83dcdfcdfae3c331080bb7a4`  
		Last Modified: Fri, 24 Mar 2017 00:06:31 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3cf57a1b661d5e38def1a1b4258b6adfb329b4395951b35ab2d28a53af55b3b`  
		Last Modified: Fri, 24 Mar 2017 00:06:32 GMT  
		Size: 4.5 KB (4484 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91cef76ed67ea8d88d69ce88edc0c5b0aacb6a9ad5be49f825c6372d68dc0fd5`  
		Last Modified: Fri, 24 Mar 2017 00:11:20 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9236ca589ab42ba1deb8891f4bef7235a220b2e7768215fec469ef4eda6676bb`  
		Last Modified: Fri, 24 Mar 2017 00:11:35 GMT  
		Size: 42.4 MB (42409238 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69b3e91b94c544edcb87448c260fdc1f3ffe840fd2e560cbb42a9933a64e9963`  
		Last Modified: Fri, 24 Mar 2017 00:11:18 GMT  
		Size: 7.1 KB (7123 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cdc577dbd56f127ab86ce5db879714aa5e36ec188741354156795658e0e703b1`  
		Last Modified: Fri, 24 Mar 2017 00:11:17 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db908b0ac3de984dd97cee898d458d648a43586b00a90ba545097ced925a9faf`  
		Last Modified: Fri, 24 Mar 2017 00:11:17 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:336e0b933e27fbe48f6d2a3b3bdadaaa2fa87678127cceee16243f6571dbd370`  
		Last Modified: Fri, 24 Mar 2017 00:11:17 GMT  
		Size: 1.8 KB (1805 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0695813ce8e57ca8ca68de149a6155a308d6fbb9938dbf21657bbca0e646a36a`  
		Last Modified: Fri, 24 Mar 2017 00:11:18 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9`

```console
$ docker pull postgres@sha256:0983182790fa277da841f3f191bc00d20ca40d67b4c5bb27dec0a4ccbbbd8990
```

-	Platforms:
	-	linux; amd64

### `postgres:9` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **102.1 MB (102090200 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9910dc9f2ac0dbc193abc4718984cb3ad48989fc02cac4b36ad3d6b7d5d781f9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Tue, 21 Mar 2017 18:28:51 GMT
ADD file:4eedf861fb567fffb2694b65ebdd58d5e371a2c28c3863f363f333cb34e5eb7b in / 
# Tue, 21 Mar 2017 18:29:05 GMT
CMD ["/bin/bash"]
# Tue, 21 Mar 2017 23:38:28 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Tue, 21 Mar 2017 23:38:29 GMT
ENV GOSU_VERSION=1.7
# Tue, 21 Mar 2017 23:38:46 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 21 Mar 2017 23:38:54 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Tue, 21 Mar 2017 23:38:54 GMT
ENV LANG=en_US.utf8
# Tue, 21 Mar 2017 23:38:55 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 21 Mar 2017 23:38:56 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 21 Mar 2017 23:38:57 GMT
ENV PG_MAJOR=9.6
# Tue, 21 Mar 2017 23:38:57 GMT
ENV PG_VERSION=9.6.2-1.pgdg80+1
# Tue, 21 Mar 2017 23:38:58 GMT
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main' $PG_MAJOR > /etc/apt/sources.list.d/pgdg.list
# Tue, 21 Mar 2017 23:39:35 GMT
RUN apt-get update 	&& apt-get install -y postgresql-common 	&& sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf 	&& apt-get install -y 		postgresql-$PG_MAJOR=$PG_VERSION 		postgresql-contrib-$PG_MAJOR=$PG_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 23:39:36 GMT
RUN mv -v /usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample /usr/share/postgresql/$PG_MAJOR/ 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Tue, 21 Mar 2017 23:39:37 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod g+s /var/run/postgresql
# Tue, 21 Mar 2017 23:39:38 GMT
ENV PATH=/usr/lib/postgresql/9.6/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 21 Mar 2017 23:39:38 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 21 Mar 2017 23:39:39 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Tue, 21 Mar 2017 23:39:39 GMT
VOLUME [/var/lib/postgresql/data]
# Tue, 21 Mar 2017 23:39:40 GMT
COPY file:88a96354a6aaf272401b7f970f55a9dc174766547274d89eac38a4f16ed20c56 in /usr/local/bin/ 
# Tue, 21 Mar 2017 23:39:41 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 21 Mar 2017 23:39:41 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 21 Mar 2017 23:39:42 GMT
EXPOSE 5432/tcp
# Tue, 21 Mar 2017 23:39:42 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:6d827a3ef358f4fa21ef8251f95492e667da826653fd43641cef5a877dc03a70`  
		Last Modified: Tue, 21 Mar 2017 18:38:18 GMT  
		Size: 51.4 MB (51438476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d7f5459c169a3b3836db7a9501070438bc2c4a0dfc0577a073449fa7ee1ae40`  
		Last Modified: Fri, 24 Mar 2017 00:06:33 GMT  
		Size: 2.0 KB (2045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecb14191664d5b18e89d02ff79a6f4b0b698ddc6818f27a3d62a768dccc47845`  
		Last Modified: Fri, 24 Mar 2017 00:06:33 GMT  
		Size: 1.3 MB (1288981 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecd8857273964c150e39b2461772ec2d9445048adc0ee2c726ad42dc960cb1c0`  
		Last Modified: Fri, 24 Mar 2017 00:06:35 GMT  
		Size: 6.9 MB (6937295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1fc7408190a9a104bc4dff6ddc144ba86599c2e83dcdfcdfae3c331080bb7a4`  
		Last Modified: Fri, 24 Mar 2017 00:06:31 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3cf57a1b661d5e38def1a1b4258b6adfb329b4395951b35ab2d28a53af55b3b`  
		Last Modified: Fri, 24 Mar 2017 00:06:32 GMT  
		Size: 4.5 KB (4484 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91cef76ed67ea8d88d69ce88edc0c5b0aacb6a9ad5be49f825c6372d68dc0fd5`  
		Last Modified: Fri, 24 Mar 2017 00:11:20 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9236ca589ab42ba1deb8891f4bef7235a220b2e7768215fec469ef4eda6676bb`  
		Last Modified: Fri, 24 Mar 2017 00:11:35 GMT  
		Size: 42.4 MB (42409238 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69b3e91b94c544edcb87448c260fdc1f3ffe840fd2e560cbb42a9933a64e9963`  
		Last Modified: Fri, 24 Mar 2017 00:11:18 GMT  
		Size: 7.1 KB (7123 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cdc577dbd56f127ab86ce5db879714aa5e36ec188741354156795658e0e703b1`  
		Last Modified: Fri, 24 Mar 2017 00:11:17 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db908b0ac3de984dd97cee898d458d648a43586b00a90ba545097ced925a9faf`  
		Last Modified: Fri, 24 Mar 2017 00:11:17 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:336e0b933e27fbe48f6d2a3b3bdadaaa2fa87678127cceee16243f6571dbd370`  
		Last Modified: Fri, 24 Mar 2017 00:11:17 GMT  
		Size: 1.8 KB (1805 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0695813ce8e57ca8ca68de149a6155a308d6fbb9938dbf21657bbca0e646a36a`  
		Last Modified: Fri, 24 Mar 2017 00:11:18 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:latest`

```console
$ docker pull postgres@sha256:0983182790fa277da841f3f191bc00d20ca40d67b4c5bb27dec0a4ccbbbd8990
```

-	Platforms:
	-	linux; amd64

### `postgres:latest` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **102.1 MB (102090200 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9910dc9f2ac0dbc193abc4718984cb3ad48989fc02cac4b36ad3d6b7d5d781f9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Tue, 21 Mar 2017 18:28:51 GMT
ADD file:4eedf861fb567fffb2694b65ebdd58d5e371a2c28c3863f363f333cb34e5eb7b in / 
# Tue, 21 Mar 2017 18:29:05 GMT
CMD ["/bin/bash"]
# Tue, 21 Mar 2017 23:38:28 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Tue, 21 Mar 2017 23:38:29 GMT
ENV GOSU_VERSION=1.7
# Tue, 21 Mar 2017 23:38:46 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 21 Mar 2017 23:38:54 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Tue, 21 Mar 2017 23:38:54 GMT
ENV LANG=en_US.utf8
# Tue, 21 Mar 2017 23:38:55 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 21 Mar 2017 23:38:56 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 21 Mar 2017 23:38:57 GMT
ENV PG_MAJOR=9.6
# Tue, 21 Mar 2017 23:38:57 GMT
ENV PG_VERSION=9.6.2-1.pgdg80+1
# Tue, 21 Mar 2017 23:38:58 GMT
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main' $PG_MAJOR > /etc/apt/sources.list.d/pgdg.list
# Tue, 21 Mar 2017 23:39:35 GMT
RUN apt-get update 	&& apt-get install -y postgresql-common 	&& sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf 	&& apt-get install -y 		postgresql-$PG_MAJOR=$PG_VERSION 		postgresql-contrib-$PG_MAJOR=$PG_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 23:39:36 GMT
RUN mv -v /usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample /usr/share/postgresql/$PG_MAJOR/ 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Tue, 21 Mar 2017 23:39:37 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod g+s /var/run/postgresql
# Tue, 21 Mar 2017 23:39:38 GMT
ENV PATH=/usr/lib/postgresql/9.6/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 21 Mar 2017 23:39:38 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 21 Mar 2017 23:39:39 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Tue, 21 Mar 2017 23:39:39 GMT
VOLUME [/var/lib/postgresql/data]
# Tue, 21 Mar 2017 23:39:40 GMT
COPY file:88a96354a6aaf272401b7f970f55a9dc174766547274d89eac38a4f16ed20c56 in /usr/local/bin/ 
# Tue, 21 Mar 2017 23:39:41 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 21 Mar 2017 23:39:41 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 21 Mar 2017 23:39:42 GMT
EXPOSE 5432/tcp
# Tue, 21 Mar 2017 23:39:42 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:6d827a3ef358f4fa21ef8251f95492e667da826653fd43641cef5a877dc03a70`  
		Last Modified: Tue, 21 Mar 2017 18:38:18 GMT  
		Size: 51.4 MB (51438476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d7f5459c169a3b3836db7a9501070438bc2c4a0dfc0577a073449fa7ee1ae40`  
		Last Modified: Fri, 24 Mar 2017 00:06:33 GMT  
		Size: 2.0 KB (2045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecb14191664d5b18e89d02ff79a6f4b0b698ddc6818f27a3d62a768dccc47845`  
		Last Modified: Fri, 24 Mar 2017 00:06:33 GMT  
		Size: 1.3 MB (1288981 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecd8857273964c150e39b2461772ec2d9445048adc0ee2c726ad42dc960cb1c0`  
		Last Modified: Fri, 24 Mar 2017 00:06:35 GMT  
		Size: 6.9 MB (6937295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1fc7408190a9a104bc4dff6ddc144ba86599c2e83dcdfcdfae3c331080bb7a4`  
		Last Modified: Fri, 24 Mar 2017 00:06:31 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3cf57a1b661d5e38def1a1b4258b6adfb329b4395951b35ab2d28a53af55b3b`  
		Last Modified: Fri, 24 Mar 2017 00:06:32 GMT  
		Size: 4.5 KB (4484 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91cef76ed67ea8d88d69ce88edc0c5b0aacb6a9ad5be49f825c6372d68dc0fd5`  
		Last Modified: Fri, 24 Mar 2017 00:11:20 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9236ca589ab42ba1deb8891f4bef7235a220b2e7768215fec469ef4eda6676bb`  
		Last Modified: Fri, 24 Mar 2017 00:11:35 GMT  
		Size: 42.4 MB (42409238 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69b3e91b94c544edcb87448c260fdc1f3ffe840fd2e560cbb42a9933a64e9963`  
		Last Modified: Fri, 24 Mar 2017 00:11:18 GMT  
		Size: 7.1 KB (7123 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cdc577dbd56f127ab86ce5db879714aa5e36ec188741354156795658e0e703b1`  
		Last Modified: Fri, 24 Mar 2017 00:11:17 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db908b0ac3de984dd97cee898d458d648a43586b00a90ba545097ced925a9faf`  
		Last Modified: Fri, 24 Mar 2017 00:11:17 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:336e0b933e27fbe48f6d2a3b3bdadaaa2fa87678127cceee16243f6571dbd370`  
		Last Modified: Fri, 24 Mar 2017 00:11:17 GMT  
		Size: 1.8 KB (1805 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0695813ce8e57ca8ca68de149a6155a308d6fbb9938dbf21657bbca0e646a36a`  
		Last Modified: Fri, 24 Mar 2017 00:11:18 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.6.2-alpine`

```console
$ docker pull postgres@sha256:2af243b37cbb17d6c2fb156c7148f9fae3c4670679a3c6e3a1fb341a2addc198
```

-	Platforms:
	-	linux; amd64

### `postgres:9.6.2-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.0 MB (13993353 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b3e7f411a7dea55dc63260d3b779e797c19be3b2245c8c999a44f4a9c640bb42`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:37 GMT
ADD file:730030a984f5f0c5dc9b15ab61da161082b5c0f6e112a9c921b42321140c3927 in / 
# Fri, 03 Mar 2017 23:12:20 GMT
ENV LANG=en_US.utf8
# Fri, 03 Mar 2017 23:12:21 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 03 Mar 2017 23:12:21 GMT
ENV PG_MAJOR=9.6
# Fri, 03 Mar 2017 23:12:21 GMT
ENV PG_VERSION=9.6.2
# Fri, 03 Mar 2017 23:12:22 GMT
ENV PG_SHA256=0187b5184be1c09034e74e44761505e52357248451b0c854dddec6c231fe50c9
# Tue, 07 Mar 2017 23:45:57 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl 		util-linux-dev 		zlib-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& ./configure 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Tue, 07 Mar 2017 23:45:58 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Tue, 07 Mar 2017 23:45:59 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod g+s /var/run/postgresql
# Tue, 07 Mar 2017 23:45:59 GMT
ENV PATH=/usr/lib/postgresql/9.6/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 07 Mar 2017 23:46:00 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 07 Mar 2017 23:46:01 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Tue, 07 Mar 2017 23:46:01 GMT
VOLUME [/var/lib/postgresql/data]
# Tue, 21 Mar 2017 16:55:13 GMT
COPY file:eaca0a850cbcaa5c12dcc3641ccc20e204dc7bdc99f5489f34ab1483318257b8 in /usr/local/bin/ 
# Tue, 21 Mar 2017 16:55:14 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 21 Mar 2017 16:55:15 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 21 Mar 2017 16:55:15 GMT
EXPOSE 5432/tcp
# Tue, 21 Mar 2017 16:55:16 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:627beaf3eaaff1c0bc3311d60fb933c17ad04fe377e1043d9593646d8ae3bfe1`  
		Last Modified: Fri, 03 Mar 2017 20:34:41 GMT  
		Size: 1.9 MB (1905270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d555ba539f475d381bd03abd3e00bc4ca815118f0e3d65a679b7c63f1c78fd6`  
		Last Modified: Sat, 04 Mar 2017 05:36:11 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f829d456f997b8d438f1d24a1174527d75f2a70fb9b4cd96523178f1d96657bc`  
		Last Modified: Tue, 07 Mar 2017 23:55:45 GMT  
		Size: 12.1 MB (12078647 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ed44e989a3a6d74a152d24111ae4fccda786bcd5c0adedb09de2f56d08a9654`  
		Last Modified: Tue, 07 Mar 2017 23:55:39 GMT  
		Size: 7.1 KB (7096 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64960f1d9c234d497eea1abf9ec25a8998d6e89a36294255010a54ac9b41f5c6`  
		Last Modified: Tue, 07 Mar 2017 23:55:39 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:299245faa0f075e147e925da4eb2e7eb1fbe71d508547a4bba72102cc9b65590`  
		Last Modified: Tue, 07 Mar 2017 23:55:39 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eaa906266360917e8784ba55bfe8c1f387f3374433455d395a97f27a42996252`  
		Last Modified: Tue, 21 Mar 2017 16:58:34 GMT  
		Size: 1.8 KB (1797 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb867e8c8db8cf6c0cc20cb2642b28249132492166b2e170f4934443c77587d2`  
		Last Modified: Tue, 21 Mar 2017 16:58:33 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.6-alpine`

```console
$ docker pull postgres@sha256:2af243b37cbb17d6c2fb156c7148f9fae3c4670679a3c6e3a1fb341a2addc198
```

-	Platforms:
	-	linux; amd64

### `postgres:9.6-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.0 MB (13993353 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b3e7f411a7dea55dc63260d3b779e797c19be3b2245c8c999a44f4a9c640bb42`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:37 GMT
ADD file:730030a984f5f0c5dc9b15ab61da161082b5c0f6e112a9c921b42321140c3927 in / 
# Fri, 03 Mar 2017 23:12:20 GMT
ENV LANG=en_US.utf8
# Fri, 03 Mar 2017 23:12:21 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 03 Mar 2017 23:12:21 GMT
ENV PG_MAJOR=9.6
# Fri, 03 Mar 2017 23:12:21 GMT
ENV PG_VERSION=9.6.2
# Fri, 03 Mar 2017 23:12:22 GMT
ENV PG_SHA256=0187b5184be1c09034e74e44761505e52357248451b0c854dddec6c231fe50c9
# Tue, 07 Mar 2017 23:45:57 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl 		util-linux-dev 		zlib-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& ./configure 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Tue, 07 Mar 2017 23:45:58 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Tue, 07 Mar 2017 23:45:59 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod g+s /var/run/postgresql
# Tue, 07 Mar 2017 23:45:59 GMT
ENV PATH=/usr/lib/postgresql/9.6/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 07 Mar 2017 23:46:00 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 07 Mar 2017 23:46:01 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Tue, 07 Mar 2017 23:46:01 GMT
VOLUME [/var/lib/postgresql/data]
# Tue, 21 Mar 2017 16:55:13 GMT
COPY file:eaca0a850cbcaa5c12dcc3641ccc20e204dc7bdc99f5489f34ab1483318257b8 in /usr/local/bin/ 
# Tue, 21 Mar 2017 16:55:14 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 21 Mar 2017 16:55:15 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 21 Mar 2017 16:55:15 GMT
EXPOSE 5432/tcp
# Tue, 21 Mar 2017 16:55:16 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:627beaf3eaaff1c0bc3311d60fb933c17ad04fe377e1043d9593646d8ae3bfe1`  
		Last Modified: Fri, 03 Mar 2017 20:34:41 GMT  
		Size: 1.9 MB (1905270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d555ba539f475d381bd03abd3e00bc4ca815118f0e3d65a679b7c63f1c78fd6`  
		Last Modified: Sat, 04 Mar 2017 05:36:11 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f829d456f997b8d438f1d24a1174527d75f2a70fb9b4cd96523178f1d96657bc`  
		Last Modified: Tue, 07 Mar 2017 23:55:45 GMT  
		Size: 12.1 MB (12078647 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ed44e989a3a6d74a152d24111ae4fccda786bcd5c0adedb09de2f56d08a9654`  
		Last Modified: Tue, 07 Mar 2017 23:55:39 GMT  
		Size: 7.1 KB (7096 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64960f1d9c234d497eea1abf9ec25a8998d6e89a36294255010a54ac9b41f5c6`  
		Last Modified: Tue, 07 Mar 2017 23:55:39 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:299245faa0f075e147e925da4eb2e7eb1fbe71d508547a4bba72102cc9b65590`  
		Last Modified: Tue, 07 Mar 2017 23:55:39 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eaa906266360917e8784ba55bfe8c1f387f3374433455d395a97f27a42996252`  
		Last Modified: Tue, 21 Mar 2017 16:58:34 GMT  
		Size: 1.8 KB (1797 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb867e8c8db8cf6c0cc20cb2642b28249132492166b2e170f4934443c77587d2`  
		Last Modified: Tue, 21 Mar 2017 16:58:33 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9-alpine`

```console
$ docker pull postgres@sha256:2af243b37cbb17d6c2fb156c7148f9fae3c4670679a3c6e3a1fb341a2addc198
```

-	Platforms:
	-	linux; amd64

### `postgres:9-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.0 MB (13993353 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b3e7f411a7dea55dc63260d3b779e797c19be3b2245c8c999a44f4a9c640bb42`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:37 GMT
ADD file:730030a984f5f0c5dc9b15ab61da161082b5c0f6e112a9c921b42321140c3927 in / 
# Fri, 03 Mar 2017 23:12:20 GMT
ENV LANG=en_US.utf8
# Fri, 03 Mar 2017 23:12:21 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 03 Mar 2017 23:12:21 GMT
ENV PG_MAJOR=9.6
# Fri, 03 Mar 2017 23:12:21 GMT
ENV PG_VERSION=9.6.2
# Fri, 03 Mar 2017 23:12:22 GMT
ENV PG_SHA256=0187b5184be1c09034e74e44761505e52357248451b0c854dddec6c231fe50c9
# Tue, 07 Mar 2017 23:45:57 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl 		util-linux-dev 		zlib-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& ./configure 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Tue, 07 Mar 2017 23:45:58 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Tue, 07 Mar 2017 23:45:59 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod g+s /var/run/postgresql
# Tue, 07 Mar 2017 23:45:59 GMT
ENV PATH=/usr/lib/postgresql/9.6/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 07 Mar 2017 23:46:00 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 07 Mar 2017 23:46:01 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Tue, 07 Mar 2017 23:46:01 GMT
VOLUME [/var/lib/postgresql/data]
# Tue, 21 Mar 2017 16:55:13 GMT
COPY file:eaca0a850cbcaa5c12dcc3641ccc20e204dc7bdc99f5489f34ab1483318257b8 in /usr/local/bin/ 
# Tue, 21 Mar 2017 16:55:14 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 21 Mar 2017 16:55:15 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 21 Mar 2017 16:55:15 GMT
EXPOSE 5432/tcp
# Tue, 21 Mar 2017 16:55:16 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:627beaf3eaaff1c0bc3311d60fb933c17ad04fe377e1043d9593646d8ae3bfe1`  
		Last Modified: Fri, 03 Mar 2017 20:34:41 GMT  
		Size: 1.9 MB (1905270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d555ba539f475d381bd03abd3e00bc4ca815118f0e3d65a679b7c63f1c78fd6`  
		Last Modified: Sat, 04 Mar 2017 05:36:11 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f829d456f997b8d438f1d24a1174527d75f2a70fb9b4cd96523178f1d96657bc`  
		Last Modified: Tue, 07 Mar 2017 23:55:45 GMT  
		Size: 12.1 MB (12078647 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ed44e989a3a6d74a152d24111ae4fccda786bcd5c0adedb09de2f56d08a9654`  
		Last Modified: Tue, 07 Mar 2017 23:55:39 GMT  
		Size: 7.1 KB (7096 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64960f1d9c234d497eea1abf9ec25a8998d6e89a36294255010a54ac9b41f5c6`  
		Last Modified: Tue, 07 Mar 2017 23:55:39 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:299245faa0f075e147e925da4eb2e7eb1fbe71d508547a4bba72102cc9b65590`  
		Last Modified: Tue, 07 Mar 2017 23:55:39 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eaa906266360917e8784ba55bfe8c1f387f3374433455d395a97f27a42996252`  
		Last Modified: Tue, 21 Mar 2017 16:58:34 GMT  
		Size: 1.8 KB (1797 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb867e8c8db8cf6c0cc20cb2642b28249132492166b2e170f4934443c77587d2`  
		Last Modified: Tue, 21 Mar 2017 16:58:33 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:alpine`

```console
$ docker pull postgres@sha256:2af243b37cbb17d6c2fb156c7148f9fae3c4670679a3c6e3a1fb341a2addc198
```

-	Platforms:
	-	linux; amd64

### `postgres:alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.0 MB (13993353 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b3e7f411a7dea55dc63260d3b779e797c19be3b2245c8c999a44f4a9c640bb42`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:37 GMT
ADD file:730030a984f5f0c5dc9b15ab61da161082b5c0f6e112a9c921b42321140c3927 in / 
# Fri, 03 Mar 2017 23:12:20 GMT
ENV LANG=en_US.utf8
# Fri, 03 Mar 2017 23:12:21 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 03 Mar 2017 23:12:21 GMT
ENV PG_MAJOR=9.6
# Fri, 03 Mar 2017 23:12:21 GMT
ENV PG_VERSION=9.6.2
# Fri, 03 Mar 2017 23:12:22 GMT
ENV PG_SHA256=0187b5184be1c09034e74e44761505e52357248451b0c854dddec6c231fe50c9
# Tue, 07 Mar 2017 23:45:57 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl 		util-linux-dev 		zlib-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& ./configure 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Tue, 07 Mar 2017 23:45:58 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Tue, 07 Mar 2017 23:45:59 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod g+s /var/run/postgresql
# Tue, 07 Mar 2017 23:45:59 GMT
ENV PATH=/usr/lib/postgresql/9.6/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 07 Mar 2017 23:46:00 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 07 Mar 2017 23:46:01 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Tue, 07 Mar 2017 23:46:01 GMT
VOLUME [/var/lib/postgresql/data]
# Tue, 21 Mar 2017 16:55:13 GMT
COPY file:eaca0a850cbcaa5c12dcc3641ccc20e204dc7bdc99f5489f34ab1483318257b8 in /usr/local/bin/ 
# Tue, 21 Mar 2017 16:55:14 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 21 Mar 2017 16:55:15 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 21 Mar 2017 16:55:15 GMT
EXPOSE 5432/tcp
# Tue, 21 Mar 2017 16:55:16 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:627beaf3eaaff1c0bc3311d60fb933c17ad04fe377e1043d9593646d8ae3bfe1`  
		Last Modified: Fri, 03 Mar 2017 20:34:41 GMT  
		Size: 1.9 MB (1905270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d555ba539f475d381bd03abd3e00bc4ca815118f0e3d65a679b7c63f1c78fd6`  
		Last Modified: Sat, 04 Mar 2017 05:36:11 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f829d456f997b8d438f1d24a1174527d75f2a70fb9b4cd96523178f1d96657bc`  
		Last Modified: Tue, 07 Mar 2017 23:55:45 GMT  
		Size: 12.1 MB (12078647 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ed44e989a3a6d74a152d24111ae4fccda786bcd5c0adedb09de2f56d08a9654`  
		Last Modified: Tue, 07 Mar 2017 23:55:39 GMT  
		Size: 7.1 KB (7096 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64960f1d9c234d497eea1abf9ec25a8998d6e89a36294255010a54ac9b41f5c6`  
		Last Modified: Tue, 07 Mar 2017 23:55:39 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:299245faa0f075e147e925da4eb2e7eb1fbe71d508547a4bba72102cc9b65590`  
		Last Modified: Tue, 07 Mar 2017 23:55:39 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eaa906266360917e8784ba55bfe8c1f387f3374433455d395a97f27a42996252`  
		Last Modified: Tue, 21 Mar 2017 16:58:34 GMT  
		Size: 1.8 KB (1797 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb867e8c8db8cf6c0cc20cb2642b28249132492166b2e170f4934443c77587d2`  
		Last Modified: Tue, 21 Mar 2017 16:58:33 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.5.6`

```console
$ docker pull postgres@sha256:9f04a69443fed08c4a778220bb409393d876a451a620bc772c456494bac587e5
```

-	Platforms:
	-	linux; amd64

### `postgres:9.5.6` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **101.6 MB (101620680 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bd44e8a44ab2b9716ac9885d3321bc2ab81ffd9052ce328604cb877e8c41b813`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Tue, 21 Mar 2017 18:28:51 GMT
ADD file:4eedf861fb567fffb2694b65ebdd58d5e371a2c28c3863f363f333cb34e5eb7b in / 
# Tue, 21 Mar 2017 18:29:05 GMT
CMD ["/bin/bash"]
# Tue, 21 Mar 2017 23:38:28 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Tue, 21 Mar 2017 23:38:29 GMT
ENV GOSU_VERSION=1.7
# Tue, 21 Mar 2017 23:38:46 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 21 Mar 2017 23:38:54 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Tue, 21 Mar 2017 23:38:54 GMT
ENV LANG=en_US.utf8
# Tue, 21 Mar 2017 23:38:55 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 21 Mar 2017 23:38:56 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 21 Mar 2017 23:41:47 GMT
ENV PG_MAJOR=9.5
# Tue, 21 Mar 2017 23:41:47 GMT
ENV PG_VERSION=9.5.6-1.pgdg80+1
# Tue, 21 Mar 2017 23:41:48 GMT
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main' $PG_MAJOR > /etc/apt/sources.list.d/pgdg.list
# Tue, 21 Mar 2017 23:42:22 GMT
RUN apt-get update 	&& apt-get install -y postgresql-common 	&& sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf 	&& apt-get install -y 		postgresql-$PG_MAJOR=$PG_VERSION 		postgresql-contrib-$PG_MAJOR=$PG_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 23:42:24 GMT
RUN mv -v /usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample /usr/share/postgresql/$PG_MAJOR/ 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Tue, 21 Mar 2017 23:42:25 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod g+s /var/run/postgresql
# Tue, 21 Mar 2017 23:42:25 GMT
ENV PATH=/usr/lib/postgresql/9.5/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 21 Mar 2017 23:42:25 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 21 Mar 2017 23:42:26 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Tue, 21 Mar 2017 23:42:27 GMT
VOLUME [/var/lib/postgresql/data]
# Tue, 21 Mar 2017 23:42:27 GMT
COPY file:88a96354a6aaf272401b7f970f55a9dc174766547274d89eac38a4f16ed20c56 in /usr/local/bin/ 
# Tue, 21 Mar 2017 23:42:28 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 21 Mar 2017 23:42:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 21 Mar 2017 23:42:29 GMT
EXPOSE 5432/tcp
# Tue, 21 Mar 2017 23:42:29 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:6d827a3ef358f4fa21ef8251f95492e667da826653fd43641cef5a877dc03a70`  
		Last Modified: Tue, 21 Mar 2017 18:38:18 GMT  
		Size: 51.4 MB (51438476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d7f5459c169a3b3836db7a9501070438bc2c4a0dfc0577a073449fa7ee1ae40`  
		Last Modified: Fri, 24 Mar 2017 00:06:33 GMT  
		Size: 2.0 KB (2045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecb14191664d5b18e89d02ff79a6f4b0b698ddc6818f27a3d62a768dccc47845`  
		Last Modified: Fri, 24 Mar 2017 00:06:33 GMT  
		Size: 1.3 MB (1288981 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecd8857273964c150e39b2461772ec2d9445048adc0ee2c726ad42dc960cb1c0`  
		Last Modified: Fri, 24 Mar 2017 00:06:35 GMT  
		Size: 6.9 MB (6937295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1fc7408190a9a104bc4dff6ddc144ba86599c2e83dcdfcdfae3c331080bb7a4`  
		Last Modified: Fri, 24 Mar 2017 00:06:31 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3cf57a1b661d5e38def1a1b4258b6adfb329b4395951b35ab2d28a53af55b3b`  
		Last Modified: Fri, 24 Mar 2017 00:06:32 GMT  
		Size: 4.5 KB (4484 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed067dfd9fa024f6f2ec3189d020e7dcc280518d8d8f54508d8de9dd22d999cb`  
		Last Modified: Fri, 24 Mar 2017 00:10:12 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b521d237ee601dc6c2dc851e75915a0a7a01e9b5552e316453704922c35cf3e0`  
		Last Modified: Fri, 24 Mar 2017 00:10:28 GMT  
		Size: 41.9 MB (41939981 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ee512509160164bfbe878d854cae90298c10169d6002d2489f4c371d0811e2a`  
		Last Modified: Fri, 24 Mar 2017 00:10:10 GMT  
		Size: 6.9 KB (6858 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab834064cf659128dfccea24185056a31323cc7bbac6db75fd6b2689b0cbcd8f`  
		Last Modified: Fri, 24 Mar 2017 00:10:09 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7778ac4a9d29408ef86b47b419e729c45a41185e86b3d8e486016070669b8142`  
		Last Modified: Fri, 24 Mar 2017 00:10:09 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:922b16efeda55501aedf732f1ce3d6dc6c2e2cab5cfc30970d570032965aef83`  
		Last Modified: Fri, 24 Mar 2017 00:10:09 GMT  
		Size: 1.8 KB (1806 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32dce215f75dd95de811e64e2312928a7f8cb555c097195a6a6b56ef7c692650`  
		Last Modified: Fri, 24 Mar 2017 00:10:10 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.5`

```console
$ docker pull postgres@sha256:9f04a69443fed08c4a778220bb409393d876a451a620bc772c456494bac587e5
```

-	Platforms:
	-	linux; amd64

### `postgres:9.5` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **101.6 MB (101620680 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bd44e8a44ab2b9716ac9885d3321bc2ab81ffd9052ce328604cb877e8c41b813`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Tue, 21 Mar 2017 18:28:51 GMT
ADD file:4eedf861fb567fffb2694b65ebdd58d5e371a2c28c3863f363f333cb34e5eb7b in / 
# Tue, 21 Mar 2017 18:29:05 GMT
CMD ["/bin/bash"]
# Tue, 21 Mar 2017 23:38:28 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Tue, 21 Mar 2017 23:38:29 GMT
ENV GOSU_VERSION=1.7
# Tue, 21 Mar 2017 23:38:46 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 21 Mar 2017 23:38:54 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Tue, 21 Mar 2017 23:38:54 GMT
ENV LANG=en_US.utf8
# Tue, 21 Mar 2017 23:38:55 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 21 Mar 2017 23:38:56 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 21 Mar 2017 23:41:47 GMT
ENV PG_MAJOR=9.5
# Tue, 21 Mar 2017 23:41:47 GMT
ENV PG_VERSION=9.5.6-1.pgdg80+1
# Tue, 21 Mar 2017 23:41:48 GMT
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main' $PG_MAJOR > /etc/apt/sources.list.d/pgdg.list
# Tue, 21 Mar 2017 23:42:22 GMT
RUN apt-get update 	&& apt-get install -y postgresql-common 	&& sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf 	&& apt-get install -y 		postgresql-$PG_MAJOR=$PG_VERSION 		postgresql-contrib-$PG_MAJOR=$PG_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 23:42:24 GMT
RUN mv -v /usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample /usr/share/postgresql/$PG_MAJOR/ 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Tue, 21 Mar 2017 23:42:25 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod g+s /var/run/postgresql
# Tue, 21 Mar 2017 23:42:25 GMT
ENV PATH=/usr/lib/postgresql/9.5/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 21 Mar 2017 23:42:25 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 21 Mar 2017 23:42:26 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Tue, 21 Mar 2017 23:42:27 GMT
VOLUME [/var/lib/postgresql/data]
# Tue, 21 Mar 2017 23:42:27 GMT
COPY file:88a96354a6aaf272401b7f970f55a9dc174766547274d89eac38a4f16ed20c56 in /usr/local/bin/ 
# Tue, 21 Mar 2017 23:42:28 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 21 Mar 2017 23:42:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 21 Mar 2017 23:42:29 GMT
EXPOSE 5432/tcp
# Tue, 21 Mar 2017 23:42:29 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:6d827a3ef358f4fa21ef8251f95492e667da826653fd43641cef5a877dc03a70`  
		Last Modified: Tue, 21 Mar 2017 18:38:18 GMT  
		Size: 51.4 MB (51438476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d7f5459c169a3b3836db7a9501070438bc2c4a0dfc0577a073449fa7ee1ae40`  
		Last Modified: Fri, 24 Mar 2017 00:06:33 GMT  
		Size: 2.0 KB (2045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecb14191664d5b18e89d02ff79a6f4b0b698ddc6818f27a3d62a768dccc47845`  
		Last Modified: Fri, 24 Mar 2017 00:06:33 GMT  
		Size: 1.3 MB (1288981 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecd8857273964c150e39b2461772ec2d9445048adc0ee2c726ad42dc960cb1c0`  
		Last Modified: Fri, 24 Mar 2017 00:06:35 GMT  
		Size: 6.9 MB (6937295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1fc7408190a9a104bc4dff6ddc144ba86599c2e83dcdfcdfae3c331080bb7a4`  
		Last Modified: Fri, 24 Mar 2017 00:06:31 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3cf57a1b661d5e38def1a1b4258b6adfb329b4395951b35ab2d28a53af55b3b`  
		Last Modified: Fri, 24 Mar 2017 00:06:32 GMT  
		Size: 4.5 KB (4484 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed067dfd9fa024f6f2ec3189d020e7dcc280518d8d8f54508d8de9dd22d999cb`  
		Last Modified: Fri, 24 Mar 2017 00:10:12 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b521d237ee601dc6c2dc851e75915a0a7a01e9b5552e316453704922c35cf3e0`  
		Last Modified: Fri, 24 Mar 2017 00:10:28 GMT  
		Size: 41.9 MB (41939981 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ee512509160164bfbe878d854cae90298c10169d6002d2489f4c371d0811e2a`  
		Last Modified: Fri, 24 Mar 2017 00:10:10 GMT  
		Size: 6.9 KB (6858 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab834064cf659128dfccea24185056a31323cc7bbac6db75fd6b2689b0cbcd8f`  
		Last Modified: Fri, 24 Mar 2017 00:10:09 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7778ac4a9d29408ef86b47b419e729c45a41185e86b3d8e486016070669b8142`  
		Last Modified: Fri, 24 Mar 2017 00:10:09 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:922b16efeda55501aedf732f1ce3d6dc6c2e2cab5cfc30970d570032965aef83`  
		Last Modified: Fri, 24 Mar 2017 00:10:09 GMT  
		Size: 1.8 KB (1806 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32dce215f75dd95de811e64e2312928a7f8cb555c097195a6a6b56ef7c692650`  
		Last Modified: Fri, 24 Mar 2017 00:10:10 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.5.6-alpine`

```console
$ docker pull postgres@sha256:ffe892e7930831a2a76153be0cb8f8bee271641632033aef5016b1fa1260e77b
```

-	Platforms:
	-	linux; amd64

### `postgres:9.5.6-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.7 MB (13716817 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:687a889a40b0ba2f050430a24097e22e49534c8500f0b5a47f89420b9c254648`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:37 GMT
ADD file:730030a984f5f0c5dc9b15ab61da161082b5c0f6e112a9c921b42321140c3927 in / 
# Fri, 03 Mar 2017 23:12:20 GMT
ENV LANG=en_US.utf8
# Fri, 03 Mar 2017 23:12:21 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 03 Mar 2017 23:20:54 GMT
ENV PG_MAJOR=9.5
# Fri, 03 Mar 2017 23:20:54 GMT
ENV PG_VERSION=9.5.6
# Fri, 03 Mar 2017 23:20:54 GMT
ENV PG_SHA256=bb9e5f6d34e20783e96e10c1d6c0c09c31749e802aaa46b793ce2522725ae12f
# Tue, 07 Mar 2017 23:48:03 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl 		util-linux-dev 		zlib-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& ./configure 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Tue, 07 Mar 2017 23:48:04 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Tue, 07 Mar 2017 23:48:05 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod g+s /var/run/postgresql
# Tue, 07 Mar 2017 23:48:06 GMT
ENV PATH=/usr/lib/postgresql/9.5/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 07 Mar 2017 23:48:06 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 07 Mar 2017 23:48:07 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Tue, 07 Mar 2017 23:48:07 GMT
VOLUME [/var/lib/postgresql/data]
# Tue, 21 Mar 2017 16:55:23 GMT
COPY file:eaca0a850cbcaa5c12dcc3641ccc20e204dc7bdc99f5489f34ab1483318257b8 in /usr/local/bin/ 
# Tue, 21 Mar 2017 16:55:24 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 21 Mar 2017 16:55:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 21 Mar 2017 16:55:25 GMT
EXPOSE 5432/tcp
# Tue, 21 Mar 2017 16:55:26 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:627beaf3eaaff1c0bc3311d60fb933c17ad04fe377e1043d9593646d8ae3bfe1`  
		Last Modified: Fri, 03 Mar 2017 20:34:41 GMT  
		Size: 1.9 MB (1905270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d555ba539f475d381bd03abd3e00bc4ca815118f0e3d65a679b7c63f1c78fd6`  
		Last Modified: Sat, 04 Mar 2017 05:36:11 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6789a263b11913de4f1595d043997a51861fed8c900bf47363109078ce2dea9b`  
		Last Modified: Tue, 07 Mar 2017 23:57:44 GMT  
		Size: 11.8 MB (11802382 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:295eaa9cb244d6b039eadf337b376d74fde716c32388978e3ed6c37a5858be99`  
		Last Modified: Tue, 07 Mar 2017 23:57:38 GMT  
		Size: 6.8 KB (6827 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bc851e9ab61a5d4d9c2dd937c06d64dba56e651a9cc39ff84bfa94fc96e1e62`  
		Last Modified: Tue, 07 Mar 2017 23:57:38 GMT  
		Size: 145.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:014af74535f5ae07fcf81973c636678d144ca4b694b37c22eb0dff428aaba178`  
		Last Modified: Tue, 07 Mar 2017 23:57:38 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0299148022f814d6ed081f9c7baaaee4825fcea685ee593cb68fde1fc7501a79`  
		Last Modified: Tue, 21 Mar 2017 17:01:50 GMT  
		Size: 1.8 KB (1795 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35d9778779720b12a25b81e18797c0cbf7fb1783f9318dccd8a2b248a9ceb71d`  
		Last Modified: Tue, 21 Mar 2017 17:01:52 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.5-alpine`

```console
$ docker pull postgres@sha256:ffe892e7930831a2a76153be0cb8f8bee271641632033aef5016b1fa1260e77b
```

-	Platforms:
	-	linux; amd64

### `postgres:9.5-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.7 MB (13716817 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:687a889a40b0ba2f050430a24097e22e49534c8500f0b5a47f89420b9c254648`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:37 GMT
ADD file:730030a984f5f0c5dc9b15ab61da161082b5c0f6e112a9c921b42321140c3927 in / 
# Fri, 03 Mar 2017 23:12:20 GMT
ENV LANG=en_US.utf8
# Fri, 03 Mar 2017 23:12:21 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 03 Mar 2017 23:20:54 GMT
ENV PG_MAJOR=9.5
# Fri, 03 Mar 2017 23:20:54 GMT
ENV PG_VERSION=9.5.6
# Fri, 03 Mar 2017 23:20:54 GMT
ENV PG_SHA256=bb9e5f6d34e20783e96e10c1d6c0c09c31749e802aaa46b793ce2522725ae12f
# Tue, 07 Mar 2017 23:48:03 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl 		util-linux-dev 		zlib-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& ./configure 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Tue, 07 Mar 2017 23:48:04 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Tue, 07 Mar 2017 23:48:05 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod g+s /var/run/postgresql
# Tue, 07 Mar 2017 23:48:06 GMT
ENV PATH=/usr/lib/postgresql/9.5/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 07 Mar 2017 23:48:06 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 07 Mar 2017 23:48:07 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Tue, 07 Mar 2017 23:48:07 GMT
VOLUME [/var/lib/postgresql/data]
# Tue, 21 Mar 2017 16:55:23 GMT
COPY file:eaca0a850cbcaa5c12dcc3641ccc20e204dc7bdc99f5489f34ab1483318257b8 in /usr/local/bin/ 
# Tue, 21 Mar 2017 16:55:24 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 21 Mar 2017 16:55:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 21 Mar 2017 16:55:25 GMT
EXPOSE 5432/tcp
# Tue, 21 Mar 2017 16:55:26 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:627beaf3eaaff1c0bc3311d60fb933c17ad04fe377e1043d9593646d8ae3bfe1`  
		Last Modified: Fri, 03 Mar 2017 20:34:41 GMT  
		Size: 1.9 MB (1905270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d555ba539f475d381bd03abd3e00bc4ca815118f0e3d65a679b7c63f1c78fd6`  
		Last Modified: Sat, 04 Mar 2017 05:36:11 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6789a263b11913de4f1595d043997a51861fed8c900bf47363109078ce2dea9b`  
		Last Modified: Tue, 07 Mar 2017 23:57:44 GMT  
		Size: 11.8 MB (11802382 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:295eaa9cb244d6b039eadf337b376d74fde716c32388978e3ed6c37a5858be99`  
		Last Modified: Tue, 07 Mar 2017 23:57:38 GMT  
		Size: 6.8 KB (6827 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bc851e9ab61a5d4d9c2dd937c06d64dba56e651a9cc39ff84bfa94fc96e1e62`  
		Last Modified: Tue, 07 Mar 2017 23:57:38 GMT  
		Size: 145.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:014af74535f5ae07fcf81973c636678d144ca4b694b37c22eb0dff428aaba178`  
		Last Modified: Tue, 07 Mar 2017 23:57:38 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0299148022f814d6ed081f9c7baaaee4825fcea685ee593cb68fde1fc7501a79`  
		Last Modified: Tue, 21 Mar 2017 17:01:50 GMT  
		Size: 1.8 KB (1795 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35d9778779720b12a25b81e18797c0cbf7fb1783f9318dccd8a2b248a9ceb71d`  
		Last Modified: Tue, 21 Mar 2017 17:01:52 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.4.11`

```console
$ docker pull postgres@sha256:6046af499eae34d2074c0b53f9a8b404716d4315e4a03e68bc1d2f8064f2b027
```

-	Platforms:
	-	linux; amd64

### `postgres:9.4.11` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **101.2 MB (101207961 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a10ed4fb18014c201c8384e469c0792fde770c9ccdd25580833d1ff6a587e4a8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Tue, 21 Mar 2017 18:28:51 GMT
ADD file:4eedf861fb567fffb2694b65ebdd58d5e371a2c28c3863f363f333cb34e5eb7b in / 
# Tue, 21 Mar 2017 18:29:05 GMT
CMD ["/bin/bash"]
# Tue, 21 Mar 2017 23:38:28 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Tue, 21 Mar 2017 23:38:29 GMT
ENV GOSU_VERSION=1.7
# Tue, 21 Mar 2017 23:38:46 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 21 Mar 2017 23:38:54 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Tue, 21 Mar 2017 23:38:54 GMT
ENV LANG=en_US.utf8
# Tue, 21 Mar 2017 23:38:55 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 21 Mar 2017 23:38:56 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 21 Mar 2017 23:41:13 GMT
ENV PG_MAJOR=9.4
# Tue, 21 Mar 2017 23:41:14 GMT
ENV PG_VERSION=9.4.11-1.pgdg80+1
# Tue, 21 Mar 2017 23:41:15 GMT
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main' $PG_MAJOR > /etc/apt/sources.list.d/pgdg.list
# Tue, 21 Mar 2017 23:41:40 GMT
RUN apt-get update 	&& apt-get install -y postgresql-common 	&& sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf 	&& apt-get install -y 		postgresql-$PG_MAJOR=$PG_VERSION 		postgresql-contrib-$PG_MAJOR=$PG_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 23:41:41 GMT
RUN mv -v /usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample /usr/share/postgresql/$PG_MAJOR/ 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Tue, 21 Mar 2017 23:41:42 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod g+s /var/run/postgresql
# Tue, 21 Mar 2017 23:41:42 GMT
ENV PATH=/usr/lib/postgresql/9.4/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 21 Mar 2017 23:41:42 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 21 Mar 2017 23:41:43 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Tue, 21 Mar 2017 23:41:44 GMT
VOLUME [/var/lib/postgresql/data]
# Tue, 21 Mar 2017 23:41:44 GMT
COPY file:88a96354a6aaf272401b7f970f55a9dc174766547274d89eac38a4f16ed20c56 in /usr/local/bin/ 
# Tue, 21 Mar 2017 23:41:45 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 21 Mar 2017 23:41:46 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 21 Mar 2017 23:41:46 GMT
EXPOSE 5432/tcp
# Tue, 21 Mar 2017 23:41:46 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:6d827a3ef358f4fa21ef8251f95492e667da826653fd43641cef5a877dc03a70`  
		Last Modified: Tue, 21 Mar 2017 18:38:18 GMT  
		Size: 51.4 MB (51438476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d7f5459c169a3b3836db7a9501070438bc2c4a0dfc0577a073449fa7ee1ae40`  
		Last Modified: Fri, 24 Mar 2017 00:06:33 GMT  
		Size: 2.0 KB (2045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecb14191664d5b18e89d02ff79a6f4b0b698ddc6818f27a3d62a768dccc47845`  
		Last Modified: Fri, 24 Mar 2017 00:06:33 GMT  
		Size: 1.3 MB (1288981 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecd8857273964c150e39b2461772ec2d9445048adc0ee2c726ad42dc960cb1c0`  
		Last Modified: Fri, 24 Mar 2017 00:06:35 GMT  
		Size: 6.9 MB (6937295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1fc7408190a9a104bc4dff6ddc144ba86599c2e83dcdfcdfae3c331080bb7a4`  
		Last Modified: Fri, 24 Mar 2017 00:06:31 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3cf57a1b661d5e38def1a1b4258b6adfb329b4395951b35ab2d28a53af55b3b`  
		Last Modified: Fri, 24 Mar 2017 00:06:32 GMT  
		Size: 4.5 KB (4484 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:888b5c13b5e121794f81041e6c5620fcf7a478042204245095219ee9a3c7bd09`  
		Last Modified: Fri, 24 Mar 2017 00:09:09 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd083cfecff7a4adfc879736d38efdf879e8bc7480ebe265b95f073b3a7ee03b`  
		Last Modified: Fri, 24 Mar 2017 00:09:25 GMT  
		Size: 41.5 MB (41527411 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f052b8f77bfb60f9480da7eadc0d30f048cb4e57a1e8935b0fb5008172a85c83`  
		Last Modified: Fri, 24 Mar 2017 00:09:07 GMT  
		Size: 6.7 KB (6710 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83fba0edc28ab8f640e112e4fdc519e333ec69032813f950533b7bf30d73af83`  
		Last Modified: Fri, 24 Mar 2017 00:09:07 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cdcc5391528e5253d5f898bcee89d8a732e279acb5d1a25c439feb7236cfaf0f`  
		Last Modified: Fri, 24 Mar 2017 00:09:07 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83b325d5b767eb47abdc801d3833714d8f7952fa60de0e41a16b6f70147dd53f`  
		Last Modified: Fri, 24 Mar 2017 00:09:07 GMT  
		Size: 1.8 KB (1804 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a304d39bdebcf11d80428b1752a4aaf3312300eeb29d9954577382c60f91a74a`  
		Last Modified: Fri, 24 Mar 2017 00:09:07 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.4`

```console
$ docker pull postgres@sha256:6046af499eae34d2074c0b53f9a8b404716d4315e4a03e68bc1d2f8064f2b027
```

-	Platforms:
	-	linux; amd64

### `postgres:9.4` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **101.2 MB (101207961 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a10ed4fb18014c201c8384e469c0792fde770c9ccdd25580833d1ff6a587e4a8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Tue, 21 Mar 2017 18:28:51 GMT
ADD file:4eedf861fb567fffb2694b65ebdd58d5e371a2c28c3863f363f333cb34e5eb7b in / 
# Tue, 21 Mar 2017 18:29:05 GMT
CMD ["/bin/bash"]
# Tue, 21 Mar 2017 23:38:28 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Tue, 21 Mar 2017 23:38:29 GMT
ENV GOSU_VERSION=1.7
# Tue, 21 Mar 2017 23:38:46 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 21 Mar 2017 23:38:54 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Tue, 21 Mar 2017 23:38:54 GMT
ENV LANG=en_US.utf8
# Tue, 21 Mar 2017 23:38:55 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 21 Mar 2017 23:38:56 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 21 Mar 2017 23:41:13 GMT
ENV PG_MAJOR=9.4
# Tue, 21 Mar 2017 23:41:14 GMT
ENV PG_VERSION=9.4.11-1.pgdg80+1
# Tue, 21 Mar 2017 23:41:15 GMT
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main' $PG_MAJOR > /etc/apt/sources.list.d/pgdg.list
# Tue, 21 Mar 2017 23:41:40 GMT
RUN apt-get update 	&& apt-get install -y postgresql-common 	&& sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf 	&& apt-get install -y 		postgresql-$PG_MAJOR=$PG_VERSION 		postgresql-contrib-$PG_MAJOR=$PG_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 23:41:41 GMT
RUN mv -v /usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample /usr/share/postgresql/$PG_MAJOR/ 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Tue, 21 Mar 2017 23:41:42 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod g+s /var/run/postgresql
# Tue, 21 Mar 2017 23:41:42 GMT
ENV PATH=/usr/lib/postgresql/9.4/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 21 Mar 2017 23:41:42 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 21 Mar 2017 23:41:43 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Tue, 21 Mar 2017 23:41:44 GMT
VOLUME [/var/lib/postgresql/data]
# Tue, 21 Mar 2017 23:41:44 GMT
COPY file:88a96354a6aaf272401b7f970f55a9dc174766547274d89eac38a4f16ed20c56 in /usr/local/bin/ 
# Tue, 21 Mar 2017 23:41:45 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 21 Mar 2017 23:41:46 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 21 Mar 2017 23:41:46 GMT
EXPOSE 5432/tcp
# Tue, 21 Mar 2017 23:41:46 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:6d827a3ef358f4fa21ef8251f95492e667da826653fd43641cef5a877dc03a70`  
		Last Modified: Tue, 21 Mar 2017 18:38:18 GMT  
		Size: 51.4 MB (51438476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d7f5459c169a3b3836db7a9501070438bc2c4a0dfc0577a073449fa7ee1ae40`  
		Last Modified: Fri, 24 Mar 2017 00:06:33 GMT  
		Size: 2.0 KB (2045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecb14191664d5b18e89d02ff79a6f4b0b698ddc6818f27a3d62a768dccc47845`  
		Last Modified: Fri, 24 Mar 2017 00:06:33 GMT  
		Size: 1.3 MB (1288981 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecd8857273964c150e39b2461772ec2d9445048adc0ee2c726ad42dc960cb1c0`  
		Last Modified: Fri, 24 Mar 2017 00:06:35 GMT  
		Size: 6.9 MB (6937295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1fc7408190a9a104bc4dff6ddc144ba86599c2e83dcdfcdfae3c331080bb7a4`  
		Last Modified: Fri, 24 Mar 2017 00:06:31 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3cf57a1b661d5e38def1a1b4258b6adfb329b4395951b35ab2d28a53af55b3b`  
		Last Modified: Fri, 24 Mar 2017 00:06:32 GMT  
		Size: 4.5 KB (4484 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:888b5c13b5e121794f81041e6c5620fcf7a478042204245095219ee9a3c7bd09`  
		Last Modified: Fri, 24 Mar 2017 00:09:09 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd083cfecff7a4adfc879736d38efdf879e8bc7480ebe265b95f073b3a7ee03b`  
		Last Modified: Fri, 24 Mar 2017 00:09:25 GMT  
		Size: 41.5 MB (41527411 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f052b8f77bfb60f9480da7eadc0d30f048cb4e57a1e8935b0fb5008172a85c83`  
		Last Modified: Fri, 24 Mar 2017 00:09:07 GMT  
		Size: 6.7 KB (6710 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83fba0edc28ab8f640e112e4fdc519e333ec69032813f950533b7bf30d73af83`  
		Last Modified: Fri, 24 Mar 2017 00:09:07 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cdcc5391528e5253d5f898bcee89d8a732e279acb5d1a25c439feb7236cfaf0f`  
		Last Modified: Fri, 24 Mar 2017 00:09:07 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83b325d5b767eb47abdc801d3833714d8f7952fa60de0e41a16b6f70147dd53f`  
		Last Modified: Fri, 24 Mar 2017 00:09:07 GMT  
		Size: 1.8 KB (1804 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a304d39bdebcf11d80428b1752a4aaf3312300eeb29d9954577382c60f91a74a`  
		Last Modified: Fri, 24 Mar 2017 00:09:07 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.4.11-alpine`

```console
$ docker pull postgres@sha256:6cc51ae879dc12dce6e95cfce91f6b609ce84c4e632a0cb0f7eb80b8e6b0dba7
```

-	Platforms:
	-	linux; amd64

### `postgres:9.4.11-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.5 MB (13499602 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6400a39d135507b1c6ad95cf2fec37927a158626a0ccc4c1c7aabb283762768c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:37 GMT
ADD file:730030a984f5f0c5dc9b15ab61da161082b5c0f6e112a9c921b42321140c3927 in / 
# Fri, 03 Mar 2017 23:12:20 GMT
ENV LANG=en_US.utf8
# Fri, 03 Mar 2017 23:12:21 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 03 Mar 2017 23:18:50 GMT
ENV PG_MAJOR=9.4
# Fri, 03 Mar 2017 23:18:50 GMT
ENV PG_VERSION=9.4.11
# Fri, 03 Mar 2017 23:18:50 GMT
ENV PG_SHA256=e3eb51d045c180b03d2de1f0c3af9356e10be49448e966ca01dfc2c6d1cc9d23
# Tue, 07 Mar 2017 23:50:03 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl 		util-linux-dev 		zlib-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& ./configure 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Tue, 07 Mar 2017 23:50:04 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Tue, 07 Mar 2017 23:50:05 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod g+s /var/run/postgresql
# Tue, 07 Mar 2017 23:50:05 GMT
ENV PATH=/usr/lib/postgresql/9.4/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 07 Mar 2017 23:50:05 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 07 Mar 2017 23:50:06 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Tue, 07 Mar 2017 23:50:07 GMT
VOLUME [/var/lib/postgresql/data]
# Tue, 21 Mar 2017 16:55:32 GMT
COPY file:eaca0a850cbcaa5c12dcc3641ccc20e204dc7bdc99f5489f34ab1483318257b8 in /usr/local/bin/ 
# Tue, 21 Mar 2017 16:55:33 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 21 Mar 2017 16:55:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 21 Mar 2017 16:55:34 GMT
EXPOSE 5432/tcp
# Tue, 21 Mar 2017 16:55:35 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:627beaf3eaaff1c0bc3311d60fb933c17ad04fe377e1043d9593646d8ae3bfe1`  
		Last Modified: Fri, 03 Mar 2017 20:34:41 GMT  
		Size: 1.9 MB (1905270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d555ba539f475d381bd03abd3e00bc4ca815118f0e3d65a679b7c63f1c78fd6`  
		Last Modified: Sat, 04 Mar 2017 05:36:11 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04c18a3c8964dac6af66fbb8019f745c4a3a505b76fd2d9d1c2dd928254bbadd`  
		Last Modified: Tue, 07 Mar 2017 23:59:09 GMT  
		Size: 11.6 MB (11585312 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0b267450e72588146f59d8ff9380819020b3d94bb3cf2bbbfdf35eb4c350cbe`  
		Last Modified: Tue, 07 Mar 2017 23:59:01 GMT  
		Size: 6.7 KB (6681 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6caa9d3c92f9f5e51b3a9b3738ff299ca5ca2eb95b334f50a835318e29d9f19c`  
		Last Modified: Tue, 07 Mar 2017 23:59:01 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1dd699c4e0041857e3692a1352646479562ddee9855bbca18a178c64ba637bff`  
		Last Modified: Tue, 07 Mar 2017 23:59:01 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1319dd870dbcc78bf048797c14762165644a88331d7681555080f4c299f82fc0`  
		Last Modified: Tue, 21 Mar 2017 17:04:02 GMT  
		Size: 1.8 KB (1795 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62e0c4eaec1ff95b071d42732d4463fa72986f3cd4a6ffde0a424e8178b78a3d`  
		Last Modified: Tue, 21 Mar 2017 17:04:01 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.4-alpine`

```console
$ docker pull postgres@sha256:6cc51ae879dc12dce6e95cfce91f6b609ce84c4e632a0cb0f7eb80b8e6b0dba7
```

-	Platforms:
	-	linux; amd64

### `postgres:9.4-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.5 MB (13499602 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6400a39d135507b1c6ad95cf2fec37927a158626a0ccc4c1c7aabb283762768c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:37 GMT
ADD file:730030a984f5f0c5dc9b15ab61da161082b5c0f6e112a9c921b42321140c3927 in / 
# Fri, 03 Mar 2017 23:12:20 GMT
ENV LANG=en_US.utf8
# Fri, 03 Mar 2017 23:12:21 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 03 Mar 2017 23:18:50 GMT
ENV PG_MAJOR=9.4
# Fri, 03 Mar 2017 23:18:50 GMT
ENV PG_VERSION=9.4.11
# Fri, 03 Mar 2017 23:18:50 GMT
ENV PG_SHA256=e3eb51d045c180b03d2de1f0c3af9356e10be49448e966ca01dfc2c6d1cc9d23
# Tue, 07 Mar 2017 23:50:03 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl 		util-linux-dev 		zlib-dev 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& ./configure 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Tue, 07 Mar 2017 23:50:04 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Tue, 07 Mar 2017 23:50:05 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod g+s /var/run/postgresql
# Tue, 07 Mar 2017 23:50:05 GMT
ENV PATH=/usr/lib/postgresql/9.4/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 07 Mar 2017 23:50:05 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 07 Mar 2017 23:50:06 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Tue, 07 Mar 2017 23:50:07 GMT
VOLUME [/var/lib/postgresql/data]
# Tue, 21 Mar 2017 16:55:32 GMT
COPY file:eaca0a850cbcaa5c12dcc3641ccc20e204dc7bdc99f5489f34ab1483318257b8 in /usr/local/bin/ 
# Tue, 21 Mar 2017 16:55:33 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 21 Mar 2017 16:55:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 21 Mar 2017 16:55:34 GMT
EXPOSE 5432/tcp
# Tue, 21 Mar 2017 16:55:35 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:627beaf3eaaff1c0bc3311d60fb933c17ad04fe377e1043d9593646d8ae3bfe1`  
		Last Modified: Fri, 03 Mar 2017 20:34:41 GMT  
		Size: 1.9 MB (1905270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d555ba539f475d381bd03abd3e00bc4ca815118f0e3d65a679b7c63f1c78fd6`  
		Last Modified: Sat, 04 Mar 2017 05:36:11 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04c18a3c8964dac6af66fbb8019f745c4a3a505b76fd2d9d1c2dd928254bbadd`  
		Last Modified: Tue, 07 Mar 2017 23:59:09 GMT  
		Size: 11.6 MB (11585312 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0b267450e72588146f59d8ff9380819020b3d94bb3cf2bbbfdf35eb4c350cbe`  
		Last Modified: Tue, 07 Mar 2017 23:59:01 GMT  
		Size: 6.7 KB (6681 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6caa9d3c92f9f5e51b3a9b3738ff299ca5ca2eb95b334f50a835318e29d9f19c`  
		Last Modified: Tue, 07 Mar 2017 23:59:01 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1dd699c4e0041857e3692a1352646479562ddee9855bbca18a178c64ba637bff`  
		Last Modified: Tue, 07 Mar 2017 23:59:01 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1319dd870dbcc78bf048797c14762165644a88331d7681555080f4c299f82fc0`  
		Last Modified: Tue, 21 Mar 2017 17:04:02 GMT  
		Size: 1.8 KB (1795 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62e0c4eaec1ff95b071d42732d4463fa72986f3cd4a6ffde0a424e8178b78a3d`  
		Last Modified: Tue, 21 Mar 2017 17:04:01 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.3.16`

```console
$ docker pull postgres@sha256:7d6c893c41a70c6eecce739b3c01b960a0ce063f48d5338e28fbae45e8a76562
```

-	Platforms:
	-	linux; amd64

### `postgres:9.3.16` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **100.9 MB (100855331 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a76175d1cad7b75909f028005f4be731e8889fa39fb2d3accc48a7fd49f48730`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Tue, 21 Mar 2017 18:28:51 GMT
ADD file:4eedf861fb567fffb2694b65ebdd58d5e371a2c28c3863f363f333cb34e5eb7b in / 
# Tue, 21 Mar 2017 18:29:05 GMT
CMD ["/bin/bash"]
# Tue, 21 Mar 2017 23:38:28 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Tue, 21 Mar 2017 23:38:29 GMT
ENV GOSU_VERSION=1.7
# Tue, 21 Mar 2017 23:38:46 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 21 Mar 2017 23:38:54 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Tue, 21 Mar 2017 23:38:54 GMT
ENV LANG=en_US.utf8
# Tue, 21 Mar 2017 23:38:55 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 21 Mar 2017 23:38:56 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 21 Mar 2017 23:40:28 GMT
ENV PG_MAJOR=9.3
# Tue, 21 Mar 2017 23:40:28 GMT
ENV PG_VERSION=9.3.16-1.pgdg80+1
# Tue, 21 Mar 2017 23:40:29 GMT
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main' $PG_MAJOR > /etc/apt/sources.list.d/pgdg.list
# Tue, 21 Mar 2017 23:41:06 GMT
RUN apt-get update 	&& apt-get install -y postgresql-common 	&& sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf 	&& apt-get install -y 		postgresql-$PG_MAJOR=$PG_VERSION 		postgresql-contrib-$PG_MAJOR=$PG_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 23:41:07 GMT
RUN mv -v /usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample /usr/share/postgresql/$PG_MAJOR/ 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Tue, 21 Mar 2017 23:41:08 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod g+s /var/run/postgresql
# Tue, 21 Mar 2017 23:41:08 GMT
ENV PATH=/usr/lib/postgresql/9.3/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 21 Mar 2017 23:41:09 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 21 Mar 2017 23:41:10 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Tue, 21 Mar 2017 23:41:10 GMT
VOLUME [/var/lib/postgresql/data]
# Tue, 21 Mar 2017 23:41:11 GMT
COPY file:88a96354a6aaf272401b7f970f55a9dc174766547274d89eac38a4f16ed20c56 in /usr/local/bin/ 
# Tue, 21 Mar 2017 23:41:12 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 21 Mar 2017 23:41:12 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 21 Mar 2017 23:41:12 GMT
EXPOSE 5432/tcp
# Tue, 21 Mar 2017 23:41:13 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:6d827a3ef358f4fa21ef8251f95492e667da826653fd43641cef5a877dc03a70`  
		Last Modified: Tue, 21 Mar 2017 18:38:18 GMT  
		Size: 51.4 MB (51438476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d7f5459c169a3b3836db7a9501070438bc2c4a0dfc0577a073449fa7ee1ae40`  
		Last Modified: Fri, 24 Mar 2017 00:06:33 GMT  
		Size: 2.0 KB (2045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecb14191664d5b18e89d02ff79a6f4b0b698ddc6818f27a3d62a768dccc47845`  
		Last Modified: Fri, 24 Mar 2017 00:06:33 GMT  
		Size: 1.3 MB (1288981 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecd8857273964c150e39b2461772ec2d9445048adc0ee2c726ad42dc960cb1c0`  
		Last Modified: Fri, 24 Mar 2017 00:06:35 GMT  
		Size: 6.9 MB (6937295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1fc7408190a9a104bc4dff6ddc144ba86599c2e83dcdfcdfae3c331080bb7a4`  
		Last Modified: Fri, 24 Mar 2017 00:06:31 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3cf57a1b661d5e38def1a1b4258b6adfb329b4395951b35ab2d28a53af55b3b`  
		Last Modified: Fri, 24 Mar 2017 00:06:32 GMT  
		Size: 4.5 KB (4484 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef79a01dd4b2fc9af802a3e02a0185c8219ddb3e8b876413de6a5ffcb1015e48`  
		Last Modified: Fri, 24 Mar 2017 00:08:06 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e58ac0efef385642578769b938580cbf0bf821f6cca701443b16d7bd9cf1f7bc`  
		Last Modified: Fri, 24 Mar 2017 00:08:23 GMT  
		Size: 41.2 MB (41174958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc5b75bd9df19747253900f1675cdd94ee75958eab12be1acb14af5bc4fc31c5`  
		Last Modified: Fri, 24 Mar 2017 00:08:03 GMT  
		Size: 6.5 KB (6531 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfd95a9a837c9a6b4949942953217f0c1a6996b06f03fb6ff44010d1beefdcc5`  
		Last Modified: Fri, 24 Mar 2017 00:08:06 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3117ec042bdb6ec952c50cee8a10e7aee7be5392aed49fe374e280a6f1b5b6b6`  
		Last Modified: Fri, 24 Mar 2017 00:08:03 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1216a8c607fe40fd9d045f20a6f519bf51a5e2434d0ed81df43735566c8cbdea`  
		Last Modified: Fri, 24 Mar 2017 00:08:03 GMT  
		Size: 1.8 KB (1807 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c826257f1011600609f59f2564b6ad085e79c25b5041ce4a1d8d281e1cf42e1`  
		Last Modified: Fri, 24 Mar 2017 00:08:03 GMT  
		Size: 119.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.3`

```console
$ docker pull postgres@sha256:7d6c893c41a70c6eecce739b3c01b960a0ce063f48d5338e28fbae45e8a76562
```

-	Platforms:
	-	linux; amd64

### `postgres:9.3` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **100.9 MB (100855331 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a76175d1cad7b75909f028005f4be731e8889fa39fb2d3accc48a7fd49f48730`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Tue, 21 Mar 2017 18:28:51 GMT
ADD file:4eedf861fb567fffb2694b65ebdd58d5e371a2c28c3863f363f333cb34e5eb7b in / 
# Tue, 21 Mar 2017 18:29:05 GMT
CMD ["/bin/bash"]
# Tue, 21 Mar 2017 23:38:28 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Tue, 21 Mar 2017 23:38:29 GMT
ENV GOSU_VERSION=1.7
# Tue, 21 Mar 2017 23:38:46 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 21 Mar 2017 23:38:54 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Tue, 21 Mar 2017 23:38:54 GMT
ENV LANG=en_US.utf8
# Tue, 21 Mar 2017 23:38:55 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 21 Mar 2017 23:38:56 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 21 Mar 2017 23:40:28 GMT
ENV PG_MAJOR=9.3
# Tue, 21 Mar 2017 23:40:28 GMT
ENV PG_VERSION=9.3.16-1.pgdg80+1
# Tue, 21 Mar 2017 23:40:29 GMT
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main' $PG_MAJOR > /etc/apt/sources.list.d/pgdg.list
# Tue, 21 Mar 2017 23:41:06 GMT
RUN apt-get update 	&& apt-get install -y postgresql-common 	&& sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf 	&& apt-get install -y 		postgresql-$PG_MAJOR=$PG_VERSION 		postgresql-contrib-$PG_MAJOR=$PG_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 23:41:07 GMT
RUN mv -v /usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample /usr/share/postgresql/$PG_MAJOR/ 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Tue, 21 Mar 2017 23:41:08 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod g+s /var/run/postgresql
# Tue, 21 Mar 2017 23:41:08 GMT
ENV PATH=/usr/lib/postgresql/9.3/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 21 Mar 2017 23:41:09 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 21 Mar 2017 23:41:10 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Tue, 21 Mar 2017 23:41:10 GMT
VOLUME [/var/lib/postgresql/data]
# Tue, 21 Mar 2017 23:41:11 GMT
COPY file:88a96354a6aaf272401b7f970f55a9dc174766547274d89eac38a4f16ed20c56 in /usr/local/bin/ 
# Tue, 21 Mar 2017 23:41:12 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 21 Mar 2017 23:41:12 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 21 Mar 2017 23:41:12 GMT
EXPOSE 5432/tcp
# Tue, 21 Mar 2017 23:41:13 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:6d827a3ef358f4fa21ef8251f95492e667da826653fd43641cef5a877dc03a70`  
		Last Modified: Tue, 21 Mar 2017 18:38:18 GMT  
		Size: 51.4 MB (51438476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d7f5459c169a3b3836db7a9501070438bc2c4a0dfc0577a073449fa7ee1ae40`  
		Last Modified: Fri, 24 Mar 2017 00:06:33 GMT  
		Size: 2.0 KB (2045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecb14191664d5b18e89d02ff79a6f4b0b698ddc6818f27a3d62a768dccc47845`  
		Last Modified: Fri, 24 Mar 2017 00:06:33 GMT  
		Size: 1.3 MB (1288981 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecd8857273964c150e39b2461772ec2d9445048adc0ee2c726ad42dc960cb1c0`  
		Last Modified: Fri, 24 Mar 2017 00:06:35 GMT  
		Size: 6.9 MB (6937295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1fc7408190a9a104bc4dff6ddc144ba86599c2e83dcdfcdfae3c331080bb7a4`  
		Last Modified: Fri, 24 Mar 2017 00:06:31 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3cf57a1b661d5e38def1a1b4258b6adfb329b4395951b35ab2d28a53af55b3b`  
		Last Modified: Fri, 24 Mar 2017 00:06:32 GMT  
		Size: 4.5 KB (4484 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef79a01dd4b2fc9af802a3e02a0185c8219ddb3e8b876413de6a5ffcb1015e48`  
		Last Modified: Fri, 24 Mar 2017 00:08:06 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e58ac0efef385642578769b938580cbf0bf821f6cca701443b16d7bd9cf1f7bc`  
		Last Modified: Fri, 24 Mar 2017 00:08:23 GMT  
		Size: 41.2 MB (41174958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc5b75bd9df19747253900f1675cdd94ee75958eab12be1acb14af5bc4fc31c5`  
		Last Modified: Fri, 24 Mar 2017 00:08:03 GMT  
		Size: 6.5 KB (6531 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfd95a9a837c9a6b4949942953217f0c1a6996b06f03fb6ff44010d1beefdcc5`  
		Last Modified: Fri, 24 Mar 2017 00:08:06 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3117ec042bdb6ec952c50cee8a10e7aee7be5392aed49fe374e280a6f1b5b6b6`  
		Last Modified: Fri, 24 Mar 2017 00:08:03 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1216a8c607fe40fd9d045f20a6f519bf51a5e2434d0ed81df43735566c8cbdea`  
		Last Modified: Fri, 24 Mar 2017 00:08:03 GMT  
		Size: 1.8 KB (1807 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c826257f1011600609f59f2564b6ad085e79c25b5041ce4a1d8d281e1cf42e1`  
		Last Modified: Fri, 24 Mar 2017 00:08:03 GMT  
		Size: 119.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.3.16-alpine`

```console
$ docker pull postgres@sha256:bf5194e924b0af036a35e78cf3994a4ab2002d4ef4b84409b63063f3dc262f91
```

-	Platforms:
	-	linux; amd64

### `postgres:9.3.16-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.2 MB (13217501 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:61a2f8ec0b44b5860c0d5c9a287fa9eaeebb39e1e7e3258fc174150f95d8f88d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:37 GMT
ADD file:730030a984f5f0c5dc9b15ab61da161082b5c0f6e112a9c921b42321140c3927 in / 
# Fri, 03 Mar 2017 23:12:20 GMT
ENV LANG=en_US.utf8
# Fri, 03 Mar 2017 23:12:21 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 03 Mar 2017 23:16:57 GMT
ENV PG_MAJOR=9.3
# Fri, 03 Mar 2017 23:16:57 GMT
ENV PG_VERSION=9.3.16
# Fri, 03 Mar 2017 23:16:57 GMT
ENV PG_SHA256=845f5e4ac8cf026b6a77c5a180a2fe869f51e9d06acf8d0365b05505a2c66873
# Tue, 07 Mar 2017 23:50:10 GMT
ENV OSSP_UUID_VERSION=1.6.2
# Tue, 07 Mar 2017 23:50:10 GMT
ENV OSSP_UUID_SHA256=11a615225baa5f8bb686824423f50e4427acd3f70d394765bdff32801f0fd5b0
# Tue, 07 Mar 2017 23:52:01 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl 		util-linux-dev 		zlib-dev 		&& wget -O uuid.tar.gz "https://www.mirrorservice.org/sites/ftp.ossp.org/pkg/lib/uuid/uuid-$OSSP_UUID_VERSION.tar.gz" 	&& echo "$OSSP_UUID_SHA256 *uuid.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/ossp-uuid 	&& tar 		--extract 		--file uuid.tar.gz 		--directory /usr/src/ossp-uuid 		--strip-components 1 	&& rm uuid.tar.gz 	&& ( 		cd /usr/src/ossp-uuid 		&& ./configure 			--prefix=/usr/local 		&& make -j "$(nproc)" 		&& make install 	) 	&& rm -rf /usr/src/ossp-uuid 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& ./configure 		--enable-integer-datetimes 		--enable-thread-safety 		--disable-rpath 		--with-ossp-uuid 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Tue, 07 Mar 2017 23:52:02 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Tue, 07 Mar 2017 23:52:03 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod g+s /var/run/postgresql
# Tue, 07 Mar 2017 23:52:03 GMT
ENV PATH=/usr/lib/postgresql/9.3/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 07 Mar 2017 23:52:03 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 07 Mar 2017 23:52:04 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Tue, 07 Mar 2017 23:52:05 GMT
VOLUME [/var/lib/postgresql/data]
# Tue, 21 Mar 2017 16:55:41 GMT
COPY file:eaca0a850cbcaa5c12dcc3641ccc20e204dc7bdc99f5489f34ab1483318257b8 in /usr/local/bin/ 
# Tue, 21 Mar 2017 16:55:42 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 21 Mar 2017 16:55:43 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 21 Mar 2017 16:55:44 GMT
EXPOSE 5432/tcp
# Tue, 21 Mar 2017 16:55:44 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:627beaf3eaaff1c0bc3311d60fb933c17ad04fe377e1043d9593646d8ae3bfe1`  
		Last Modified: Fri, 03 Mar 2017 20:34:41 GMT  
		Size: 1.9 MB (1905270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d555ba539f475d381bd03abd3e00bc4ca815118f0e3d65a679b7c63f1c78fd6`  
		Last Modified: Sat, 04 Mar 2017 05:36:11 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44d1e980580d9f579a793a4fe6ca708e19b24ec924ccb1499639649428bdb275`  
		Last Modified: Wed, 08 Mar 2017 00:00:34 GMT  
		Size: 11.3 MB (11303392 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:236ec5465be330f965a7ae1966e7ac4f4eadd4ce01db42bbddf0015cff70aca9`  
		Last Modified: Wed, 08 Mar 2017 00:00:28 GMT  
		Size: 6.5 KB (6500 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b5bbf428c85abd245e7b0444252f650dd1d7a821ac2724fd47c868a5a495188`  
		Last Modified: Wed, 08 Mar 2017 00:00:28 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee2c49c2c3be9a5c599c00e999a030f7966b1d8fae776192c87c978f04f08d83`  
		Last Modified: Wed, 08 Mar 2017 00:00:28 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0a87fc0062f61dc931e080423dd796c189b776c9c37cd63a456ba02592e583b`  
		Last Modified: Tue, 21 Mar 2017 17:06:12 GMT  
		Size: 1.8 KB (1796 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ccf5bcd9c6af551a3fb602d83bf5b2ca779a0150e44453f607120de8b181cf0`  
		Last Modified: Tue, 21 Mar 2017 17:06:12 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.3-alpine`

```console
$ docker pull postgres@sha256:bf5194e924b0af036a35e78cf3994a4ab2002d4ef4b84409b63063f3dc262f91
```

-	Platforms:
	-	linux; amd64

### `postgres:9.3-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.2 MB (13217501 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:61a2f8ec0b44b5860c0d5c9a287fa9eaeebb39e1e7e3258fc174150f95d8f88d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:37 GMT
ADD file:730030a984f5f0c5dc9b15ab61da161082b5c0f6e112a9c921b42321140c3927 in / 
# Fri, 03 Mar 2017 23:12:20 GMT
ENV LANG=en_US.utf8
# Fri, 03 Mar 2017 23:12:21 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 03 Mar 2017 23:16:57 GMT
ENV PG_MAJOR=9.3
# Fri, 03 Mar 2017 23:16:57 GMT
ENV PG_VERSION=9.3.16
# Fri, 03 Mar 2017 23:16:57 GMT
ENV PG_SHA256=845f5e4ac8cf026b6a77c5a180a2fe869f51e9d06acf8d0365b05505a2c66873
# Tue, 07 Mar 2017 23:50:10 GMT
ENV OSSP_UUID_VERSION=1.6.2
# Tue, 07 Mar 2017 23:50:10 GMT
ENV OSSP_UUID_SHA256=11a615225baa5f8bb686824423f50e4427acd3f70d394765bdff32801f0fd5b0
# Tue, 07 Mar 2017 23:52:01 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl 		util-linux-dev 		zlib-dev 		&& wget -O uuid.tar.gz "https://www.mirrorservice.org/sites/ftp.ossp.org/pkg/lib/uuid/uuid-$OSSP_UUID_VERSION.tar.gz" 	&& echo "$OSSP_UUID_SHA256 *uuid.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/ossp-uuid 	&& tar 		--extract 		--file uuid.tar.gz 		--directory /usr/src/ossp-uuid 		--strip-components 1 	&& rm uuid.tar.gz 	&& ( 		cd /usr/src/ossp-uuid 		&& ./configure 			--prefix=/usr/local 		&& make -j "$(nproc)" 		&& make install 	) 	&& rm -rf /usr/src/ossp-uuid 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& ./configure 		--enable-integer-datetimes 		--enable-thread-safety 		--disable-rpath 		--with-ossp-uuid 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Tue, 07 Mar 2017 23:52:02 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Tue, 07 Mar 2017 23:52:03 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod g+s /var/run/postgresql
# Tue, 07 Mar 2017 23:52:03 GMT
ENV PATH=/usr/lib/postgresql/9.3/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 07 Mar 2017 23:52:03 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 07 Mar 2017 23:52:04 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Tue, 07 Mar 2017 23:52:05 GMT
VOLUME [/var/lib/postgresql/data]
# Tue, 21 Mar 2017 16:55:41 GMT
COPY file:eaca0a850cbcaa5c12dcc3641ccc20e204dc7bdc99f5489f34ab1483318257b8 in /usr/local/bin/ 
# Tue, 21 Mar 2017 16:55:42 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 21 Mar 2017 16:55:43 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 21 Mar 2017 16:55:44 GMT
EXPOSE 5432/tcp
# Tue, 21 Mar 2017 16:55:44 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:627beaf3eaaff1c0bc3311d60fb933c17ad04fe377e1043d9593646d8ae3bfe1`  
		Last Modified: Fri, 03 Mar 2017 20:34:41 GMT  
		Size: 1.9 MB (1905270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d555ba539f475d381bd03abd3e00bc4ca815118f0e3d65a679b7c63f1c78fd6`  
		Last Modified: Sat, 04 Mar 2017 05:36:11 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44d1e980580d9f579a793a4fe6ca708e19b24ec924ccb1499639649428bdb275`  
		Last Modified: Wed, 08 Mar 2017 00:00:34 GMT  
		Size: 11.3 MB (11303392 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:236ec5465be330f965a7ae1966e7ac4f4eadd4ce01db42bbddf0015cff70aca9`  
		Last Modified: Wed, 08 Mar 2017 00:00:28 GMT  
		Size: 6.5 KB (6500 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b5bbf428c85abd245e7b0444252f650dd1d7a821ac2724fd47c868a5a495188`  
		Last Modified: Wed, 08 Mar 2017 00:00:28 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee2c49c2c3be9a5c599c00e999a030f7966b1d8fae776192c87c978f04f08d83`  
		Last Modified: Wed, 08 Mar 2017 00:00:28 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0a87fc0062f61dc931e080423dd796c189b776c9c37cd63a456ba02592e583b`  
		Last Modified: Tue, 21 Mar 2017 17:06:12 GMT  
		Size: 1.8 KB (1796 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ccf5bcd9c6af551a3fb602d83bf5b2ca779a0150e44453f607120de8b181cf0`  
		Last Modified: Tue, 21 Mar 2017 17:06:12 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.2.20`

```console
$ docker pull postgres@sha256:e3021bdaa856ef1e142fd5eb89b05dd32e784847b54c480a862b2d0e475a24f3
```

-	Platforms:
	-	linux; amd64

### `postgres:9.2.20` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **100.7 MB (100691661 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9121d79724df5efc746ecd80d3c7b1258a400e05ea51cf940ffdbc53672c0ad8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Tue, 21 Mar 2017 18:28:51 GMT
ADD file:4eedf861fb567fffb2694b65ebdd58d5e371a2c28c3863f363f333cb34e5eb7b in / 
# Tue, 21 Mar 2017 18:29:05 GMT
CMD ["/bin/bash"]
# Tue, 21 Mar 2017 23:38:28 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Tue, 21 Mar 2017 23:38:29 GMT
ENV GOSU_VERSION=1.7
# Tue, 21 Mar 2017 23:38:46 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 21 Mar 2017 23:38:54 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Tue, 21 Mar 2017 23:38:54 GMT
ENV LANG=en_US.utf8
# Tue, 21 Mar 2017 23:38:55 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 21 Mar 2017 23:38:56 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 21 Mar 2017 23:39:43 GMT
ENV PG_MAJOR=9.2
# Tue, 21 Mar 2017 23:39:43 GMT
ENV PG_VERSION=9.2.20-1.pgdg80+1
# Tue, 21 Mar 2017 23:39:44 GMT
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main' $PG_MAJOR > /etc/apt/sources.list.d/pgdg.list
# Tue, 21 Mar 2017 23:40:20 GMT
RUN apt-get update 	&& apt-get install -y postgresql-common 	&& sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf 	&& apt-get install -y 		postgresql-$PG_MAJOR=$PG_VERSION 		postgresql-contrib-$PG_MAJOR=$PG_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 23:40:22 GMT
RUN mv -v /usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample /usr/share/postgresql/$PG_MAJOR/ 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Tue, 21 Mar 2017 23:40:22 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod g+s /var/run/postgresql
# Tue, 21 Mar 2017 23:40:23 GMT
ENV PATH=/usr/lib/postgresql/9.2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 21 Mar 2017 23:40:23 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 21 Mar 2017 23:40:24 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Tue, 21 Mar 2017 23:40:24 GMT
VOLUME [/var/lib/postgresql/data]
# Tue, 21 Mar 2017 23:40:25 GMT
COPY file:88a96354a6aaf272401b7f970f55a9dc174766547274d89eac38a4f16ed20c56 in /usr/local/bin/ 
# Tue, 21 Mar 2017 23:40:26 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 21 Mar 2017 23:40:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 21 Mar 2017 23:40:27 GMT
EXPOSE 5432/tcp
# Tue, 21 Mar 2017 23:40:27 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:6d827a3ef358f4fa21ef8251f95492e667da826653fd43641cef5a877dc03a70`  
		Last Modified: Tue, 21 Mar 2017 18:38:18 GMT  
		Size: 51.4 MB (51438476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d7f5459c169a3b3836db7a9501070438bc2c4a0dfc0577a073449fa7ee1ae40`  
		Last Modified: Fri, 24 Mar 2017 00:06:33 GMT  
		Size: 2.0 KB (2045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecb14191664d5b18e89d02ff79a6f4b0b698ddc6818f27a3d62a768dccc47845`  
		Last Modified: Fri, 24 Mar 2017 00:06:33 GMT  
		Size: 1.3 MB (1288981 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecd8857273964c150e39b2461772ec2d9445048adc0ee2c726ad42dc960cb1c0`  
		Last Modified: Fri, 24 Mar 2017 00:06:35 GMT  
		Size: 6.9 MB (6937295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1fc7408190a9a104bc4dff6ddc144ba86599c2e83dcdfcdfae3c331080bb7a4`  
		Last Modified: Fri, 24 Mar 2017 00:06:31 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3cf57a1b661d5e38def1a1b4258b6adfb329b4395951b35ab2d28a53af55b3b`  
		Last Modified: Fri, 24 Mar 2017 00:06:32 GMT  
		Size: 4.5 KB (4484 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13ddf7864eca2eefe09c48a9d68bdd7dccfa21511eb192fafb81b2ed2c6b086c`  
		Last Modified: Fri, 24 Mar 2017 00:06:31 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:645059b306b7095447a603ab500bd553fe3bbd48c8caaca89d679ab262a0589e`  
		Last Modified: Fri, 24 Mar 2017 00:06:48 GMT  
		Size: 41.0 MB (41011350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57e03bbc5b789d0807f8e60366d1653e10386d36330e7d36e3852d13817e559d`  
		Last Modified: Fri, 24 Mar 2017 00:06:28 GMT  
		Size: 6.5 KB (6471 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9db74ea88326303004cb41121cb655e9f200bd33cb5b5456d1981117bba4e066`  
		Last Modified: Fri, 24 Mar 2017 00:06:29 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97dead0a6449edbaec264c3a580684c32e9f173bddf71ebf47737fae1f06b4f1`  
		Last Modified: Fri, 24 Mar 2017 00:06:29 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f5518f78946dac9c0ded6f75b8cb9d01544a5f8e56189b0bf247649fd19d174`  
		Last Modified: Fri, 24 Mar 2017 00:06:29 GMT  
		Size: 1.8 KB (1805 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c9da0963507f6ffe0681be72ce4d23745dd5f0dda822ecc0e4b0628b7858001`  
		Last Modified: Fri, 24 Mar 2017 00:06:28 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.2`

```console
$ docker pull postgres@sha256:e3021bdaa856ef1e142fd5eb89b05dd32e784847b54c480a862b2d0e475a24f3
```

-	Platforms:
	-	linux; amd64

### `postgres:9.2` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **100.7 MB (100691661 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9121d79724df5efc746ecd80d3c7b1258a400e05ea51cf940ffdbc53672c0ad8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Tue, 21 Mar 2017 18:28:51 GMT
ADD file:4eedf861fb567fffb2694b65ebdd58d5e371a2c28c3863f363f333cb34e5eb7b in / 
# Tue, 21 Mar 2017 18:29:05 GMT
CMD ["/bin/bash"]
# Tue, 21 Mar 2017 23:38:28 GMT
RUN groupadd -r postgres --gid=999 && useradd -r -g postgres --uid=999 postgres
# Tue, 21 Mar 2017 23:38:29 GMT
ENV GOSU_VERSION=1.7
# Tue, 21 Mar 2017 23:38:46 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 21 Mar 2017 23:38:54 GMT
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* 	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# Tue, 21 Mar 2017 23:38:54 GMT
ENV LANG=en_US.utf8
# Tue, 21 Mar 2017 23:38:55 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 21 Mar 2017 23:38:56 GMT
RUN set -ex; 	key='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/postgres.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 21 Mar 2017 23:39:43 GMT
ENV PG_MAJOR=9.2
# Tue, 21 Mar 2017 23:39:43 GMT
ENV PG_VERSION=9.2.20-1.pgdg80+1
# Tue, 21 Mar 2017 23:39:44 GMT
RUN echo 'deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main' $PG_MAJOR > /etc/apt/sources.list.d/pgdg.list
# Tue, 21 Mar 2017 23:40:20 GMT
RUN apt-get update 	&& apt-get install -y postgresql-common 	&& sed -ri 's/#(create_main_cluster) .*$/\1 = false/' /etc/postgresql-common/createcluster.conf 	&& apt-get install -y 		postgresql-$PG_MAJOR=$PG_VERSION 		postgresql-contrib-$PG_MAJOR=$PG_VERSION 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 23:40:22 GMT
RUN mv -v /usr/share/postgresql/$PG_MAJOR/postgresql.conf.sample /usr/share/postgresql/ 	&& ln -sv ../postgresql.conf.sample /usr/share/postgresql/$PG_MAJOR/ 	&& sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/share/postgresql/postgresql.conf.sample
# Tue, 21 Mar 2017 23:40:22 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod g+s /var/run/postgresql
# Tue, 21 Mar 2017 23:40:23 GMT
ENV PATH=/usr/lib/postgresql/9.2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 21 Mar 2017 23:40:23 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 21 Mar 2017 23:40:24 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Tue, 21 Mar 2017 23:40:24 GMT
VOLUME [/var/lib/postgresql/data]
# Tue, 21 Mar 2017 23:40:25 GMT
COPY file:88a96354a6aaf272401b7f970f55a9dc174766547274d89eac38a4f16ed20c56 in /usr/local/bin/ 
# Tue, 21 Mar 2017 23:40:26 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 21 Mar 2017 23:40:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 21 Mar 2017 23:40:27 GMT
EXPOSE 5432/tcp
# Tue, 21 Mar 2017 23:40:27 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:6d827a3ef358f4fa21ef8251f95492e667da826653fd43641cef5a877dc03a70`  
		Last Modified: Tue, 21 Mar 2017 18:38:18 GMT  
		Size: 51.4 MB (51438476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d7f5459c169a3b3836db7a9501070438bc2c4a0dfc0577a073449fa7ee1ae40`  
		Last Modified: Fri, 24 Mar 2017 00:06:33 GMT  
		Size: 2.0 KB (2045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecb14191664d5b18e89d02ff79a6f4b0b698ddc6818f27a3d62a768dccc47845`  
		Last Modified: Fri, 24 Mar 2017 00:06:33 GMT  
		Size: 1.3 MB (1288981 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecd8857273964c150e39b2461772ec2d9445048adc0ee2c726ad42dc960cb1c0`  
		Last Modified: Fri, 24 Mar 2017 00:06:35 GMT  
		Size: 6.9 MB (6937295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1fc7408190a9a104bc4dff6ddc144ba86599c2e83dcdfcdfae3c331080bb7a4`  
		Last Modified: Fri, 24 Mar 2017 00:06:31 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3cf57a1b661d5e38def1a1b4258b6adfb329b4395951b35ab2d28a53af55b3b`  
		Last Modified: Fri, 24 Mar 2017 00:06:32 GMT  
		Size: 4.5 KB (4484 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13ddf7864eca2eefe09c48a9d68bdd7dccfa21511eb192fafb81b2ed2c6b086c`  
		Last Modified: Fri, 24 Mar 2017 00:06:31 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:645059b306b7095447a603ab500bd553fe3bbd48c8caaca89d679ab262a0589e`  
		Last Modified: Fri, 24 Mar 2017 00:06:48 GMT  
		Size: 41.0 MB (41011350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57e03bbc5b789d0807f8e60366d1653e10386d36330e7d36e3852d13817e559d`  
		Last Modified: Fri, 24 Mar 2017 00:06:28 GMT  
		Size: 6.5 KB (6471 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9db74ea88326303004cb41121cb655e9f200bd33cb5b5456d1981117bba4e066`  
		Last Modified: Fri, 24 Mar 2017 00:06:29 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97dead0a6449edbaec264c3a580684c32e9f173bddf71ebf47737fae1f06b4f1`  
		Last Modified: Fri, 24 Mar 2017 00:06:29 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f5518f78946dac9c0ded6f75b8cb9d01544a5f8e56189b0bf247649fd19d174`  
		Last Modified: Fri, 24 Mar 2017 00:06:29 GMT  
		Size: 1.8 KB (1805 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c9da0963507f6ffe0681be72ce4d23745dd5f0dda822ecc0e4b0628b7858001`  
		Last Modified: Fri, 24 Mar 2017 00:06:28 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.2.20-alpine`

```console
$ docker pull postgres@sha256:3a67fc5d4cae9fa71f411be60bbc37e8891e752566e637d44febbc1822ff66a1
```

-	Platforms:
	-	linux; amd64

### `postgres:9.2.20-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.1 MB (13056492 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:81398e2f060c45282b84da115328b62d3ba9039cae00ecc7ea013b2185dd1535`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:37 GMT
ADD file:730030a984f5f0c5dc9b15ab61da161082b5c0f6e112a9c921b42321140c3927 in / 
# Fri, 03 Mar 2017 23:12:20 GMT
ENV LANG=en_US.utf8
# Fri, 03 Mar 2017 23:12:21 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 03 Mar 2017 23:15:05 GMT
ENV PG_MAJOR=9.2
# Fri, 03 Mar 2017 23:15:05 GMT
ENV PG_VERSION=9.2.20
# Fri, 03 Mar 2017 23:15:06 GMT
ENV PG_SHA256=0b8abdae8400cabea5587a726003c9dd71c73c049bdae523abc35f9312dd8f26
# Tue, 07 Mar 2017 23:52:08 GMT
ENV OSSP_UUID_VERSION=1.6.2
# Tue, 07 Mar 2017 23:52:09 GMT
ENV OSSP_UUID_SHA256=11a615225baa5f8bb686824423f50e4427acd3f70d394765bdff32801f0fd5b0
# Tue, 07 Mar 2017 23:53:57 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl 		util-linux-dev 		zlib-dev 		&& wget -O uuid.tar.gz "https://www.mirrorservice.org/sites/ftp.ossp.org/pkg/lib/uuid/uuid-$OSSP_UUID_VERSION.tar.gz" 	&& echo "$OSSP_UUID_SHA256 *uuid.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/ossp-uuid 	&& tar 		--extract 		--file uuid.tar.gz 		--directory /usr/src/ossp-uuid 		--strip-components 1 	&& rm uuid.tar.gz 	&& ( 		cd /usr/src/ossp-uuid 		&& ./configure 			--prefix=/usr/local 		&& make -j "$(nproc)" 		&& make install 	) 	&& rm -rf /usr/src/ossp-uuid 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& ./configure 		--enable-integer-datetimes 		--enable-thread-safety 		--disable-rpath 		--with-ossp-uuid 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Tue, 07 Mar 2017 23:53:58 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Tue, 07 Mar 2017 23:53:59 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod g+s /var/run/postgresql
# Tue, 07 Mar 2017 23:53:59 GMT
ENV PATH=/usr/lib/postgresql/9.2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 07 Mar 2017 23:54:00 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 07 Mar 2017 23:54:00 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Tue, 07 Mar 2017 23:54:01 GMT
VOLUME [/var/lib/postgresql/data]
# Tue, 21 Mar 2017 16:55:51 GMT
COPY file:eaca0a850cbcaa5c12dcc3641ccc20e204dc7bdc99f5489f34ab1483318257b8 in /usr/local/bin/ 
# Tue, 21 Mar 2017 16:55:52 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 21 Mar 2017 16:55:53 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 21 Mar 2017 16:55:54 GMT
EXPOSE 5432/tcp
# Tue, 21 Mar 2017 16:55:54 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:627beaf3eaaff1c0bc3311d60fb933c17ad04fe377e1043d9593646d8ae3bfe1`  
		Last Modified: Fri, 03 Mar 2017 20:34:41 GMT  
		Size: 1.9 MB (1905270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d555ba539f475d381bd03abd3e00bc4ca815118f0e3d65a679b7c63f1c78fd6`  
		Last Modified: Sat, 04 Mar 2017 05:36:11 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:908cab65d826e3e5528a77aa78dd4095dbfa401aabe7f96e5a9582be7afc2506`  
		Last Modified: Wed, 08 Mar 2017 00:01:58 GMT  
		Size: 11.1 MB (11142443 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98467d97f26c50371afa1081247ce58b5537819982efd768c3f7489123bb6706`  
		Last Modified: Wed, 08 Mar 2017 00:01:52 GMT  
		Size: 6.4 KB (6441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aeab08d17c64c29309ec77d9559ff3d3209942c67683a915641178f1a87216c1`  
		Last Modified: Wed, 08 Mar 2017 00:01:52 GMT  
		Size: 145.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc12f9a571d32c40fc6da9a7279f40efd2b24241be47ff33c3f79b89e75f964d`  
		Last Modified: Wed, 08 Mar 2017 00:01:52 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c174711e87d6783c3a81939ffcaba15d0fdd7fffed30f02ebc6d7ea2284a74e3`  
		Last Modified: Tue, 21 Mar 2017 17:08:22 GMT  
		Size: 1.8 KB (1797 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4610e7f6105b6026448ab8f196e3bfa16285cf79fd34952b1ee73dd7cc58c48b`  
		Last Modified: Tue, 21 Mar 2017 17:08:22 GMT  
		Size: 119.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `postgres:9.2-alpine`

```console
$ docker pull postgres@sha256:3a67fc5d4cae9fa71f411be60bbc37e8891e752566e637d44febbc1822ff66a1
```

-	Platforms:
	-	linux; amd64

### `postgres:9.2-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.1 MB (13056492 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:81398e2f060c45282b84da115328b62d3ba9039cae00ecc7ea013b2185dd1535`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:37 GMT
ADD file:730030a984f5f0c5dc9b15ab61da161082b5c0f6e112a9c921b42321140c3927 in / 
# Fri, 03 Mar 2017 23:12:20 GMT
ENV LANG=en_US.utf8
# Fri, 03 Mar 2017 23:12:21 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 03 Mar 2017 23:15:05 GMT
ENV PG_MAJOR=9.2
# Fri, 03 Mar 2017 23:15:05 GMT
ENV PG_VERSION=9.2.20
# Fri, 03 Mar 2017 23:15:06 GMT
ENV PG_SHA256=0b8abdae8400cabea5587a726003c9dd71c73c049bdae523abc35f9312dd8f26
# Tue, 07 Mar 2017 23:52:08 GMT
ENV OSSP_UUID_VERSION=1.6.2
# Tue, 07 Mar 2017 23:52:09 GMT
ENV OSSP_UUID_SHA256=11a615225baa5f8bb686824423f50e4427acd3f70d394765bdff32801f0fd5b0
# Tue, 07 Mar 2017 23:53:57 GMT
RUN set -ex 		&& apk add --no-cache --virtual .fetch-deps 		ca-certificates 		openssl 		tar 		&& wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2" 	&& echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c - 	&& mkdir -p /usr/src/postgresql 	&& tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	&& rm postgresql.tar.bz2 		&& apk add --no-cache --virtual .build-deps 		bison 		coreutils 		flex 		gcc 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		make 		openssl-dev 		perl 		util-linux-dev 		zlib-dev 		&& wget -O uuid.tar.gz "https://www.mirrorservice.org/sites/ftp.ossp.org/pkg/lib/uuid/uuid-$OSSP_UUID_VERSION.tar.gz" 	&& echo "$OSSP_UUID_SHA256 *uuid.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/ossp-uuid 	&& tar 		--extract 		--file uuid.tar.gz 		--directory /usr/src/ossp-uuid 		--strip-components 1 	&& rm uuid.tar.gz 	&& ( 		cd /usr/src/ossp-uuid 		&& ./configure 			--prefix=/usr/local 		&& make -j "$(nproc)" 		&& make install 	) 	&& rm -rf /usr/src/ossp-uuid 		&& cd /usr/src/postgresql 	&& awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new 	&& grep '/var/run/postgresql' src/include/pg_config_manual.h.new 	&& mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h 	&& ./configure 		--enable-integer-datetimes 		--enable-thread-safety 		--disable-rpath 		--with-ossp-uuid 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 				--with-openssl 		--with-libxml 		--with-libxslt 	&& make -j "$(nproc)" world 	&& make install-world 	&& make -C contrib install 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 	&& apk del .fetch-deps .build-deps 	&& cd / 	&& rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	&& find /usr/local -name '*.a' -delete
# Tue, 07 Mar 2017 23:53:58 GMT
RUN sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample
# Tue, 07 Mar 2017 23:53:59 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod g+s /var/run/postgresql
# Tue, 07 Mar 2017 23:53:59 GMT
ENV PATH=/usr/lib/postgresql/9.2/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 07 Mar 2017 23:54:00 GMT
ENV PGDATA=/var/lib/postgresql/data
# Tue, 07 Mar 2017 23:54:00 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA" # this 777 will be replaced by 700 at runtime (allows semi-arbitrary "--user" values)
# Tue, 07 Mar 2017 23:54:01 GMT
VOLUME [/var/lib/postgresql/data]
# Tue, 21 Mar 2017 16:55:51 GMT
COPY file:eaca0a850cbcaa5c12dcc3641ccc20e204dc7bdc99f5489f34ab1483318257b8 in /usr/local/bin/ 
# Tue, 21 Mar 2017 16:55:52 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 21 Mar 2017 16:55:53 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 21 Mar 2017 16:55:54 GMT
EXPOSE 5432/tcp
# Tue, 21 Mar 2017 16:55:54 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:627beaf3eaaff1c0bc3311d60fb933c17ad04fe377e1043d9593646d8ae3bfe1`  
		Last Modified: Fri, 03 Mar 2017 20:34:41 GMT  
		Size: 1.9 MB (1905270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d555ba539f475d381bd03abd3e00bc4ca815118f0e3d65a679b7c63f1c78fd6`  
		Last Modified: Sat, 04 Mar 2017 05:36:11 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:908cab65d826e3e5528a77aa78dd4095dbfa401aabe7f96e5a9582be7afc2506`  
		Last Modified: Wed, 08 Mar 2017 00:01:58 GMT  
		Size: 11.1 MB (11142443 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98467d97f26c50371afa1081247ce58b5537819982efd768c3f7489123bb6706`  
		Last Modified: Wed, 08 Mar 2017 00:01:52 GMT  
		Size: 6.4 KB (6441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aeab08d17c64c29309ec77d9559ff3d3209942c67683a915641178f1a87216c1`  
		Last Modified: Wed, 08 Mar 2017 00:01:52 GMT  
		Size: 145.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc12f9a571d32c40fc6da9a7279f40efd2b24241be47ff33c3f79b89e75f964d`  
		Last Modified: Wed, 08 Mar 2017 00:01:52 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c174711e87d6783c3a81939ffcaba15d0fdd7fffed30f02ebc6d7ea2284a74e3`  
		Last Modified: Tue, 21 Mar 2017 17:08:22 GMT  
		Size: 1.8 KB (1797 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4610e7f6105b6026448ab8f196e3bfa16285cf79fd34952b1ee73dd7cc58c48b`  
		Last Modified: Tue, 21 Mar 2017 17:08:22 GMT  
		Size: 119.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
