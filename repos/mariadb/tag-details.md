<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `mariadb`

-	[`mariadb:10.1.23`](#mariadb10123)
-	[`mariadb:10.1`](#mariadb101)
-	[`mariadb:10`](#mariadb10)
-	[`mariadb:latest`](#mariadblatest)
-	[`mariadb:10.0.30`](#mariadb10030)
-	[`mariadb:10.0`](#mariadb100)
-	[`mariadb:5.5.56`](#mariadb5556)
-	[`mariadb:5.5`](#mariadb55)
-	[`mariadb:5`](#mariadb5)

## `mariadb:10.1.23`

```console
$ docker pull mariadb@sha256:4b54358541679032f6c3a9d9fc944ad96d77ae72fecd6cb44bf18cf97743da24
```

-	Platforms:
	-	linux; amd64

### `mariadb:10.1.23` - linux; amd64

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

## `mariadb:10.0.30`

```console
$ docker pull mariadb@sha256:9674bc4734b68f51bfdd07249005bc6147008e8dce8f0e844bc9915664ac5c50
```

-	Platforms:
	-	linux; amd64

### `mariadb:10.0.30` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **119.7 MB (119735328 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a9c168bbac05010546f49e73153a41810c0e370949e58cf3a7e82010c9cb3b56`
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
# Tue, 09 May 2017 17:28:26 GMT
ENV MARIADB_VERSION=10.0.30+maria-1~jessie
# Tue, 09 May 2017 17:28:27 GMT
RUN echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/debian jessie main" > /etc/apt/sources.list.d/mariadb.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Tue, 09 May 2017 17:29:14 GMT
RUN { 		echo mariadb-server-$MARIADB_MAJOR mysql-server/root_password password 'unused'; 		echo mariadb-server-$MARIADB_MAJOR mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		mariadb-server=$MARIADB_VERSION 		percona-xtrabackup 		socat 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Tue, 09 May 2017 17:29:15 GMT
RUN sed -Ei 's/^(bind-address|log)/#&/' /etc/mysql/my.cnf 	&& echo 'skip-host-cache\nskip-name-resolve' | awk '{ print } $1 == "[mysqld]" && c == 0 { c = 1; system("cat") }' /etc/mysql/my.cnf > /tmp/my.cnf 	&& mv /tmp/my.cnf /etc/mysql/my.cnf
# Tue, 09 May 2017 17:29:16 GMT
VOLUME [/var/lib/mysql]
# Tue, 09 May 2017 17:29:17 GMT
COPY file:d559178e6a2929e36791c6a1fa232dc4ac4298ecc446d38972ee1d2a58e30621 in /usr/local/bin/ 
# Tue, 09 May 2017 17:29:19 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 09 May 2017 17:29:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 09 May 2017 17:29:20 GMT
EXPOSE 3306/tcp
# Tue, 09 May 2017 17:29:21 GMT
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
	-	`sha256:9e3dcfacdc94f7642e18417fad9e2510ec6196e68a44364d9325fe34c4bf1682`  
		Last Modified: Sat, 13 May 2017 07:01:20 GMT  
		Size: 317.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f4b0315f303828e0c5425ab32ab50f3aab8bfd19f5f91c90761d55c1689ac74`  
		Last Modified: Sat, 13 May 2017 07:01:36 GMT  
		Size: 59.1 MB (59140583 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56021cd739b6945386797b05ee87500887efd668422b27674850facb9bc3b956`  
		Last Modified: Sat, 13 May 2017 07:01:20 GMT  
		Size: 2.5 KB (2485 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:442290a54e90c8eb806152535509143afde1ec85053f64c16be4ed1648ead7f0`  
		Last Modified: Sat, 13 May 2017 07:01:20 GMT  
		Size: 2.5 KB (2547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da2292b4ea9fb1383c305b83e7d7fdfe82d3f90680fd838a53805a6e4dff245e`  
		Last Modified: Sat, 13 May 2017 07:01:20 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:10.0`

```console
$ docker pull mariadb@sha256:9674bc4734b68f51bfdd07249005bc6147008e8dce8f0e844bc9915664ac5c50
```

-	Platforms:
	-	linux; amd64

### `mariadb:10.0` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **119.7 MB (119735328 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a9c168bbac05010546f49e73153a41810c0e370949e58cf3a7e82010c9cb3b56`
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
# Tue, 09 May 2017 17:28:26 GMT
ENV MARIADB_VERSION=10.0.30+maria-1~jessie
# Tue, 09 May 2017 17:28:27 GMT
RUN echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/debian jessie main" > /etc/apt/sources.list.d/mariadb.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Tue, 09 May 2017 17:29:14 GMT
RUN { 		echo mariadb-server-$MARIADB_MAJOR mysql-server/root_password password 'unused'; 		echo mariadb-server-$MARIADB_MAJOR mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		mariadb-server=$MARIADB_VERSION 		percona-xtrabackup 		socat 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Tue, 09 May 2017 17:29:15 GMT
RUN sed -Ei 's/^(bind-address|log)/#&/' /etc/mysql/my.cnf 	&& echo 'skip-host-cache\nskip-name-resolve' | awk '{ print } $1 == "[mysqld]" && c == 0 { c = 1; system("cat") }' /etc/mysql/my.cnf > /tmp/my.cnf 	&& mv /tmp/my.cnf /etc/mysql/my.cnf
# Tue, 09 May 2017 17:29:16 GMT
VOLUME [/var/lib/mysql]
# Tue, 09 May 2017 17:29:17 GMT
COPY file:d559178e6a2929e36791c6a1fa232dc4ac4298ecc446d38972ee1d2a58e30621 in /usr/local/bin/ 
# Tue, 09 May 2017 17:29:19 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 09 May 2017 17:29:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 09 May 2017 17:29:20 GMT
EXPOSE 3306/tcp
# Tue, 09 May 2017 17:29:21 GMT
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
	-	`sha256:9e3dcfacdc94f7642e18417fad9e2510ec6196e68a44364d9325fe34c4bf1682`  
		Last Modified: Sat, 13 May 2017 07:01:20 GMT  
		Size: 317.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f4b0315f303828e0c5425ab32ab50f3aab8bfd19f5f91c90761d55c1689ac74`  
		Last Modified: Sat, 13 May 2017 07:01:36 GMT  
		Size: 59.1 MB (59140583 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56021cd739b6945386797b05ee87500887efd668422b27674850facb9bc3b956`  
		Last Modified: Sat, 13 May 2017 07:01:20 GMT  
		Size: 2.5 KB (2485 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:442290a54e90c8eb806152535509143afde1ec85053f64c16be4ed1648ead7f0`  
		Last Modified: Sat, 13 May 2017 07:01:20 GMT  
		Size: 2.5 KB (2547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da2292b4ea9fb1383c305b83e7d7fdfe82d3f90680fd838a53805a6e4dff245e`  
		Last Modified: Sat, 13 May 2017 07:01:20 GMT  
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
