<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `mariadb`

-	[`mariadb:10.1.22`](#mariadb10122)
-	[`mariadb:10.1`](#mariadb101)
-	[`mariadb:10`](#mariadb10)
-	[`mariadb:latest`](#mariadblatest)
-	[`mariadb:10.0.30`](#mariadb10030)
-	[`mariadb:10.0`](#mariadb100)
-	[`mariadb:5.5.55`](#mariadb5555)
-	[`mariadb:5.5`](#mariadb55)
-	[`mariadb:5`](#mariadb5)

## `mariadb:10.1.22`

```console
$ docker pull mariadb@sha256:42bbb87f580850e60a3389a73a2e15f4c9ba19735304d1f157c213a3e579b8a2
```

-	Platforms:
	-	linux; amd64

### `mariadb:10.1.22` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.2 MB (132189387 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cc9dd0eaeb44f11849c024fd5d602dbe06a5f79b31477d0bc72a1f887a5a4539`
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
# Thu, 06 Apr 2017 18:21:56 GMT
COPY file:d559178e6a2929e36791c6a1fa232dc4ac4298ecc446d38972ee1d2a58e30621 in /usr/local/bin/ 
# Thu, 06 Apr 2017 18:21:58 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 06 Apr 2017 18:21:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 06 Apr 2017 18:21:59 GMT
EXPOSE 3306/tcp
# Thu, 06 Apr 2017 18:22:00 GMT
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
	-	`sha256:8459510bffd2850d61f7ceacac2c0bf5fe63ec170d4e1b2d2800e012fe4a2d6e`  
		Last Modified: Thu, 06 Apr 2017 18:22:31 GMT  
		Size: 2.5 KB (2521 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bebdb1229b44049afd8fceec81e9305937639247a66549087b5b4a44d8d0a901`  
		Last Modified: Thu, 06 Apr 2017 18:22:33 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:10.1`

```console
$ docker pull mariadb@sha256:42bbb87f580850e60a3389a73a2e15f4c9ba19735304d1f157c213a3e579b8a2
```

-	Platforms:
	-	linux; amd64

### `mariadb:10.1` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.2 MB (132189387 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cc9dd0eaeb44f11849c024fd5d602dbe06a5f79b31477d0bc72a1f887a5a4539`
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
# Thu, 06 Apr 2017 18:21:56 GMT
COPY file:d559178e6a2929e36791c6a1fa232dc4ac4298ecc446d38972ee1d2a58e30621 in /usr/local/bin/ 
# Thu, 06 Apr 2017 18:21:58 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 06 Apr 2017 18:21:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 06 Apr 2017 18:21:59 GMT
EXPOSE 3306/tcp
# Thu, 06 Apr 2017 18:22:00 GMT
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
	-	`sha256:8459510bffd2850d61f7ceacac2c0bf5fe63ec170d4e1b2d2800e012fe4a2d6e`  
		Last Modified: Thu, 06 Apr 2017 18:22:31 GMT  
		Size: 2.5 KB (2521 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bebdb1229b44049afd8fceec81e9305937639247a66549087b5b4a44d8d0a901`  
		Last Modified: Thu, 06 Apr 2017 18:22:33 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:10`

```console
$ docker pull mariadb@sha256:42bbb87f580850e60a3389a73a2e15f4c9ba19735304d1f157c213a3e579b8a2
```

-	Platforms:
	-	linux; amd64

### `mariadb:10` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.2 MB (132189387 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cc9dd0eaeb44f11849c024fd5d602dbe06a5f79b31477d0bc72a1f887a5a4539`
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
# Thu, 06 Apr 2017 18:21:56 GMT
COPY file:d559178e6a2929e36791c6a1fa232dc4ac4298ecc446d38972ee1d2a58e30621 in /usr/local/bin/ 
# Thu, 06 Apr 2017 18:21:58 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 06 Apr 2017 18:21:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 06 Apr 2017 18:21:59 GMT
EXPOSE 3306/tcp
# Thu, 06 Apr 2017 18:22:00 GMT
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
	-	`sha256:8459510bffd2850d61f7ceacac2c0bf5fe63ec170d4e1b2d2800e012fe4a2d6e`  
		Last Modified: Thu, 06 Apr 2017 18:22:31 GMT  
		Size: 2.5 KB (2521 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bebdb1229b44049afd8fceec81e9305937639247a66549087b5b4a44d8d0a901`  
		Last Modified: Thu, 06 Apr 2017 18:22:33 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:latest`

```console
$ docker pull mariadb@sha256:42bbb87f580850e60a3389a73a2e15f4c9ba19735304d1f157c213a3e579b8a2
```

-	Platforms:
	-	linux; amd64

### `mariadb:latest` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.2 MB (132189387 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cc9dd0eaeb44f11849c024fd5d602dbe06a5f79b31477d0bc72a1f887a5a4539`
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
# Thu, 06 Apr 2017 18:21:56 GMT
COPY file:d559178e6a2929e36791c6a1fa232dc4ac4298ecc446d38972ee1d2a58e30621 in /usr/local/bin/ 
# Thu, 06 Apr 2017 18:21:58 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 06 Apr 2017 18:21:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 06 Apr 2017 18:21:59 GMT
EXPOSE 3306/tcp
# Thu, 06 Apr 2017 18:22:00 GMT
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
	-	`sha256:8459510bffd2850d61f7ceacac2c0bf5fe63ec170d4e1b2d2800e012fe4a2d6e`  
		Last Modified: Thu, 06 Apr 2017 18:22:31 GMT  
		Size: 2.5 KB (2521 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bebdb1229b44049afd8fceec81e9305937639247a66549087b5b4a44d8d0a901`  
		Last Modified: Thu, 06 Apr 2017 18:22:33 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:10.0.30`

```console
$ docker pull mariadb@sha256:92aea703512f313cf74a3a567bcf9e63078cfb611618450cd57997a8ea6d087d
```

-	Platforms:
	-	linux; amd64

### `mariadb:10.0.30` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **117.3 MB (117307391 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2191e38d9c916e347c9d3925236790fce024803ed9fb3690d2498d68fb845d65`
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
# Thu, 06 Apr 2017 18:22:01 GMT
COPY file:d559178e6a2929e36791c6a1fa232dc4ac4298ecc446d38972ee1d2a58e30621 in /usr/local/bin/ 
# Thu, 06 Apr 2017 18:22:02 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 06 Apr 2017 18:22:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 06 Apr 2017 18:22:04 GMT
EXPOSE 3306/tcp
# Thu, 06 Apr 2017 18:22:04 GMT
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
	-	`sha256:96da28f04ace1b763e84a6ccd900267397c16ca5f18749cd0cfab6b9c3a457db`  
		Last Modified: Thu, 06 Apr 2017 18:23:58 GMT  
		Size: 2.5 KB (2520 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f83c8210f0f42b0839d99fa97589b4d527111da5caed0527f6b384dda18e2ed`  
		Last Modified: Thu, 06 Apr 2017 18:23:58 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:10.0`

```console
$ docker pull mariadb@sha256:92aea703512f313cf74a3a567bcf9e63078cfb611618450cd57997a8ea6d087d
```

-	Platforms:
	-	linux; amd64

### `mariadb:10.0` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **117.3 MB (117307391 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2191e38d9c916e347c9d3925236790fce024803ed9fb3690d2498d68fb845d65`
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
# Thu, 06 Apr 2017 18:22:01 GMT
COPY file:d559178e6a2929e36791c6a1fa232dc4ac4298ecc446d38972ee1d2a58e30621 in /usr/local/bin/ 
# Thu, 06 Apr 2017 18:22:02 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 06 Apr 2017 18:22:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 06 Apr 2017 18:22:04 GMT
EXPOSE 3306/tcp
# Thu, 06 Apr 2017 18:22:04 GMT
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
	-	`sha256:96da28f04ace1b763e84a6ccd900267397c16ca5f18749cd0cfab6b9c3a457db`  
		Last Modified: Thu, 06 Apr 2017 18:23:58 GMT  
		Size: 2.5 KB (2520 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f83c8210f0f42b0839d99fa97589b4d527111da5caed0527f6b384dda18e2ed`  
		Last Modified: Thu, 06 Apr 2017 18:23:58 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:5.5.55`

```console
$ docker pull mariadb@sha256:b3190bbadc206244f86ddde399cf35e4f7dde701586342e5bbd5449c4679e446
```

-	Platforms:
	-	linux; amd64

### `mariadb:5.5.55` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **97.5 MB (97455955 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1abf76dc063b64ec299399d067f61815e06732badaab12062697330f2f77c617`
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
# Thu, 13 Apr 2017 19:16:25 GMT
ENV MARIADB_VERSION=5.5.55+maria-1~wheezy
# Thu, 13 Apr 2017 19:16:26 GMT
RUN echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/debian wheezy main" > /etc/apt/sources.list.d/mariadb.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Thu, 13 Apr 2017 19:17:01 GMT
RUN { 		echo mariadb-server-$MARIADB_MAJOR mysql-server/root_password password 'unused'; 		echo mariadb-server-$MARIADB_MAJOR mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		mariadb-server=$MARIADB_VERSION 		percona-xtrabackup 		socat 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Thu, 13 Apr 2017 19:17:03 GMT
RUN sed -Ei 's/^(bind-address|log)/#&/' /etc/mysql/my.cnf 	&& echo 'skip-host-cache\nskip-name-resolve' | awk '{ print } $1 == "[mysqld]" && c == 0 { c = 1; system("cat") }' /etc/mysql/my.cnf > /tmp/my.cnf 	&& mv /tmp/my.cnf /etc/mysql/my.cnf
# Thu, 13 Apr 2017 19:17:04 GMT
VOLUME [/var/lib/mysql]
# Thu, 13 Apr 2017 19:17:06 GMT
COPY file:d559178e6a2929e36791c6a1fa232dc4ac4298ecc446d38972ee1d2a58e30621 in /usr/local/bin/ 
# Thu, 13 Apr 2017 19:17:08 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 13 Apr 2017 19:17:09 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 13 Apr 2017 19:17:09 GMT
EXPOSE 3306/tcp
# Thu, 13 Apr 2017 19:17:10 GMT
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
	-	`sha256:ec3ea6aeedc54ac8be40695a82761f3fc9ba6b0e0eb18d881eadb8de92217041`  
		Last Modified: Thu, 13 Apr 2017 19:19:19 GMT  
		Size: 321.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8b6c2d472362558c313f56fcace1a1959dcea11f56de901f24a91b6b7163913`  
		Last Modified: Thu, 13 Apr 2017 19:19:28 GMT  
		Size: 53.0 MB (53025709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:246ba72855e9b9c119bc9d21f62550adff403832e83b8cdbcb8e117c1a5b6df7`  
		Last Modified: Thu, 13 Apr 2017 19:19:20 GMT  
		Size: 2.5 KB (2491 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01be74e086e794492fbe29af947ff206e9731785cfb93117b26b162ebe1b5e49`  
		Last Modified: Thu, 13 Apr 2017 19:19:20 GMT  
		Size: 2.5 KB (2546 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf733531cd6caf3d3541bc2a453177c1d8cfed86261ca0732e6ed168affa7ace`  
		Last Modified: Thu, 13 Apr 2017 19:19:25 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:5.5`

```console
$ docker pull mariadb@sha256:b3190bbadc206244f86ddde399cf35e4f7dde701586342e5bbd5449c4679e446
```

-	Platforms:
	-	linux; amd64

### `mariadb:5.5` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **97.5 MB (97455955 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1abf76dc063b64ec299399d067f61815e06732badaab12062697330f2f77c617`
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
# Thu, 13 Apr 2017 19:16:25 GMT
ENV MARIADB_VERSION=5.5.55+maria-1~wheezy
# Thu, 13 Apr 2017 19:16:26 GMT
RUN echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/debian wheezy main" > /etc/apt/sources.list.d/mariadb.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Thu, 13 Apr 2017 19:17:01 GMT
RUN { 		echo mariadb-server-$MARIADB_MAJOR mysql-server/root_password password 'unused'; 		echo mariadb-server-$MARIADB_MAJOR mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		mariadb-server=$MARIADB_VERSION 		percona-xtrabackup 		socat 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Thu, 13 Apr 2017 19:17:03 GMT
RUN sed -Ei 's/^(bind-address|log)/#&/' /etc/mysql/my.cnf 	&& echo 'skip-host-cache\nskip-name-resolve' | awk '{ print } $1 == "[mysqld]" && c == 0 { c = 1; system("cat") }' /etc/mysql/my.cnf > /tmp/my.cnf 	&& mv /tmp/my.cnf /etc/mysql/my.cnf
# Thu, 13 Apr 2017 19:17:04 GMT
VOLUME [/var/lib/mysql]
# Thu, 13 Apr 2017 19:17:06 GMT
COPY file:d559178e6a2929e36791c6a1fa232dc4ac4298ecc446d38972ee1d2a58e30621 in /usr/local/bin/ 
# Thu, 13 Apr 2017 19:17:08 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 13 Apr 2017 19:17:09 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 13 Apr 2017 19:17:09 GMT
EXPOSE 3306/tcp
# Thu, 13 Apr 2017 19:17:10 GMT
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
	-	`sha256:ec3ea6aeedc54ac8be40695a82761f3fc9ba6b0e0eb18d881eadb8de92217041`  
		Last Modified: Thu, 13 Apr 2017 19:19:19 GMT  
		Size: 321.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8b6c2d472362558c313f56fcace1a1959dcea11f56de901f24a91b6b7163913`  
		Last Modified: Thu, 13 Apr 2017 19:19:28 GMT  
		Size: 53.0 MB (53025709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:246ba72855e9b9c119bc9d21f62550adff403832e83b8cdbcb8e117c1a5b6df7`  
		Last Modified: Thu, 13 Apr 2017 19:19:20 GMT  
		Size: 2.5 KB (2491 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01be74e086e794492fbe29af947ff206e9731785cfb93117b26b162ebe1b5e49`  
		Last Modified: Thu, 13 Apr 2017 19:19:20 GMT  
		Size: 2.5 KB (2546 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf733531cd6caf3d3541bc2a453177c1d8cfed86261ca0732e6ed168affa7ace`  
		Last Modified: Thu, 13 Apr 2017 19:19:25 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:5`

```console
$ docker pull mariadb@sha256:b3190bbadc206244f86ddde399cf35e4f7dde701586342e5bbd5449c4679e446
```

-	Platforms:
	-	linux; amd64

### `mariadb:5` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **97.5 MB (97455955 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1abf76dc063b64ec299399d067f61815e06732badaab12062697330f2f77c617`
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
# Thu, 13 Apr 2017 19:16:25 GMT
ENV MARIADB_VERSION=5.5.55+maria-1~wheezy
# Thu, 13 Apr 2017 19:16:26 GMT
RUN echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/debian wheezy main" > /etc/apt/sources.list.d/mariadb.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Thu, 13 Apr 2017 19:17:01 GMT
RUN { 		echo mariadb-server-$MARIADB_MAJOR mysql-server/root_password password 'unused'; 		echo mariadb-server-$MARIADB_MAJOR mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		mariadb-server=$MARIADB_VERSION 		percona-xtrabackup 		socat 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Thu, 13 Apr 2017 19:17:03 GMT
RUN sed -Ei 's/^(bind-address|log)/#&/' /etc/mysql/my.cnf 	&& echo 'skip-host-cache\nskip-name-resolve' | awk '{ print } $1 == "[mysqld]" && c == 0 { c = 1; system("cat") }' /etc/mysql/my.cnf > /tmp/my.cnf 	&& mv /tmp/my.cnf /etc/mysql/my.cnf
# Thu, 13 Apr 2017 19:17:04 GMT
VOLUME [/var/lib/mysql]
# Thu, 13 Apr 2017 19:17:06 GMT
COPY file:d559178e6a2929e36791c6a1fa232dc4ac4298ecc446d38972ee1d2a58e30621 in /usr/local/bin/ 
# Thu, 13 Apr 2017 19:17:08 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 13 Apr 2017 19:17:09 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 13 Apr 2017 19:17:09 GMT
EXPOSE 3306/tcp
# Thu, 13 Apr 2017 19:17:10 GMT
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
	-	`sha256:ec3ea6aeedc54ac8be40695a82761f3fc9ba6b0e0eb18d881eadb8de92217041`  
		Last Modified: Thu, 13 Apr 2017 19:19:19 GMT  
		Size: 321.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8b6c2d472362558c313f56fcace1a1959dcea11f56de901f24a91b6b7163913`  
		Last Modified: Thu, 13 Apr 2017 19:19:28 GMT  
		Size: 53.0 MB (53025709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:246ba72855e9b9c119bc9d21f62550adff403832e83b8cdbcb8e117c1a5b6df7`  
		Last Modified: Thu, 13 Apr 2017 19:19:20 GMT  
		Size: 2.5 KB (2491 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01be74e086e794492fbe29af947ff206e9731785cfb93117b26b162ebe1b5e49`  
		Last Modified: Thu, 13 Apr 2017 19:19:20 GMT  
		Size: 2.5 KB (2546 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf733531cd6caf3d3541bc2a453177c1d8cfed86261ca0732e6ed168affa7ace`  
		Last Modified: Thu, 13 Apr 2017 19:19:25 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
