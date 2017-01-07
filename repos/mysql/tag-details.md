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
$ docker pull mysql@sha256:6cd5e048b148b6dbab7e60608c63de4a04878ca38c70c871b272e9e10b2d6f95
```

-	Platforms:
	-	linux; amd64

### `mysql:8.0.0` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **129.7 MB (129663942 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4c0c87894512115cbb7826739aa75495a3e7839b792507f8daea7f74964a00bc`
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
# Wed, 14 Dec 2016 02:47:50 GMT
RUN apt-get update && apt-get install -y perl pwgen --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Wed, 14 Dec 2016 02:47:52 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys A4A9406876FCBD3C456770C88C718D3B5072E1F5
# Wed, 14 Dec 2016 02:50:40 GMT
ENV MYSQL_MAJOR=8.0
# Wed, 14 Dec 2016 02:50:40 GMT
ENV MYSQL_VERSION=8.0.0-dmr-1debian8
# Wed, 14 Dec 2016 02:50:42 GMT
RUN echo "deb http://repo.mysql.com/apt/debian/ jessie mysql-${MYSQL_MAJOR}" > /etc/apt/sources.list.d/mysql.list
# Wed, 14 Dec 2016 02:51:15 GMT
RUN { 		echo mysql-community-server mysql-community-server/data-dir select ''; 		echo mysql-community-server mysql-community-server/root-pass password ''; 		echo mysql-community-server mysql-community-server/re-root-pass password ''; 		echo mysql-community-server mysql-community-server/remove-test-db select false; 	} | debconf-set-selections 	&& apt-get update && apt-get install -y mysql-server="${MYSQL_VERSION}" && rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Wed, 14 Dec 2016 02:51:16 GMT
RUN sed -Ei 's/^(bind-address|log)/#&/' /etc/mysql/mysql.conf.d/mysqld.cnf 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 14 Dec 2016 02:51:16 GMT
VOLUME [/var/lib/mysql]
# Fri, 06 Jan 2017 23:32:30 GMT
COPY file:915aa28b0ee915243ed916898ba2c6103acca9fe847f9365ced97a8b7ee5e4c9 in /usr/local/bin/ 
# Fri, 06 Jan 2017 23:32:31 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 06 Jan 2017 23:32:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 06 Jan 2017 23:32:32 GMT
EXPOSE 3306/tcp
# Fri, 06 Jan 2017 23:32:33 GMT
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
	-	`sha256:fe4a6c835905c74aa7540cb63201fb2b87287ea2e7fdba0513db04dddfed1e95`  
		Last Modified: Wed, 14 Dec 2016 03:28:16 GMT  
		Size: 8.2 MB (8248277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3f247e29ab116e18d92039c22d47021d968a34eb21c25aa3d3beb9d57182038`  
		Last Modified: Wed, 14 Dec 2016 03:28:11 GMT  
		Size: 19.0 KB (19020 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f17db635ae79c261a9c96c95f08113b4945dc0e908734a49ff47c83346fd5db`  
		Last Modified: Wed, 14 Dec 2016 03:28:09 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d0663c149b918114b8c71cf8e18c01e7f43be2a443c3f4c73f7a0dd48213038`  
		Last Modified: Wed, 14 Dec 2016 03:28:32 GMT  
		Size: 68.8 MB (68810783 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:323a2b791e20e91cdb7cadf742af9d3c51ca39b6be4a6d8bdafc880dc840b8e1`  
		Last Modified: Wed, 14 Dec 2016 03:28:08 GMT  
		Size: 883.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3170c12c024cd87388e563a2d3973e6fae88fc97862ac830d42a2b0ad1b1d2e8`  
		Last Modified: Fri, 06 Jan 2017 23:33:01 GMT  
		Size: 2.4 KB (2421 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40c3ad9ff41314f309f652965de2ae310acf8d7ac6c49c146278623cabe9cc68`  
		Last Modified: Fri, 06 Jan 2017 23:33:00 GMT  
		Size: 118.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:8.0`

```console
$ docker pull mysql@sha256:6cd5e048b148b6dbab7e60608c63de4a04878ca38c70c871b272e9e10b2d6f95
```

-	Platforms:
	-	linux; amd64

### `mysql:8.0` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **129.7 MB (129663942 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4c0c87894512115cbb7826739aa75495a3e7839b792507f8daea7f74964a00bc`
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
# Wed, 14 Dec 2016 02:47:50 GMT
RUN apt-get update && apt-get install -y perl pwgen --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Wed, 14 Dec 2016 02:47:52 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys A4A9406876FCBD3C456770C88C718D3B5072E1F5
# Wed, 14 Dec 2016 02:50:40 GMT
ENV MYSQL_MAJOR=8.0
# Wed, 14 Dec 2016 02:50:40 GMT
ENV MYSQL_VERSION=8.0.0-dmr-1debian8
# Wed, 14 Dec 2016 02:50:42 GMT
RUN echo "deb http://repo.mysql.com/apt/debian/ jessie mysql-${MYSQL_MAJOR}" > /etc/apt/sources.list.d/mysql.list
# Wed, 14 Dec 2016 02:51:15 GMT
RUN { 		echo mysql-community-server mysql-community-server/data-dir select ''; 		echo mysql-community-server mysql-community-server/root-pass password ''; 		echo mysql-community-server mysql-community-server/re-root-pass password ''; 		echo mysql-community-server mysql-community-server/remove-test-db select false; 	} | debconf-set-selections 	&& apt-get update && apt-get install -y mysql-server="${MYSQL_VERSION}" && rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Wed, 14 Dec 2016 02:51:16 GMT
RUN sed -Ei 's/^(bind-address|log)/#&/' /etc/mysql/mysql.conf.d/mysqld.cnf 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 14 Dec 2016 02:51:16 GMT
VOLUME [/var/lib/mysql]
# Fri, 06 Jan 2017 23:32:30 GMT
COPY file:915aa28b0ee915243ed916898ba2c6103acca9fe847f9365ced97a8b7ee5e4c9 in /usr/local/bin/ 
# Fri, 06 Jan 2017 23:32:31 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 06 Jan 2017 23:32:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 06 Jan 2017 23:32:32 GMT
EXPOSE 3306/tcp
# Fri, 06 Jan 2017 23:32:33 GMT
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
	-	`sha256:fe4a6c835905c74aa7540cb63201fb2b87287ea2e7fdba0513db04dddfed1e95`  
		Last Modified: Wed, 14 Dec 2016 03:28:16 GMT  
		Size: 8.2 MB (8248277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3f247e29ab116e18d92039c22d47021d968a34eb21c25aa3d3beb9d57182038`  
		Last Modified: Wed, 14 Dec 2016 03:28:11 GMT  
		Size: 19.0 KB (19020 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f17db635ae79c261a9c96c95f08113b4945dc0e908734a49ff47c83346fd5db`  
		Last Modified: Wed, 14 Dec 2016 03:28:09 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d0663c149b918114b8c71cf8e18c01e7f43be2a443c3f4c73f7a0dd48213038`  
		Last Modified: Wed, 14 Dec 2016 03:28:32 GMT  
		Size: 68.8 MB (68810783 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:323a2b791e20e91cdb7cadf742af9d3c51ca39b6be4a6d8bdafc880dc840b8e1`  
		Last Modified: Wed, 14 Dec 2016 03:28:08 GMT  
		Size: 883.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3170c12c024cd87388e563a2d3973e6fae88fc97862ac830d42a2b0ad1b1d2e8`  
		Last Modified: Fri, 06 Jan 2017 23:33:01 GMT  
		Size: 2.4 KB (2421 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40c3ad9ff41314f309f652965de2ae310acf8d7ac6c49c146278623cabe9cc68`  
		Last Modified: Fri, 06 Jan 2017 23:33:00 GMT  
		Size: 118.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:8`

```console
$ docker pull mysql@sha256:6cd5e048b148b6dbab7e60608c63de4a04878ca38c70c871b272e9e10b2d6f95
```

-	Platforms:
	-	linux; amd64

### `mysql:8` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **129.7 MB (129663942 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4c0c87894512115cbb7826739aa75495a3e7839b792507f8daea7f74964a00bc`
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
# Wed, 14 Dec 2016 02:47:50 GMT
RUN apt-get update && apt-get install -y perl pwgen --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Wed, 14 Dec 2016 02:47:52 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys A4A9406876FCBD3C456770C88C718D3B5072E1F5
# Wed, 14 Dec 2016 02:50:40 GMT
ENV MYSQL_MAJOR=8.0
# Wed, 14 Dec 2016 02:50:40 GMT
ENV MYSQL_VERSION=8.0.0-dmr-1debian8
# Wed, 14 Dec 2016 02:50:42 GMT
RUN echo "deb http://repo.mysql.com/apt/debian/ jessie mysql-${MYSQL_MAJOR}" > /etc/apt/sources.list.d/mysql.list
# Wed, 14 Dec 2016 02:51:15 GMT
RUN { 		echo mysql-community-server mysql-community-server/data-dir select ''; 		echo mysql-community-server mysql-community-server/root-pass password ''; 		echo mysql-community-server mysql-community-server/re-root-pass password ''; 		echo mysql-community-server mysql-community-server/remove-test-db select false; 	} | debconf-set-selections 	&& apt-get update && apt-get install -y mysql-server="${MYSQL_VERSION}" && rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Wed, 14 Dec 2016 02:51:16 GMT
RUN sed -Ei 's/^(bind-address|log)/#&/' /etc/mysql/mysql.conf.d/mysqld.cnf 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 14 Dec 2016 02:51:16 GMT
VOLUME [/var/lib/mysql]
# Fri, 06 Jan 2017 23:32:30 GMT
COPY file:915aa28b0ee915243ed916898ba2c6103acca9fe847f9365ced97a8b7ee5e4c9 in /usr/local/bin/ 
# Fri, 06 Jan 2017 23:32:31 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 06 Jan 2017 23:32:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 06 Jan 2017 23:32:32 GMT
EXPOSE 3306/tcp
# Fri, 06 Jan 2017 23:32:33 GMT
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
	-	`sha256:fe4a6c835905c74aa7540cb63201fb2b87287ea2e7fdba0513db04dddfed1e95`  
		Last Modified: Wed, 14 Dec 2016 03:28:16 GMT  
		Size: 8.2 MB (8248277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3f247e29ab116e18d92039c22d47021d968a34eb21c25aa3d3beb9d57182038`  
		Last Modified: Wed, 14 Dec 2016 03:28:11 GMT  
		Size: 19.0 KB (19020 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f17db635ae79c261a9c96c95f08113b4945dc0e908734a49ff47c83346fd5db`  
		Last Modified: Wed, 14 Dec 2016 03:28:09 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d0663c149b918114b8c71cf8e18c01e7f43be2a443c3f4c73f7a0dd48213038`  
		Last Modified: Wed, 14 Dec 2016 03:28:32 GMT  
		Size: 68.8 MB (68810783 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:323a2b791e20e91cdb7cadf742af9d3c51ca39b6be4a6d8bdafc880dc840b8e1`  
		Last Modified: Wed, 14 Dec 2016 03:28:08 GMT  
		Size: 883.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3170c12c024cd87388e563a2d3973e6fae88fc97862ac830d42a2b0ad1b1d2e8`  
		Last Modified: Fri, 06 Jan 2017 23:33:01 GMT  
		Size: 2.4 KB (2421 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40c3ad9ff41314f309f652965de2ae310acf8d7ac6c49c146278623cabe9cc68`  
		Last Modified: Fri, 06 Jan 2017 23:33:00 GMT  
		Size: 118.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:5.7.17`

```console
$ docker pull mysql@sha256:9ef4478a3aa597f59b2266d5702f55f29acc468b5bf3518c3c90cbca4e243823
```

-	Platforms:
	-	linux; amd64

### `mysql:5.7.17` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **137.8 MB (137832242 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:78cdcf394b4eab49b6d64e3e97f303d452019cf2991f801865f26c062a398623`
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
# Wed, 14 Dec 2016 02:47:50 GMT
RUN apt-get update && apt-get install -y perl pwgen --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Wed, 14 Dec 2016 02:47:52 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys A4A9406876FCBD3C456770C88C718D3B5072E1F5
# Wed, 14 Dec 2016 02:47:53 GMT
ENV MYSQL_MAJOR=5.7
# Wed, 14 Dec 2016 02:47:53 GMT
ENV MYSQL_VERSION=5.7.17-1debian8
# Wed, 14 Dec 2016 02:47:54 GMT
RUN echo "deb http://repo.mysql.com/apt/debian/ jessie mysql-${MYSQL_MAJOR}" > /etc/apt/sources.list.d/mysql.list
# Wed, 14 Dec 2016 02:48:17 GMT
RUN { 		echo mysql-community-server mysql-community-server/data-dir select ''; 		echo mysql-community-server mysql-community-server/root-pass password ''; 		echo mysql-community-server mysql-community-server/re-root-pass password ''; 		echo mysql-community-server mysql-community-server/remove-test-db select false; 	} | debconf-set-selections 	&& apt-get update && apt-get install -y mysql-server="${MYSQL_VERSION}" && rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Wed, 14 Dec 2016 02:48:23 GMT
RUN sed -Ei 's/^(bind-address|log)/#&/' /etc/mysql/mysql.conf.d/mysqld.cnf 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 14 Dec 2016 02:48:24 GMT
VOLUME [/var/lib/mysql]
# Fri, 06 Jan 2017 23:32:34 GMT
COPY file:915aa28b0ee915243ed916898ba2c6103acca9fe847f9365ced97a8b7ee5e4c9 in /usr/local/bin/ 
# Fri, 06 Jan 2017 23:32:35 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 06 Jan 2017 23:32:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 06 Jan 2017 23:32:36 GMT
EXPOSE 3306/tcp
# Fri, 06 Jan 2017 23:32:37 GMT
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
	-	`sha256:fe4a6c835905c74aa7540cb63201fb2b87287ea2e7fdba0513db04dddfed1e95`  
		Last Modified: Wed, 14 Dec 2016 03:28:16 GMT  
		Size: 8.2 MB (8248277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3f247e29ab116e18d92039c22d47021d968a34eb21c25aa3d3beb9d57182038`  
		Last Modified: Wed, 14 Dec 2016 03:28:11 GMT  
		Size: 19.0 KB (19020 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21be3e56207166d0b71bdb3ad23e6db98386fe5311bfb2766059d8a0856f4f61`  
		Last Modified: Wed, 14 Dec 2016 03:29:25 GMT  
		Size: 217.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7399d6bf03330f82cb32f3dca0c4b298b5d89a1c90c2f2a2d56182222bc58de`  
		Last Modified: Wed, 14 Dec 2016 03:29:52 GMT  
		Size: 77.0 MB (76979027 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccdaeae6c735d31cbab37e1f9aa3a25ca1c6123d7332d5262c391f7c14f305d7`  
		Last Modified: Wed, 14 Dec 2016 03:29:25 GMT  
		Size: 936.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:713c7d65b0d3bea9ab0b27daffc14d1b4a2c34a4b0b3e1bf38f0309284de118a`  
		Last Modified: Fri, 06 Jan 2017 23:34:09 GMT  
		Size: 2.4 KB (2421 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86c18539deb2e6154840d2a292ac19de5018ef6685c24af3a86149fabf209082`  
		Last Modified: Fri, 06 Jan 2017 23:34:09 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:5.7`

```console
$ docker pull mysql@sha256:9ef4478a3aa597f59b2266d5702f55f29acc468b5bf3518c3c90cbca4e243823
```

-	Platforms:
	-	linux; amd64

### `mysql:5.7` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **137.8 MB (137832242 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:78cdcf394b4eab49b6d64e3e97f303d452019cf2991f801865f26c062a398623`
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
# Wed, 14 Dec 2016 02:47:50 GMT
RUN apt-get update && apt-get install -y perl pwgen --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Wed, 14 Dec 2016 02:47:52 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys A4A9406876FCBD3C456770C88C718D3B5072E1F5
# Wed, 14 Dec 2016 02:47:53 GMT
ENV MYSQL_MAJOR=5.7
# Wed, 14 Dec 2016 02:47:53 GMT
ENV MYSQL_VERSION=5.7.17-1debian8
# Wed, 14 Dec 2016 02:47:54 GMT
RUN echo "deb http://repo.mysql.com/apt/debian/ jessie mysql-${MYSQL_MAJOR}" > /etc/apt/sources.list.d/mysql.list
# Wed, 14 Dec 2016 02:48:17 GMT
RUN { 		echo mysql-community-server mysql-community-server/data-dir select ''; 		echo mysql-community-server mysql-community-server/root-pass password ''; 		echo mysql-community-server mysql-community-server/re-root-pass password ''; 		echo mysql-community-server mysql-community-server/remove-test-db select false; 	} | debconf-set-selections 	&& apt-get update && apt-get install -y mysql-server="${MYSQL_VERSION}" && rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Wed, 14 Dec 2016 02:48:23 GMT
RUN sed -Ei 's/^(bind-address|log)/#&/' /etc/mysql/mysql.conf.d/mysqld.cnf 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 14 Dec 2016 02:48:24 GMT
VOLUME [/var/lib/mysql]
# Fri, 06 Jan 2017 23:32:34 GMT
COPY file:915aa28b0ee915243ed916898ba2c6103acca9fe847f9365ced97a8b7ee5e4c9 in /usr/local/bin/ 
# Fri, 06 Jan 2017 23:32:35 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 06 Jan 2017 23:32:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 06 Jan 2017 23:32:36 GMT
EXPOSE 3306/tcp
# Fri, 06 Jan 2017 23:32:37 GMT
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
	-	`sha256:fe4a6c835905c74aa7540cb63201fb2b87287ea2e7fdba0513db04dddfed1e95`  
		Last Modified: Wed, 14 Dec 2016 03:28:16 GMT  
		Size: 8.2 MB (8248277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3f247e29ab116e18d92039c22d47021d968a34eb21c25aa3d3beb9d57182038`  
		Last Modified: Wed, 14 Dec 2016 03:28:11 GMT  
		Size: 19.0 KB (19020 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21be3e56207166d0b71bdb3ad23e6db98386fe5311bfb2766059d8a0856f4f61`  
		Last Modified: Wed, 14 Dec 2016 03:29:25 GMT  
		Size: 217.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7399d6bf03330f82cb32f3dca0c4b298b5d89a1c90c2f2a2d56182222bc58de`  
		Last Modified: Wed, 14 Dec 2016 03:29:52 GMT  
		Size: 77.0 MB (76979027 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccdaeae6c735d31cbab37e1f9aa3a25ca1c6123d7332d5262c391f7c14f305d7`  
		Last Modified: Wed, 14 Dec 2016 03:29:25 GMT  
		Size: 936.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:713c7d65b0d3bea9ab0b27daffc14d1b4a2c34a4b0b3e1bf38f0309284de118a`  
		Last Modified: Fri, 06 Jan 2017 23:34:09 GMT  
		Size: 2.4 KB (2421 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86c18539deb2e6154840d2a292ac19de5018ef6685c24af3a86149fabf209082`  
		Last Modified: Fri, 06 Jan 2017 23:34:09 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:5`

```console
$ docker pull mysql@sha256:9ef4478a3aa597f59b2266d5702f55f29acc468b5bf3518c3c90cbca4e243823
```

-	Platforms:
	-	linux; amd64

### `mysql:5` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **137.8 MB (137832242 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:78cdcf394b4eab49b6d64e3e97f303d452019cf2991f801865f26c062a398623`
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
# Wed, 14 Dec 2016 02:47:50 GMT
RUN apt-get update && apt-get install -y perl pwgen --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Wed, 14 Dec 2016 02:47:52 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys A4A9406876FCBD3C456770C88C718D3B5072E1F5
# Wed, 14 Dec 2016 02:47:53 GMT
ENV MYSQL_MAJOR=5.7
# Wed, 14 Dec 2016 02:47:53 GMT
ENV MYSQL_VERSION=5.7.17-1debian8
# Wed, 14 Dec 2016 02:47:54 GMT
RUN echo "deb http://repo.mysql.com/apt/debian/ jessie mysql-${MYSQL_MAJOR}" > /etc/apt/sources.list.d/mysql.list
# Wed, 14 Dec 2016 02:48:17 GMT
RUN { 		echo mysql-community-server mysql-community-server/data-dir select ''; 		echo mysql-community-server mysql-community-server/root-pass password ''; 		echo mysql-community-server mysql-community-server/re-root-pass password ''; 		echo mysql-community-server mysql-community-server/remove-test-db select false; 	} | debconf-set-selections 	&& apt-get update && apt-get install -y mysql-server="${MYSQL_VERSION}" && rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Wed, 14 Dec 2016 02:48:23 GMT
RUN sed -Ei 's/^(bind-address|log)/#&/' /etc/mysql/mysql.conf.d/mysqld.cnf 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 14 Dec 2016 02:48:24 GMT
VOLUME [/var/lib/mysql]
# Fri, 06 Jan 2017 23:32:34 GMT
COPY file:915aa28b0ee915243ed916898ba2c6103acca9fe847f9365ced97a8b7ee5e4c9 in /usr/local/bin/ 
# Fri, 06 Jan 2017 23:32:35 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 06 Jan 2017 23:32:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 06 Jan 2017 23:32:36 GMT
EXPOSE 3306/tcp
# Fri, 06 Jan 2017 23:32:37 GMT
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
	-	`sha256:fe4a6c835905c74aa7540cb63201fb2b87287ea2e7fdba0513db04dddfed1e95`  
		Last Modified: Wed, 14 Dec 2016 03:28:16 GMT  
		Size: 8.2 MB (8248277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3f247e29ab116e18d92039c22d47021d968a34eb21c25aa3d3beb9d57182038`  
		Last Modified: Wed, 14 Dec 2016 03:28:11 GMT  
		Size: 19.0 KB (19020 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21be3e56207166d0b71bdb3ad23e6db98386fe5311bfb2766059d8a0856f4f61`  
		Last Modified: Wed, 14 Dec 2016 03:29:25 GMT  
		Size: 217.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7399d6bf03330f82cb32f3dca0c4b298b5d89a1c90c2f2a2d56182222bc58de`  
		Last Modified: Wed, 14 Dec 2016 03:29:52 GMT  
		Size: 77.0 MB (76979027 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccdaeae6c735d31cbab37e1f9aa3a25ca1c6123d7332d5262c391f7c14f305d7`  
		Last Modified: Wed, 14 Dec 2016 03:29:25 GMT  
		Size: 936.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:713c7d65b0d3bea9ab0b27daffc14d1b4a2c34a4b0b3e1bf38f0309284de118a`  
		Last Modified: Fri, 06 Jan 2017 23:34:09 GMT  
		Size: 2.4 KB (2421 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86c18539deb2e6154840d2a292ac19de5018ef6685c24af3a86149fabf209082`  
		Last Modified: Fri, 06 Jan 2017 23:34:09 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:latest`

```console
$ docker pull mysql@sha256:9ef4478a3aa597f59b2266d5702f55f29acc468b5bf3518c3c90cbca4e243823
```

-	Platforms:
	-	linux; amd64

### `mysql:latest` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **137.8 MB (137832242 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:78cdcf394b4eab49b6d64e3e97f303d452019cf2991f801865f26c062a398623`
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
# Wed, 14 Dec 2016 02:47:50 GMT
RUN apt-get update && apt-get install -y perl pwgen --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Wed, 14 Dec 2016 02:47:52 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys A4A9406876FCBD3C456770C88C718D3B5072E1F5
# Wed, 14 Dec 2016 02:47:53 GMT
ENV MYSQL_MAJOR=5.7
# Wed, 14 Dec 2016 02:47:53 GMT
ENV MYSQL_VERSION=5.7.17-1debian8
# Wed, 14 Dec 2016 02:47:54 GMT
RUN echo "deb http://repo.mysql.com/apt/debian/ jessie mysql-${MYSQL_MAJOR}" > /etc/apt/sources.list.d/mysql.list
# Wed, 14 Dec 2016 02:48:17 GMT
RUN { 		echo mysql-community-server mysql-community-server/data-dir select ''; 		echo mysql-community-server mysql-community-server/root-pass password ''; 		echo mysql-community-server mysql-community-server/re-root-pass password ''; 		echo mysql-community-server mysql-community-server/remove-test-db select false; 	} | debconf-set-selections 	&& apt-get update && apt-get install -y mysql-server="${MYSQL_VERSION}" && rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Wed, 14 Dec 2016 02:48:23 GMT
RUN sed -Ei 's/^(bind-address|log)/#&/' /etc/mysql/mysql.conf.d/mysqld.cnf 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 14 Dec 2016 02:48:24 GMT
VOLUME [/var/lib/mysql]
# Fri, 06 Jan 2017 23:32:34 GMT
COPY file:915aa28b0ee915243ed916898ba2c6103acca9fe847f9365ced97a8b7ee5e4c9 in /usr/local/bin/ 
# Fri, 06 Jan 2017 23:32:35 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 06 Jan 2017 23:32:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 06 Jan 2017 23:32:36 GMT
EXPOSE 3306/tcp
# Fri, 06 Jan 2017 23:32:37 GMT
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
	-	`sha256:fe4a6c835905c74aa7540cb63201fb2b87287ea2e7fdba0513db04dddfed1e95`  
		Last Modified: Wed, 14 Dec 2016 03:28:16 GMT  
		Size: 8.2 MB (8248277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3f247e29ab116e18d92039c22d47021d968a34eb21c25aa3d3beb9d57182038`  
		Last Modified: Wed, 14 Dec 2016 03:28:11 GMT  
		Size: 19.0 KB (19020 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21be3e56207166d0b71bdb3ad23e6db98386fe5311bfb2766059d8a0856f4f61`  
		Last Modified: Wed, 14 Dec 2016 03:29:25 GMT  
		Size: 217.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7399d6bf03330f82cb32f3dca0c4b298b5d89a1c90c2f2a2d56182222bc58de`  
		Last Modified: Wed, 14 Dec 2016 03:29:52 GMT  
		Size: 77.0 MB (76979027 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccdaeae6c735d31cbab37e1f9aa3a25ca1c6123d7332d5262c391f7c14f305d7`  
		Last Modified: Wed, 14 Dec 2016 03:29:25 GMT  
		Size: 936.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:713c7d65b0d3bea9ab0b27daffc14d1b4a2c34a4b0b3e1bf38f0309284de118a`  
		Last Modified: Fri, 06 Jan 2017 23:34:09 GMT  
		Size: 2.4 KB (2421 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86c18539deb2e6154840d2a292ac19de5018ef6685c24af3a86149fabf209082`  
		Last Modified: Fri, 06 Jan 2017 23:34:09 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:5.6.35`

```console
$ docker pull mysql@sha256:802fcff03be5a6de9fa6c9a620af1026941868f9c40f69943e4b69ae94aac267
```

-	Platforms:
	-	linux; amd64

### `mysql:5.6.35` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **112.8 MB (112788967 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6470fff0eb83ced7a792cf62c1a3d4ce862b711365e01af960610aa0f9dd7426`
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
# Wed, 14 Dec 2016 02:47:50 GMT
RUN apt-get update && apt-get install -y perl pwgen --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Wed, 14 Dec 2016 02:47:52 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys A4A9406876FCBD3C456770C88C718D3B5072E1F5
# Wed, 14 Dec 2016 02:50:06 GMT
ENV MYSQL_MAJOR=5.6
# Wed, 14 Dec 2016 02:50:06 GMT
ENV MYSQL_VERSION=5.6.35-1debian8
# Wed, 14 Dec 2016 02:50:07 GMT
RUN echo "deb http://repo.mysql.com/apt/debian/ jessie mysql-${MYSQL_MAJOR}" > /etc/apt/sources.list.d/mysql.list
# Wed, 14 Dec 2016 02:50:27 GMT
RUN { 		echo mysql-community-server mysql-community-server/data-dir select ''; 		echo mysql-community-server mysql-community-server/root-pass password ''; 		echo mysql-community-server mysql-community-server/re-root-pass password ''; 		echo mysql-community-server mysql-community-server/remove-test-db select false; 	} | debconf-set-selections 	&& apt-get update && apt-get install -y mysql-server="${MYSQL_VERSION}" && rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Wed, 14 Dec 2016 02:50:36 GMT
RUN sed -Ei 's/^(bind-address|log)/#&/' /etc/mysql/my.cnf 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 14 Dec 2016 02:50:36 GMT
VOLUME [/var/lib/mysql]
# Fri, 06 Jan 2017 23:32:38 GMT
COPY file:4525fb8b249a0bd84126fe09d40e3039307532c4050b0947d5bea89efdd4c1c9 in /usr/local/bin/ 
# Fri, 06 Jan 2017 23:32:39 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 06 Jan 2017 23:32:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 06 Jan 2017 23:32:40 GMT
EXPOSE 3306/tcp
# Fri, 06 Jan 2017 23:32:41 GMT
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
	-	`sha256:fe4a6c835905c74aa7540cb63201fb2b87287ea2e7fdba0513db04dddfed1e95`  
		Last Modified: Wed, 14 Dec 2016 03:28:16 GMT  
		Size: 8.2 MB (8248277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3f247e29ab116e18d92039c22d47021d968a34eb21c25aa3d3beb9d57182038`  
		Last Modified: Wed, 14 Dec 2016 03:28:11 GMT  
		Size: 19.0 KB (19020 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2f88d2008c200871e2a2ad64e7fd611d263b79f94fed7c5d8b9335f9d62f424`  
		Last Modified: Wed, 14 Dec 2016 03:30:59 GMT  
		Size: 217.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb591b4395b518ac9d1c6d2ac3b86e976709df30022bb7734c992a263271cf55`  
		Last Modified: Wed, 14 Dec 2016 03:31:18 GMT  
		Size: 51.9 MB (51935436 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da36fdc89c53606f2081c1028188d1d515c408ec59ed9fa15ad28830d7e942b5`  
		Last Modified: Wed, 14 Dec 2016 03:30:59 GMT  
		Size: 1.2 KB (1214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:151d93966c53ec34e2ba4f628941f3ca032a6b5b7383dadf7d93b1b9855d555c`  
		Last Modified: Fri, 06 Jan 2017 23:35:33 GMT  
		Size: 2.5 KB (2460 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4643c1372b94813f3f9f25882862606824828929833b942527424737f6df0740`  
		Last Modified: Fri, 06 Jan 2017 23:35:33 GMT  
		Size: 119.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:5.6`

```console
$ docker pull mysql@sha256:802fcff03be5a6de9fa6c9a620af1026941868f9c40f69943e4b69ae94aac267
```

-	Platforms:
	-	linux; amd64

### `mysql:5.6` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **112.8 MB (112788967 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6470fff0eb83ced7a792cf62c1a3d4ce862b711365e01af960610aa0f9dd7426`
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
# Wed, 14 Dec 2016 02:47:50 GMT
RUN apt-get update && apt-get install -y perl pwgen --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Wed, 14 Dec 2016 02:47:52 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys A4A9406876FCBD3C456770C88C718D3B5072E1F5
# Wed, 14 Dec 2016 02:50:06 GMT
ENV MYSQL_MAJOR=5.6
# Wed, 14 Dec 2016 02:50:06 GMT
ENV MYSQL_VERSION=5.6.35-1debian8
# Wed, 14 Dec 2016 02:50:07 GMT
RUN echo "deb http://repo.mysql.com/apt/debian/ jessie mysql-${MYSQL_MAJOR}" > /etc/apt/sources.list.d/mysql.list
# Wed, 14 Dec 2016 02:50:27 GMT
RUN { 		echo mysql-community-server mysql-community-server/data-dir select ''; 		echo mysql-community-server mysql-community-server/root-pass password ''; 		echo mysql-community-server mysql-community-server/re-root-pass password ''; 		echo mysql-community-server mysql-community-server/remove-test-db select false; 	} | debconf-set-selections 	&& apt-get update && apt-get install -y mysql-server="${MYSQL_VERSION}" && rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Wed, 14 Dec 2016 02:50:36 GMT
RUN sed -Ei 's/^(bind-address|log)/#&/' /etc/mysql/my.cnf 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 14 Dec 2016 02:50:36 GMT
VOLUME [/var/lib/mysql]
# Fri, 06 Jan 2017 23:32:38 GMT
COPY file:4525fb8b249a0bd84126fe09d40e3039307532c4050b0947d5bea89efdd4c1c9 in /usr/local/bin/ 
# Fri, 06 Jan 2017 23:32:39 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 06 Jan 2017 23:32:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 06 Jan 2017 23:32:40 GMT
EXPOSE 3306/tcp
# Fri, 06 Jan 2017 23:32:41 GMT
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
	-	`sha256:fe4a6c835905c74aa7540cb63201fb2b87287ea2e7fdba0513db04dddfed1e95`  
		Last Modified: Wed, 14 Dec 2016 03:28:16 GMT  
		Size: 8.2 MB (8248277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3f247e29ab116e18d92039c22d47021d968a34eb21c25aa3d3beb9d57182038`  
		Last Modified: Wed, 14 Dec 2016 03:28:11 GMT  
		Size: 19.0 KB (19020 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2f88d2008c200871e2a2ad64e7fd611d263b79f94fed7c5d8b9335f9d62f424`  
		Last Modified: Wed, 14 Dec 2016 03:30:59 GMT  
		Size: 217.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb591b4395b518ac9d1c6d2ac3b86e976709df30022bb7734c992a263271cf55`  
		Last Modified: Wed, 14 Dec 2016 03:31:18 GMT  
		Size: 51.9 MB (51935436 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da36fdc89c53606f2081c1028188d1d515c408ec59ed9fa15ad28830d7e942b5`  
		Last Modified: Wed, 14 Dec 2016 03:30:59 GMT  
		Size: 1.2 KB (1214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:151d93966c53ec34e2ba4f628941f3ca032a6b5b7383dadf7d93b1b9855d555c`  
		Last Modified: Fri, 06 Jan 2017 23:35:33 GMT  
		Size: 2.5 KB (2460 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4643c1372b94813f3f9f25882862606824828929833b942527424737f6df0740`  
		Last Modified: Fri, 06 Jan 2017 23:35:33 GMT  
		Size: 119.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:5.5.54`

```console
$ docker pull mysql@sha256:6808d02fc1364afda0a20b89d744f64d97c96f6a25cb53cffaa96c14ea356335
```

-	Platforms:
	-	linux; amd64

### `mysql:5.5.54` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **87.4 MB (87414985 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:01b1a305151b62e925b173fc13ca68ac97f51f59abd0f272eb4f11d93bb8f91a`
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
# Wed, 14 Dec 2016 02:48:34 GMT
RUN apt-get update && apt-get install -y perl --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Wed, 14 Dec 2016 02:48:41 GMT
RUN apt-get update && apt-get install -y libaio1 pwgen && rm -rf /var/lib/apt/lists/*
# Wed, 14 Dec 2016 02:48:50 GMT
ENV MYSQL_MAJOR=5.5
# Wed, 14 Dec 2016 02:48:50 GMT
ENV MYSQL_VERSION=5.5.54
# Wed, 14 Dec 2016 02:49:40 GMT
RUN apt-get update && apt-get install -y ca-certificates wget --no-install-recommends && rm -rf /var/lib/apt/lists/* 	&& wget "https://cdn.mysql.com/Downloads/MySQL-$MYSQL_MAJOR/mysql-$MYSQL_VERSION-linux2.6-x86_64.tar.gz" -O mysql.tar.gz 	&& wget "https://cdn.mysql.com/Downloads/MySQL-$MYSQL_MAJOR/mysql-$MYSQL_VERSION-linux2.6-x86_64.tar.gz.asc" -O mysql.tar.gz.asc 	&& apt-get purge -y --auto-remove ca-certificates wget 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys A4A9406876FCBD3C456770C88C718D3B5072E1F5 	&& gpg --batch --verify mysql.tar.gz.asc mysql.tar.gz 	&& rm -r "$GNUPGHOME" mysql.tar.gz.asc 	&& mkdir /usr/local/mysql 	&& tar -xzf mysql.tar.gz -C /usr/local/mysql --strip-components=1 	&& rm mysql.tar.gz 	&& rm -rf /usr/local/mysql/mysql-test /usr/local/mysql/sql-bench 	&& rm -rf /usr/local/mysql/bin/*-debug /usr/local/mysql/bin/*_embedded 	&& find /usr/local/mysql -type f -name "*.a" -delete 	&& apt-get update && apt-get install -y binutils && rm -rf /var/lib/apt/lists/* 	&& { find /usr/local/mysql -type f -executable -exec strip --strip-all '{}' + || true; } 	&& apt-get purge -y --auto-remove binutils
# Wed, 14 Dec 2016 02:49:50 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/mysql/bin:/usr/local/mysql/scripts
# Wed, 14 Dec 2016 02:49:51 GMT
RUN mkdir -p /etc/mysql/conf.d 	&& { 		echo '[mysqld]'; 		echo 'skip-host-cache'; 		echo 'skip-name-resolve'; 		echo 'datadir = /var/lib/mysql'; 		echo '!includedir /etc/mysql/conf.d/'; 	} > /etc/mysql/my.cnf
# Wed, 14 Dec 2016 02:49:52 GMT
RUN mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Wed, 14 Dec 2016 02:49:53 GMT
VOLUME [/var/lib/mysql]
# Fri, 06 Jan 2017 23:32:42 GMT
COPY file:d16a9566d4b9cf29a984c8b6d111646c8dad7579141c4417ccd654d1335ba3fc in /usr/local/bin/ 
# Fri, 06 Jan 2017 23:32:43 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 06 Jan 2017 23:32:43 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 06 Jan 2017 23:32:44 GMT
EXPOSE 3306/tcp
# Fri, 06 Jan 2017 23:32:44 GMT
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
	-	`sha256:a553059860edcfc86f7cd3be7dc60f24b7f6bd15dfc1974520d7b6f3519b2d13`  
		Last Modified: Wed, 14 Dec 2016 03:32:04 GMT  
		Size: 8.2 MB (8220200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:463fe937682a93015a683a066d1a056ced8186669e7df5fdcc65e042b25fb0ae`  
		Last Modified: Wed, 14 Dec 2016 03:31:57 GMT  
		Size: 101.2 KB (101160 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5052b27ac6c0eaeafc660eadc2fe5914061a0d103d19e25afa0d103ceb6cc560`  
		Last Modified: Wed, 14 Dec 2016 03:32:04 GMT  
		Size: 26.5 MB (26508378 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3c43a1d263b4fc6dec3ce87a0c0fcd935f5dd48746b29c575f1645b2fa3f719`  
		Last Modified: Wed, 14 Dec 2016 03:31:55 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f89e353685e430a7abb936915c30b76a24cfcfa6a455c509b616ab66fe3a39f8`  
		Last Modified: Wed, 14 Dec 2016 03:31:54 GMT  
		Size: 173.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:060da92f13cce27e58ac0cdfad650b0c375eb77150d144e0a0119e873d26fc14`  
		Last Modified: Fri, 06 Jan 2017 23:36:27 GMT  
		Size: 2.5 KB (2490 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b04a2da1cb195d15cae0f13ad4fdf4f7e2e791a51342ede93d46558468c0f07`  
		Last Modified: Fri, 06 Jan 2017 23:36:28 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:5.5`

```console
$ docker pull mysql@sha256:6808d02fc1364afda0a20b89d744f64d97c96f6a25cb53cffaa96c14ea356335
```

-	Platforms:
	-	linux; amd64

### `mysql:5.5` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **87.4 MB (87414985 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:01b1a305151b62e925b173fc13ca68ac97f51f59abd0f272eb4f11d93bb8f91a`
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
# Wed, 14 Dec 2016 02:48:34 GMT
RUN apt-get update && apt-get install -y perl --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Wed, 14 Dec 2016 02:48:41 GMT
RUN apt-get update && apt-get install -y libaio1 pwgen && rm -rf /var/lib/apt/lists/*
# Wed, 14 Dec 2016 02:48:50 GMT
ENV MYSQL_MAJOR=5.5
# Wed, 14 Dec 2016 02:48:50 GMT
ENV MYSQL_VERSION=5.5.54
# Wed, 14 Dec 2016 02:49:40 GMT
RUN apt-get update && apt-get install -y ca-certificates wget --no-install-recommends && rm -rf /var/lib/apt/lists/* 	&& wget "https://cdn.mysql.com/Downloads/MySQL-$MYSQL_MAJOR/mysql-$MYSQL_VERSION-linux2.6-x86_64.tar.gz" -O mysql.tar.gz 	&& wget "https://cdn.mysql.com/Downloads/MySQL-$MYSQL_MAJOR/mysql-$MYSQL_VERSION-linux2.6-x86_64.tar.gz.asc" -O mysql.tar.gz.asc 	&& apt-get purge -y --auto-remove ca-certificates wget 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys A4A9406876FCBD3C456770C88C718D3B5072E1F5 	&& gpg --batch --verify mysql.tar.gz.asc mysql.tar.gz 	&& rm -r "$GNUPGHOME" mysql.tar.gz.asc 	&& mkdir /usr/local/mysql 	&& tar -xzf mysql.tar.gz -C /usr/local/mysql --strip-components=1 	&& rm mysql.tar.gz 	&& rm -rf /usr/local/mysql/mysql-test /usr/local/mysql/sql-bench 	&& rm -rf /usr/local/mysql/bin/*-debug /usr/local/mysql/bin/*_embedded 	&& find /usr/local/mysql -type f -name "*.a" -delete 	&& apt-get update && apt-get install -y binutils && rm -rf /var/lib/apt/lists/* 	&& { find /usr/local/mysql -type f -executable -exec strip --strip-all '{}' + || true; } 	&& apt-get purge -y --auto-remove binutils
# Wed, 14 Dec 2016 02:49:50 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/mysql/bin:/usr/local/mysql/scripts
# Wed, 14 Dec 2016 02:49:51 GMT
RUN mkdir -p /etc/mysql/conf.d 	&& { 		echo '[mysqld]'; 		echo 'skip-host-cache'; 		echo 'skip-name-resolve'; 		echo 'datadir = /var/lib/mysql'; 		echo '!includedir /etc/mysql/conf.d/'; 	} > /etc/mysql/my.cnf
# Wed, 14 Dec 2016 02:49:52 GMT
RUN mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Wed, 14 Dec 2016 02:49:53 GMT
VOLUME [/var/lib/mysql]
# Fri, 06 Jan 2017 23:32:42 GMT
COPY file:d16a9566d4b9cf29a984c8b6d111646c8dad7579141c4417ccd654d1335ba3fc in /usr/local/bin/ 
# Fri, 06 Jan 2017 23:32:43 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 06 Jan 2017 23:32:43 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 06 Jan 2017 23:32:44 GMT
EXPOSE 3306/tcp
# Fri, 06 Jan 2017 23:32:44 GMT
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
	-	`sha256:a553059860edcfc86f7cd3be7dc60f24b7f6bd15dfc1974520d7b6f3519b2d13`  
		Last Modified: Wed, 14 Dec 2016 03:32:04 GMT  
		Size: 8.2 MB (8220200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:463fe937682a93015a683a066d1a056ced8186669e7df5fdcc65e042b25fb0ae`  
		Last Modified: Wed, 14 Dec 2016 03:31:57 GMT  
		Size: 101.2 KB (101160 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5052b27ac6c0eaeafc660eadc2fe5914061a0d103d19e25afa0d103ceb6cc560`  
		Last Modified: Wed, 14 Dec 2016 03:32:04 GMT  
		Size: 26.5 MB (26508378 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3c43a1d263b4fc6dec3ce87a0c0fcd935f5dd48746b29c575f1645b2fa3f719`  
		Last Modified: Wed, 14 Dec 2016 03:31:55 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f89e353685e430a7abb936915c30b76a24cfcfa6a455c509b616ab66fe3a39f8`  
		Last Modified: Wed, 14 Dec 2016 03:31:54 GMT  
		Size: 173.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:060da92f13cce27e58ac0cdfad650b0c375eb77150d144e0a0119e873d26fc14`  
		Last Modified: Fri, 06 Jan 2017 23:36:27 GMT  
		Size: 2.5 KB (2490 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b04a2da1cb195d15cae0f13ad4fdf4f7e2e791a51342ede93d46558468c0f07`  
		Last Modified: Fri, 06 Jan 2017 23:36:28 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
