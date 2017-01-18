<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `mysql`

-	[`mysql:8.0.0`](#mysql800)
-	[`mysql:8.0`](#mysql80)
-	[`mysql:8`](#mysql8)
-	[`mysql:5.7.17`](#mysql5717)
-	[`mysql:5.7`](#mysql57)
-	[`mysql:5`](#mysql5)
-	[`mysql:latest`](#mysqllatest)
-	[`mysql:5.6.35`](#mysql5635)
-	[`mysql:5.6`](#mysql56)
-	[`mysql:5.5.54`](#mysql5554)
-	[`mysql:5.5`](#mysql55)

## `mysql:8.0.0`

```console
$ docker pull mysql@sha256:3c6711fec482f1a7bb3dc84090c8c078e3c2118a78f63497cd7f44f01c2490fc
```

-	Platforms:
	-	linux; amd64

### `mysql:8.0.0` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **129.7 MB (129661398 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:61e529020c43b917e9d2b954ce4e3d66d339e73fafbc1d8ae13291a41f92697c`
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
# Tue, 17 Jan 2017 18:04:25 GMT
RUN apt-get update && apt-get install -y perl pwgen --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 18:04:27 GMT
RUN set -ex; 	key='A4A9406876FCBD3C456770C88C718D3B5072E1F5'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/mysql.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list > /dev/null
# Tue, 17 Jan 2017 18:06:24 GMT
ENV MYSQL_MAJOR=8.0
# Tue, 17 Jan 2017 18:06:24 GMT
ENV MYSQL_VERSION=8.0.0-dmr-1debian8
# Tue, 17 Jan 2017 18:06:25 GMT
RUN echo "deb http://repo.mysql.com/apt/debian/ jessie mysql-${MYSQL_MAJOR}" > /etc/apt/sources.list.d/mysql.list
# Tue, 17 Jan 2017 18:06:44 GMT
RUN { 		echo mysql-community-server mysql-community-server/data-dir select ''; 		echo mysql-community-server mysql-community-server/root-pass password ''; 		echo mysql-community-server mysql-community-server/re-root-pass password ''; 		echo mysql-community-server mysql-community-server/remove-test-db select false; 	} | debconf-set-selections 	&& apt-get update && apt-get install -y mysql-server="${MYSQL_VERSION}" && rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Tue, 17 Jan 2017 18:06:45 GMT
RUN sed -Ei 's/^(bind-address|log)/#&/' /etc/mysql/mysql.conf.d/mysqld.cnf 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Tue, 17 Jan 2017 18:06:45 GMT
VOLUME [/var/lib/mysql]
# Tue, 17 Jan 2017 18:06:46 GMT
COPY file:915aa28b0ee915243ed916898ba2c6103acca9fe847f9365ced97a8b7ee5e4c9 in /usr/local/bin/ 
# Tue, 17 Jan 2017 18:06:47 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 17 Jan 2017 18:06:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 17 Jan 2017 18:06:47 GMT
EXPOSE 3306/tcp
# Tue, 17 Jan 2017 18:06:48 GMT
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
	-	`sha256:84bedc72ed3a48f9d8e35cb0d3cecd245dfbeaa3eb1c74010d94748a787f0565`  
		Last Modified: Wed, 18 Jan 2017 05:16:44 GMT  
		Size: 8.2 MB (8248056 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10981627b57db668106f924adcb717a6bc75b2a180d588a4108b791dd637824f`  
		Last Modified: Wed, 18 Jan 2017 05:16:31 GMT  
		Size: 19.0 KB (18967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aeb4318a06a3497180ccf44d64d2111455691f2cfd24e85bd9a28e2a909c0f6e`  
		Last Modified: Wed, 18 Jan 2017 05:20:05 GMT  
		Size: 217.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c00c07f53c904eb7d602d131116212f9eeb5090dfe5869f5b80b199a7b7b9c33`  
		Last Modified: Wed, 18 Jan 2017 05:20:39 GMT  
		Size: 68.8 MB (68810666 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:797aee66f2c9f4030979626d2a41f1cf8e55b9b4d5f65fa6c120b61188f2d75c`  
		Last Modified: Wed, 18 Jan 2017 05:20:05 GMT  
		Size: 880.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:adeb47578e8856e73bcd4efc724eb879f3ca5b606acfb15ea6425bf3ecca0220`  
		Last Modified: Wed, 18 Jan 2017 05:20:04 GMT  
		Size: 2.4 KB (2421 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccb75dcae2b74028910bbde22558d89f3eda0cc95feac7a7ef15c953bd6424de`  
		Last Modified: Wed, 18 Jan 2017 05:20:04 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:8.0`

```console
$ docker pull mysql@sha256:3c6711fec482f1a7bb3dc84090c8c078e3c2118a78f63497cd7f44f01c2490fc
```

-	Platforms:
	-	linux; amd64

### `mysql:8.0` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **129.7 MB (129661398 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:61e529020c43b917e9d2b954ce4e3d66d339e73fafbc1d8ae13291a41f92697c`
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
# Tue, 17 Jan 2017 18:04:25 GMT
RUN apt-get update && apt-get install -y perl pwgen --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 18:04:27 GMT
RUN set -ex; 	key='A4A9406876FCBD3C456770C88C718D3B5072E1F5'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/mysql.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list > /dev/null
# Tue, 17 Jan 2017 18:06:24 GMT
ENV MYSQL_MAJOR=8.0
# Tue, 17 Jan 2017 18:06:24 GMT
ENV MYSQL_VERSION=8.0.0-dmr-1debian8
# Tue, 17 Jan 2017 18:06:25 GMT
RUN echo "deb http://repo.mysql.com/apt/debian/ jessie mysql-${MYSQL_MAJOR}" > /etc/apt/sources.list.d/mysql.list
# Tue, 17 Jan 2017 18:06:44 GMT
RUN { 		echo mysql-community-server mysql-community-server/data-dir select ''; 		echo mysql-community-server mysql-community-server/root-pass password ''; 		echo mysql-community-server mysql-community-server/re-root-pass password ''; 		echo mysql-community-server mysql-community-server/remove-test-db select false; 	} | debconf-set-selections 	&& apt-get update && apt-get install -y mysql-server="${MYSQL_VERSION}" && rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Tue, 17 Jan 2017 18:06:45 GMT
RUN sed -Ei 's/^(bind-address|log)/#&/' /etc/mysql/mysql.conf.d/mysqld.cnf 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Tue, 17 Jan 2017 18:06:45 GMT
VOLUME [/var/lib/mysql]
# Tue, 17 Jan 2017 18:06:46 GMT
COPY file:915aa28b0ee915243ed916898ba2c6103acca9fe847f9365ced97a8b7ee5e4c9 in /usr/local/bin/ 
# Tue, 17 Jan 2017 18:06:47 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 17 Jan 2017 18:06:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 17 Jan 2017 18:06:47 GMT
EXPOSE 3306/tcp
# Tue, 17 Jan 2017 18:06:48 GMT
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
	-	`sha256:84bedc72ed3a48f9d8e35cb0d3cecd245dfbeaa3eb1c74010d94748a787f0565`  
		Last Modified: Wed, 18 Jan 2017 05:16:44 GMT  
		Size: 8.2 MB (8248056 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10981627b57db668106f924adcb717a6bc75b2a180d588a4108b791dd637824f`  
		Last Modified: Wed, 18 Jan 2017 05:16:31 GMT  
		Size: 19.0 KB (18967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aeb4318a06a3497180ccf44d64d2111455691f2cfd24e85bd9a28e2a909c0f6e`  
		Last Modified: Wed, 18 Jan 2017 05:20:05 GMT  
		Size: 217.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c00c07f53c904eb7d602d131116212f9eeb5090dfe5869f5b80b199a7b7b9c33`  
		Last Modified: Wed, 18 Jan 2017 05:20:39 GMT  
		Size: 68.8 MB (68810666 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:797aee66f2c9f4030979626d2a41f1cf8e55b9b4d5f65fa6c120b61188f2d75c`  
		Last Modified: Wed, 18 Jan 2017 05:20:05 GMT  
		Size: 880.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:adeb47578e8856e73bcd4efc724eb879f3ca5b606acfb15ea6425bf3ecca0220`  
		Last Modified: Wed, 18 Jan 2017 05:20:04 GMT  
		Size: 2.4 KB (2421 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccb75dcae2b74028910bbde22558d89f3eda0cc95feac7a7ef15c953bd6424de`  
		Last Modified: Wed, 18 Jan 2017 05:20:04 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:8`

```console
$ docker pull mysql@sha256:3c6711fec482f1a7bb3dc84090c8c078e3c2118a78f63497cd7f44f01c2490fc
```

-	Platforms:
	-	linux; amd64

### `mysql:8` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **129.7 MB (129661398 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:61e529020c43b917e9d2b954ce4e3d66d339e73fafbc1d8ae13291a41f92697c`
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
# Tue, 17 Jan 2017 18:04:25 GMT
RUN apt-get update && apt-get install -y perl pwgen --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 18:04:27 GMT
RUN set -ex; 	key='A4A9406876FCBD3C456770C88C718D3B5072E1F5'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/mysql.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list > /dev/null
# Tue, 17 Jan 2017 18:06:24 GMT
ENV MYSQL_MAJOR=8.0
# Tue, 17 Jan 2017 18:06:24 GMT
ENV MYSQL_VERSION=8.0.0-dmr-1debian8
# Tue, 17 Jan 2017 18:06:25 GMT
RUN echo "deb http://repo.mysql.com/apt/debian/ jessie mysql-${MYSQL_MAJOR}" > /etc/apt/sources.list.d/mysql.list
# Tue, 17 Jan 2017 18:06:44 GMT
RUN { 		echo mysql-community-server mysql-community-server/data-dir select ''; 		echo mysql-community-server mysql-community-server/root-pass password ''; 		echo mysql-community-server mysql-community-server/re-root-pass password ''; 		echo mysql-community-server mysql-community-server/remove-test-db select false; 	} | debconf-set-selections 	&& apt-get update && apt-get install -y mysql-server="${MYSQL_VERSION}" && rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Tue, 17 Jan 2017 18:06:45 GMT
RUN sed -Ei 's/^(bind-address|log)/#&/' /etc/mysql/mysql.conf.d/mysqld.cnf 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Tue, 17 Jan 2017 18:06:45 GMT
VOLUME [/var/lib/mysql]
# Tue, 17 Jan 2017 18:06:46 GMT
COPY file:915aa28b0ee915243ed916898ba2c6103acca9fe847f9365ced97a8b7ee5e4c9 in /usr/local/bin/ 
# Tue, 17 Jan 2017 18:06:47 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 17 Jan 2017 18:06:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 17 Jan 2017 18:06:47 GMT
EXPOSE 3306/tcp
# Tue, 17 Jan 2017 18:06:48 GMT
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
	-	`sha256:84bedc72ed3a48f9d8e35cb0d3cecd245dfbeaa3eb1c74010d94748a787f0565`  
		Last Modified: Wed, 18 Jan 2017 05:16:44 GMT  
		Size: 8.2 MB (8248056 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10981627b57db668106f924adcb717a6bc75b2a180d588a4108b791dd637824f`  
		Last Modified: Wed, 18 Jan 2017 05:16:31 GMT  
		Size: 19.0 KB (18967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aeb4318a06a3497180ccf44d64d2111455691f2cfd24e85bd9a28e2a909c0f6e`  
		Last Modified: Wed, 18 Jan 2017 05:20:05 GMT  
		Size: 217.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c00c07f53c904eb7d602d131116212f9eeb5090dfe5869f5b80b199a7b7b9c33`  
		Last Modified: Wed, 18 Jan 2017 05:20:39 GMT  
		Size: 68.8 MB (68810666 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:797aee66f2c9f4030979626d2a41f1cf8e55b9b4d5f65fa6c120b61188f2d75c`  
		Last Modified: Wed, 18 Jan 2017 05:20:05 GMT  
		Size: 880.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:adeb47578e8856e73bcd4efc724eb879f3ca5b606acfb15ea6425bf3ecca0220`  
		Last Modified: Wed, 18 Jan 2017 05:20:04 GMT  
		Size: 2.4 KB (2421 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccb75dcae2b74028910bbde22558d89f3eda0cc95feac7a7ef15c953bd6424de`  
		Last Modified: Wed, 18 Jan 2017 05:20:04 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:5.7.17`

```console
$ docker pull mysql@sha256:79690dd87d68fd4d801e65f5479f8865d572a6c7ac073c9273713a9c633022c5
```

-	Platforms:
	-	linux; amd64

### `mysql:5.7.17` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **137.8 MB (137829528 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f3694c67abdbca70b85aaedfaa055938e229fec74e7864055e87a2dbff6d8811`
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
# Tue, 17 Jan 2017 18:04:25 GMT
RUN apt-get update && apt-get install -y perl pwgen --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 18:04:27 GMT
RUN set -ex; 	key='A4A9406876FCBD3C456770C88C718D3B5072E1F5'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/mysql.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list > /dev/null
# Tue, 17 Jan 2017 18:04:27 GMT
ENV MYSQL_MAJOR=5.7
# Tue, 17 Jan 2017 18:04:27 GMT
ENV MYSQL_VERSION=5.7.17-1debian8
# Tue, 17 Jan 2017 18:04:28 GMT
RUN echo "deb http://repo.mysql.com/apt/debian/ jessie mysql-${MYSQL_MAJOR}" > /etc/apt/sources.list.d/mysql.list
# Tue, 17 Jan 2017 18:04:48 GMT
RUN { 		echo mysql-community-server mysql-community-server/data-dir select ''; 		echo mysql-community-server mysql-community-server/root-pass password ''; 		echo mysql-community-server mysql-community-server/re-root-pass password ''; 		echo mysql-community-server mysql-community-server/remove-test-db select false; 	} | debconf-set-selections 	&& apt-get update && apt-get install -y mysql-server="${MYSQL_VERSION}" && rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Tue, 17 Jan 2017 18:04:49 GMT
RUN sed -Ei 's/^(bind-address|log)/#&/' /etc/mysql/mysql.conf.d/mysqld.cnf 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Tue, 17 Jan 2017 18:04:49 GMT
VOLUME [/var/lib/mysql]
# Tue, 17 Jan 2017 18:04:49 GMT
COPY file:915aa28b0ee915243ed916898ba2c6103acca9fe847f9365ced97a8b7ee5e4c9 in /usr/local/bin/ 
# Tue, 17 Jan 2017 18:04:50 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 17 Jan 2017 18:04:51 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 17 Jan 2017 18:04:51 GMT
EXPOSE 3306/tcp
# Tue, 17 Jan 2017 18:04:51 GMT
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
	-	`sha256:84bedc72ed3a48f9d8e35cb0d3cecd245dfbeaa3eb1c74010d94748a787f0565`  
		Last Modified: Wed, 18 Jan 2017 05:16:44 GMT  
		Size: 8.2 MB (8248056 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10981627b57db668106f924adcb717a6bc75b2a180d588a4108b791dd637824f`  
		Last Modified: Wed, 18 Jan 2017 05:16:31 GMT  
		Size: 19.0 KB (18967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0eb1485c660d9338fc50af5eaf08be3349ab3e97f25bba503ccc9157fae3de6d`  
		Last Modified: Wed, 18 Jan 2017 05:17:57 GMT  
		Size: 217.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3ee110bb981c48cf8899d10b248f1ea91055768b1906b280f4634703b3768d8`  
		Last Modified: Wed, 18 Jan 2017 05:18:43 GMT  
		Size: 77.0 MB (76978739 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01dd88d2ce4f87ea5ede242bec26b2711948e170a7c50c27e6b9e0e10c717df9`  
		Last Modified: Wed, 18 Jan 2017 05:17:58 GMT  
		Size: 935.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a08baf9a1c89fc3e6e1ef6a223139a827f9db079e59eba951c251e3cc58d04d9`  
		Last Modified: Wed, 18 Jan 2017 05:17:58 GMT  
		Size: 2.4 KB (2423 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f844a59fb032107d51e82be66976a49feec9a8d4251bdb34a1b8a652c334223`  
		Last Modified: Wed, 18 Jan 2017 05:17:58 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:5.7`

```console
$ docker pull mysql@sha256:79690dd87d68fd4d801e65f5479f8865d572a6c7ac073c9273713a9c633022c5
```

-	Platforms:
	-	linux; amd64

### `mysql:5.7` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **137.8 MB (137829528 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f3694c67abdbca70b85aaedfaa055938e229fec74e7864055e87a2dbff6d8811`
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
# Tue, 17 Jan 2017 18:04:25 GMT
RUN apt-get update && apt-get install -y perl pwgen --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 18:04:27 GMT
RUN set -ex; 	key='A4A9406876FCBD3C456770C88C718D3B5072E1F5'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/mysql.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list > /dev/null
# Tue, 17 Jan 2017 18:04:27 GMT
ENV MYSQL_MAJOR=5.7
# Tue, 17 Jan 2017 18:04:27 GMT
ENV MYSQL_VERSION=5.7.17-1debian8
# Tue, 17 Jan 2017 18:04:28 GMT
RUN echo "deb http://repo.mysql.com/apt/debian/ jessie mysql-${MYSQL_MAJOR}" > /etc/apt/sources.list.d/mysql.list
# Tue, 17 Jan 2017 18:04:48 GMT
RUN { 		echo mysql-community-server mysql-community-server/data-dir select ''; 		echo mysql-community-server mysql-community-server/root-pass password ''; 		echo mysql-community-server mysql-community-server/re-root-pass password ''; 		echo mysql-community-server mysql-community-server/remove-test-db select false; 	} | debconf-set-selections 	&& apt-get update && apt-get install -y mysql-server="${MYSQL_VERSION}" && rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Tue, 17 Jan 2017 18:04:49 GMT
RUN sed -Ei 's/^(bind-address|log)/#&/' /etc/mysql/mysql.conf.d/mysqld.cnf 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Tue, 17 Jan 2017 18:04:49 GMT
VOLUME [/var/lib/mysql]
# Tue, 17 Jan 2017 18:04:49 GMT
COPY file:915aa28b0ee915243ed916898ba2c6103acca9fe847f9365ced97a8b7ee5e4c9 in /usr/local/bin/ 
# Tue, 17 Jan 2017 18:04:50 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 17 Jan 2017 18:04:51 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 17 Jan 2017 18:04:51 GMT
EXPOSE 3306/tcp
# Tue, 17 Jan 2017 18:04:51 GMT
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
	-	`sha256:84bedc72ed3a48f9d8e35cb0d3cecd245dfbeaa3eb1c74010d94748a787f0565`  
		Last Modified: Wed, 18 Jan 2017 05:16:44 GMT  
		Size: 8.2 MB (8248056 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10981627b57db668106f924adcb717a6bc75b2a180d588a4108b791dd637824f`  
		Last Modified: Wed, 18 Jan 2017 05:16:31 GMT  
		Size: 19.0 KB (18967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0eb1485c660d9338fc50af5eaf08be3349ab3e97f25bba503ccc9157fae3de6d`  
		Last Modified: Wed, 18 Jan 2017 05:17:57 GMT  
		Size: 217.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3ee110bb981c48cf8899d10b248f1ea91055768b1906b280f4634703b3768d8`  
		Last Modified: Wed, 18 Jan 2017 05:18:43 GMT  
		Size: 77.0 MB (76978739 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01dd88d2ce4f87ea5ede242bec26b2711948e170a7c50c27e6b9e0e10c717df9`  
		Last Modified: Wed, 18 Jan 2017 05:17:58 GMT  
		Size: 935.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a08baf9a1c89fc3e6e1ef6a223139a827f9db079e59eba951c251e3cc58d04d9`  
		Last Modified: Wed, 18 Jan 2017 05:17:58 GMT  
		Size: 2.4 KB (2423 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f844a59fb032107d51e82be66976a49feec9a8d4251bdb34a1b8a652c334223`  
		Last Modified: Wed, 18 Jan 2017 05:17:58 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:5`

```console
$ docker pull mysql@sha256:79690dd87d68fd4d801e65f5479f8865d572a6c7ac073c9273713a9c633022c5
```

-	Platforms:
	-	linux; amd64

### `mysql:5` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **137.8 MB (137829528 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f3694c67abdbca70b85aaedfaa055938e229fec74e7864055e87a2dbff6d8811`
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
# Tue, 17 Jan 2017 18:04:25 GMT
RUN apt-get update && apt-get install -y perl pwgen --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 18:04:27 GMT
RUN set -ex; 	key='A4A9406876FCBD3C456770C88C718D3B5072E1F5'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/mysql.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list > /dev/null
# Tue, 17 Jan 2017 18:04:27 GMT
ENV MYSQL_MAJOR=5.7
# Tue, 17 Jan 2017 18:04:27 GMT
ENV MYSQL_VERSION=5.7.17-1debian8
# Tue, 17 Jan 2017 18:04:28 GMT
RUN echo "deb http://repo.mysql.com/apt/debian/ jessie mysql-${MYSQL_MAJOR}" > /etc/apt/sources.list.d/mysql.list
# Tue, 17 Jan 2017 18:04:48 GMT
RUN { 		echo mysql-community-server mysql-community-server/data-dir select ''; 		echo mysql-community-server mysql-community-server/root-pass password ''; 		echo mysql-community-server mysql-community-server/re-root-pass password ''; 		echo mysql-community-server mysql-community-server/remove-test-db select false; 	} | debconf-set-selections 	&& apt-get update && apt-get install -y mysql-server="${MYSQL_VERSION}" && rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Tue, 17 Jan 2017 18:04:49 GMT
RUN sed -Ei 's/^(bind-address|log)/#&/' /etc/mysql/mysql.conf.d/mysqld.cnf 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Tue, 17 Jan 2017 18:04:49 GMT
VOLUME [/var/lib/mysql]
# Tue, 17 Jan 2017 18:04:49 GMT
COPY file:915aa28b0ee915243ed916898ba2c6103acca9fe847f9365ced97a8b7ee5e4c9 in /usr/local/bin/ 
# Tue, 17 Jan 2017 18:04:50 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 17 Jan 2017 18:04:51 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 17 Jan 2017 18:04:51 GMT
EXPOSE 3306/tcp
# Tue, 17 Jan 2017 18:04:51 GMT
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
	-	`sha256:84bedc72ed3a48f9d8e35cb0d3cecd245dfbeaa3eb1c74010d94748a787f0565`  
		Last Modified: Wed, 18 Jan 2017 05:16:44 GMT  
		Size: 8.2 MB (8248056 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10981627b57db668106f924adcb717a6bc75b2a180d588a4108b791dd637824f`  
		Last Modified: Wed, 18 Jan 2017 05:16:31 GMT  
		Size: 19.0 KB (18967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0eb1485c660d9338fc50af5eaf08be3349ab3e97f25bba503ccc9157fae3de6d`  
		Last Modified: Wed, 18 Jan 2017 05:17:57 GMT  
		Size: 217.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3ee110bb981c48cf8899d10b248f1ea91055768b1906b280f4634703b3768d8`  
		Last Modified: Wed, 18 Jan 2017 05:18:43 GMT  
		Size: 77.0 MB (76978739 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01dd88d2ce4f87ea5ede242bec26b2711948e170a7c50c27e6b9e0e10c717df9`  
		Last Modified: Wed, 18 Jan 2017 05:17:58 GMT  
		Size: 935.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a08baf9a1c89fc3e6e1ef6a223139a827f9db079e59eba951c251e3cc58d04d9`  
		Last Modified: Wed, 18 Jan 2017 05:17:58 GMT  
		Size: 2.4 KB (2423 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f844a59fb032107d51e82be66976a49feec9a8d4251bdb34a1b8a652c334223`  
		Last Modified: Wed, 18 Jan 2017 05:17:58 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:latest`

```console
$ docker pull mysql@sha256:79690dd87d68fd4d801e65f5479f8865d572a6c7ac073c9273713a9c633022c5
```

-	Platforms:
	-	linux; amd64

### `mysql:latest` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **137.8 MB (137829528 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f3694c67abdbca70b85aaedfaa055938e229fec74e7864055e87a2dbff6d8811`
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
# Tue, 17 Jan 2017 18:04:25 GMT
RUN apt-get update && apt-get install -y perl pwgen --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 18:04:27 GMT
RUN set -ex; 	key='A4A9406876FCBD3C456770C88C718D3B5072E1F5'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/mysql.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list > /dev/null
# Tue, 17 Jan 2017 18:04:27 GMT
ENV MYSQL_MAJOR=5.7
# Tue, 17 Jan 2017 18:04:27 GMT
ENV MYSQL_VERSION=5.7.17-1debian8
# Tue, 17 Jan 2017 18:04:28 GMT
RUN echo "deb http://repo.mysql.com/apt/debian/ jessie mysql-${MYSQL_MAJOR}" > /etc/apt/sources.list.d/mysql.list
# Tue, 17 Jan 2017 18:04:48 GMT
RUN { 		echo mysql-community-server mysql-community-server/data-dir select ''; 		echo mysql-community-server mysql-community-server/root-pass password ''; 		echo mysql-community-server mysql-community-server/re-root-pass password ''; 		echo mysql-community-server mysql-community-server/remove-test-db select false; 	} | debconf-set-selections 	&& apt-get update && apt-get install -y mysql-server="${MYSQL_VERSION}" && rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Tue, 17 Jan 2017 18:04:49 GMT
RUN sed -Ei 's/^(bind-address|log)/#&/' /etc/mysql/mysql.conf.d/mysqld.cnf 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Tue, 17 Jan 2017 18:04:49 GMT
VOLUME [/var/lib/mysql]
# Tue, 17 Jan 2017 18:04:49 GMT
COPY file:915aa28b0ee915243ed916898ba2c6103acca9fe847f9365ced97a8b7ee5e4c9 in /usr/local/bin/ 
# Tue, 17 Jan 2017 18:04:50 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 17 Jan 2017 18:04:51 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 17 Jan 2017 18:04:51 GMT
EXPOSE 3306/tcp
# Tue, 17 Jan 2017 18:04:51 GMT
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
	-	`sha256:84bedc72ed3a48f9d8e35cb0d3cecd245dfbeaa3eb1c74010d94748a787f0565`  
		Last Modified: Wed, 18 Jan 2017 05:16:44 GMT  
		Size: 8.2 MB (8248056 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10981627b57db668106f924adcb717a6bc75b2a180d588a4108b791dd637824f`  
		Last Modified: Wed, 18 Jan 2017 05:16:31 GMT  
		Size: 19.0 KB (18967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0eb1485c660d9338fc50af5eaf08be3349ab3e97f25bba503ccc9157fae3de6d`  
		Last Modified: Wed, 18 Jan 2017 05:17:57 GMT  
		Size: 217.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3ee110bb981c48cf8899d10b248f1ea91055768b1906b280f4634703b3768d8`  
		Last Modified: Wed, 18 Jan 2017 05:18:43 GMT  
		Size: 77.0 MB (76978739 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01dd88d2ce4f87ea5ede242bec26b2711948e170a7c50c27e6b9e0e10c717df9`  
		Last Modified: Wed, 18 Jan 2017 05:17:58 GMT  
		Size: 935.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a08baf9a1c89fc3e6e1ef6a223139a827f9db079e59eba951c251e3cc58d04d9`  
		Last Modified: Wed, 18 Jan 2017 05:17:58 GMT  
		Size: 2.4 KB (2423 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f844a59fb032107d51e82be66976a49feec9a8d4251bdb34a1b8a652c334223`  
		Last Modified: Wed, 18 Jan 2017 05:17:58 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:5.6.35`

```console
$ docker pull mysql@sha256:9eeaffc43e1e46e8ae17b5fc770281a90d388d879ef78d02525d8d6c2c83a197
```

-	Platforms:
	-	linux; amd64

### `mysql:5.6.35` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **112.8 MB (112786273 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a896fd82dcd52c3e70c4a821df595bd0349b3b92ae94f67306d6a40309c2031d`
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
# Tue, 17 Jan 2017 18:04:25 GMT
RUN apt-get update && apt-get install -y perl pwgen --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 18:04:27 GMT
RUN set -ex; 	key='A4A9406876FCBD3C456770C88C718D3B5072E1F5'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/mysql.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list > /dev/null
# Tue, 17 Jan 2017 18:05:56 GMT
ENV MYSQL_MAJOR=5.6
# Tue, 17 Jan 2017 18:05:56 GMT
ENV MYSQL_VERSION=5.6.35-1debian8
# Tue, 17 Jan 2017 18:05:57 GMT
RUN echo "deb http://repo.mysql.com/apt/debian/ jessie mysql-${MYSQL_MAJOR}" > /etc/apt/sources.list.d/mysql.list
# Tue, 17 Jan 2017 18:06:19 GMT
RUN { 		echo mysql-community-server mysql-community-server/data-dir select ''; 		echo mysql-community-server mysql-community-server/root-pass password ''; 		echo mysql-community-server mysql-community-server/re-root-pass password ''; 		echo mysql-community-server mysql-community-server/remove-test-db select false; 	} | debconf-set-selections 	&& apt-get update && apt-get install -y mysql-server="${MYSQL_VERSION}" && rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Tue, 17 Jan 2017 18:06:20 GMT
RUN sed -Ei 's/^(bind-address|log)/#&/' /etc/mysql/my.cnf 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Tue, 17 Jan 2017 18:06:21 GMT
VOLUME [/var/lib/mysql]
# Tue, 17 Jan 2017 18:06:21 GMT
COPY file:4525fb8b249a0bd84126fe09d40e3039307532c4050b0947d5bea89efdd4c1c9 in /usr/local/bin/ 
# Tue, 17 Jan 2017 18:06:22 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 17 Jan 2017 18:06:22 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 17 Jan 2017 18:06:23 GMT
EXPOSE 3306/tcp
# Tue, 17 Jan 2017 18:06:23 GMT
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
	-	`sha256:84bedc72ed3a48f9d8e35cb0d3cecd245dfbeaa3eb1c74010d94748a787f0565`  
		Last Modified: Wed, 18 Jan 2017 05:16:44 GMT  
		Size: 8.2 MB (8248056 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10981627b57db668106f924adcb717a6bc75b2a180d588a4108b791dd637824f`  
		Last Modified: Wed, 18 Jan 2017 05:16:31 GMT  
		Size: 19.0 KB (18967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23ee1b26711af14ff5450740b43cbe0fa676e31cd21d62012450e0389793c430`  
		Last Modified: Wed, 18 Jan 2017 05:16:31 GMT  
		Size: 215.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6211e53b51da912c8b4917e8b2d29bf4eb0e150741f2130cdcb82b7a5ae2f38`  
		Last Modified: Wed, 18 Jan 2017 05:17:02 GMT  
		Size: 51.9 MB (51935175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0243a81fb4610f1238ce304fc75ff7e72246a6d7b8d923fa10998dde9a6a58bd`  
		Last Modified: Wed, 18 Jan 2017 05:16:28 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26def0be0284c19081ddbbcdb1b6123b931d4a9eedaa27abcb8c0972615a2771`  
		Last Modified: Wed, 18 Jan 2017 05:16:28 GMT  
		Size: 2.5 KB (2459 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b3113b55db173613f2345b1bd06e55293f0f85361f03e6e058f20c42cd044cd`  
		Last Modified: Wed, 18 Jan 2017 05:16:28 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:5.6`

```console
$ docker pull mysql@sha256:9eeaffc43e1e46e8ae17b5fc770281a90d388d879ef78d02525d8d6c2c83a197
```

-	Platforms:
	-	linux; amd64

### `mysql:5.6` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **112.8 MB (112786273 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a896fd82dcd52c3e70c4a821df595bd0349b3b92ae94f67306d6a40309c2031d`
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
# Tue, 17 Jan 2017 18:04:25 GMT
RUN apt-get update && apt-get install -y perl pwgen --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 18:04:27 GMT
RUN set -ex; 	key='A4A9406876FCBD3C456770C88C718D3B5072E1F5'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/mysql.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list > /dev/null
# Tue, 17 Jan 2017 18:05:56 GMT
ENV MYSQL_MAJOR=5.6
# Tue, 17 Jan 2017 18:05:56 GMT
ENV MYSQL_VERSION=5.6.35-1debian8
# Tue, 17 Jan 2017 18:05:57 GMT
RUN echo "deb http://repo.mysql.com/apt/debian/ jessie mysql-${MYSQL_MAJOR}" > /etc/apt/sources.list.d/mysql.list
# Tue, 17 Jan 2017 18:06:19 GMT
RUN { 		echo mysql-community-server mysql-community-server/data-dir select ''; 		echo mysql-community-server mysql-community-server/root-pass password ''; 		echo mysql-community-server mysql-community-server/re-root-pass password ''; 		echo mysql-community-server mysql-community-server/remove-test-db select false; 	} | debconf-set-selections 	&& apt-get update && apt-get install -y mysql-server="${MYSQL_VERSION}" && rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Tue, 17 Jan 2017 18:06:20 GMT
RUN sed -Ei 's/^(bind-address|log)/#&/' /etc/mysql/my.cnf 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Tue, 17 Jan 2017 18:06:21 GMT
VOLUME [/var/lib/mysql]
# Tue, 17 Jan 2017 18:06:21 GMT
COPY file:4525fb8b249a0bd84126fe09d40e3039307532c4050b0947d5bea89efdd4c1c9 in /usr/local/bin/ 
# Tue, 17 Jan 2017 18:06:22 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 17 Jan 2017 18:06:22 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 17 Jan 2017 18:06:23 GMT
EXPOSE 3306/tcp
# Tue, 17 Jan 2017 18:06:23 GMT
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
	-	`sha256:84bedc72ed3a48f9d8e35cb0d3cecd245dfbeaa3eb1c74010d94748a787f0565`  
		Last Modified: Wed, 18 Jan 2017 05:16:44 GMT  
		Size: 8.2 MB (8248056 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10981627b57db668106f924adcb717a6bc75b2a180d588a4108b791dd637824f`  
		Last Modified: Wed, 18 Jan 2017 05:16:31 GMT  
		Size: 19.0 KB (18967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23ee1b26711af14ff5450740b43cbe0fa676e31cd21d62012450e0389793c430`  
		Last Modified: Wed, 18 Jan 2017 05:16:31 GMT  
		Size: 215.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6211e53b51da912c8b4917e8b2d29bf4eb0e150741f2130cdcb82b7a5ae2f38`  
		Last Modified: Wed, 18 Jan 2017 05:17:02 GMT  
		Size: 51.9 MB (51935175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0243a81fb4610f1238ce304fc75ff7e72246a6d7b8d923fa10998dde9a6a58bd`  
		Last Modified: Wed, 18 Jan 2017 05:16:28 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26def0be0284c19081ddbbcdb1b6123b931d4a9eedaa27abcb8c0972615a2771`  
		Last Modified: Wed, 18 Jan 2017 05:16:28 GMT  
		Size: 2.5 KB (2459 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b3113b55db173613f2345b1bd06e55293f0f85361f03e6e058f20c42cd044cd`  
		Last Modified: Wed, 18 Jan 2017 05:16:28 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:5.5.54`

```console
$ docker pull mysql@sha256:a896bb86cdf7af78f7e5591538e887f52987212ac527e658f943e839f9161102
```

-	Platforms:
	-	linux; amd64

### `mysql:5.5.54` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **87.4 MB (87411932 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:98ae577069d3051b1edad38c292a731c9d127f7d7aa4cc842f687f12d227ea31`
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
# Tue, 17 Jan 2017 18:04:59 GMT
RUN apt-get update && apt-get install -y perl --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 18:05:04 GMT
RUN apt-get update && apt-get install -y libaio1 pwgen && rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 18:05:05 GMT
ENV MYSQL_MAJOR=5.5
# Tue, 17 Jan 2017 18:05:05 GMT
ENV MYSQL_VERSION=5.5.54
# Tue, 17 Jan 2017 18:05:51 GMT
RUN apt-get update && apt-get install -y ca-certificates wget --no-install-recommends && rm -rf /var/lib/apt/lists/* 	&& wget "https://cdn.mysql.com/Downloads/MySQL-$MYSQL_MAJOR/mysql-$MYSQL_VERSION-linux2.6-x86_64.tar.gz" -O mysql.tar.gz 	&& wget "https://cdn.mysql.com/Downloads/MySQL-$MYSQL_MAJOR/mysql-$MYSQL_VERSION-linux2.6-x86_64.tar.gz.asc" -O mysql.tar.gz.asc 	&& apt-get purge -y --auto-remove ca-certificates wget 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys A4A9406876FCBD3C456770C88C718D3B5072E1F5 	&& gpg --batch --verify mysql.tar.gz.asc mysql.tar.gz 	&& rm -r "$GNUPGHOME" mysql.tar.gz.asc 	&& mkdir /usr/local/mysql 	&& tar -xzf mysql.tar.gz -C /usr/local/mysql --strip-components=1 	&& rm mysql.tar.gz 	&& rm -rf /usr/local/mysql/mysql-test /usr/local/mysql/sql-bench 	&& rm -rf /usr/local/mysql/bin/*-debug /usr/local/mysql/bin/*_embedded 	&& find /usr/local/mysql -type f -name "*.a" -delete 	&& apt-get update && apt-get install -y binutils && rm -rf /var/lib/apt/lists/* 	&& { find /usr/local/mysql -type f -executable -exec strip --strip-all '{}' + || true; } 	&& apt-get purge -y --auto-remove binutils
# Tue, 17 Jan 2017 18:05:51 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/mysql/bin:/usr/local/mysql/scripts
# Tue, 17 Jan 2017 18:05:52 GMT
RUN mkdir -p /etc/mysql/conf.d 	&& { 		echo '[mysqld]'; 		echo 'skip-host-cache'; 		echo 'skip-name-resolve'; 		echo 'datadir = /var/lib/mysql'; 		echo '!includedir /etc/mysql/conf.d/'; 	} > /etc/mysql/my.cnf
# Tue, 17 Jan 2017 18:05:53 GMT
RUN mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Tue, 17 Jan 2017 18:05:53 GMT
VOLUME [/var/lib/mysql]
# Tue, 17 Jan 2017 18:05:54 GMT
COPY file:d16a9566d4b9cf29a984c8b6d111646c8dad7579141c4417ccd654d1335ba3fc in /usr/local/bin/ 
# Tue, 17 Jan 2017 18:05:55 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 17 Jan 2017 18:05:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 17 Jan 2017 18:05:55 GMT
EXPOSE 3306/tcp
# Tue, 17 Jan 2017 18:05:55 GMT
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
	-	`sha256:6db5b5696c2f00982765f9888fbe867598afa1eb7e90c4bdc2b281ba1308c49c`  
		Last Modified: Wed, 18 Jan 2017 05:15:44 GMT  
		Size: 8.2 MB (8219931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09d6fe77e8c4a02c64e1ac9a1ee916faa5a5e6116906942952b8004180bb67a5`  
		Last Modified: Wed, 18 Jan 2017 05:15:38 GMT  
		Size: 100.9 KB (100872 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24c83c4041f459eb61e3af5c74cf2f74485cd4186aae9944e35884ce911e5c01`  
		Last Modified: Wed, 18 Jan 2017 05:15:52 GMT  
		Size: 26.5 MB (26508034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7022739161673cee4b709ef44c494140b82722d3eb752ede960acd071d1457c`  
		Last Modified: Wed, 18 Jan 2017 05:15:35 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fa65169c60b92976b9ee6faa02c5ce9436e1820df59ec0702daa6901c2a57d2`  
		Last Modified: Wed, 18 Jan 2017 05:15:35 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd756e6a64f530033b1991ee2856ac50f8b4a879e76badaaf146250e5f6c5aa2`  
		Last Modified: Wed, 18 Jan 2017 05:15:35 GMT  
		Size: 2.5 KB (2495 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fb122d43d90a208d861c2e8795875db2168b4160c7bd5652714f875d96f214e`  
		Last Modified: Wed, 18 Jan 2017 05:15:35 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:5.5`

```console
$ docker pull mysql@sha256:a896bb86cdf7af78f7e5591538e887f52987212ac527e658f943e839f9161102
```

-	Platforms:
	-	linux; amd64

### `mysql:5.5` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **87.4 MB (87411932 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:98ae577069d3051b1edad38c292a731c9d127f7d7aa4cc842f687f12d227ea31`
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
# Tue, 17 Jan 2017 18:04:59 GMT
RUN apt-get update && apt-get install -y perl --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 18:05:04 GMT
RUN apt-get update && apt-get install -y libaio1 pwgen && rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 18:05:05 GMT
ENV MYSQL_MAJOR=5.5
# Tue, 17 Jan 2017 18:05:05 GMT
ENV MYSQL_VERSION=5.5.54
# Tue, 17 Jan 2017 18:05:51 GMT
RUN apt-get update && apt-get install -y ca-certificates wget --no-install-recommends && rm -rf /var/lib/apt/lists/* 	&& wget "https://cdn.mysql.com/Downloads/MySQL-$MYSQL_MAJOR/mysql-$MYSQL_VERSION-linux2.6-x86_64.tar.gz" -O mysql.tar.gz 	&& wget "https://cdn.mysql.com/Downloads/MySQL-$MYSQL_MAJOR/mysql-$MYSQL_VERSION-linux2.6-x86_64.tar.gz.asc" -O mysql.tar.gz.asc 	&& apt-get purge -y --auto-remove ca-certificates wget 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys A4A9406876FCBD3C456770C88C718D3B5072E1F5 	&& gpg --batch --verify mysql.tar.gz.asc mysql.tar.gz 	&& rm -r "$GNUPGHOME" mysql.tar.gz.asc 	&& mkdir /usr/local/mysql 	&& tar -xzf mysql.tar.gz -C /usr/local/mysql --strip-components=1 	&& rm mysql.tar.gz 	&& rm -rf /usr/local/mysql/mysql-test /usr/local/mysql/sql-bench 	&& rm -rf /usr/local/mysql/bin/*-debug /usr/local/mysql/bin/*_embedded 	&& find /usr/local/mysql -type f -name "*.a" -delete 	&& apt-get update && apt-get install -y binutils && rm -rf /var/lib/apt/lists/* 	&& { find /usr/local/mysql -type f -executable -exec strip --strip-all '{}' + || true; } 	&& apt-get purge -y --auto-remove binutils
# Tue, 17 Jan 2017 18:05:51 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/mysql/bin:/usr/local/mysql/scripts
# Tue, 17 Jan 2017 18:05:52 GMT
RUN mkdir -p /etc/mysql/conf.d 	&& { 		echo '[mysqld]'; 		echo 'skip-host-cache'; 		echo 'skip-name-resolve'; 		echo 'datadir = /var/lib/mysql'; 		echo '!includedir /etc/mysql/conf.d/'; 	} > /etc/mysql/my.cnf
# Tue, 17 Jan 2017 18:05:53 GMT
RUN mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Tue, 17 Jan 2017 18:05:53 GMT
VOLUME [/var/lib/mysql]
# Tue, 17 Jan 2017 18:05:54 GMT
COPY file:d16a9566d4b9cf29a984c8b6d111646c8dad7579141c4417ccd654d1335ba3fc in /usr/local/bin/ 
# Tue, 17 Jan 2017 18:05:55 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 17 Jan 2017 18:05:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 17 Jan 2017 18:05:55 GMT
EXPOSE 3306/tcp
# Tue, 17 Jan 2017 18:05:55 GMT
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
	-	`sha256:6db5b5696c2f00982765f9888fbe867598afa1eb7e90c4bdc2b281ba1308c49c`  
		Last Modified: Wed, 18 Jan 2017 05:15:44 GMT  
		Size: 8.2 MB (8219931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09d6fe77e8c4a02c64e1ac9a1ee916faa5a5e6116906942952b8004180bb67a5`  
		Last Modified: Wed, 18 Jan 2017 05:15:38 GMT  
		Size: 100.9 KB (100872 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24c83c4041f459eb61e3af5c74cf2f74485cd4186aae9944e35884ce911e5c01`  
		Last Modified: Wed, 18 Jan 2017 05:15:52 GMT  
		Size: 26.5 MB (26508034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7022739161673cee4b709ef44c494140b82722d3eb752ede960acd071d1457c`  
		Last Modified: Wed, 18 Jan 2017 05:15:35 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fa65169c60b92976b9ee6faa02c5ce9436e1820df59ec0702daa6901c2a57d2`  
		Last Modified: Wed, 18 Jan 2017 05:15:35 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd756e6a64f530033b1991ee2856ac50f8b4a879e76badaaf146250e5f6c5aa2`  
		Last Modified: Wed, 18 Jan 2017 05:15:35 GMT  
		Size: 2.5 KB (2495 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fb122d43d90a208d861c2e8795875db2168b4160c7bd5652714f875d96f214e`  
		Last Modified: Wed, 18 Jan 2017 05:15:35 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
