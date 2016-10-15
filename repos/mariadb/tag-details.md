<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `mariadb`

-	[`mariadb:10.1.18`](#mariadb10118)
-	[`mariadb:10.1`](#mariadb101)
-	[`mariadb:10`](#mariadb10)
-	[`mariadb:latest`](#mariadblatest)
-	[`mariadb:10.0.27`](#mariadb10027)
-	[`mariadb:10.0`](#mariadb100)
-	[`mariadb:5.5.52`](#mariadb5552)
-	[`mariadb:5.5`](#mariadb55)
-	[`mariadb:5`](#mariadb5)

## `mariadb:10.1.18`

```console
$ docker pull mariadb@sha256:d17cfbf8e7e9b9ed79f2de17125a01f66f350ddf5bcdd8b62da20634cfa0b425
```

-	Platforms:
	-	linux; amd64

### `mariadb:10.1.18` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **131.0 MB (130999973 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:be4475fa21512106819983a66d40c8c49aa701ced6c46bc5a46019d53b37fc89`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 19:58:06 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Fri, 23 Sep 2016 19:58:07 GMT
ENV GOSU_VERSION=1.7
# Fri, 23 Sep 2016 19:58:22 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 23 Sep 2016 19:58:23 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 23 Sep 2016 19:58:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 19:58:38 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	&& apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A
# Fri, 23 Sep 2016 19:58:39 GMT
RUN echo "deb https://repo.percona.com/apt jessie main" > /etc/apt/sources.list.d/percona.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona
# Fri, 23 Sep 2016 19:58:39 GMT
ENV MARIADB_MAJOR=10.1
# Fri, 30 Sep 2016 23:41:06 GMT
ENV MARIADB_VERSION=10.1.18+maria-1~jessie
# Fri, 30 Sep 2016 23:41:07 GMT
RUN echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/debian jessie main" > /etc/apt/sources.list.d/mariadb.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Fri, 30 Sep 2016 23:41:46 GMT
RUN { 		echo mariadb-server-$MARIADB_MAJOR mysql-server/root_password password 'unused'; 		echo mariadb-server-$MARIADB_MAJOR mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		mariadb-server=$MARIADB_VERSION 		percona-xtrabackup 		socat 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Fri, 30 Sep 2016 23:41:47 GMT
RUN sed -Ei 's/^(bind-address|log)/#&/' /etc/mysql/my.cnf 	&& echo 'skip-host-cache\nskip-name-resolve' | awk '{ print } $1 == "[mysqld]" && c == 0 { c = 1; system("cat") }' /etc/mysql/my.cnf > /tmp/my.cnf 	&& mv /tmp/my.cnf /etc/mysql/my.cnf
# Fri, 30 Sep 2016 23:41:47 GMT
VOLUME [/var/lib/mysql]
# Fri, 30 Sep 2016 23:41:48 GMT
COPY file:3d6c735eabd780a3659135a57698f5a17ff1f72725728f21cf72250880e02926 in /usr/local/bin/ 
# Fri, 30 Sep 2016 23:41:49 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 30 Sep 2016 23:41:49 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 30 Sep 2016 23:41:49 GMT
EXPOSE 3306/tcp
# Fri, 30 Sep 2016 23:41:50 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0689904e86f02b2adde70c002ac5b51d8a117c3948d355e37778041ef450a0ba`  
		Last Modified: Fri, 23 Sep 2016 19:59:38 GMT  
		Size: 2.0 KB (2043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:486087a8071d4761231916153009c60798741bbd4f48bfb6fb85ad30b860be3c`  
		Last Modified: Fri, 23 Sep 2016 19:59:37 GMT  
		Size: 1.2 MB (1216317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3eff318f6785276aa87ab4228ac644538ea435beeed2e802bd5673faa4216ff9`  
		Last Modified: Fri, 23 Sep 2016 19:59:35 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c6f9c30cf5d6974ad54c2202d4a7f5d0197c04d1dc088a19ac5134f4098aacc`  
		Last Modified: Fri, 23 Sep 2016 19:59:36 GMT  
		Size: 6.5 MB (6463870 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ac01ce32cbf029fcd228a5590d15d293bbf690a786839490b9fdb09a882a3d8`  
		Last Modified: Fri, 23 Sep 2016 19:59:34 GMT  
		Size: 17.8 KB (17822 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d82bb19cbdcadab85503ed725445bb3d76548f8dd9cfb047b3bc0cb429c1826b`  
		Last Modified: Fri, 23 Sep 2016 19:59:34 GMT  
		Size: 315.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e874ed07dd076a3995515a8626f3ae27ffbedd9ce0547b3098632d50b873ca10`  
		Last Modified: Fri, 30 Sep 2016 23:41:59 GMT  
		Size: 319.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5e2e7bf2e8e0c23bdd2b1ec63b8a4f95ed947843a904f79b1e7c11331d225a7`  
		Last Modified: Fri, 30 Sep 2016 23:42:18 GMT  
		Size: 71.9 MB (71940383 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a311c2c58467d9cbdeba72319fd61c40dd9921023bac344ad4252808c7014696`  
		Last Modified: Fri, 30 Sep 2016 23:41:59 GMT  
		Size: 2.6 KB (2642 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7feb58de3974fb11436c5050158549f0339e8372a20efe5b05af9894e983eb49`  
		Last Modified: Fri, 30 Sep 2016 23:41:58 GMT  
		Size: 1.7 KB (1664 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2674c3e23b0b5bf1b09ee0396a7eab6dc2e100068596a50bfd64320b663e1fff`  
		Last Modified: Fri, 30 Sep 2016 23:41:58 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:10.1`

```console
$ docker pull mariadb@sha256:d17cfbf8e7e9b9ed79f2de17125a01f66f350ddf5bcdd8b62da20634cfa0b425
```

-	Platforms:
	-	linux; amd64

### `mariadb:10.1` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **131.0 MB (130999973 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:be4475fa21512106819983a66d40c8c49aa701ced6c46bc5a46019d53b37fc89`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 19:58:06 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Fri, 23 Sep 2016 19:58:07 GMT
ENV GOSU_VERSION=1.7
# Fri, 23 Sep 2016 19:58:22 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 23 Sep 2016 19:58:23 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 23 Sep 2016 19:58:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 19:58:38 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	&& apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A
# Fri, 23 Sep 2016 19:58:39 GMT
RUN echo "deb https://repo.percona.com/apt jessie main" > /etc/apt/sources.list.d/percona.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona
# Fri, 23 Sep 2016 19:58:39 GMT
ENV MARIADB_MAJOR=10.1
# Fri, 30 Sep 2016 23:41:06 GMT
ENV MARIADB_VERSION=10.1.18+maria-1~jessie
# Fri, 30 Sep 2016 23:41:07 GMT
RUN echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/debian jessie main" > /etc/apt/sources.list.d/mariadb.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Fri, 30 Sep 2016 23:41:46 GMT
RUN { 		echo mariadb-server-$MARIADB_MAJOR mysql-server/root_password password 'unused'; 		echo mariadb-server-$MARIADB_MAJOR mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		mariadb-server=$MARIADB_VERSION 		percona-xtrabackup 		socat 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Fri, 30 Sep 2016 23:41:47 GMT
RUN sed -Ei 's/^(bind-address|log)/#&/' /etc/mysql/my.cnf 	&& echo 'skip-host-cache\nskip-name-resolve' | awk '{ print } $1 == "[mysqld]" && c == 0 { c = 1; system("cat") }' /etc/mysql/my.cnf > /tmp/my.cnf 	&& mv /tmp/my.cnf /etc/mysql/my.cnf
# Fri, 30 Sep 2016 23:41:47 GMT
VOLUME [/var/lib/mysql]
# Fri, 30 Sep 2016 23:41:48 GMT
COPY file:3d6c735eabd780a3659135a57698f5a17ff1f72725728f21cf72250880e02926 in /usr/local/bin/ 
# Fri, 30 Sep 2016 23:41:49 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 30 Sep 2016 23:41:49 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 30 Sep 2016 23:41:49 GMT
EXPOSE 3306/tcp
# Fri, 30 Sep 2016 23:41:50 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0689904e86f02b2adde70c002ac5b51d8a117c3948d355e37778041ef450a0ba`  
		Last Modified: Fri, 23 Sep 2016 19:59:38 GMT  
		Size: 2.0 KB (2043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:486087a8071d4761231916153009c60798741bbd4f48bfb6fb85ad30b860be3c`  
		Last Modified: Fri, 23 Sep 2016 19:59:37 GMT  
		Size: 1.2 MB (1216317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3eff318f6785276aa87ab4228ac644538ea435beeed2e802bd5673faa4216ff9`  
		Last Modified: Fri, 23 Sep 2016 19:59:35 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c6f9c30cf5d6974ad54c2202d4a7f5d0197c04d1dc088a19ac5134f4098aacc`  
		Last Modified: Fri, 23 Sep 2016 19:59:36 GMT  
		Size: 6.5 MB (6463870 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ac01ce32cbf029fcd228a5590d15d293bbf690a786839490b9fdb09a882a3d8`  
		Last Modified: Fri, 23 Sep 2016 19:59:34 GMT  
		Size: 17.8 KB (17822 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d82bb19cbdcadab85503ed725445bb3d76548f8dd9cfb047b3bc0cb429c1826b`  
		Last Modified: Fri, 23 Sep 2016 19:59:34 GMT  
		Size: 315.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e874ed07dd076a3995515a8626f3ae27ffbedd9ce0547b3098632d50b873ca10`  
		Last Modified: Fri, 30 Sep 2016 23:41:59 GMT  
		Size: 319.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5e2e7bf2e8e0c23bdd2b1ec63b8a4f95ed947843a904f79b1e7c11331d225a7`  
		Last Modified: Fri, 30 Sep 2016 23:42:18 GMT  
		Size: 71.9 MB (71940383 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a311c2c58467d9cbdeba72319fd61c40dd9921023bac344ad4252808c7014696`  
		Last Modified: Fri, 30 Sep 2016 23:41:59 GMT  
		Size: 2.6 KB (2642 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7feb58de3974fb11436c5050158549f0339e8372a20efe5b05af9894e983eb49`  
		Last Modified: Fri, 30 Sep 2016 23:41:58 GMT  
		Size: 1.7 KB (1664 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2674c3e23b0b5bf1b09ee0396a7eab6dc2e100068596a50bfd64320b663e1fff`  
		Last Modified: Fri, 30 Sep 2016 23:41:58 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:10`

```console
$ docker pull mariadb@sha256:d17cfbf8e7e9b9ed79f2de17125a01f66f350ddf5bcdd8b62da20634cfa0b425
```

-	Platforms:
	-	linux; amd64

### `mariadb:10` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **131.0 MB (130999973 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:be4475fa21512106819983a66d40c8c49aa701ced6c46bc5a46019d53b37fc89`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 19:58:06 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Fri, 23 Sep 2016 19:58:07 GMT
ENV GOSU_VERSION=1.7
# Fri, 23 Sep 2016 19:58:22 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 23 Sep 2016 19:58:23 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 23 Sep 2016 19:58:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 19:58:38 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	&& apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A
# Fri, 23 Sep 2016 19:58:39 GMT
RUN echo "deb https://repo.percona.com/apt jessie main" > /etc/apt/sources.list.d/percona.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona
# Fri, 23 Sep 2016 19:58:39 GMT
ENV MARIADB_MAJOR=10.1
# Fri, 30 Sep 2016 23:41:06 GMT
ENV MARIADB_VERSION=10.1.18+maria-1~jessie
# Fri, 30 Sep 2016 23:41:07 GMT
RUN echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/debian jessie main" > /etc/apt/sources.list.d/mariadb.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Fri, 30 Sep 2016 23:41:46 GMT
RUN { 		echo mariadb-server-$MARIADB_MAJOR mysql-server/root_password password 'unused'; 		echo mariadb-server-$MARIADB_MAJOR mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		mariadb-server=$MARIADB_VERSION 		percona-xtrabackup 		socat 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Fri, 30 Sep 2016 23:41:47 GMT
RUN sed -Ei 's/^(bind-address|log)/#&/' /etc/mysql/my.cnf 	&& echo 'skip-host-cache\nskip-name-resolve' | awk '{ print } $1 == "[mysqld]" && c == 0 { c = 1; system("cat") }' /etc/mysql/my.cnf > /tmp/my.cnf 	&& mv /tmp/my.cnf /etc/mysql/my.cnf
# Fri, 30 Sep 2016 23:41:47 GMT
VOLUME [/var/lib/mysql]
# Fri, 30 Sep 2016 23:41:48 GMT
COPY file:3d6c735eabd780a3659135a57698f5a17ff1f72725728f21cf72250880e02926 in /usr/local/bin/ 
# Fri, 30 Sep 2016 23:41:49 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 30 Sep 2016 23:41:49 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 30 Sep 2016 23:41:49 GMT
EXPOSE 3306/tcp
# Fri, 30 Sep 2016 23:41:50 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0689904e86f02b2adde70c002ac5b51d8a117c3948d355e37778041ef450a0ba`  
		Last Modified: Fri, 23 Sep 2016 19:59:38 GMT  
		Size: 2.0 KB (2043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:486087a8071d4761231916153009c60798741bbd4f48bfb6fb85ad30b860be3c`  
		Last Modified: Fri, 23 Sep 2016 19:59:37 GMT  
		Size: 1.2 MB (1216317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3eff318f6785276aa87ab4228ac644538ea435beeed2e802bd5673faa4216ff9`  
		Last Modified: Fri, 23 Sep 2016 19:59:35 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c6f9c30cf5d6974ad54c2202d4a7f5d0197c04d1dc088a19ac5134f4098aacc`  
		Last Modified: Fri, 23 Sep 2016 19:59:36 GMT  
		Size: 6.5 MB (6463870 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ac01ce32cbf029fcd228a5590d15d293bbf690a786839490b9fdb09a882a3d8`  
		Last Modified: Fri, 23 Sep 2016 19:59:34 GMT  
		Size: 17.8 KB (17822 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d82bb19cbdcadab85503ed725445bb3d76548f8dd9cfb047b3bc0cb429c1826b`  
		Last Modified: Fri, 23 Sep 2016 19:59:34 GMT  
		Size: 315.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e874ed07dd076a3995515a8626f3ae27ffbedd9ce0547b3098632d50b873ca10`  
		Last Modified: Fri, 30 Sep 2016 23:41:59 GMT  
		Size: 319.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5e2e7bf2e8e0c23bdd2b1ec63b8a4f95ed947843a904f79b1e7c11331d225a7`  
		Last Modified: Fri, 30 Sep 2016 23:42:18 GMT  
		Size: 71.9 MB (71940383 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a311c2c58467d9cbdeba72319fd61c40dd9921023bac344ad4252808c7014696`  
		Last Modified: Fri, 30 Sep 2016 23:41:59 GMT  
		Size: 2.6 KB (2642 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7feb58de3974fb11436c5050158549f0339e8372a20efe5b05af9894e983eb49`  
		Last Modified: Fri, 30 Sep 2016 23:41:58 GMT  
		Size: 1.7 KB (1664 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2674c3e23b0b5bf1b09ee0396a7eab6dc2e100068596a50bfd64320b663e1fff`  
		Last Modified: Fri, 30 Sep 2016 23:41:58 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:latest`

```console
$ docker pull mariadb@sha256:d17cfbf8e7e9b9ed79f2de17125a01f66f350ddf5bcdd8b62da20634cfa0b425
```

-	Platforms:
	-	linux; amd64

### `mariadb:latest` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **131.0 MB (130999973 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:be4475fa21512106819983a66d40c8c49aa701ced6c46bc5a46019d53b37fc89`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 19:58:06 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Fri, 23 Sep 2016 19:58:07 GMT
ENV GOSU_VERSION=1.7
# Fri, 23 Sep 2016 19:58:22 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 23 Sep 2016 19:58:23 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 23 Sep 2016 19:58:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 19:58:38 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	&& apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A
# Fri, 23 Sep 2016 19:58:39 GMT
RUN echo "deb https://repo.percona.com/apt jessie main" > /etc/apt/sources.list.d/percona.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona
# Fri, 23 Sep 2016 19:58:39 GMT
ENV MARIADB_MAJOR=10.1
# Fri, 30 Sep 2016 23:41:06 GMT
ENV MARIADB_VERSION=10.1.18+maria-1~jessie
# Fri, 30 Sep 2016 23:41:07 GMT
RUN echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/debian jessie main" > /etc/apt/sources.list.d/mariadb.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Fri, 30 Sep 2016 23:41:46 GMT
RUN { 		echo mariadb-server-$MARIADB_MAJOR mysql-server/root_password password 'unused'; 		echo mariadb-server-$MARIADB_MAJOR mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		mariadb-server=$MARIADB_VERSION 		percona-xtrabackup 		socat 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Fri, 30 Sep 2016 23:41:47 GMT
RUN sed -Ei 's/^(bind-address|log)/#&/' /etc/mysql/my.cnf 	&& echo 'skip-host-cache\nskip-name-resolve' | awk '{ print } $1 == "[mysqld]" && c == 0 { c = 1; system("cat") }' /etc/mysql/my.cnf > /tmp/my.cnf 	&& mv /tmp/my.cnf /etc/mysql/my.cnf
# Fri, 30 Sep 2016 23:41:47 GMT
VOLUME [/var/lib/mysql]
# Fri, 30 Sep 2016 23:41:48 GMT
COPY file:3d6c735eabd780a3659135a57698f5a17ff1f72725728f21cf72250880e02926 in /usr/local/bin/ 
# Fri, 30 Sep 2016 23:41:49 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 30 Sep 2016 23:41:49 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 30 Sep 2016 23:41:49 GMT
EXPOSE 3306/tcp
# Fri, 30 Sep 2016 23:41:50 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0689904e86f02b2adde70c002ac5b51d8a117c3948d355e37778041ef450a0ba`  
		Last Modified: Fri, 23 Sep 2016 19:59:38 GMT  
		Size: 2.0 KB (2043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:486087a8071d4761231916153009c60798741bbd4f48bfb6fb85ad30b860be3c`  
		Last Modified: Fri, 23 Sep 2016 19:59:37 GMT  
		Size: 1.2 MB (1216317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3eff318f6785276aa87ab4228ac644538ea435beeed2e802bd5673faa4216ff9`  
		Last Modified: Fri, 23 Sep 2016 19:59:35 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c6f9c30cf5d6974ad54c2202d4a7f5d0197c04d1dc088a19ac5134f4098aacc`  
		Last Modified: Fri, 23 Sep 2016 19:59:36 GMT  
		Size: 6.5 MB (6463870 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ac01ce32cbf029fcd228a5590d15d293bbf690a786839490b9fdb09a882a3d8`  
		Last Modified: Fri, 23 Sep 2016 19:59:34 GMT  
		Size: 17.8 KB (17822 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d82bb19cbdcadab85503ed725445bb3d76548f8dd9cfb047b3bc0cb429c1826b`  
		Last Modified: Fri, 23 Sep 2016 19:59:34 GMT  
		Size: 315.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e874ed07dd076a3995515a8626f3ae27ffbedd9ce0547b3098632d50b873ca10`  
		Last Modified: Fri, 30 Sep 2016 23:41:59 GMT  
		Size: 319.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5e2e7bf2e8e0c23bdd2b1ec63b8a4f95ed947843a904f79b1e7c11331d225a7`  
		Last Modified: Fri, 30 Sep 2016 23:42:18 GMT  
		Size: 71.9 MB (71940383 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a311c2c58467d9cbdeba72319fd61c40dd9921023bac344ad4252808c7014696`  
		Last Modified: Fri, 30 Sep 2016 23:41:59 GMT  
		Size: 2.6 KB (2642 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7feb58de3974fb11436c5050158549f0339e8372a20efe5b05af9894e983eb49`  
		Last Modified: Fri, 30 Sep 2016 23:41:58 GMT  
		Size: 1.7 KB (1664 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2674c3e23b0b5bf1b09ee0396a7eab6dc2e100068596a50bfd64320b663e1fff`  
		Last Modified: Fri, 30 Sep 2016 23:41:58 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:10.0.27`

```console
$ docker pull mariadb@sha256:a731e635394f851a70cca4a25388747a488cae9356307bfbed5e3bd13d8cfffa
```

-	Platforms:
	-	linux; amd64

### `mariadb:10.0.27` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **117.7 MB (117741891 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1e91974860691bb31cfb10686f67e2ba09576081aa5bdfb53eaef727c7855af1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 19:58:06 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Fri, 23 Sep 2016 19:58:07 GMT
ENV GOSU_VERSION=1.7
# Fri, 23 Sep 2016 19:58:22 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 23 Sep 2016 19:58:23 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 23 Sep 2016 19:58:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 19:58:38 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	&& apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A
# Fri, 23 Sep 2016 19:58:39 GMT
RUN echo "deb https://repo.percona.com/apt jessie main" > /etc/apt/sources.list.d/percona.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona
# Fri, 23 Sep 2016 20:00:29 GMT
ENV MARIADB_MAJOR=10.0
# Fri, 23 Sep 2016 20:00:30 GMT
ENV MARIADB_VERSION=10.0.27+maria-1~jessie
# Fri, 23 Sep 2016 20:00:31 GMT
RUN echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/debian jessie main" > /etc/apt/sources.list.d/mariadb.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Fri, 23 Sep 2016 20:01:41 GMT
RUN { 		echo mariadb-server-$MARIADB_MAJOR mysql-server/root_password password 'unused'; 		echo mariadb-server-$MARIADB_MAJOR mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		mariadb-server=$MARIADB_VERSION 		percona-xtrabackup 		socat 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Fri, 23 Sep 2016 20:01:42 GMT
RUN sed -Ei 's/^(bind-address|log)/#&/' /etc/mysql/my.cnf 	&& echo 'skip-host-cache\nskip-name-resolve' | awk '{ print } $1 == "[mysqld]" && c == 0 { c = 1; system("cat") }' /etc/mysql/my.cnf > /tmp/my.cnf 	&& mv /tmp/my.cnf /etc/mysql/my.cnf
# Fri, 23 Sep 2016 20:01:42 GMT
VOLUME [/var/lib/mysql]
# Fri, 23 Sep 2016 20:01:43 GMT
COPY file:3d6c735eabd780a3659135a57698f5a17ff1f72725728f21cf72250880e02926 in /usr/local/bin/ 
# Fri, 23 Sep 2016 20:01:44 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 23 Sep 2016 20:01:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 23 Sep 2016 20:01:44 GMT
EXPOSE 3306/tcp
# Fri, 23 Sep 2016 20:01:45 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0689904e86f02b2adde70c002ac5b51d8a117c3948d355e37778041ef450a0ba`  
		Last Modified: Fri, 23 Sep 2016 19:59:38 GMT  
		Size: 2.0 KB (2043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:486087a8071d4761231916153009c60798741bbd4f48bfb6fb85ad30b860be3c`  
		Last Modified: Fri, 23 Sep 2016 19:59:37 GMT  
		Size: 1.2 MB (1216317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3eff318f6785276aa87ab4228ac644538ea435beeed2e802bd5673faa4216ff9`  
		Last Modified: Fri, 23 Sep 2016 19:59:35 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c6f9c30cf5d6974ad54c2202d4a7f5d0197c04d1dc088a19ac5134f4098aacc`  
		Last Modified: Fri, 23 Sep 2016 19:59:36 GMT  
		Size: 6.5 MB (6463870 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ac01ce32cbf029fcd228a5590d15d293bbf690a786839490b9fdb09a882a3d8`  
		Last Modified: Fri, 23 Sep 2016 19:59:34 GMT  
		Size: 17.8 KB (17822 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d82bb19cbdcadab85503ed725445bb3d76548f8dd9cfb047b3bc0cb429c1826b`  
		Last Modified: Fri, 23 Sep 2016 19:59:34 GMT  
		Size: 315.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9fcc368e15e65c499a229c8f60ba3419628ce300eb0bf7434e766632939d41b`  
		Last Modified: Fri, 23 Sep 2016 20:01:52 GMT  
		Size: 320.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a39bd1d1c4085498f7f9f789e1f42ad43a36f3a6074dc74cec34b1e5393dfa08`  
		Last Modified: Fri, 23 Sep 2016 20:02:10 GMT  
		Size: 58.7 MB (58682451 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27dc700089f3854dea712717072ebe8758b29c6f3b288ea6eb003577c9204b44`  
		Last Modified: Fri, 23 Sep 2016 20:01:52 GMT  
		Size: 2.5 KB (2489 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:227ddb47dcd3266127f83f118aaa37c6592ad1235da42f72191247686f0b3893`  
		Last Modified: Fri, 23 Sep 2016 20:01:52 GMT  
		Size: 1.7 KB (1667 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:692c399e2223ccab41dc1a429949325aef6652ed0f371028fda9148d17aedaa7`  
		Last Modified: Fri, 23 Sep 2016 20:01:52 GMT  
		Size: 119.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:10.0`

```console
$ docker pull mariadb@sha256:a731e635394f851a70cca4a25388747a488cae9356307bfbed5e3bd13d8cfffa
```

-	Platforms:
	-	linux; amd64

### `mariadb:10.0` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **117.7 MB (117741891 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1e91974860691bb31cfb10686f67e2ba09576081aa5bdfb53eaef727c7855af1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 19:58:06 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Fri, 23 Sep 2016 19:58:07 GMT
ENV GOSU_VERSION=1.7
# Fri, 23 Sep 2016 19:58:22 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 23 Sep 2016 19:58:23 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 23 Sep 2016 19:58:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 19:58:38 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	&& apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A
# Fri, 23 Sep 2016 19:58:39 GMT
RUN echo "deb https://repo.percona.com/apt jessie main" > /etc/apt/sources.list.d/percona.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona
# Fri, 23 Sep 2016 20:00:29 GMT
ENV MARIADB_MAJOR=10.0
# Fri, 23 Sep 2016 20:00:30 GMT
ENV MARIADB_VERSION=10.0.27+maria-1~jessie
# Fri, 23 Sep 2016 20:00:31 GMT
RUN echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/debian jessie main" > /etc/apt/sources.list.d/mariadb.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Fri, 23 Sep 2016 20:01:41 GMT
RUN { 		echo mariadb-server-$MARIADB_MAJOR mysql-server/root_password password 'unused'; 		echo mariadb-server-$MARIADB_MAJOR mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		mariadb-server=$MARIADB_VERSION 		percona-xtrabackup 		socat 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Fri, 23 Sep 2016 20:01:42 GMT
RUN sed -Ei 's/^(bind-address|log)/#&/' /etc/mysql/my.cnf 	&& echo 'skip-host-cache\nskip-name-resolve' | awk '{ print } $1 == "[mysqld]" && c == 0 { c = 1; system("cat") }' /etc/mysql/my.cnf > /tmp/my.cnf 	&& mv /tmp/my.cnf /etc/mysql/my.cnf
# Fri, 23 Sep 2016 20:01:42 GMT
VOLUME [/var/lib/mysql]
# Fri, 23 Sep 2016 20:01:43 GMT
COPY file:3d6c735eabd780a3659135a57698f5a17ff1f72725728f21cf72250880e02926 in /usr/local/bin/ 
# Fri, 23 Sep 2016 20:01:44 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 23 Sep 2016 20:01:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 23 Sep 2016 20:01:44 GMT
EXPOSE 3306/tcp
# Fri, 23 Sep 2016 20:01:45 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0689904e86f02b2adde70c002ac5b51d8a117c3948d355e37778041ef450a0ba`  
		Last Modified: Fri, 23 Sep 2016 19:59:38 GMT  
		Size: 2.0 KB (2043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:486087a8071d4761231916153009c60798741bbd4f48bfb6fb85ad30b860be3c`  
		Last Modified: Fri, 23 Sep 2016 19:59:37 GMT  
		Size: 1.2 MB (1216317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3eff318f6785276aa87ab4228ac644538ea435beeed2e802bd5673faa4216ff9`  
		Last Modified: Fri, 23 Sep 2016 19:59:35 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c6f9c30cf5d6974ad54c2202d4a7f5d0197c04d1dc088a19ac5134f4098aacc`  
		Last Modified: Fri, 23 Sep 2016 19:59:36 GMT  
		Size: 6.5 MB (6463870 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ac01ce32cbf029fcd228a5590d15d293bbf690a786839490b9fdb09a882a3d8`  
		Last Modified: Fri, 23 Sep 2016 19:59:34 GMT  
		Size: 17.8 KB (17822 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d82bb19cbdcadab85503ed725445bb3d76548f8dd9cfb047b3bc0cb429c1826b`  
		Last Modified: Fri, 23 Sep 2016 19:59:34 GMT  
		Size: 315.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9fcc368e15e65c499a229c8f60ba3419628ce300eb0bf7434e766632939d41b`  
		Last Modified: Fri, 23 Sep 2016 20:01:52 GMT  
		Size: 320.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a39bd1d1c4085498f7f9f789e1f42ad43a36f3a6074dc74cec34b1e5393dfa08`  
		Last Modified: Fri, 23 Sep 2016 20:02:10 GMT  
		Size: 58.7 MB (58682451 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27dc700089f3854dea712717072ebe8758b29c6f3b288ea6eb003577c9204b44`  
		Last Modified: Fri, 23 Sep 2016 20:01:52 GMT  
		Size: 2.5 KB (2489 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:227ddb47dcd3266127f83f118aaa37c6592ad1235da42f72191247686f0b3893`  
		Last Modified: Fri, 23 Sep 2016 20:01:52 GMT  
		Size: 1.7 KB (1667 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:692c399e2223ccab41dc1a429949325aef6652ed0f371028fda9148d17aedaa7`  
		Last Modified: Fri, 23 Sep 2016 20:01:52 GMT  
		Size: 119.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:5.5.52`

```console
$ docker pull mariadb@sha256:7f5adfe3e99645408a65e34034cfc8f72f063b7bb9910bf53d8edba9de8dcee9
```

-	Platforms:
	-	linux; amd64

### `mariadb:5.5.52` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **95.8 MB (95840102 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8c22d6422820f2792888e4682051f10d6581095a7a5d789f7d9e2be61057297f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 19 Sep 2016 17:43:34 GMT
ADD file:b06eab13504d045bfba673dde1c6f5831a875e95146504a385baa101124f58f5 in / 
# Mon, 19 Sep 2016 17:43:35 GMT
CMD ["/bin/bash"]
# Mon, 19 Sep 2016 20:08:08 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Mon, 19 Sep 2016 20:08:08 GMT
ENV GOSU_VERSION=1.7
# Mon, 19 Sep 2016 20:08:25 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Mon, 19 Sep 2016 20:08:26 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Mon, 19 Sep 2016 20:08:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Mon, 19 Sep 2016 20:08:37 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	&& apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A
# Mon, 19 Sep 2016 20:08:38 GMT
RUN echo "deb https://repo.percona.com/apt wheezy main" > /etc/apt/sources.list.d/percona.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona
# Mon, 19 Sep 2016 20:08:38 GMT
ENV MARIADB_MAJOR=5.5
# Mon, 19 Sep 2016 20:08:38 GMT
ENV MARIADB_VERSION=5.5.52+maria-1~wheezy
# Mon, 19 Sep 2016 20:08:39 GMT
RUN echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/debian wheezy main" > /etc/apt/sources.list.d/mariadb.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Mon, 19 Sep 2016 20:08:52 GMT
RUN { 		echo mariadb-server-$MARIADB_MAJOR mysql-server/root_password password 'unused'; 		echo mariadb-server-$MARIADB_MAJOR mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		mariadb-server=$MARIADB_VERSION 		percona-xtrabackup 		socat 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Mon, 19 Sep 2016 20:08:53 GMT
RUN sed -Ei 's/^(bind-address|log)/#&/' /etc/mysql/my.cnf 	&& echo 'skip-host-cache\nskip-name-resolve' | awk '{ print } $1 == "[mysqld]" && c == 0 { c = 1; system("cat") }' /etc/mysql/my.cnf > /tmp/my.cnf 	&& mv /tmp/my.cnf /etc/mysql/my.cnf
# Mon, 19 Sep 2016 20:08:53 GMT
VOLUME [/var/lib/mysql]
# Mon, 19 Sep 2016 20:08:53 GMT
COPY file:3d6c735eabd780a3659135a57698f5a17ff1f72725728f21cf72250880e02926 in /usr/local/bin/ 
# Mon, 19 Sep 2016 20:08:54 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Mon, 19 Sep 2016 20:08:54 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 19 Sep 2016 20:08:55 GMT
EXPOSE 3306/tcp
# Mon, 19 Sep 2016 20:08:55 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:0fbab137f56aaa195d66eae971694eb98df3e4ff6a91eb4fa9905994ef40e5a1`  
		Last Modified: Mon, 19 Sep 2016 17:48:55 GMT  
		Size: 37.2 MB (37214522 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b505b09d3dad9f6285fcf532cf4aa164a9a6531ab3acd6cfe4f62ab4067df982`  
		Last Modified: Fri, 23 Sep 2016 20:02:45 GMT  
		Size: 1.7 KB (1686 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10eac0c017fbf709413bef65d4da1fa3549e0f2ee97a8cf80f3acf0535546b20`  
		Last Modified: Fri, 23 Sep 2016 20:02:46 GMT  
		Size: 1.2 MB (1171856 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6d4ed9702158c1bf08d7a6d399a8be10280e56fc2f1200b6fa08e6505b15c86`  
		Last Modified: Fri, 23 Sep 2016 20:02:39 GMT  
		Size: 113.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b48f1ac8b97b99441d56f3c35fef8c2859c9793f1db976c9fba348571c53426`  
		Last Modified: Fri, 23 Sep 2016 20:02:42 GMT  
		Size: 5.8 MB (5790461 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2bbf4ee5e89d5f4d2f5387671b4f79869207c81593e354d660eee1ec57bb546`  
		Last Modified: Fri, 23 Sep 2016 20:02:39 GMT  
		Size: 59.9 KB (59942 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef8bbd963c38fb0f6e8013d2b48a2014138a33987ed23e03386e477810352691`  
		Last Modified: Fri, 23 Sep 2016 20:02:40 GMT  
		Size: 317.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efb8583c28b24649ace32343f7eb224f9d24faf18110d7d70b9a9baa90f45370`  
		Last Modified: Fri, 23 Sep 2016 20:02:36 GMT  
		Size: 319.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c52205cad24f727597a9f2733341e59544ba74fbb2bc469151b11bb9d9c12e8`  
		Last Modified: Fri, 23 Sep 2016 20:02:55 GMT  
		Size: 51.6 MB (51596612 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83e1ac91053bf838f38a3687bd3f623c195783b652c9ff5471d19b9df9cf7bed`  
		Last Modified: Fri, 23 Sep 2016 20:02:37 GMT  
		Size: 2.5 KB (2491 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba5d45519a817f00b03435d378e5e0daa902ec2e6e4da8425f4bb26eb6eabc1f`  
		Last Modified: Fri, 23 Sep 2016 20:02:36 GMT  
		Size: 1.7 KB (1663 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44473f7049389710b259eb123b84acfec31dd4706144643e376b605dbe627f73`  
		Last Modified: Fri, 23 Sep 2016 20:02:36 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:5.5`

```console
$ docker pull mariadb@sha256:0d7c3f047aa88801b409c4ebc5f763e3f8a53958e428a475cfdfffec77299532
```

-	Platforms:
	-	linux; amd64

### `mariadb:5.5` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **95.8 MB (95840253 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1416b6069a80660ae7a46182d08d8bdc341a603b9a2eee0efbbb58242c6072c7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 19 Sep 2016 17:43:34 GMT
ADD file:b06eab13504d045bfba673dde1c6f5831a875e95146504a385baa101124f58f5 in / 
# Mon, 19 Sep 2016 17:43:35 GMT
CMD ["/bin/bash"]
# Mon, 19 Sep 2016 20:08:08 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Mon, 19 Sep 2016 20:08:08 GMT
ENV GOSU_VERSION=1.7
# Mon, 19 Sep 2016 20:08:25 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Mon, 19 Sep 2016 20:08:26 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Mon, 19 Sep 2016 20:08:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Mon, 19 Sep 2016 20:08:37 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	&& apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A
# Mon, 19 Sep 2016 20:08:38 GMT
RUN echo "deb https://repo.percona.com/apt wheezy main" > /etc/apt/sources.list.d/percona.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona
# Mon, 19 Sep 2016 20:08:38 GMT
ENV MARIADB_MAJOR=5.5
# Mon, 19 Sep 2016 20:08:38 GMT
ENV MARIADB_VERSION=5.5.52+maria-1~wheezy
# Mon, 19 Sep 2016 20:08:39 GMT
RUN echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/debian wheezy main" > /etc/apt/sources.list.d/mariadb.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Mon, 19 Sep 2016 20:08:52 GMT
RUN { 		echo mariadb-server-$MARIADB_MAJOR mysql-server/root_password password 'unused'; 		echo mariadb-server-$MARIADB_MAJOR mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		mariadb-server=$MARIADB_VERSION 		percona-xtrabackup 		socat 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Mon, 19 Sep 2016 20:08:53 GMT
RUN sed -Ei 's/^(bind-address|log)/#&/' /etc/mysql/my.cnf 	&& echo 'skip-host-cache\nskip-name-resolve' | awk '{ print } $1 == "[mysqld]" && c == 0 { c = 1; system("cat") }' /etc/mysql/my.cnf > /tmp/my.cnf 	&& mv /tmp/my.cnf /etc/mysql/my.cnf
# Mon, 19 Sep 2016 20:08:53 GMT
VOLUME [/var/lib/mysql]
# Fri, 14 Oct 2016 23:08:48 GMT
COPY file:c38424786fef36048757ce9163e6884f3aadef4ecd3505a138402d64aac38c4e in /usr/local/bin/ 
# Fri, 14 Oct 2016 23:08:50 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 14 Oct 2016 23:08:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 14 Oct 2016 23:08:50 GMT
EXPOSE 3306/tcp
# Fri, 14 Oct 2016 23:08:50 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:0fbab137f56aaa195d66eae971694eb98df3e4ff6a91eb4fa9905994ef40e5a1`  
		Last Modified: Mon, 19 Sep 2016 17:48:55 GMT  
		Size: 37.2 MB (37214522 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b505b09d3dad9f6285fcf532cf4aa164a9a6531ab3acd6cfe4f62ab4067df982`  
		Last Modified: Fri, 23 Sep 2016 20:02:45 GMT  
		Size: 1.7 KB (1686 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10eac0c017fbf709413bef65d4da1fa3549e0f2ee97a8cf80f3acf0535546b20`  
		Last Modified: Fri, 23 Sep 2016 20:02:46 GMT  
		Size: 1.2 MB (1171856 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6d4ed9702158c1bf08d7a6d399a8be10280e56fc2f1200b6fa08e6505b15c86`  
		Last Modified: Fri, 23 Sep 2016 20:02:39 GMT  
		Size: 113.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b48f1ac8b97b99441d56f3c35fef8c2859c9793f1db976c9fba348571c53426`  
		Last Modified: Fri, 23 Sep 2016 20:02:42 GMT  
		Size: 5.8 MB (5790461 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2bbf4ee5e89d5f4d2f5387671b4f79869207c81593e354d660eee1ec57bb546`  
		Last Modified: Fri, 23 Sep 2016 20:02:39 GMT  
		Size: 59.9 KB (59942 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef8bbd963c38fb0f6e8013d2b48a2014138a33987ed23e03386e477810352691`  
		Last Modified: Fri, 23 Sep 2016 20:02:40 GMT  
		Size: 317.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efb8583c28b24649ace32343f7eb224f9d24faf18110d7d70b9a9baa90f45370`  
		Last Modified: Fri, 23 Sep 2016 20:02:36 GMT  
		Size: 319.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c52205cad24f727597a9f2733341e59544ba74fbb2bc469151b11bb9d9c12e8`  
		Last Modified: Fri, 23 Sep 2016 20:02:55 GMT  
		Size: 51.6 MB (51596612 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83e1ac91053bf838f38a3687bd3f623c195783b652c9ff5471d19b9df9cf7bed`  
		Last Modified: Fri, 23 Sep 2016 20:02:37 GMT  
		Size: 2.5 KB (2491 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d1647b02bcd60526548089fc1b77d3b8d5be6d23a227c555432f303b506b823`  
		Last Modified: Fri, 14 Oct 2016 23:10:13 GMT  
		Size: 1.8 KB (1816 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47bfbb4e927c58314fcad81df1379ee9ed3fd4765ce7cd24775a311495db24ed`  
		Last Modified: Fri, 14 Oct 2016 23:10:13 GMT  
		Size: 118.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:5`

```console
$ docker pull mariadb@sha256:0d7c3f047aa88801b409c4ebc5f763e3f8a53958e428a475cfdfffec77299532
```

-	Platforms:
	-	linux; amd64

### `mariadb:5` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **95.8 MB (95840253 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1416b6069a80660ae7a46182d08d8bdc341a603b9a2eee0efbbb58242c6072c7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 19 Sep 2016 17:43:34 GMT
ADD file:b06eab13504d045bfba673dde1c6f5831a875e95146504a385baa101124f58f5 in / 
# Mon, 19 Sep 2016 17:43:35 GMT
CMD ["/bin/bash"]
# Mon, 19 Sep 2016 20:08:08 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Mon, 19 Sep 2016 20:08:08 GMT
ENV GOSU_VERSION=1.7
# Mon, 19 Sep 2016 20:08:25 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Mon, 19 Sep 2016 20:08:26 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Mon, 19 Sep 2016 20:08:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Mon, 19 Sep 2016 20:08:37 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	&& apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A
# Mon, 19 Sep 2016 20:08:38 GMT
RUN echo "deb https://repo.percona.com/apt wheezy main" > /etc/apt/sources.list.d/percona.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona
# Mon, 19 Sep 2016 20:08:38 GMT
ENV MARIADB_MAJOR=5.5
# Mon, 19 Sep 2016 20:08:38 GMT
ENV MARIADB_VERSION=5.5.52+maria-1~wheezy
# Mon, 19 Sep 2016 20:08:39 GMT
RUN echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/debian wheezy main" > /etc/apt/sources.list.d/mariadb.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Mon, 19 Sep 2016 20:08:52 GMT
RUN { 		echo mariadb-server-$MARIADB_MAJOR mysql-server/root_password password 'unused'; 		echo mariadb-server-$MARIADB_MAJOR mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		mariadb-server=$MARIADB_VERSION 		percona-xtrabackup 		socat 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Mon, 19 Sep 2016 20:08:53 GMT
RUN sed -Ei 's/^(bind-address|log)/#&/' /etc/mysql/my.cnf 	&& echo 'skip-host-cache\nskip-name-resolve' | awk '{ print } $1 == "[mysqld]" && c == 0 { c = 1; system("cat") }' /etc/mysql/my.cnf > /tmp/my.cnf 	&& mv /tmp/my.cnf /etc/mysql/my.cnf
# Mon, 19 Sep 2016 20:08:53 GMT
VOLUME [/var/lib/mysql]
# Fri, 14 Oct 2016 23:08:48 GMT
COPY file:c38424786fef36048757ce9163e6884f3aadef4ecd3505a138402d64aac38c4e in /usr/local/bin/ 
# Fri, 14 Oct 2016 23:08:50 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 14 Oct 2016 23:08:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 14 Oct 2016 23:08:50 GMT
EXPOSE 3306/tcp
# Fri, 14 Oct 2016 23:08:50 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:0fbab137f56aaa195d66eae971694eb98df3e4ff6a91eb4fa9905994ef40e5a1`  
		Last Modified: Mon, 19 Sep 2016 17:48:55 GMT  
		Size: 37.2 MB (37214522 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b505b09d3dad9f6285fcf532cf4aa164a9a6531ab3acd6cfe4f62ab4067df982`  
		Last Modified: Fri, 23 Sep 2016 20:02:45 GMT  
		Size: 1.7 KB (1686 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10eac0c017fbf709413bef65d4da1fa3549e0f2ee97a8cf80f3acf0535546b20`  
		Last Modified: Fri, 23 Sep 2016 20:02:46 GMT  
		Size: 1.2 MB (1171856 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6d4ed9702158c1bf08d7a6d399a8be10280e56fc2f1200b6fa08e6505b15c86`  
		Last Modified: Fri, 23 Sep 2016 20:02:39 GMT  
		Size: 113.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b48f1ac8b97b99441d56f3c35fef8c2859c9793f1db976c9fba348571c53426`  
		Last Modified: Fri, 23 Sep 2016 20:02:42 GMT  
		Size: 5.8 MB (5790461 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2bbf4ee5e89d5f4d2f5387671b4f79869207c81593e354d660eee1ec57bb546`  
		Last Modified: Fri, 23 Sep 2016 20:02:39 GMT  
		Size: 59.9 KB (59942 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef8bbd963c38fb0f6e8013d2b48a2014138a33987ed23e03386e477810352691`  
		Last Modified: Fri, 23 Sep 2016 20:02:40 GMT  
		Size: 317.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efb8583c28b24649ace32343f7eb224f9d24faf18110d7d70b9a9baa90f45370`  
		Last Modified: Fri, 23 Sep 2016 20:02:36 GMT  
		Size: 319.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c52205cad24f727597a9f2733341e59544ba74fbb2bc469151b11bb9d9c12e8`  
		Last Modified: Fri, 23 Sep 2016 20:02:55 GMT  
		Size: 51.6 MB (51596612 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83e1ac91053bf838f38a3687bd3f623c195783b652c9ff5471d19b9df9cf7bed`  
		Last Modified: Fri, 23 Sep 2016 20:02:37 GMT  
		Size: 2.5 KB (2491 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d1647b02bcd60526548089fc1b77d3b8d5be6d23a227c555432f303b506b823`  
		Last Modified: Fri, 14 Oct 2016 23:10:13 GMT  
		Size: 1.8 KB (1816 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47bfbb4e927c58314fcad81df1379ee9ed3fd4765ce7cd24775a311495db24ed`  
		Last Modified: Fri, 14 Oct 2016 23:10:13 GMT  
		Size: 118.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
