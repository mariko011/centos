<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `mariadb`

-	[`mariadb:10.3.0`](#mariadb1030)
-	[`mariadb:10.3`](#mariadb103)
-	[`mariadb:10.2.6`](#mariadb1026)
-	[`mariadb:10.2`](#mariadb102)
-	[`mariadb:10.1.24`](#mariadb10124)
-	[`mariadb:10.1`](#mariadb101)
-	[`mariadb:10`](#mariadb10)
-	[`mariadb:latest`](#mariadblatest)
-	[`mariadb:10.0.31`](#mariadb10031)
-	[`mariadb:10.0`](#mariadb100)
-	[`mariadb:5.5.56`](#mariadb5556)
-	[`mariadb:5.5`](#mariadb55)
-	[`mariadb:5`](#mariadb5)

## `mariadb:10.3.0`

```console
$ docker pull mariadb@sha256:bc0d4098efb66424178cbe4b4ab97f46692e596c09bd41e1ac4e5fd6c57ca1ba
```

-	Platforms:
	-	linux; amd64

### `mariadb:10.3.0` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **131.8 MB (131823579 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2348d4dea6d30a698d26b119523cc653159c97c44d3548e25f094e3a83f14afd`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Tue, 09 May 2017 17:26:22 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Tue, 09 May 2017 17:26:23 GMT
ENV GOSU_VERSION=1.7
# Tue, 09 May 2017 17:26:43 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 09 May 2017 17:26:45 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 09 May 2017 17:27:02 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Tue, 09 May 2017 17:27:03 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Tue, 09 May 2017 17:27:06 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 09 May 2017 17:27:08 GMT
RUN echo "deb https://repo.percona.com/apt jessie main" > /etc/apt/sources.list.d/percona.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona
# Thu, 18 May 2017 22:13:03 GMT
ENV MARIADB_MAJOR=10.3
# Thu, 18 May 2017 22:13:04 GMT
ENV MARIADB_VERSION=10.3.0+maria~jessie
# Thu, 18 May 2017 22:13:05 GMT
RUN echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/debian jessie main" > /etc/apt/sources.list.d/mariadb.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Thu, 18 May 2017 22:13:45 GMT
RUN { 		echo mariadb-server-$MARIADB_MAJOR mysql-server/root_password password 'unused'; 		echo mariadb-server-$MARIADB_MAJOR mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		mariadb-server=$MARIADB_VERSION 		percona-xtrabackup 		socat 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Thu, 18 May 2017 22:13:46 GMT
RUN sed -Ei 's/^(bind-address|log)/#&/' /etc/mysql/my.cnf 	&& echo 'skip-host-cache\nskip-name-resolve' | awk '{ print } $1 == "[mysqld]" && c == 0 { c = 1; system("cat") }' /etc/mysql/my.cnf > /tmp/my.cnf 	&& mv /tmp/my.cnf /etc/mysql/my.cnf
# Thu, 18 May 2017 22:13:47 GMT
VOLUME [/var/lib/mysql]
# Thu, 18 May 2017 22:13:48 GMT
COPY file:d559178e6a2929e36791c6a1fa232dc4ac4298ecc446d38972ee1d2a58e30621 in /usr/local/bin/ 
# Thu, 18 May 2017 22:13:49 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 18 May 2017 22:13:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 18 May 2017 22:13:51 GMT
EXPOSE 3306/tcp
# Thu, 18 May 2017 22:13:51 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:10a267c67f423630f3afe5e04bbbc93d578861ddcc54283526222f3ad5e895b9`  
		Last Modified: Mon, 08 May 2017 23:43:59 GMT  
		Size: 52.6 MB (52584016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2dcc7bb2a88d3f5f2e2f57c03798de132417029412461fa5c2a3980a432ac00`  
		Last Modified: Sat, 13 May 2017 07:01:23 GMT  
		Size: 2.1 KB (2066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17e7a0445698ef7ccb14c188ceef9c98785c4adf909704a86a019721e94a8eff`  
		Last Modified: Sat, 13 May 2017 07:01:23 GMT  
		Size: 1.3 MB (1307767 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a61839a176f4d61f2b383652722e0dc8f63ffd12828405b1d7d0facc903b4df`  
		Last Modified: Sat, 13 May 2017 07:01:23 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64675690edb1a9570a687eeb066ea1c9f445ebea6143d0e3315343a8433a6282`  
		Last Modified: Sat, 13 May 2017 07:01:25 GMT  
		Size: 6.7 MB (6674171 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3de17e25148882a0df702a696d70beba7abcf53fd04fc777e1418dbc6304a1c8`  
		Last Modified: Sat, 13 May 2017 07:01:22 GMT  
		Size: 20.8 KB (20827 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f814b22b783e01a2e2dce50c55554ca2777bb4f56098398d96d4532aa7642e1f`  
		Last Modified: Sat, 13 May 2017 07:01:20 GMT  
		Size: 313.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd424808af509c25ef13e437e41e1e73f41d36b50a58f5ec188b69eea16641f3`  
		Last Modified: Thu, 18 May 2017 22:15:26 GMT  
		Size: 317.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67d349299cab38317dfb3755ebf7c986563752829365b8e2d3aad4cfd082f662`  
		Last Modified: Thu, 18 May 2017 22:15:42 GMT  
		Size: 71.2 MB (71228682 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6455b21aa676d23219262a5e9cefa823ecbb94663aa262395e532c086ec3c50`  
		Last Modified: Thu, 18 May 2017 22:15:27 GMT  
		Size: 2.6 KB (2637 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cdb9ac96bb0b29d073f85d94e96e9b5947ddf9fd743fa78006d762b5818b967`  
		Last Modified: Thu, 18 May 2017 22:15:26 GMT  
		Size: 2.5 KB (2547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c099a97dd01d1964bc0757e1ce180713db12f107cee425f24dbe7b2cd0976852`  
		Last Modified: Thu, 18 May 2017 22:15:27 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:10.3`

```console
$ docker pull mariadb@sha256:bc0d4098efb66424178cbe4b4ab97f46692e596c09bd41e1ac4e5fd6c57ca1ba
```

-	Platforms:
	-	linux; amd64

### `mariadb:10.3` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **131.8 MB (131823579 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2348d4dea6d30a698d26b119523cc653159c97c44d3548e25f094e3a83f14afd`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Tue, 09 May 2017 17:26:22 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Tue, 09 May 2017 17:26:23 GMT
ENV GOSU_VERSION=1.7
# Tue, 09 May 2017 17:26:43 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 09 May 2017 17:26:45 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 09 May 2017 17:27:02 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Tue, 09 May 2017 17:27:03 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Tue, 09 May 2017 17:27:06 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 09 May 2017 17:27:08 GMT
RUN echo "deb https://repo.percona.com/apt jessie main" > /etc/apt/sources.list.d/percona.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona
# Thu, 18 May 2017 22:13:03 GMT
ENV MARIADB_MAJOR=10.3
# Thu, 18 May 2017 22:13:04 GMT
ENV MARIADB_VERSION=10.3.0+maria~jessie
# Thu, 18 May 2017 22:13:05 GMT
RUN echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/debian jessie main" > /etc/apt/sources.list.d/mariadb.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Thu, 18 May 2017 22:13:45 GMT
RUN { 		echo mariadb-server-$MARIADB_MAJOR mysql-server/root_password password 'unused'; 		echo mariadb-server-$MARIADB_MAJOR mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		mariadb-server=$MARIADB_VERSION 		percona-xtrabackup 		socat 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Thu, 18 May 2017 22:13:46 GMT
RUN sed -Ei 's/^(bind-address|log)/#&/' /etc/mysql/my.cnf 	&& echo 'skip-host-cache\nskip-name-resolve' | awk '{ print } $1 == "[mysqld]" && c == 0 { c = 1; system("cat") }' /etc/mysql/my.cnf > /tmp/my.cnf 	&& mv /tmp/my.cnf /etc/mysql/my.cnf
# Thu, 18 May 2017 22:13:47 GMT
VOLUME [/var/lib/mysql]
# Thu, 18 May 2017 22:13:48 GMT
COPY file:d559178e6a2929e36791c6a1fa232dc4ac4298ecc446d38972ee1d2a58e30621 in /usr/local/bin/ 
# Thu, 18 May 2017 22:13:49 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 18 May 2017 22:13:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 18 May 2017 22:13:51 GMT
EXPOSE 3306/tcp
# Thu, 18 May 2017 22:13:51 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:10a267c67f423630f3afe5e04bbbc93d578861ddcc54283526222f3ad5e895b9`  
		Last Modified: Mon, 08 May 2017 23:43:59 GMT  
		Size: 52.6 MB (52584016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2dcc7bb2a88d3f5f2e2f57c03798de132417029412461fa5c2a3980a432ac00`  
		Last Modified: Sat, 13 May 2017 07:01:23 GMT  
		Size: 2.1 KB (2066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17e7a0445698ef7ccb14c188ceef9c98785c4adf909704a86a019721e94a8eff`  
		Last Modified: Sat, 13 May 2017 07:01:23 GMT  
		Size: 1.3 MB (1307767 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a61839a176f4d61f2b383652722e0dc8f63ffd12828405b1d7d0facc903b4df`  
		Last Modified: Sat, 13 May 2017 07:01:23 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64675690edb1a9570a687eeb066ea1c9f445ebea6143d0e3315343a8433a6282`  
		Last Modified: Sat, 13 May 2017 07:01:25 GMT  
		Size: 6.7 MB (6674171 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3de17e25148882a0df702a696d70beba7abcf53fd04fc777e1418dbc6304a1c8`  
		Last Modified: Sat, 13 May 2017 07:01:22 GMT  
		Size: 20.8 KB (20827 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f814b22b783e01a2e2dce50c55554ca2777bb4f56098398d96d4532aa7642e1f`  
		Last Modified: Sat, 13 May 2017 07:01:20 GMT  
		Size: 313.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd424808af509c25ef13e437e41e1e73f41d36b50a58f5ec188b69eea16641f3`  
		Last Modified: Thu, 18 May 2017 22:15:26 GMT  
		Size: 317.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67d349299cab38317dfb3755ebf7c986563752829365b8e2d3aad4cfd082f662`  
		Last Modified: Thu, 18 May 2017 22:15:42 GMT  
		Size: 71.2 MB (71228682 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6455b21aa676d23219262a5e9cefa823ecbb94663aa262395e532c086ec3c50`  
		Last Modified: Thu, 18 May 2017 22:15:27 GMT  
		Size: 2.6 KB (2637 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cdb9ac96bb0b29d073f85d94e96e9b5947ddf9fd743fa78006d762b5818b967`  
		Last Modified: Thu, 18 May 2017 22:15:26 GMT  
		Size: 2.5 KB (2547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c099a97dd01d1964bc0757e1ce180713db12f107cee425f24dbe7b2cd0976852`  
		Last Modified: Thu, 18 May 2017 22:15:27 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:10.2.6`

```console
$ docker pull mariadb@sha256:eeb24a9bc96a8b092abfe9e287aea12653730e667a8704007e8c14e13515ec12
```

-	Platforms:
	-	linux; amd64

### `mariadb:10.2.6` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **131.6 MB (131607932 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:84526ec5a79bfac762bc54efb42ca27745e28f65b2ee0b85d80eda8c4e54a6a9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Tue, 09 May 2017 17:26:22 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Tue, 09 May 2017 17:26:23 GMT
ENV GOSU_VERSION=1.7
# Tue, 09 May 2017 17:26:43 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 09 May 2017 17:26:45 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 09 May 2017 17:27:02 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Tue, 09 May 2017 17:27:03 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Tue, 09 May 2017 17:27:06 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 09 May 2017 17:27:08 GMT
RUN echo "deb https://repo.percona.com/apt jessie main" > /etc/apt/sources.list.d/percona.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona
# Thu, 18 May 2017 22:14:13 GMT
ENV MARIADB_MAJOR=10.2
# Tue, 23 May 2017 23:37:59 GMT
ENV MARIADB_VERSION=10.2.6+maria~jessie
# Tue, 23 May 2017 23:38:01 GMT
RUN echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/debian jessie main" > /etc/apt/sources.list.d/mariadb.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Tue, 23 May 2017 23:38:34 GMT
RUN { 		echo mariadb-server-$MARIADB_MAJOR mysql-server/root_password password 'unused'; 		echo mariadb-server-$MARIADB_MAJOR mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		mariadb-server=$MARIADB_VERSION 		percona-xtrabackup 		socat 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Tue, 23 May 2017 23:38:35 GMT
RUN sed -Ei 's/^(bind-address|log)/#&/' /etc/mysql/my.cnf 	&& echo 'skip-host-cache\nskip-name-resolve' | awk '{ print } $1 == "[mysqld]" && c == 0 { c = 1; system("cat") }' /etc/mysql/my.cnf > /tmp/my.cnf 	&& mv /tmp/my.cnf /etc/mysql/my.cnf
# Tue, 23 May 2017 23:38:36 GMT
VOLUME [/var/lib/mysql]
# Tue, 23 May 2017 23:38:37 GMT
COPY file:d559178e6a2929e36791c6a1fa232dc4ac4298ecc446d38972ee1d2a58e30621 in /usr/local/bin/ 
# Tue, 23 May 2017 23:38:38 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 23 May 2017 23:38:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 23 May 2017 23:38:40 GMT
EXPOSE 3306/tcp
# Tue, 23 May 2017 23:38:41 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:10a267c67f423630f3afe5e04bbbc93d578861ddcc54283526222f3ad5e895b9`  
		Last Modified: Mon, 08 May 2017 23:43:59 GMT  
		Size: 52.6 MB (52584016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2dcc7bb2a88d3f5f2e2f57c03798de132417029412461fa5c2a3980a432ac00`  
		Last Modified: Sat, 13 May 2017 07:01:23 GMT  
		Size: 2.1 KB (2066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17e7a0445698ef7ccb14c188ceef9c98785c4adf909704a86a019721e94a8eff`  
		Last Modified: Sat, 13 May 2017 07:01:23 GMT  
		Size: 1.3 MB (1307767 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a61839a176f4d61f2b383652722e0dc8f63ffd12828405b1d7d0facc903b4df`  
		Last Modified: Sat, 13 May 2017 07:01:23 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64675690edb1a9570a687eeb066ea1c9f445ebea6143d0e3315343a8433a6282`  
		Last Modified: Sat, 13 May 2017 07:01:25 GMT  
		Size: 6.7 MB (6674171 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3de17e25148882a0df702a696d70beba7abcf53fd04fc777e1418dbc6304a1c8`  
		Last Modified: Sat, 13 May 2017 07:01:22 GMT  
		Size: 20.8 KB (20827 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f814b22b783e01a2e2dce50c55554ca2777bb4f56098398d96d4532aa7642e1f`  
		Last Modified: Sat, 13 May 2017 07:01:20 GMT  
		Size: 313.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d4ad73d44438d866db56caa7a235fa93ade9fb2e36ab037237622efa26eca1c`  
		Last Modified: Tue, 23 May 2017 23:41:07 GMT  
		Size: 317.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eee4b3a2de3fa5d9c00182997b27583977844c76e69fdeb60b1d2f6f77d51f9e`  
		Last Modified: Tue, 23 May 2017 23:41:23 GMT  
		Size: 71.0 MB (71013035 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6ff359b14f6582df98c9e77da42b2630c9761a3b6f5d0aeb8cf422bcbb15fc9`  
		Last Modified: Tue, 23 May 2017 23:41:07 GMT  
		Size: 2.6 KB (2637 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0b213a7fe9ab848109e8552252be8d1a5143d233d6b07fb8009043d69e9e984`  
		Last Modified: Tue, 23 May 2017 23:41:07 GMT  
		Size: 2.5 KB (2547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3849a95a5d0ae46ae70d15583d33b01791c2787cdbe15ea632eae84055901d3a`  
		Last Modified: Tue, 23 May 2017 23:41:07 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:10.2`

```console
$ docker pull mariadb@sha256:eeb24a9bc96a8b092abfe9e287aea12653730e667a8704007e8c14e13515ec12
```

-	Platforms:
	-	linux; amd64

### `mariadb:10.2` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **131.6 MB (131607932 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:84526ec5a79bfac762bc54efb42ca27745e28f65b2ee0b85d80eda8c4e54a6a9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Tue, 09 May 2017 17:26:22 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Tue, 09 May 2017 17:26:23 GMT
ENV GOSU_VERSION=1.7
# Tue, 09 May 2017 17:26:43 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 09 May 2017 17:26:45 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 09 May 2017 17:27:02 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Tue, 09 May 2017 17:27:03 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Tue, 09 May 2017 17:27:06 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 09 May 2017 17:27:08 GMT
RUN echo "deb https://repo.percona.com/apt jessie main" > /etc/apt/sources.list.d/percona.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona
# Thu, 18 May 2017 22:14:13 GMT
ENV MARIADB_MAJOR=10.2
# Tue, 23 May 2017 23:37:59 GMT
ENV MARIADB_VERSION=10.2.6+maria~jessie
# Tue, 23 May 2017 23:38:01 GMT
RUN echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/debian jessie main" > /etc/apt/sources.list.d/mariadb.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Tue, 23 May 2017 23:38:34 GMT
RUN { 		echo mariadb-server-$MARIADB_MAJOR mysql-server/root_password password 'unused'; 		echo mariadb-server-$MARIADB_MAJOR mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		mariadb-server=$MARIADB_VERSION 		percona-xtrabackup 		socat 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Tue, 23 May 2017 23:38:35 GMT
RUN sed -Ei 's/^(bind-address|log)/#&/' /etc/mysql/my.cnf 	&& echo 'skip-host-cache\nskip-name-resolve' | awk '{ print } $1 == "[mysqld]" && c == 0 { c = 1; system("cat") }' /etc/mysql/my.cnf > /tmp/my.cnf 	&& mv /tmp/my.cnf /etc/mysql/my.cnf
# Tue, 23 May 2017 23:38:36 GMT
VOLUME [/var/lib/mysql]
# Tue, 23 May 2017 23:38:37 GMT
COPY file:d559178e6a2929e36791c6a1fa232dc4ac4298ecc446d38972ee1d2a58e30621 in /usr/local/bin/ 
# Tue, 23 May 2017 23:38:38 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 23 May 2017 23:38:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 23 May 2017 23:38:40 GMT
EXPOSE 3306/tcp
# Tue, 23 May 2017 23:38:41 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:10a267c67f423630f3afe5e04bbbc93d578861ddcc54283526222f3ad5e895b9`  
		Last Modified: Mon, 08 May 2017 23:43:59 GMT  
		Size: 52.6 MB (52584016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2dcc7bb2a88d3f5f2e2f57c03798de132417029412461fa5c2a3980a432ac00`  
		Last Modified: Sat, 13 May 2017 07:01:23 GMT  
		Size: 2.1 KB (2066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17e7a0445698ef7ccb14c188ceef9c98785c4adf909704a86a019721e94a8eff`  
		Last Modified: Sat, 13 May 2017 07:01:23 GMT  
		Size: 1.3 MB (1307767 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a61839a176f4d61f2b383652722e0dc8f63ffd12828405b1d7d0facc903b4df`  
		Last Modified: Sat, 13 May 2017 07:01:23 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64675690edb1a9570a687eeb066ea1c9f445ebea6143d0e3315343a8433a6282`  
		Last Modified: Sat, 13 May 2017 07:01:25 GMT  
		Size: 6.7 MB (6674171 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3de17e25148882a0df702a696d70beba7abcf53fd04fc777e1418dbc6304a1c8`  
		Last Modified: Sat, 13 May 2017 07:01:22 GMT  
		Size: 20.8 KB (20827 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f814b22b783e01a2e2dce50c55554ca2777bb4f56098398d96d4532aa7642e1f`  
		Last Modified: Sat, 13 May 2017 07:01:20 GMT  
		Size: 313.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d4ad73d44438d866db56caa7a235fa93ade9fb2e36ab037237622efa26eca1c`  
		Last Modified: Tue, 23 May 2017 23:41:07 GMT  
		Size: 317.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eee4b3a2de3fa5d9c00182997b27583977844c76e69fdeb60b1d2f6f77d51f9e`  
		Last Modified: Tue, 23 May 2017 23:41:23 GMT  
		Size: 71.0 MB (71013035 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6ff359b14f6582df98c9e77da42b2630c9761a3b6f5d0aeb8cf422bcbb15fc9`  
		Last Modified: Tue, 23 May 2017 23:41:07 GMT  
		Size: 2.6 KB (2637 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0b213a7fe9ab848109e8552252be8d1a5143d233d6b07fb8009043d69e9e984`  
		Last Modified: Tue, 23 May 2017 23:41:07 GMT  
		Size: 2.5 KB (2547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3849a95a5d0ae46ae70d15583d33b01791c2787cdbe15ea632eae84055901d3a`  
		Last Modified: Tue, 23 May 2017 23:41:07 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:10.1.24`

```console
$ docker pull mariadb@sha256:c987e36e50dcc02a17b8ea6319dd0f82d0e3ca13a85a3cc94f1857bf5561fd1c
```

-	Platforms:
	-	linux; amd64

### `mariadb:10.1.24` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **134.9 MB (134854164 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ea0322bb409611aa9ecec09eb469ce1da062415f653811387b5e9857f7f7f5e6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Tue, 09 May 2017 17:26:22 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Tue, 09 May 2017 17:26:23 GMT
ENV GOSU_VERSION=1.7
# Tue, 09 May 2017 17:26:43 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 09 May 2017 17:26:45 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 09 May 2017 17:27:02 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Tue, 09 May 2017 17:27:03 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Tue, 09 May 2017 17:27:06 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 09 May 2017 17:27:08 GMT
RUN echo "deb https://repo.percona.com/apt jessie main" > /etc/apt/sources.list.d/percona.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona
# Tue, 09 May 2017 17:27:08 GMT
ENV MARIADB_MAJOR=10.1
# Wed, 31 May 2017 21:29:44 GMT
ENV MARIADB_VERSION=10.1.24+maria-1~jessie
# Wed, 31 May 2017 21:29:45 GMT
RUN echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/debian jessie main" > /etc/apt/sources.list.d/mariadb.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Wed, 31 May 2017 21:30:31 GMT
RUN { 		echo mariadb-server-$MARIADB_MAJOR mysql-server/root_password password 'unused'; 		echo mariadb-server-$MARIADB_MAJOR mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		mariadb-server=$MARIADB_VERSION 		percona-xtrabackup 		socat 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Wed, 31 May 2017 21:30:33 GMT
RUN sed -Ei 's/^(bind-address|log)/#&/' /etc/mysql/my.cnf 	&& echo 'skip-host-cache\nskip-name-resolve' | awk '{ print } $1 == "[mysqld]" && c == 0 { c = 1; system("cat") }' /etc/mysql/my.cnf > /tmp/my.cnf 	&& mv /tmp/my.cnf /etc/mysql/my.cnf
# Wed, 31 May 2017 21:30:34 GMT
VOLUME [/var/lib/mysql]
# Wed, 31 May 2017 21:30:35 GMT
COPY file:d559178e6a2929e36791c6a1fa232dc4ac4298ecc446d38972ee1d2a58e30621 in /usr/local/bin/ 
# Wed, 31 May 2017 21:30:37 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 31 May 2017 21:30:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 31 May 2017 21:30:38 GMT
EXPOSE 3306/tcp
# Wed, 31 May 2017 21:30:39 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:10a267c67f423630f3afe5e04bbbc93d578861ddcc54283526222f3ad5e895b9`  
		Last Modified: Mon, 08 May 2017 23:43:59 GMT  
		Size: 52.6 MB (52584016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2dcc7bb2a88d3f5f2e2f57c03798de132417029412461fa5c2a3980a432ac00`  
		Last Modified: Sat, 13 May 2017 07:01:23 GMT  
		Size: 2.1 KB (2066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17e7a0445698ef7ccb14c188ceef9c98785c4adf909704a86a019721e94a8eff`  
		Last Modified: Sat, 13 May 2017 07:01:23 GMT  
		Size: 1.3 MB (1307767 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a61839a176f4d61f2b383652722e0dc8f63ffd12828405b1d7d0facc903b4df`  
		Last Modified: Sat, 13 May 2017 07:01:23 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64675690edb1a9570a687eeb066ea1c9f445ebea6143d0e3315343a8433a6282`  
		Last Modified: Sat, 13 May 2017 07:01:25 GMT  
		Size: 6.7 MB (6674171 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3de17e25148882a0df702a696d70beba7abcf53fd04fc777e1418dbc6304a1c8`  
		Last Modified: Sat, 13 May 2017 07:01:22 GMT  
		Size: 20.8 KB (20827 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f814b22b783e01a2e2dce50c55554ca2777bb4f56098398d96d4532aa7642e1f`  
		Last Modified: Sat, 13 May 2017 07:01:20 GMT  
		Size: 313.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:527ba05ab10059761c14b9ae7947c26ca16257de47fd325495a8f8e8b0bb13f8`  
		Last Modified: Wed, 31 May 2017 21:32:40 GMT  
		Size: 317.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb46c338b799cf34cfcc57e561219d15f0b22111533697532db9f2872776aa4e`  
		Last Modified: Wed, 31 May 2017 21:32:52 GMT  
		Size: 74.3 MB (74259271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd9db88489b39a0662dc3138dcb689d3504de8b7cc777a47dfae445a3693c6ef`  
		Last Modified: Wed, 31 May 2017 21:32:39 GMT  
		Size: 2.6 KB (2637 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a2c709137569599306d15fa23b15d24cc9c02886f95836e278358b5262597c7`  
		Last Modified: Wed, 31 May 2017 21:32:39 GMT  
		Size: 2.5 KB (2543 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46185579593e9be386e3d4dc2fceae22981d16f3ce556148bb8ad9a0863a4969`  
		Last Modified: Wed, 31 May 2017 21:32:41 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:10.1`

```console
$ docker pull mariadb@sha256:4b54358541679032f6c3a9d9fc944ad96d77ae72fecd6cb44bf18cf97743da24
```

-	Platforms:
	-	linux; amd64

### `mariadb:10.1` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **134.9 MB (134853235 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:98f78d96be9c7f513f21de040d083ee7ba23d74c8f3bc499373e56e93c8e9ec9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Tue, 09 May 2017 17:26:22 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Tue, 09 May 2017 17:26:23 GMT
ENV GOSU_VERSION=1.7
# Tue, 09 May 2017 17:26:43 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 09 May 2017 17:26:45 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 09 May 2017 17:27:02 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Tue, 09 May 2017 17:27:03 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Tue, 09 May 2017 17:27:06 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 09 May 2017 17:27:08 GMT
RUN echo "deb https://repo.percona.com/apt jessie main" > /etc/apt/sources.list.d/percona.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona
# Tue, 09 May 2017 17:27:08 GMT
ENV MARIADB_MAJOR=10.1
# Tue, 09 May 2017 17:27:09 GMT
ENV MARIADB_VERSION=10.1.23+maria-1~jessie
# Tue, 09 May 2017 17:27:11 GMT
RUN echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/debian jessie main" > /etc/apt/sources.list.d/mariadb.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Tue, 09 May 2017 17:27:58 GMT
RUN { 		echo mariadb-server-$MARIADB_MAJOR mysql-server/root_password password 'unused'; 		echo mariadb-server-$MARIADB_MAJOR mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		mariadb-server=$MARIADB_VERSION 		percona-xtrabackup 		socat 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Tue, 09 May 2017 17:28:00 GMT
RUN sed -Ei 's/^(bind-address|log)/#&/' /etc/mysql/my.cnf 	&& echo 'skip-host-cache\nskip-name-resolve' | awk '{ print } $1 == "[mysqld]" && c == 0 { c = 1; system("cat") }' /etc/mysql/my.cnf > /tmp/my.cnf 	&& mv /tmp/my.cnf /etc/mysql/my.cnf
# Tue, 09 May 2017 17:28:01 GMT
VOLUME [/var/lib/mysql]
# Tue, 09 May 2017 17:28:02 GMT
COPY file:d559178e6a2929e36791c6a1fa232dc4ac4298ecc446d38972ee1d2a58e30621 in /usr/local/bin/ 
# Tue, 09 May 2017 17:28:04 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 09 May 2017 17:28:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 09 May 2017 17:28:05 GMT
EXPOSE 3306/tcp
# Tue, 09 May 2017 17:28:06 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:10a267c67f423630f3afe5e04bbbc93d578861ddcc54283526222f3ad5e895b9`  
		Last Modified: Mon, 08 May 2017 23:43:59 GMT  
		Size: 52.6 MB (52584016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2dcc7bb2a88d3f5f2e2f57c03798de132417029412461fa5c2a3980a432ac00`  
		Last Modified: Sat, 13 May 2017 07:01:23 GMT  
		Size: 2.1 KB (2066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17e7a0445698ef7ccb14c188ceef9c98785c4adf909704a86a019721e94a8eff`  
		Last Modified: Sat, 13 May 2017 07:01:23 GMT  
		Size: 1.3 MB (1307767 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a61839a176f4d61f2b383652722e0dc8f63ffd12828405b1d7d0facc903b4df`  
		Last Modified: Sat, 13 May 2017 07:01:23 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64675690edb1a9570a687eeb066ea1c9f445ebea6143d0e3315343a8433a6282`  
		Last Modified: Sat, 13 May 2017 07:01:25 GMT  
		Size: 6.7 MB (6674171 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3de17e25148882a0df702a696d70beba7abcf53fd04fc777e1418dbc6304a1c8`  
		Last Modified: Sat, 13 May 2017 07:01:22 GMT  
		Size: 20.8 KB (20827 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f814b22b783e01a2e2dce50c55554ca2777bb4f56098398d96d4532aa7642e1f`  
		Last Modified: Sat, 13 May 2017 07:01:20 GMT  
		Size: 313.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:733ce1f03439992c32c10b74923676306c6ebb61d59aaeb7d9250ffa137e1399`  
		Last Modified: Sat, 13 May 2017 07:02:31 GMT  
		Size: 318.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb7b719835fd8bb5cda4722b48aaf6b178ac05207cb469627672ba1fa3551cba`  
		Last Modified: Sat, 13 May 2017 07:02:48 GMT  
		Size: 74.3 MB (74258339 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e13421f79ac0d6330a7a580fa1514abaf1d7764d141d5b4a67be0914d83d9178`  
		Last Modified: Sat, 13 May 2017 07:02:31 GMT  
		Size: 2.6 KB (2637 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d3f823577299987f655c91307c44acf32cb3933366e7c80681bde43372f2534`  
		Last Modified: Sat, 13 May 2017 07:02:31 GMT  
		Size: 2.5 KB (2545 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4f4cbdfcf7c3ba431b7820cb9c35c177adf9d648cb54878e23b80c829e1eac3`  
		Last Modified: Sat, 13 May 2017 07:02:31 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:10`

```console
$ docker pull mariadb@sha256:4b54358541679032f6c3a9d9fc944ad96d77ae72fecd6cb44bf18cf97743da24
```

-	Platforms:
	-	linux; amd64

### `mariadb:10` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **134.9 MB (134853235 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:98f78d96be9c7f513f21de040d083ee7ba23d74c8f3bc499373e56e93c8e9ec9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Tue, 09 May 2017 17:26:22 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Tue, 09 May 2017 17:26:23 GMT
ENV GOSU_VERSION=1.7
# Tue, 09 May 2017 17:26:43 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 09 May 2017 17:26:45 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 09 May 2017 17:27:02 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Tue, 09 May 2017 17:27:03 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Tue, 09 May 2017 17:27:06 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 09 May 2017 17:27:08 GMT
RUN echo "deb https://repo.percona.com/apt jessie main" > /etc/apt/sources.list.d/percona.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona
# Tue, 09 May 2017 17:27:08 GMT
ENV MARIADB_MAJOR=10.1
# Tue, 09 May 2017 17:27:09 GMT
ENV MARIADB_VERSION=10.1.23+maria-1~jessie
# Tue, 09 May 2017 17:27:11 GMT
RUN echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/debian jessie main" > /etc/apt/sources.list.d/mariadb.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Tue, 09 May 2017 17:27:58 GMT
RUN { 		echo mariadb-server-$MARIADB_MAJOR mysql-server/root_password password 'unused'; 		echo mariadb-server-$MARIADB_MAJOR mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		mariadb-server=$MARIADB_VERSION 		percona-xtrabackup 		socat 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Tue, 09 May 2017 17:28:00 GMT
RUN sed -Ei 's/^(bind-address|log)/#&/' /etc/mysql/my.cnf 	&& echo 'skip-host-cache\nskip-name-resolve' | awk '{ print } $1 == "[mysqld]" && c == 0 { c = 1; system("cat") }' /etc/mysql/my.cnf > /tmp/my.cnf 	&& mv /tmp/my.cnf /etc/mysql/my.cnf
# Tue, 09 May 2017 17:28:01 GMT
VOLUME [/var/lib/mysql]
# Tue, 09 May 2017 17:28:02 GMT
COPY file:d559178e6a2929e36791c6a1fa232dc4ac4298ecc446d38972ee1d2a58e30621 in /usr/local/bin/ 
# Tue, 09 May 2017 17:28:04 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 09 May 2017 17:28:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 09 May 2017 17:28:05 GMT
EXPOSE 3306/tcp
# Tue, 09 May 2017 17:28:06 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:10a267c67f423630f3afe5e04bbbc93d578861ddcc54283526222f3ad5e895b9`  
		Last Modified: Mon, 08 May 2017 23:43:59 GMT  
		Size: 52.6 MB (52584016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2dcc7bb2a88d3f5f2e2f57c03798de132417029412461fa5c2a3980a432ac00`  
		Last Modified: Sat, 13 May 2017 07:01:23 GMT  
		Size: 2.1 KB (2066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17e7a0445698ef7ccb14c188ceef9c98785c4adf909704a86a019721e94a8eff`  
		Last Modified: Sat, 13 May 2017 07:01:23 GMT  
		Size: 1.3 MB (1307767 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a61839a176f4d61f2b383652722e0dc8f63ffd12828405b1d7d0facc903b4df`  
		Last Modified: Sat, 13 May 2017 07:01:23 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64675690edb1a9570a687eeb066ea1c9f445ebea6143d0e3315343a8433a6282`  
		Last Modified: Sat, 13 May 2017 07:01:25 GMT  
		Size: 6.7 MB (6674171 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3de17e25148882a0df702a696d70beba7abcf53fd04fc777e1418dbc6304a1c8`  
		Last Modified: Sat, 13 May 2017 07:01:22 GMT  
		Size: 20.8 KB (20827 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f814b22b783e01a2e2dce50c55554ca2777bb4f56098398d96d4532aa7642e1f`  
		Last Modified: Sat, 13 May 2017 07:01:20 GMT  
		Size: 313.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:733ce1f03439992c32c10b74923676306c6ebb61d59aaeb7d9250ffa137e1399`  
		Last Modified: Sat, 13 May 2017 07:02:31 GMT  
		Size: 318.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb7b719835fd8bb5cda4722b48aaf6b178ac05207cb469627672ba1fa3551cba`  
		Last Modified: Sat, 13 May 2017 07:02:48 GMT  
		Size: 74.3 MB (74258339 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e13421f79ac0d6330a7a580fa1514abaf1d7764d141d5b4a67be0914d83d9178`  
		Last Modified: Sat, 13 May 2017 07:02:31 GMT  
		Size: 2.6 KB (2637 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d3f823577299987f655c91307c44acf32cb3933366e7c80681bde43372f2534`  
		Last Modified: Sat, 13 May 2017 07:02:31 GMT  
		Size: 2.5 KB (2545 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4f4cbdfcf7c3ba431b7820cb9c35c177adf9d648cb54878e23b80c829e1eac3`  
		Last Modified: Sat, 13 May 2017 07:02:31 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:latest`

```console
$ docker pull mariadb@sha256:4b54358541679032f6c3a9d9fc944ad96d77ae72fecd6cb44bf18cf97743da24
```

-	Platforms:
	-	linux; amd64

### `mariadb:latest` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **134.9 MB (134853235 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:98f78d96be9c7f513f21de040d083ee7ba23d74c8f3bc499373e56e93c8e9ec9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Tue, 09 May 2017 17:26:22 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Tue, 09 May 2017 17:26:23 GMT
ENV GOSU_VERSION=1.7
# Tue, 09 May 2017 17:26:43 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 09 May 2017 17:26:45 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 09 May 2017 17:27:02 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Tue, 09 May 2017 17:27:03 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Tue, 09 May 2017 17:27:06 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 09 May 2017 17:27:08 GMT
RUN echo "deb https://repo.percona.com/apt jessie main" > /etc/apt/sources.list.d/percona.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona
# Tue, 09 May 2017 17:27:08 GMT
ENV MARIADB_MAJOR=10.1
# Tue, 09 May 2017 17:27:09 GMT
ENV MARIADB_VERSION=10.1.23+maria-1~jessie
# Tue, 09 May 2017 17:27:11 GMT
RUN echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/debian jessie main" > /etc/apt/sources.list.d/mariadb.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Tue, 09 May 2017 17:27:58 GMT
RUN { 		echo mariadb-server-$MARIADB_MAJOR mysql-server/root_password password 'unused'; 		echo mariadb-server-$MARIADB_MAJOR mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		mariadb-server=$MARIADB_VERSION 		percona-xtrabackup 		socat 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Tue, 09 May 2017 17:28:00 GMT
RUN sed -Ei 's/^(bind-address|log)/#&/' /etc/mysql/my.cnf 	&& echo 'skip-host-cache\nskip-name-resolve' | awk '{ print } $1 == "[mysqld]" && c == 0 { c = 1; system("cat") }' /etc/mysql/my.cnf > /tmp/my.cnf 	&& mv /tmp/my.cnf /etc/mysql/my.cnf
# Tue, 09 May 2017 17:28:01 GMT
VOLUME [/var/lib/mysql]
# Tue, 09 May 2017 17:28:02 GMT
COPY file:d559178e6a2929e36791c6a1fa232dc4ac4298ecc446d38972ee1d2a58e30621 in /usr/local/bin/ 
# Tue, 09 May 2017 17:28:04 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 09 May 2017 17:28:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 09 May 2017 17:28:05 GMT
EXPOSE 3306/tcp
# Tue, 09 May 2017 17:28:06 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:10a267c67f423630f3afe5e04bbbc93d578861ddcc54283526222f3ad5e895b9`  
		Last Modified: Mon, 08 May 2017 23:43:59 GMT  
		Size: 52.6 MB (52584016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2dcc7bb2a88d3f5f2e2f57c03798de132417029412461fa5c2a3980a432ac00`  
		Last Modified: Sat, 13 May 2017 07:01:23 GMT  
		Size: 2.1 KB (2066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17e7a0445698ef7ccb14c188ceef9c98785c4adf909704a86a019721e94a8eff`  
		Last Modified: Sat, 13 May 2017 07:01:23 GMT  
		Size: 1.3 MB (1307767 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a61839a176f4d61f2b383652722e0dc8f63ffd12828405b1d7d0facc903b4df`  
		Last Modified: Sat, 13 May 2017 07:01:23 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64675690edb1a9570a687eeb066ea1c9f445ebea6143d0e3315343a8433a6282`  
		Last Modified: Sat, 13 May 2017 07:01:25 GMT  
		Size: 6.7 MB (6674171 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3de17e25148882a0df702a696d70beba7abcf53fd04fc777e1418dbc6304a1c8`  
		Last Modified: Sat, 13 May 2017 07:01:22 GMT  
		Size: 20.8 KB (20827 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f814b22b783e01a2e2dce50c55554ca2777bb4f56098398d96d4532aa7642e1f`  
		Last Modified: Sat, 13 May 2017 07:01:20 GMT  
		Size: 313.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:733ce1f03439992c32c10b74923676306c6ebb61d59aaeb7d9250ffa137e1399`  
		Last Modified: Sat, 13 May 2017 07:02:31 GMT  
		Size: 318.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb7b719835fd8bb5cda4722b48aaf6b178ac05207cb469627672ba1fa3551cba`  
		Last Modified: Sat, 13 May 2017 07:02:48 GMT  
		Size: 74.3 MB (74258339 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e13421f79ac0d6330a7a580fa1514abaf1d7764d141d5b4a67be0914d83d9178`  
		Last Modified: Sat, 13 May 2017 07:02:31 GMT  
		Size: 2.6 KB (2637 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d3f823577299987f655c91307c44acf32cb3933366e7c80681bde43372f2534`  
		Last Modified: Sat, 13 May 2017 07:02:31 GMT  
		Size: 2.5 KB (2545 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4f4cbdfcf7c3ba431b7820cb9c35c177adf9d648cb54878e23b80c829e1eac3`  
		Last Modified: Sat, 13 May 2017 07:02:31 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:10.0.31`

```console
$ docker pull mariadb@sha256:8d4ed8fede923ed6b63cb5645a2f7a5dc2a65976e29c7a28342384ad9e57e5cc
```

-	Platforms:
	-	linux; amd64

### `mariadb:10.0.31` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **119.7 MB (119737533 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:15044737fe1ab680923a94e3c345a89828ca9ea475b1bce1e2adc3478ace8392`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Tue, 09 May 2017 17:26:22 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Tue, 09 May 2017 17:26:23 GMT
ENV GOSU_VERSION=1.7
# Tue, 09 May 2017 17:26:43 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 09 May 2017 17:26:45 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 09 May 2017 17:27:02 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Tue, 09 May 2017 17:27:03 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Tue, 09 May 2017 17:27:06 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 09 May 2017 17:27:08 GMT
RUN echo "deb https://repo.percona.com/apt jessie main" > /etc/apt/sources.list.d/percona.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona
# Tue, 09 May 2017 17:28:25 GMT
ENV MARIADB_MAJOR=10.0
# Tue, 23 May 2017 23:39:03 GMT
ENV MARIADB_VERSION=10.0.31+maria-1~jessie
# Tue, 23 May 2017 23:39:04 GMT
RUN echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/debian jessie main" > /etc/apt/sources.list.d/mariadb.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Tue, 23 May 2017 23:39:49 GMT
RUN { 		echo mariadb-server-$MARIADB_MAJOR mysql-server/root_password password 'unused'; 		echo mariadb-server-$MARIADB_MAJOR mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		mariadb-server=$MARIADB_VERSION 		percona-xtrabackup 		socat 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Tue, 23 May 2017 23:39:50 GMT
RUN sed -Ei 's/^(bind-address|log)/#&/' /etc/mysql/my.cnf 	&& echo 'skip-host-cache\nskip-name-resolve' | awk '{ print } $1 == "[mysqld]" && c == 0 { c = 1; system("cat") }' /etc/mysql/my.cnf > /tmp/my.cnf 	&& mv /tmp/my.cnf /etc/mysql/my.cnf
# Tue, 23 May 2017 23:39:51 GMT
VOLUME [/var/lib/mysql]
# Tue, 23 May 2017 23:39:52 GMT
COPY file:d559178e6a2929e36791c6a1fa232dc4ac4298ecc446d38972ee1d2a58e30621 in /usr/local/bin/ 
# Tue, 23 May 2017 23:39:53 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 23 May 2017 23:39:54 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 23 May 2017 23:39:55 GMT
EXPOSE 3306/tcp
# Tue, 23 May 2017 23:39:55 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:10a267c67f423630f3afe5e04bbbc93d578861ddcc54283526222f3ad5e895b9`  
		Last Modified: Mon, 08 May 2017 23:43:59 GMT  
		Size: 52.6 MB (52584016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2dcc7bb2a88d3f5f2e2f57c03798de132417029412461fa5c2a3980a432ac00`  
		Last Modified: Sat, 13 May 2017 07:01:23 GMT  
		Size: 2.1 KB (2066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17e7a0445698ef7ccb14c188ceef9c98785c4adf909704a86a019721e94a8eff`  
		Last Modified: Sat, 13 May 2017 07:01:23 GMT  
		Size: 1.3 MB (1307767 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a61839a176f4d61f2b383652722e0dc8f63ffd12828405b1d7d0facc903b4df`  
		Last Modified: Sat, 13 May 2017 07:01:23 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64675690edb1a9570a687eeb066ea1c9f445ebea6143d0e3315343a8433a6282`  
		Last Modified: Sat, 13 May 2017 07:01:25 GMT  
		Size: 6.7 MB (6674171 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3de17e25148882a0df702a696d70beba7abcf53fd04fc777e1418dbc6304a1c8`  
		Last Modified: Sat, 13 May 2017 07:01:22 GMT  
		Size: 20.8 KB (20827 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f814b22b783e01a2e2dce50c55554ca2777bb4f56098398d96d4532aa7642e1f`  
		Last Modified: Sat, 13 May 2017 07:01:20 GMT  
		Size: 313.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f18f1acf8091273ad661d6462b88671edcc46b3a61d949daab0ae1a5d4dbe05`  
		Last Modified: Tue, 23 May 2017 23:43:46 GMT  
		Size: 317.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78c6a67789f8a96c170cb44c4f6a4b68440bb4a5c261a7967df41eed27c52e1b`  
		Last Modified: Tue, 23 May 2017 23:44:13 GMT  
		Size: 59.1 MB (59142788 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66d12d3e00ed685fe37b4550a623a78bf1d45c22eeedae3afec1107e51a00964`  
		Last Modified: Tue, 23 May 2017 23:43:46 GMT  
		Size: 2.5 KB (2485 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b5ba6f80114b67d51a69b1d5f618d5567886a017cf762e4f155fbbdc905b5f4`  
		Last Modified: Tue, 23 May 2017 23:43:46 GMT  
		Size: 2.5 KB (2547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:089ccb3350e68f4f9865067c31a8f64fddf28e043888f547dcc2266180d704da`  
		Last Modified: Tue, 23 May 2017 23:43:46 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:10.0`

```console
$ docker pull mariadb@sha256:8d4ed8fede923ed6b63cb5645a2f7a5dc2a65976e29c7a28342384ad9e57e5cc
```

-	Platforms:
	-	linux; amd64

### `mariadb:10.0` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **119.7 MB (119737533 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:15044737fe1ab680923a94e3c345a89828ca9ea475b1bce1e2adc3478ace8392`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Tue, 09 May 2017 17:26:22 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Tue, 09 May 2017 17:26:23 GMT
ENV GOSU_VERSION=1.7
# Tue, 09 May 2017 17:26:43 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 09 May 2017 17:26:45 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 09 May 2017 17:27:02 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Tue, 09 May 2017 17:27:03 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Tue, 09 May 2017 17:27:06 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 09 May 2017 17:27:08 GMT
RUN echo "deb https://repo.percona.com/apt jessie main" > /etc/apt/sources.list.d/percona.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona
# Tue, 09 May 2017 17:28:25 GMT
ENV MARIADB_MAJOR=10.0
# Tue, 23 May 2017 23:39:03 GMT
ENV MARIADB_VERSION=10.0.31+maria-1~jessie
# Tue, 23 May 2017 23:39:04 GMT
RUN echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/debian jessie main" > /etc/apt/sources.list.d/mariadb.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Tue, 23 May 2017 23:39:49 GMT
RUN { 		echo mariadb-server-$MARIADB_MAJOR mysql-server/root_password password 'unused'; 		echo mariadb-server-$MARIADB_MAJOR mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		mariadb-server=$MARIADB_VERSION 		percona-xtrabackup 		socat 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Tue, 23 May 2017 23:39:50 GMT
RUN sed -Ei 's/^(bind-address|log)/#&/' /etc/mysql/my.cnf 	&& echo 'skip-host-cache\nskip-name-resolve' | awk '{ print } $1 == "[mysqld]" && c == 0 { c = 1; system("cat") }' /etc/mysql/my.cnf > /tmp/my.cnf 	&& mv /tmp/my.cnf /etc/mysql/my.cnf
# Tue, 23 May 2017 23:39:51 GMT
VOLUME [/var/lib/mysql]
# Tue, 23 May 2017 23:39:52 GMT
COPY file:d559178e6a2929e36791c6a1fa232dc4ac4298ecc446d38972ee1d2a58e30621 in /usr/local/bin/ 
# Tue, 23 May 2017 23:39:53 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 23 May 2017 23:39:54 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 23 May 2017 23:39:55 GMT
EXPOSE 3306/tcp
# Tue, 23 May 2017 23:39:55 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:10a267c67f423630f3afe5e04bbbc93d578861ddcc54283526222f3ad5e895b9`  
		Last Modified: Mon, 08 May 2017 23:43:59 GMT  
		Size: 52.6 MB (52584016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2dcc7bb2a88d3f5f2e2f57c03798de132417029412461fa5c2a3980a432ac00`  
		Last Modified: Sat, 13 May 2017 07:01:23 GMT  
		Size: 2.1 KB (2066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17e7a0445698ef7ccb14c188ceef9c98785c4adf909704a86a019721e94a8eff`  
		Last Modified: Sat, 13 May 2017 07:01:23 GMT  
		Size: 1.3 MB (1307767 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a61839a176f4d61f2b383652722e0dc8f63ffd12828405b1d7d0facc903b4df`  
		Last Modified: Sat, 13 May 2017 07:01:23 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64675690edb1a9570a687eeb066ea1c9f445ebea6143d0e3315343a8433a6282`  
		Last Modified: Sat, 13 May 2017 07:01:25 GMT  
		Size: 6.7 MB (6674171 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3de17e25148882a0df702a696d70beba7abcf53fd04fc777e1418dbc6304a1c8`  
		Last Modified: Sat, 13 May 2017 07:01:22 GMT  
		Size: 20.8 KB (20827 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f814b22b783e01a2e2dce50c55554ca2777bb4f56098398d96d4532aa7642e1f`  
		Last Modified: Sat, 13 May 2017 07:01:20 GMT  
		Size: 313.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f18f1acf8091273ad661d6462b88671edcc46b3a61d949daab0ae1a5d4dbe05`  
		Last Modified: Tue, 23 May 2017 23:43:46 GMT  
		Size: 317.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78c6a67789f8a96c170cb44c4f6a4b68440bb4a5c261a7967df41eed27c52e1b`  
		Last Modified: Tue, 23 May 2017 23:44:13 GMT  
		Size: 59.1 MB (59142788 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66d12d3e00ed685fe37b4550a623a78bf1d45c22eeedae3afec1107e51a00964`  
		Last Modified: Tue, 23 May 2017 23:43:46 GMT  
		Size: 2.5 KB (2485 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b5ba6f80114b67d51a69b1d5f618d5567886a017cf762e4f155fbbdc905b5f4`  
		Last Modified: Tue, 23 May 2017 23:43:46 GMT  
		Size: 2.5 KB (2547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:089ccb3350e68f4f9865067c31a8f64fddf28e043888f547dcc2266180d704da`  
		Last Modified: Tue, 23 May 2017 23:43:46 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:5.5.56`

```console
$ docker pull mariadb@sha256:d54c4d3118797cc4f9293f04d784430befadb872f9c8d3a2eb53702788669d42
```

-	Platforms:
	-	linux; amd64

### `mariadb:5.5.56` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **98.4 MB (98435578 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:058eaac11f23736ba985b26ea2b1e8e197d682777515a2f254ea23f6cdc6d8d1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 08 May 2017 23:41:02 GMT
ADD file:5f4eeb9d08ac23595a4130e8b7689bd25379e92fecf5f62e18ea0f1c95d73c33 in / 
# Mon, 08 May 2017 23:41:17 GMT
CMD ["/bin/bash"]
# Tue, 09 May 2017 17:29:41 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Tue, 09 May 2017 17:29:41 GMT
ENV GOSU_VERSION=1.7
# Tue, 09 May 2017 17:29:57 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 09 May 2017 17:29:59 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 09 May 2017 17:30:10 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Tue, 09 May 2017 17:30:11 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Tue, 09 May 2017 17:30:14 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 09 May 2017 17:30:15 GMT
RUN echo "deb https://repo.percona.com/apt wheezy main" > /etc/apt/sources.list.d/percona.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona
# Tue, 09 May 2017 17:30:16 GMT
ENV MARIADB_MAJOR=5.5
# Tue, 09 May 2017 17:30:16 GMT
ENV MARIADB_VERSION=5.5.56+maria-1~wheezy
# Tue, 09 May 2017 17:30:18 GMT
RUN echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/debian wheezy main" > /etc/apt/sources.list.d/mariadb.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Tue, 09 May 2017 17:30:32 GMT
RUN { 		echo mariadb-server-$MARIADB_MAJOR mysql-server/root_password password 'unused'; 		echo mariadb-server-$MARIADB_MAJOR mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		mariadb-server=$MARIADB_VERSION 		percona-xtrabackup 		socat 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Tue, 09 May 2017 17:30:34 GMT
RUN sed -Ei 's/^(bind-address|log)/#&/' /etc/mysql/my.cnf 	&& echo 'skip-host-cache\nskip-name-resolve' | awk '{ print } $1 == "[mysqld]" && c == 0 { c = 1; system("cat") }' /etc/mysql/my.cnf > /tmp/my.cnf 	&& mv /tmp/my.cnf /etc/mysql/my.cnf
# Tue, 09 May 2017 17:30:34 GMT
VOLUME [/var/lib/mysql]
# Tue, 09 May 2017 17:30:35 GMT
COPY file:d559178e6a2929e36791c6a1fa232dc4ac4298ecc446d38972ee1d2a58e30621 in /usr/local/bin/ 
# Tue, 09 May 2017 17:30:37 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 09 May 2017 17:30:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 09 May 2017 17:30:38 GMT
EXPOSE 3306/tcp
# Tue, 09 May 2017 17:30:39 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:af65d799fdb4729bcd56cfa8da95fe4f787ead4b4f434e878c60b3dfa0cebba1`  
		Last Modified: Mon, 08 May 2017 23:58:57 GMT  
		Size: 38.1 MB (38116549 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e8efa55a92d8618a9f25a44414b89b928bc8a51a909d71a58bc718773d0253e`  
		Last Modified: Sat, 13 May 2017 07:04:26 GMT  
		Size: 1.7 KB (1711 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c1d817525d2f519c833abd26dd38aafa055e8f481c540c7967e74f715c59229`  
		Last Modified: Sat, 13 May 2017 07:04:26 GMT  
		Size: 1.3 MB (1262082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c6aba16ff267ff2e7cb7cd219ea3eff28f0b34c2f136337ec07b4c6b64d9ffb`  
		Last Modified: Sat, 13 May 2017 07:04:25 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4bdefd8b242d18090206ff02b69fe48f12e45c191735cd6935178ce4ae1bcd5`  
		Last Modified: Sat, 13 May 2017 07:04:27 GMT  
		Size: 6.0 MB (5995896 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17681b79e744a72003e2f2eb91b6a5953d2c9da72b5efd5a26668f37d22423dd`  
		Last Modified: Sat, 13 May 2017 07:04:24 GMT  
		Size: 20.8 KB (20800 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fbae260bc33c9ff65a80a746d56c58b5495860de83ece97eafe151da499c865`  
		Last Modified: Sat, 13 May 2017 07:04:22 GMT  
		Size: 316.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6c3e99f0de10ea0ccc3a2edf99d39dc0efb9cb52100666b04c9b59029f09727`  
		Last Modified: Sat, 13 May 2017 07:04:22 GMT  
		Size: 322.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2e490ebbc1514e86079769435bd894e96eca281f51b4382c86c7470c673a2f0`  
		Last Modified: Sat, 13 May 2017 07:04:36 GMT  
		Size: 53.0 MB (53032637 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:286b002301060d54139ae7ff793f9aaddb032d67b30e9027b6530406b0a7d497`  
		Last Modified: Sat, 13 May 2017 07:04:22 GMT  
		Size: 2.5 KB (2484 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:031e4afe30e7b54253f6d3009978b23738b541af38e053885b089531df3749ad`  
		Last Modified: Sat, 13 May 2017 07:04:23 GMT  
		Size: 2.5 KB (2545 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cace190d99acfdf93823d6926ede4d3943e9bd428fa04eec8a89f34c847e4d7a`  
		Last Modified: Sat, 13 May 2017 07:04:22 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:5.5`

```console
$ docker pull mariadb@sha256:d54c4d3118797cc4f9293f04d784430befadb872f9c8d3a2eb53702788669d42
```

-	Platforms:
	-	linux; amd64

### `mariadb:5.5` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **98.4 MB (98435578 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:058eaac11f23736ba985b26ea2b1e8e197d682777515a2f254ea23f6cdc6d8d1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 08 May 2017 23:41:02 GMT
ADD file:5f4eeb9d08ac23595a4130e8b7689bd25379e92fecf5f62e18ea0f1c95d73c33 in / 
# Mon, 08 May 2017 23:41:17 GMT
CMD ["/bin/bash"]
# Tue, 09 May 2017 17:29:41 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Tue, 09 May 2017 17:29:41 GMT
ENV GOSU_VERSION=1.7
# Tue, 09 May 2017 17:29:57 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 09 May 2017 17:29:59 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 09 May 2017 17:30:10 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Tue, 09 May 2017 17:30:11 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Tue, 09 May 2017 17:30:14 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 09 May 2017 17:30:15 GMT
RUN echo "deb https://repo.percona.com/apt wheezy main" > /etc/apt/sources.list.d/percona.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona
# Tue, 09 May 2017 17:30:16 GMT
ENV MARIADB_MAJOR=5.5
# Tue, 09 May 2017 17:30:16 GMT
ENV MARIADB_VERSION=5.5.56+maria-1~wheezy
# Tue, 09 May 2017 17:30:18 GMT
RUN echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/debian wheezy main" > /etc/apt/sources.list.d/mariadb.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Tue, 09 May 2017 17:30:32 GMT
RUN { 		echo mariadb-server-$MARIADB_MAJOR mysql-server/root_password password 'unused'; 		echo mariadb-server-$MARIADB_MAJOR mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		mariadb-server=$MARIADB_VERSION 		percona-xtrabackup 		socat 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Tue, 09 May 2017 17:30:34 GMT
RUN sed -Ei 's/^(bind-address|log)/#&/' /etc/mysql/my.cnf 	&& echo 'skip-host-cache\nskip-name-resolve' | awk '{ print } $1 == "[mysqld]" && c == 0 { c = 1; system("cat") }' /etc/mysql/my.cnf > /tmp/my.cnf 	&& mv /tmp/my.cnf /etc/mysql/my.cnf
# Tue, 09 May 2017 17:30:34 GMT
VOLUME [/var/lib/mysql]
# Tue, 09 May 2017 17:30:35 GMT
COPY file:d559178e6a2929e36791c6a1fa232dc4ac4298ecc446d38972ee1d2a58e30621 in /usr/local/bin/ 
# Tue, 09 May 2017 17:30:37 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 09 May 2017 17:30:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 09 May 2017 17:30:38 GMT
EXPOSE 3306/tcp
# Tue, 09 May 2017 17:30:39 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:af65d799fdb4729bcd56cfa8da95fe4f787ead4b4f434e878c60b3dfa0cebba1`  
		Last Modified: Mon, 08 May 2017 23:58:57 GMT  
		Size: 38.1 MB (38116549 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e8efa55a92d8618a9f25a44414b89b928bc8a51a909d71a58bc718773d0253e`  
		Last Modified: Sat, 13 May 2017 07:04:26 GMT  
		Size: 1.7 KB (1711 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c1d817525d2f519c833abd26dd38aafa055e8f481c540c7967e74f715c59229`  
		Last Modified: Sat, 13 May 2017 07:04:26 GMT  
		Size: 1.3 MB (1262082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c6aba16ff267ff2e7cb7cd219ea3eff28f0b34c2f136337ec07b4c6b64d9ffb`  
		Last Modified: Sat, 13 May 2017 07:04:25 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4bdefd8b242d18090206ff02b69fe48f12e45c191735cd6935178ce4ae1bcd5`  
		Last Modified: Sat, 13 May 2017 07:04:27 GMT  
		Size: 6.0 MB (5995896 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17681b79e744a72003e2f2eb91b6a5953d2c9da72b5efd5a26668f37d22423dd`  
		Last Modified: Sat, 13 May 2017 07:04:24 GMT  
		Size: 20.8 KB (20800 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fbae260bc33c9ff65a80a746d56c58b5495860de83ece97eafe151da499c865`  
		Last Modified: Sat, 13 May 2017 07:04:22 GMT  
		Size: 316.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6c3e99f0de10ea0ccc3a2edf99d39dc0efb9cb52100666b04c9b59029f09727`  
		Last Modified: Sat, 13 May 2017 07:04:22 GMT  
		Size: 322.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2e490ebbc1514e86079769435bd894e96eca281f51b4382c86c7470c673a2f0`  
		Last Modified: Sat, 13 May 2017 07:04:36 GMT  
		Size: 53.0 MB (53032637 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:286b002301060d54139ae7ff793f9aaddb032d67b30e9027b6530406b0a7d497`  
		Last Modified: Sat, 13 May 2017 07:04:22 GMT  
		Size: 2.5 KB (2484 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:031e4afe30e7b54253f6d3009978b23738b541af38e053885b089531df3749ad`  
		Last Modified: Sat, 13 May 2017 07:04:23 GMT  
		Size: 2.5 KB (2545 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cace190d99acfdf93823d6926ede4d3943e9bd428fa04eec8a89f34c847e4d7a`  
		Last Modified: Sat, 13 May 2017 07:04:22 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:5`

```console
$ docker pull mariadb@sha256:d54c4d3118797cc4f9293f04d784430befadb872f9c8d3a2eb53702788669d42
```

-	Platforms:
	-	linux; amd64

### `mariadb:5` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **98.4 MB (98435578 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:058eaac11f23736ba985b26ea2b1e8e197d682777515a2f254ea23f6cdc6d8d1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 08 May 2017 23:41:02 GMT
ADD file:5f4eeb9d08ac23595a4130e8b7689bd25379e92fecf5f62e18ea0f1c95d73c33 in / 
# Mon, 08 May 2017 23:41:17 GMT
CMD ["/bin/bash"]
# Tue, 09 May 2017 17:29:41 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Tue, 09 May 2017 17:29:41 GMT
ENV GOSU_VERSION=1.7
# Tue, 09 May 2017 17:29:57 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 09 May 2017 17:29:59 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 09 May 2017 17:30:10 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Tue, 09 May 2017 17:30:11 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Tue, 09 May 2017 17:30:14 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 09 May 2017 17:30:15 GMT
RUN echo "deb https://repo.percona.com/apt wheezy main" > /etc/apt/sources.list.d/percona.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona
# Tue, 09 May 2017 17:30:16 GMT
ENV MARIADB_MAJOR=5.5
# Tue, 09 May 2017 17:30:16 GMT
ENV MARIADB_VERSION=5.5.56+maria-1~wheezy
# Tue, 09 May 2017 17:30:18 GMT
RUN echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/debian wheezy main" > /etc/apt/sources.list.d/mariadb.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Tue, 09 May 2017 17:30:32 GMT
RUN { 		echo mariadb-server-$MARIADB_MAJOR mysql-server/root_password password 'unused'; 		echo mariadb-server-$MARIADB_MAJOR mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		mariadb-server=$MARIADB_VERSION 		percona-xtrabackup 		socat 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Tue, 09 May 2017 17:30:34 GMT
RUN sed -Ei 's/^(bind-address|log)/#&/' /etc/mysql/my.cnf 	&& echo 'skip-host-cache\nskip-name-resolve' | awk '{ print } $1 == "[mysqld]" && c == 0 { c = 1; system("cat") }' /etc/mysql/my.cnf > /tmp/my.cnf 	&& mv /tmp/my.cnf /etc/mysql/my.cnf
# Tue, 09 May 2017 17:30:34 GMT
VOLUME [/var/lib/mysql]
# Tue, 09 May 2017 17:30:35 GMT
COPY file:d559178e6a2929e36791c6a1fa232dc4ac4298ecc446d38972ee1d2a58e30621 in /usr/local/bin/ 
# Tue, 09 May 2017 17:30:37 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 09 May 2017 17:30:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 09 May 2017 17:30:38 GMT
EXPOSE 3306/tcp
# Tue, 09 May 2017 17:30:39 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:af65d799fdb4729bcd56cfa8da95fe4f787ead4b4f434e878c60b3dfa0cebba1`  
		Last Modified: Mon, 08 May 2017 23:58:57 GMT  
		Size: 38.1 MB (38116549 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e8efa55a92d8618a9f25a44414b89b928bc8a51a909d71a58bc718773d0253e`  
		Last Modified: Sat, 13 May 2017 07:04:26 GMT  
		Size: 1.7 KB (1711 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c1d817525d2f519c833abd26dd38aafa055e8f481c540c7967e74f715c59229`  
		Last Modified: Sat, 13 May 2017 07:04:26 GMT  
		Size: 1.3 MB (1262082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c6aba16ff267ff2e7cb7cd219ea3eff28f0b34c2f136337ec07b4c6b64d9ffb`  
		Last Modified: Sat, 13 May 2017 07:04:25 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4bdefd8b242d18090206ff02b69fe48f12e45c191735cd6935178ce4ae1bcd5`  
		Last Modified: Sat, 13 May 2017 07:04:27 GMT  
		Size: 6.0 MB (5995896 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17681b79e744a72003e2f2eb91b6a5953d2c9da72b5efd5a26668f37d22423dd`  
		Last Modified: Sat, 13 May 2017 07:04:24 GMT  
		Size: 20.8 KB (20800 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fbae260bc33c9ff65a80a746d56c58b5495860de83ece97eafe151da499c865`  
		Last Modified: Sat, 13 May 2017 07:04:22 GMT  
		Size: 316.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6c3e99f0de10ea0ccc3a2edf99d39dc0efb9cb52100666b04c9b59029f09727`  
		Last Modified: Sat, 13 May 2017 07:04:22 GMT  
		Size: 322.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2e490ebbc1514e86079769435bd894e96eca281f51b4382c86c7470c673a2f0`  
		Last Modified: Sat, 13 May 2017 07:04:36 GMT  
		Size: 53.0 MB (53032637 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:286b002301060d54139ae7ff793f9aaddb032d67b30e9027b6530406b0a7d497`  
		Last Modified: Sat, 13 May 2017 07:04:22 GMT  
		Size: 2.5 KB (2484 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:031e4afe30e7b54253f6d3009978b23738b541af38e053885b089531df3749ad`  
		Last Modified: Sat, 13 May 2017 07:04:23 GMT  
		Size: 2.5 KB (2545 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cace190d99acfdf93823d6926ede4d3943e9bd428fa04eec8a89f34c847e4d7a`  
		Last Modified: Sat, 13 May 2017 07:04:22 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
