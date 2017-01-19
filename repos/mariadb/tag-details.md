<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `mariadb`

-	[`mariadb:10.1.21`](#mariadb10121)
-	[`mariadb:10.1`](#mariadb101)
-	[`mariadb:10`](#mariadb10)
-	[`mariadb:latest`](#mariadblatest)
-	[`mariadb:10.0.29`](#mariadb10029)
-	[`mariadb:10.0`](#mariadb100)
-	[`mariadb:5.5.54`](#mariadb5554)
-	[`mariadb:5.5`](#mariadb55)
-	[`mariadb:5`](#mariadb5)

## `mariadb:10.1.21`

```console
$ docker pull mariadb@sha256:ed04792bb13c111cbd1743c2921ea6cf777051a7f7f51f7b134efec9af7afdad
```

-	Platforms:
	-	linux; amd64

### `mariadb:10.1.21` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **131.8 MB (131843568 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7eca0e0b51c9351ea6a3639b3229432a7f7180dcc3a90ee47b9dd062fcfb520a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 17:16:20 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Tue, 17 Jan 2017 17:16:20 GMT
ENV GOSU_VERSION=1.7
# Tue, 17 Jan 2017 17:16:35 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 17 Jan 2017 17:16:36 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 17 Jan 2017 17:16:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 17:16:49 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Tue, 17 Jan 2017 17:16:52 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 17 Jan 2017 17:16:52 GMT
RUN echo "deb https://repo.percona.com/apt jessie main" > /etc/apt/sources.list.d/percona.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona
# Tue, 17 Jan 2017 17:16:53 GMT
ENV MARIADB_MAJOR=10.1
# Wed, 18 Jan 2017 22:55:31 GMT
ENV MARIADB_VERSION=10.1.21+maria-1~jessie
# Wed, 18 Jan 2017 22:55:32 GMT
RUN echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/debian jessie main" > /etc/apt/sources.list.d/mariadb.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Wed, 18 Jan 2017 22:56:21 GMT
RUN { 		echo mariadb-server-$MARIADB_MAJOR mysql-server/root_password password 'unused'; 		echo mariadb-server-$MARIADB_MAJOR mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		mariadb-server=$MARIADB_VERSION 		percona-xtrabackup 		socat 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Wed, 18 Jan 2017 22:56:23 GMT
RUN sed -Ei 's/^(bind-address|log)/#&/' /etc/mysql/my.cnf 	&& echo 'skip-host-cache\nskip-name-resolve' | awk '{ print } $1 == "[mysqld]" && c == 0 { c = 1; system("cat") }' /etc/mysql/my.cnf > /tmp/my.cnf 	&& mv /tmp/my.cnf /etc/mysql/my.cnf
# Wed, 18 Jan 2017 22:56:23 GMT
VOLUME [/var/lib/mysql]
# Wed, 18 Jan 2017 22:56:24 GMT
COPY file:4bddc4758e22941cff70200b3c2b9944da22d0dd3b359657e1d240679abc379b in /usr/local/bin/ 
# Wed, 18 Jan 2017 22:56:25 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 18 Jan 2017 22:56:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 18 Jan 2017 22:56:26 GMT
EXPOSE 3306/tcp
# Wed, 18 Jan 2017 22:56:27 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55370df683150a0191e0349c09e9113d3b5c06475334ccb21365bcbcc696b4ef`  
		Last Modified: Wed, 18 Jan 2017 04:29:36 GMT  
		Size: 2.0 KB (2047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fad5195d69ccfb010b2a2aa36be888eaece726ddd355ac126ef45f126e3bee99`  
		Last Modified: Wed, 18 Jan 2017 04:29:36 GMT  
		Size: 1.2 MB (1216700 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1034a5fbbfc91073603066f2801c0705ed3b2ac81976f560b4854a5a1262f29`  
		Last Modified: Wed, 18 Jan 2017 04:29:34 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb46f36a6163492d45487d66f6442838de6df332309f4b43869d2a32d4bc6623`  
		Last Modified: Wed, 18 Jan 2017 04:29:35 GMT  
		Size: 6.5 MB (6467462 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de7067e4ea0a87eeee5c577af2fbb43d660b5bc2a007c5caca373952bdf1d4f6`  
		Last Modified: Wed, 18 Jan 2017 04:29:33 GMT  
		Size: 20.8 KB (20821 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc40d1291bb984d8a67344266e458a19e0e548ba8fca445d3a102434d3a1c487`  
		Last Modified: Wed, 18 Jan 2017 04:29:32 GMT  
		Size: 315.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aff5d18aeeef7ef574c082a68f4715de21e98119dac0ec4129b1ecf6e0ff8d6a`  
		Last Modified: Wed, 18 Jan 2017 22:56:43 GMT  
		Size: 318.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c729aed3f3df7e9133ae740b3bc4d3317046ce113f142e710d16a04d8e56e60`  
		Last Modified: Wed, 18 Jan 2017 22:57:03 GMT  
		Size: 72.8 MB (72769685 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed7e90870837e4d239815387eeecdc49203b20027ecd364e4823038d04fbd5b8`  
		Last Modified: Wed, 18 Jan 2017 22:56:43 GMT  
		Size: 2.6 KB (2644 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ae91f5b8acf9b6fb93ae50bb87c1340e7dbabfe62681477317d7a0a33478fa6`  
		Last Modified: Wed, 18 Jan 2017 22:56:43 GMT  
		Size: 2.1 KB (2133 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa554fbac13db9bf9788862940a8477ba2b8d6ea85c126017410f1a28f0af50a`  
		Last Modified: Wed, 18 Jan 2017 22:56:43 GMT  
		Size: 119.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:10.1`

```console
$ docker pull mariadb@sha256:ed04792bb13c111cbd1743c2921ea6cf777051a7f7f51f7b134efec9af7afdad
```

-	Platforms:
	-	linux; amd64

### `mariadb:10.1` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **131.8 MB (131843568 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7eca0e0b51c9351ea6a3639b3229432a7f7180dcc3a90ee47b9dd062fcfb520a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 17:16:20 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Tue, 17 Jan 2017 17:16:20 GMT
ENV GOSU_VERSION=1.7
# Tue, 17 Jan 2017 17:16:35 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 17 Jan 2017 17:16:36 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 17 Jan 2017 17:16:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 17:16:49 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Tue, 17 Jan 2017 17:16:52 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 17 Jan 2017 17:16:52 GMT
RUN echo "deb https://repo.percona.com/apt jessie main" > /etc/apt/sources.list.d/percona.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona
# Tue, 17 Jan 2017 17:16:53 GMT
ENV MARIADB_MAJOR=10.1
# Wed, 18 Jan 2017 22:55:31 GMT
ENV MARIADB_VERSION=10.1.21+maria-1~jessie
# Wed, 18 Jan 2017 22:55:32 GMT
RUN echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/debian jessie main" > /etc/apt/sources.list.d/mariadb.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Wed, 18 Jan 2017 22:56:21 GMT
RUN { 		echo mariadb-server-$MARIADB_MAJOR mysql-server/root_password password 'unused'; 		echo mariadb-server-$MARIADB_MAJOR mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		mariadb-server=$MARIADB_VERSION 		percona-xtrabackup 		socat 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Wed, 18 Jan 2017 22:56:23 GMT
RUN sed -Ei 's/^(bind-address|log)/#&/' /etc/mysql/my.cnf 	&& echo 'skip-host-cache\nskip-name-resolve' | awk '{ print } $1 == "[mysqld]" && c == 0 { c = 1; system("cat") }' /etc/mysql/my.cnf > /tmp/my.cnf 	&& mv /tmp/my.cnf /etc/mysql/my.cnf
# Wed, 18 Jan 2017 22:56:23 GMT
VOLUME [/var/lib/mysql]
# Wed, 18 Jan 2017 22:56:24 GMT
COPY file:4bddc4758e22941cff70200b3c2b9944da22d0dd3b359657e1d240679abc379b in /usr/local/bin/ 
# Wed, 18 Jan 2017 22:56:25 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 18 Jan 2017 22:56:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 18 Jan 2017 22:56:26 GMT
EXPOSE 3306/tcp
# Wed, 18 Jan 2017 22:56:27 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55370df683150a0191e0349c09e9113d3b5c06475334ccb21365bcbcc696b4ef`  
		Last Modified: Wed, 18 Jan 2017 04:29:36 GMT  
		Size: 2.0 KB (2047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fad5195d69ccfb010b2a2aa36be888eaece726ddd355ac126ef45f126e3bee99`  
		Last Modified: Wed, 18 Jan 2017 04:29:36 GMT  
		Size: 1.2 MB (1216700 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1034a5fbbfc91073603066f2801c0705ed3b2ac81976f560b4854a5a1262f29`  
		Last Modified: Wed, 18 Jan 2017 04:29:34 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb46f36a6163492d45487d66f6442838de6df332309f4b43869d2a32d4bc6623`  
		Last Modified: Wed, 18 Jan 2017 04:29:35 GMT  
		Size: 6.5 MB (6467462 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de7067e4ea0a87eeee5c577af2fbb43d660b5bc2a007c5caca373952bdf1d4f6`  
		Last Modified: Wed, 18 Jan 2017 04:29:33 GMT  
		Size: 20.8 KB (20821 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc40d1291bb984d8a67344266e458a19e0e548ba8fca445d3a102434d3a1c487`  
		Last Modified: Wed, 18 Jan 2017 04:29:32 GMT  
		Size: 315.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aff5d18aeeef7ef574c082a68f4715de21e98119dac0ec4129b1ecf6e0ff8d6a`  
		Last Modified: Wed, 18 Jan 2017 22:56:43 GMT  
		Size: 318.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c729aed3f3df7e9133ae740b3bc4d3317046ce113f142e710d16a04d8e56e60`  
		Last Modified: Wed, 18 Jan 2017 22:57:03 GMT  
		Size: 72.8 MB (72769685 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed7e90870837e4d239815387eeecdc49203b20027ecd364e4823038d04fbd5b8`  
		Last Modified: Wed, 18 Jan 2017 22:56:43 GMT  
		Size: 2.6 KB (2644 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ae91f5b8acf9b6fb93ae50bb87c1340e7dbabfe62681477317d7a0a33478fa6`  
		Last Modified: Wed, 18 Jan 2017 22:56:43 GMT  
		Size: 2.1 KB (2133 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa554fbac13db9bf9788862940a8477ba2b8d6ea85c126017410f1a28f0af50a`  
		Last Modified: Wed, 18 Jan 2017 22:56:43 GMT  
		Size: 119.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:10`

```console
$ docker pull mariadb@sha256:ed04792bb13c111cbd1743c2921ea6cf777051a7f7f51f7b134efec9af7afdad
```

-	Platforms:
	-	linux; amd64

### `mariadb:10` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **131.8 MB (131843568 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7eca0e0b51c9351ea6a3639b3229432a7f7180dcc3a90ee47b9dd062fcfb520a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 17:16:20 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Tue, 17 Jan 2017 17:16:20 GMT
ENV GOSU_VERSION=1.7
# Tue, 17 Jan 2017 17:16:35 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 17 Jan 2017 17:16:36 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 17 Jan 2017 17:16:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 17:16:49 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Tue, 17 Jan 2017 17:16:52 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 17 Jan 2017 17:16:52 GMT
RUN echo "deb https://repo.percona.com/apt jessie main" > /etc/apt/sources.list.d/percona.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona
# Tue, 17 Jan 2017 17:16:53 GMT
ENV MARIADB_MAJOR=10.1
# Wed, 18 Jan 2017 22:55:31 GMT
ENV MARIADB_VERSION=10.1.21+maria-1~jessie
# Wed, 18 Jan 2017 22:55:32 GMT
RUN echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/debian jessie main" > /etc/apt/sources.list.d/mariadb.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Wed, 18 Jan 2017 22:56:21 GMT
RUN { 		echo mariadb-server-$MARIADB_MAJOR mysql-server/root_password password 'unused'; 		echo mariadb-server-$MARIADB_MAJOR mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		mariadb-server=$MARIADB_VERSION 		percona-xtrabackup 		socat 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Wed, 18 Jan 2017 22:56:23 GMT
RUN sed -Ei 's/^(bind-address|log)/#&/' /etc/mysql/my.cnf 	&& echo 'skip-host-cache\nskip-name-resolve' | awk '{ print } $1 == "[mysqld]" && c == 0 { c = 1; system("cat") }' /etc/mysql/my.cnf > /tmp/my.cnf 	&& mv /tmp/my.cnf /etc/mysql/my.cnf
# Wed, 18 Jan 2017 22:56:23 GMT
VOLUME [/var/lib/mysql]
# Wed, 18 Jan 2017 22:56:24 GMT
COPY file:4bddc4758e22941cff70200b3c2b9944da22d0dd3b359657e1d240679abc379b in /usr/local/bin/ 
# Wed, 18 Jan 2017 22:56:25 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 18 Jan 2017 22:56:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 18 Jan 2017 22:56:26 GMT
EXPOSE 3306/tcp
# Wed, 18 Jan 2017 22:56:27 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55370df683150a0191e0349c09e9113d3b5c06475334ccb21365bcbcc696b4ef`  
		Last Modified: Wed, 18 Jan 2017 04:29:36 GMT  
		Size: 2.0 KB (2047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fad5195d69ccfb010b2a2aa36be888eaece726ddd355ac126ef45f126e3bee99`  
		Last Modified: Wed, 18 Jan 2017 04:29:36 GMT  
		Size: 1.2 MB (1216700 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1034a5fbbfc91073603066f2801c0705ed3b2ac81976f560b4854a5a1262f29`  
		Last Modified: Wed, 18 Jan 2017 04:29:34 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb46f36a6163492d45487d66f6442838de6df332309f4b43869d2a32d4bc6623`  
		Last Modified: Wed, 18 Jan 2017 04:29:35 GMT  
		Size: 6.5 MB (6467462 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de7067e4ea0a87eeee5c577af2fbb43d660b5bc2a007c5caca373952bdf1d4f6`  
		Last Modified: Wed, 18 Jan 2017 04:29:33 GMT  
		Size: 20.8 KB (20821 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc40d1291bb984d8a67344266e458a19e0e548ba8fca445d3a102434d3a1c487`  
		Last Modified: Wed, 18 Jan 2017 04:29:32 GMT  
		Size: 315.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aff5d18aeeef7ef574c082a68f4715de21e98119dac0ec4129b1ecf6e0ff8d6a`  
		Last Modified: Wed, 18 Jan 2017 22:56:43 GMT  
		Size: 318.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c729aed3f3df7e9133ae740b3bc4d3317046ce113f142e710d16a04d8e56e60`  
		Last Modified: Wed, 18 Jan 2017 22:57:03 GMT  
		Size: 72.8 MB (72769685 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed7e90870837e4d239815387eeecdc49203b20027ecd364e4823038d04fbd5b8`  
		Last Modified: Wed, 18 Jan 2017 22:56:43 GMT  
		Size: 2.6 KB (2644 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ae91f5b8acf9b6fb93ae50bb87c1340e7dbabfe62681477317d7a0a33478fa6`  
		Last Modified: Wed, 18 Jan 2017 22:56:43 GMT  
		Size: 2.1 KB (2133 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa554fbac13db9bf9788862940a8477ba2b8d6ea85c126017410f1a28f0af50a`  
		Last Modified: Wed, 18 Jan 2017 22:56:43 GMT  
		Size: 119.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:latest`

```console
$ docker pull mariadb@sha256:ed04792bb13c111cbd1743c2921ea6cf777051a7f7f51f7b134efec9af7afdad
```

-	Platforms:
	-	linux; amd64

### `mariadb:latest` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **131.8 MB (131843568 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7eca0e0b51c9351ea6a3639b3229432a7f7180dcc3a90ee47b9dd062fcfb520a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 17:16:20 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Tue, 17 Jan 2017 17:16:20 GMT
ENV GOSU_VERSION=1.7
# Tue, 17 Jan 2017 17:16:35 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 17 Jan 2017 17:16:36 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 17 Jan 2017 17:16:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 17:16:49 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Tue, 17 Jan 2017 17:16:52 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 17 Jan 2017 17:16:52 GMT
RUN echo "deb https://repo.percona.com/apt jessie main" > /etc/apt/sources.list.d/percona.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona
# Tue, 17 Jan 2017 17:16:53 GMT
ENV MARIADB_MAJOR=10.1
# Wed, 18 Jan 2017 22:55:31 GMT
ENV MARIADB_VERSION=10.1.21+maria-1~jessie
# Wed, 18 Jan 2017 22:55:32 GMT
RUN echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/debian jessie main" > /etc/apt/sources.list.d/mariadb.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Wed, 18 Jan 2017 22:56:21 GMT
RUN { 		echo mariadb-server-$MARIADB_MAJOR mysql-server/root_password password 'unused'; 		echo mariadb-server-$MARIADB_MAJOR mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		mariadb-server=$MARIADB_VERSION 		percona-xtrabackup 		socat 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Wed, 18 Jan 2017 22:56:23 GMT
RUN sed -Ei 's/^(bind-address|log)/#&/' /etc/mysql/my.cnf 	&& echo 'skip-host-cache\nskip-name-resolve' | awk '{ print } $1 == "[mysqld]" && c == 0 { c = 1; system("cat") }' /etc/mysql/my.cnf > /tmp/my.cnf 	&& mv /tmp/my.cnf /etc/mysql/my.cnf
# Wed, 18 Jan 2017 22:56:23 GMT
VOLUME [/var/lib/mysql]
# Wed, 18 Jan 2017 22:56:24 GMT
COPY file:4bddc4758e22941cff70200b3c2b9944da22d0dd3b359657e1d240679abc379b in /usr/local/bin/ 
# Wed, 18 Jan 2017 22:56:25 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 18 Jan 2017 22:56:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 18 Jan 2017 22:56:26 GMT
EXPOSE 3306/tcp
# Wed, 18 Jan 2017 22:56:27 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55370df683150a0191e0349c09e9113d3b5c06475334ccb21365bcbcc696b4ef`  
		Last Modified: Wed, 18 Jan 2017 04:29:36 GMT  
		Size: 2.0 KB (2047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fad5195d69ccfb010b2a2aa36be888eaece726ddd355ac126ef45f126e3bee99`  
		Last Modified: Wed, 18 Jan 2017 04:29:36 GMT  
		Size: 1.2 MB (1216700 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1034a5fbbfc91073603066f2801c0705ed3b2ac81976f560b4854a5a1262f29`  
		Last Modified: Wed, 18 Jan 2017 04:29:34 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb46f36a6163492d45487d66f6442838de6df332309f4b43869d2a32d4bc6623`  
		Last Modified: Wed, 18 Jan 2017 04:29:35 GMT  
		Size: 6.5 MB (6467462 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de7067e4ea0a87eeee5c577af2fbb43d660b5bc2a007c5caca373952bdf1d4f6`  
		Last Modified: Wed, 18 Jan 2017 04:29:33 GMT  
		Size: 20.8 KB (20821 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc40d1291bb984d8a67344266e458a19e0e548ba8fca445d3a102434d3a1c487`  
		Last Modified: Wed, 18 Jan 2017 04:29:32 GMT  
		Size: 315.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aff5d18aeeef7ef574c082a68f4715de21e98119dac0ec4129b1ecf6e0ff8d6a`  
		Last Modified: Wed, 18 Jan 2017 22:56:43 GMT  
		Size: 318.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c729aed3f3df7e9133ae740b3bc4d3317046ce113f142e710d16a04d8e56e60`  
		Last Modified: Wed, 18 Jan 2017 22:57:03 GMT  
		Size: 72.8 MB (72769685 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed7e90870837e4d239815387eeecdc49203b20027ecd364e4823038d04fbd5b8`  
		Last Modified: Wed, 18 Jan 2017 22:56:43 GMT  
		Size: 2.6 KB (2644 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ae91f5b8acf9b6fb93ae50bb87c1340e7dbabfe62681477317d7a0a33478fa6`  
		Last Modified: Wed, 18 Jan 2017 22:56:43 GMT  
		Size: 2.1 KB (2133 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa554fbac13db9bf9788862940a8477ba2b8d6ea85c126017410f1a28f0af50a`  
		Last Modified: Wed, 18 Jan 2017 22:56:43 GMT  
		Size: 119.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:10.0.29`

```console
$ docker pull mariadb@sha256:97b1ce8560ce2520cce28af3d19ed8b9da02515f3ffa528170daaee0a948291e
```

-	Platforms:
	-	linux; amd64

### `mariadb:10.0.29` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **117.0 MB (116978768 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:076aaeda7e9ddc6acf26a2eda9a1a5cecdc56620e5e964efae074abcddfa834e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 17:16:20 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Tue, 17 Jan 2017 17:16:20 GMT
ENV GOSU_VERSION=1.7
# Tue, 17 Jan 2017 17:16:35 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 17 Jan 2017 17:16:36 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 17 Jan 2017 17:16:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 17:16:49 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Tue, 17 Jan 2017 17:16:52 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 17 Jan 2017 17:16:52 GMT
RUN echo "deb https://repo.percona.com/apt jessie main" > /etc/apt/sources.list.d/percona.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona
# Tue, 17 Jan 2017 17:17:45 GMT
ENV MARIADB_MAJOR=10.0
# Tue, 17 Jan 2017 17:17:46 GMT
ENV MARIADB_VERSION=10.0.29+maria-1~jessie
# Tue, 17 Jan 2017 17:17:47 GMT
RUN echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/debian jessie main" > /etc/apt/sources.list.d/mariadb.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Tue, 17 Jan 2017 17:18:28 GMT
RUN { 		echo mariadb-server-$MARIADB_MAJOR mysql-server/root_password password 'unused'; 		echo mariadb-server-$MARIADB_MAJOR mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		mariadb-server=$MARIADB_VERSION 		percona-xtrabackup 		socat 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Tue, 17 Jan 2017 17:18:29 GMT
RUN sed -Ei 's/^(bind-address|log)/#&/' /etc/mysql/my.cnf 	&& echo 'skip-host-cache\nskip-name-resolve' | awk '{ print } $1 == "[mysqld]" && c == 0 { c = 1; system("cat") }' /etc/mysql/my.cnf > /tmp/my.cnf 	&& mv /tmp/my.cnf /etc/mysql/my.cnf
# Tue, 17 Jan 2017 17:18:30 GMT
VOLUME [/var/lib/mysql]
# Tue, 17 Jan 2017 17:18:30 GMT
COPY file:4bddc4758e22941cff70200b3c2b9944da22d0dd3b359657e1d240679abc379b in /usr/local/bin/ 
# Tue, 17 Jan 2017 17:18:31 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 17 Jan 2017 17:18:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 17 Jan 2017 17:18:32 GMT
EXPOSE 3306/tcp
# Tue, 17 Jan 2017 17:18:32 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55370df683150a0191e0349c09e9113d3b5c06475334ccb21365bcbcc696b4ef`  
		Last Modified: Wed, 18 Jan 2017 04:29:36 GMT  
		Size: 2.0 KB (2047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fad5195d69ccfb010b2a2aa36be888eaece726ddd355ac126ef45f126e3bee99`  
		Last Modified: Wed, 18 Jan 2017 04:29:36 GMT  
		Size: 1.2 MB (1216700 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1034a5fbbfc91073603066f2801c0705ed3b2ac81976f560b4854a5a1262f29`  
		Last Modified: Wed, 18 Jan 2017 04:29:34 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb46f36a6163492d45487d66f6442838de6df332309f4b43869d2a32d4bc6623`  
		Last Modified: Wed, 18 Jan 2017 04:29:35 GMT  
		Size: 6.5 MB (6467462 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de7067e4ea0a87eeee5c577af2fbb43d660b5bc2a007c5caca373952bdf1d4f6`  
		Last Modified: Wed, 18 Jan 2017 04:29:33 GMT  
		Size: 20.8 KB (20821 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc40d1291bb984d8a67344266e458a19e0e548ba8fca445d3a102434d3a1c487`  
		Last Modified: Wed, 18 Jan 2017 04:29:32 GMT  
		Size: 315.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebf6df054e4e7409db860906ef82e8012441553be435635b1b9115d4a9e097b7`  
		Last Modified: Wed, 18 Jan 2017 04:29:30 GMT  
		Size: 320.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d3b588e01196d1f72bb4fa103706234502061d26f45e3f8247e034546ab2a57`  
		Last Modified: Wed, 18 Jan 2017 04:29:48 GMT  
		Size: 57.9 MB (57905037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b39d01ea30906c491a607e0e113d631f5b616e82f1478ae05f4129b882645790`  
		Last Modified: Wed, 18 Jan 2017 04:29:29 GMT  
		Size: 2.5 KB (2491 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:975e46f39f6ccc30bdd65ab9a7179fdd8f56f1b3dce42666155fc35fb5ba95e3`  
		Last Modified: Wed, 18 Jan 2017 04:29:29 GMT  
		Size: 2.1 KB (2132 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eac9043d3e5cba90a9429884fcf09dd02a52d3b96b479913a6c086f9c5a84d7e`  
		Last Modified: Wed, 18 Jan 2017 04:29:29 GMT  
		Size: 119.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:10.0`

```console
$ docker pull mariadb@sha256:97b1ce8560ce2520cce28af3d19ed8b9da02515f3ffa528170daaee0a948291e
```

-	Platforms:
	-	linux; amd64

### `mariadb:10.0` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **117.0 MB (116978768 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:076aaeda7e9ddc6acf26a2eda9a1a5cecdc56620e5e964efae074abcddfa834e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 17:16:20 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Tue, 17 Jan 2017 17:16:20 GMT
ENV GOSU_VERSION=1.7
# Tue, 17 Jan 2017 17:16:35 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 17 Jan 2017 17:16:36 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 17 Jan 2017 17:16:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 17:16:49 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Tue, 17 Jan 2017 17:16:52 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 17 Jan 2017 17:16:52 GMT
RUN echo "deb https://repo.percona.com/apt jessie main" > /etc/apt/sources.list.d/percona.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona
# Tue, 17 Jan 2017 17:17:45 GMT
ENV MARIADB_MAJOR=10.0
# Tue, 17 Jan 2017 17:17:46 GMT
ENV MARIADB_VERSION=10.0.29+maria-1~jessie
# Tue, 17 Jan 2017 17:17:47 GMT
RUN echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/debian jessie main" > /etc/apt/sources.list.d/mariadb.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Tue, 17 Jan 2017 17:18:28 GMT
RUN { 		echo mariadb-server-$MARIADB_MAJOR mysql-server/root_password password 'unused'; 		echo mariadb-server-$MARIADB_MAJOR mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		mariadb-server=$MARIADB_VERSION 		percona-xtrabackup 		socat 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Tue, 17 Jan 2017 17:18:29 GMT
RUN sed -Ei 's/^(bind-address|log)/#&/' /etc/mysql/my.cnf 	&& echo 'skip-host-cache\nskip-name-resolve' | awk '{ print } $1 == "[mysqld]" && c == 0 { c = 1; system("cat") }' /etc/mysql/my.cnf > /tmp/my.cnf 	&& mv /tmp/my.cnf /etc/mysql/my.cnf
# Tue, 17 Jan 2017 17:18:30 GMT
VOLUME [/var/lib/mysql]
# Tue, 17 Jan 2017 17:18:30 GMT
COPY file:4bddc4758e22941cff70200b3c2b9944da22d0dd3b359657e1d240679abc379b in /usr/local/bin/ 
# Tue, 17 Jan 2017 17:18:31 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 17 Jan 2017 17:18:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 17 Jan 2017 17:18:32 GMT
EXPOSE 3306/tcp
# Tue, 17 Jan 2017 17:18:32 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55370df683150a0191e0349c09e9113d3b5c06475334ccb21365bcbcc696b4ef`  
		Last Modified: Wed, 18 Jan 2017 04:29:36 GMT  
		Size: 2.0 KB (2047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fad5195d69ccfb010b2a2aa36be888eaece726ddd355ac126ef45f126e3bee99`  
		Last Modified: Wed, 18 Jan 2017 04:29:36 GMT  
		Size: 1.2 MB (1216700 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1034a5fbbfc91073603066f2801c0705ed3b2ac81976f560b4854a5a1262f29`  
		Last Modified: Wed, 18 Jan 2017 04:29:34 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb46f36a6163492d45487d66f6442838de6df332309f4b43869d2a32d4bc6623`  
		Last Modified: Wed, 18 Jan 2017 04:29:35 GMT  
		Size: 6.5 MB (6467462 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de7067e4ea0a87eeee5c577af2fbb43d660b5bc2a007c5caca373952bdf1d4f6`  
		Last Modified: Wed, 18 Jan 2017 04:29:33 GMT  
		Size: 20.8 KB (20821 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc40d1291bb984d8a67344266e458a19e0e548ba8fca445d3a102434d3a1c487`  
		Last Modified: Wed, 18 Jan 2017 04:29:32 GMT  
		Size: 315.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebf6df054e4e7409db860906ef82e8012441553be435635b1b9115d4a9e097b7`  
		Last Modified: Wed, 18 Jan 2017 04:29:30 GMT  
		Size: 320.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d3b588e01196d1f72bb4fa103706234502061d26f45e3f8247e034546ab2a57`  
		Last Modified: Wed, 18 Jan 2017 04:29:48 GMT  
		Size: 57.9 MB (57905037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b39d01ea30906c491a607e0e113d631f5b616e82f1478ae05f4129b882645790`  
		Last Modified: Wed, 18 Jan 2017 04:29:29 GMT  
		Size: 2.5 KB (2491 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:975e46f39f6ccc30bdd65ab9a7179fdd8f56f1b3dce42666155fc35fb5ba95e3`  
		Last Modified: Wed, 18 Jan 2017 04:29:29 GMT  
		Size: 2.1 KB (2132 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eac9043d3e5cba90a9429884fcf09dd02a52d3b96b479913a6c086f9c5a84d7e`  
		Last Modified: Wed, 18 Jan 2017 04:29:29 GMT  
		Size: 119.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:5.5.54`

```console
$ docker pull mariadb@sha256:115634e32d008f4bb1bfaafec918486d3758b8bf0067c54ac6f6c327efd43164
```

-	Platforms:
	-	linux; amd64

### `mariadb:5.5.54` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **96.6 MB (96612944 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c1d0f317c38bb2d21d684ea5e8375d14bff32ff96ba42c193b00dd75e744a370`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 16 Jan 2017 20:41:52 GMT
ADD file:a341378be341bc318a57379c0a4b72f182f93ad617f08164343662e789b7244b in / 
# Mon, 16 Jan 2017 20:42:00 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 17:18:34 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Tue, 17 Jan 2017 17:18:34 GMT
ENV GOSU_VERSION=1.7
# Tue, 17 Jan 2017 17:18:48 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 17 Jan 2017 17:18:49 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 17 Jan 2017 17:19:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 17:19:00 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Tue, 17 Jan 2017 17:19:03 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 17 Jan 2017 17:19:04 GMT
RUN echo "deb https://repo.percona.com/apt wheezy main" > /etc/apt/sources.list.d/percona.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona
# Tue, 17 Jan 2017 17:19:04 GMT
ENV MARIADB_MAJOR=5.5
# Tue, 17 Jan 2017 17:19:04 GMT
ENV MARIADB_VERSION=5.5.54+maria-1~wheezy
# Tue, 17 Jan 2017 17:19:05 GMT
RUN echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/debian wheezy main" > /etc/apt/sources.list.d/mariadb.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Tue, 17 Jan 2017 17:19:27 GMT
RUN { 		echo mariadb-server-$MARIADB_MAJOR mysql-server/root_password password 'unused'; 		echo mariadb-server-$MARIADB_MAJOR mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		mariadb-server=$MARIADB_VERSION 		percona-xtrabackup 		socat 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Tue, 17 Jan 2017 17:19:28 GMT
RUN sed -Ei 's/^(bind-address|log)/#&/' /etc/mysql/my.cnf 	&& echo 'skip-host-cache\nskip-name-resolve' | awk '{ print } $1 == "[mysqld]" && c == 0 { c = 1; system("cat") }' /etc/mysql/my.cnf > /tmp/my.cnf 	&& mv /tmp/my.cnf /etc/mysql/my.cnf
# Tue, 17 Jan 2017 17:19:28 GMT
VOLUME [/var/lib/mysql]
# Tue, 17 Jan 2017 17:19:28 GMT
COPY file:4bddc4758e22941cff70200b3c2b9944da22d0dd3b359657e1d240679abc379b in /usr/local/bin/ 
# Tue, 17 Jan 2017 17:19:29 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 17 Jan 2017 17:19:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 17 Jan 2017 17:19:30 GMT
EXPOSE 3306/tcp
# Tue, 17 Jan 2017 17:19:30 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:d9509b80c497066660d1e7a4e22ba112d025e83f6f7183d53c95bed1513938b7`  
		Last Modified: Mon, 16 Jan 2017 20:55:10 GMT  
		Size: 37.3 MB (37284485 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c7b6164c236076d11e337b37361bb28587d7f40784947036cdfcd356d140c3d`  
		Last Modified: Wed, 18 Jan 2017 04:31:57 GMT  
		Size: 1.7 KB (1698 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e8d60ec4da8c60b36332c709732c5d202ed5ca1712a2f52e23effbb7c87687e`  
		Last Modified: Wed, 18 Jan 2017 04:31:56 GMT  
		Size: 1.2 MB (1244732 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ee25e7fbbf9114d03b1b34762a7813715986144ef462529270bf26c154e1a2c`  
		Last Modified: Wed, 18 Jan 2017 04:31:54 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0ace9d26ac25da9c4bf885f14f678f7f48f7e5802c4202aa88736b7b3c5e32b`  
		Last Modified: Wed, 18 Jan 2017 04:31:56 GMT  
		Size: 5.9 MB (5884405 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d746bbad8903544e7d53c696b922f198f3528da18218fdec7e2905458cbb4d03`  
		Last Modified: Wed, 18 Jan 2017 04:31:53 GMT  
		Size: 20.8 KB (20801 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0fa3a5d00ac8c60555d2640a66285a818b6d1991d5f3ed1278c6f97b5ae7dbc2`  
		Last Modified: Wed, 18 Jan 2017 04:31:53 GMT  
		Size: 314.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3bd965bcaffaa07b3b3d52c670d33954a24fc4de82681396fa248e9e79ac8e3`  
		Last Modified: Wed, 18 Jan 2017 04:31:51 GMT  
		Size: 322.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:652eafeff4ddaf471d1e0cf45fde11aecabfbc6f239c70daef0f9c5587d399bf`  
		Last Modified: Wed, 18 Jan 2017 04:32:11 GMT  
		Size: 52.2 MB (52171331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c64589a76ff6874b4b85b0cad3f46b59680787ec2f1d54ac5e6203dc93f2067`  
		Last Modified: Wed, 18 Jan 2017 04:31:51 GMT  
		Size: 2.5 KB (2491 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:563b51e44fe9bf0b394bc91abddf50cd3b955da85ddab9cf54f3c2b43d08c295`  
		Last Modified: Wed, 18 Jan 2017 04:31:51 GMT  
		Size: 2.1 KB (2132 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac18e8ea5d158cce0b75f548f5b7c941dd304fb03ea27149ca351ea1f2d55d99`  
		Last Modified: Wed, 18 Jan 2017 04:31:51 GMT  
		Size: 119.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:5.5`

```console
$ docker pull mariadb@sha256:115634e32d008f4bb1bfaafec918486d3758b8bf0067c54ac6f6c327efd43164
```

-	Platforms:
	-	linux; amd64

### `mariadb:5.5` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **96.6 MB (96612944 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c1d0f317c38bb2d21d684ea5e8375d14bff32ff96ba42c193b00dd75e744a370`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 16 Jan 2017 20:41:52 GMT
ADD file:a341378be341bc318a57379c0a4b72f182f93ad617f08164343662e789b7244b in / 
# Mon, 16 Jan 2017 20:42:00 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 17:18:34 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Tue, 17 Jan 2017 17:18:34 GMT
ENV GOSU_VERSION=1.7
# Tue, 17 Jan 2017 17:18:48 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 17 Jan 2017 17:18:49 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 17 Jan 2017 17:19:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 17:19:00 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Tue, 17 Jan 2017 17:19:03 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 17 Jan 2017 17:19:04 GMT
RUN echo "deb https://repo.percona.com/apt wheezy main" > /etc/apt/sources.list.d/percona.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona
# Tue, 17 Jan 2017 17:19:04 GMT
ENV MARIADB_MAJOR=5.5
# Tue, 17 Jan 2017 17:19:04 GMT
ENV MARIADB_VERSION=5.5.54+maria-1~wheezy
# Tue, 17 Jan 2017 17:19:05 GMT
RUN echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/debian wheezy main" > /etc/apt/sources.list.d/mariadb.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Tue, 17 Jan 2017 17:19:27 GMT
RUN { 		echo mariadb-server-$MARIADB_MAJOR mysql-server/root_password password 'unused'; 		echo mariadb-server-$MARIADB_MAJOR mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		mariadb-server=$MARIADB_VERSION 		percona-xtrabackup 		socat 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Tue, 17 Jan 2017 17:19:28 GMT
RUN sed -Ei 's/^(bind-address|log)/#&/' /etc/mysql/my.cnf 	&& echo 'skip-host-cache\nskip-name-resolve' | awk '{ print } $1 == "[mysqld]" && c == 0 { c = 1; system("cat") }' /etc/mysql/my.cnf > /tmp/my.cnf 	&& mv /tmp/my.cnf /etc/mysql/my.cnf
# Tue, 17 Jan 2017 17:19:28 GMT
VOLUME [/var/lib/mysql]
# Tue, 17 Jan 2017 17:19:28 GMT
COPY file:4bddc4758e22941cff70200b3c2b9944da22d0dd3b359657e1d240679abc379b in /usr/local/bin/ 
# Tue, 17 Jan 2017 17:19:29 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 17 Jan 2017 17:19:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 17 Jan 2017 17:19:30 GMT
EXPOSE 3306/tcp
# Tue, 17 Jan 2017 17:19:30 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:d9509b80c497066660d1e7a4e22ba112d025e83f6f7183d53c95bed1513938b7`  
		Last Modified: Mon, 16 Jan 2017 20:55:10 GMT  
		Size: 37.3 MB (37284485 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c7b6164c236076d11e337b37361bb28587d7f40784947036cdfcd356d140c3d`  
		Last Modified: Wed, 18 Jan 2017 04:31:57 GMT  
		Size: 1.7 KB (1698 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e8d60ec4da8c60b36332c709732c5d202ed5ca1712a2f52e23effbb7c87687e`  
		Last Modified: Wed, 18 Jan 2017 04:31:56 GMT  
		Size: 1.2 MB (1244732 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ee25e7fbbf9114d03b1b34762a7813715986144ef462529270bf26c154e1a2c`  
		Last Modified: Wed, 18 Jan 2017 04:31:54 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0ace9d26ac25da9c4bf885f14f678f7f48f7e5802c4202aa88736b7b3c5e32b`  
		Last Modified: Wed, 18 Jan 2017 04:31:56 GMT  
		Size: 5.9 MB (5884405 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d746bbad8903544e7d53c696b922f198f3528da18218fdec7e2905458cbb4d03`  
		Last Modified: Wed, 18 Jan 2017 04:31:53 GMT  
		Size: 20.8 KB (20801 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0fa3a5d00ac8c60555d2640a66285a818b6d1991d5f3ed1278c6f97b5ae7dbc2`  
		Last Modified: Wed, 18 Jan 2017 04:31:53 GMT  
		Size: 314.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3bd965bcaffaa07b3b3d52c670d33954a24fc4de82681396fa248e9e79ac8e3`  
		Last Modified: Wed, 18 Jan 2017 04:31:51 GMT  
		Size: 322.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:652eafeff4ddaf471d1e0cf45fde11aecabfbc6f239c70daef0f9c5587d399bf`  
		Last Modified: Wed, 18 Jan 2017 04:32:11 GMT  
		Size: 52.2 MB (52171331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c64589a76ff6874b4b85b0cad3f46b59680787ec2f1d54ac5e6203dc93f2067`  
		Last Modified: Wed, 18 Jan 2017 04:31:51 GMT  
		Size: 2.5 KB (2491 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:563b51e44fe9bf0b394bc91abddf50cd3b955da85ddab9cf54f3c2b43d08c295`  
		Last Modified: Wed, 18 Jan 2017 04:31:51 GMT  
		Size: 2.1 KB (2132 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac18e8ea5d158cce0b75f548f5b7c941dd304fb03ea27149ca351ea1f2d55d99`  
		Last Modified: Wed, 18 Jan 2017 04:31:51 GMT  
		Size: 119.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:5`

```console
$ docker pull mariadb@sha256:115634e32d008f4bb1bfaafec918486d3758b8bf0067c54ac6f6c327efd43164
```

-	Platforms:
	-	linux; amd64

### `mariadb:5` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **96.6 MB (96612944 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c1d0f317c38bb2d21d684ea5e8375d14bff32ff96ba42c193b00dd75e744a370`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 16 Jan 2017 20:41:52 GMT
ADD file:a341378be341bc318a57379c0a4b72f182f93ad617f08164343662e789b7244b in / 
# Mon, 16 Jan 2017 20:42:00 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 17:18:34 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Tue, 17 Jan 2017 17:18:34 GMT
ENV GOSU_VERSION=1.7
# Tue, 17 Jan 2017 17:18:48 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 17 Jan 2017 17:18:49 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 17 Jan 2017 17:19:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 17:19:00 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Tue, 17 Jan 2017 17:19:03 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 17 Jan 2017 17:19:04 GMT
RUN echo "deb https://repo.percona.com/apt wheezy main" > /etc/apt/sources.list.d/percona.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona
# Tue, 17 Jan 2017 17:19:04 GMT
ENV MARIADB_MAJOR=5.5
# Tue, 17 Jan 2017 17:19:04 GMT
ENV MARIADB_VERSION=5.5.54+maria-1~wheezy
# Tue, 17 Jan 2017 17:19:05 GMT
RUN echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/debian wheezy main" > /etc/apt/sources.list.d/mariadb.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Tue, 17 Jan 2017 17:19:27 GMT
RUN { 		echo mariadb-server-$MARIADB_MAJOR mysql-server/root_password password 'unused'; 		echo mariadb-server-$MARIADB_MAJOR mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		mariadb-server=$MARIADB_VERSION 		percona-xtrabackup 		socat 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Tue, 17 Jan 2017 17:19:28 GMT
RUN sed -Ei 's/^(bind-address|log)/#&/' /etc/mysql/my.cnf 	&& echo 'skip-host-cache\nskip-name-resolve' | awk '{ print } $1 == "[mysqld]" && c == 0 { c = 1; system("cat") }' /etc/mysql/my.cnf > /tmp/my.cnf 	&& mv /tmp/my.cnf /etc/mysql/my.cnf
# Tue, 17 Jan 2017 17:19:28 GMT
VOLUME [/var/lib/mysql]
# Tue, 17 Jan 2017 17:19:28 GMT
COPY file:4bddc4758e22941cff70200b3c2b9944da22d0dd3b359657e1d240679abc379b in /usr/local/bin/ 
# Tue, 17 Jan 2017 17:19:29 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 17 Jan 2017 17:19:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 17 Jan 2017 17:19:30 GMT
EXPOSE 3306/tcp
# Tue, 17 Jan 2017 17:19:30 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:d9509b80c497066660d1e7a4e22ba112d025e83f6f7183d53c95bed1513938b7`  
		Last Modified: Mon, 16 Jan 2017 20:55:10 GMT  
		Size: 37.3 MB (37284485 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c7b6164c236076d11e337b37361bb28587d7f40784947036cdfcd356d140c3d`  
		Last Modified: Wed, 18 Jan 2017 04:31:57 GMT  
		Size: 1.7 KB (1698 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e8d60ec4da8c60b36332c709732c5d202ed5ca1712a2f52e23effbb7c87687e`  
		Last Modified: Wed, 18 Jan 2017 04:31:56 GMT  
		Size: 1.2 MB (1244732 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ee25e7fbbf9114d03b1b34762a7813715986144ef462529270bf26c154e1a2c`  
		Last Modified: Wed, 18 Jan 2017 04:31:54 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0ace9d26ac25da9c4bf885f14f678f7f48f7e5802c4202aa88736b7b3c5e32b`  
		Last Modified: Wed, 18 Jan 2017 04:31:56 GMT  
		Size: 5.9 MB (5884405 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d746bbad8903544e7d53c696b922f198f3528da18218fdec7e2905458cbb4d03`  
		Last Modified: Wed, 18 Jan 2017 04:31:53 GMT  
		Size: 20.8 KB (20801 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0fa3a5d00ac8c60555d2640a66285a818b6d1991d5f3ed1278c6f97b5ae7dbc2`  
		Last Modified: Wed, 18 Jan 2017 04:31:53 GMT  
		Size: 314.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3bd965bcaffaa07b3b3d52c670d33954a24fc4de82681396fa248e9e79ac8e3`  
		Last Modified: Wed, 18 Jan 2017 04:31:51 GMT  
		Size: 322.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:652eafeff4ddaf471d1e0cf45fde11aecabfbc6f239c70daef0f9c5587d399bf`  
		Last Modified: Wed, 18 Jan 2017 04:32:11 GMT  
		Size: 52.2 MB (52171331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c64589a76ff6874b4b85b0cad3f46b59680787ec2f1d54ac5e6203dc93f2067`  
		Last Modified: Wed, 18 Jan 2017 04:31:51 GMT  
		Size: 2.5 KB (2491 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:563b51e44fe9bf0b394bc91abddf50cd3b955da85ddab9cf54f3c2b43d08c295`  
		Last Modified: Wed, 18 Jan 2017 04:31:51 GMT  
		Size: 2.1 KB (2132 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac18e8ea5d158cce0b75f548f5b7c941dd304fb03ea27149ca351ea1f2d55d99`  
		Last Modified: Wed, 18 Jan 2017 04:31:51 GMT  
		Size: 119.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
