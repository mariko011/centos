<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `mariadb`

-	[`mariadb:10.3.1`](#mariadb1031)
-	[`mariadb:10.3`](#mariadb103)
-	[`mariadb:10.2.8`](#mariadb1028)
-	[`mariadb:10.2`](#mariadb102)
-	[`mariadb:10`](#mariadb10)
-	[`mariadb:latest`](#mariadblatest)
-	[`mariadb:10.1.26`](#mariadb10126)
-	[`mariadb:10.1`](#mariadb101)
-	[`mariadb:10.0.32`](#mariadb10032)
-	[`mariadb:10.0`](#mariadb100)
-	[`mariadb:5.5.57`](#mariadb5557)
-	[`mariadb:5.5`](#mariadb55)
-	[`mariadb:5`](#mariadb5)

## `mariadb:10.3.1`

```console
$ docker pull mariadb@sha256:61fe3a86d784d597e6823f3df1c44921d1d72af01e0e21c1df15899c7917742a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mariadb:10.3.1` - linux; amd64

```console
$ docker pull mariadb@sha256:baa86bcf9ce689e51216485513d27a4de815b73f2a5e16bd18ccce01ffe92b71
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **135.9 MB (135871922 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3cb397fd36c8848f868767ce637ea2c0966d20d933d6589ac56abd7ad642a108`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Wed, 13 Sep 2017 08:40:43 GMT
ADD file:d7333b3e0bc6479d2faed32e06d85f1975e5b23e13e75555aeed0f639770413b in / 
# Wed, 13 Sep 2017 08:40:43 GMT
CMD ["bash"]
# Wed, 13 Sep 2017 09:40:16 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 13 Sep 2017 09:40:16 GMT
ENV GOSU_VERSION=1.7
# Wed, 13 Sep 2017 09:40:45 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 13 Sep 2017 09:40:46 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 13 Sep 2017 09:41:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 11:36:19 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Wed, 13 Sep 2017 11:38:32 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 13 Sep 2017 11:38:33 GMT
RUN echo "deb https://repo.percona.com/apt jessie main" > /etc/apt/sources.list.d/percona.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona
# Wed, 13 Sep 2017 11:38:33 GMT
ENV MARIADB_MAJOR=10.3
# Wed, 13 Sep 2017 11:38:33 GMT
ENV MARIADB_VERSION=10.3.1+maria~jessie
# Wed, 13 Sep 2017 11:38:34 GMT
RUN echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/debian jessie main" > /etc/apt/sources.list.d/mariadb.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Wed, 13 Sep 2017 11:39:14 GMT
RUN { 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		percona-xtrabackup-24 		socat 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Wed, 13 Sep 2017 11:39:15 GMT
RUN sed -Ei 's/^(bind-address|log)/#&/' /etc/mysql/my.cnf 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 13 Sep 2017 11:39:15 GMT
VOLUME [/var/lib/mysql]
# Wed, 13 Sep 2017 11:39:15 GMT
COPY file:d559178e6a2929e36791c6a1fa232dc4ac4298ecc446d38972ee1d2a58e30621 in /usr/local/bin/ 
# Wed, 13 Sep 2017 11:39:16 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 13 Sep 2017 11:39:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 13 Sep 2017 11:39:16 GMT
EXPOSE 3306/tcp
# Wed, 13 Sep 2017 11:39:16 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:aa18ad1a0d334d80981104c599fa8cef9264552a265b1197af11274beba767cf`  
		Last Modified: Thu, 07 Sep 2017 23:11:06 GMT  
		Size: 52.6 MB (52595547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdb8d83dece30495d3d9b7c752c4cc36780c9f1aa03571b6a7b9a8850c7d9979`  
		Last Modified: Wed, 13 Sep 2017 09:45:57 GMT  
		Size: 2.1 KB (2087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75b6ce7b50d3eb246f2ef5fbdd083199d828807abee54d47e3297c866b3d0d2e`  
		Last Modified: Wed, 13 Sep 2017 09:45:56 GMT  
		Size: 1.3 MB (1302934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed1d0a3a64e4720c1352929f9133f7beafb5d0ce74c631e7528b4465b1d908fc`  
		Last Modified: Wed, 13 Sep 2017 09:45:55 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b153f26fb6de368b9a388f803ba658a6bca4023651fa947cd010916cdc852720`  
		Last Modified: Wed, 13 Sep 2017 09:45:56 GMT  
		Size: 6.7 MB (6670574 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7df63694312ab22de31c1270067830e994ea535641121ca59e18f68003e45605`  
		Last Modified: Wed, 13 Sep 2017 11:42:52 GMT  
		Size: 20.8 KB (20830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8efb9b48cc94424cd5c829c8d8ef7872c75f43794e8433351406a9cb43256f5f`  
		Last Modified: Wed, 13 Sep 2017 11:42:52 GMT  
		Size: 315.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd17e587fbd9636d9d6cef71a115d94c2ffe0f8c354c916d7ed0962781a66ed0`  
		Last Modified: Wed, 13 Sep 2017 11:42:50 GMT  
		Size: 322.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d046013ba82019538b4830bc33a51ca0ef400544bc242e68921cf99d9e71390`  
		Last Modified: Wed, 13 Sep 2017 11:43:20 GMT  
		Size: 75.3 MB (75273850 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e4eb8cb3749f7d0898bfc4ba2d1d82b15aee236e83f4bb1d854df7c64494c40`  
		Last Modified: Wed, 13 Sep 2017 11:42:49 GMT  
		Size: 2.7 KB (2676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d5899b88b0c275a0a63fbdc4ca9f43e2512d77a4b8bb556a913b8f2596c3886`  
		Last Modified: Wed, 13 Sep 2017 11:42:49 GMT  
		Size: 2.6 KB (2551 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30a66f137d74c6f6342cb0e66042e205d65666cde3805c7aa054182d60c8338a`  
		Last Modified: Wed, 13 Sep 2017 11:42:50 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:10.3`

```console
$ docker pull mariadb@sha256:61fe3a86d784d597e6823f3df1c44921d1d72af01e0e21c1df15899c7917742a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mariadb:10.3` - linux; amd64

```console
$ docker pull mariadb@sha256:baa86bcf9ce689e51216485513d27a4de815b73f2a5e16bd18ccce01ffe92b71
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **135.9 MB (135871922 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3cb397fd36c8848f868767ce637ea2c0966d20d933d6589ac56abd7ad642a108`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Wed, 13 Sep 2017 08:40:43 GMT
ADD file:d7333b3e0bc6479d2faed32e06d85f1975e5b23e13e75555aeed0f639770413b in / 
# Wed, 13 Sep 2017 08:40:43 GMT
CMD ["bash"]
# Wed, 13 Sep 2017 09:40:16 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 13 Sep 2017 09:40:16 GMT
ENV GOSU_VERSION=1.7
# Wed, 13 Sep 2017 09:40:45 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 13 Sep 2017 09:40:46 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 13 Sep 2017 09:41:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 11:36:19 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Wed, 13 Sep 2017 11:38:32 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 13 Sep 2017 11:38:33 GMT
RUN echo "deb https://repo.percona.com/apt jessie main" > /etc/apt/sources.list.d/percona.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona
# Wed, 13 Sep 2017 11:38:33 GMT
ENV MARIADB_MAJOR=10.3
# Wed, 13 Sep 2017 11:38:33 GMT
ENV MARIADB_VERSION=10.3.1+maria~jessie
# Wed, 13 Sep 2017 11:38:34 GMT
RUN echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/debian jessie main" > /etc/apt/sources.list.d/mariadb.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Wed, 13 Sep 2017 11:39:14 GMT
RUN { 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		percona-xtrabackup-24 		socat 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Wed, 13 Sep 2017 11:39:15 GMT
RUN sed -Ei 's/^(bind-address|log)/#&/' /etc/mysql/my.cnf 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 13 Sep 2017 11:39:15 GMT
VOLUME [/var/lib/mysql]
# Wed, 13 Sep 2017 11:39:15 GMT
COPY file:d559178e6a2929e36791c6a1fa232dc4ac4298ecc446d38972ee1d2a58e30621 in /usr/local/bin/ 
# Wed, 13 Sep 2017 11:39:16 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 13 Sep 2017 11:39:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 13 Sep 2017 11:39:16 GMT
EXPOSE 3306/tcp
# Wed, 13 Sep 2017 11:39:16 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:aa18ad1a0d334d80981104c599fa8cef9264552a265b1197af11274beba767cf`  
		Last Modified: Thu, 07 Sep 2017 23:11:06 GMT  
		Size: 52.6 MB (52595547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdb8d83dece30495d3d9b7c752c4cc36780c9f1aa03571b6a7b9a8850c7d9979`  
		Last Modified: Wed, 13 Sep 2017 09:45:57 GMT  
		Size: 2.1 KB (2087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75b6ce7b50d3eb246f2ef5fbdd083199d828807abee54d47e3297c866b3d0d2e`  
		Last Modified: Wed, 13 Sep 2017 09:45:56 GMT  
		Size: 1.3 MB (1302934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed1d0a3a64e4720c1352929f9133f7beafb5d0ce74c631e7528b4465b1d908fc`  
		Last Modified: Wed, 13 Sep 2017 09:45:55 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b153f26fb6de368b9a388f803ba658a6bca4023651fa947cd010916cdc852720`  
		Last Modified: Wed, 13 Sep 2017 09:45:56 GMT  
		Size: 6.7 MB (6670574 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7df63694312ab22de31c1270067830e994ea535641121ca59e18f68003e45605`  
		Last Modified: Wed, 13 Sep 2017 11:42:52 GMT  
		Size: 20.8 KB (20830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8efb9b48cc94424cd5c829c8d8ef7872c75f43794e8433351406a9cb43256f5f`  
		Last Modified: Wed, 13 Sep 2017 11:42:52 GMT  
		Size: 315.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd17e587fbd9636d9d6cef71a115d94c2ffe0f8c354c916d7ed0962781a66ed0`  
		Last Modified: Wed, 13 Sep 2017 11:42:50 GMT  
		Size: 322.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d046013ba82019538b4830bc33a51ca0ef400544bc242e68921cf99d9e71390`  
		Last Modified: Wed, 13 Sep 2017 11:43:20 GMT  
		Size: 75.3 MB (75273850 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e4eb8cb3749f7d0898bfc4ba2d1d82b15aee236e83f4bb1d854df7c64494c40`  
		Last Modified: Wed, 13 Sep 2017 11:42:49 GMT  
		Size: 2.7 KB (2676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d5899b88b0c275a0a63fbdc4ca9f43e2512d77a4b8bb556a913b8f2596c3886`  
		Last Modified: Wed, 13 Sep 2017 11:42:49 GMT  
		Size: 2.6 KB (2551 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30a66f137d74c6f6342cb0e66042e205d65666cde3805c7aa054182d60c8338a`  
		Last Modified: Wed, 13 Sep 2017 11:42:50 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:10.2.8`

```console
$ docker pull mariadb@sha256:c22eec18498fc23734a8e26c21c9b3019cebcf96ed1323aa147ec01c4038d307
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mariadb:10.2.8` - linux; amd64

```console
$ docker pull mariadb@sha256:7897416f98c0ceb76f300ae865e55e62900f66c4fa3d7187763b343b94b184c1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **135.6 MB (135572324 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eb7b193b16316b8914c4d8fdc37d82dfb0e86d15d44788f7ae2b1769e8ea9f2e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Wed, 13 Sep 2017 08:40:43 GMT
ADD file:d7333b3e0bc6479d2faed32e06d85f1975e5b23e13e75555aeed0f639770413b in / 
# Wed, 13 Sep 2017 08:40:43 GMT
CMD ["bash"]
# Wed, 13 Sep 2017 09:40:16 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 13 Sep 2017 09:40:16 GMT
ENV GOSU_VERSION=1.7
# Wed, 13 Sep 2017 09:40:45 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 13 Sep 2017 09:40:46 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 13 Sep 2017 09:41:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 11:36:19 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Wed, 13 Sep 2017 11:38:32 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 13 Sep 2017 11:38:33 GMT
RUN echo "deb https://repo.percona.com/apt jessie main" > /etc/apt/sources.list.d/percona.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona
# Wed, 13 Sep 2017 11:39:17 GMT
ENV MARIADB_MAJOR=10.2
# Wed, 13 Sep 2017 11:39:18 GMT
ENV MARIADB_VERSION=10.2.8+maria~jessie
# Wed, 13 Sep 2017 11:39:18 GMT
RUN echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/debian jessie main" > /etc/apt/sources.list.d/mariadb.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Wed, 13 Sep 2017 11:39:56 GMT
RUN { 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		percona-xtrabackup-24 		socat 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Wed, 13 Sep 2017 11:39:57 GMT
RUN sed -Ei 's/^(bind-address|log)/#&/' /etc/mysql/my.cnf 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 13 Sep 2017 11:39:57 GMT
VOLUME [/var/lib/mysql]
# Wed, 13 Sep 2017 11:39:57 GMT
COPY file:d559178e6a2929e36791c6a1fa232dc4ac4298ecc446d38972ee1d2a58e30621 in /usr/local/bin/ 
# Wed, 13 Sep 2017 11:39:58 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 13 Sep 2017 11:39:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 13 Sep 2017 11:39:58 GMT
EXPOSE 3306/tcp
# Wed, 13 Sep 2017 11:39:58 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:aa18ad1a0d334d80981104c599fa8cef9264552a265b1197af11274beba767cf`  
		Last Modified: Thu, 07 Sep 2017 23:11:06 GMT  
		Size: 52.6 MB (52595547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdb8d83dece30495d3d9b7c752c4cc36780c9f1aa03571b6a7b9a8850c7d9979`  
		Last Modified: Wed, 13 Sep 2017 09:45:57 GMT  
		Size: 2.1 KB (2087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75b6ce7b50d3eb246f2ef5fbdd083199d828807abee54d47e3297c866b3d0d2e`  
		Last Modified: Wed, 13 Sep 2017 09:45:56 GMT  
		Size: 1.3 MB (1302934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed1d0a3a64e4720c1352929f9133f7beafb5d0ce74c631e7528b4465b1d908fc`  
		Last Modified: Wed, 13 Sep 2017 09:45:55 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b153f26fb6de368b9a388f803ba658a6bca4023651fa947cd010916cdc852720`  
		Last Modified: Wed, 13 Sep 2017 09:45:56 GMT  
		Size: 6.7 MB (6670574 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7df63694312ab22de31c1270067830e994ea535641121ca59e18f68003e45605`  
		Last Modified: Wed, 13 Sep 2017 11:42:52 GMT  
		Size: 20.8 KB (20830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8efb9b48cc94424cd5c829c8d8ef7872c75f43794e8433351406a9cb43256f5f`  
		Last Modified: Wed, 13 Sep 2017 11:42:52 GMT  
		Size: 315.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e1d20c5b1bed262c39f8a93da7152596139e215d2389412318e92c6806d0095`  
		Last Modified: Wed, 13 Sep 2017 11:43:32 GMT  
		Size: 321.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab0e2d8374be76047111a756b12a7683ed68e6a296f3217c67cbaee7d3c0d544`  
		Last Modified: Wed, 13 Sep 2017 11:44:04 GMT  
		Size: 75.0 MB (74974253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5dd69e1aee68b3ffbf748674d5831434cc4476b32dc3a4ff4322d45d2b66910`  
		Last Modified: Wed, 13 Sep 2017 11:43:32 GMT  
		Size: 2.7 KB (2676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4b31a5c10d66eec1eeb45f27099adbc2c6653b1fbcffa622941773969b12688`  
		Last Modified: Wed, 13 Sep 2017 11:43:32 GMT  
		Size: 2.6 KB (2551 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3d7139db154f16b57e0d7a5f70ec8dd06ce153de82ffd7759349353358f1fcd`  
		Last Modified: Wed, 13 Sep 2017 11:43:32 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:10.2`

```console
$ docker pull mariadb@sha256:c22eec18498fc23734a8e26c21c9b3019cebcf96ed1323aa147ec01c4038d307
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mariadb:10.2` - linux; amd64

```console
$ docker pull mariadb@sha256:7897416f98c0ceb76f300ae865e55e62900f66c4fa3d7187763b343b94b184c1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **135.6 MB (135572324 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eb7b193b16316b8914c4d8fdc37d82dfb0e86d15d44788f7ae2b1769e8ea9f2e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Wed, 13 Sep 2017 08:40:43 GMT
ADD file:d7333b3e0bc6479d2faed32e06d85f1975e5b23e13e75555aeed0f639770413b in / 
# Wed, 13 Sep 2017 08:40:43 GMT
CMD ["bash"]
# Wed, 13 Sep 2017 09:40:16 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 13 Sep 2017 09:40:16 GMT
ENV GOSU_VERSION=1.7
# Wed, 13 Sep 2017 09:40:45 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 13 Sep 2017 09:40:46 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 13 Sep 2017 09:41:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 11:36:19 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Wed, 13 Sep 2017 11:38:32 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 13 Sep 2017 11:38:33 GMT
RUN echo "deb https://repo.percona.com/apt jessie main" > /etc/apt/sources.list.d/percona.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona
# Wed, 13 Sep 2017 11:39:17 GMT
ENV MARIADB_MAJOR=10.2
# Wed, 13 Sep 2017 11:39:18 GMT
ENV MARIADB_VERSION=10.2.8+maria~jessie
# Wed, 13 Sep 2017 11:39:18 GMT
RUN echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/debian jessie main" > /etc/apt/sources.list.d/mariadb.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Wed, 13 Sep 2017 11:39:56 GMT
RUN { 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		percona-xtrabackup-24 		socat 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Wed, 13 Sep 2017 11:39:57 GMT
RUN sed -Ei 's/^(bind-address|log)/#&/' /etc/mysql/my.cnf 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 13 Sep 2017 11:39:57 GMT
VOLUME [/var/lib/mysql]
# Wed, 13 Sep 2017 11:39:57 GMT
COPY file:d559178e6a2929e36791c6a1fa232dc4ac4298ecc446d38972ee1d2a58e30621 in /usr/local/bin/ 
# Wed, 13 Sep 2017 11:39:58 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 13 Sep 2017 11:39:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 13 Sep 2017 11:39:58 GMT
EXPOSE 3306/tcp
# Wed, 13 Sep 2017 11:39:58 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:aa18ad1a0d334d80981104c599fa8cef9264552a265b1197af11274beba767cf`  
		Last Modified: Thu, 07 Sep 2017 23:11:06 GMT  
		Size: 52.6 MB (52595547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdb8d83dece30495d3d9b7c752c4cc36780c9f1aa03571b6a7b9a8850c7d9979`  
		Last Modified: Wed, 13 Sep 2017 09:45:57 GMT  
		Size: 2.1 KB (2087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75b6ce7b50d3eb246f2ef5fbdd083199d828807abee54d47e3297c866b3d0d2e`  
		Last Modified: Wed, 13 Sep 2017 09:45:56 GMT  
		Size: 1.3 MB (1302934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed1d0a3a64e4720c1352929f9133f7beafb5d0ce74c631e7528b4465b1d908fc`  
		Last Modified: Wed, 13 Sep 2017 09:45:55 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b153f26fb6de368b9a388f803ba658a6bca4023651fa947cd010916cdc852720`  
		Last Modified: Wed, 13 Sep 2017 09:45:56 GMT  
		Size: 6.7 MB (6670574 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7df63694312ab22de31c1270067830e994ea535641121ca59e18f68003e45605`  
		Last Modified: Wed, 13 Sep 2017 11:42:52 GMT  
		Size: 20.8 KB (20830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8efb9b48cc94424cd5c829c8d8ef7872c75f43794e8433351406a9cb43256f5f`  
		Last Modified: Wed, 13 Sep 2017 11:42:52 GMT  
		Size: 315.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e1d20c5b1bed262c39f8a93da7152596139e215d2389412318e92c6806d0095`  
		Last Modified: Wed, 13 Sep 2017 11:43:32 GMT  
		Size: 321.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab0e2d8374be76047111a756b12a7683ed68e6a296f3217c67cbaee7d3c0d544`  
		Last Modified: Wed, 13 Sep 2017 11:44:04 GMT  
		Size: 75.0 MB (74974253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5dd69e1aee68b3ffbf748674d5831434cc4476b32dc3a4ff4322d45d2b66910`  
		Last Modified: Wed, 13 Sep 2017 11:43:32 GMT  
		Size: 2.7 KB (2676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4b31a5c10d66eec1eeb45f27099adbc2c6653b1fbcffa622941773969b12688`  
		Last Modified: Wed, 13 Sep 2017 11:43:32 GMT  
		Size: 2.6 KB (2551 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3d7139db154f16b57e0d7a5f70ec8dd06ce153de82ffd7759349353358f1fcd`  
		Last Modified: Wed, 13 Sep 2017 11:43:32 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:10`

```console
$ docker pull mariadb@sha256:c22eec18498fc23734a8e26c21c9b3019cebcf96ed1323aa147ec01c4038d307
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mariadb:10` - linux; amd64

```console
$ docker pull mariadb@sha256:7897416f98c0ceb76f300ae865e55e62900f66c4fa3d7187763b343b94b184c1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **135.6 MB (135572324 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eb7b193b16316b8914c4d8fdc37d82dfb0e86d15d44788f7ae2b1769e8ea9f2e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Wed, 13 Sep 2017 08:40:43 GMT
ADD file:d7333b3e0bc6479d2faed32e06d85f1975e5b23e13e75555aeed0f639770413b in / 
# Wed, 13 Sep 2017 08:40:43 GMT
CMD ["bash"]
# Wed, 13 Sep 2017 09:40:16 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 13 Sep 2017 09:40:16 GMT
ENV GOSU_VERSION=1.7
# Wed, 13 Sep 2017 09:40:45 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 13 Sep 2017 09:40:46 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 13 Sep 2017 09:41:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 11:36:19 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Wed, 13 Sep 2017 11:38:32 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 13 Sep 2017 11:38:33 GMT
RUN echo "deb https://repo.percona.com/apt jessie main" > /etc/apt/sources.list.d/percona.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona
# Wed, 13 Sep 2017 11:39:17 GMT
ENV MARIADB_MAJOR=10.2
# Wed, 13 Sep 2017 11:39:18 GMT
ENV MARIADB_VERSION=10.2.8+maria~jessie
# Wed, 13 Sep 2017 11:39:18 GMT
RUN echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/debian jessie main" > /etc/apt/sources.list.d/mariadb.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Wed, 13 Sep 2017 11:39:56 GMT
RUN { 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		percona-xtrabackup-24 		socat 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Wed, 13 Sep 2017 11:39:57 GMT
RUN sed -Ei 's/^(bind-address|log)/#&/' /etc/mysql/my.cnf 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 13 Sep 2017 11:39:57 GMT
VOLUME [/var/lib/mysql]
# Wed, 13 Sep 2017 11:39:57 GMT
COPY file:d559178e6a2929e36791c6a1fa232dc4ac4298ecc446d38972ee1d2a58e30621 in /usr/local/bin/ 
# Wed, 13 Sep 2017 11:39:58 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 13 Sep 2017 11:39:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 13 Sep 2017 11:39:58 GMT
EXPOSE 3306/tcp
# Wed, 13 Sep 2017 11:39:58 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:aa18ad1a0d334d80981104c599fa8cef9264552a265b1197af11274beba767cf`  
		Last Modified: Thu, 07 Sep 2017 23:11:06 GMT  
		Size: 52.6 MB (52595547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdb8d83dece30495d3d9b7c752c4cc36780c9f1aa03571b6a7b9a8850c7d9979`  
		Last Modified: Wed, 13 Sep 2017 09:45:57 GMT  
		Size: 2.1 KB (2087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75b6ce7b50d3eb246f2ef5fbdd083199d828807abee54d47e3297c866b3d0d2e`  
		Last Modified: Wed, 13 Sep 2017 09:45:56 GMT  
		Size: 1.3 MB (1302934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed1d0a3a64e4720c1352929f9133f7beafb5d0ce74c631e7528b4465b1d908fc`  
		Last Modified: Wed, 13 Sep 2017 09:45:55 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b153f26fb6de368b9a388f803ba658a6bca4023651fa947cd010916cdc852720`  
		Last Modified: Wed, 13 Sep 2017 09:45:56 GMT  
		Size: 6.7 MB (6670574 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7df63694312ab22de31c1270067830e994ea535641121ca59e18f68003e45605`  
		Last Modified: Wed, 13 Sep 2017 11:42:52 GMT  
		Size: 20.8 KB (20830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8efb9b48cc94424cd5c829c8d8ef7872c75f43794e8433351406a9cb43256f5f`  
		Last Modified: Wed, 13 Sep 2017 11:42:52 GMT  
		Size: 315.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e1d20c5b1bed262c39f8a93da7152596139e215d2389412318e92c6806d0095`  
		Last Modified: Wed, 13 Sep 2017 11:43:32 GMT  
		Size: 321.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab0e2d8374be76047111a756b12a7683ed68e6a296f3217c67cbaee7d3c0d544`  
		Last Modified: Wed, 13 Sep 2017 11:44:04 GMT  
		Size: 75.0 MB (74974253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5dd69e1aee68b3ffbf748674d5831434cc4476b32dc3a4ff4322d45d2b66910`  
		Last Modified: Wed, 13 Sep 2017 11:43:32 GMT  
		Size: 2.7 KB (2676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4b31a5c10d66eec1eeb45f27099adbc2c6653b1fbcffa622941773969b12688`  
		Last Modified: Wed, 13 Sep 2017 11:43:32 GMT  
		Size: 2.6 KB (2551 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3d7139db154f16b57e0d7a5f70ec8dd06ce153de82ffd7759349353358f1fcd`  
		Last Modified: Wed, 13 Sep 2017 11:43:32 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:latest`

```console
$ docker pull mariadb@sha256:c22eec18498fc23734a8e26c21c9b3019cebcf96ed1323aa147ec01c4038d307
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mariadb:latest` - linux; amd64

```console
$ docker pull mariadb@sha256:7897416f98c0ceb76f300ae865e55e62900f66c4fa3d7187763b343b94b184c1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **135.6 MB (135572324 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eb7b193b16316b8914c4d8fdc37d82dfb0e86d15d44788f7ae2b1769e8ea9f2e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Wed, 13 Sep 2017 08:40:43 GMT
ADD file:d7333b3e0bc6479d2faed32e06d85f1975e5b23e13e75555aeed0f639770413b in / 
# Wed, 13 Sep 2017 08:40:43 GMT
CMD ["bash"]
# Wed, 13 Sep 2017 09:40:16 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 13 Sep 2017 09:40:16 GMT
ENV GOSU_VERSION=1.7
# Wed, 13 Sep 2017 09:40:45 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 13 Sep 2017 09:40:46 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 13 Sep 2017 09:41:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 11:36:19 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Wed, 13 Sep 2017 11:38:32 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 13 Sep 2017 11:38:33 GMT
RUN echo "deb https://repo.percona.com/apt jessie main" > /etc/apt/sources.list.d/percona.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona
# Wed, 13 Sep 2017 11:39:17 GMT
ENV MARIADB_MAJOR=10.2
# Wed, 13 Sep 2017 11:39:18 GMT
ENV MARIADB_VERSION=10.2.8+maria~jessie
# Wed, 13 Sep 2017 11:39:18 GMT
RUN echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/debian jessie main" > /etc/apt/sources.list.d/mariadb.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Wed, 13 Sep 2017 11:39:56 GMT
RUN { 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		percona-xtrabackup-24 		socat 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Wed, 13 Sep 2017 11:39:57 GMT
RUN sed -Ei 's/^(bind-address|log)/#&/' /etc/mysql/my.cnf 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 13 Sep 2017 11:39:57 GMT
VOLUME [/var/lib/mysql]
# Wed, 13 Sep 2017 11:39:57 GMT
COPY file:d559178e6a2929e36791c6a1fa232dc4ac4298ecc446d38972ee1d2a58e30621 in /usr/local/bin/ 
# Wed, 13 Sep 2017 11:39:58 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 13 Sep 2017 11:39:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 13 Sep 2017 11:39:58 GMT
EXPOSE 3306/tcp
# Wed, 13 Sep 2017 11:39:58 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:aa18ad1a0d334d80981104c599fa8cef9264552a265b1197af11274beba767cf`  
		Last Modified: Thu, 07 Sep 2017 23:11:06 GMT  
		Size: 52.6 MB (52595547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdb8d83dece30495d3d9b7c752c4cc36780c9f1aa03571b6a7b9a8850c7d9979`  
		Last Modified: Wed, 13 Sep 2017 09:45:57 GMT  
		Size: 2.1 KB (2087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75b6ce7b50d3eb246f2ef5fbdd083199d828807abee54d47e3297c866b3d0d2e`  
		Last Modified: Wed, 13 Sep 2017 09:45:56 GMT  
		Size: 1.3 MB (1302934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed1d0a3a64e4720c1352929f9133f7beafb5d0ce74c631e7528b4465b1d908fc`  
		Last Modified: Wed, 13 Sep 2017 09:45:55 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b153f26fb6de368b9a388f803ba658a6bca4023651fa947cd010916cdc852720`  
		Last Modified: Wed, 13 Sep 2017 09:45:56 GMT  
		Size: 6.7 MB (6670574 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7df63694312ab22de31c1270067830e994ea535641121ca59e18f68003e45605`  
		Last Modified: Wed, 13 Sep 2017 11:42:52 GMT  
		Size: 20.8 KB (20830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8efb9b48cc94424cd5c829c8d8ef7872c75f43794e8433351406a9cb43256f5f`  
		Last Modified: Wed, 13 Sep 2017 11:42:52 GMT  
		Size: 315.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e1d20c5b1bed262c39f8a93da7152596139e215d2389412318e92c6806d0095`  
		Last Modified: Wed, 13 Sep 2017 11:43:32 GMT  
		Size: 321.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab0e2d8374be76047111a756b12a7683ed68e6a296f3217c67cbaee7d3c0d544`  
		Last Modified: Wed, 13 Sep 2017 11:44:04 GMT  
		Size: 75.0 MB (74974253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5dd69e1aee68b3ffbf748674d5831434cc4476b32dc3a4ff4322d45d2b66910`  
		Last Modified: Wed, 13 Sep 2017 11:43:32 GMT  
		Size: 2.7 KB (2676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4b31a5c10d66eec1eeb45f27099adbc2c6653b1fbcffa622941773969b12688`  
		Last Modified: Wed, 13 Sep 2017 11:43:32 GMT  
		Size: 2.6 KB (2551 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3d7139db154f16b57e0d7a5f70ec8dd06ce153de82ffd7759349353358f1fcd`  
		Last Modified: Wed, 13 Sep 2017 11:43:32 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:10.1.26`

```console
$ docker pull mariadb@sha256:db088738cd6cf9a53c2bd79487b91b65312e2a38e7c4f52d0606dff028d0ef9e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mariadb:10.1.26` - linux; amd64

```console
$ docker pull mariadb@sha256:c32b47e81fd8d3406eabac385695a77a7ca9f1c8ec0fdb6320f7637ff367f291
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **134.9 MB (134912982 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b5013ef15a7f4940d48f4e0b4ea75243f486cacccf501758c5054e82ce05a1d3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Wed, 13 Sep 2017 08:40:43 GMT
ADD file:d7333b3e0bc6479d2faed32e06d85f1975e5b23e13e75555aeed0f639770413b in / 
# Wed, 13 Sep 2017 08:40:43 GMT
CMD ["bash"]
# Wed, 13 Sep 2017 09:40:16 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 13 Sep 2017 09:40:16 GMT
ENV GOSU_VERSION=1.7
# Wed, 13 Sep 2017 09:40:45 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 13 Sep 2017 09:40:46 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 13 Sep 2017 09:41:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 11:36:19 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Wed, 13 Sep 2017 11:38:32 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 13 Sep 2017 11:38:33 GMT
RUN echo "deb https://repo.percona.com/apt jessie main" > /etc/apt/sources.list.d/percona.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona
# Wed, 13 Sep 2017 11:40:00 GMT
ENV MARIADB_MAJOR=10.1
# Wed, 13 Sep 2017 11:40:00 GMT
ENV MARIADB_VERSION=10.1.26+maria-1~jessie
# Wed, 13 Sep 2017 11:40:00 GMT
RUN echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/debian jessie main" > /etc/apt/sources.list.d/mariadb.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Wed, 13 Sep 2017 11:40:56 GMT
RUN { 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		percona-xtrabackup 		socat 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Wed, 13 Sep 2017 11:40:57 GMT
RUN sed -Ei 's/^(bind-address|log)/#&/' /etc/mysql/my.cnf 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 13 Sep 2017 11:40:57 GMT
VOLUME [/var/lib/mysql]
# Wed, 13 Sep 2017 11:40:57 GMT
COPY file:d559178e6a2929e36791c6a1fa232dc4ac4298ecc446d38972ee1d2a58e30621 in /usr/local/bin/ 
# Wed, 13 Sep 2017 11:40:58 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 13 Sep 2017 11:40:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 13 Sep 2017 11:40:58 GMT
EXPOSE 3306/tcp
# Wed, 13 Sep 2017 11:40:58 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:aa18ad1a0d334d80981104c599fa8cef9264552a265b1197af11274beba767cf`  
		Last Modified: Thu, 07 Sep 2017 23:11:06 GMT  
		Size: 52.6 MB (52595547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdb8d83dece30495d3d9b7c752c4cc36780c9f1aa03571b6a7b9a8850c7d9979`  
		Last Modified: Wed, 13 Sep 2017 09:45:57 GMT  
		Size: 2.1 KB (2087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75b6ce7b50d3eb246f2ef5fbdd083199d828807abee54d47e3297c866b3d0d2e`  
		Last Modified: Wed, 13 Sep 2017 09:45:56 GMT  
		Size: 1.3 MB (1302934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed1d0a3a64e4720c1352929f9133f7beafb5d0ce74c631e7528b4465b1d908fc`  
		Last Modified: Wed, 13 Sep 2017 09:45:55 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b153f26fb6de368b9a388f803ba658a6bca4023651fa947cd010916cdc852720`  
		Last Modified: Wed, 13 Sep 2017 09:45:56 GMT  
		Size: 6.7 MB (6670574 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7df63694312ab22de31c1270067830e994ea535641121ca59e18f68003e45605`  
		Last Modified: Wed, 13 Sep 2017 11:42:52 GMT  
		Size: 20.8 KB (20830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8efb9b48cc94424cd5c829c8d8ef7872c75f43794e8433351406a9cb43256f5f`  
		Last Modified: Wed, 13 Sep 2017 11:42:52 GMT  
		Size: 315.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccd66bee290515c250b0a336427c2ad132e7619e48a001414230eb41bbbd1135`  
		Last Modified: Wed, 13 Sep 2017 11:44:34 GMT  
		Size: 321.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d6908a656a0e256582482ad8998c4995c9c71b06bd1e67e19630fe6122f1b27`  
		Last Modified: Wed, 13 Sep 2017 11:44:46 GMT  
		Size: 74.3 MB (74314915 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0fa57a94a952f8942859a9a2e76cbadf5776c0f448f25a85a68875edc0611410`  
		Last Modified: Wed, 13 Sep 2017 11:44:35 GMT  
		Size: 2.7 KB (2672 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb31f0f5dcbdcc5387857cbfe331694d6910e47e4855fe9e01cf27e28dca074d`  
		Last Modified: Wed, 13 Sep 2017 11:44:34 GMT  
		Size: 2.6 KB (2551 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b824207234538bd37ee3294d74f83823fec994932c22e8744e32b02c4e1481ae`  
		Last Modified: Wed, 13 Sep 2017 11:44:34 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:10.1`

```console
$ docker pull mariadb@sha256:db088738cd6cf9a53c2bd79487b91b65312e2a38e7c4f52d0606dff028d0ef9e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mariadb:10.1` - linux; amd64

```console
$ docker pull mariadb@sha256:c32b47e81fd8d3406eabac385695a77a7ca9f1c8ec0fdb6320f7637ff367f291
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **134.9 MB (134912982 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b5013ef15a7f4940d48f4e0b4ea75243f486cacccf501758c5054e82ce05a1d3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Wed, 13 Sep 2017 08:40:43 GMT
ADD file:d7333b3e0bc6479d2faed32e06d85f1975e5b23e13e75555aeed0f639770413b in / 
# Wed, 13 Sep 2017 08:40:43 GMT
CMD ["bash"]
# Wed, 13 Sep 2017 09:40:16 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 13 Sep 2017 09:40:16 GMT
ENV GOSU_VERSION=1.7
# Wed, 13 Sep 2017 09:40:45 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 13 Sep 2017 09:40:46 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 13 Sep 2017 09:41:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 11:36:19 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Wed, 13 Sep 2017 11:38:32 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 13 Sep 2017 11:38:33 GMT
RUN echo "deb https://repo.percona.com/apt jessie main" > /etc/apt/sources.list.d/percona.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona
# Wed, 13 Sep 2017 11:40:00 GMT
ENV MARIADB_MAJOR=10.1
# Wed, 13 Sep 2017 11:40:00 GMT
ENV MARIADB_VERSION=10.1.26+maria-1~jessie
# Wed, 13 Sep 2017 11:40:00 GMT
RUN echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/debian jessie main" > /etc/apt/sources.list.d/mariadb.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Wed, 13 Sep 2017 11:40:56 GMT
RUN { 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		percona-xtrabackup 		socat 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Wed, 13 Sep 2017 11:40:57 GMT
RUN sed -Ei 's/^(bind-address|log)/#&/' /etc/mysql/my.cnf 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 13 Sep 2017 11:40:57 GMT
VOLUME [/var/lib/mysql]
# Wed, 13 Sep 2017 11:40:57 GMT
COPY file:d559178e6a2929e36791c6a1fa232dc4ac4298ecc446d38972ee1d2a58e30621 in /usr/local/bin/ 
# Wed, 13 Sep 2017 11:40:58 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 13 Sep 2017 11:40:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 13 Sep 2017 11:40:58 GMT
EXPOSE 3306/tcp
# Wed, 13 Sep 2017 11:40:58 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:aa18ad1a0d334d80981104c599fa8cef9264552a265b1197af11274beba767cf`  
		Last Modified: Thu, 07 Sep 2017 23:11:06 GMT  
		Size: 52.6 MB (52595547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdb8d83dece30495d3d9b7c752c4cc36780c9f1aa03571b6a7b9a8850c7d9979`  
		Last Modified: Wed, 13 Sep 2017 09:45:57 GMT  
		Size: 2.1 KB (2087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75b6ce7b50d3eb246f2ef5fbdd083199d828807abee54d47e3297c866b3d0d2e`  
		Last Modified: Wed, 13 Sep 2017 09:45:56 GMT  
		Size: 1.3 MB (1302934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed1d0a3a64e4720c1352929f9133f7beafb5d0ce74c631e7528b4465b1d908fc`  
		Last Modified: Wed, 13 Sep 2017 09:45:55 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b153f26fb6de368b9a388f803ba658a6bca4023651fa947cd010916cdc852720`  
		Last Modified: Wed, 13 Sep 2017 09:45:56 GMT  
		Size: 6.7 MB (6670574 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7df63694312ab22de31c1270067830e994ea535641121ca59e18f68003e45605`  
		Last Modified: Wed, 13 Sep 2017 11:42:52 GMT  
		Size: 20.8 KB (20830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8efb9b48cc94424cd5c829c8d8ef7872c75f43794e8433351406a9cb43256f5f`  
		Last Modified: Wed, 13 Sep 2017 11:42:52 GMT  
		Size: 315.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccd66bee290515c250b0a336427c2ad132e7619e48a001414230eb41bbbd1135`  
		Last Modified: Wed, 13 Sep 2017 11:44:34 GMT  
		Size: 321.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d6908a656a0e256582482ad8998c4995c9c71b06bd1e67e19630fe6122f1b27`  
		Last Modified: Wed, 13 Sep 2017 11:44:46 GMT  
		Size: 74.3 MB (74314915 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0fa57a94a952f8942859a9a2e76cbadf5776c0f448f25a85a68875edc0611410`  
		Last Modified: Wed, 13 Sep 2017 11:44:35 GMT  
		Size: 2.7 KB (2672 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb31f0f5dcbdcc5387857cbfe331694d6910e47e4855fe9e01cf27e28dca074d`  
		Last Modified: Wed, 13 Sep 2017 11:44:34 GMT  
		Size: 2.6 KB (2551 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b824207234538bd37ee3294d74f83823fec994932c22e8744e32b02c4e1481ae`  
		Last Modified: Wed, 13 Sep 2017 11:44:34 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:10.0.32`

```console
$ docker pull mariadb@sha256:91aae1db7b71e104a36f7d582e6b1efb8f4f32266e61898830fba047b202112f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mariadb:10.0.32` - linux; amd64

```console
$ docker pull mariadb@sha256:c4a4db76a2b19346a5d85330f8ae82198c4534ce73cb09b102c498538f13460e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **119.8 MB (119788417 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:23684f1ec26cf7cb4686f76f81bf68fcdec698f382126c9265d04624b0543d08`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Wed, 13 Sep 2017 08:40:43 GMT
ADD file:d7333b3e0bc6479d2faed32e06d85f1975e5b23e13e75555aeed0f639770413b in / 
# Wed, 13 Sep 2017 08:40:43 GMT
CMD ["bash"]
# Wed, 13 Sep 2017 09:40:16 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 13 Sep 2017 09:40:16 GMT
ENV GOSU_VERSION=1.7
# Wed, 13 Sep 2017 09:40:45 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 13 Sep 2017 09:40:46 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 13 Sep 2017 09:41:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 11:36:19 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Wed, 13 Sep 2017 11:38:32 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 13 Sep 2017 11:38:33 GMT
RUN echo "deb https://repo.percona.com/apt jessie main" > /etc/apt/sources.list.d/percona.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona
# Wed, 13 Sep 2017 11:40:59 GMT
ENV MARIADB_MAJOR=10.0
# Wed, 13 Sep 2017 11:41:00 GMT
ENV MARIADB_VERSION=10.0.32+maria-1~jessie
# Wed, 13 Sep 2017 11:41:00 GMT
RUN echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/debian jessie main" > /etc/apt/sources.list.d/mariadb.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Wed, 13 Sep 2017 11:41:51 GMT
RUN { 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		percona-xtrabackup 		socat 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Wed, 13 Sep 2017 11:41:52 GMT
RUN sed -Ei 's/^(bind-address|log)/#&/' /etc/mysql/my.cnf 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 13 Sep 2017 11:41:52 GMT
VOLUME [/var/lib/mysql]
# Wed, 13 Sep 2017 11:41:52 GMT
COPY file:d559178e6a2929e36791c6a1fa232dc4ac4298ecc446d38972ee1d2a58e30621 in /usr/local/bin/ 
# Wed, 13 Sep 2017 11:41:53 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 13 Sep 2017 11:41:53 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 13 Sep 2017 11:41:53 GMT
EXPOSE 3306/tcp
# Wed, 13 Sep 2017 11:41:54 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:aa18ad1a0d334d80981104c599fa8cef9264552a265b1197af11274beba767cf`  
		Last Modified: Thu, 07 Sep 2017 23:11:06 GMT  
		Size: 52.6 MB (52595547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdb8d83dece30495d3d9b7c752c4cc36780c9f1aa03571b6a7b9a8850c7d9979`  
		Last Modified: Wed, 13 Sep 2017 09:45:57 GMT  
		Size: 2.1 KB (2087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75b6ce7b50d3eb246f2ef5fbdd083199d828807abee54d47e3297c866b3d0d2e`  
		Last Modified: Wed, 13 Sep 2017 09:45:56 GMT  
		Size: 1.3 MB (1302934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed1d0a3a64e4720c1352929f9133f7beafb5d0ce74c631e7528b4465b1d908fc`  
		Last Modified: Wed, 13 Sep 2017 09:45:55 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b153f26fb6de368b9a388f803ba658a6bca4023651fa947cd010916cdc852720`  
		Last Modified: Wed, 13 Sep 2017 09:45:56 GMT  
		Size: 6.7 MB (6670574 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7df63694312ab22de31c1270067830e994ea535641121ca59e18f68003e45605`  
		Last Modified: Wed, 13 Sep 2017 11:42:52 GMT  
		Size: 20.8 KB (20830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8efb9b48cc94424cd5c829c8d8ef7872c75f43794e8433351406a9cb43256f5f`  
		Last Modified: Wed, 13 Sep 2017 11:42:52 GMT  
		Size: 315.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b4a33336246bb69dc2141ad4f0a3e392b49b81f8f59ea0ab9f69f3e63264bf5`  
		Last Modified: Wed, 13 Sep 2017 11:44:59 GMT  
		Size: 321.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b24374cabc1f7a288a21306422a786a733ed92fa1330ccc889b986b1dd7a0062`  
		Last Modified: Wed, 13 Sep 2017 11:45:14 GMT  
		Size: 59.2 MB (59190508 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6cfeeaa79a9a9e2a93518b322c45b199fdb382e2e4ab1c13ce040b142cdc9bc`  
		Last Modified: Wed, 13 Sep 2017 11:44:59 GMT  
		Size: 2.5 KB (2515 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92585757c3d064fe863e43da3f5f46a939ccbf0435c64ff6e26eb3b7d1dc8eb5`  
		Last Modified: Wed, 13 Sep 2017 11:44:59 GMT  
		Size: 2.5 KB (2550 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cad37314651a5adf1b585ea8a678596eef5d000248e7ff880ee1e1fa70a181bc`  
		Last Modified: Wed, 13 Sep 2017 11:44:59 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:10.0`

```console
$ docker pull mariadb@sha256:91aae1db7b71e104a36f7d582e6b1efb8f4f32266e61898830fba047b202112f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mariadb:10.0` - linux; amd64

```console
$ docker pull mariadb@sha256:c4a4db76a2b19346a5d85330f8ae82198c4534ce73cb09b102c498538f13460e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **119.8 MB (119788417 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:23684f1ec26cf7cb4686f76f81bf68fcdec698f382126c9265d04624b0543d08`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Wed, 13 Sep 2017 08:40:43 GMT
ADD file:d7333b3e0bc6479d2faed32e06d85f1975e5b23e13e75555aeed0f639770413b in / 
# Wed, 13 Sep 2017 08:40:43 GMT
CMD ["bash"]
# Wed, 13 Sep 2017 09:40:16 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 13 Sep 2017 09:40:16 GMT
ENV GOSU_VERSION=1.7
# Wed, 13 Sep 2017 09:40:45 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 13 Sep 2017 09:40:46 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 13 Sep 2017 09:41:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 11:36:19 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Wed, 13 Sep 2017 11:38:32 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 13 Sep 2017 11:38:33 GMT
RUN echo "deb https://repo.percona.com/apt jessie main" > /etc/apt/sources.list.d/percona.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona
# Wed, 13 Sep 2017 11:40:59 GMT
ENV MARIADB_MAJOR=10.0
# Wed, 13 Sep 2017 11:41:00 GMT
ENV MARIADB_VERSION=10.0.32+maria-1~jessie
# Wed, 13 Sep 2017 11:41:00 GMT
RUN echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/debian jessie main" > /etc/apt/sources.list.d/mariadb.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Wed, 13 Sep 2017 11:41:51 GMT
RUN { 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		percona-xtrabackup 		socat 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Wed, 13 Sep 2017 11:41:52 GMT
RUN sed -Ei 's/^(bind-address|log)/#&/' /etc/mysql/my.cnf 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 13 Sep 2017 11:41:52 GMT
VOLUME [/var/lib/mysql]
# Wed, 13 Sep 2017 11:41:52 GMT
COPY file:d559178e6a2929e36791c6a1fa232dc4ac4298ecc446d38972ee1d2a58e30621 in /usr/local/bin/ 
# Wed, 13 Sep 2017 11:41:53 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 13 Sep 2017 11:41:53 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 13 Sep 2017 11:41:53 GMT
EXPOSE 3306/tcp
# Wed, 13 Sep 2017 11:41:54 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:aa18ad1a0d334d80981104c599fa8cef9264552a265b1197af11274beba767cf`  
		Last Modified: Thu, 07 Sep 2017 23:11:06 GMT  
		Size: 52.6 MB (52595547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdb8d83dece30495d3d9b7c752c4cc36780c9f1aa03571b6a7b9a8850c7d9979`  
		Last Modified: Wed, 13 Sep 2017 09:45:57 GMT  
		Size: 2.1 KB (2087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75b6ce7b50d3eb246f2ef5fbdd083199d828807abee54d47e3297c866b3d0d2e`  
		Last Modified: Wed, 13 Sep 2017 09:45:56 GMT  
		Size: 1.3 MB (1302934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed1d0a3a64e4720c1352929f9133f7beafb5d0ce74c631e7528b4465b1d908fc`  
		Last Modified: Wed, 13 Sep 2017 09:45:55 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b153f26fb6de368b9a388f803ba658a6bca4023651fa947cd010916cdc852720`  
		Last Modified: Wed, 13 Sep 2017 09:45:56 GMT  
		Size: 6.7 MB (6670574 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7df63694312ab22de31c1270067830e994ea535641121ca59e18f68003e45605`  
		Last Modified: Wed, 13 Sep 2017 11:42:52 GMT  
		Size: 20.8 KB (20830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8efb9b48cc94424cd5c829c8d8ef7872c75f43794e8433351406a9cb43256f5f`  
		Last Modified: Wed, 13 Sep 2017 11:42:52 GMT  
		Size: 315.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b4a33336246bb69dc2141ad4f0a3e392b49b81f8f59ea0ab9f69f3e63264bf5`  
		Last Modified: Wed, 13 Sep 2017 11:44:59 GMT  
		Size: 321.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b24374cabc1f7a288a21306422a786a733ed92fa1330ccc889b986b1dd7a0062`  
		Last Modified: Wed, 13 Sep 2017 11:45:14 GMT  
		Size: 59.2 MB (59190508 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6cfeeaa79a9a9e2a93518b322c45b199fdb382e2e4ab1c13ce040b142cdc9bc`  
		Last Modified: Wed, 13 Sep 2017 11:44:59 GMT  
		Size: 2.5 KB (2515 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92585757c3d064fe863e43da3f5f46a939ccbf0435c64ff6e26eb3b7d1dc8eb5`  
		Last Modified: Wed, 13 Sep 2017 11:44:59 GMT  
		Size: 2.5 KB (2550 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cad37314651a5adf1b585ea8a678596eef5d000248e7ff880ee1e1fa70a181bc`  
		Last Modified: Wed, 13 Sep 2017 11:44:59 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:5.5.57`

```console
$ docker pull mariadb@sha256:ef9c9266ec7d972588634bce3e8cdef752fe3443cf90866679662d9d9d7edc6f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mariadb:5.5.57` - linux; amd64

```console
$ docker pull mariadb@sha256:94c70d1003d4998fb72988edb3a1f054c5b483efd0f022590a4a09848da7c916
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **98.5 MB (98455958 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f4a2e97cdc1f6c1db7f4a08e39679b92641db1820fc70d35efb4ce210620fc6e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Wed, 13 Sep 2017 08:42:15 GMT
ADD file:240ed8d95c0f51cf9dbb7c83f7a0af7e37ee15c7449b864e8770a65f3e771b86 in / 
# Wed, 13 Sep 2017 08:42:15 GMT
CMD ["bash"]
# Wed, 13 Sep 2017 11:41:56 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 13 Sep 2017 11:41:56 GMT
ENV GOSU_VERSION=1.7
# Wed, 13 Sep 2017 11:42:11 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 13 Sep 2017 11:42:11 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 13 Sep 2017 11:42:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 11:42:21 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Wed, 13 Sep 2017 11:42:24 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 13 Sep 2017 11:42:24 GMT
RUN echo "deb https://repo.percona.com/apt wheezy main" > /etc/apt/sources.list.d/percona.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona
# Wed, 13 Sep 2017 11:42:24 GMT
ENV MARIADB_MAJOR=5.5
# Wed, 13 Sep 2017 11:42:25 GMT
ENV MARIADB_VERSION=5.5.57+maria-1~wheezy
# Wed, 13 Sep 2017 11:42:25 GMT
RUN echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/debian wheezy main" > /etc/apt/sources.list.d/mariadb.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Wed, 13 Sep 2017 11:42:38 GMT
RUN { 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		percona-xtrabackup 		socat 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Wed, 13 Sep 2017 11:42:39 GMT
RUN sed -Ei 's/^(bind-address|log)/#&/' /etc/mysql/my.cnf 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 13 Sep 2017 11:42:39 GMT
VOLUME [/var/lib/mysql]
# Wed, 13 Sep 2017 11:42:39 GMT
COPY file:d559178e6a2929e36791c6a1fa232dc4ac4298ecc446d38972ee1d2a58e30621 in /usr/local/bin/ 
# Wed, 13 Sep 2017 11:42:40 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 13 Sep 2017 11:42:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 13 Sep 2017 11:42:40 GMT
EXPOSE 3306/tcp
# Wed, 13 Sep 2017 11:42:40 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:48b042a4691b27483afd6b309d6dd2fc12f2c1d388409709b418094a3a4cdf54`  
		Last Modified: Thu, 07 Sep 2017 23:23:34 GMT  
		Size: 38.1 MB (38103127 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bc4e486e6844d986800d67f09f719ed52275470b92b0bb226a4595f1357fbbc`  
		Last Modified: Wed, 13 Sep 2017 11:45:31 GMT  
		Size: 1.7 KB (1740 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2e4e0f0bc854672f10c334473a5538e74ce4290d1a25bba3c61889449fd6ede`  
		Last Modified: Wed, 13 Sep 2017 11:45:31 GMT  
		Size: 1.3 MB (1257668 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d88b8be8c271648528dda942cec6554d55b94303493631314a98b73c4e70ce4f`  
		Last Modified: Wed, 13 Sep 2017 11:45:29 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa05c1ba18018994cd6f5129fd94d86eaf879f533d8a7e7dec4bd35e01bfd60c`  
		Last Modified: Wed, 13 Sep 2017 11:45:30 GMT  
		Size: 6.0 MB (5992750 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e010143900e99bb52dee1a2d5252ea284d2c6d6be05d66c1d9911c0fdf6185a2`  
		Last Modified: Wed, 13 Sep 2017 11:45:29 GMT  
		Size: 20.9 KB (20864 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f957170f189582c743eff91e8beecfdfb0c9d36e9682277f562d38fdf61c115`  
		Last Modified: Wed, 13 Sep 2017 11:45:29 GMT  
		Size: 319.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8b529ea24ed3a7f4e13b2bdd9bd569c7613f9a11bff066cb9d5126b52f93567`  
		Last Modified: Wed, 13 Sep 2017 11:45:27 GMT  
		Size: 325.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ba4a49860811c423bade7511a09fc9a0be9176a799916bc34d00c68b23aed74`  
		Last Modified: Wed, 13 Sep 2017 11:45:35 GMT  
		Size: 53.1 MB (53073859 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af1b38b7787d6e9fa99439d3b5b9256cf755f31b1852c11ba7611d65fd7cac54`  
		Last Modified: Wed, 13 Sep 2017 11:45:27 GMT  
		Size: 2.5 KB (2518 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79f956687d3f2c2c45ab1bd340b126222f9d0d5eba78dd5ceb836b9d59095837`  
		Last Modified: Wed, 13 Sep 2017 11:45:26 GMT  
		Size: 2.6 KB (2552 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1dff00d49596eb069b3bb595703f026ebbca59ba40e2e784860311dcb76fdc1`  
		Last Modified: Wed, 13 Sep 2017 11:45:27 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:5.5`

```console
$ docker pull mariadb@sha256:ef9c9266ec7d972588634bce3e8cdef752fe3443cf90866679662d9d9d7edc6f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mariadb:5.5` - linux; amd64

```console
$ docker pull mariadb@sha256:94c70d1003d4998fb72988edb3a1f054c5b483efd0f022590a4a09848da7c916
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **98.5 MB (98455958 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f4a2e97cdc1f6c1db7f4a08e39679b92641db1820fc70d35efb4ce210620fc6e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Wed, 13 Sep 2017 08:42:15 GMT
ADD file:240ed8d95c0f51cf9dbb7c83f7a0af7e37ee15c7449b864e8770a65f3e771b86 in / 
# Wed, 13 Sep 2017 08:42:15 GMT
CMD ["bash"]
# Wed, 13 Sep 2017 11:41:56 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 13 Sep 2017 11:41:56 GMT
ENV GOSU_VERSION=1.7
# Wed, 13 Sep 2017 11:42:11 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 13 Sep 2017 11:42:11 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 13 Sep 2017 11:42:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 11:42:21 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Wed, 13 Sep 2017 11:42:24 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 13 Sep 2017 11:42:24 GMT
RUN echo "deb https://repo.percona.com/apt wheezy main" > /etc/apt/sources.list.d/percona.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona
# Wed, 13 Sep 2017 11:42:24 GMT
ENV MARIADB_MAJOR=5.5
# Wed, 13 Sep 2017 11:42:25 GMT
ENV MARIADB_VERSION=5.5.57+maria-1~wheezy
# Wed, 13 Sep 2017 11:42:25 GMT
RUN echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/debian wheezy main" > /etc/apt/sources.list.d/mariadb.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Wed, 13 Sep 2017 11:42:38 GMT
RUN { 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		percona-xtrabackup 		socat 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Wed, 13 Sep 2017 11:42:39 GMT
RUN sed -Ei 's/^(bind-address|log)/#&/' /etc/mysql/my.cnf 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 13 Sep 2017 11:42:39 GMT
VOLUME [/var/lib/mysql]
# Wed, 13 Sep 2017 11:42:39 GMT
COPY file:d559178e6a2929e36791c6a1fa232dc4ac4298ecc446d38972ee1d2a58e30621 in /usr/local/bin/ 
# Wed, 13 Sep 2017 11:42:40 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 13 Sep 2017 11:42:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 13 Sep 2017 11:42:40 GMT
EXPOSE 3306/tcp
# Wed, 13 Sep 2017 11:42:40 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:48b042a4691b27483afd6b309d6dd2fc12f2c1d388409709b418094a3a4cdf54`  
		Last Modified: Thu, 07 Sep 2017 23:23:34 GMT  
		Size: 38.1 MB (38103127 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bc4e486e6844d986800d67f09f719ed52275470b92b0bb226a4595f1357fbbc`  
		Last Modified: Wed, 13 Sep 2017 11:45:31 GMT  
		Size: 1.7 KB (1740 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2e4e0f0bc854672f10c334473a5538e74ce4290d1a25bba3c61889449fd6ede`  
		Last Modified: Wed, 13 Sep 2017 11:45:31 GMT  
		Size: 1.3 MB (1257668 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d88b8be8c271648528dda942cec6554d55b94303493631314a98b73c4e70ce4f`  
		Last Modified: Wed, 13 Sep 2017 11:45:29 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa05c1ba18018994cd6f5129fd94d86eaf879f533d8a7e7dec4bd35e01bfd60c`  
		Last Modified: Wed, 13 Sep 2017 11:45:30 GMT  
		Size: 6.0 MB (5992750 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e010143900e99bb52dee1a2d5252ea284d2c6d6be05d66c1d9911c0fdf6185a2`  
		Last Modified: Wed, 13 Sep 2017 11:45:29 GMT  
		Size: 20.9 KB (20864 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f957170f189582c743eff91e8beecfdfb0c9d36e9682277f562d38fdf61c115`  
		Last Modified: Wed, 13 Sep 2017 11:45:29 GMT  
		Size: 319.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8b529ea24ed3a7f4e13b2bdd9bd569c7613f9a11bff066cb9d5126b52f93567`  
		Last Modified: Wed, 13 Sep 2017 11:45:27 GMT  
		Size: 325.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ba4a49860811c423bade7511a09fc9a0be9176a799916bc34d00c68b23aed74`  
		Last Modified: Wed, 13 Sep 2017 11:45:35 GMT  
		Size: 53.1 MB (53073859 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af1b38b7787d6e9fa99439d3b5b9256cf755f31b1852c11ba7611d65fd7cac54`  
		Last Modified: Wed, 13 Sep 2017 11:45:27 GMT  
		Size: 2.5 KB (2518 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79f956687d3f2c2c45ab1bd340b126222f9d0d5eba78dd5ceb836b9d59095837`  
		Last Modified: Wed, 13 Sep 2017 11:45:26 GMT  
		Size: 2.6 KB (2552 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1dff00d49596eb069b3bb595703f026ebbca59ba40e2e784860311dcb76fdc1`  
		Last Modified: Wed, 13 Sep 2017 11:45:27 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:5`

```console
$ docker pull mariadb@sha256:ef9c9266ec7d972588634bce3e8cdef752fe3443cf90866679662d9d9d7edc6f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mariadb:5` - linux; amd64

```console
$ docker pull mariadb@sha256:94c70d1003d4998fb72988edb3a1f054c5b483efd0f022590a4a09848da7c916
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **98.5 MB (98455958 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f4a2e97cdc1f6c1db7f4a08e39679b92641db1820fc70d35efb4ce210620fc6e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Wed, 13 Sep 2017 08:42:15 GMT
ADD file:240ed8d95c0f51cf9dbb7c83f7a0af7e37ee15c7449b864e8770a65f3e771b86 in / 
# Wed, 13 Sep 2017 08:42:15 GMT
CMD ["bash"]
# Wed, 13 Sep 2017 11:41:56 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 13 Sep 2017 11:41:56 GMT
ENV GOSU_VERSION=1.7
# Wed, 13 Sep 2017 11:42:11 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 13 Sep 2017 11:42:11 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 13 Sep 2017 11:42:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 11:42:21 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Wed, 13 Sep 2017 11:42:24 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 13 Sep 2017 11:42:24 GMT
RUN echo "deb https://repo.percona.com/apt wheezy main" > /etc/apt/sources.list.d/percona.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona
# Wed, 13 Sep 2017 11:42:24 GMT
ENV MARIADB_MAJOR=5.5
# Wed, 13 Sep 2017 11:42:25 GMT
ENV MARIADB_VERSION=5.5.57+maria-1~wheezy
# Wed, 13 Sep 2017 11:42:25 GMT
RUN echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/debian wheezy main" > /etc/apt/sources.list.d/mariadb.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Wed, 13 Sep 2017 11:42:38 GMT
RUN { 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		percona-xtrabackup 		socat 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Wed, 13 Sep 2017 11:42:39 GMT
RUN sed -Ei 's/^(bind-address|log)/#&/' /etc/mysql/my.cnf 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 13 Sep 2017 11:42:39 GMT
VOLUME [/var/lib/mysql]
# Wed, 13 Sep 2017 11:42:39 GMT
COPY file:d559178e6a2929e36791c6a1fa232dc4ac4298ecc446d38972ee1d2a58e30621 in /usr/local/bin/ 
# Wed, 13 Sep 2017 11:42:40 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 13 Sep 2017 11:42:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 13 Sep 2017 11:42:40 GMT
EXPOSE 3306/tcp
# Wed, 13 Sep 2017 11:42:40 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:48b042a4691b27483afd6b309d6dd2fc12f2c1d388409709b418094a3a4cdf54`  
		Last Modified: Thu, 07 Sep 2017 23:23:34 GMT  
		Size: 38.1 MB (38103127 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bc4e486e6844d986800d67f09f719ed52275470b92b0bb226a4595f1357fbbc`  
		Last Modified: Wed, 13 Sep 2017 11:45:31 GMT  
		Size: 1.7 KB (1740 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2e4e0f0bc854672f10c334473a5538e74ce4290d1a25bba3c61889449fd6ede`  
		Last Modified: Wed, 13 Sep 2017 11:45:31 GMT  
		Size: 1.3 MB (1257668 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d88b8be8c271648528dda942cec6554d55b94303493631314a98b73c4e70ce4f`  
		Last Modified: Wed, 13 Sep 2017 11:45:29 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa05c1ba18018994cd6f5129fd94d86eaf879f533d8a7e7dec4bd35e01bfd60c`  
		Last Modified: Wed, 13 Sep 2017 11:45:30 GMT  
		Size: 6.0 MB (5992750 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e010143900e99bb52dee1a2d5252ea284d2c6d6be05d66c1d9911c0fdf6185a2`  
		Last Modified: Wed, 13 Sep 2017 11:45:29 GMT  
		Size: 20.9 KB (20864 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f957170f189582c743eff91e8beecfdfb0c9d36e9682277f562d38fdf61c115`  
		Last Modified: Wed, 13 Sep 2017 11:45:29 GMT  
		Size: 319.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8b529ea24ed3a7f4e13b2bdd9bd569c7613f9a11bff066cb9d5126b52f93567`  
		Last Modified: Wed, 13 Sep 2017 11:45:27 GMT  
		Size: 325.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ba4a49860811c423bade7511a09fc9a0be9176a799916bc34d00c68b23aed74`  
		Last Modified: Wed, 13 Sep 2017 11:45:35 GMT  
		Size: 53.1 MB (53073859 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af1b38b7787d6e9fa99439d3b5b9256cf755f31b1852c11ba7611d65fd7cac54`  
		Last Modified: Wed, 13 Sep 2017 11:45:27 GMT  
		Size: 2.5 KB (2518 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79f956687d3f2c2c45ab1bd340b126222f9d0d5eba78dd5ceb836b9d59095837`  
		Last Modified: Wed, 13 Sep 2017 11:45:26 GMT  
		Size: 2.6 KB (2552 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1dff00d49596eb069b3bb595703f026ebbca59ba40e2e784860311dcb76fdc1`  
		Last Modified: Wed, 13 Sep 2017 11:45:27 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
