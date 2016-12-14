<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `mariadb`

-	[`mariadb:10.1.19`](#mariadb10119)
-	[`mariadb:10.1`](#mariadb101)
-	[`mariadb:10`](#mariadb10)
-	[`mariadb:latest`](#mariadblatest)
-	[`mariadb:10.0.28`](#mariadb10028)
-	[`mariadb:10.0`](#mariadb100)
-	[`mariadb:5.5.53`](#mariadb5553)
-	[`mariadb:5.5`](#mariadb55)
-	[`mariadb:5`](#mariadb5)

## `mariadb:10.1.19`

```console
$ docker pull mariadb@sha256:6adb28c9adc0485698698b26d7080464d509602c2c5b125e1c5b331b14bc23fc
```

-	Platforms:
	-	linux; amd64

### `mariadb:10.1.19` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **131.1 MB (131053050 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:05a32751fb4d91c7a8a0f64e2d53d7afa7ae995c7679cc21359a6b86fa27d16c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 07 Nov 2016 20:30:25 GMT
ADD file:41ea5187c50116884c38d9ec51d920d79cfaeb2a61c52e07a97f457419a10a4f in / 
# Mon, 07 Nov 2016 20:30:26 GMT
CMD ["/bin/bash"]
# Tue, 08 Nov 2016 19:18:43 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Tue, 08 Nov 2016 19:18:43 GMT
ENV GOSU_VERSION=1.7
# Tue, 08 Nov 2016 19:19:05 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 08 Nov 2016 19:19:06 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 08 Nov 2016 19:19:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Tue, 08 Nov 2016 19:19:26 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	&& apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	&& apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Tue, 08 Nov 2016 19:19:27 GMT
RUN echo "deb https://repo.percona.com/apt jessie main" > /etc/apt/sources.list.d/percona.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona
# Tue, 08 Nov 2016 19:19:28 GMT
ENV MARIADB_MAJOR=10.1
# Tue, 08 Nov 2016 19:19:28 GMT
ENV MARIADB_VERSION=10.1.19+maria-1~jessie
# Tue, 08 Nov 2016 19:19:30 GMT
RUN echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/debian jessie main" > /etc/apt/sources.list.d/mariadb.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Tue, 08 Nov 2016 19:20:23 GMT
RUN { 		echo mariadb-server-$MARIADB_MAJOR mysql-server/root_password password 'unused'; 		echo mariadb-server-$MARIADB_MAJOR mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		mariadb-server=$MARIADB_VERSION 		percona-xtrabackup 		socat 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Tue, 08 Nov 2016 19:20:24 GMT
RUN sed -Ei 's/^(bind-address|log)/#&/' /etc/mysql/my.cnf 	&& echo 'skip-host-cache\nskip-name-resolve' | awk '{ print } $1 == "[mysqld]" && c == 0 { c = 1; system("cat") }' /etc/mysql/my.cnf > /tmp/my.cnf 	&& mv /tmp/my.cnf /etc/mysql/my.cnf
# Tue, 08 Nov 2016 19:20:25 GMT
VOLUME [/var/lib/mysql]
# Mon, 28 Nov 2016 23:20:17 GMT
COPY file:0581182efb1603629701b4f3842df355228a9462621ccc3622704c119568657d in /usr/local/bin/ 
# Mon, 28 Nov 2016 23:20:19 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Mon, 28 Nov 2016 23:20:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 28 Nov 2016 23:20:19 GMT
EXPOSE 3306/tcp
# Mon, 28 Nov 2016 23:20:20 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:386a066cd84a33a04d560c42bef66d1dd64ebfc76de78550e5fd0f8d57778bca`  
		Last Modified: Mon, 07 Nov 2016 20:34:04 GMT  
		Size: 51.4 MB (51356989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:827c8d62b3329a4c0383314b094be7373311ec9f9e3ece9ed1ac11daf1c78ec6`  
		Last Modified: Tue, 08 Nov 2016 19:22:48 GMT  
		Size: 2.0 KB (2044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de135f87677c2da2fb3658881e66c3f659b3a00ae012160ed49915ff3d1a755e`  
		Last Modified: Tue, 08 Nov 2016 19:22:47 GMT  
		Size: 1.2 MB (1216457 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05822f26ca6ef64a54f3b0af22565d6e3343b63aaee3c44fb57ca9910b53b81e`  
		Last Modified: Tue, 08 Nov 2016 19:22:45 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad65f56a251e632bec5c0e3b0971a8aaf77c78dee0c336cd392457e1742bb6e8`  
		Last Modified: Tue, 08 Nov 2016 19:22:47 GMT  
		Size: 6.5 MB (6464457 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d71752ae05f3f6ebbad8327a7aa6819b153ac598e18d1c4e2fd9aa903fdc27b3`  
		Last Modified: Tue, 08 Nov 2016 19:22:44 GMT  
		Size: 21.1 KB (21072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87cb39e409d005903f8ae34e39e16a8b146d0c78e864f87908e0e9012cc74561`  
		Last Modified: Tue, 08 Nov 2016 19:22:44 GMT  
		Size: 314.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e300615ba09850eb42360890fae43401ee71a7b85dc9024cf2026403f62e0ce`  
		Last Modified: Tue, 08 Nov 2016 19:22:41 GMT  
		Size: 320.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:411bb8b40c58722f00c15fc37eeb8b2dbae5caa77bf45d772ff6b7dc129b5501`  
		Last Modified: Tue, 08 Nov 2016 19:23:05 GMT  
		Size: 72.0 MB (71986420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f38e00663fa6d02fd9d11f554da578534e446a7f39442f738374b29b9c585921`  
		Last Modified: Tue, 08 Nov 2016 19:22:41 GMT  
		Size: 2.6 KB (2644 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb7471e9a58de21409e98c2b5b198d81cdb5a0758c7731bd53a07b7dc89b110b`  
		Last Modified: Mon, 28 Nov 2016 23:20:42 GMT  
		Size: 2.1 KB (2099 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d1b7d9d1b698a1b7e9053ab960e67f7e5bb8167a2ae1a459c89f2bc57bda6ab`  
		Last Modified: Mon, 28 Nov 2016 23:20:41 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:10.1`

```console
$ docker pull mariadb@sha256:6adb28c9adc0485698698b26d7080464d509602c2c5b125e1c5b331b14bc23fc
```

-	Platforms:
	-	linux; amd64

### `mariadb:10.1` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **131.1 MB (131053050 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:05a32751fb4d91c7a8a0f64e2d53d7afa7ae995c7679cc21359a6b86fa27d16c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 07 Nov 2016 20:30:25 GMT
ADD file:41ea5187c50116884c38d9ec51d920d79cfaeb2a61c52e07a97f457419a10a4f in / 
# Mon, 07 Nov 2016 20:30:26 GMT
CMD ["/bin/bash"]
# Tue, 08 Nov 2016 19:18:43 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Tue, 08 Nov 2016 19:18:43 GMT
ENV GOSU_VERSION=1.7
# Tue, 08 Nov 2016 19:19:05 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 08 Nov 2016 19:19:06 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 08 Nov 2016 19:19:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Tue, 08 Nov 2016 19:19:26 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	&& apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	&& apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Tue, 08 Nov 2016 19:19:27 GMT
RUN echo "deb https://repo.percona.com/apt jessie main" > /etc/apt/sources.list.d/percona.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona
# Tue, 08 Nov 2016 19:19:28 GMT
ENV MARIADB_MAJOR=10.1
# Tue, 08 Nov 2016 19:19:28 GMT
ENV MARIADB_VERSION=10.1.19+maria-1~jessie
# Tue, 08 Nov 2016 19:19:30 GMT
RUN echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/debian jessie main" > /etc/apt/sources.list.d/mariadb.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Tue, 08 Nov 2016 19:20:23 GMT
RUN { 		echo mariadb-server-$MARIADB_MAJOR mysql-server/root_password password 'unused'; 		echo mariadb-server-$MARIADB_MAJOR mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		mariadb-server=$MARIADB_VERSION 		percona-xtrabackup 		socat 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Tue, 08 Nov 2016 19:20:24 GMT
RUN sed -Ei 's/^(bind-address|log)/#&/' /etc/mysql/my.cnf 	&& echo 'skip-host-cache\nskip-name-resolve' | awk '{ print } $1 == "[mysqld]" && c == 0 { c = 1; system("cat") }' /etc/mysql/my.cnf > /tmp/my.cnf 	&& mv /tmp/my.cnf /etc/mysql/my.cnf
# Tue, 08 Nov 2016 19:20:25 GMT
VOLUME [/var/lib/mysql]
# Mon, 28 Nov 2016 23:20:17 GMT
COPY file:0581182efb1603629701b4f3842df355228a9462621ccc3622704c119568657d in /usr/local/bin/ 
# Mon, 28 Nov 2016 23:20:19 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Mon, 28 Nov 2016 23:20:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 28 Nov 2016 23:20:19 GMT
EXPOSE 3306/tcp
# Mon, 28 Nov 2016 23:20:20 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:386a066cd84a33a04d560c42bef66d1dd64ebfc76de78550e5fd0f8d57778bca`  
		Last Modified: Mon, 07 Nov 2016 20:34:04 GMT  
		Size: 51.4 MB (51356989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:827c8d62b3329a4c0383314b094be7373311ec9f9e3ece9ed1ac11daf1c78ec6`  
		Last Modified: Tue, 08 Nov 2016 19:22:48 GMT  
		Size: 2.0 KB (2044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de135f87677c2da2fb3658881e66c3f659b3a00ae012160ed49915ff3d1a755e`  
		Last Modified: Tue, 08 Nov 2016 19:22:47 GMT  
		Size: 1.2 MB (1216457 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05822f26ca6ef64a54f3b0af22565d6e3343b63aaee3c44fb57ca9910b53b81e`  
		Last Modified: Tue, 08 Nov 2016 19:22:45 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad65f56a251e632bec5c0e3b0971a8aaf77c78dee0c336cd392457e1742bb6e8`  
		Last Modified: Tue, 08 Nov 2016 19:22:47 GMT  
		Size: 6.5 MB (6464457 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d71752ae05f3f6ebbad8327a7aa6819b153ac598e18d1c4e2fd9aa903fdc27b3`  
		Last Modified: Tue, 08 Nov 2016 19:22:44 GMT  
		Size: 21.1 KB (21072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87cb39e409d005903f8ae34e39e16a8b146d0c78e864f87908e0e9012cc74561`  
		Last Modified: Tue, 08 Nov 2016 19:22:44 GMT  
		Size: 314.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e300615ba09850eb42360890fae43401ee71a7b85dc9024cf2026403f62e0ce`  
		Last Modified: Tue, 08 Nov 2016 19:22:41 GMT  
		Size: 320.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:411bb8b40c58722f00c15fc37eeb8b2dbae5caa77bf45d772ff6b7dc129b5501`  
		Last Modified: Tue, 08 Nov 2016 19:23:05 GMT  
		Size: 72.0 MB (71986420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f38e00663fa6d02fd9d11f554da578534e446a7f39442f738374b29b9c585921`  
		Last Modified: Tue, 08 Nov 2016 19:22:41 GMT  
		Size: 2.6 KB (2644 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb7471e9a58de21409e98c2b5b198d81cdb5a0758c7731bd53a07b7dc89b110b`  
		Last Modified: Mon, 28 Nov 2016 23:20:42 GMT  
		Size: 2.1 KB (2099 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d1b7d9d1b698a1b7e9053ab960e67f7e5bb8167a2ae1a459c89f2bc57bda6ab`  
		Last Modified: Mon, 28 Nov 2016 23:20:41 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:10`

```console
$ docker pull mariadb@sha256:3c02d8a116b9b11cb344c74f248765ac61feaf6f25c6e8bbc993d8124cad4ab0
```

-	Platforms:
	-	linux; amd64

### `mariadb:10` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **130.9 MB (130855842 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0c73f0dac69b711b1b3234dc5018678d4aa1bfa567cf8d982555ac56c16c2e16`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 13 Dec 2016 22:10:59 GMT
ADD file:1d214d2782eaccc743b8d683ccecf2f87f12a0ecdfbcd6fdf4943ce616f23870 in / 
# Tue, 13 Dec 2016 22:10:59 GMT
CMD ["/bin/bash"]
# Wed, 14 Dec 2016 01:00:10 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 14 Dec 2016 01:00:11 GMT
ENV GOSU_VERSION=1.7
# Wed, 14 Dec 2016 01:00:29 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 14 Dec 2016 01:00:30 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 14 Dec 2016 01:00:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Dec 2016 01:00:44 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	&& apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	&& apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Wed, 14 Dec 2016 01:00:45 GMT
RUN echo "deb https://repo.percona.com/apt jessie main" > /etc/apt/sources.list.d/percona.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona
# Wed, 14 Dec 2016 01:00:45 GMT
ENV MARIADB_MAJOR=10.1
# Wed, 14 Dec 2016 01:00:45 GMT
ENV MARIADB_VERSION=10.1.19+maria-1~jessie
# Wed, 14 Dec 2016 01:00:46 GMT
RUN echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/debian jessie main" > /etc/apt/sources.list.d/mariadb.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Wed, 14 Dec 2016 01:01:24 GMT
RUN { 		echo mariadb-server-$MARIADB_MAJOR mysql-server/root_password password 'unused'; 		echo mariadb-server-$MARIADB_MAJOR mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		mariadb-server=$MARIADB_VERSION 		percona-xtrabackup 		socat 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Wed, 14 Dec 2016 01:01:25 GMT
RUN sed -Ei 's/^(bind-address|log)/#&/' /etc/mysql/my.cnf 	&& echo 'skip-host-cache\nskip-name-resolve' | awk '{ print } $1 == "[mysqld]" && c == 0 { c = 1; system("cat") }' /etc/mysql/my.cnf > /tmp/my.cnf 	&& mv /tmp/my.cnf /etc/mysql/my.cnf
# Wed, 14 Dec 2016 01:01:25 GMT
VOLUME [/var/lib/mysql]
# Wed, 14 Dec 2016 02:38:17 GMT
COPY file:4bddc4758e22941cff70200b3c2b9944da22d0dd3b359657e1d240679abc379b in /usr/local/bin/ 
# Wed, 14 Dec 2016 02:38:18 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 14 Dec 2016 02:38:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 14 Dec 2016 02:38:19 GMT
EXPOSE 3306/tcp
# Wed, 14 Dec 2016 02:38:19 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:75a822cd7888e394c49828b951061402d31745f596b1f502758570f2d0ee79e2`  
		Last Modified: Tue, 13 Dec 2016 22:16:41 GMT  
		Size: 51.4 MB (51363125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8d5846e536af54d4f4773fb5173c759fb8b3673a34710a7e1fe15b4120dc8d2`  
		Last Modified: Wed, 14 Dec 2016 03:24:37 GMT  
		Size: 2.0 KB (2043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b75e9152a1702d9b527b4e753786743d20ceea693424429f5da60410d7b02ddf`  
		Last Modified: Wed, 14 Dec 2016 03:24:36 GMT  
		Size: 1.2 MB (1216944 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:832e6b0304969b9baa6a38a8e32da0aaf7d7cbf9476c31d006f335264edc6147`  
		Last Modified: Wed, 14 Dec 2016 01:03:50 GMT  
		Size: 112.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:034e06b5514d05312e5999a470975db1c81521f26b893b3a00fa7783f53e277a`  
		Last Modified: Wed, 14 Dec 2016 03:24:39 GMT  
		Size: 6.5 MB (6464914 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:374292b6cca5b31b5063e448696de7540907ef88f215ce4f3f5c2171ff6fbfa8`  
		Last Modified: Wed, 14 Dec 2016 03:24:34 GMT  
		Size: 21.1 KB (21069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2a2cf5c3400119fde327114be05ddde7c1bb24e966dc8db0245016817062e62`  
		Last Modified: Wed, 14 Dec 2016 03:24:34 GMT  
		Size: 314.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fb5a58f4c3f389bd73ab9fbf4c535236699d42b57bd5d3c46f648431b16d0b9`  
		Last Modified: Wed, 14 Dec 2016 03:24:31 GMT  
		Size: 319.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81a8585747f0e7b1ffd625d2fbc89409fd2fceb5574bf77431aa12649a4cf0f0`  
		Last Modified: Wed, 14 Dec 2016 03:24:54 GMT  
		Size: 71.8 MB (71782116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5aef0bc16fac4ad84f2c499b1037fe7372d25c282feda1001918a9d2c4ff7cd6`  
		Last Modified: Wed, 14 Dec 2016 03:24:31 GMT  
		Size: 2.6 KB (2643 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:678a8fa68d42f15abbc36ccd212825917d8ddb93e0409b88b4495f57b3308f13`  
		Last Modified: Wed, 14 Dec 2016 03:24:31 GMT  
		Size: 2.1 KB (2126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7daf36a2ab7ef599cd0b01b72787d2c59844469b9b1b6297d90dcbbfb4de47e`  
		Last Modified: Wed, 14 Dec 2016 03:24:31 GMT  
		Size: 117.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:latest`

```console
$ docker pull mariadb@sha256:3c02d8a116b9b11cb344c74f248765ac61feaf6f25c6e8bbc993d8124cad4ab0
```

-	Platforms:
	-	linux; amd64

### `mariadb:latest` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **130.9 MB (130855842 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0c73f0dac69b711b1b3234dc5018678d4aa1bfa567cf8d982555ac56c16c2e16`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 13 Dec 2016 22:10:59 GMT
ADD file:1d214d2782eaccc743b8d683ccecf2f87f12a0ecdfbcd6fdf4943ce616f23870 in / 
# Tue, 13 Dec 2016 22:10:59 GMT
CMD ["/bin/bash"]
# Wed, 14 Dec 2016 01:00:10 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 14 Dec 2016 01:00:11 GMT
ENV GOSU_VERSION=1.7
# Wed, 14 Dec 2016 01:00:29 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 14 Dec 2016 01:00:30 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 14 Dec 2016 01:00:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Dec 2016 01:00:44 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	&& apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	&& apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Wed, 14 Dec 2016 01:00:45 GMT
RUN echo "deb https://repo.percona.com/apt jessie main" > /etc/apt/sources.list.d/percona.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona
# Wed, 14 Dec 2016 01:00:45 GMT
ENV MARIADB_MAJOR=10.1
# Wed, 14 Dec 2016 01:00:45 GMT
ENV MARIADB_VERSION=10.1.19+maria-1~jessie
# Wed, 14 Dec 2016 01:00:46 GMT
RUN echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/debian jessie main" > /etc/apt/sources.list.d/mariadb.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Wed, 14 Dec 2016 01:01:24 GMT
RUN { 		echo mariadb-server-$MARIADB_MAJOR mysql-server/root_password password 'unused'; 		echo mariadb-server-$MARIADB_MAJOR mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		mariadb-server=$MARIADB_VERSION 		percona-xtrabackup 		socat 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Wed, 14 Dec 2016 01:01:25 GMT
RUN sed -Ei 's/^(bind-address|log)/#&/' /etc/mysql/my.cnf 	&& echo 'skip-host-cache\nskip-name-resolve' | awk '{ print } $1 == "[mysqld]" && c == 0 { c = 1; system("cat") }' /etc/mysql/my.cnf > /tmp/my.cnf 	&& mv /tmp/my.cnf /etc/mysql/my.cnf
# Wed, 14 Dec 2016 01:01:25 GMT
VOLUME [/var/lib/mysql]
# Wed, 14 Dec 2016 02:38:17 GMT
COPY file:4bddc4758e22941cff70200b3c2b9944da22d0dd3b359657e1d240679abc379b in /usr/local/bin/ 
# Wed, 14 Dec 2016 02:38:18 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 14 Dec 2016 02:38:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 14 Dec 2016 02:38:19 GMT
EXPOSE 3306/tcp
# Wed, 14 Dec 2016 02:38:19 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:75a822cd7888e394c49828b951061402d31745f596b1f502758570f2d0ee79e2`  
		Last Modified: Tue, 13 Dec 2016 22:16:41 GMT  
		Size: 51.4 MB (51363125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8d5846e536af54d4f4773fb5173c759fb8b3673a34710a7e1fe15b4120dc8d2`  
		Last Modified: Wed, 14 Dec 2016 03:24:37 GMT  
		Size: 2.0 KB (2043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b75e9152a1702d9b527b4e753786743d20ceea693424429f5da60410d7b02ddf`  
		Last Modified: Wed, 14 Dec 2016 03:24:36 GMT  
		Size: 1.2 MB (1216944 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:832e6b0304969b9baa6a38a8e32da0aaf7d7cbf9476c31d006f335264edc6147`  
		Last Modified: Wed, 14 Dec 2016 01:03:50 GMT  
		Size: 112.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:034e06b5514d05312e5999a470975db1c81521f26b893b3a00fa7783f53e277a`  
		Last Modified: Wed, 14 Dec 2016 03:24:39 GMT  
		Size: 6.5 MB (6464914 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:374292b6cca5b31b5063e448696de7540907ef88f215ce4f3f5c2171ff6fbfa8`  
		Last Modified: Wed, 14 Dec 2016 03:24:34 GMT  
		Size: 21.1 KB (21069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2a2cf5c3400119fde327114be05ddde7c1bb24e966dc8db0245016817062e62`  
		Last Modified: Wed, 14 Dec 2016 03:24:34 GMT  
		Size: 314.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fb5a58f4c3f389bd73ab9fbf4c535236699d42b57bd5d3c46f648431b16d0b9`  
		Last Modified: Wed, 14 Dec 2016 03:24:31 GMT  
		Size: 319.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81a8585747f0e7b1ffd625d2fbc89409fd2fceb5574bf77431aa12649a4cf0f0`  
		Last Modified: Wed, 14 Dec 2016 03:24:54 GMT  
		Size: 71.8 MB (71782116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5aef0bc16fac4ad84f2c499b1037fe7372d25c282feda1001918a9d2c4ff7cd6`  
		Last Modified: Wed, 14 Dec 2016 03:24:31 GMT  
		Size: 2.6 KB (2643 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:678a8fa68d42f15abbc36ccd212825917d8ddb93e0409b88b4495f57b3308f13`  
		Last Modified: Wed, 14 Dec 2016 03:24:31 GMT  
		Size: 2.1 KB (2126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7daf36a2ab7ef599cd0b01b72787d2c59844469b9b1b6297d90dcbbfb4de47e`  
		Last Modified: Wed, 14 Dec 2016 03:24:31 GMT  
		Size: 117.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:10.0.28`

```console
$ docker pull mariadb@sha256:bd91a1fb67831c8ac94958c68bde1a0ddeae2db9fba9864fa0cd2c75aad58f3f
```

-	Platforms:
	-	linux; amd64

### `mariadb:10.0.28` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **117.4 MB (117401917 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3d7e62827a3a8edc35aa8ad6c7594f01c8e63a7b1600ccaa9df1d841a41d1dfd`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 13 Dec 2016 22:10:59 GMT
ADD file:1d214d2782eaccc743b8d683ccecf2f87f12a0ecdfbcd6fdf4943ce616f23870 in / 
# Tue, 13 Dec 2016 22:10:59 GMT
CMD ["/bin/bash"]
# Wed, 14 Dec 2016 01:00:10 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 14 Dec 2016 01:00:11 GMT
ENV GOSU_VERSION=1.7
# Wed, 14 Dec 2016 01:00:29 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 14 Dec 2016 01:00:30 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 14 Dec 2016 01:00:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Dec 2016 01:00:44 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	&& apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	&& apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Wed, 14 Dec 2016 01:00:45 GMT
RUN echo "deb https://repo.percona.com/apt jessie main" > /etc/apt/sources.list.d/percona.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona
# Wed, 14 Dec 2016 01:01:28 GMT
ENV MARIADB_MAJOR=10.0
# Wed, 14 Dec 2016 01:01:28 GMT
ENV MARIADB_VERSION=10.0.28+maria-1~jessie
# Wed, 14 Dec 2016 01:01:29 GMT
RUN echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/debian jessie main" > /etc/apt/sources.list.d/mariadb.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Wed, 14 Dec 2016 01:02:09 GMT
RUN { 		echo mariadb-server-$MARIADB_MAJOR mysql-server/root_password password 'unused'; 		echo mariadb-server-$MARIADB_MAJOR mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		mariadb-server=$MARIADB_VERSION 		percona-xtrabackup 		socat 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Wed, 14 Dec 2016 01:02:10 GMT
RUN sed -Ei 's/^(bind-address|log)/#&/' /etc/mysql/my.cnf 	&& echo 'skip-host-cache\nskip-name-resolve' | awk '{ print } $1 == "[mysqld]" && c == 0 { c = 1; system("cat") }' /etc/mysql/my.cnf > /tmp/my.cnf 	&& mv /tmp/my.cnf /etc/mysql/my.cnf
# Wed, 14 Dec 2016 01:02:10 GMT
VOLUME [/var/lib/mysql]
# Wed, 14 Dec 2016 02:38:21 GMT
COPY file:4bddc4758e22941cff70200b3c2b9944da22d0dd3b359657e1d240679abc379b in /usr/local/bin/ 
# Wed, 14 Dec 2016 02:38:22 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 14 Dec 2016 02:38:31 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 14 Dec 2016 02:38:32 GMT
EXPOSE 3306/tcp
# Wed, 14 Dec 2016 02:38:32 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:75a822cd7888e394c49828b951061402d31745f596b1f502758570f2d0ee79e2`  
		Last Modified: Tue, 13 Dec 2016 22:16:41 GMT  
		Size: 51.4 MB (51363125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8d5846e536af54d4f4773fb5173c759fb8b3673a34710a7e1fe15b4120dc8d2`  
		Last Modified: Wed, 14 Dec 2016 03:24:37 GMT  
		Size: 2.0 KB (2043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b75e9152a1702d9b527b4e753786743d20ceea693424429f5da60410d7b02ddf`  
		Last Modified: Wed, 14 Dec 2016 03:24:36 GMT  
		Size: 1.2 MB (1216944 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:832e6b0304969b9baa6a38a8e32da0aaf7d7cbf9476c31d006f335264edc6147`  
		Last Modified: Wed, 14 Dec 2016 01:03:50 GMT  
		Size: 112.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:034e06b5514d05312e5999a470975db1c81521f26b893b3a00fa7783f53e277a`  
		Last Modified: Wed, 14 Dec 2016 03:24:39 GMT  
		Size: 6.5 MB (6464914 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:374292b6cca5b31b5063e448696de7540907ef88f215ce4f3f5c2171ff6fbfa8`  
		Last Modified: Wed, 14 Dec 2016 03:24:34 GMT  
		Size: 21.1 KB (21069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2a2cf5c3400119fde327114be05ddde7c1bb24e966dc8db0245016817062e62`  
		Last Modified: Wed, 14 Dec 2016 03:24:34 GMT  
		Size: 314.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61ae1ca3b7125d40ca743c61fb24f6ad94f592021392e859f0b407f4fe0da0fe`  
		Last Modified: Wed, 14 Dec 2016 03:26:00 GMT  
		Size: 319.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92e6634aadc3eddb7f5f0890d2ae3f92d4a02c6cb3949df908279c2cdd3e3b26`  
		Last Modified: Wed, 14 Dec 2016 03:26:19 GMT  
		Size: 58.3 MB (58328341 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b93bcdb8f172a6ec2d26a2e113e52cedaadb32a6614868de9e1f653fae9dbb16`  
		Last Modified: Wed, 14 Dec 2016 03:26:00 GMT  
		Size: 2.5 KB (2491 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3dc56848a26f8f5a2b415531807d251aafbc6f17455f7c8bee110b5213493726`  
		Last Modified: Wed, 14 Dec 2016 03:26:01 GMT  
		Size: 2.1 KB (2128 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1263e5651c46df91f7947185370e3bc987d7c581b2a317a550448310fad02c2`  
		Last Modified: Wed, 14 Dec 2016 03:26:00 GMT  
		Size: 117.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:10.0`

```console
$ docker pull mariadb@sha256:bd91a1fb67831c8ac94958c68bde1a0ddeae2db9fba9864fa0cd2c75aad58f3f
```

-	Platforms:
	-	linux; amd64

### `mariadb:10.0` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **117.4 MB (117401917 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3d7e62827a3a8edc35aa8ad6c7594f01c8e63a7b1600ccaa9df1d841a41d1dfd`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 13 Dec 2016 22:10:59 GMT
ADD file:1d214d2782eaccc743b8d683ccecf2f87f12a0ecdfbcd6fdf4943ce616f23870 in / 
# Tue, 13 Dec 2016 22:10:59 GMT
CMD ["/bin/bash"]
# Wed, 14 Dec 2016 01:00:10 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 14 Dec 2016 01:00:11 GMT
ENV GOSU_VERSION=1.7
# Wed, 14 Dec 2016 01:00:29 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 14 Dec 2016 01:00:30 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 14 Dec 2016 01:00:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Dec 2016 01:00:44 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	&& apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	&& apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Wed, 14 Dec 2016 01:00:45 GMT
RUN echo "deb https://repo.percona.com/apt jessie main" > /etc/apt/sources.list.d/percona.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona
# Wed, 14 Dec 2016 01:01:28 GMT
ENV MARIADB_MAJOR=10.0
# Wed, 14 Dec 2016 01:01:28 GMT
ENV MARIADB_VERSION=10.0.28+maria-1~jessie
# Wed, 14 Dec 2016 01:01:29 GMT
RUN echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/debian jessie main" > /etc/apt/sources.list.d/mariadb.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Wed, 14 Dec 2016 01:02:09 GMT
RUN { 		echo mariadb-server-$MARIADB_MAJOR mysql-server/root_password password 'unused'; 		echo mariadb-server-$MARIADB_MAJOR mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		mariadb-server=$MARIADB_VERSION 		percona-xtrabackup 		socat 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Wed, 14 Dec 2016 01:02:10 GMT
RUN sed -Ei 's/^(bind-address|log)/#&/' /etc/mysql/my.cnf 	&& echo 'skip-host-cache\nskip-name-resolve' | awk '{ print } $1 == "[mysqld]" && c == 0 { c = 1; system("cat") }' /etc/mysql/my.cnf > /tmp/my.cnf 	&& mv /tmp/my.cnf /etc/mysql/my.cnf
# Wed, 14 Dec 2016 01:02:10 GMT
VOLUME [/var/lib/mysql]
# Wed, 14 Dec 2016 02:38:21 GMT
COPY file:4bddc4758e22941cff70200b3c2b9944da22d0dd3b359657e1d240679abc379b in /usr/local/bin/ 
# Wed, 14 Dec 2016 02:38:22 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 14 Dec 2016 02:38:31 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 14 Dec 2016 02:38:32 GMT
EXPOSE 3306/tcp
# Wed, 14 Dec 2016 02:38:32 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:75a822cd7888e394c49828b951061402d31745f596b1f502758570f2d0ee79e2`  
		Last Modified: Tue, 13 Dec 2016 22:16:41 GMT  
		Size: 51.4 MB (51363125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8d5846e536af54d4f4773fb5173c759fb8b3673a34710a7e1fe15b4120dc8d2`  
		Last Modified: Wed, 14 Dec 2016 03:24:37 GMT  
		Size: 2.0 KB (2043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b75e9152a1702d9b527b4e753786743d20ceea693424429f5da60410d7b02ddf`  
		Last Modified: Wed, 14 Dec 2016 03:24:36 GMT  
		Size: 1.2 MB (1216944 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:832e6b0304969b9baa6a38a8e32da0aaf7d7cbf9476c31d006f335264edc6147`  
		Last Modified: Wed, 14 Dec 2016 01:03:50 GMT  
		Size: 112.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:034e06b5514d05312e5999a470975db1c81521f26b893b3a00fa7783f53e277a`  
		Last Modified: Wed, 14 Dec 2016 03:24:39 GMT  
		Size: 6.5 MB (6464914 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:374292b6cca5b31b5063e448696de7540907ef88f215ce4f3f5c2171ff6fbfa8`  
		Last Modified: Wed, 14 Dec 2016 03:24:34 GMT  
		Size: 21.1 KB (21069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2a2cf5c3400119fde327114be05ddde7c1bb24e966dc8db0245016817062e62`  
		Last Modified: Wed, 14 Dec 2016 03:24:34 GMT  
		Size: 314.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61ae1ca3b7125d40ca743c61fb24f6ad94f592021392e859f0b407f4fe0da0fe`  
		Last Modified: Wed, 14 Dec 2016 03:26:00 GMT  
		Size: 319.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92e6634aadc3eddb7f5f0890d2ae3f92d4a02c6cb3949df908279c2cdd3e3b26`  
		Last Modified: Wed, 14 Dec 2016 03:26:19 GMT  
		Size: 58.3 MB (58328341 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b93bcdb8f172a6ec2d26a2e113e52cedaadb32a6614868de9e1f653fae9dbb16`  
		Last Modified: Wed, 14 Dec 2016 03:26:00 GMT  
		Size: 2.5 KB (2491 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3dc56848a26f8f5a2b415531807d251aafbc6f17455f7c8bee110b5213493726`  
		Last Modified: Wed, 14 Dec 2016 03:26:01 GMT  
		Size: 2.1 KB (2128 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1263e5651c46df91f7947185370e3bc987d7c581b2a317a550448310fad02c2`  
		Last Modified: Wed, 14 Dec 2016 03:26:00 GMT  
		Size: 117.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:5.5.53`

```console
$ docker pull mariadb@sha256:20c8de40a7a051e365fabb90ce49d54b4927f4d5fd2de9ea44245c157c83898e
```

-	Platforms:
	-	linux; amd64

### `mariadb:5.5.53` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **96.0 MB (95964437 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2e7d9bbb0ee05d9436e7e12e468f378f353679c2104a73036cb7a2de96de48cf`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 13 Dec 2016 22:15:37 GMT
ADD file:199da03e20ee14ea6024525caeb8435b86af4b2788f5a8c8f6fb9bb0209f3fff in / 
# Tue, 13 Dec 2016 22:15:46 GMT
CMD ["/bin/bash"]
# Wed, 14 Dec 2016 01:02:14 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 14 Dec 2016 01:02:14 GMT
ENV GOSU_VERSION=1.7
# Wed, 14 Dec 2016 01:02:30 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 14 Dec 2016 01:02:31 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 14 Dec 2016 01:02:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Dec 2016 01:02:46 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	&& apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	&& apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Wed, 14 Dec 2016 01:02:47 GMT
RUN echo "deb https://repo.percona.com/apt wheezy main" > /etc/apt/sources.list.d/percona.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona
# Wed, 14 Dec 2016 01:02:47 GMT
ENV MARIADB_MAJOR=5.5
# Wed, 14 Dec 2016 01:02:48 GMT
ENV MARIADB_VERSION=5.5.53+maria-1~wheezy
# Wed, 14 Dec 2016 01:02:49 GMT
RUN echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/debian wheezy main" > /etc/apt/sources.list.d/mariadb.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Wed, 14 Dec 2016 01:03:01 GMT
RUN { 		echo mariadb-server-$MARIADB_MAJOR mysql-server/root_password password 'unused'; 		echo mariadb-server-$MARIADB_MAJOR mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		mariadb-server=$MARIADB_VERSION 		percona-xtrabackup 		socat 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Wed, 14 Dec 2016 01:03:02 GMT
RUN sed -Ei 's/^(bind-address|log)/#&/' /etc/mysql/my.cnf 	&& echo 'skip-host-cache\nskip-name-resolve' | awk '{ print } $1 == "[mysqld]" && c == 0 { c = 1; system("cat") }' /etc/mysql/my.cnf > /tmp/my.cnf 	&& mv /tmp/my.cnf /etc/mysql/my.cnf
# Wed, 14 Dec 2016 01:03:02 GMT
VOLUME [/var/lib/mysql]
# Wed, 14 Dec 2016 02:38:33 GMT
COPY file:4bddc4758e22941cff70200b3c2b9944da22d0dd3b359657e1d240679abc379b in /usr/local/bin/ 
# Wed, 14 Dec 2016 02:38:34 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 14 Dec 2016 02:38:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 14 Dec 2016 02:38:35 GMT
EXPOSE 3306/tcp
# Wed, 14 Dec 2016 02:38:36 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:b65f3290184628b3ea88b85793900695faa9f3878990fec458a4024dc7211bc5`  
		Last Modified: Tue, 13 Dec 2016 22:26:49 GMT  
		Size: 37.3 MB (37284147 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46d2495a8ddee111f6bf02a05a8ef447c93db092dd74960e14e66a62af8e2b6a`  
		Last Modified: Wed, 14 Dec 2016 03:27:00 GMT  
		Size: 1.7 KB (1696 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20654624ded8cca4d6ae4fb5eaa84917454ff99335f319859df9f247e0b541a4`  
		Last Modified: Wed, 14 Dec 2016 03:27:00 GMT  
		Size: 1.2 MB (1244572 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:192f6d3a3ea3d82b842aac638a6699d9119a8114c96594909296c6d2f560713f`  
		Last Modified: Wed, 14 Dec 2016 03:26:59 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16a8262b5cdfd4c84ba22dca8751314f31ee774c5ca2f9d12c561662bce2fc1f`  
		Last Modified: Wed, 14 Dec 2016 03:27:00 GMT  
		Size: 5.9 MB (5883872 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5854bee042ff9978120ea8044c9f0832708adabc6aa91df77e19080d572b7094`  
		Last Modified: Wed, 14 Dec 2016 03:26:57 GMT  
		Size: 67.4 KB (67433 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f99ed9bc0a99016be782064c7e095d03e4e8e6c46fc3d9ac8a347ba35a47366d`  
		Last Modified: Wed, 14 Dec 2016 03:26:57 GMT  
		Size: 316.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a811d994978063b057c8a5ecd388ab34af5324d0c6c151966a452919fdcc5540`  
		Last Modified: Wed, 14 Dec 2016 03:26:55 GMT  
		Size: 320.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55ac95bdfed213862a3670f04807f2fe3d4e2c65a457638364bd0336ac7ef7ce`  
		Last Modified: Wed, 14 Dec 2016 03:27:12 GMT  
		Size: 51.5 MB (51477233 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89e11781739ba30ce3cf2456f90dbbe0488b8b0b9d5691fcf77db3843d445987`  
		Last Modified: Wed, 14 Dec 2016 03:26:55 GMT  
		Size: 2.5 KB (2491 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66f19b49d0197f5dbc563002439949094bc5701ab325933194a9445641976175`  
		Last Modified: Wed, 14 Dec 2016 03:26:54 GMT  
		Size: 2.1 KB (2126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96f15fe4c9df42dafbcea24023025a6723479dad51afc387f972c37e93b1d3d0`  
		Last Modified: Wed, 14 Dec 2016 03:26:57 GMT  
		Size: 117.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:5.5`

```console
$ docker pull mariadb@sha256:20c8de40a7a051e365fabb90ce49d54b4927f4d5fd2de9ea44245c157c83898e
```

-	Platforms:
	-	linux; amd64

### `mariadb:5.5` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **96.0 MB (95964437 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2e7d9bbb0ee05d9436e7e12e468f378f353679c2104a73036cb7a2de96de48cf`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 13 Dec 2016 22:15:37 GMT
ADD file:199da03e20ee14ea6024525caeb8435b86af4b2788f5a8c8f6fb9bb0209f3fff in / 
# Tue, 13 Dec 2016 22:15:46 GMT
CMD ["/bin/bash"]
# Wed, 14 Dec 2016 01:02:14 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 14 Dec 2016 01:02:14 GMT
ENV GOSU_VERSION=1.7
# Wed, 14 Dec 2016 01:02:30 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 14 Dec 2016 01:02:31 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 14 Dec 2016 01:02:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Dec 2016 01:02:46 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	&& apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	&& apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Wed, 14 Dec 2016 01:02:47 GMT
RUN echo "deb https://repo.percona.com/apt wheezy main" > /etc/apt/sources.list.d/percona.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona
# Wed, 14 Dec 2016 01:02:47 GMT
ENV MARIADB_MAJOR=5.5
# Wed, 14 Dec 2016 01:02:48 GMT
ENV MARIADB_VERSION=5.5.53+maria-1~wheezy
# Wed, 14 Dec 2016 01:02:49 GMT
RUN echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/debian wheezy main" > /etc/apt/sources.list.d/mariadb.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Wed, 14 Dec 2016 01:03:01 GMT
RUN { 		echo mariadb-server-$MARIADB_MAJOR mysql-server/root_password password 'unused'; 		echo mariadb-server-$MARIADB_MAJOR mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		mariadb-server=$MARIADB_VERSION 		percona-xtrabackup 		socat 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Wed, 14 Dec 2016 01:03:02 GMT
RUN sed -Ei 's/^(bind-address|log)/#&/' /etc/mysql/my.cnf 	&& echo 'skip-host-cache\nskip-name-resolve' | awk '{ print } $1 == "[mysqld]" && c == 0 { c = 1; system("cat") }' /etc/mysql/my.cnf > /tmp/my.cnf 	&& mv /tmp/my.cnf /etc/mysql/my.cnf
# Wed, 14 Dec 2016 01:03:02 GMT
VOLUME [/var/lib/mysql]
# Wed, 14 Dec 2016 02:38:33 GMT
COPY file:4bddc4758e22941cff70200b3c2b9944da22d0dd3b359657e1d240679abc379b in /usr/local/bin/ 
# Wed, 14 Dec 2016 02:38:34 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 14 Dec 2016 02:38:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 14 Dec 2016 02:38:35 GMT
EXPOSE 3306/tcp
# Wed, 14 Dec 2016 02:38:36 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:b65f3290184628b3ea88b85793900695faa9f3878990fec458a4024dc7211bc5`  
		Last Modified: Tue, 13 Dec 2016 22:26:49 GMT  
		Size: 37.3 MB (37284147 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46d2495a8ddee111f6bf02a05a8ef447c93db092dd74960e14e66a62af8e2b6a`  
		Last Modified: Wed, 14 Dec 2016 03:27:00 GMT  
		Size: 1.7 KB (1696 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20654624ded8cca4d6ae4fb5eaa84917454ff99335f319859df9f247e0b541a4`  
		Last Modified: Wed, 14 Dec 2016 03:27:00 GMT  
		Size: 1.2 MB (1244572 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:192f6d3a3ea3d82b842aac638a6699d9119a8114c96594909296c6d2f560713f`  
		Last Modified: Wed, 14 Dec 2016 03:26:59 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16a8262b5cdfd4c84ba22dca8751314f31ee774c5ca2f9d12c561662bce2fc1f`  
		Last Modified: Wed, 14 Dec 2016 03:27:00 GMT  
		Size: 5.9 MB (5883872 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5854bee042ff9978120ea8044c9f0832708adabc6aa91df77e19080d572b7094`  
		Last Modified: Wed, 14 Dec 2016 03:26:57 GMT  
		Size: 67.4 KB (67433 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f99ed9bc0a99016be782064c7e095d03e4e8e6c46fc3d9ac8a347ba35a47366d`  
		Last Modified: Wed, 14 Dec 2016 03:26:57 GMT  
		Size: 316.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a811d994978063b057c8a5ecd388ab34af5324d0c6c151966a452919fdcc5540`  
		Last Modified: Wed, 14 Dec 2016 03:26:55 GMT  
		Size: 320.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55ac95bdfed213862a3670f04807f2fe3d4e2c65a457638364bd0336ac7ef7ce`  
		Last Modified: Wed, 14 Dec 2016 03:27:12 GMT  
		Size: 51.5 MB (51477233 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89e11781739ba30ce3cf2456f90dbbe0488b8b0b9d5691fcf77db3843d445987`  
		Last Modified: Wed, 14 Dec 2016 03:26:55 GMT  
		Size: 2.5 KB (2491 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66f19b49d0197f5dbc563002439949094bc5701ab325933194a9445641976175`  
		Last Modified: Wed, 14 Dec 2016 03:26:54 GMT  
		Size: 2.1 KB (2126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96f15fe4c9df42dafbcea24023025a6723479dad51afc387f972c37e93b1d3d0`  
		Last Modified: Wed, 14 Dec 2016 03:26:57 GMT  
		Size: 117.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:5`

```console
$ docker pull mariadb@sha256:20c8de40a7a051e365fabb90ce49d54b4927f4d5fd2de9ea44245c157c83898e
```

-	Platforms:
	-	linux; amd64

### `mariadb:5` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **96.0 MB (95964437 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2e7d9bbb0ee05d9436e7e12e468f378f353679c2104a73036cb7a2de96de48cf`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 13 Dec 2016 22:15:37 GMT
ADD file:199da03e20ee14ea6024525caeb8435b86af4b2788f5a8c8f6fb9bb0209f3fff in / 
# Tue, 13 Dec 2016 22:15:46 GMT
CMD ["/bin/bash"]
# Wed, 14 Dec 2016 01:02:14 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 14 Dec 2016 01:02:14 GMT
ENV GOSU_VERSION=1.7
# Wed, 14 Dec 2016 01:02:30 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 14 Dec 2016 01:02:31 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 14 Dec 2016 01:02:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Dec 2016 01:02:46 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	&& apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	&& apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Wed, 14 Dec 2016 01:02:47 GMT
RUN echo "deb https://repo.percona.com/apt wheezy main" > /etc/apt/sources.list.d/percona.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona
# Wed, 14 Dec 2016 01:02:47 GMT
ENV MARIADB_MAJOR=5.5
# Wed, 14 Dec 2016 01:02:48 GMT
ENV MARIADB_VERSION=5.5.53+maria-1~wheezy
# Wed, 14 Dec 2016 01:02:49 GMT
RUN echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/debian wheezy main" > /etc/apt/sources.list.d/mariadb.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Wed, 14 Dec 2016 01:03:01 GMT
RUN { 		echo mariadb-server-$MARIADB_MAJOR mysql-server/root_password password 'unused'; 		echo mariadb-server-$MARIADB_MAJOR mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		mariadb-server=$MARIADB_VERSION 		percona-xtrabackup 		socat 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Wed, 14 Dec 2016 01:03:02 GMT
RUN sed -Ei 's/^(bind-address|log)/#&/' /etc/mysql/my.cnf 	&& echo 'skip-host-cache\nskip-name-resolve' | awk '{ print } $1 == "[mysqld]" && c == 0 { c = 1; system("cat") }' /etc/mysql/my.cnf > /tmp/my.cnf 	&& mv /tmp/my.cnf /etc/mysql/my.cnf
# Wed, 14 Dec 2016 01:03:02 GMT
VOLUME [/var/lib/mysql]
# Wed, 14 Dec 2016 02:38:33 GMT
COPY file:4bddc4758e22941cff70200b3c2b9944da22d0dd3b359657e1d240679abc379b in /usr/local/bin/ 
# Wed, 14 Dec 2016 02:38:34 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 14 Dec 2016 02:38:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 14 Dec 2016 02:38:35 GMT
EXPOSE 3306/tcp
# Wed, 14 Dec 2016 02:38:36 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:b65f3290184628b3ea88b85793900695faa9f3878990fec458a4024dc7211bc5`  
		Last Modified: Tue, 13 Dec 2016 22:26:49 GMT  
		Size: 37.3 MB (37284147 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46d2495a8ddee111f6bf02a05a8ef447c93db092dd74960e14e66a62af8e2b6a`  
		Last Modified: Wed, 14 Dec 2016 03:27:00 GMT  
		Size: 1.7 KB (1696 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20654624ded8cca4d6ae4fb5eaa84917454ff99335f319859df9f247e0b541a4`  
		Last Modified: Wed, 14 Dec 2016 03:27:00 GMT  
		Size: 1.2 MB (1244572 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:192f6d3a3ea3d82b842aac638a6699d9119a8114c96594909296c6d2f560713f`  
		Last Modified: Wed, 14 Dec 2016 03:26:59 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16a8262b5cdfd4c84ba22dca8751314f31ee774c5ca2f9d12c561662bce2fc1f`  
		Last Modified: Wed, 14 Dec 2016 03:27:00 GMT  
		Size: 5.9 MB (5883872 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5854bee042ff9978120ea8044c9f0832708adabc6aa91df77e19080d572b7094`  
		Last Modified: Wed, 14 Dec 2016 03:26:57 GMT  
		Size: 67.4 KB (67433 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f99ed9bc0a99016be782064c7e095d03e4e8e6c46fc3d9ac8a347ba35a47366d`  
		Last Modified: Wed, 14 Dec 2016 03:26:57 GMT  
		Size: 316.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a811d994978063b057c8a5ecd388ab34af5324d0c6c151966a452919fdcc5540`  
		Last Modified: Wed, 14 Dec 2016 03:26:55 GMT  
		Size: 320.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55ac95bdfed213862a3670f04807f2fe3d4e2c65a457638364bd0336ac7ef7ce`  
		Last Modified: Wed, 14 Dec 2016 03:27:12 GMT  
		Size: 51.5 MB (51477233 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89e11781739ba30ce3cf2456f90dbbe0488b8b0b9d5691fcf77db3843d445987`  
		Last Modified: Wed, 14 Dec 2016 03:26:55 GMT  
		Size: 2.5 KB (2491 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66f19b49d0197f5dbc563002439949094bc5701ab325933194a9445641976175`  
		Last Modified: Wed, 14 Dec 2016 03:26:54 GMT  
		Size: 2.1 KB (2126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96f15fe4c9df42dafbcea24023025a6723479dad51afc387f972c37e93b1d3d0`  
		Last Modified: Wed, 14 Dec 2016 03:26:57 GMT  
		Size: 117.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
