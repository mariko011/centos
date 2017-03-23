<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `mariadb`

-	[`mariadb:10.1.22`](#mariadb10122)
-	[`mariadb:10.1`](#mariadb101)
-	[`mariadb:10`](#mariadb10)
-	[`mariadb:latest`](#mariadblatest)
-	[`mariadb:10.0.30`](#mariadb10030)
-	[`mariadb:10.0`](#mariadb100)
-	[`mariadb:5.5.54`](#mariadb5554)
-	[`mariadb:5.5`](#mariadb55)
-	[`mariadb:5`](#mariadb5)

## `mariadb:10.1.22`

```console
$ docker pull mariadb@sha256:bae8bc20bf4b714f2166e2f49ae5f1d3438a535a1d7c41ecdfbae9354ef988c4
```

-	Platforms:
	-	linux; amd64

### `mariadb:10.1.22` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.2 MB (132188997 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a179773563c938102593c24e0e13e2606811b69090e48e484d92541771fc80b7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 21 Mar 2017 18:28:51 GMT
ADD file:4eedf861fb567fffb2694b65ebdd58d5e371a2c28c3863f363f333cb34e5eb7b in / 
# Tue, 21 Mar 2017 18:29:05 GMT
CMD ["/bin/bash"]
# Tue, 21 Mar 2017 20:57:08 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Tue, 21 Mar 2017 20:57:08 GMT
ENV GOSU_VERSION=1.7
# Tue, 21 Mar 2017 20:57:23 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 21 Mar 2017 20:57:24 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 21 Mar 2017 20:57:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 20:57:36 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Tue, 21 Mar 2017 20:57:38 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 21 Mar 2017 20:57:38 GMT
RUN echo "deb https://repo.percona.com/apt jessie main" > /etc/apt/sources.list.d/percona.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona
# Tue, 21 Mar 2017 20:57:39 GMT
ENV MARIADB_MAJOR=10.1
# Tue, 21 Mar 2017 20:57:39 GMT
ENV MARIADB_VERSION=10.1.22+maria-1~jessie
# Tue, 21 Mar 2017 20:57:40 GMT
RUN echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/debian jessie main" > /etc/apt/sources.list.d/mariadb.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Tue, 21 Mar 2017 20:58:26 GMT
RUN { 		echo mariadb-server-$MARIADB_MAJOR mysql-server/root_password password 'unused'; 		echo mariadb-server-$MARIADB_MAJOR mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		mariadb-server=$MARIADB_VERSION 		percona-xtrabackup 		socat 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Tue, 21 Mar 2017 20:58:27 GMT
RUN sed -Ei 's/^(bind-address|log)/#&/' /etc/mysql/my.cnf 	&& echo 'skip-host-cache\nskip-name-resolve' | awk '{ print } $1 == "[mysqld]" && c == 0 { c = 1; system("cat") }' /etc/mysql/my.cnf > /tmp/my.cnf 	&& mv /tmp/my.cnf /etc/mysql/my.cnf
# Tue, 21 Mar 2017 20:58:28 GMT
VOLUME [/var/lib/mysql]
# Tue, 21 Mar 2017 20:58:28 GMT
COPY file:4bddc4758e22941cff70200b3c2b9944da22d0dd3b359657e1d240679abc379b in /usr/local/bin/ 
# Tue, 21 Mar 2017 20:58:30 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 21 Mar 2017 20:58:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 21 Mar 2017 20:58:30 GMT
EXPOSE 3306/tcp
# Tue, 21 Mar 2017 20:58:31 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:6d827a3ef358f4fa21ef8251f95492e667da826653fd43641cef5a877dc03a70`  
		Last Modified: Tue, 21 Mar 2017 18:38:18 GMT  
		Size: 51.4 MB (51438476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed0929eb7dfe716f6e8edb212623ecc441984079645217bc2fb9ed9c04924380`  
		Last Modified: Thu, 23 Mar 2017 00:03:18 GMT  
		Size: 2.0 KB (2047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03f348dc3b9d8c4af8e0fa572d4eb7ef0c5e238d87e9d09513662159d32b4634`  
		Last Modified: Thu, 23 Mar 2017 00:03:17 GMT  
		Size: 1.3 MB (1288974 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd337761ca76fcbda6892c860c2a01288d50e66b7641500139dac7159fdc5a6c`  
		Last Modified: Thu, 23 Mar 2017 00:03:16 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f124cc3249602444e72a2377ed7fb3ecb6584b00864d2adbf452620f9a3c896a`  
		Last Modified: Thu, 23 Mar 2017 00:03:19 GMT  
		Size: 6.5 MB (6539918 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:425010f951736029e8a906083e39ffedf3bc0213476613986c54e1db80f716d3`  
		Last Modified: Thu, 23 Mar 2017 21:59:18 GMT  
		Size: 20.8 KB (20821 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd8823bd18e58f3c20e8beb0cb68080e2fca3012791de1d309c5fe1e5d87a465`  
		Last Modified: Thu, 23 Mar 2017 21:59:16 GMT  
		Size: 314.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8122e5cee80170b0e46d2db68eb54c4675ef810f4c53af2e9b357a0ae0e3ec6a`  
		Last Modified: Thu, 23 Mar 2017 22:00:19 GMT  
		Size: 320.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cd5cdd269c67382e4248a8ccc948e0bee6426f69bb2c842831a8c507021344f`  
		Last Modified: Thu, 23 Mar 2017 22:00:43 GMT  
		Size: 72.9 MB (72893120 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d08d5473e577633760c251741883e2cd28f406a27efeb49c9551fd7f5ded1fd7`  
		Last Modified: Thu, 23 Mar 2017 22:00:18 GMT  
		Size: 2.6 KB (2642 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4ec20909f831db01f18fce64a6c6c2ae12d166e99d5fad06de9925e356e491b`  
		Last Modified: Thu, 23 Mar 2017 22:00:19 GMT  
		Size: 2.1 KB (2131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:071be298c562063400f3c557c3ec15ea2120922a30b260d9f81647c66cd27305`  
		Last Modified: Thu, 23 Mar 2017 22:00:18 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:10.1`

```console
$ docker pull mariadb@sha256:bae8bc20bf4b714f2166e2f49ae5f1d3438a535a1d7c41ecdfbae9354ef988c4
```

-	Platforms:
	-	linux; amd64

### `mariadb:10.1` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.2 MB (132188997 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a179773563c938102593c24e0e13e2606811b69090e48e484d92541771fc80b7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 21 Mar 2017 18:28:51 GMT
ADD file:4eedf861fb567fffb2694b65ebdd58d5e371a2c28c3863f363f333cb34e5eb7b in / 
# Tue, 21 Mar 2017 18:29:05 GMT
CMD ["/bin/bash"]
# Tue, 21 Mar 2017 20:57:08 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Tue, 21 Mar 2017 20:57:08 GMT
ENV GOSU_VERSION=1.7
# Tue, 21 Mar 2017 20:57:23 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 21 Mar 2017 20:57:24 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 21 Mar 2017 20:57:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 20:57:36 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Tue, 21 Mar 2017 20:57:38 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 21 Mar 2017 20:57:38 GMT
RUN echo "deb https://repo.percona.com/apt jessie main" > /etc/apt/sources.list.d/percona.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona
# Tue, 21 Mar 2017 20:57:39 GMT
ENV MARIADB_MAJOR=10.1
# Tue, 21 Mar 2017 20:57:39 GMT
ENV MARIADB_VERSION=10.1.22+maria-1~jessie
# Tue, 21 Mar 2017 20:57:40 GMT
RUN echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/debian jessie main" > /etc/apt/sources.list.d/mariadb.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Tue, 21 Mar 2017 20:58:26 GMT
RUN { 		echo mariadb-server-$MARIADB_MAJOR mysql-server/root_password password 'unused'; 		echo mariadb-server-$MARIADB_MAJOR mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		mariadb-server=$MARIADB_VERSION 		percona-xtrabackup 		socat 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Tue, 21 Mar 2017 20:58:27 GMT
RUN sed -Ei 's/^(bind-address|log)/#&/' /etc/mysql/my.cnf 	&& echo 'skip-host-cache\nskip-name-resolve' | awk '{ print } $1 == "[mysqld]" && c == 0 { c = 1; system("cat") }' /etc/mysql/my.cnf > /tmp/my.cnf 	&& mv /tmp/my.cnf /etc/mysql/my.cnf
# Tue, 21 Mar 2017 20:58:28 GMT
VOLUME [/var/lib/mysql]
# Tue, 21 Mar 2017 20:58:28 GMT
COPY file:4bddc4758e22941cff70200b3c2b9944da22d0dd3b359657e1d240679abc379b in /usr/local/bin/ 
# Tue, 21 Mar 2017 20:58:30 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 21 Mar 2017 20:58:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 21 Mar 2017 20:58:30 GMT
EXPOSE 3306/tcp
# Tue, 21 Mar 2017 20:58:31 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:6d827a3ef358f4fa21ef8251f95492e667da826653fd43641cef5a877dc03a70`  
		Last Modified: Tue, 21 Mar 2017 18:38:18 GMT  
		Size: 51.4 MB (51438476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed0929eb7dfe716f6e8edb212623ecc441984079645217bc2fb9ed9c04924380`  
		Last Modified: Thu, 23 Mar 2017 00:03:18 GMT  
		Size: 2.0 KB (2047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03f348dc3b9d8c4af8e0fa572d4eb7ef0c5e238d87e9d09513662159d32b4634`  
		Last Modified: Thu, 23 Mar 2017 00:03:17 GMT  
		Size: 1.3 MB (1288974 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd337761ca76fcbda6892c860c2a01288d50e66b7641500139dac7159fdc5a6c`  
		Last Modified: Thu, 23 Mar 2017 00:03:16 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f124cc3249602444e72a2377ed7fb3ecb6584b00864d2adbf452620f9a3c896a`  
		Last Modified: Thu, 23 Mar 2017 00:03:19 GMT  
		Size: 6.5 MB (6539918 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:425010f951736029e8a906083e39ffedf3bc0213476613986c54e1db80f716d3`  
		Last Modified: Thu, 23 Mar 2017 21:59:18 GMT  
		Size: 20.8 KB (20821 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd8823bd18e58f3c20e8beb0cb68080e2fca3012791de1d309c5fe1e5d87a465`  
		Last Modified: Thu, 23 Mar 2017 21:59:16 GMT  
		Size: 314.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8122e5cee80170b0e46d2db68eb54c4675ef810f4c53af2e9b357a0ae0e3ec6a`  
		Last Modified: Thu, 23 Mar 2017 22:00:19 GMT  
		Size: 320.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cd5cdd269c67382e4248a8ccc948e0bee6426f69bb2c842831a8c507021344f`  
		Last Modified: Thu, 23 Mar 2017 22:00:43 GMT  
		Size: 72.9 MB (72893120 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d08d5473e577633760c251741883e2cd28f406a27efeb49c9551fd7f5ded1fd7`  
		Last Modified: Thu, 23 Mar 2017 22:00:18 GMT  
		Size: 2.6 KB (2642 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4ec20909f831db01f18fce64a6c6c2ae12d166e99d5fad06de9925e356e491b`  
		Last Modified: Thu, 23 Mar 2017 22:00:19 GMT  
		Size: 2.1 KB (2131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:071be298c562063400f3c557c3ec15ea2120922a30b260d9f81647c66cd27305`  
		Last Modified: Thu, 23 Mar 2017 22:00:18 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:10`

```console
$ docker pull mariadb@sha256:bae8bc20bf4b714f2166e2f49ae5f1d3438a535a1d7c41ecdfbae9354ef988c4
```

-	Platforms:
	-	linux; amd64

### `mariadb:10` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.2 MB (132188997 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a179773563c938102593c24e0e13e2606811b69090e48e484d92541771fc80b7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 21 Mar 2017 18:28:51 GMT
ADD file:4eedf861fb567fffb2694b65ebdd58d5e371a2c28c3863f363f333cb34e5eb7b in / 
# Tue, 21 Mar 2017 18:29:05 GMT
CMD ["/bin/bash"]
# Tue, 21 Mar 2017 20:57:08 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Tue, 21 Mar 2017 20:57:08 GMT
ENV GOSU_VERSION=1.7
# Tue, 21 Mar 2017 20:57:23 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 21 Mar 2017 20:57:24 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 21 Mar 2017 20:57:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 20:57:36 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Tue, 21 Mar 2017 20:57:38 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 21 Mar 2017 20:57:38 GMT
RUN echo "deb https://repo.percona.com/apt jessie main" > /etc/apt/sources.list.d/percona.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona
# Tue, 21 Mar 2017 20:57:39 GMT
ENV MARIADB_MAJOR=10.1
# Tue, 21 Mar 2017 20:57:39 GMT
ENV MARIADB_VERSION=10.1.22+maria-1~jessie
# Tue, 21 Mar 2017 20:57:40 GMT
RUN echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/debian jessie main" > /etc/apt/sources.list.d/mariadb.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Tue, 21 Mar 2017 20:58:26 GMT
RUN { 		echo mariadb-server-$MARIADB_MAJOR mysql-server/root_password password 'unused'; 		echo mariadb-server-$MARIADB_MAJOR mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		mariadb-server=$MARIADB_VERSION 		percona-xtrabackup 		socat 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Tue, 21 Mar 2017 20:58:27 GMT
RUN sed -Ei 's/^(bind-address|log)/#&/' /etc/mysql/my.cnf 	&& echo 'skip-host-cache\nskip-name-resolve' | awk '{ print } $1 == "[mysqld]" && c == 0 { c = 1; system("cat") }' /etc/mysql/my.cnf > /tmp/my.cnf 	&& mv /tmp/my.cnf /etc/mysql/my.cnf
# Tue, 21 Mar 2017 20:58:28 GMT
VOLUME [/var/lib/mysql]
# Tue, 21 Mar 2017 20:58:28 GMT
COPY file:4bddc4758e22941cff70200b3c2b9944da22d0dd3b359657e1d240679abc379b in /usr/local/bin/ 
# Tue, 21 Mar 2017 20:58:30 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 21 Mar 2017 20:58:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 21 Mar 2017 20:58:30 GMT
EXPOSE 3306/tcp
# Tue, 21 Mar 2017 20:58:31 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:6d827a3ef358f4fa21ef8251f95492e667da826653fd43641cef5a877dc03a70`  
		Last Modified: Tue, 21 Mar 2017 18:38:18 GMT  
		Size: 51.4 MB (51438476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed0929eb7dfe716f6e8edb212623ecc441984079645217bc2fb9ed9c04924380`  
		Last Modified: Thu, 23 Mar 2017 00:03:18 GMT  
		Size: 2.0 KB (2047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03f348dc3b9d8c4af8e0fa572d4eb7ef0c5e238d87e9d09513662159d32b4634`  
		Last Modified: Thu, 23 Mar 2017 00:03:17 GMT  
		Size: 1.3 MB (1288974 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd337761ca76fcbda6892c860c2a01288d50e66b7641500139dac7159fdc5a6c`  
		Last Modified: Thu, 23 Mar 2017 00:03:16 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f124cc3249602444e72a2377ed7fb3ecb6584b00864d2adbf452620f9a3c896a`  
		Last Modified: Thu, 23 Mar 2017 00:03:19 GMT  
		Size: 6.5 MB (6539918 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:425010f951736029e8a906083e39ffedf3bc0213476613986c54e1db80f716d3`  
		Last Modified: Thu, 23 Mar 2017 21:59:18 GMT  
		Size: 20.8 KB (20821 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd8823bd18e58f3c20e8beb0cb68080e2fca3012791de1d309c5fe1e5d87a465`  
		Last Modified: Thu, 23 Mar 2017 21:59:16 GMT  
		Size: 314.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8122e5cee80170b0e46d2db68eb54c4675ef810f4c53af2e9b357a0ae0e3ec6a`  
		Last Modified: Thu, 23 Mar 2017 22:00:19 GMT  
		Size: 320.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cd5cdd269c67382e4248a8ccc948e0bee6426f69bb2c842831a8c507021344f`  
		Last Modified: Thu, 23 Mar 2017 22:00:43 GMT  
		Size: 72.9 MB (72893120 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d08d5473e577633760c251741883e2cd28f406a27efeb49c9551fd7f5ded1fd7`  
		Last Modified: Thu, 23 Mar 2017 22:00:18 GMT  
		Size: 2.6 KB (2642 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4ec20909f831db01f18fce64a6c6c2ae12d166e99d5fad06de9925e356e491b`  
		Last Modified: Thu, 23 Mar 2017 22:00:19 GMT  
		Size: 2.1 KB (2131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:071be298c562063400f3c557c3ec15ea2120922a30b260d9f81647c66cd27305`  
		Last Modified: Thu, 23 Mar 2017 22:00:18 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:latest`

```console
$ docker pull mariadb@sha256:bae8bc20bf4b714f2166e2f49ae5f1d3438a535a1d7c41ecdfbae9354ef988c4
```

-	Platforms:
	-	linux; amd64

### `mariadb:latest` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.2 MB (132188997 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a179773563c938102593c24e0e13e2606811b69090e48e484d92541771fc80b7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 21 Mar 2017 18:28:51 GMT
ADD file:4eedf861fb567fffb2694b65ebdd58d5e371a2c28c3863f363f333cb34e5eb7b in / 
# Tue, 21 Mar 2017 18:29:05 GMT
CMD ["/bin/bash"]
# Tue, 21 Mar 2017 20:57:08 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Tue, 21 Mar 2017 20:57:08 GMT
ENV GOSU_VERSION=1.7
# Tue, 21 Mar 2017 20:57:23 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 21 Mar 2017 20:57:24 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 21 Mar 2017 20:57:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 20:57:36 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Tue, 21 Mar 2017 20:57:38 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 21 Mar 2017 20:57:38 GMT
RUN echo "deb https://repo.percona.com/apt jessie main" > /etc/apt/sources.list.d/percona.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona
# Tue, 21 Mar 2017 20:57:39 GMT
ENV MARIADB_MAJOR=10.1
# Tue, 21 Mar 2017 20:57:39 GMT
ENV MARIADB_VERSION=10.1.22+maria-1~jessie
# Tue, 21 Mar 2017 20:57:40 GMT
RUN echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/debian jessie main" > /etc/apt/sources.list.d/mariadb.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Tue, 21 Mar 2017 20:58:26 GMT
RUN { 		echo mariadb-server-$MARIADB_MAJOR mysql-server/root_password password 'unused'; 		echo mariadb-server-$MARIADB_MAJOR mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		mariadb-server=$MARIADB_VERSION 		percona-xtrabackup 		socat 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Tue, 21 Mar 2017 20:58:27 GMT
RUN sed -Ei 's/^(bind-address|log)/#&/' /etc/mysql/my.cnf 	&& echo 'skip-host-cache\nskip-name-resolve' | awk '{ print } $1 == "[mysqld]" && c == 0 { c = 1; system("cat") }' /etc/mysql/my.cnf > /tmp/my.cnf 	&& mv /tmp/my.cnf /etc/mysql/my.cnf
# Tue, 21 Mar 2017 20:58:28 GMT
VOLUME [/var/lib/mysql]
# Tue, 21 Mar 2017 20:58:28 GMT
COPY file:4bddc4758e22941cff70200b3c2b9944da22d0dd3b359657e1d240679abc379b in /usr/local/bin/ 
# Tue, 21 Mar 2017 20:58:30 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 21 Mar 2017 20:58:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 21 Mar 2017 20:58:30 GMT
EXPOSE 3306/tcp
# Tue, 21 Mar 2017 20:58:31 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:6d827a3ef358f4fa21ef8251f95492e667da826653fd43641cef5a877dc03a70`  
		Last Modified: Tue, 21 Mar 2017 18:38:18 GMT  
		Size: 51.4 MB (51438476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed0929eb7dfe716f6e8edb212623ecc441984079645217bc2fb9ed9c04924380`  
		Last Modified: Thu, 23 Mar 2017 00:03:18 GMT  
		Size: 2.0 KB (2047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03f348dc3b9d8c4af8e0fa572d4eb7ef0c5e238d87e9d09513662159d32b4634`  
		Last Modified: Thu, 23 Mar 2017 00:03:17 GMT  
		Size: 1.3 MB (1288974 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd337761ca76fcbda6892c860c2a01288d50e66b7641500139dac7159fdc5a6c`  
		Last Modified: Thu, 23 Mar 2017 00:03:16 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f124cc3249602444e72a2377ed7fb3ecb6584b00864d2adbf452620f9a3c896a`  
		Last Modified: Thu, 23 Mar 2017 00:03:19 GMT  
		Size: 6.5 MB (6539918 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:425010f951736029e8a906083e39ffedf3bc0213476613986c54e1db80f716d3`  
		Last Modified: Thu, 23 Mar 2017 21:59:18 GMT  
		Size: 20.8 KB (20821 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd8823bd18e58f3c20e8beb0cb68080e2fca3012791de1d309c5fe1e5d87a465`  
		Last Modified: Thu, 23 Mar 2017 21:59:16 GMT  
		Size: 314.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8122e5cee80170b0e46d2db68eb54c4675ef810f4c53af2e9b357a0ae0e3ec6a`  
		Last Modified: Thu, 23 Mar 2017 22:00:19 GMT  
		Size: 320.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cd5cdd269c67382e4248a8ccc948e0bee6426f69bb2c842831a8c507021344f`  
		Last Modified: Thu, 23 Mar 2017 22:00:43 GMT  
		Size: 72.9 MB (72893120 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d08d5473e577633760c251741883e2cd28f406a27efeb49c9551fd7f5ded1fd7`  
		Last Modified: Thu, 23 Mar 2017 22:00:18 GMT  
		Size: 2.6 KB (2642 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4ec20909f831db01f18fce64a6c6c2ae12d166e99d5fad06de9925e356e491b`  
		Last Modified: Thu, 23 Mar 2017 22:00:19 GMT  
		Size: 2.1 KB (2131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:071be298c562063400f3c557c3ec15ea2120922a30b260d9f81647c66cd27305`  
		Last Modified: Thu, 23 Mar 2017 22:00:18 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:10.0.30`

```console
$ docker pull mariadb@sha256:cd25c4c2b9fdbdf2f26876b5be6c00c95dd446e5a12f291ba8026f827d33a7b7
```

-	Platforms:
	-	linux; amd64

### `mariadb:10.0.30` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **117.3 MB (117307002 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9949993fb72021d7012f58a4fc87f05593fd6720265b60849c9e76db18ec98d8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 21 Mar 2017 18:28:51 GMT
ADD file:4eedf861fb567fffb2694b65ebdd58d5e371a2c28c3863f363f333cb34e5eb7b in / 
# Tue, 21 Mar 2017 18:29:05 GMT
CMD ["/bin/bash"]
# Tue, 21 Mar 2017 20:57:08 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Tue, 21 Mar 2017 20:57:08 GMT
ENV GOSU_VERSION=1.7
# Tue, 21 Mar 2017 20:57:23 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 21 Mar 2017 20:57:24 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 21 Mar 2017 20:57:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 20:57:36 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Tue, 21 Mar 2017 20:57:38 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 21 Mar 2017 20:57:38 GMT
RUN echo "deb https://repo.percona.com/apt jessie main" > /etc/apt/sources.list.d/percona.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona
# Tue, 21 Mar 2017 20:58:32 GMT
ENV MARIADB_MAJOR=10.0
# Tue, 21 Mar 2017 20:58:32 GMT
ENV MARIADB_VERSION=10.0.30+maria-1~jessie
# Tue, 21 Mar 2017 20:58:33 GMT
RUN echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/debian jessie main" > /etc/apt/sources.list.d/mariadb.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Tue, 21 Mar 2017 20:59:14 GMT
RUN { 		echo mariadb-server-$MARIADB_MAJOR mysql-server/root_password password 'unused'; 		echo mariadb-server-$MARIADB_MAJOR mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		mariadb-server=$MARIADB_VERSION 		percona-xtrabackup 		socat 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Tue, 21 Mar 2017 20:59:15 GMT
RUN sed -Ei 's/^(bind-address|log)/#&/' /etc/mysql/my.cnf 	&& echo 'skip-host-cache\nskip-name-resolve' | awk '{ print } $1 == "[mysqld]" && c == 0 { c = 1; system("cat") }' /etc/mysql/my.cnf > /tmp/my.cnf 	&& mv /tmp/my.cnf /etc/mysql/my.cnf
# Tue, 21 Mar 2017 20:59:15 GMT
VOLUME [/var/lib/mysql]
# Tue, 21 Mar 2017 20:59:16 GMT
COPY file:4bddc4758e22941cff70200b3c2b9944da22d0dd3b359657e1d240679abc379b in /usr/local/bin/ 
# Tue, 21 Mar 2017 20:59:17 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 21 Mar 2017 20:59:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 21 Mar 2017 20:59:18 GMT
EXPOSE 3306/tcp
# Tue, 21 Mar 2017 20:59:18 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:6d827a3ef358f4fa21ef8251f95492e667da826653fd43641cef5a877dc03a70`  
		Last Modified: Tue, 21 Mar 2017 18:38:18 GMT  
		Size: 51.4 MB (51438476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed0929eb7dfe716f6e8edb212623ecc441984079645217bc2fb9ed9c04924380`  
		Last Modified: Thu, 23 Mar 2017 00:03:18 GMT  
		Size: 2.0 KB (2047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03f348dc3b9d8c4af8e0fa572d4eb7ef0c5e238d87e9d09513662159d32b4634`  
		Last Modified: Thu, 23 Mar 2017 00:03:17 GMT  
		Size: 1.3 MB (1288974 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd337761ca76fcbda6892c860c2a01288d50e66b7641500139dac7159fdc5a6c`  
		Last Modified: Thu, 23 Mar 2017 00:03:16 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f124cc3249602444e72a2377ed7fb3ecb6584b00864d2adbf452620f9a3c896a`  
		Last Modified: Thu, 23 Mar 2017 00:03:19 GMT  
		Size: 6.5 MB (6539918 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:425010f951736029e8a906083e39ffedf3bc0213476613986c54e1db80f716d3`  
		Last Modified: Thu, 23 Mar 2017 21:59:18 GMT  
		Size: 20.8 KB (20821 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd8823bd18e58f3c20e8beb0cb68080e2fca3012791de1d309c5fe1e5d87a465`  
		Last Modified: Thu, 23 Mar 2017 21:59:16 GMT  
		Size: 314.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc6b03ba847e9006b74f95782e3c992320df53123ca09aae2c2d18613ee4a754`  
		Last Modified: Thu, 23 Mar 2017 21:59:14 GMT  
		Size: 319.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81dc10694ca822c69dac6b204a19649e2bae3311b16098a5c4971053e41b47ad`  
		Last Modified: Thu, 23 Mar 2017 21:59:34 GMT  
		Size: 58.0 MB (58011277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:631a27b5180b04e6898013069120c1ad0bd479e1a71d708b6c7f48b3673392ed`  
		Last Modified: Thu, 23 Mar 2017 21:59:14 GMT  
		Size: 2.5 KB (2491 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fb8262ee3894391ae79b636b9bb2442ca59e36129469ee6c5a5f511782ddb04`  
		Last Modified: Thu, 23 Mar 2017 21:59:14 GMT  
		Size: 2.1 KB (2134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:738a0a55e083b3b83a503c985a7ca6e9e4e6487f50d258703a101322e35cec28`  
		Last Modified: Thu, 23 Mar 2017 21:59:14 GMT  
		Size: 117.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:10.0`

```console
$ docker pull mariadb@sha256:cd25c4c2b9fdbdf2f26876b5be6c00c95dd446e5a12f291ba8026f827d33a7b7
```

-	Platforms:
	-	linux; amd64

### `mariadb:10.0` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **117.3 MB (117307002 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9949993fb72021d7012f58a4fc87f05593fd6720265b60849c9e76db18ec98d8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 21 Mar 2017 18:28:51 GMT
ADD file:4eedf861fb567fffb2694b65ebdd58d5e371a2c28c3863f363f333cb34e5eb7b in / 
# Tue, 21 Mar 2017 18:29:05 GMT
CMD ["/bin/bash"]
# Tue, 21 Mar 2017 20:57:08 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Tue, 21 Mar 2017 20:57:08 GMT
ENV GOSU_VERSION=1.7
# Tue, 21 Mar 2017 20:57:23 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 21 Mar 2017 20:57:24 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 21 Mar 2017 20:57:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 20:57:36 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Tue, 21 Mar 2017 20:57:38 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 21 Mar 2017 20:57:38 GMT
RUN echo "deb https://repo.percona.com/apt jessie main" > /etc/apt/sources.list.d/percona.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona
# Tue, 21 Mar 2017 20:58:32 GMT
ENV MARIADB_MAJOR=10.0
# Tue, 21 Mar 2017 20:58:32 GMT
ENV MARIADB_VERSION=10.0.30+maria-1~jessie
# Tue, 21 Mar 2017 20:58:33 GMT
RUN echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/debian jessie main" > /etc/apt/sources.list.d/mariadb.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Tue, 21 Mar 2017 20:59:14 GMT
RUN { 		echo mariadb-server-$MARIADB_MAJOR mysql-server/root_password password 'unused'; 		echo mariadb-server-$MARIADB_MAJOR mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		mariadb-server=$MARIADB_VERSION 		percona-xtrabackup 		socat 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Tue, 21 Mar 2017 20:59:15 GMT
RUN sed -Ei 's/^(bind-address|log)/#&/' /etc/mysql/my.cnf 	&& echo 'skip-host-cache\nskip-name-resolve' | awk '{ print } $1 == "[mysqld]" && c == 0 { c = 1; system("cat") }' /etc/mysql/my.cnf > /tmp/my.cnf 	&& mv /tmp/my.cnf /etc/mysql/my.cnf
# Tue, 21 Mar 2017 20:59:15 GMT
VOLUME [/var/lib/mysql]
# Tue, 21 Mar 2017 20:59:16 GMT
COPY file:4bddc4758e22941cff70200b3c2b9944da22d0dd3b359657e1d240679abc379b in /usr/local/bin/ 
# Tue, 21 Mar 2017 20:59:17 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 21 Mar 2017 20:59:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 21 Mar 2017 20:59:18 GMT
EXPOSE 3306/tcp
# Tue, 21 Mar 2017 20:59:18 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:6d827a3ef358f4fa21ef8251f95492e667da826653fd43641cef5a877dc03a70`  
		Last Modified: Tue, 21 Mar 2017 18:38:18 GMT  
		Size: 51.4 MB (51438476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed0929eb7dfe716f6e8edb212623ecc441984079645217bc2fb9ed9c04924380`  
		Last Modified: Thu, 23 Mar 2017 00:03:18 GMT  
		Size: 2.0 KB (2047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03f348dc3b9d8c4af8e0fa572d4eb7ef0c5e238d87e9d09513662159d32b4634`  
		Last Modified: Thu, 23 Mar 2017 00:03:17 GMT  
		Size: 1.3 MB (1288974 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd337761ca76fcbda6892c860c2a01288d50e66b7641500139dac7159fdc5a6c`  
		Last Modified: Thu, 23 Mar 2017 00:03:16 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f124cc3249602444e72a2377ed7fb3ecb6584b00864d2adbf452620f9a3c896a`  
		Last Modified: Thu, 23 Mar 2017 00:03:19 GMT  
		Size: 6.5 MB (6539918 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:425010f951736029e8a906083e39ffedf3bc0213476613986c54e1db80f716d3`  
		Last Modified: Thu, 23 Mar 2017 21:59:18 GMT  
		Size: 20.8 KB (20821 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd8823bd18e58f3c20e8beb0cb68080e2fca3012791de1d309c5fe1e5d87a465`  
		Last Modified: Thu, 23 Mar 2017 21:59:16 GMT  
		Size: 314.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc6b03ba847e9006b74f95782e3c992320df53123ca09aae2c2d18613ee4a754`  
		Last Modified: Thu, 23 Mar 2017 21:59:14 GMT  
		Size: 319.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81dc10694ca822c69dac6b204a19649e2bae3311b16098a5c4971053e41b47ad`  
		Last Modified: Thu, 23 Mar 2017 21:59:34 GMT  
		Size: 58.0 MB (58011277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:631a27b5180b04e6898013069120c1ad0bd479e1a71d708b6c7f48b3673392ed`  
		Last Modified: Thu, 23 Mar 2017 21:59:14 GMT  
		Size: 2.5 KB (2491 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fb8262ee3894391ae79b636b9bb2442ca59e36129469ee6c5a5f511782ddb04`  
		Last Modified: Thu, 23 Mar 2017 21:59:14 GMT  
		Size: 2.1 KB (2134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:738a0a55e083b3b83a503c985a7ca6e9e4e6487f50d258703a101322e35cec28`  
		Last Modified: Thu, 23 Mar 2017 21:59:14 GMT  
		Size: 117.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:5.5.54`

```console
$ docker pull mariadb@sha256:5c7b68661c3caa6f38342394b61e979cb3da9151b01f275e40e1235982866d70
```

-	Platforms:
	-	linux; amd64

### `mariadb:5.5.54` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **96.6 MB (96606684 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ff311e07a7b5616c302c67bdbee2fdf2fbc236b6025c2579b2f5f9f5ed26f6cf`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 21 Mar 2017 18:36:18 GMT
ADD file:460db8bc0a8ce517fff9d1dc4f7d1e238fc55a11e80c4d09a36cc01ed7372733 in / 
# Tue, 21 Mar 2017 18:36:19 GMT
CMD ["/bin/bash"]
# Tue, 21 Mar 2017 20:59:20 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Tue, 21 Mar 2017 20:59:20 GMT
ENV GOSU_VERSION=1.7
# Tue, 21 Mar 2017 20:59:37 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 21 Mar 2017 20:59:38 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 21 Mar 2017 20:59:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 20:59:50 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Tue, 21 Mar 2017 20:59:52 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 21 Mar 2017 20:59:53 GMT
RUN echo "deb https://repo.percona.com/apt wheezy main" > /etc/apt/sources.list.d/percona.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona
# Tue, 21 Mar 2017 20:59:53 GMT
ENV MARIADB_MAJOR=5.5
# Tue, 21 Mar 2017 20:59:54 GMT
ENV MARIADB_VERSION=5.5.54+maria-1~wheezy
# Tue, 21 Mar 2017 20:59:54 GMT
RUN echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/debian wheezy main" > /etc/apt/sources.list.d/mariadb.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Tue, 21 Mar 2017 21:00:10 GMT
RUN { 		echo mariadb-server-$MARIADB_MAJOR mysql-server/root_password password 'unused'; 		echo mariadb-server-$MARIADB_MAJOR mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		mariadb-server=$MARIADB_VERSION 		percona-xtrabackup 		socat 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Tue, 21 Mar 2017 21:00:11 GMT
RUN sed -Ei 's/^(bind-address|log)/#&/' /etc/mysql/my.cnf 	&& echo 'skip-host-cache\nskip-name-resolve' | awk '{ print } $1 == "[mysqld]" && c == 0 { c = 1; system("cat") }' /etc/mysql/my.cnf > /tmp/my.cnf 	&& mv /tmp/my.cnf /etc/mysql/my.cnf
# Tue, 21 Mar 2017 21:00:12 GMT
VOLUME [/var/lib/mysql]
# Tue, 21 Mar 2017 21:00:12 GMT
COPY file:4bddc4758e22941cff70200b3c2b9944da22d0dd3b359657e1d240679abc379b in /usr/local/bin/ 
# Tue, 21 Mar 2017 21:00:13 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 21 Mar 2017 21:00:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 21 Mar 2017 21:00:14 GMT
EXPOSE 3306/tcp
# Tue, 21 Mar 2017 21:00:15 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:1963618b459343af38baedd65fb15049a4c76f8c75458ea2974cdcda1fa7cd9b`  
		Last Modified: Tue, 21 Mar 2017 18:52:57 GMT  
		Size: 37.3 MB (37271836 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b4cbf9ced2c970cec14234000d787ded3042acd535521e71fb8c4c966a40464`  
		Last Modified: Thu, 23 Mar 2017 22:02:37 GMT  
		Size: 1.7 KB (1696 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a80eeca035e4c57553dd9b93dd12e3d5c147d890d20191aeab3916cfc5bd2bd1`  
		Last Modified: Thu, 23 Mar 2017 22:02:36 GMT  
		Size: 1.2 MB (1244914 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:808d5b2ece4e47b41018aff2f55ba4564db6d017c059e04d832e23e9d9ff2a29`  
		Last Modified: Thu, 23 Mar 2017 22:02:34 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1940f0b376c8410cc775c3e43e591d119d8f7d480b0187112ab67fb5353f2ebc`  
		Last Modified: Thu, 23 Mar 2017 22:02:37 GMT  
		Size: 5.9 MB (5885089 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ec15e99eed3feb284099de0994ddf5192bd6f9b9dce9ded951c6f84b9de66a7`  
		Last Modified: Thu, 23 Mar 2017 22:02:33 GMT  
		Size: 20.8 KB (20800 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8cd0d89ae21628e935c2805dcf8c5b835c007dd488da734ab7d7f05b03685c50`  
		Last Modified: Thu, 23 Mar 2017 22:02:33 GMT  
		Size: 318.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32c8fbb4eb8eb74d36a9e78fe6bf914f46f1ef90fc1959722e64da03b08e6a1e`  
		Last Modified: Thu, 23 Mar 2017 22:02:31 GMT  
		Size: 320.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61c9719bddae6e9b218fb4fd812f8a0a0360e662fd01d5d24eb217f017190be3`  
		Last Modified: Thu, 23 Mar 2017 22:02:48 GMT  
		Size: 52.2 MB (52176852 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84d6b15a7de7015570643d686a1c9f3a56700505692950eb62e7d34e4ee14057`  
		Last Modified: Thu, 23 Mar 2017 22:02:31 GMT  
		Size: 2.5 KB (2491 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3db5d3319d34c5c24a52580e60b7555374df63bda7f6299953293230e45f2a8e`  
		Last Modified: Thu, 23 Mar 2017 22:02:31 GMT  
		Size: 2.1 KB (2134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ec1ca0172dc0cbc141ca4e02b050ba4bcf6ee8d228e860400ac57ef00737bb7`  
		Last Modified: Thu, 23 Mar 2017 22:02:31 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:5.5`

```console
$ docker pull mariadb@sha256:5c7b68661c3caa6f38342394b61e979cb3da9151b01f275e40e1235982866d70
```

-	Platforms:
	-	linux; amd64

### `mariadb:5.5` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **96.6 MB (96606684 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ff311e07a7b5616c302c67bdbee2fdf2fbc236b6025c2579b2f5f9f5ed26f6cf`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 21 Mar 2017 18:36:18 GMT
ADD file:460db8bc0a8ce517fff9d1dc4f7d1e238fc55a11e80c4d09a36cc01ed7372733 in / 
# Tue, 21 Mar 2017 18:36:19 GMT
CMD ["/bin/bash"]
# Tue, 21 Mar 2017 20:59:20 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Tue, 21 Mar 2017 20:59:20 GMT
ENV GOSU_VERSION=1.7
# Tue, 21 Mar 2017 20:59:37 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 21 Mar 2017 20:59:38 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 21 Mar 2017 20:59:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 20:59:50 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Tue, 21 Mar 2017 20:59:52 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 21 Mar 2017 20:59:53 GMT
RUN echo "deb https://repo.percona.com/apt wheezy main" > /etc/apt/sources.list.d/percona.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona
# Tue, 21 Mar 2017 20:59:53 GMT
ENV MARIADB_MAJOR=5.5
# Tue, 21 Mar 2017 20:59:54 GMT
ENV MARIADB_VERSION=5.5.54+maria-1~wheezy
# Tue, 21 Mar 2017 20:59:54 GMT
RUN echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/debian wheezy main" > /etc/apt/sources.list.d/mariadb.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Tue, 21 Mar 2017 21:00:10 GMT
RUN { 		echo mariadb-server-$MARIADB_MAJOR mysql-server/root_password password 'unused'; 		echo mariadb-server-$MARIADB_MAJOR mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		mariadb-server=$MARIADB_VERSION 		percona-xtrabackup 		socat 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Tue, 21 Mar 2017 21:00:11 GMT
RUN sed -Ei 's/^(bind-address|log)/#&/' /etc/mysql/my.cnf 	&& echo 'skip-host-cache\nskip-name-resolve' | awk '{ print } $1 == "[mysqld]" && c == 0 { c = 1; system("cat") }' /etc/mysql/my.cnf > /tmp/my.cnf 	&& mv /tmp/my.cnf /etc/mysql/my.cnf
# Tue, 21 Mar 2017 21:00:12 GMT
VOLUME [/var/lib/mysql]
# Tue, 21 Mar 2017 21:00:12 GMT
COPY file:4bddc4758e22941cff70200b3c2b9944da22d0dd3b359657e1d240679abc379b in /usr/local/bin/ 
# Tue, 21 Mar 2017 21:00:13 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 21 Mar 2017 21:00:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 21 Mar 2017 21:00:14 GMT
EXPOSE 3306/tcp
# Tue, 21 Mar 2017 21:00:15 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:1963618b459343af38baedd65fb15049a4c76f8c75458ea2974cdcda1fa7cd9b`  
		Last Modified: Tue, 21 Mar 2017 18:52:57 GMT  
		Size: 37.3 MB (37271836 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b4cbf9ced2c970cec14234000d787ded3042acd535521e71fb8c4c966a40464`  
		Last Modified: Thu, 23 Mar 2017 22:02:37 GMT  
		Size: 1.7 KB (1696 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a80eeca035e4c57553dd9b93dd12e3d5c147d890d20191aeab3916cfc5bd2bd1`  
		Last Modified: Thu, 23 Mar 2017 22:02:36 GMT  
		Size: 1.2 MB (1244914 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:808d5b2ece4e47b41018aff2f55ba4564db6d017c059e04d832e23e9d9ff2a29`  
		Last Modified: Thu, 23 Mar 2017 22:02:34 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1940f0b376c8410cc775c3e43e591d119d8f7d480b0187112ab67fb5353f2ebc`  
		Last Modified: Thu, 23 Mar 2017 22:02:37 GMT  
		Size: 5.9 MB (5885089 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ec15e99eed3feb284099de0994ddf5192bd6f9b9dce9ded951c6f84b9de66a7`  
		Last Modified: Thu, 23 Mar 2017 22:02:33 GMT  
		Size: 20.8 KB (20800 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8cd0d89ae21628e935c2805dcf8c5b835c007dd488da734ab7d7f05b03685c50`  
		Last Modified: Thu, 23 Mar 2017 22:02:33 GMT  
		Size: 318.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32c8fbb4eb8eb74d36a9e78fe6bf914f46f1ef90fc1959722e64da03b08e6a1e`  
		Last Modified: Thu, 23 Mar 2017 22:02:31 GMT  
		Size: 320.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61c9719bddae6e9b218fb4fd812f8a0a0360e662fd01d5d24eb217f017190be3`  
		Last Modified: Thu, 23 Mar 2017 22:02:48 GMT  
		Size: 52.2 MB (52176852 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84d6b15a7de7015570643d686a1c9f3a56700505692950eb62e7d34e4ee14057`  
		Last Modified: Thu, 23 Mar 2017 22:02:31 GMT  
		Size: 2.5 KB (2491 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3db5d3319d34c5c24a52580e60b7555374df63bda7f6299953293230e45f2a8e`  
		Last Modified: Thu, 23 Mar 2017 22:02:31 GMT  
		Size: 2.1 KB (2134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ec1ca0172dc0cbc141ca4e02b050ba4bcf6ee8d228e860400ac57ef00737bb7`  
		Last Modified: Thu, 23 Mar 2017 22:02:31 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:5`

```console
$ docker pull mariadb@sha256:5c7b68661c3caa6f38342394b61e979cb3da9151b01f275e40e1235982866d70
```

-	Platforms:
	-	linux; amd64

### `mariadb:5` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **96.6 MB (96606684 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ff311e07a7b5616c302c67bdbee2fdf2fbc236b6025c2579b2f5f9f5ed26f6cf`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 21 Mar 2017 18:36:18 GMT
ADD file:460db8bc0a8ce517fff9d1dc4f7d1e238fc55a11e80c4d09a36cc01ed7372733 in / 
# Tue, 21 Mar 2017 18:36:19 GMT
CMD ["/bin/bash"]
# Tue, 21 Mar 2017 20:59:20 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Tue, 21 Mar 2017 20:59:20 GMT
ENV GOSU_VERSION=1.7
# Tue, 21 Mar 2017 20:59:37 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 21 Mar 2017 20:59:38 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 21 Mar 2017 20:59:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 20:59:50 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Tue, 21 Mar 2017 20:59:52 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 21 Mar 2017 20:59:53 GMT
RUN echo "deb https://repo.percona.com/apt wheezy main" > /etc/apt/sources.list.d/percona.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona
# Tue, 21 Mar 2017 20:59:53 GMT
ENV MARIADB_MAJOR=5.5
# Tue, 21 Mar 2017 20:59:54 GMT
ENV MARIADB_VERSION=5.5.54+maria-1~wheezy
# Tue, 21 Mar 2017 20:59:54 GMT
RUN echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/debian wheezy main" > /etc/apt/sources.list.d/mariadb.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Tue, 21 Mar 2017 21:00:10 GMT
RUN { 		echo mariadb-server-$MARIADB_MAJOR mysql-server/root_password password 'unused'; 		echo mariadb-server-$MARIADB_MAJOR mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		mariadb-server=$MARIADB_VERSION 		percona-xtrabackup 		socat 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Tue, 21 Mar 2017 21:00:11 GMT
RUN sed -Ei 's/^(bind-address|log)/#&/' /etc/mysql/my.cnf 	&& echo 'skip-host-cache\nskip-name-resolve' | awk '{ print } $1 == "[mysqld]" && c == 0 { c = 1; system("cat") }' /etc/mysql/my.cnf > /tmp/my.cnf 	&& mv /tmp/my.cnf /etc/mysql/my.cnf
# Tue, 21 Mar 2017 21:00:12 GMT
VOLUME [/var/lib/mysql]
# Tue, 21 Mar 2017 21:00:12 GMT
COPY file:4bddc4758e22941cff70200b3c2b9944da22d0dd3b359657e1d240679abc379b in /usr/local/bin/ 
# Tue, 21 Mar 2017 21:00:13 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 21 Mar 2017 21:00:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 21 Mar 2017 21:00:14 GMT
EXPOSE 3306/tcp
# Tue, 21 Mar 2017 21:00:15 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:1963618b459343af38baedd65fb15049a4c76f8c75458ea2974cdcda1fa7cd9b`  
		Last Modified: Tue, 21 Mar 2017 18:52:57 GMT  
		Size: 37.3 MB (37271836 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b4cbf9ced2c970cec14234000d787ded3042acd535521e71fb8c4c966a40464`  
		Last Modified: Thu, 23 Mar 2017 22:02:37 GMT  
		Size: 1.7 KB (1696 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a80eeca035e4c57553dd9b93dd12e3d5c147d890d20191aeab3916cfc5bd2bd1`  
		Last Modified: Thu, 23 Mar 2017 22:02:36 GMT  
		Size: 1.2 MB (1244914 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:808d5b2ece4e47b41018aff2f55ba4564db6d017c059e04d832e23e9d9ff2a29`  
		Last Modified: Thu, 23 Mar 2017 22:02:34 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1940f0b376c8410cc775c3e43e591d119d8f7d480b0187112ab67fb5353f2ebc`  
		Last Modified: Thu, 23 Mar 2017 22:02:37 GMT  
		Size: 5.9 MB (5885089 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ec15e99eed3feb284099de0994ddf5192bd6f9b9dce9ded951c6f84b9de66a7`  
		Last Modified: Thu, 23 Mar 2017 22:02:33 GMT  
		Size: 20.8 KB (20800 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8cd0d89ae21628e935c2805dcf8c5b835c007dd488da734ab7d7f05b03685c50`  
		Last Modified: Thu, 23 Mar 2017 22:02:33 GMT  
		Size: 318.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32c8fbb4eb8eb74d36a9e78fe6bf914f46f1ef90fc1959722e64da03b08e6a1e`  
		Last Modified: Thu, 23 Mar 2017 22:02:31 GMT  
		Size: 320.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61c9719bddae6e9b218fb4fd812f8a0a0360e662fd01d5d24eb217f017190be3`  
		Last Modified: Thu, 23 Mar 2017 22:02:48 GMT  
		Size: 52.2 MB (52176852 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84d6b15a7de7015570643d686a1c9f3a56700505692950eb62e7d34e4ee14057`  
		Last Modified: Thu, 23 Mar 2017 22:02:31 GMT  
		Size: 2.5 KB (2491 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3db5d3319d34c5c24a52580e60b7555374df63bda7f6299953293230e45f2a8e`  
		Last Modified: Thu, 23 Mar 2017 22:02:31 GMT  
		Size: 2.1 KB (2134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ec1ca0172dc0cbc141ca4e02b050ba4bcf6ee8d228e860400ac57ef00737bb7`  
		Last Modified: Thu, 23 Mar 2017 22:02:31 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
