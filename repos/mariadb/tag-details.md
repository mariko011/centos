<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `mariadb`

-	[`mariadb:10.3.0`](#mariadb1030)
-	[`mariadb:10.3`](#mariadb103)
-	[`mariadb:10.2.6`](#mariadb1026)
-	[`mariadb:10.2`](#mariadb102)
-	[`mariadb:10`](#mariadb10)
-	[`mariadb:latest`](#mariadblatest)
-	[`mariadb:10.1.24`](#mariadb10124)
-	[`mariadb:10.1`](#mariadb101)
-	[`mariadb:10.0.31`](#mariadb10031)
-	[`mariadb:10.0`](#mariadb100)
-	[`mariadb:5.5.56`](#mariadb5556)
-	[`mariadb:5.5`](#mariadb55)
-	[`mariadb:5`](#mariadb5)

## `mariadb:10.3.0`

```console
$ docker pull mariadb@sha256:af32f76017b6d55cf6cac3628d629efdec33bd188265da5c151752832ec75d23
```

-	Platforms:
	-	linux; amd64

### `mariadb:10.3.0` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **131.8 MB (131845175 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bcf8748e182d5c2ae84c1a6140e2e94c7dcb411cb40f604ade1a39af880f9c61`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 20 Jun 2017 20:13:32 GMT
ADD file:9c48682ff75c756544d4491472081a078edf5dd0bb5038d1cb850a1f9c480e3e in / 
# Tue, 20 Jun 2017 20:13:34 GMT
CMD ["bash"]
# Fri, 23 Jun 2017 00:26:49 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Fri, 23 Jun 2017 00:26:50 GMT
ENV GOSU_VERSION=1.7
# Fri, 23 Jun 2017 00:27:08 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 23 Jun 2017 00:27:10 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 23 Jun 2017 00:27:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 00:27:25 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Fri, 23 Jun 2017 00:27:29 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Fri, 23 Jun 2017 00:27:31 GMT
RUN echo "deb https://repo.percona.com/apt jessie main" > /etc/apt/sources.list.d/percona.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona
# Fri, 23 Jun 2017 00:27:31 GMT
ENV MARIADB_MAJOR=10.3
# Fri, 23 Jun 2017 00:27:32 GMT
ENV MARIADB_VERSION=10.3.0+maria~jessie
# Fri, 23 Jun 2017 00:27:34 GMT
RUN echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/debian jessie main" > /etc/apt/sources.list.d/mariadb.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Fri, 23 Jun 2017 00:28:08 GMT
RUN { 		echo mariadb-server-$MARIADB_MAJOR mysql-server/root_password password 'unused'; 		echo mariadb-server-$MARIADB_MAJOR mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		mariadb-server=$MARIADB_VERSION 		percona-xtrabackup 		socat 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Fri, 23 Jun 2017 00:28:10 GMT
RUN sed -Ei 's/^(bind-address|log)/#&/' /etc/mysql/my.cnf 	&& echo 'skip-host-cache\nskip-name-resolve' | awk '{ print } $1 == "[mysqld]" && c == 0 { c = 1; system("cat") }' /etc/mysql/my.cnf > /tmp/my.cnf 	&& mv /tmp/my.cnf /etc/mysql/my.cnf
# Fri, 23 Jun 2017 00:28:11 GMT
VOLUME [/var/lib/mysql]
# Fri, 23 Jun 2017 00:28:12 GMT
COPY file:d559178e6a2929e36791c6a1fa232dc4ac4298ecc446d38972ee1d2a58e30621 in /usr/local/bin/ 
# Fri, 23 Jun 2017 00:28:13 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 23 Jun 2017 00:28:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 23 Jun 2017 00:28:15 GMT
EXPOSE 3306/tcp
# Fri, 23 Jun 2017 00:28:16 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:9f0706ba7422412cd468804fee456786f88bed94bf9aea6dde2a47f770d19d27`  
		Last Modified: Tue, 20 Jun 2017 20:35:47 GMT  
		Size: 52.6 MB (52614808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2290e155d2d0e9a4665a3a3fe112e227034275f6e6ea237122a695dbea5a8861`  
		Last Modified: Sat, 24 Jun 2017 12:34:28 GMT  
		Size: 2.1 KB (2066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:547981b8269f9a3f6be6941c644aa592f59a77e764e0962cacae67e0c6159586`  
		Last Modified: Sat, 24 Jun 2017 12:34:28 GMT  
		Size: 1.3 MB (1304107 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c9d42ed2f48a29a67c7ce9a017f1b14fabb57f9b7193dd51d39675132b7acc3`  
		Last Modified: Sat, 24 Jun 2017 12:34:27 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25ec4aceb5b0f67e929a4da5f441b72d05f4243ad3dc634188c0d99f77ef5eb6`  
		Last Modified: Sat, 24 Jun 2017 12:34:29 GMT  
		Size: 6.7 MB (6671588 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d17c8f49a76be59d858920cd14bfd4d389ce55fef01aed9ee4fe48976b1f07a`  
		Last Modified: Sat, 24 Jun 2017 12:34:27 GMT  
		Size: 20.8 KB (20827 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9581cae2cfc94a94762ece896677a4ef79803971bd6531262e283143b740e7f9`  
		Last Modified: Sat, 24 Jun 2017 12:34:24 GMT  
		Size: 313.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef062d5aea6faa9998d7eda1373718e0b2e2035337ef7f82ef45769c59338831`  
		Last Modified: Sat, 24 Jun 2017 12:34:25 GMT  
		Size: 317.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93edd2d71294bd6c6c1bcf47f494849f0c69867309ca06a894125cdbc6c926e2`  
		Last Modified: Sat, 24 Jun 2017 12:34:41 GMT  
		Size: 71.2 MB (71225729 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e288f155bec628db3e4d285e1ee720c663784d938cd88a90308acac97c0e84d`  
		Last Modified: Sat, 24 Jun 2017 12:34:24 GMT  
		Size: 2.6 KB (2637 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08217b3e3dcd4216314c8f756f10de211439e56b8c37d33cb70bfa7a8fd65856`  
		Last Modified: Sat, 24 Jun 2017 12:34:25 GMT  
		Size: 2.5 KB (2547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e355237898324b4d71a72cb261211acd9bc6c257d7f83b03deb28fa6d261e5c`  
		Last Modified: Sat, 24 Jun 2017 12:34:25 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:10.3`

```console
$ docker pull mariadb@sha256:af32f76017b6d55cf6cac3628d629efdec33bd188265da5c151752832ec75d23
```

-	Platforms:
	-	linux; amd64

### `mariadb:10.3` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **131.8 MB (131845175 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bcf8748e182d5c2ae84c1a6140e2e94c7dcb411cb40f604ade1a39af880f9c61`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 20 Jun 2017 20:13:32 GMT
ADD file:9c48682ff75c756544d4491472081a078edf5dd0bb5038d1cb850a1f9c480e3e in / 
# Tue, 20 Jun 2017 20:13:34 GMT
CMD ["bash"]
# Fri, 23 Jun 2017 00:26:49 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Fri, 23 Jun 2017 00:26:50 GMT
ENV GOSU_VERSION=1.7
# Fri, 23 Jun 2017 00:27:08 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 23 Jun 2017 00:27:10 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 23 Jun 2017 00:27:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 00:27:25 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Fri, 23 Jun 2017 00:27:29 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Fri, 23 Jun 2017 00:27:31 GMT
RUN echo "deb https://repo.percona.com/apt jessie main" > /etc/apt/sources.list.d/percona.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona
# Fri, 23 Jun 2017 00:27:31 GMT
ENV MARIADB_MAJOR=10.3
# Fri, 23 Jun 2017 00:27:32 GMT
ENV MARIADB_VERSION=10.3.0+maria~jessie
# Fri, 23 Jun 2017 00:27:34 GMT
RUN echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/debian jessie main" > /etc/apt/sources.list.d/mariadb.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Fri, 23 Jun 2017 00:28:08 GMT
RUN { 		echo mariadb-server-$MARIADB_MAJOR mysql-server/root_password password 'unused'; 		echo mariadb-server-$MARIADB_MAJOR mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		mariadb-server=$MARIADB_VERSION 		percona-xtrabackup 		socat 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Fri, 23 Jun 2017 00:28:10 GMT
RUN sed -Ei 's/^(bind-address|log)/#&/' /etc/mysql/my.cnf 	&& echo 'skip-host-cache\nskip-name-resolve' | awk '{ print } $1 == "[mysqld]" && c == 0 { c = 1; system("cat") }' /etc/mysql/my.cnf > /tmp/my.cnf 	&& mv /tmp/my.cnf /etc/mysql/my.cnf
# Fri, 23 Jun 2017 00:28:11 GMT
VOLUME [/var/lib/mysql]
# Fri, 23 Jun 2017 00:28:12 GMT
COPY file:d559178e6a2929e36791c6a1fa232dc4ac4298ecc446d38972ee1d2a58e30621 in /usr/local/bin/ 
# Fri, 23 Jun 2017 00:28:13 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 23 Jun 2017 00:28:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 23 Jun 2017 00:28:15 GMT
EXPOSE 3306/tcp
# Fri, 23 Jun 2017 00:28:16 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:9f0706ba7422412cd468804fee456786f88bed94bf9aea6dde2a47f770d19d27`  
		Last Modified: Tue, 20 Jun 2017 20:35:47 GMT  
		Size: 52.6 MB (52614808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2290e155d2d0e9a4665a3a3fe112e227034275f6e6ea237122a695dbea5a8861`  
		Last Modified: Sat, 24 Jun 2017 12:34:28 GMT  
		Size: 2.1 KB (2066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:547981b8269f9a3f6be6941c644aa592f59a77e764e0962cacae67e0c6159586`  
		Last Modified: Sat, 24 Jun 2017 12:34:28 GMT  
		Size: 1.3 MB (1304107 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c9d42ed2f48a29a67c7ce9a017f1b14fabb57f9b7193dd51d39675132b7acc3`  
		Last Modified: Sat, 24 Jun 2017 12:34:27 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25ec4aceb5b0f67e929a4da5f441b72d05f4243ad3dc634188c0d99f77ef5eb6`  
		Last Modified: Sat, 24 Jun 2017 12:34:29 GMT  
		Size: 6.7 MB (6671588 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d17c8f49a76be59d858920cd14bfd4d389ce55fef01aed9ee4fe48976b1f07a`  
		Last Modified: Sat, 24 Jun 2017 12:34:27 GMT  
		Size: 20.8 KB (20827 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9581cae2cfc94a94762ece896677a4ef79803971bd6531262e283143b740e7f9`  
		Last Modified: Sat, 24 Jun 2017 12:34:24 GMT  
		Size: 313.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef062d5aea6faa9998d7eda1373718e0b2e2035337ef7f82ef45769c59338831`  
		Last Modified: Sat, 24 Jun 2017 12:34:25 GMT  
		Size: 317.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93edd2d71294bd6c6c1bcf47f494849f0c69867309ca06a894125cdbc6c926e2`  
		Last Modified: Sat, 24 Jun 2017 12:34:41 GMT  
		Size: 71.2 MB (71225729 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e288f155bec628db3e4d285e1ee720c663784d938cd88a90308acac97c0e84d`  
		Last Modified: Sat, 24 Jun 2017 12:34:24 GMT  
		Size: 2.6 KB (2637 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08217b3e3dcd4216314c8f756f10de211439e56b8c37d33cb70bfa7a8fd65856`  
		Last Modified: Sat, 24 Jun 2017 12:34:25 GMT  
		Size: 2.5 KB (2547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e355237898324b4d71a72cb261211acd9bc6c257d7f83b03deb28fa6d261e5c`  
		Last Modified: Sat, 24 Jun 2017 12:34:25 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:10.2.6`

```console
$ docker pull mariadb@sha256:0b892e7e272381f95d74b1c01faf2ff57bdbb69489ff0dcf0f0e1f79006a916c
```

-	Platforms:
	-	linux; amd64

### `mariadb:10.2.6` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **131.6 MB (131629622 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:411c062636f41d0c163b302f38c781c78a5f1c8ddcfc7af94dda97f028ba3bf2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 20 Jun 2017 20:13:32 GMT
ADD file:9c48682ff75c756544d4491472081a078edf5dd0bb5038d1cb850a1f9c480e3e in / 
# Tue, 20 Jun 2017 20:13:34 GMT
CMD ["bash"]
# Fri, 23 Jun 2017 00:26:49 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Fri, 23 Jun 2017 00:26:50 GMT
ENV GOSU_VERSION=1.7
# Fri, 23 Jun 2017 00:27:08 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 23 Jun 2017 00:27:10 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 23 Jun 2017 00:27:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 00:27:25 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Fri, 23 Jun 2017 00:27:29 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Fri, 23 Jun 2017 00:27:31 GMT
RUN echo "deb https://repo.percona.com/apt jessie main" > /etc/apt/sources.list.d/percona.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona
# Fri, 23 Jun 2017 00:28:41 GMT
ENV MARIADB_MAJOR=10.2
# Fri, 23 Jun 2017 00:28:42 GMT
ENV MARIADB_VERSION=10.2.6+maria~jessie
# Fri, 23 Jun 2017 00:28:44 GMT
RUN echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/debian jessie main" > /etc/apt/sources.list.d/mariadb.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Fri, 23 Jun 2017 00:29:17 GMT
RUN { 		echo mariadb-server-$MARIADB_MAJOR mysql-server/root_password password 'unused'; 		echo mariadb-server-$MARIADB_MAJOR mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		mariadb-server=$MARIADB_VERSION 		percona-xtrabackup 		socat 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Fri, 23 Jun 2017 00:29:19 GMT
RUN sed -Ei 's/^(bind-address|log)/#&/' /etc/mysql/my.cnf 	&& echo 'skip-host-cache\nskip-name-resolve' | awk '{ print } $1 == "[mysqld]" && c == 0 { c = 1; system("cat") }' /etc/mysql/my.cnf > /tmp/my.cnf 	&& mv /tmp/my.cnf /etc/mysql/my.cnf
# Fri, 23 Jun 2017 00:29:19 GMT
VOLUME [/var/lib/mysql]
# Fri, 23 Jun 2017 00:29:21 GMT
COPY file:d559178e6a2929e36791c6a1fa232dc4ac4298ecc446d38972ee1d2a58e30621 in /usr/local/bin/ 
# Fri, 23 Jun 2017 00:29:22 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 23 Jun 2017 00:29:23 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 23 Jun 2017 00:29:24 GMT
EXPOSE 3306/tcp
# Fri, 23 Jun 2017 00:29:25 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:9f0706ba7422412cd468804fee456786f88bed94bf9aea6dde2a47f770d19d27`  
		Last Modified: Tue, 20 Jun 2017 20:35:47 GMT  
		Size: 52.6 MB (52614808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2290e155d2d0e9a4665a3a3fe112e227034275f6e6ea237122a695dbea5a8861`  
		Last Modified: Sat, 24 Jun 2017 12:34:28 GMT  
		Size: 2.1 KB (2066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:547981b8269f9a3f6be6941c644aa592f59a77e764e0962cacae67e0c6159586`  
		Last Modified: Sat, 24 Jun 2017 12:34:28 GMT  
		Size: 1.3 MB (1304107 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c9d42ed2f48a29a67c7ce9a017f1b14fabb57f9b7193dd51d39675132b7acc3`  
		Last Modified: Sat, 24 Jun 2017 12:34:27 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25ec4aceb5b0f67e929a4da5f441b72d05f4243ad3dc634188c0d99f77ef5eb6`  
		Last Modified: Sat, 24 Jun 2017 12:34:29 GMT  
		Size: 6.7 MB (6671588 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d17c8f49a76be59d858920cd14bfd4d389ce55fef01aed9ee4fe48976b1f07a`  
		Last Modified: Sat, 24 Jun 2017 12:34:27 GMT  
		Size: 20.8 KB (20827 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9581cae2cfc94a94762ece896677a4ef79803971bd6531262e283143b740e7f9`  
		Last Modified: Sat, 24 Jun 2017 12:34:24 GMT  
		Size: 313.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:475ab6330e54706576ce60d2a3cc4de1153684100b9dd98059c4fd282f647efd`  
		Last Modified: Sat, 24 Jun 2017 12:43:48 GMT  
		Size: 318.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8a111bb2eef4d5e27b4c7ecde3554eb48826ee3ade02ebf4975ccbca6ec10c0`  
		Last Modified: Sat, 24 Jun 2017 12:44:05 GMT  
		Size: 71.0 MB (71010175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:751d2bf24bd4414dbe65b0923589860cd67ca3a0aecb42e4e552b651f4e6e07a`  
		Last Modified: Sat, 24 Jun 2017 12:43:48 GMT  
		Size: 2.6 KB (2637 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d097f039b966f5417e10471c9f9eafe38027eb48d92306f0e32aa3e910c3e313`  
		Last Modified: Sat, 24 Jun 2017 12:43:48 GMT  
		Size: 2.5 KB (2547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:150e298d0dc22a1f2d108b4df084466128256b19c26389fb2787ff79f91315d8`  
		Last Modified: Sat, 24 Jun 2017 12:43:48 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:10.2`

```console
$ docker pull mariadb@sha256:0b892e7e272381f95d74b1c01faf2ff57bdbb69489ff0dcf0f0e1f79006a916c
```

-	Platforms:
	-	linux; amd64

### `mariadb:10.2` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **131.6 MB (131629622 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:411c062636f41d0c163b302f38c781c78a5f1c8ddcfc7af94dda97f028ba3bf2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 20 Jun 2017 20:13:32 GMT
ADD file:9c48682ff75c756544d4491472081a078edf5dd0bb5038d1cb850a1f9c480e3e in / 
# Tue, 20 Jun 2017 20:13:34 GMT
CMD ["bash"]
# Fri, 23 Jun 2017 00:26:49 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Fri, 23 Jun 2017 00:26:50 GMT
ENV GOSU_VERSION=1.7
# Fri, 23 Jun 2017 00:27:08 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 23 Jun 2017 00:27:10 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 23 Jun 2017 00:27:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 00:27:25 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Fri, 23 Jun 2017 00:27:29 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Fri, 23 Jun 2017 00:27:31 GMT
RUN echo "deb https://repo.percona.com/apt jessie main" > /etc/apt/sources.list.d/percona.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona
# Fri, 23 Jun 2017 00:28:41 GMT
ENV MARIADB_MAJOR=10.2
# Fri, 23 Jun 2017 00:28:42 GMT
ENV MARIADB_VERSION=10.2.6+maria~jessie
# Fri, 23 Jun 2017 00:28:44 GMT
RUN echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/debian jessie main" > /etc/apt/sources.list.d/mariadb.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Fri, 23 Jun 2017 00:29:17 GMT
RUN { 		echo mariadb-server-$MARIADB_MAJOR mysql-server/root_password password 'unused'; 		echo mariadb-server-$MARIADB_MAJOR mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		mariadb-server=$MARIADB_VERSION 		percona-xtrabackup 		socat 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Fri, 23 Jun 2017 00:29:19 GMT
RUN sed -Ei 's/^(bind-address|log)/#&/' /etc/mysql/my.cnf 	&& echo 'skip-host-cache\nskip-name-resolve' | awk '{ print } $1 == "[mysqld]" && c == 0 { c = 1; system("cat") }' /etc/mysql/my.cnf > /tmp/my.cnf 	&& mv /tmp/my.cnf /etc/mysql/my.cnf
# Fri, 23 Jun 2017 00:29:19 GMT
VOLUME [/var/lib/mysql]
# Fri, 23 Jun 2017 00:29:21 GMT
COPY file:d559178e6a2929e36791c6a1fa232dc4ac4298ecc446d38972ee1d2a58e30621 in /usr/local/bin/ 
# Fri, 23 Jun 2017 00:29:22 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 23 Jun 2017 00:29:23 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 23 Jun 2017 00:29:24 GMT
EXPOSE 3306/tcp
# Fri, 23 Jun 2017 00:29:25 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:9f0706ba7422412cd468804fee456786f88bed94bf9aea6dde2a47f770d19d27`  
		Last Modified: Tue, 20 Jun 2017 20:35:47 GMT  
		Size: 52.6 MB (52614808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2290e155d2d0e9a4665a3a3fe112e227034275f6e6ea237122a695dbea5a8861`  
		Last Modified: Sat, 24 Jun 2017 12:34:28 GMT  
		Size: 2.1 KB (2066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:547981b8269f9a3f6be6941c644aa592f59a77e764e0962cacae67e0c6159586`  
		Last Modified: Sat, 24 Jun 2017 12:34:28 GMT  
		Size: 1.3 MB (1304107 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c9d42ed2f48a29a67c7ce9a017f1b14fabb57f9b7193dd51d39675132b7acc3`  
		Last Modified: Sat, 24 Jun 2017 12:34:27 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25ec4aceb5b0f67e929a4da5f441b72d05f4243ad3dc634188c0d99f77ef5eb6`  
		Last Modified: Sat, 24 Jun 2017 12:34:29 GMT  
		Size: 6.7 MB (6671588 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d17c8f49a76be59d858920cd14bfd4d389ce55fef01aed9ee4fe48976b1f07a`  
		Last Modified: Sat, 24 Jun 2017 12:34:27 GMT  
		Size: 20.8 KB (20827 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9581cae2cfc94a94762ece896677a4ef79803971bd6531262e283143b740e7f9`  
		Last Modified: Sat, 24 Jun 2017 12:34:24 GMT  
		Size: 313.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:475ab6330e54706576ce60d2a3cc4de1153684100b9dd98059c4fd282f647efd`  
		Last Modified: Sat, 24 Jun 2017 12:43:48 GMT  
		Size: 318.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8a111bb2eef4d5e27b4c7ecde3554eb48826ee3ade02ebf4975ccbca6ec10c0`  
		Last Modified: Sat, 24 Jun 2017 12:44:05 GMT  
		Size: 71.0 MB (71010175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:751d2bf24bd4414dbe65b0923589860cd67ca3a0aecb42e4e552b651f4e6e07a`  
		Last Modified: Sat, 24 Jun 2017 12:43:48 GMT  
		Size: 2.6 KB (2637 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d097f039b966f5417e10471c9f9eafe38027eb48d92306f0e32aa3e910c3e313`  
		Last Modified: Sat, 24 Jun 2017 12:43:48 GMT  
		Size: 2.5 KB (2547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:150e298d0dc22a1f2d108b4df084466128256b19c26389fb2787ff79f91315d8`  
		Last Modified: Sat, 24 Jun 2017 12:43:48 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:10`

```console
$ docker pull mariadb@sha256:1faf3bc0e0aa435b5959dbb2e9ded29da54a90b92a3ebee0c4122ce8c2eb5e22
```

-	Platforms:
	-	linux; amd64

### `mariadb:10` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **134.9 MB (134875388 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8aac8c9dd09107d5f960e97c19fcb52641f73ee73f14d8fa5070a3e01c60f137`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 20 Jun 2017 20:13:32 GMT
ADD file:9c48682ff75c756544d4491472081a078edf5dd0bb5038d1cb850a1f9c480e3e in / 
# Tue, 20 Jun 2017 20:13:34 GMT
CMD ["bash"]
# Fri, 23 Jun 2017 00:26:49 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Fri, 23 Jun 2017 00:26:50 GMT
ENV GOSU_VERSION=1.7
# Fri, 23 Jun 2017 00:27:08 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 23 Jun 2017 00:27:10 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 23 Jun 2017 00:27:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 00:27:25 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Fri, 23 Jun 2017 00:27:29 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Fri, 23 Jun 2017 00:27:31 GMT
RUN echo "deb https://repo.percona.com/apt jessie main" > /etc/apt/sources.list.d/percona.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona
# Fri, 23 Jun 2017 00:29:51 GMT
ENV MARIADB_MAJOR=10.1
# Fri, 23 Jun 2017 00:29:52 GMT
ENV MARIADB_VERSION=10.1.24+maria-1~jessie
# Fri, 23 Jun 2017 00:29:54 GMT
RUN echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/debian jessie main" > /etc/apt/sources.list.d/mariadb.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Fri, 23 Jun 2017 00:30:39 GMT
RUN { 		echo mariadb-server-$MARIADB_MAJOR mysql-server/root_password password 'unused'; 		echo mariadb-server-$MARIADB_MAJOR mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		mariadb-server=$MARIADB_VERSION 		percona-xtrabackup 		socat 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Fri, 23 Jun 2017 00:30:40 GMT
RUN sed -Ei 's/^(bind-address|log)/#&/' /etc/mysql/my.cnf 	&& echo 'skip-host-cache\nskip-name-resolve' | awk '{ print } $1 == "[mysqld]" && c == 0 { c = 1; system("cat") }' /etc/mysql/my.cnf > /tmp/my.cnf 	&& mv /tmp/my.cnf /etc/mysql/my.cnf
# Fri, 23 Jun 2017 00:30:41 GMT
VOLUME [/var/lib/mysql]
# Fri, 23 Jun 2017 00:30:43 GMT
COPY file:d559178e6a2929e36791c6a1fa232dc4ac4298ecc446d38972ee1d2a58e30621 in /usr/local/bin/ 
# Fri, 23 Jun 2017 00:30:44 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 23 Jun 2017 00:30:45 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 23 Jun 2017 00:30:46 GMT
EXPOSE 3306/tcp
# Fri, 23 Jun 2017 00:30:47 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:9f0706ba7422412cd468804fee456786f88bed94bf9aea6dde2a47f770d19d27`  
		Last Modified: Tue, 20 Jun 2017 20:35:47 GMT  
		Size: 52.6 MB (52614808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2290e155d2d0e9a4665a3a3fe112e227034275f6e6ea237122a695dbea5a8861`  
		Last Modified: Sat, 24 Jun 2017 12:34:28 GMT  
		Size: 2.1 KB (2066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:547981b8269f9a3f6be6941c644aa592f59a77e764e0962cacae67e0c6159586`  
		Last Modified: Sat, 24 Jun 2017 12:34:28 GMT  
		Size: 1.3 MB (1304107 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c9d42ed2f48a29a67c7ce9a017f1b14fabb57f9b7193dd51d39675132b7acc3`  
		Last Modified: Sat, 24 Jun 2017 12:34:27 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25ec4aceb5b0f67e929a4da5f441b72d05f4243ad3dc634188c0d99f77ef5eb6`  
		Last Modified: Sat, 24 Jun 2017 12:34:29 GMT  
		Size: 6.7 MB (6671588 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d17c8f49a76be59d858920cd14bfd4d389ce55fef01aed9ee4fe48976b1f07a`  
		Last Modified: Sat, 24 Jun 2017 12:34:27 GMT  
		Size: 20.8 KB (20827 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9581cae2cfc94a94762ece896677a4ef79803971bd6531262e283143b740e7f9`  
		Last Modified: Sat, 24 Jun 2017 12:34:24 GMT  
		Size: 313.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10113bd1f29a33ae7afd71dac280ccec41123011f70f0fee504e3693436eec60`  
		Last Modified: Sat, 24 Jun 2017 12:45:09 GMT  
		Size: 317.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40d7a63598168b2b6e0d7937c58d9e88dfdf38ac636f26436f8613f498485e97`  
		Last Modified: Sat, 24 Jun 2017 12:45:26 GMT  
		Size: 74.3 MB (74255941 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21016304318349f51ee98f82a2d8402aa04bbccf92f8840a4a5a00063ea7faaa`  
		Last Modified: Sat, 24 Jun 2017 12:45:10 GMT  
		Size: 2.6 KB (2637 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:391d2c84daf95545de9f92a840b4e9a175593589dc4f12b15bc456aaa2370e8a`  
		Last Modified: Sat, 24 Jun 2017 12:45:09 GMT  
		Size: 2.5 KB (2548 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:973af6231c98e373a3dfdd974fa83f5ab53767561f4328378c32d5d9667861cb`  
		Last Modified: Sat, 24 Jun 2017 12:45:09 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:latest`

```console
$ docker pull mariadb@sha256:1faf3bc0e0aa435b5959dbb2e9ded29da54a90b92a3ebee0c4122ce8c2eb5e22
```

-	Platforms:
	-	linux; amd64

### `mariadb:latest` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **134.9 MB (134875388 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8aac8c9dd09107d5f960e97c19fcb52641f73ee73f14d8fa5070a3e01c60f137`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 20 Jun 2017 20:13:32 GMT
ADD file:9c48682ff75c756544d4491472081a078edf5dd0bb5038d1cb850a1f9c480e3e in / 
# Tue, 20 Jun 2017 20:13:34 GMT
CMD ["bash"]
# Fri, 23 Jun 2017 00:26:49 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Fri, 23 Jun 2017 00:26:50 GMT
ENV GOSU_VERSION=1.7
# Fri, 23 Jun 2017 00:27:08 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 23 Jun 2017 00:27:10 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 23 Jun 2017 00:27:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 00:27:25 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Fri, 23 Jun 2017 00:27:29 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Fri, 23 Jun 2017 00:27:31 GMT
RUN echo "deb https://repo.percona.com/apt jessie main" > /etc/apt/sources.list.d/percona.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona
# Fri, 23 Jun 2017 00:29:51 GMT
ENV MARIADB_MAJOR=10.1
# Fri, 23 Jun 2017 00:29:52 GMT
ENV MARIADB_VERSION=10.1.24+maria-1~jessie
# Fri, 23 Jun 2017 00:29:54 GMT
RUN echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/debian jessie main" > /etc/apt/sources.list.d/mariadb.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Fri, 23 Jun 2017 00:30:39 GMT
RUN { 		echo mariadb-server-$MARIADB_MAJOR mysql-server/root_password password 'unused'; 		echo mariadb-server-$MARIADB_MAJOR mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		mariadb-server=$MARIADB_VERSION 		percona-xtrabackup 		socat 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Fri, 23 Jun 2017 00:30:40 GMT
RUN sed -Ei 's/^(bind-address|log)/#&/' /etc/mysql/my.cnf 	&& echo 'skip-host-cache\nskip-name-resolve' | awk '{ print } $1 == "[mysqld]" && c == 0 { c = 1; system("cat") }' /etc/mysql/my.cnf > /tmp/my.cnf 	&& mv /tmp/my.cnf /etc/mysql/my.cnf
# Fri, 23 Jun 2017 00:30:41 GMT
VOLUME [/var/lib/mysql]
# Fri, 23 Jun 2017 00:30:43 GMT
COPY file:d559178e6a2929e36791c6a1fa232dc4ac4298ecc446d38972ee1d2a58e30621 in /usr/local/bin/ 
# Fri, 23 Jun 2017 00:30:44 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 23 Jun 2017 00:30:45 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 23 Jun 2017 00:30:46 GMT
EXPOSE 3306/tcp
# Fri, 23 Jun 2017 00:30:47 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:9f0706ba7422412cd468804fee456786f88bed94bf9aea6dde2a47f770d19d27`  
		Last Modified: Tue, 20 Jun 2017 20:35:47 GMT  
		Size: 52.6 MB (52614808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2290e155d2d0e9a4665a3a3fe112e227034275f6e6ea237122a695dbea5a8861`  
		Last Modified: Sat, 24 Jun 2017 12:34:28 GMT  
		Size: 2.1 KB (2066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:547981b8269f9a3f6be6941c644aa592f59a77e764e0962cacae67e0c6159586`  
		Last Modified: Sat, 24 Jun 2017 12:34:28 GMT  
		Size: 1.3 MB (1304107 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c9d42ed2f48a29a67c7ce9a017f1b14fabb57f9b7193dd51d39675132b7acc3`  
		Last Modified: Sat, 24 Jun 2017 12:34:27 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25ec4aceb5b0f67e929a4da5f441b72d05f4243ad3dc634188c0d99f77ef5eb6`  
		Last Modified: Sat, 24 Jun 2017 12:34:29 GMT  
		Size: 6.7 MB (6671588 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d17c8f49a76be59d858920cd14bfd4d389ce55fef01aed9ee4fe48976b1f07a`  
		Last Modified: Sat, 24 Jun 2017 12:34:27 GMT  
		Size: 20.8 KB (20827 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9581cae2cfc94a94762ece896677a4ef79803971bd6531262e283143b740e7f9`  
		Last Modified: Sat, 24 Jun 2017 12:34:24 GMT  
		Size: 313.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10113bd1f29a33ae7afd71dac280ccec41123011f70f0fee504e3693436eec60`  
		Last Modified: Sat, 24 Jun 2017 12:45:09 GMT  
		Size: 317.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40d7a63598168b2b6e0d7937c58d9e88dfdf38ac636f26436f8613f498485e97`  
		Last Modified: Sat, 24 Jun 2017 12:45:26 GMT  
		Size: 74.3 MB (74255941 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21016304318349f51ee98f82a2d8402aa04bbccf92f8840a4a5a00063ea7faaa`  
		Last Modified: Sat, 24 Jun 2017 12:45:10 GMT  
		Size: 2.6 KB (2637 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:391d2c84daf95545de9f92a840b4e9a175593589dc4f12b15bc456aaa2370e8a`  
		Last Modified: Sat, 24 Jun 2017 12:45:09 GMT  
		Size: 2.5 KB (2548 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:973af6231c98e373a3dfdd974fa83f5ab53767561f4328378c32d5d9667861cb`  
		Last Modified: Sat, 24 Jun 2017 12:45:09 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:10.1.24`

```console
$ docker pull mariadb@sha256:1faf3bc0e0aa435b5959dbb2e9ded29da54a90b92a3ebee0c4122ce8c2eb5e22
```

-	Platforms:
	-	linux; amd64

### `mariadb:10.1.24` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **134.9 MB (134875388 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8aac8c9dd09107d5f960e97c19fcb52641f73ee73f14d8fa5070a3e01c60f137`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 20 Jun 2017 20:13:32 GMT
ADD file:9c48682ff75c756544d4491472081a078edf5dd0bb5038d1cb850a1f9c480e3e in / 
# Tue, 20 Jun 2017 20:13:34 GMT
CMD ["bash"]
# Fri, 23 Jun 2017 00:26:49 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Fri, 23 Jun 2017 00:26:50 GMT
ENV GOSU_VERSION=1.7
# Fri, 23 Jun 2017 00:27:08 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 23 Jun 2017 00:27:10 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 23 Jun 2017 00:27:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 00:27:25 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Fri, 23 Jun 2017 00:27:29 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Fri, 23 Jun 2017 00:27:31 GMT
RUN echo "deb https://repo.percona.com/apt jessie main" > /etc/apt/sources.list.d/percona.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona
# Fri, 23 Jun 2017 00:29:51 GMT
ENV MARIADB_MAJOR=10.1
# Fri, 23 Jun 2017 00:29:52 GMT
ENV MARIADB_VERSION=10.1.24+maria-1~jessie
# Fri, 23 Jun 2017 00:29:54 GMT
RUN echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/debian jessie main" > /etc/apt/sources.list.d/mariadb.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Fri, 23 Jun 2017 00:30:39 GMT
RUN { 		echo mariadb-server-$MARIADB_MAJOR mysql-server/root_password password 'unused'; 		echo mariadb-server-$MARIADB_MAJOR mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		mariadb-server=$MARIADB_VERSION 		percona-xtrabackup 		socat 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Fri, 23 Jun 2017 00:30:40 GMT
RUN sed -Ei 's/^(bind-address|log)/#&/' /etc/mysql/my.cnf 	&& echo 'skip-host-cache\nskip-name-resolve' | awk '{ print } $1 == "[mysqld]" && c == 0 { c = 1; system("cat") }' /etc/mysql/my.cnf > /tmp/my.cnf 	&& mv /tmp/my.cnf /etc/mysql/my.cnf
# Fri, 23 Jun 2017 00:30:41 GMT
VOLUME [/var/lib/mysql]
# Fri, 23 Jun 2017 00:30:43 GMT
COPY file:d559178e6a2929e36791c6a1fa232dc4ac4298ecc446d38972ee1d2a58e30621 in /usr/local/bin/ 
# Fri, 23 Jun 2017 00:30:44 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 23 Jun 2017 00:30:45 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 23 Jun 2017 00:30:46 GMT
EXPOSE 3306/tcp
# Fri, 23 Jun 2017 00:30:47 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:9f0706ba7422412cd468804fee456786f88bed94bf9aea6dde2a47f770d19d27`  
		Last Modified: Tue, 20 Jun 2017 20:35:47 GMT  
		Size: 52.6 MB (52614808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2290e155d2d0e9a4665a3a3fe112e227034275f6e6ea237122a695dbea5a8861`  
		Last Modified: Sat, 24 Jun 2017 12:34:28 GMT  
		Size: 2.1 KB (2066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:547981b8269f9a3f6be6941c644aa592f59a77e764e0962cacae67e0c6159586`  
		Last Modified: Sat, 24 Jun 2017 12:34:28 GMT  
		Size: 1.3 MB (1304107 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c9d42ed2f48a29a67c7ce9a017f1b14fabb57f9b7193dd51d39675132b7acc3`  
		Last Modified: Sat, 24 Jun 2017 12:34:27 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25ec4aceb5b0f67e929a4da5f441b72d05f4243ad3dc634188c0d99f77ef5eb6`  
		Last Modified: Sat, 24 Jun 2017 12:34:29 GMT  
		Size: 6.7 MB (6671588 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d17c8f49a76be59d858920cd14bfd4d389ce55fef01aed9ee4fe48976b1f07a`  
		Last Modified: Sat, 24 Jun 2017 12:34:27 GMT  
		Size: 20.8 KB (20827 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9581cae2cfc94a94762ece896677a4ef79803971bd6531262e283143b740e7f9`  
		Last Modified: Sat, 24 Jun 2017 12:34:24 GMT  
		Size: 313.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10113bd1f29a33ae7afd71dac280ccec41123011f70f0fee504e3693436eec60`  
		Last Modified: Sat, 24 Jun 2017 12:45:09 GMT  
		Size: 317.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40d7a63598168b2b6e0d7937c58d9e88dfdf38ac636f26436f8613f498485e97`  
		Last Modified: Sat, 24 Jun 2017 12:45:26 GMT  
		Size: 74.3 MB (74255941 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21016304318349f51ee98f82a2d8402aa04bbccf92f8840a4a5a00063ea7faaa`  
		Last Modified: Sat, 24 Jun 2017 12:45:10 GMT  
		Size: 2.6 KB (2637 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:391d2c84daf95545de9f92a840b4e9a175593589dc4f12b15bc456aaa2370e8a`  
		Last Modified: Sat, 24 Jun 2017 12:45:09 GMT  
		Size: 2.5 KB (2548 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:973af6231c98e373a3dfdd974fa83f5ab53767561f4328378c32d5d9667861cb`  
		Last Modified: Sat, 24 Jun 2017 12:45:09 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:10.1`

```console
$ docker pull mariadb@sha256:1faf3bc0e0aa435b5959dbb2e9ded29da54a90b92a3ebee0c4122ce8c2eb5e22
```

-	Platforms:
	-	linux; amd64

### `mariadb:10.1` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **134.9 MB (134875388 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8aac8c9dd09107d5f960e97c19fcb52641f73ee73f14d8fa5070a3e01c60f137`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 20 Jun 2017 20:13:32 GMT
ADD file:9c48682ff75c756544d4491472081a078edf5dd0bb5038d1cb850a1f9c480e3e in / 
# Tue, 20 Jun 2017 20:13:34 GMT
CMD ["bash"]
# Fri, 23 Jun 2017 00:26:49 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Fri, 23 Jun 2017 00:26:50 GMT
ENV GOSU_VERSION=1.7
# Fri, 23 Jun 2017 00:27:08 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 23 Jun 2017 00:27:10 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 23 Jun 2017 00:27:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 00:27:25 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Fri, 23 Jun 2017 00:27:29 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Fri, 23 Jun 2017 00:27:31 GMT
RUN echo "deb https://repo.percona.com/apt jessie main" > /etc/apt/sources.list.d/percona.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona
# Fri, 23 Jun 2017 00:29:51 GMT
ENV MARIADB_MAJOR=10.1
# Fri, 23 Jun 2017 00:29:52 GMT
ENV MARIADB_VERSION=10.1.24+maria-1~jessie
# Fri, 23 Jun 2017 00:29:54 GMT
RUN echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/debian jessie main" > /etc/apt/sources.list.d/mariadb.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Fri, 23 Jun 2017 00:30:39 GMT
RUN { 		echo mariadb-server-$MARIADB_MAJOR mysql-server/root_password password 'unused'; 		echo mariadb-server-$MARIADB_MAJOR mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		mariadb-server=$MARIADB_VERSION 		percona-xtrabackup 		socat 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Fri, 23 Jun 2017 00:30:40 GMT
RUN sed -Ei 's/^(bind-address|log)/#&/' /etc/mysql/my.cnf 	&& echo 'skip-host-cache\nskip-name-resolve' | awk '{ print } $1 == "[mysqld]" && c == 0 { c = 1; system("cat") }' /etc/mysql/my.cnf > /tmp/my.cnf 	&& mv /tmp/my.cnf /etc/mysql/my.cnf
# Fri, 23 Jun 2017 00:30:41 GMT
VOLUME [/var/lib/mysql]
# Fri, 23 Jun 2017 00:30:43 GMT
COPY file:d559178e6a2929e36791c6a1fa232dc4ac4298ecc446d38972ee1d2a58e30621 in /usr/local/bin/ 
# Fri, 23 Jun 2017 00:30:44 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 23 Jun 2017 00:30:45 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 23 Jun 2017 00:30:46 GMT
EXPOSE 3306/tcp
# Fri, 23 Jun 2017 00:30:47 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:9f0706ba7422412cd468804fee456786f88bed94bf9aea6dde2a47f770d19d27`  
		Last Modified: Tue, 20 Jun 2017 20:35:47 GMT  
		Size: 52.6 MB (52614808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2290e155d2d0e9a4665a3a3fe112e227034275f6e6ea237122a695dbea5a8861`  
		Last Modified: Sat, 24 Jun 2017 12:34:28 GMT  
		Size: 2.1 KB (2066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:547981b8269f9a3f6be6941c644aa592f59a77e764e0962cacae67e0c6159586`  
		Last Modified: Sat, 24 Jun 2017 12:34:28 GMT  
		Size: 1.3 MB (1304107 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c9d42ed2f48a29a67c7ce9a017f1b14fabb57f9b7193dd51d39675132b7acc3`  
		Last Modified: Sat, 24 Jun 2017 12:34:27 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25ec4aceb5b0f67e929a4da5f441b72d05f4243ad3dc634188c0d99f77ef5eb6`  
		Last Modified: Sat, 24 Jun 2017 12:34:29 GMT  
		Size: 6.7 MB (6671588 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d17c8f49a76be59d858920cd14bfd4d389ce55fef01aed9ee4fe48976b1f07a`  
		Last Modified: Sat, 24 Jun 2017 12:34:27 GMT  
		Size: 20.8 KB (20827 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9581cae2cfc94a94762ece896677a4ef79803971bd6531262e283143b740e7f9`  
		Last Modified: Sat, 24 Jun 2017 12:34:24 GMT  
		Size: 313.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10113bd1f29a33ae7afd71dac280ccec41123011f70f0fee504e3693436eec60`  
		Last Modified: Sat, 24 Jun 2017 12:45:09 GMT  
		Size: 317.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40d7a63598168b2b6e0d7937c58d9e88dfdf38ac636f26436f8613f498485e97`  
		Last Modified: Sat, 24 Jun 2017 12:45:26 GMT  
		Size: 74.3 MB (74255941 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21016304318349f51ee98f82a2d8402aa04bbccf92f8840a4a5a00063ea7faaa`  
		Last Modified: Sat, 24 Jun 2017 12:45:10 GMT  
		Size: 2.6 KB (2637 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:391d2c84daf95545de9f92a840b4e9a175593589dc4f12b15bc456aaa2370e8a`  
		Last Modified: Sat, 24 Jun 2017 12:45:09 GMT  
		Size: 2.5 KB (2548 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:973af6231c98e373a3dfdd974fa83f5ab53767561f4328378c32d5d9667861cb`  
		Last Modified: Sat, 24 Jun 2017 12:45:09 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:10.0.31`

```console
$ docker pull mariadb@sha256:b1cda44f571315e2800d51d8f9b002c02fe6f6e5e90fd30d012c571124aafc33
```

-	Platforms:
	-	linux; amd64

### `mariadb:10.0.31` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **119.8 MB (119758499 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:13d4f673c9c478c49778b631edd12f51848db40bdbb79f92b9ebae5b96ccec90`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 20 Jun 2017 20:13:32 GMT
ADD file:9c48682ff75c756544d4491472081a078edf5dd0bb5038d1cb850a1f9c480e3e in / 
# Tue, 20 Jun 2017 20:13:34 GMT
CMD ["bash"]
# Fri, 23 Jun 2017 00:26:49 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Fri, 23 Jun 2017 00:26:50 GMT
ENV GOSU_VERSION=1.7
# Fri, 23 Jun 2017 00:27:08 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 23 Jun 2017 00:27:10 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 23 Jun 2017 00:27:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 00:27:25 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Fri, 23 Jun 2017 00:27:29 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Fri, 23 Jun 2017 00:27:31 GMT
RUN echo "deb https://repo.percona.com/apt jessie main" > /etc/apt/sources.list.d/percona.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona
# Fri, 23 Jun 2017 00:31:12 GMT
ENV MARIADB_MAJOR=10.0
# Fri, 23 Jun 2017 00:31:13 GMT
ENV MARIADB_VERSION=10.0.31+maria-1~jessie
# Fri, 23 Jun 2017 00:31:15 GMT
RUN echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/debian jessie main" > /etc/apt/sources.list.d/mariadb.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Fri, 23 Jun 2017 00:32:01 GMT
RUN { 		echo mariadb-server-$MARIADB_MAJOR mysql-server/root_password password 'unused'; 		echo mariadb-server-$MARIADB_MAJOR mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		mariadb-server=$MARIADB_VERSION 		percona-xtrabackup 		socat 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Fri, 23 Jun 2017 00:32:03 GMT
RUN sed -Ei 's/^(bind-address|log)/#&/' /etc/mysql/my.cnf 	&& echo 'skip-host-cache\nskip-name-resolve' | awk '{ print } $1 == "[mysqld]" && c == 0 { c = 1; system("cat") }' /etc/mysql/my.cnf > /tmp/my.cnf 	&& mv /tmp/my.cnf /etc/mysql/my.cnf
# Fri, 23 Jun 2017 00:32:04 GMT
VOLUME [/var/lib/mysql]
# Fri, 23 Jun 2017 00:32:05 GMT
COPY file:d559178e6a2929e36791c6a1fa232dc4ac4298ecc446d38972ee1d2a58e30621 in /usr/local/bin/ 
# Fri, 23 Jun 2017 00:32:07 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 23 Jun 2017 00:32:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 23 Jun 2017 00:32:08 GMT
EXPOSE 3306/tcp
# Fri, 23 Jun 2017 00:32:09 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:9f0706ba7422412cd468804fee456786f88bed94bf9aea6dde2a47f770d19d27`  
		Last Modified: Tue, 20 Jun 2017 20:35:47 GMT  
		Size: 52.6 MB (52614808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2290e155d2d0e9a4665a3a3fe112e227034275f6e6ea237122a695dbea5a8861`  
		Last Modified: Sat, 24 Jun 2017 12:34:28 GMT  
		Size: 2.1 KB (2066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:547981b8269f9a3f6be6941c644aa592f59a77e764e0962cacae67e0c6159586`  
		Last Modified: Sat, 24 Jun 2017 12:34:28 GMT  
		Size: 1.3 MB (1304107 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c9d42ed2f48a29a67c7ce9a017f1b14fabb57f9b7193dd51d39675132b7acc3`  
		Last Modified: Sat, 24 Jun 2017 12:34:27 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25ec4aceb5b0f67e929a4da5f441b72d05f4243ad3dc634188c0d99f77ef5eb6`  
		Last Modified: Sat, 24 Jun 2017 12:34:29 GMT  
		Size: 6.7 MB (6671588 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d17c8f49a76be59d858920cd14bfd4d389ce55fef01aed9ee4fe48976b1f07a`  
		Last Modified: Sat, 24 Jun 2017 12:34:27 GMT  
		Size: 20.8 KB (20827 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9581cae2cfc94a94762ece896677a4ef79803971bd6531262e283143b740e7f9`  
		Last Modified: Sat, 24 Jun 2017 12:34:24 GMT  
		Size: 313.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1df250dc35e225440e137448c7a3b6a7cca83e8ec7610b9bc605b9c5914e9d31`  
		Last Modified: Sat, 24 Jun 2017 12:47:19 GMT  
		Size: 317.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3d315bf167354f00fc09fc1ff7da4398c1958a2d0585edbcff472b9a9b304e5`  
		Last Modified: Sat, 24 Jun 2017 12:47:34 GMT  
		Size: 59.1 MB (59139208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc34bf6e5422dbaf0b6420d4a466302bce2da8f193fea58571c447e274a0c7e1`  
		Last Modified: Sat, 24 Jun 2017 12:47:19 GMT  
		Size: 2.5 KB (2485 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cdc8ca61c0ca3d4536f8bea07607b656d6f86631702b6b26a5ce3f35a1743738`  
		Last Modified: Sat, 24 Jun 2017 12:47:19 GMT  
		Size: 2.5 KB (2547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79fd73ce34f54b2b9a1877f3effe4310ec24001880f071ce2cb2344a5524af30`  
		Last Modified: Sat, 24 Jun 2017 12:47:19 GMT  
		Size: 118.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:10.0`

```console
$ docker pull mariadb@sha256:b1cda44f571315e2800d51d8f9b002c02fe6f6e5e90fd30d012c571124aafc33
```

-	Platforms:
	-	linux; amd64

### `mariadb:10.0` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **119.8 MB (119758499 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:13d4f673c9c478c49778b631edd12f51848db40bdbb79f92b9ebae5b96ccec90`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 20 Jun 2017 20:13:32 GMT
ADD file:9c48682ff75c756544d4491472081a078edf5dd0bb5038d1cb850a1f9c480e3e in / 
# Tue, 20 Jun 2017 20:13:34 GMT
CMD ["bash"]
# Fri, 23 Jun 2017 00:26:49 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Fri, 23 Jun 2017 00:26:50 GMT
ENV GOSU_VERSION=1.7
# Fri, 23 Jun 2017 00:27:08 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 23 Jun 2017 00:27:10 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 23 Jun 2017 00:27:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 00:27:25 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Fri, 23 Jun 2017 00:27:29 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Fri, 23 Jun 2017 00:27:31 GMT
RUN echo "deb https://repo.percona.com/apt jessie main" > /etc/apt/sources.list.d/percona.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona
# Fri, 23 Jun 2017 00:31:12 GMT
ENV MARIADB_MAJOR=10.0
# Fri, 23 Jun 2017 00:31:13 GMT
ENV MARIADB_VERSION=10.0.31+maria-1~jessie
# Fri, 23 Jun 2017 00:31:15 GMT
RUN echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/debian jessie main" > /etc/apt/sources.list.d/mariadb.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Fri, 23 Jun 2017 00:32:01 GMT
RUN { 		echo mariadb-server-$MARIADB_MAJOR mysql-server/root_password password 'unused'; 		echo mariadb-server-$MARIADB_MAJOR mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		mariadb-server=$MARIADB_VERSION 		percona-xtrabackup 		socat 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Fri, 23 Jun 2017 00:32:03 GMT
RUN sed -Ei 's/^(bind-address|log)/#&/' /etc/mysql/my.cnf 	&& echo 'skip-host-cache\nskip-name-resolve' | awk '{ print } $1 == "[mysqld]" && c == 0 { c = 1; system("cat") }' /etc/mysql/my.cnf > /tmp/my.cnf 	&& mv /tmp/my.cnf /etc/mysql/my.cnf
# Fri, 23 Jun 2017 00:32:04 GMT
VOLUME [/var/lib/mysql]
# Fri, 23 Jun 2017 00:32:05 GMT
COPY file:d559178e6a2929e36791c6a1fa232dc4ac4298ecc446d38972ee1d2a58e30621 in /usr/local/bin/ 
# Fri, 23 Jun 2017 00:32:07 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 23 Jun 2017 00:32:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 23 Jun 2017 00:32:08 GMT
EXPOSE 3306/tcp
# Fri, 23 Jun 2017 00:32:09 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:9f0706ba7422412cd468804fee456786f88bed94bf9aea6dde2a47f770d19d27`  
		Last Modified: Tue, 20 Jun 2017 20:35:47 GMT  
		Size: 52.6 MB (52614808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2290e155d2d0e9a4665a3a3fe112e227034275f6e6ea237122a695dbea5a8861`  
		Last Modified: Sat, 24 Jun 2017 12:34:28 GMT  
		Size: 2.1 KB (2066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:547981b8269f9a3f6be6941c644aa592f59a77e764e0962cacae67e0c6159586`  
		Last Modified: Sat, 24 Jun 2017 12:34:28 GMT  
		Size: 1.3 MB (1304107 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c9d42ed2f48a29a67c7ce9a017f1b14fabb57f9b7193dd51d39675132b7acc3`  
		Last Modified: Sat, 24 Jun 2017 12:34:27 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25ec4aceb5b0f67e929a4da5f441b72d05f4243ad3dc634188c0d99f77ef5eb6`  
		Last Modified: Sat, 24 Jun 2017 12:34:29 GMT  
		Size: 6.7 MB (6671588 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d17c8f49a76be59d858920cd14bfd4d389ce55fef01aed9ee4fe48976b1f07a`  
		Last Modified: Sat, 24 Jun 2017 12:34:27 GMT  
		Size: 20.8 KB (20827 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9581cae2cfc94a94762ece896677a4ef79803971bd6531262e283143b740e7f9`  
		Last Modified: Sat, 24 Jun 2017 12:34:24 GMT  
		Size: 313.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1df250dc35e225440e137448c7a3b6a7cca83e8ec7610b9bc605b9c5914e9d31`  
		Last Modified: Sat, 24 Jun 2017 12:47:19 GMT  
		Size: 317.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3d315bf167354f00fc09fc1ff7da4398c1958a2d0585edbcff472b9a9b304e5`  
		Last Modified: Sat, 24 Jun 2017 12:47:34 GMT  
		Size: 59.1 MB (59139208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc34bf6e5422dbaf0b6420d4a466302bce2da8f193fea58571c447e274a0c7e1`  
		Last Modified: Sat, 24 Jun 2017 12:47:19 GMT  
		Size: 2.5 KB (2485 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cdc8ca61c0ca3d4536f8bea07607b656d6f86631702b6b26a5ce3f35a1743738`  
		Last Modified: Sat, 24 Jun 2017 12:47:19 GMT  
		Size: 2.5 KB (2547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79fd73ce34f54b2b9a1877f3effe4310ec24001880f071ce2cb2344a5524af30`  
		Last Modified: Sat, 24 Jun 2017 12:47:19 GMT  
		Size: 118.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:5.5.56`

```console
$ docker pull mariadb@sha256:5520f88dc78e6ebb8a4b3d70755cebed3278db5e714be0d04d7c88adffac2c71
```

-	Platforms:
	-	linux; amd64

### `mariadb:5.5.56` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **98.4 MB (98409169 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7fbd6b4990cabbf87cbb84e404395754927a4e5ffd2215dab7c1dd8224b57484`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 20 Jun 2017 20:29:57 GMT
ADD file:e58836121f9e162887b70de3a328bb9ff8944a1307cf5f05b9d768a1a49afe60 in / 
# Tue, 20 Jun 2017 20:29:58 GMT
CMD ["bash"]
# Fri, 23 Jun 2017 00:32:36 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Fri, 23 Jun 2017 00:32:37 GMT
ENV GOSU_VERSION=1.7
# Fri, 23 Jun 2017 00:32:55 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 23 Jun 2017 00:32:57 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 23 Jun 2017 00:33:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 00:33:07 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Fri, 23 Jun 2017 00:33:10 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Fri, 23 Jun 2017 00:33:12 GMT
RUN echo "deb https://repo.percona.com/apt wheezy main" > /etc/apt/sources.list.d/percona.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona
# Fri, 23 Jun 2017 00:33:12 GMT
ENV MARIADB_MAJOR=5.5
# Fri, 23 Jun 2017 00:33:13 GMT
ENV MARIADB_VERSION=5.5.56+maria-1~wheezy
# Fri, 23 Jun 2017 00:33:15 GMT
RUN echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/debian wheezy main" > /etc/apt/sources.list.d/mariadb.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Fri, 23 Jun 2017 00:33:34 GMT
RUN { 		echo mariadb-server-$MARIADB_MAJOR mysql-server/root_password password 'unused'; 		echo mariadb-server-$MARIADB_MAJOR mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		mariadb-server=$MARIADB_VERSION 		percona-xtrabackup 		socat 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Fri, 23 Jun 2017 00:33:36 GMT
RUN sed -Ei 's/^(bind-address|log)/#&/' /etc/mysql/my.cnf 	&& echo 'skip-host-cache\nskip-name-resolve' | awk '{ print } $1 == "[mysqld]" && c == 0 { c = 1; system("cat") }' /etc/mysql/my.cnf > /tmp/my.cnf 	&& mv /tmp/my.cnf /etc/mysql/my.cnf
# Fri, 23 Jun 2017 00:33:37 GMT
VOLUME [/var/lib/mysql]
# Fri, 23 Jun 2017 00:33:38 GMT
COPY file:d559178e6a2929e36791c6a1fa232dc4ac4298ecc446d38972ee1d2a58e30621 in /usr/local/bin/ 
# Fri, 23 Jun 2017 00:33:40 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 23 Jun 2017 00:33:41 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 23 Jun 2017 00:33:42 GMT
EXPOSE 3306/tcp
# Fri, 23 Jun 2017 00:33:43 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:5b825a4651ef2855128f8b498adaf68d54840a4b4b66c406e4ea30ede531f1fd`  
		Last Modified: Tue, 20 Jun 2017 21:02:17 GMT  
		Size: 38.1 MB (38103640 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:810c05a071cd8df8a5c6665464280e5b37ee6ff00e25431d8d412ebc71f7c057`  
		Last Modified: Sat, 24 Jun 2017 12:48:43 GMT  
		Size: 1.7 KB (1714 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45d46adba24784da45a9c7102a3162842a1fb0eb9fe50891c2eca86a4c359258`  
		Last Modified: Sat, 24 Jun 2017 12:48:43 GMT  
		Size: 1.3 MB (1257565 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dce73f2473b155b6af193253284cbba233b17a6ea0863d974c45d16a91216626`  
		Last Modified: Sat, 24 Jun 2017 12:48:42 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e3e4706c4f6258530431a6fcb5e7be2d77a588a2d222f90e8ff87662fe4337d`  
		Last Modified: Sat, 24 Jun 2017 12:48:44 GMT  
		Size: 6.0 MB (5991421 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1bcc5cce94f26d8d57430ddb8595c821803b4ba02c9d758f80eca430f9ef2f6`  
		Last Modified: Sat, 24 Jun 2017 12:48:41 GMT  
		Size: 20.8 KB (20800 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2eb8de290367be044b37d585388032ba9a165bc3c261d811feda9d7440182cc5`  
		Last Modified: Sat, 24 Jun 2017 12:48:40 GMT  
		Size: 315.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7b7f33f47635f666cb8d12829b744c11fed2bd1dc2673da7521d8ba11cc1fec`  
		Last Modified: Sat, 24 Jun 2017 12:48:39 GMT  
		Size: 321.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d594b8f054957f61404e56f4300eaf98654387cc5745c672ce489b0e069011f`  
		Last Modified: Sat, 24 Jun 2017 12:48:51 GMT  
		Size: 53.0 MB (53028126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8dddb3764db65963c3df7ce78116472e707dc6ded87f439988fe6e880c7735f`  
		Last Modified: Sat, 24 Jun 2017 12:48:39 GMT  
		Size: 2.5 KB (2486 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:888050d991770b47aa3019c8bb980c679f8e0ef93b3e130db31c4ab008e046da`  
		Last Modified: Sat, 24 Jun 2017 12:48:39 GMT  
		Size: 2.5 KB (2545 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8dc7900a348c267f49ac951f8a24ac5c2f93c4330fe74753e5d60327f5999957`  
		Last Modified: Sat, 24 Jun 2017 12:48:39 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:5.5`

```console
$ docker pull mariadb@sha256:5520f88dc78e6ebb8a4b3d70755cebed3278db5e714be0d04d7c88adffac2c71
```

-	Platforms:
	-	linux; amd64

### `mariadb:5.5` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **98.4 MB (98409169 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7fbd6b4990cabbf87cbb84e404395754927a4e5ffd2215dab7c1dd8224b57484`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 20 Jun 2017 20:29:57 GMT
ADD file:e58836121f9e162887b70de3a328bb9ff8944a1307cf5f05b9d768a1a49afe60 in / 
# Tue, 20 Jun 2017 20:29:58 GMT
CMD ["bash"]
# Fri, 23 Jun 2017 00:32:36 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Fri, 23 Jun 2017 00:32:37 GMT
ENV GOSU_VERSION=1.7
# Fri, 23 Jun 2017 00:32:55 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 23 Jun 2017 00:32:57 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 23 Jun 2017 00:33:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 00:33:07 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Fri, 23 Jun 2017 00:33:10 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Fri, 23 Jun 2017 00:33:12 GMT
RUN echo "deb https://repo.percona.com/apt wheezy main" > /etc/apt/sources.list.d/percona.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona
# Fri, 23 Jun 2017 00:33:12 GMT
ENV MARIADB_MAJOR=5.5
# Fri, 23 Jun 2017 00:33:13 GMT
ENV MARIADB_VERSION=5.5.56+maria-1~wheezy
# Fri, 23 Jun 2017 00:33:15 GMT
RUN echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/debian wheezy main" > /etc/apt/sources.list.d/mariadb.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Fri, 23 Jun 2017 00:33:34 GMT
RUN { 		echo mariadb-server-$MARIADB_MAJOR mysql-server/root_password password 'unused'; 		echo mariadb-server-$MARIADB_MAJOR mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		mariadb-server=$MARIADB_VERSION 		percona-xtrabackup 		socat 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Fri, 23 Jun 2017 00:33:36 GMT
RUN sed -Ei 's/^(bind-address|log)/#&/' /etc/mysql/my.cnf 	&& echo 'skip-host-cache\nskip-name-resolve' | awk '{ print } $1 == "[mysqld]" && c == 0 { c = 1; system("cat") }' /etc/mysql/my.cnf > /tmp/my.cnf 	&& mv /tmp/my.cnf /etc/mysql/my.cnf
# Fri, 23 Jun 2017 00:33:37 GMT
VOLUME [/var/lib/mysql]
# Fri, 23 Jun 2017 00:33:38 GMT
COPY file:d559178e6a2929e36791c6a1fa232dc4ac4298ecc446d38972ee1d2a58e30621 in /usr/local/bin/ 
# Fri, 23 Jun 2017 00:33:40 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 23 Jun 2017 00:33:41 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 23 Jun 2017 00:33:42 GMT
EXPOSE 3306/tcp
# Fri, 23 Jun 2017 00:33:43 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:5b825a4651ef2855128f8b498adaf68d54840a4b4b66c406e4ea30ede531f1fd`  
		Last Modified: Tue, 20 Jun 2017 21:02:17 GMT  
		Size: 38.1 MB (38103640 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:810c05a071cd8df8a5c6665464280e5b37ee6ff00e25431d8d412ebc71f7c057`  
		Last Modified: Sat, 24 Jun 2017 12:48:43 GMT  
		Size: 1.7 KB (1714 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45d46adba24784da45a9c7102a3162842a1fb0eb9fe50891c2eca86a4c359258`  
		Last Modified: Sat, 24 Jun 2017 12:48:43 GMT  
		Size: 1.3 MB (1257565 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dce73f2473b155b6af193253284cbba233b17a6ea0863d974c45d16a91216626`  
		Last Modified: Sat, 24 Jun 2017 12:48:42 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e3e4706c4f6258530431a6fcb5e7be2d77a588a2d222f90e8ff87662fe4337d`  
		Last Modified: Sat, 24 Jun 2017 12:48:44 GMT  
		Size: 6.0 MB (5991421 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1bcc5cce94f26d8d57430ddb8595c821803b4ba02c9d758f80eca430f9ef2f6`  
		Last Modified: Sat, 24 Jun 2017 12:48:41 GMT  
		Size: 20.8 KB (20800 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2eb8de290367be044b37d585388032ba9a165bc3c261d811feda9d7440182cc5`  
		Last Modified: Sat, 24 Jun 2017 12:48:40 GMT  
		Size: 315.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7b7f33f47635f666cb8d12829b744c11fed2bd1dc2673da7521d8ba11cc1fec`  
		Last Modified: Sat, 24 Jun 2017 12:48:39 GMT  
		Size: 321.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d594b8f054957f61404e56f4300eaf98654387cc5745c672ce489b0e069011f`  
		Last Modified: Sat, 24 Jun 2017 12:48:51 GMT  
		Size: 53.0 MB (53028126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8dddb3764db65963c3df7ce78116472e707dc6ded87f439988fe6e880c7735f`  
		Last Modified: Sat, 24 Jun 2017 12:48:39 GMT  
		Size: 2.5 KB (2486 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:888050d991770b47aa3019c8bb980c679f8e0ef93b3e130db31c4ab008e046da`  
		Last Modified: Sat, 24 Jun 2017 12:48:39 GMT  
		Size: 2.5 KB (2545 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8dc7900a348c267f49ac951f8a24ac5c2f93c4330fe74753e5d60327f5999957`  
		Last Modified: Sat, 24 Jun 2017 12:48:39 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:5`

```console
$ docker pull mariadb@sha256:5520f88dc78e6ebb8a4b3d70755cebed3278db5e714be0d04d7c88adffac2c71
```

-	Platforms:
	-	linux; amd64

### `mariadb:5` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **98.4 MB (98409169 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7fbd6b4990cabbf87cbb84e404395754927a4e5ffd2215dab7c1dd8224b57484`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 20 Jun 2017 20:29:57 GMT
ADD file:e58836121f9e162887b70de3a328bb9ff8944a1307cf5f05b9d768a1a49afe60 in / 
# Tue, 20 Jun 2017 20:29:58 GMT
CMD ["bash"]
# Fri, 23 Jun 2017 00:32:36 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Fri, 23 Jun 2017 00:32:37 GMT
ENV GOSU_VERSION=1.7
# Fri, 23 Jun 2017 00:32:55 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 23 Jun 2017 00:32:57 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 23 Jun 2017 00:33:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 00:33:07 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Fri, 23 Jun 2017 00:33:10 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Fri, 23 Jun 2017 00:33:12 GMT
RUN echo "deb https://repo.percona.com/apt wheezy main" > /etc/apt/sources.list.d/percona.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona
# Fri, 23 Jun 2017 00:33:12 GMT
ENV MARIADB_MAJOR=5.5
# Fri, 23 Jun 2017 00:33:13 GMT
ENV MARIADB_VERSION=5.5.56+maria-1~wheezy
# Fri, 23 Jun 2017 00:33:15 GMT
RUN echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/debian wheezy main" > /etc/apt/sources.list.d/mariadb.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Fri, 23 Jun 2017 00:33:34 GMT
RUN { 		echo mariadb-server-$MARIADB_MAJOR mysql-server/root_password password 'unused'; 		echo mariadb-server-$MARIADB_MAJOR mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		mariadb-server=$MARIADB_VERSION 		percona-xtrabackup 		socat 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Fri, 23 Jun 2017 00:33:36 GMT
RUN sed -Ei 's/^(bind-address|log)/#&/' /etc/mysql/my.cnf 	&& echo 'skip-host-cache\nskip-name-resolve' | awk '{ print } $1 == "[mysqld]" && c == 0 { c = 1; system("cat") }' /etc/mysql/my.cnf > /tmp/my.cnf 	&& mv /tmp/my.cnf /etc/mysql/my.cnf
# Fri, 23 Jun 2017 00:33:37 GMT
VOLUME [/var/lib/mysql]
# Fri, 23 Jun 2017 00:33:38 GMT
COPY file:d559178e6a2929e36791c6a1fa232dc4ac4298ecc446d38972ee1d2a58e30621 in /usr/local/bin/ 
# Fri, 23 Jun 2017 00:33:40 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 23 Jun 2017 00:33:41 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 23 Jun 2017 00:33:42 GMT
EXPOSE 3306/tcp
# Fri, 23 Jun 2017 00:33:43 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:5b825a4651ef2855128f8b498adaf68d54840a4b4b66c406e4ea30ede531f1fd`  
		Last Modified: Tue, 20 Jun 2017 21:02:17 GMT  
		Size: 38.1 MB (38103640 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:810c05a071cd8df8a5c6665464280e5b37ee6ff00e25431d8d412ebc71f7c057`  
		Last Modified: Sat, 24 Jun 2017 12:48:43 GMT  
		Size: 1.7 KB (1714 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45d46adba24784da45a9c7102a3162842a1fb0eb9fe50891c2eca86a4c359258`  
		Last Modified: Sat, 24 Jun 2017 12:48:43 GMT  
		Size: 1.3 MB (1257565 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dce73f2473b155b6af193253284cbba233b17a6ea0863d974c45d16a91216626`  
		Last Modified: Sat, 24 Jun 2017 12:48:42 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e3e4706c4f6258530431a6fcb5e7be2d77a588a2d222f90e8ff87662fe4337d`  
		Last Modified: Sat, 24 Jun 2017 12:48:44 GMT  
		Size: 6.0 MB (5991421 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1bcc5cce94f26d8d57430ddb8595c821803b4ba02c9d758f80eca430f9ef2f6`  
		Last Modified: Sat, 24 Jun 2017 12:48:41 GMT  
		Size: 20.8 KB (20800 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2eb8de290367be044b37d585388032ba9a165bc3c261d811feda9d7440182cc5`  
		Last Modified: Sat, 24 Jun 2017 12:48:40 GMT  
		Size: 315.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7b7f33f47635f666cb8d12829b744c11fed2bd1dc2673da7521d8ba11cc1fec`  
		Last Modified: Sat, 24 Jun 2017 12:48:39 GMT  
		Size: 321.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d594b8f054957f61404e56f4300eaf98654387cc5745c672ce489b0e069011f`  
		Last Modified: Sat, 24 Jun 2017 12:48:51 GMT  
		Size: 53.0 MB (53028126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8dddb3764db65963c3df7ce78116472e707dc6ded87f439988fe6e880c7735f`  
		Last Modified: Sat, 24 Jun 2017 12:48:39 GMT  
		Size: 2.5 KB (2486 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:888050d991770b47aa3019c8bb980c679f8e0ef93b3e130db31c4ab008e046da`  
		Last Modified: Sat, 24 Jun 2017 12:48:39 GMT  
		Size: 2.5 KB (2545 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8dc7900a348c267f49ac951f8a24ac5c2f93c4330fe74753e5d60327f5999957`  
		Last Modified: Sat, 24 Jun 2017 12:48:39 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
