<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `mariadb`

-	[`mariadb:10.1.17`](#mariadb10117)
-	[`mariadb:10.1`](#mariadb101)
-	[`mariadb:10`](#mariadb10)
-	[`mariadb:latest`](#mariadblatest)
-	[`mariadb:10.0.27`](#mariadb10027)
-	[`mariadb:10.0`](#mariadb100)
-	[`mariadb:5.5.52`](#mariadb5552)
-	[`mariadb:5.5`](#mariadb55)
-	[`mariadb:5`](#mariadb5)

## `mariadb:10.1.17`

```console
$ docker pull mariadb@sha256:01f54bf28af01583b669f58e07e403ed995af4dc8697305da501db5459c22b3d
```

-	Platforms:
	-	linux; amd64

### `mariadb:10.1.17` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **131.0 MB (131001887 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7e149af02fc00bfb68387512b324d02d496b0fee6258095723f2e6045946d652`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 30 Aug 2016 21:00:51 GMT
ADD file:f2453b914e7e026efd39c6321c7b14509b6d09dd3cf5567a8f6bd38466e06954 in / 
# Tue, 30 Aug 2016 21:00:52 GMT
CMD ["/bin/bash"]
# Tue, 30 Aug 2016 21:51:23 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Tue, 30 Aug 2016 21:51:23 GMT
ENV GOSU_VERSION=1.7
# Tue, 30 Aug 2016 21:51:40 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 30 Aug 2016 21:51:41 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 30 Aug 2016 21:51:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 21:51:55 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	&& apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A
# Tue, 30 Aug 2016 21:51:56 GMT
RUN echo "deb https://repo.percona.com/apt jessie main" > /etc/apt/sources.list.d/percona.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona
# Tue, 30 Aug 2016 21:51:56 GMT
ENV MARIADB_MAJOR=10.1
# Wed, 31 Aug 2016 17:34:28 GMT
ENV MARIADB_VERSION=10.1.17+maria-1~jessie
# Wed, 31 Aug 2016 17:34:29 GMT
RUN echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/debian jessie main" > /etc/apt/sources.list.d/mariadb.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Wed, 31 Aug 2016 17:35:18 GMT
RUN { 		echo mariadb-server-$MARIADB_MAJOR mysql-server/root_password password 'unused'; 		echo mariadb-server-$MARIADB_MAJOR mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		mariadb-server=$MARIADB_VERSION 		percona-xtrabackup 		socat 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Wed, 31 Aug 2016 17:35:19 GMT
RUN sed -Ei 's/^(bind-address|log)/#&/' /etc/mysql/my.cnf 	&& echo 'skip-host-cache\nskip-name-resolve' | awk '{ print } $1 == "[mysqld]" && c == 0 { c = 1; system("cat") }' /etc/mysql/my.cnf > /tmp/my.cnf 	&& mv /tmp/my.cnf /etc/mysql/my.cnf
# Wed, 31 Aug 2016 17:35:19 GMT
VOLUME [/var/lib/mysql]
# Wed, 31 Aug 2016 17:35:20 GMT
COPY file:3d6c735eabd780a3659135a57698f5a17ff1f72725728f21cf72250880e02926 in /usr/local/bin/ 
# Wed, 31 Aug 2016 17:35:21 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 31 Aug 2016 17:35:21 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 31 Aug 2016 17:35:22 GMT
EXPOSE 3306/tcp
# Wed, 31 Aug 2016 17:35:22 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:8ad8b3f87b378cfae583fef34e47a3c9203847d779961b7351cbf786af0bc09f`  
		Last Modified: Tue, 30 Aug 2016 21:02:02 GMT  
		Size: 51.4 MB (51367268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a2674eb51d8d4cf751a8a503194a6e001f2d201f69f1ca32438cd97413c89e9`  
		Last Modified: Wed, 31 Aug 2016 17:37:41 GMT  
		Size: 2.0 KB (2038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b839515314a78f2a85df6fbfe551f2b5df5aaeecf6b2fea7cc857777da500406`  
		Last Modified: Wed, 31 Aug 2016 17:37:41 GMT  
		Size: 1.2 MB (1216673 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b8e3100ab50997db0bcc8b809336647474b52d69758af3db3b34ddfa15b5ddd`  
		Last Modified: Wed, 31 Aug 2016 17:37:38 GMT  
		Size: 113.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:826258f20316683fb2d32d0a4edfa123ac1ca154c396edb9bb548f3e3e6cd97a`  
		Last Modified: Wed, 31 Aug 2016 17:37:40 GMT  
		Size: 6.5 MB (6463243 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:635e94530d8c9848b08fe4291ed02c01e63ea5f8721bc843838919ae625f06e9`  
		Last Modified: Wed, 31 Aug 2016 17:37:38 GMT  
		Size: 17.8 KB (17821 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ae77f32ae3a086127c914ce8936fd3f556eb14f64604048d4d9e26f3b99effc`  
		Last Modified: Wed, 31 Aug 2016 17:37:36 GMT  
		Size: 313.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18efeb928b0ea5fc14406783905ae85779943586da7c1a986b3ccd6e403ffdd8`  
		Last Modified: Wed, 31 Aug 2016 17:37:34 GMT  
		Size: 318.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e67a6b1d479584eb1565d7802b12e61ff545f03c92c67514d788327e5a2b5996`  
		Last Modified: Wed, 31 Aug 2016 17:38:08 GMT  
		Size: 71.9 MB (71929669 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0badc6f20aeb6e7fb5b714508116eeef8bfe4181c016027bc1b3b13d5b47290`  
		Last Modified: Wed, 31 Aug 2016 17:37:34 GMT  
		Size: 2.6 KB (2645 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bd0cf53ef2fcfc0100e34ab2820c2fdfc101901a9fa463cc86d114b4c6711cd`  
		Last Modified: Wed, 31 Aug 2016 17:37:35 GMT  
		Size: 1.7 KB (1667 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d006f818a28bd8d61c6fe40a1699129d0709ce44c408553481ce939c27370a0`  
		Last Modified: Wed, 31 Aug 2016 17:37:35 GMT  
		Size: 119.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:10.1`

```console
$ docker pull mariadb@sha256:01f54bf28af01583b669f58e07e403ed995af4dc8697305da501db5459c22b3d
```

-	Platforms:
	-	linux; amd64

### `mariadb:10.1` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **131.0 MB (131001887 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7e149af02fc00bfb68387512b324d02d496b0fee6258095723f2e6045946d652`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 30 Aug 2016 21:00:51 GMT
ADD file:f2453b914e7e026efd39c6321c7b14509b6d09dd3cf5567a8f6bd38466e06954 in / 
# Tue, 30 Aug 2016 21:00:52 GMT
CMD ["/bin/bash"]
# Tue, 30 Aug 2016 21:51:23 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Tue, 30 Aug 2016 21:51:23 GMT
ENV GOSU_VERSION=1.7
# Tue, 30 Aug 2016 21:51:40 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 30 Aug 2016 21:51:41 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 30 Aug 2016 21:51:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 21:51:55 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	&& apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A
# Tue, 30 Aug 2016 21:51:56 GMT
RUN echo "deb https://repo.percona.com/apt jessie main" > /etc/apt/sources.list.d/percona.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona
# Tue, 30 Aug 2016 21:51:56 GMT
ENV MARIADB_MAJOR=10.1
# Wed, 31 Aug 2016 17:34:28 GMT
ENV MARIADB_VERSION=10.1.17+maria-1~jessie
# Wed, 31 Aug 2016 17:34:29 GMT
RUN echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/debian jessie main" > /etc/apt/sources.list.d/mariadb.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Wed, 31 Aug 2016 17:35:18 GMT
RUN { 		echo mariadb-server-$MARIADB_MAJOR mysql-server/root_password password 'unused'; 		echo mariadb-server-$MARIADB_MAJOR mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		mariadb-server=$MARIADB_VERSION 		percona-xtrabackup 		socat 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Wed, 31 Aug 2016 17:35:19 GMT
RUN sed -Ei 's/^(bind-address|log)/#&/' /etc/mysql/my.cnf 	&& echo 'skip-host-cache\nskip-name-resolve' | awk '{ print } $1 == "[mysqld]" && c == 0 { c = 1; system("cat") }' /etc/mysql/my.cnf > /tmp/my.cnf 	&& mv /tmp/my.cnf /etc/mysql/my.cnf
# Wed, 31 Aug 2016 17:35:19 GMT
VOLUME [/var/lib/mysql]
# Wed, 31 Aug 2016 17:35:20 GMT
COPY file:3d6c735eabd780a3659135a57698f5a17ff1f72725728f21cf72250880e02926 in /usr/local/bin/ 
# Wed, 31 Aug 2016 17:35:21 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 31 Aug 2016 17:35:21 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 31 Aug 2016 17:35:22 GMT
EXPOSE 3306/tcp
# Wed, 31 Aug 2016 17:35:22 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:8ad8b3f87b378cfae583fef34e47a3c9203847d779961b7351cbf786af0bc09f`  
		Last Modified: Tue, 30 Aug 2016 21:02:02 GMT  
		Size: 51.4 MB (51367268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a2674eb51d8d4cf751a8a503194a6e001f2d201f69f1ca32438cd97413c89e9`  
		Last Modified: Wed, 31 Aug 2016 17:37:41 GMT  
		Size: 2.0 KB (2038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b839515314a78f2a85df6fbfe551f2b5df5aaeecf6b2fea7cc857777da500406`  
		Last Modified: Wed, 31 Aug 2016 17:37:41 GMT  
		Size: 1.2 MB (1216673 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b8e3100ab50997db0bcc8b809336647474b52d69758af3db3b34ddfa15b5ddd`  
		Last Modified: Wed, 31 Aug 2016 17:37:38 GMT  
		Size: 113.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:826258f20316683fb2d32d0a4edfa123ac1ca154c396edb9bb548f3e3e6cd97a`  
		Last Modified: Wed, 31 Aug 2016 17:37:40 GMT  
		Size: 6.5 MB (6463243 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:635e94530d8c9848b08fe4291ed02c01e63ea5f8721bc843838919ae625f06e9`  
		Last Modified: Wed, 31 Aug 2016 17:37:38 GMT  
		Size: 17.8 KB (17821 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ae77f32ae3a086127c914ce8936fd3f556eb14f64604048d4d9e26f3b99effc`  
		Last Modified: Wed, 31 Aug 2016 17:37:36 GMT  
		Size: 313.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18efeb928b0ea5fc14406783905ae85779943586da7c1a986b3ccd6e403ffdd8`  
		Last Modified: Wed, 31 Aug 2016 17:37:34 GMT  
		Size: 318.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e67a6b1d479584eb1565d7802b12e61ff545f03c92c67514d788327e5a2b5996`  
		Last Modified: Wed, 31 Aug 2016 17:38:08 GMT  
		Size: 71.9 MB (71929669 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0badc6f20aeb6e7fb5b714508116eeef8bfe4181c016027bc1b3b13d5b47290`  
		Last Modified: Wed, 31 Aug 2016 17:37:34 GMT  
		Size: 2.6 KB (2645 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bd0cf53ef2fcfc0100e34ab2820c2fdfc101901a9fa463cc86d114b4c6711cd`  
		Last Modified: Wed, 31 Aug 2016 17:37:35 GMT  
		Size: 1.7 KB (1667 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d006f818a28bd8d61c6fe40a1699129d0709ce44c408553481ce939c27370a0`  
		Last Modified: Wed, 31 Aug 2016 17:37:35 GMT  
		Size: 119.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:10`

```console
$ docker pull mariadb@sha256:01f54bf28af01583b669f58e07e403ed995af4dc8697305da501db5459c22b3d
```

-	Platforms:
	-	linux; amd64

### `mariadb:10` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **131.0 MB (131001887 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7e149af02fc00bfb68387512b324d02d496b0fee6258095723f2e6045946d652`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 30 Aug 2016 21:00:51 GMT
ADD file:f2453b914e7e026efd39c6321c7b14509b6d09dd3cf5567a8f6bd38466e06954 in / 
# Tue, 30 Aug 2016 21:00:52 GMT
CMD ["/bin/bash"]
# Tue, 30 Aug 2016 21:51:23 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Tue, 30 Aug 2016 21:51:23 GMT
ENV GOSU_VERSION=1.7
# Tue, 30 Aug 2016 21:51:40 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 30 Aug 2016 21:51:41 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 30 Aug 2016 21:51:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 21:51:55 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	&& apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A
# Tue, 30 Aug 2016 21:51:56 GMT
RUN echo "deb https://repo.percona.com/apt jessie main" > /etc/apt/sources.list.d/percona.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona
# Tue, 30 Aug 2016 21:51:56 GMT
ENV MARIADB_MAJOR=10.1
# Wed, 31 Aug 2016 17:34:28 GMT
ENV MARIADB_VERSION=10.1.17+maria-1~jessie
# Wed, 31 Aug 2016 17:34:29 GMT
RUN echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/debian jessie main" > /etc/apt/sources.list.d/mariadb.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Wed, 31 Aug 2016 17:35:18 GMT
RUN { 		echo mariadb-server-$MARIADB_MAJOR mysql-server/root_password password 'unused'; 		echo mariadb-server-$MARIADB_MAJOR mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		mariadb-server=$MARIADB_VERSION 		percona-xtrabackup 		socat 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Wed, 31 Aug 2016 17:35:19 GMT
RUN sed -Ei 's/^(bind-address|log)/#&/' /etc/mysql/my.cnf 	&& echo 'skip-host-cache\nskip-name-resolve' | awk '{ print } $1 == "[mysqld]" && c == 0 { c = 1; system("cat") }' /etc/mysql/my.cnf > /tmp/my.cnf 	&& mv /tmp/my.cnf /etc/mysql/my.cnf
# Wed, 31 Aug 2016 17:35:19 GMT
VOLUME [/var/lib/mysql]
# Wed, 31 Aug 2016 17:35:20 GMT
COPY file:3d6c735eabd780a3659135a57698f5a17ff1f72725728f21cf72250880e02926 in /usr/local/bin/ 
# Wed, 31 Aug 2016 17:35:21 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 31 Aug 2016 17:35:21 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 31 Aug 2016 17:35:22 GMT
EXPOSE 3306/tcp
# Wed, 31 Aug 2016 17:35:22 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:8ad8b3f87b378cfae583fef34e47a3c9203847d779961b7351cbf786af0bc09f`  
		Last Modified: Tue, 30 Aug 2016 21:02:02 GMT  
		Size: 51.4 MB (51367268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a2674eb51d8d4cf751a8a503194a6e001f2d201f69f1ca32438cd97413c89e9`  
		Last Modified: Wed, 31 Aug 2016 17:37:41 GMT  
		Size: 2.0 KB (2038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b839515314a78f2a85df6fbfe551f2b5df5aaeecf6b2fea7cc857777da500406`  
		Last Modified: Wed, 31 Aug 2016 17:37:41 GMT  
		Size: 1.2 MB (1216673 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b8e3100ab50997db0bcc8b809336647474b52d69758af3db3b34ddfa15b5ddd`  
		Last Modified: Wed, 31 Aug 2016 17:37:38 GMT  
		Size: 113.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:826258f20316683fb2d32d0a4edfa123ac1ca154c396edb9bb548f3e3e6cd97a`  
		Last Modified: Wed, 31 Aug 2016 17:37:40 GMT  
		Size: 6.5 MB (6463243 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:635e94530d8c9848b08fe4291ed02c01e63ea5f8721bc843838919ae625f06e9`  
		Last Modified: Wed, 31 Aug 2016 17:37:38 GMT  
		Size: 17.8 KB (17821 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ae77f32ae3a086127c914ce8936fd3f556eb14f64604048d4d9e26f3b99effc`  
		Last Modified: Wed, 31 Aug 2016 17:37:36 GMT  
		Size: 313.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18efeb928b0ea5fc14406783905ae85779943586da7c1a986b3ccd6e403ffdd8`  
		Last Modified: Wed, 31 Aug 2016 17:37:34 GMT  
		Size: 318.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e67a6b1d479584eb1565d7802b12e61ff545f03c92c67514d788327e5a2b5996`  
		Last Modified: Wed, 31 Aug 2016 17:38:08 GMT  
		Size: 71.9 MB (71929669 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0badc6f20aeb6e7fb5b714508116eeef8bfe4181c016027bc1b3b13d5b47290`  
		Last Modified: Wed, 31 Aug 2016 17:37:34 GMT  
		Size: 2.6 KB (2645 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bd0cf53ef2fcfc0100e34ab2820c2fdfc101901a9fa463cc86d114b4c6711cd`  
		Last Modified: Wed, 31 Aug 2016 17:37:35 GMT  
		Size: 1.7 KB (1667 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d006f818a28bd8d61c6fe40a1699129d0709ce44c408553481ce939c27370a0`  
		Last Modified: Wed, 31 Aug 2016 17:37:35 GMT  
		Size: 119.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:latest`

```console
$ docker pull mariadb@sha256:01f54bf28af01583b669f58e07e403ed995af4dc8697305da501db5459c22b3d
```

-	Platforms:
	-	linux; amd64

### `mariadb:latest` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **131.0 MB (131001887 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7e149af02fc00bfb68387512b324d02d496b0fee6258095723f2e6045946d652`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 30 Aug 2016 21:00:51 GMT
ADD file:f2453b914e7e026efd39c6321c7b14509b6d09dd3cf5567a8f6bd38466e06954 in / 
# Tue, 30 Aug 2016 21:00:52 GMT
CMD ["/bin/bash"]
# Tue, 30 Aug 2016 21:51:23 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Tue, 30 Aug 2016 21:51:23 GMT
ENV GOSU_VERSION=1.7
# Tue, 30 Aug 2016 21:51:40 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 30 Aug 2016 21:51:41 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 30 Aug 2016 21:51:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 21:51:55 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	&& apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A
# Tue, 30 Aug 2016 21:51:56 GMT
RUN echo "deb https://repo.percona.com/apt jessie main" > /etc/apt/sources.list.d/percona.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona
# Tue, 30 Aug 2016 21:51:56 GMT
ENV MARIADB_MAJOR=10.1
# Wed, 31 Aug 2016 17:34:28 GMT
ENV MARIADB_VERSION=10.1.17+maria-1~jessie
# Wed, 31 Aug 2016 17:34:29 GMT
RUN echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/debian jessie main" > /etc/apt/sources.list.d/mariadb.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Wed, 31 Aug 2016 17:35:18 GMT
RUN { 		echo mariadb-server-$MARIADB_MAJOR mysql-server/root_password password 'unused'; 		echo mariadb-server-$MARIADB_MAJOR mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		mariadb-server=$MARIADB_VERSION 		percona-xtrabackup 		socat 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Wed, 31 Aug 2016 17:35:19 GMT
RUN sed -Ei 's/^(bind-address|log)/#&/' /etc/mysql/my.cnf 	&& echo 'skip-host-cache\nskip-name-resolve' | awk '{ print } $1 == "[mysqld]" && c == 0 { c = 1; system("cat") }' /etc/mysql/my.cnf > /tmp/my.cnf 	&& mv /tmp/my.cnf /etc/mysql/my.cnf
# Wed, 31 Aug 2016 17:35:19 GMT
VOLUME [/var/lib/mysql]
# Wed, 31 Aug 2016 17:35:20 GMT
COPY file:3d6c735eabd780a3659135a57698f5a17ff1f72725728f21cf72250880e02926 in /usr/local/bin/ 
# Wed, 31 Aug 2016 17:35:21 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 31 Aug 2016 17:35:21 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 31 Aug 2016 17:35:22 GMT
EXPOSE 3306/tcp
# Wed, 31 Aug 2016 17:35:22 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:8ad8b3f87b378cfae583fef34e47a3c9203847d779961b7351cbf786af0bc09f`  
		Last Modified: Tue, 30 Aug 2016 21:02:02 GMT  
		Size: 51.4 MB (51367268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a2674eb51d8d4cf751a8a503194a6e001f2d201f69f1ca32438cd97413c89e9`  
		Last Modified: Wed, 31 Aug 2016 17:37:41 GMT  
		Size: 2.0 KB (2038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b839515314a78f2a85df6fbfe551f2b5df5aaeecf6b2fea7cc857777da500406`  
		Last Modified: Wed, 31 Aug 2016 17:37:41 GMT  
		Size: 1.2 MB (1216673 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b8e3100ab50997db0bcc8b809336647474b52d69758af3db3b34ddfa15b5ddd`  
		Last Modified: Wed, 31 Aug 2016 17:37:38 GMT  
		Size: 113.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:826258f20316683fb2d32d0a4edfa123ac1ca154c396edb9bb548f3e3e6cd97a`  
		Last Modified: Wed, 31 Aug 2016 17:37:40 GMT  
		Size: 6.5 MB (6463243 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:635e94530d8c9848b08fe4291ed02c01e63ea5f8721bc843838919ae625f06e9`  
		Last Modified: Wed, 31 Aug 2016 17:37:38 GMT  
		Size: 17.8 KB (17821 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ae77f32ae3a086127c914ce8936fd3f556eb14f64604048d4d9e26f3b99effc`  
		Last Modified: Wed, 31 Aug 2016 17:37:36 GMT  
		Size: 313.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18efeb928b0ea5fc14406783905ae85779943586da7c1a986b3ccd6e403ffdd8`  
		Last Modified: Wed, 31 Aug 2016 17:37:34 GMT  
		Size: 318.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e67a6b1d479584eb1565d7802b12e61ff545f03c92c67514d788327e5a2b5996`  
		Last Modified: Wed, 31 Aug 2016 17:38:08 GMT  
		Size: 71.9 MB (71929669 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0badc6f20aeb6e7fb5b714508116eeef8bfe4181c016027bc1b3b13d5b47290`  
		Last Modified: Wed, 31 Aug 2016 17:37:34 GMT  
		Size: 2.6 KB (2645 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bd0cf53ef2fcfc0100e34ab2820c2fdfc101901a9fa463cc86d114b4c6711cd`  
		Last Modified: Wed, 31 Aug 2016 17:37:35 GMT  
		Size: 1.7 KB (1667 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d006f818a28bd8d61c6fe40a1699129d0709ce44c408553481ce939c27370a0`  
		Last Modified: Wed, 31 Aug 2016 17:37:35 GMT  
		Size: 119.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:10.0.27`

```console
$ docker pull mariadb@sha256:f82ac6fbd5cfc6c4090313b715b68617f9d855d51012eadd455dbe3bc53ef7cf
```

-	Platforms:
	-	linux; amd64

### `mariadb:10.0.27` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **117.8 MB (117754728 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:57004b10c94ca2f639eb672ad78d7c2c61205733b44ff625584a56451155094a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 30 Aug 2016 21:00:51 GMT
ADD file:f2453b914e7e026efd39c6321c7b14509b6d09dd3cf5567a8f6bd38466e06954 in / 
# Tue, 30 Aug 2016 21:00:52 GMT
CMD ["/bin/bash"]
# Tue, 30 Aug 2016 21:51:23 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Tue, 30 Aug 2016 21:51:23 GMT
ENV GOSU_VERSION=1.7
# Tue, 30 Aug 2016 21:51:40 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 30 Aug 2016 21:51:41 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 30 Aug 2016 21:51:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 21:51:55 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	&& apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A
# Tue, 30 Aug 2016 21:51:56 GMT
RUN echo "deb https://repo.percona.com/apt jessie main" > /etc/apt/sources.list.d/percona.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona
# Wed, 31 Aug 2016 17:35:23 GMT
ENV MARIADB_MAJOR=10.0
# Wed, 31 Aug 2016 17:35:23 GMT
ENV MARIADB_VERSION=10.0.27+maria-1~jessie
# Wed, 31 Aug 2016 17:35:24 GMT
RUN echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/debian jessie main" > /etc/apt/sources.list.d/mariadb.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Wed, 31 Aug 2016 17:36:11 GMT
RUN { 		echo mariadb-server-$MARIADB_MAJOR mysql-server/root_password password 'unused'; 		echo mariadb-server-$MARIADB_MAJOR mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		mariadb-server=$MARIADB_VERSION 		percona-xtrabackup 		socat 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Wed, 31 Aug 2016 17:36:12 GMT
RUN sed -Ei 's/^(bind-address|log)/#&/' /etc/mysql/my.cnf 	&& echo 'skip-host-cache\nskip-name-resolve' | awk '{ print } $1 == "[mysqld]" && c == 0 { c = 1; system("cat") }' /etc/mysql/my.cnf > /tmp/my.cnf 	&& mv /tmp/my.cnf /etc/mysql/my.cnf
# Wed, 31 Aug 2016 17:36:13 GMT
VOLUME [/var/lib/mysql]
# Wed, 31 Aug 2016 17:36:13 GMT
COPY file:3d6c735eabd780a3659135a57698f5a17ff1f72725728f21cf72250880e02926 in /usr/local/bin/ 
# Wed, 31 Aug 2016 17:36:14 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 31 Aug 2016 17:36:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 31 Aug 2016 17:36:15 GMT
EXPOSE 3306/tcp
# Wed, 31 Aug 2016 17:36:16 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:8ad8b3f87b378cfae583fef34e47a3c9203847d779961b7351cbf786af0bc09f`  
		Last Modified: Tue, 30 Aug 2016 21:02:02 GMT  
		Size: 51.4 MB (51367268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a2674eb51d8d4cf751a8a503194a6e001f2d201f69f1ca32438cd97413c89e9`  
		Last Modified: Wed, 31 Aug 2016 17:37:41 GMT  
		Size: 2.0 KB (2038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b839515314a78f2a85df6fbfe551f2b5df5aaeecf6b2fea7cc857777da500406`  
		Last Modified: Wed, 31 Aug 2016 17:37:41 GMT  
		Size: 1.2 MB (1216673 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b8e3100ab50997db0bcc8b809336647474b52d69758af3db3b34ddfa15b5ddd`  
		Last Modified: Wed, 31 Aug 2016 17:37:38 GMT  
		Size: 113.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:826258f20316683fb2d32d0a4edfa123ac1ca154c396edb9bb548f3e3e6cd97a`  
		Last Modified: Wed, 31 Aug 2016 17:37:40 GMT  
		Size: 6.5 MB (6463243 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:635e94530d8c9848b08fe4291ed02c01e63ea5f8721bc843838919ae625f06e9`  
		Last Modified: Wed, 31 Aug 2016 17:37:38 GMT  
		Size: 17.8 KB (17821 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ae77f32ae3a086127c914ce8936fd3f556eb14f64604048d4d9e26f3b99effc`  
		Last Modified: Wed, 31 Aug 2016 17:37:36 GMT  
		Size: 313.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f58a9cfeea265461654d4a98572690daf1993d672b765a152632f620cbf25638`  
		Last Modified: Wed, 31 Aug 2016 17:38:50 GMT  
		Size: 320.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3faaf0027fdc66a1a726d1e162bd0d194b51a4943dd1a828c09eec105ed94515`  
		Last Modified: Wed, 31 Aug 2016 17:39:09 GMT  
		Size: 58.7 MB (58682663 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afe0e397a417c2a6448e4774083835a2fcae1ed850a8e9c4d4a4f9eede6f9fca`  
		Last Modified: Wed, 31 Aug 2016 17:38:46 GMT  
		Size: 2.5 KB (2492 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90b33b10c82fc88c637a177af3050ea81beb6b4c910581aedca60e24c61930b7`  
		Last Modified: Wed, 31 Aug 2016 17:38:46 GMT  
		Size: 1.7 KB (1666 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c91da5d585e851595ef424a309f6d334b24cc99ba8daea1be65c7056e3df49d`  
		Last Modified: Wed, 31 Aug 2016 17:38:47 GMT  
		Size: 118.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:10.0`

```console
$ docker pull mariadb@sha256:f82ac6fbd5cfc6c4090313b715b68617f9d855d51012eadd455dbe3bc53ef7cf
```

-	Platforms:
	-	linux; amd64

### `mariadb:10.0` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **117.8 MB (117754728 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:57004b10c94ca2f639eb672ad78d7c2c61205733b44ff625584a56451155094a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 30 Aug 2016 21:00:51 GMT
ADD file:f2453b914e7e026efd39c6321c7b14509b6d09dd3cf5567a8f6bd38466e06954 in / 
# Tue, 30 Aug 2016 21:00:52 GMT
CMD ["/bin/bash"]
# Tue, 30 Aug 2016 21:51:23 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Tue, 30 Aug 2016 21:51:23 GMT
ENV GOSU_VERSION=1.7
# Tue, 30 Aug 2016 21:51:40 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 30 Aug 2016 21:51:41 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 30 Aug 2016 21:51:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 21:51:55 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	&& apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A
# Tue, 30 Aug 2016 21:51:56 GMT
RUN echo "deb https://repo.percona.com/apt jessie main" > /etc/apt/sources.list.d/percona.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona
# Wed, 31 Aug 2016 17:35:23 GMT
ENV MARIADB_MAJOR=10.0
# Wed, 31 Aug 2016 17:35:23 GMT
ENV MARIADB_VERSION=10.0.27+maria-1~jessie
# Wed, 31 Aug 2016 17:35:24 GMT
RUN echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/debian jessie main" > /etc/apt/sources.list.d/mariadb.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Wed, 31 Aug 2016 17:36:11 GMT
RUN { 		echo mariadb-server-$MARIADB_MAJOR mysql-server/root_password password 'unused'; 		echo mariadb-server-$MARIADB_MAJOR mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		mariadb-server=$MARIADB_VERSION 		percona-xtrabackup 		socat 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Wed, 31 Aug 2016 17:36:12 GMT
RUN sed -Ei 's/^(bind-address|log)/#&/' /etc/mysql/my.cnf 	&& echo 'skip-host-cache\nskip-name-resolve' | awk '{ print } $1 == "[mysqld]" && c == 0 { c = 1; system("cat") }' /etc/mysql/my.cnf > /tmp/my.cnf 	&& mv /tmp/my.cnf /etc/mysql/my.cnf
# Wed, 31 Aug 2016 17:36:13 GMT
VOLUME [/var/lib/mysql]
# Wed, 31 Aug 2016 17:36:13 GMT
COPY file:3d6c735eabd780a3659135a57698f5a17ff1f72725728f21cf72250880e02926 in /usr/local/bin/ 
# Wed, 31 Aug 2016 17:36:14 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 31 Aug 2016 17:36:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 31 Aug 2016 17:36:15 GMT
EXPOSE 3306/tcp
# Wed, 31 Aug 2016 17:36:16 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:8ad8b3f87b378cfae583fef34e47a3c9203847d779961b7351cbf786af0bc09f`  
		Last Modified: Tue, 30 Aug 2016 21:02:02 GMT  
		Size: 51.4 MB (51367268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a2674eb51d8d4cf751a8a503194a6e001f2d201f69f1ca32438cd97413c89e9`  
		Last Modified: Wed, 31 Aug 2016 17:37:41 GMT  
		Size: 2.0 KB (2038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b839515314a78f2a85df6fbfe551f2b5df5aaeecf6b2fea7cc857777da500406`  
		Last Modified: Wed, 31 Aug 2016 17:37:41 GMT  
		Size: 1.2 MB (1216673 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b8e3100ab50997db0bcc8b809336647474b52d69758af3db3b34ddfa15b5ddd`  
		Last Modified: Wed, 31 Aug 2016 17:37:38 GMT  
		Size: 113.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:826258f20316683fb2d32d0a4edfa123ac1ca154c396edb9bb548f3e3e6cd97a`  
		Last Modified: Wed, 31 Aug 2016 17:37:40 GMT  
		Size: 6.5 MB (6463243 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:635e94530d8c9848b08fe4291ed02c01e63ea5f8721bc843838919ae625f06e9`  
		Last Modified: Wed, 31 Aug 2016 17:37:38 GMT  
		Size: 17.8 KB (17821 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ae77f32ae3a086127c914ce8936fd3f556eb14f64604048d4d9e26f3b99effc`  
		Last Modified: Wed, 31 Aug 2016 17:37:36 GMT  
		Size: 313.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f58a9cfeea265461654d4a98572690daf1993d672b765a152632f620cbf25638`  
		Last Modified: Wed, 31 Aug 2016 17:38:50 GMT  
		Size: 320.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3faaf0027fdc66a1a726d1e162bd0d194b51a4943dd1a828c09eec105ed94515`  
		Last Modified: Wed, 31 Aug 2016 17:39:09 GMT  
		Size: 58.7 MB (58682663 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afe0e397a417c2a6448e4774083835a2fcae1ed850a8e9c4d4a4f9eede6f9fca`  
		Last Modified: Wed, 31 Aug 2016 17:38:46 GMT  
		Size: 2.5 KB (2492 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90b33b10c82fc88c637a177af3050ea81beb6b4c910581aedca60e24c61930b7`  
		Last Modified: Wed, 31 Aug 2016 17:38:46 GMT  
		Size: 1.7 KB (1666 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c91da5d585e851595ef424a309f6d334b24cc99ba8daea1be65c7056e3df49d`  
		Last Modified: Wed, 31 Aug 2016 17:38:47 GMT  
		Size: 118.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:5.5.52`

```console
$ docker pull mariadb@sha256:049a737fb7cc16bfb94f814727269636906e63b5de5c62e469e7c3a5c293f36a
```

-	Platforms:
	-	linux; amd64

### `mariadb:5.5.52` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **95.8 MB (95840487 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:84ebbd7edc455aded17aae0bd5a3f7750edf6b56d10fc64a04cedf13b17e50ce`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 30 Aug 2016 21:01:38 GMT
ADD file:a97fbdda054eb7b7359279534d677dcaa33f0f9a0823cf8905c1e3d283c66893 in / 
# Tue, 30 Aug 2016 21:01:39 GMT
CMD ["/bin/bash"]
# Wed, 31 Aug 2016 17:36:17 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 31 Aug 2016 17:36:17 GMT
ENV GOSU_VERSION=1.7
# Wed, 31 Aug 2016 17:36:39 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 31 Aug 2016 17:36:40 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 31 Aug 2016 17:36:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Wed, 31 Aug 2016 17:36:58 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	&& apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A
# Wed, 31 Aug 2016 17:36:59 GMT
RUN echo "deb https://repo.percona.com/apt wheezy main" > /etc/apt/sources.list.d/percona.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona
# Wed, 31 Aug 2016 17:36:59 GMT
ENV MARIADB_MAJOR=5.5
# Fri, 16 Sep 2016 19:28:27 GMT
ENV MARIADB_VERSION=5.5.52+maria-1~wheezy
# Fri, 16 Sep 2016 19:28:28 GMT
RUN echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/debian wheezy main" > /etc/apt/sources.list.d/mariadb.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Fri, 16 Sep 2016 19:28:46 GMT
RUN { 		echo mariadb-server-$MARIADB_MAJOR mysql-server/root_password password 'unused'; 		echo mariadb-server-$MARIADB_MAJOR mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		mariadb-server=$MARIADB_VERSION 		percona-xtrabackup 		socat 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Fri, 16 Sep 2016 19:28:47 GMT
RUN sed -Ei 's/^(bind-address|log)/#&/' /etc/mysql/my.cnf 	&& echo 'skip-host-cache\nskip-name-resolve' | awk '{ print } $1 == "[mysqld]" && c == 0 { c = 1; system("cat") }' /etc/mysql/my.cnf > /tmp/my.cnf 	&& mv /tmp/my.cnf /etc/mysql/my.cnf
# Fri, 16 Sep 2016 19:28:47 GMT
VOLUME [/var/lib/mysql]
# Fri, 16 Sep 2016 19:28:48 GMT
COPY file:3d6c735eabd780a3659135a57698f5a17ff1f72725728f21cf72250880e02926 in /usr/local/bin/ 
# Fri, 16 Sep 2016 19:28:48 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 16 Sep 2016 19:28:49 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 16 Sep 2016 19:28:49 GMT
EXPOSE 3306/tcp
# Fri, 16 Sep 2016 19:28:49 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:046d0f015c61ca7eb317610240a3b1d9c1ba38e7295056ce4f03b964c523855b`  
		Last Modified: Tue, 30 Aug 2016 21:05:47 GMT  
		Size: 37.2 MB (37214590 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33cec173c1caca9ee5ee257e9bebe10cda728390d880a07016435359877a7974`  
		Last Modified: Wed, 31 Aug 2016 17:39:43 GMT  
		Size: 1.7 KB (1692 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c6ff95972406365032b7e195e9a2ca042e54cd2d4c24a080767f17e82ae6106`  
		Last Modified: Wed, 31 Aug 2016 17:39:41 GMT  
		Size: 1.2 MB (1171917 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5d4adf0d564805e596edd0e3954fcb1b53b527651a9298c4c6e95eb6e355f16`  
		Last Modified: Wed, 31 Aug 2016 17:39:39 GMT  
		Size: 113.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:618e87729fe49d03313ae92e41b6e3b781656846d00cc3ea893d943c2759600c`  
		Last Modified: Wed, 31 Aug 2016 17:39:42 GMT  
		Size: 5.8 MB (5790563 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0bba5c7996559f9164a77cad0c09d9ffd97ddf9fa18d4412c8411abca2d1f83`  
		Last Modified: Wed, 31 Aug 2016 17:39:36 GMT  
		Size: 59.9 KB (59937 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abf605c24e32023c207ad127202a9a49db8cafac7b0bd0b7d6775392a977b2f0`  
		Last Modified: Wed, 31 Aug 2016 17:39:36 GMT  
		Size: 318.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:573d582f4e3c5906db48dd8359ba821209f87daa5bf82dd602e101be155d0a91`  
		Last Modified: Fri, 16 Sep 2016 19:29:42 GMT  
		Size: 324.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2224b498a1d7f334deef322eccd92e58fd4f002eb2e1c07cdf0a7241240782ea`  
		Last Modified: Fri, 16 Sep 2016 19:29:57 GMT  
		Size: 51.6 MB (51596759 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37039457ff4d40282af6e5b3d4890fba0c40365084eb5711007e4f8764e901b8`  
		Last Modified: Fri, 16 Sep 2016 19:29:44 GMT  
		Size: 2.5 KB (2490 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0ca367eeba0c07b97721bd7a9d386e49357818030de046dc524e84a2603aaf3`  
		Last Modified: Fri, 16 Sep 2016 19:29:42 GMT  
		Size: 1.7 KB (1665 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a479d24f71a5afde61f2d76ee81a228368d7352873a5257e83695dbc16ece7f`  
		Last Modified: Fri, 16 Sep 2016 19:29:43 GMT  
		Size: 119.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:5.5`

```console
$ docker pull mariadb@sha256:049a737fb7cc16bfb94f814727269636906e63b5de5c62e469e7c3a5c293f36a
```

-	Platforms:
	-	linux; amd64

### `mariadb:5.5` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **95.8 MB (95840487 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:84ebbd7edc455aded17aae0bd5a3f7750edf6b56d10fc64a04cedf13b17e50ce`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 30 Aug 2016 21:01:38 GMT
ADD file:a97fbdda054eb7b7359279534d677dcaa33f0f9a0823cf8905c1e3d283c66893 in / 
# Tue, 30 Aug 2016 21:01:39 GMT
CMD ["/bin/bash"]
# Wed, 31 Aug 2016 17:36:17 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 31 Aug 2016 17:36:17 GMT
ENV GOSU_VERSION=1.7
# Wed, 31 Aug 2016 17:36:39 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 31 Aug 2016 17:36:40 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 31 Aug 2016 17:36:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Wed, 31 Aug 2016 17:36:58 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	&& apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A
# Wed, 31 Aug 2016 17:36:59 GMT
RUN echo "deb https://repo.percona.com/apt wheezy main" > /etc/apt/sources.list.d/percona.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona
# Wed, 31 Aug 2016 17:36:59 GMT
ENV MARIADB_MAJOR=5.5
# Fri, 16 Sep 2016 19:28:27 GMT
ENV MARIADB_VERSION=5.5.52+maria-1~wheezy
# Fri, 16 Sep 2016 19:28:28 GMT
RUN echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/debian wheezy main" > /etc/apt/sources.list.d/mariadb.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Fri, 16 Sep 2016 19:28:46 GMT
RUN { 		echo mariadb-server-$MARIADB_MAJOR mysql-server/root_password password 'unused'; 		echo mariadb-server-$MARIADB_MAJOR mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		mariadb-server=$MARIADB_VERSION 		percona-xtrabackup 		socat 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Fri, 16 Sep 2016 19:28:47 GMT
RUN sed -Ei 's/^(bind-address|log)/#&/' /etc/mysql/my.cnf 	&& echo 'skip-host-cache\nskip-name-resolve' | awk '{ print } $1 == "[mysqld]" && c == 0 { c = 1; system("cat") }' /etc/mysql/my.cnf > /tmp/my.cnf 	&& mv /tmp/my.cnf /etc/mysql/my.cnf
# Fri, 16 Sep 2016 19:28:47 GMT
VOLUME [/var/lib/mysql]
# Fri, 16 Sep 2016 19:28:48 GMT
COPY file:3d6c735eabd780a3659135a57698f5a17ff1f72725728f21cf72250880e02926 in /usr/local/bin/ 
# Fri, 16 Sep 2016 19:28:48 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 16 Sep 2016 19:28:49 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 16 Sep 2016 19:28:49 GMT
EXPOSE 3306/tcp
# Fri, 16 Sep 2016 19:28:49 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:046d0f015c61ca7eb317610240a3b1d9c1ba38e7295056ce4f03b964c523855b`  
		Last Modified: Tue, 30 Aug 2016 21:05:47 GMT  
		Size: 37.2 MB (37214590 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33cec173c1caca9ee5ee257e9bebe10cda728390d880a07016435359877a7974`  
		Last Modified: Wed, 31 Aug 2016 17:39:43 GMT  
		Size: 1.7 KB (1692 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c6ff95972406365032b7e195e9a2ca042e54cd2d4c24a080767f17e82ae6106`  
		Last Modified: Wed, 31 Aug 2016 17:39:41 GMT  
		Size: 1.2 MB (1171917 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5d4adf0d564805e596edd0e3954fcb1b53b527651a9298c4c6e95eb6e355f16`  
		Last Modified: Wed, 31 Aug 2016 17:39:39 GMT  
		Size: 113.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:618e87729fe49d03313ae92e41b6e3b781656846d00cc3ea893d943c2759600c`  
		Last Modified: Wed, 31 Aug 2016 17:39:42 GMT  
		Size: 5.8 MB (5790563 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0bba5c7996559f9164a77cad0c09d9ffd97ddf9fa18d4412c8411abca2d1f83`  
		Last Modified: Wed, 31 Aug 2016 17:39:36 GMT  
		Size: 59.9 KB (59937 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abf605c24e32023c207ad127202a9a49db8cafac7b0bd0b7d6775392a977b2f0`  
		Last Modified: Wed, 31 Aug 2016 17:39:36 GMT  
		Size: 318.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:573d582f4e3c5906db48dd8359ba821209f87daa5bf82dd602e101be155d0a91`  
		Last Modified: Fri, 16 Sep 2016 19:29:42 GMT  
		Size: 324.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2224b498a1d7f334deef322eccd92e58fd4f002eb2e1c07cdf0a7241240782ea`  
		Last Modified: Fri, 16 Sep 2016 19:29:57 GMT  
		Size: 51.6 MB (51596759 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37039457ff4d40282af6e5b3d4890fba0c40365084eb5711007e4f8764e901b8`  
		Last Modified: Fri, 16 Sep 2016 19:29:44 GMT  
		Size: 2.5 KB (2490 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0ca367eeba0c07b97721bd7a9d386e49357818030de046dc524e84a2603aaf3`  
		Last Modified: Fri, 16 Sep 2016 19:29:42 GMT  
		Size: 1.7 KB (1665 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a479d24f71a5afde61f2d76ee81a228368d7352873a5257e83695dbc16ece7f`  
		Last Modified: Fri, 16 Sep 2016 19:29:43 GMT  
		Size: 119.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:5`

```console
$ docker pull mariadb@sha256:9e37595fea35c75bb9b4e4dd223e152ba5ef12e8e25dc04ecefc52dd0105dab6
```

-	Platforms:
	-	linux; amd64

### `mariadb:5` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **95.8 MB (95826146 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5af0c8a76df8be3aa2e6e8706a3ed049bc4084ec7570a6668183cec46d369c41`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 30 Aug 2016 21:01:38 GMT
ADD file:a97fbdda054eb7b7359279534d677dcaa33f0f9a0823cf8905c1e3d283c66893 in / 
# Tue, 30 Aug 2016 21:01:39 GMT
CMD ["/bin/bash"]
# Wed, 31 Aug 2016 17:36:17 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 31 Aug 2016 17:36:17 GMT
ENV GOSU_VERSION=1.7
# Wed, 31 Aug 2016 17:36:39 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 31 Aug 2016 17:36:40 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 31 Aug 2016 17:36:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Wed, 31 Aug 2016 17:36:58 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	&& apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A
# Wed, 31 Aug 2016 17:36:59 GMT
RUN echo "deb https://repo.percona.com/apt wheezy main" > /etc/apt/sources.list.d/percona.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona
# Wed, 31 Aug 2016 17:36:59 GMT
ENV MARIADB_MAJOR=5.5
# Wed, 31 Aug 2016 17:37:00 GMT
ENV MARIADB_VERSION=5.5.51+maria-1~wheezy
# Wed, 31 Aug 2016 17:37:01 GMT
RUN echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/debian wheezy main" > /etc/apt/sources.list.d/mariadb.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Wed, 31 Aug 2016 17:37:21 GMT
RUN { 		echo mariadb-server-$MARIADB_MAJOR mysql-server/root_password password 'unused'; 		echo mariadb-server-$MARIADB_MAJOR mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		mariadb-server=$MARIADB_VERSION 		percona-xtrabackup 		socat 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Wed, 31 Aug 2016 17:37:24 GMT
RUN sed -Ei 's/^(bind-address|log)/#&/' /etc/mysql/my.cnf 	&& echo 'skip-host-cache\nskip-name-resolve' | awk '{ print } $1 == "[mysqld]" && c == 0 { c = 1; system("cat") }' /etc/mysql/my.cnf > /tmp/my.cnf 	&& mv /tmp/my.cnf /etc/mysql/my.cnf
# Wed, 31 Aug 2016 17:37:25 GMT
VOLUME [/var/lib/mysql]
# Wed, 31 Aug 2016 17:37:25 GMT
COPY file:3d6c735eabd780a3659135a57698f5a17ff1f72725728f21cf72250880e02926 in /usr/local/bin/ 
# Wed, 31 Aug 2016 17:37:27 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 31 Aug 2016 17:37:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 31 Aug 2016 17:37:27 GMT
EXPOSE 3306/tcp
# Wed, 31 Aug 2016 17:37:28 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:046d0f015c61ca7eb317610240a3b1d9c1ba38e7295056ce4f03b964c523855b`  
		Last Modified: Tue, 30 Aug 2016 21:05:47 GMT  
		Size: 37.2 MB (37214590 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33cec173c1caca9ee5ee257e9bebe10cda728390d880a07016435359877a7974`  
		Last Modified: Wed, 31 Aug 2016 17:39:43 GMT  
		Size: 1.7 KB (1692 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c6ff95972406365032b7e195e9a2ca042e54cd2d4c24a080767f17e82ae6106`  
		Last Modified: Wed, 31 Aug 2016 17:39:41 GMT  
		Size: 1.2 MB (1171917 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5d4adf0d564805e596edd0e3954fcb1b53b527651a9298c4c6e95eb6e355f16`  
		Last Modified: Wed, 31 Aug 2016 17:39:39 GMT  
		Size: 113.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:618e87729fe49d03313ae92e41b6e3b781656846d00cc3ea893d943c2759600c`  
		Last Modified: Wed, 31 Aug 2016 17:39:42 GMT  
		Size: 5.8 MB (5790563 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0bba5c7996559f9164a77cad0c09d9ffd97ddf9fa18d4412c8411abca2d1f83`  
		Last Modified: Wed, 31 Aug 2016 17:39:36 GMT  
		Size: 59.9 KB (59937 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abf605c24e32023c207ad127202a9a49db8cafac7b0bd0b7d6775392a977b2f0`  
		Last Modified: Wed, 31 Aug 2016 17:39:36 GMT  
		Size: 318.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d48c825cffadacef508a91bfe0dc4e6d707b63cb35c525c6e165369ddf3c1238`  
		Last Modified: Wed, 31 Aug 2016 17:39:36 GMT  
		Size: 324.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abe366b69e73101f6c007f72af7a97ce3f99fd10e5effea46c2b21f4909ca294`  
		Last Modified: Wed, 31 Aug 2016 17:39:58 GMT  
		Size: 51.6 MB (51582420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e43b6a96a2b5924c2fc3e165eb24ac58f1b7d7bc0c8d281d524f4aa2d0c895b`  
		Last Modified: Wed, 31 Aug 2016 17:39:33 GMT  
		Size: 2.5 KB (2490 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c147aefbfc237259e28e5421d940cbe6525d9159f0a71c08e9e245466b4c3fa`  
		Last Modified: Wed, 31 Aug 2016 17:39:33 GMT  
		Size: 1.7 KB (1665 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a9eda14e2878f2ae22b30b3d1f9adae6199cf8b0d49f3846695e37e745f2bce`  
		Last Modified: Wed, 31 Aug 2016 17:39:33 GMT  
		Size: 117.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
