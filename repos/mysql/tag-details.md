<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `mysql`

-	[`mysql:8.0.1`](#mysql801)
-	[`mysql:8.0`](#mysql80)
-	[`mysql:8`](#mysql8)
-	[`mysql:5.7.18`](#mysql5718)
-	[`mysql:5.7`](#mysql57)
-	[`mysql:5`](#mysql5)
-	[`mysql:latest`](#mysqllatest)
-	[`mysql:5.6.36`](#mysql5636)
-	[`mysql:5.6`](#mysql56)
-	[`mysql:5.5.56`](#mysql5556)
-	[`mysql:5.5`](#mysql55)

## `mysql:8.0.1`

```console
$ docker pull mysql@sha256:7f91c6abac03bda0ccd6499baba761369f85a2f925faa690dc0494fe3b5a04ff
```

-	Platforms:
	-	linux; amd64

### `mysql:8.0.1` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **90.4 MB (90429002 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:27226213a75fa03fcf466e047fc82bf53625cea51e7ef683ac1d9e5c21ad5f03`
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
# Wed, 10 May 2017 03:28:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		pwgen 		openssl 		perl 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 03:28:05 GMT
RUN set -ex; 	key='A4A9406876FCBD3C456770C88C718D3B5072E1F5'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/mysql.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list > /dev/null
# Wed, 10 May 2017 03:32:15 GMT
ENV MYSQL_MAJOR=8.0
# Wed, 10 May 2017 03:32:16 GMT
ENV MYSQL_VERSION=8.0.1-dmr-1debian8
# Wed, 10 May 2017 03:32:18 GMT
RUN echo "deb http://repo.mysql.com/apt/debian/ jessie mysql-${MYSQL_MAJOR}" > /etc/apt/sources.list.d/mysql.list
# Wed, 10 May 2017 03:32:30 GMT
RUN { 		echo mysql-community-server mysql-community-server/data-dir select ''; 		echo mysql-community-server mysql-community-server/root-pass password ''; 		echo mysql-community-server mysql-community-server/re-root-pass password ''; 		echo mysql-community-server mysql-community-server/remove-test-db select false; 	} | debconf-set-selections 	&& apt-get update && apt-get install -y mysql-community-client-core="${MYSQL_VERSION}" mysql-community-server-core="${MYSQL_VERSION}" && rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Wed, 10 May 2017 03:32:44 GMT
VOLUME [/var/lib/mysql]
# Wed, 10 May 2017 03:32:46 GMT
COPY dir:110dcf1221c1f9432c68c32a2465ef0b40994f401d5fae0b0de80025bcf839a5 in /etc/mysql/ 
# Wed, 10 May 2017 03:32:47 GMT
COPY file:5453fdbdb142b28e9aa4df64d5e1f42a740f018457cb1c65d113b947858ae314 in /usr/local/bin/ 
# Wed, 10 May 2017 03:32:49 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 10 May 2017 03:32:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 10 May 2017 03:32:50 GMT
EXPOSE 3306/tcp
# Wed, 10 May 2017 03:32:51 GMT
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
	-	`sha256:a1033d2f1825e47d2929ad0e15207097a5600406479ca7a67b56f50dd707fcc6`  
		Last Modified: Sat, 13 May 2017 08:01:19 GMT  
		Size: 10.7 MB (10715803 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d6792140dcc88fa160ad0e34da08da30fdcb6e02fefd1cd071f584b5338586a`  
		Last Modified: Sat, 13 May 2017 08:01:12 GMT  
		Size: 19.2 KB (19200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b55ae902f46c107f4dab23be330eadeb3517d54c6ba3afdc0f41f89f728535a9`  
		Last Modified: Sat, 13 May 2017 08:03:03 GMT  
		Size: 215.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f82417cb7d3d49007ef53c4c61aa30695bf1eff43f968f31d8bc619f0b073fdf`  
		Last Modified: Sat, 13 May 2017 08:03:11 GMT  
		Size: 25.8 MB (25796072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5dea38227d30736e3a709b6d78b2f86c859e237716df522bab640b11f51a03c4`  
		Last Modified: Sat, 13 May 2017 08:03:03 GMT  
		Size: 895.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2125cf7a44d27e2316ce6047b2eb645bd393ce4057b1584234cc17130cb92418`  
		Last Modified: Sat, 13 May 2017 08:03:03 GMT  
		Size: 2.7 KB (2732 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee4fdd086164082d41a4e10c6749c862abd8a5e63106618ba55afcc89b8c78ff`  
		Last Modified: Sat, 13 May 2017 08:03:03 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:8.0`

```console
$ docker pull mysql@sha256:7f91c6abac03bda0ccd6499baba761369f85a2f925faa690dc0494fe3b5a04ff
```

-	Platforms:
	-	linux; amd64

### `mysql:8.0` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **90.4 MB (90429002 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:27226213a75fa03fcf466e047fc82bf53625cea51e7ef683ac1d9e5c21ad5f03`
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
# Wed, 10 May 2017 03:28:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		pwgen 		openssl 		perl 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 03:28:05 GMT
RUN set -ex; 	key='A4A9406876FCBD3C456770C88C718D3B5072E1F5'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/mysql.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list > /dev/null
# Wed, 10 May 2017 03:32:15 GMT
ENV MYSQL_MAJOR=8.0
# Wed, 10 May 2017 03:32:16 GMT
ENV MYSQL_VERSION=8.0.1-dmr-1debian8
# Wed, 10 May 2017 03:32:18 GMT
RUN echo "deb http://repo.mysql.com/apt/debian/ jessie mysql-${MYSQL_MAJOR}" > /etc/apt/sources.list.d/mysql.list
# Wed, 10 May 2017 03:32:30 GMT
RUN { 		echo mysql-community-server mysql-community-server/data-dir select ''; 		echo mysql-community-server mysql-community-server/root-pass password ''; 		echo mysql-community-server mysql-community-server/re-root-pass password ''; 		echo mysql-community-server mysql-community-server/remove-test-db select false; 	} | debconf-set-selections 	&& apt-get update && apt-get install -y mysql-community-client-core="${MYSQL_VERSION}" mysql-community-server-core="${MYSQL_VERSION}" && rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Wed, 10 May 2017 03:32:44 GMT
VOLUME [/var/lib/mysql]
# Wed, 10 May 2017 03:32:46 GMT
COPY dir:110dcf1221c1f9432c68c32a2465ef0b40994f401d5fae0b0de80025bcf839a5 in /etc/mysql/ 
# Wed, 10 May 2017 03:32:47 GMT
COPY file:5453fdbdb142b28e9aa4df64d5e1f42a740f018457cb1c65d113b947858ae314 in /usr/local/bin/ 
# Wed, 10 May 2017 03:32:49 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 10 May 2017 03:32:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 10 May 2017 03:32:50 GMT
EXPOSE 3306/tcp
# Wed, 10 May 2017 03:32:51 GMT
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
	-	`sha256:a1033d2f1825e47d2929ad0e15207097a5600406479ca7a67b56f50dd707fcc6`  
		Last Modified: Sat, 13 May 2017 08:01:19 GMT  
		Size: 10.7 MB (10715803 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d6792140dcc88fa160ad0e34da08da30fdcb6e02fefd1cd071f584b5338586a`  
		Last Modified: Sat, 13 May 2017 08:01:12 GMT  
		Size: 19.2 KB (19200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b55ae902f46c107f4dab23be330eadeb3517d54c6ba3afdc0f41f89f728535a9`  
		Last Modified: Sat, 13 May 2017 08:03:03 GMT  
		Size: 215.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f82417cb7d3d49007ef53c4c61aa30695bf1eff43f968f31d8bc619f0b073fdf`  
		Last Modified: Sat, 13 May 2017 08:03:11 GMT  
		Size: 25.8 MB (25796072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5dea38227d30736e3a709b6d78b2f86c859e237716df522bab640b11f51a03c4`  
		Last Modified: Sat, 13 May 2017 08:03:03 GMT  
		Size: 895.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2125cf7a44d27e2316ce6047b2eb645bd393ce4057b1584234cc17130cb92418`  
		Last Modified: Sat, 13 May 2017 08:03:03 GMT  
		Size: 2.7 KB (2732 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee4fdd086164082d41a4e10c6749c862abd8a5e63106618ba55afcc89b8c78ff`  
		Last Modified: Sat, 13 May 2017 08:03:03 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:8`

```console
$ docker pull mysql@sha256:7f91c6abac03bda0ccd6499baba761369f85a2f925faa690dc0494fe3b5a04ff
```

-	Platforms:
	-	linux; amd64

### `mysql:8` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **90.4 MB (90429002 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:27226213a75fa03fcf466e047fc82bf53625cea51e7ef683ac1d9e5c21ad5f03`
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
# Wed, 10 May 2017 03:28:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		pwgen 		openssl 		perl 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 03:28:05 GMT
RUN set -ex; 	key='A4A9406876FCBD3C456770C88C718D3B5072E1F5'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/mysql.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list > /dev/null
# Wed, 10 May 2017 03:32:15 GMT
ENV MYSQL_MAJOR=8.0
# Wed, 10 May 2017 03:32:16 GMT
ENV MYSQL_VERSION=8.0.1-dmr-1debian8
# Wed, 10 May 2017 03:32:18 GMT
RUN echo "deb http://repo.mysql.com/apt/debian/ jessie mysql-${MYSQL_MAJOR}" > /etc/apt/sources.list.d/mysql.list
# Wed, 10 May 2017 03:32:30 GMT
RUN { 		echo mysql-community-server mysql-community-server/data-dir select ''; 		echo mysql-community-server mysql-community-server/root-pass password ''; 		echo mysql-community-server mysql-community-server/re-root-pass password ''; 		echo mysql-community-server mysql-community-server/remove-test-db select false; 	} | debconf-set-selections 	&& apt-get update && apt-get install -y mysql-community-client-core="${MYSQL_VERSION}" mysql-community-server-core="${MYSQL_VERSION}" && rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Wed, 10 May 2017 03:32:44 GMT
VOLUME [/var/lib/mysql]
# Wed, 10 May 2017 03:32:46 GMT
COPY dir:110dcf1221c1f9432c68c32a2465ef0b40994f401d5fae0b0de80025bcf839a5 in /etc/mysql/ 
# Wed, 10 May 2017 03:32:47 GMT
COPY file:5453fdbdb142b28e9aa4df64d5e1f42a740f018457cb1c65d113b947858ae314 in /usr/local/bin/ 
# Wed, 10 May 2017 03:32:49 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 10 May 2017 03:32:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 10 May 2017 03:32:50 GMT
EXPOSE 3306/tcp
# Wed, 10 May 2017 03:32:51 GMT
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
	-	`sha256:a1033d2f1825e47d2929ad0e15207097a5600406479ca7a67b56f50dd707fcc6`  
		Last Modified: Sat, 13 May 2017 08:01:19 GMT  
		Size: 10.7 MB (10715803 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d6792140dcc88fa160ad0e34da08da30fdcb6e02fefd1cd071f584b5338586a`  
		Last Modified: Sat, 13 May 2017 08:01:12 GMT  
		Size: 19.2 KB (19200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b55ae902f46c107f4dab23be330eadeb3517d54c6ba3afdc0f41f89f728535a9`  
		Last Modified: Sat, 13 May 2017 08:03:03 GMT  
		Size: 215.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f82417cb7d3d49007ef53c4c61aa30695bf1eff43f968f31d8bc619f0b073fdf`  
		Last Modified: Sat, 13 May 2017 08:03:11 GMT  
		Size: 25.8 MB (25796072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5dea38227d30736e3a709b6d78b2f86c859e237716df522bab640b11f51a03c4`  
		Last Modified: Sat, 13 May 2017 08:03:03 GMT  
		Size: 895.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2125cf7a44d27e2316ce6047b2eb645bd393ce4057b1584234cc17130cb92418`  
		Last Modified: Sat, 13 May 2017 08:03:03 GMT  
		Size: 2.7 KB (2732 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee4fdd086164082d41a4e10c6749c862abd8a5e63106618ba55afcc89b8c78ff`  
		Last Modified: Sat, 13 May 2017 08:03:03 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:5.7.18`

```console
$ docker pull mysql@sha256:2f4b1900c0ee53f344564db8d85733bd8d70b0a78cd00e6d92dc107224fc84a5
```

-	Platforms:
	-	linux; amd64

### `mysql:5.7.18` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **143.6 MB (143594131 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e799c7f9ae9cd01c2e78e26952767b96aef59a5e62f02305610448da47f8ca6b`
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
# Wed, 10 May 2017 03:28:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		pwgen 		openssl 		perl 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 03:28:05 GMT
RUN set -ex; 	key='A4A9406876FCBD3C456770C88C718D3B5072E1F5'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/mysql.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list > /dev/null
# Wed, 10 May 2017 03:28:06 GMT
ENV MYSQL_MAJOR=5.7
# Wed, 10 May 2017 03:28:07 GMT
ENV MYSQL_VERSION=5.7.18-1debian8
# Wed, 10 May 2017 03:28:09 GMT
RUN echo "deb http://repo.mysql.com/apt/debian/ jessie mysql-${MYSQL_MAJOR}" > /etc/apt/sources.list.d/mysql.list
# Wed, 10 May 2017 03:28:38 GMT
RUN { 		echo mysql-community-server mysql-community-server/data-dir select ''; 		echo mysql-community-server mysql-community-server/root-pass password ''; 		echo mysql-community-server mysql-community-server/re-root-pass password ''; 		echo mysql-community-server mysql-community-server/remove-test-db select false; 	} | debconf-set-selections 	&& apt-get update && apt-get install -y mysql-server="${MYSQL_VERSION}" && rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Wed, 10 May 2017 03:28:40 GMT
RUN sed -Ei 's/^(bind-address|log)/#&/' /etc/mysql/mysql.conf.d/mysqld.cnf 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 10 May 2017 03:28:41 GMT
VOLUME [/var/lib/mysql]
# Wed, 10 May 2017 03:28:42 GMT
COPY file:5453fdbdb142b28e9aa4df64d5e1f42a740f018457cb1c65d113b947858ae314 in /usr/local/bin/ 
# Wed, 10 May 2017 03:28:44 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 10 May 2017 03:28:45 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 10 May 2017 03:28:45 GMT
EXPOSE 3306/tcp
# Wed, 10 May 2017 03:28:46 GMT
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
	-	`sha256:a1033d2f1825e47d2929ad0e15207097a5600406479ca7a67b56f50dd707fcc6`  
		Last Modified: Sat, 13 May 2017 08:01:19 GMT  
		Size: 10.7 MB (10715803 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d6792140dcc88fa160ad0e34da08da30fdcb6e02fefd1cd071f584b5338586a`  
		Last Modified: Sat, 13 May 2017 08:01:12 GMT  
		Size: 19.2 KB (19200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd3adf03d6e64c0d5e59171e65490e6cb3fd552e9fd4ce81a1976ebb25447325`  
		Last Modified: Sat, 13 May 2017 08:01:12 GMT  
		Size: 217.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d79d216fd92b726ec5a2351140f53829dce76749cd54a92e32b520cef90a90e1`  
		Last Modified: Sat, 13 May 2017 08:01:28 GMT  
		Size: 79.0 MB (78961159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3c25bdeb4f448f9c865abba2bb104137eba16bbe87e8507b721e01a6c27797e`  
		Last Modified: Sat, 13 May 2017 08:01:12 GMT  
		Size: 936.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02556e8f331fdf559a93c845dc80cffad8b7c4f940ab239529756903ad07e705`  
		Last Modified: Sat, 13 May 2017 08:01:12 GMT  
		Size: 2.7 KB (2732 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bed508a9e77fec63ff551f68e66836cbcd39404565ca36003bf54be2e533c9a`  
		Last Modified: Sat, 13 May 2017 08:01:13 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:5.7`

```console
$ docker pull mysql@sha256:2f4b1900c0ee53f344564db8d85733bd8d70b0a78cd00e6d92dc107224fc84a5
```

-	Platforms:
	-	linux; amd64

### `mysql:5.7` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **143.6 MB (143594131 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e799c7f9ae9cd01c2e78e26952767b96aef59a5e62f02305610448da47f8ca6b`
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
# Wed, 10 May 2017 03:28:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		pwgen 		openssl 		perl 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 03:28:05 GMT
RUN set -ex; 	key='A4A9406876FCBD3C456770C88C718D3B5072E1F5'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/mysql.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list > /dev/null
# Wed, 10 May 2017 03:28:06 GMT
ENV MYSQL_MAJOR=5.7
# Wed, 10 May 2017 03:28:07 GMT
ENV MYSQL_VERSION=5.7.18-1debian8
# Wed, 10 May 2017 03:28:09 GMT
RUN echo "deb http://repo.mysql.com/apt/debian/ jessie mysql-${MYSQL_MAJOR}" > /etc/apt/sources.list.d/mysql.list
# Wed, 10 May 2017 03:28:38 GMT
RUN { 		echo mysql-community-server mysql-community-server/data-dir select ''; 		echo mysql-community-server mysql-community-server/root-pass password ''; 		echo mysql-community-server mysql-community-server/re-root-pass password ''; 		echo mysql-community-server mysql-community-server/remove-test-db select false; 	} | debconf-set-selections 	&& apt-get update && apt-get install -y mysql-server="${MYSQL_VERSION}" && rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Wed, 10 May 2017 03:28:40 GMT
RUN sed -Ei 's/^(bind-address|log)/#&/' /etc/mysql/mysql.conf.d/mysqld.cnf 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 10 May 2017 03:28:41 GMT
VOLUME [/var/lib/mysql]
# Wed, 10 May 2017 03:28:42 GMT
COPY file:5453fdbdb142b28e9aa4df64d5e1f42a740f018457cb1c65d113b947858ae314 in /usr/local/bin/ 
# Wed, 10 May 2017 03:28:44 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 10 May 2017 03:28:45 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 10 May 2017 03:28:45 GMT
EXPOSE 3306/tcp
# Wed, 10 May 2017 03:28:46 GMT
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
	-	`sha256:a1033d2f1825e47d2929ad0e15207097a5600406479ca7a67b56f50dd707fcc6`  
		Last Modified: Sat, 13 May 2017 08:01:19 GMT  
		Size: 10.7 MB (10715803 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d6792140dcc88fa160ad0e34da08da30fdcb6e02fefd1cd071f584b5338586a`  
		Last Modified: Sat, 13 May 2017 08:01:12 GMT  
		Size: 19.2 KB (19200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd3adf03d6e64c0d5e59171e65490e6cb3fd552e9fd4ce81a1976ebb25447325`  
		Last Modified: Sat, 13 May 2017 08:01:12 GMT  
		Size: 217.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d79d216fd92b726ec5a2351140f53829dce76749cd54a92e32b520cef90a90e1`  
		Last Modified: Sat, 13 May 2017 08:01:28 GMT  
		Size: 79.0 MB (78961159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3c25bdeb4f448f9c865abba2bb104137eba16bbe87e8507b721e01a6c27797e`  
		Last Modified: Sat, 13 May 2017 08:01:12 GMT  
		Size: 936.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02556e8f331fdf559a93c845dc80cffad8b7c4f940ab239529756903ad07e705`  
		Last Modified: Sat, 13 May 2017 08:01:12 GMT  
		Size: 2.7 KB (2732 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bed508a9e77fec63ff551f68e66836cbcd39404565ca36003bf54be2e533c9a`  
		Last Modified: Sat, 13 May 2017 08:01:13 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:5`

```console
$ docker pull mysql@sha256:2f4b1900c0ee53f344564db8d85733bd8d70b0a78cd00e6d92dc107224fc84a5
```

-	Platforms:
	-	linux; amd64

### `mysql:5` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **143.6 MB (143594131 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e799c7f9ae9cd01c2e78e26952767b96aef59a5e62f02305610448da47f8ca6b`
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
# Wed, 10 May 2017 03:28:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		pwgen 		openssl 		perl 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 03:28:05 GMT
RUN set -ex; 	key='A4A9406876FCBD3C456770C88C718D3B5072E1F5'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/mysql.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list > /dev/null
# Wed, 10 May 2017 03:28:06 GMT
ENV MYSQL_MAJOR=5.7
# Wed, 10 May 2017 03:28:07 GMT
ENV MYSQL_VERSION=5.7.18-1debian8
# Wed, 10 May 2017 03:28:09 GMT
RUN echo "deb http://repo.mysql.com/apt/debian/ jessie mysql-${MYSQL_MAJOR}" > /etc/apt/sources.list.d/mysql.list
# Wed, 10 May 2017 03:28:38 GMT
RUN { 		echo mysql-community-server mysql-community-server/data-dir select ''; 		echo mysql-community-server mysql-community-server/root-pass password ''; 		echo mysql-community-server mysql-community-server/re-root-pass password ''; 		echo mysql-community-server mysql-community-server/remove-test-db select false; 	} | debconf-set-selections 	&& apt-get update && apt-get install -y mysql-server="${MYSQL_VERSION}" && rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Wed, 10 May 2017 03:28:40 GMT
RUN sed -Ei 's/^(bind-address|log)/#&/' /etc/mysql/mysql.conf.d/mysqld.cnf 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 10 May 2017 03:28:41 GMT
VOLUME [/var/lib/mysql]
# Wed, 10 May 2017 03:28:42 GMT
COPY file:5453fdbdb142b28e9aa4df64d5e1f42a740f018457cb1c65d113b947858ae314 in /usr/local/bin/ 
# Wed, 10 May 2017 03:28:44 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 10 May 2017 03:28:45 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 10 May 2017 03:28:45 GMT
EXPOSE 3306/tcp
# Wed, 10 May 2017 03:28:46 GMT
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
	-	`sha256:a1033d2f1825e47d2929ad0e15207097a5600406479ca7a67b56f50dd707fcc6`  
		Last Modified: Sat, 13 May 2017 08:01:19 GMT  
		Size: 10.7 MB (10715803 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d6792140dcc88fa160ad0e34da08da30fdcb6e02fefd1cd071f584b5338586a`  
		Last Modified: Sat, 13 May 2017 08:01:12 GMT  
		Size: 19.2 KB (19200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd3adf03d6e64c0d5e59171e65490e6cb3fd552e9fd4ce81a1976ebb25447325`  
		Last Modified: Sat, 13 May 2017 08:01:12 GMT  
		Size: 217.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d79d216fd92b726ec5a2351140f53829dce76749cd54a92e32b520cef90a90e1`  
		Last Modified: Sat, 13 May 2017 08:01:28 GMT  
		Size: 79.0 MB (78961159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3c25bdeb4f448f9c865abba2bb104137eba16bbe87e8507b721e01a6c27797e`  
		Last Modified: Sat, 13 May 2017 08:01:12 GMT  
		Size: 936.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02556e8f331fdf559a93c845dc80cffad8b7c4f940ab239529756903ad07e705`  
		Last Modified: Sat, 13 May 2017 08:01:12 GMT  
		Size: 2.7 KB (2732 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bed508a9e77fec63ff551f68e66836cbcd39404565ca36003bf54be2e533c9a`  
		Last Modified: Sat, 13 May 2017 08:01:13 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:latest`

```console
$ docker pull mysql@sha256:2f4b1900c0ee53f344564db8d85733bd8d70b0a78cd00e6d92dc107224fc84a5
```

-	Platforms:
	-	linux; amd64

### `mysql:latest` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **143.6 MB (143594131 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e799c7f9ae9cd01c2e78e26952767b96aef59a5e62f02305610448da47f8ca6b`
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
# Wed, 10 May 2017 03:28:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		pwgen 		openssl 		perl 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 03:28:05 GMT
RUN set -ex; 	key='A4A9406876FCBD3C456770C88C718D3B5072E1F5'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/mysql.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list > /dev/null
# Wed, 10 May 2017 03:28:06 GMT
ENV MYSQL_MAJOR=5.7
# Wed, 10 May 2017 03:28:07 GMT
ENV MYSQL_VERSION=5.7.18-1debian8
# Wed, 10 May 2017 03:28:09 GMT
RUN echo "deb http://repo.mysql.com/apt/debian/ jessie mysql-${MYSQL_MAJOR}" > /etc/apt/sources.list.d/mysql.list
# Wed, 10 May 2017 03:28:38 GMT
RUN { 		echo mysql-community-server mysql-community-server/data-dir select ''; 		echo mysql-community-server mysql-community-server/root-pass password ''; 		echo mysql-community-server mysql-community-server/re-root-pass password ''; 		echo mysql-community-server mysql-community-server/remove-test-db select false; 	} | debconf-set-selections 	&& apt-get update && apt-get install -y mysql-server="${MYSQL_VERSION}" && rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Wed, 10 May 2017 03:28:40 GMT
RUN sed -Ei 's/^(bind-address|log)/#&/' /etc/mysql/mysql.conf.d/mysqld.cnf 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 10 May 2017 03:28:41 GMT
VOLUME [/var/lib/mysql]
# Wed, 10 May 2017 03:28:42 GMT
COPY file:5453fdbdb142b28e9aa4df64d5e1f42a740f018457cb1c65d113b947858ae314 in /usr/local/bin/ 
# Wed, 10 May 2017 03:28:44 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 10 May 2017 03:28:45 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 10 May 2017 03:28:45 GMT
EXPOSE 3306/tcp
# Wed, 10 May 2017 03:28:46 GMT
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
	-	`sha256:a1033d2f1825e47d2929ad0e15207097a5600406479ca7a67b56f50dd707fcc6`  
		Last Modified: Sat, 13 May 2017 08:01:19 GMT  
		Size: 10.7 MB (10715803 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d6792140dcc88fa160ad0e34da08da30fdcb6e02fefd1cd071f584b5338586a`  
		Last Modified: Sat, 13 May 2017 08:01:12 GMT  
		Size: 19.2 KB (19200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd3adf03d6e64c0d5e59171e65490e6cb3fd552e9fd4ce81a1976ebb25447325`  
		Last Modified: Sat, 13 May 2017 08:01:12 GMT  
		Size: 217.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d79d216fd92b726ec5a2351140f53829dce76749cd54a92e32b520cef90a90e1`  
		Last Modified: Sat, 13 May 2017 08:01:28 GMT  
		Size: 79.0 MB (78961159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3c25bdeb4f448f9c865abba2bb104137eba16bbe87e8507b721e01a6c27797e`  
		Last Modified: Sat, 13 May 2017 08:01:12 GMT  
		Size: 936.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02556e8f331fdf559a93c845dc80cffad8b7c4f940ab239529756903ad07e705`  
		Last Modified: Sat, 13 May 2017 08:01:12 GMT  
		Size: 2.7 KB (2732 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bed508a9e77fec63ff551f68e66836cbcd39404565ca36003bf54be2e533c9a`  
		Last Modified: Sat, 13 May 2017 08:01:13 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:5.6.36`

```console
$ docker pull mysql@sha256:84372107beb1de34bd4673049ea61bc35f374a2b4f19fd5a3abd4d0a2a50b715
```

-	Platforms:
	-	linux; amd64

### `mysql:5.6.36` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.8 MB (104825611 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ed7b6c642b9dde55c6c86bc58b5d3b571e1a9327c49e32a49433cfe5e792b24d`
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
# Wed, 10 May 2017 03:31:13 GMT
RUN apt-get update && apt-get install -y perl pwgen --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 03:31:17 GMT
RUN set -ex; 	key='A4A9406876FCBD3C456770C88C718D3B5072E1F5'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/mysql.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list > /dev/null
# Wed, 10 May 2017 03:31:18 GMT
ENV MYSQL_MAJOR=5.6
# Wed, 10 May 2017 03:31:19 GMT
ENV MYSQL_VERSION=5.6.36-1debian8
# Wed, 10 May 2017 03:31:21 GMT
RUN echo "deb http://repo.mysql.com/apt/debian/ jessie mysql-${MYSQL_MAJOR}" > /etc/apt/sources.list.d/mysql.list
# Wed, 10 May 2017 03:31:47 GMT
RUN { 		echo mysql-community-server mysql-community-server/data-dir select ''; 		echo mysql-community-server mysql-community-server/root-pass password ''; 		echo mysql-community-server mysql-community-server/re-root-pass password ''; 		echo mysql-community-server mysql-community-server/remove-test-db select false; 	} | debconf-set-selections 	&& apt-get update && apt-get install -y mysql-server="${MYSQL_VERSION}" && rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Wed, 10 May 2017 03:31:49 GMT
RUN sed -Ei 's/^(bind-address|log)/#&/' /etc/mysql/my.cnf 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 10 May 2017 03:31:50 GMT
VOLUME [/var/lib/mysql]
# Wed, 10 May 2017 03:31:51 GMT
COPY file:b4e423a0d95974d5269d37431aafc0c69cb304dc09ab3f496dbcfdfbc2dbd818 in /usr/local/bin/ 
# Wed, 10 May 2017 03:31:52 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 10 May 2017 03:31:53 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 10 May 2017 03:31:54 GMT
EXPOSE 3306/tcp
# Wed, 10 May 2017 03:31:55 GMT
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
	-	`sha256:d4657fda01d929a4b7a6bc2806b89cea11871dbd3cbdea9487cb6a6fd543ac4c`  
		Last Modified: Sat, 13 May 2017 08:00:18 GMT  
		Size: 8.3 MB (8260958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5278a445e5d5390bb55a7cbbcf66853f23a2a84a25a96bb239115e59ddba3cd`  
		Last Modified: Sat, 13 May 2017 08:00:12 GMT  
		Size: 19.2 KB (19202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:197c0b76f2382c44c86e9ac95310d54a497a14b6ed502949f00da7f3de47fc80`  
		Last Modified: Sat, 13 May 2017 08:00:12 GMT  
		Size: 217.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f54c5432bac49e350f80cc84f1dfc38a9ca314295ef0f2f0a754b5e4d7f3e477`  
		Last Modified: Sat, 13 May 2017 08:00:22 GMT  
		Size: 42.6 MB (42647701 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c26b15abee8a4fe69648f6f915e8e3f44f8875a216f522bcc92472cb7c946b0b`  
		Last Modified: Sat, 13 May 2017 08:00:12 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80dbe6022c18bad640830d0ba08adb9d54974d72ea2419a9053150bf3016df9d`  
		Last Modified: Sat, 13 May 2017 08:00:12 GMT  
		Size: 2.6 KB (2596 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:435678c0961261d150aa0273a1bd3edd7f418ec1490ca23f8e908c13af183050`  
		Last Modified: Sat, 13 May 2017 08:00:13 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:5.6`

```console
$ docker pull mysql@sha256:84372107beb1de34bd4673049ea61bc35f374a2b4f19fd5a3abd4d0a2a50b715
```

-	Platforms:
	-	linux; amd64

### `mysql:5.6` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.8 MB (104825611 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ed7b6c642b9dde55c6c86bc58b5d3b571e1a9327c49e32a49433cfe5e792b24d`
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
# Wed, 10 May 2017 03:31:13 GMT
RUN apt-get update && apt-get install -y perl pwgen --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 03:31:17 GMT
RUN set -ex; 	key='A4A9406876FCBD3C456770C88C718D3B5072E1F5'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/mysql.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list > /dev/null
# Wed, 10 May 2017 03:31:18 GMT
ENV MYSQL_MAJOR=5.6
# Wed, 10 May 2017 03:31:19 GMT
ENV MYSQL_VERSION=5.6.36-1debian8
# Wed, 10 May 2017 03:31:21 GMT
RUN echo "deb http://repo.mysql.com/apt/debian/ jessie mysql-${MYSQL_MAJOR}" > /etc/apt/sources.list.d/mysql.list
# Wed, 10 May 2017 03:31:47 GMT
RUN { 		echo mysql-community-server mysql-community-server/data-dir select ''; 		echo mysql-community-server mysql-community-server/root-pass password ''; 		echo mysql-community-server mysql-community-server/re-root-pass password ''; 		echo mysql-community-server mysql-community-server/remove-test-db select false; 	} | debconf-set-selections 	&& apt-get update && apt-get install -y mysql-server="${MYSQL_VERSION}" && rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Wed, 10 May 2017 03:31:49 GMT
RUN sed -Ei 's/^(bind-address|log)/#&/' /etc/mysql/my.cnf 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 10 May 2017 03:31:50 GMT
VOLUME [/var/lib/mysql]
# Wed, 10 May 2017 03:31:51 GMT
COPY file:b4e423a0d95974d5269d37431aafc0c69cb304dc09ab3f496dbcfdfbc2dbd818 in /usr/local/bin/ 
# Wed, 10 May 2017 03:31:52 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 10 May 2017 03:31:53 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 10 May 2017 03:31:54 GMT
EXPOSE 3306/tcp
# Wed, 10 May 2017 03:31:55 GMT
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
	-	`sha256:d4657fda01d929a4b7a6bc2806b89cea11871dbd3cbdea9487cb6a6fd543ac4c`  
		Last Modified: Sat, 13 May 2017 08:00:18 GMT  
		Size: 8.3 MB (8260958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5278a445e5d5390bb55a7cbbcf66853f23a2a84a25a96bb239115e59ddba3cd`  
		Last Modified: Sat, 13 May 2017 08:00:12 GMT  
		Size: 19.2 KB (19202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:197c0b76f2382c44c86e9ac95310d54a497a14b6ed502949f00da7f3de47fc80`  
		Last Modified: Sat, 13 May 2017 08:00:12 GMT  
		Size: 217.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f54c5432bac49e350f80cc84f1dfc38a9ca314295ef0f2f0a754b5e4d7f3e477`  
		Last Modified: Sat, 13 May 2017 08:00:22 GMT  
		Size: 42.6 MB (42647701 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c26b15abee8a4fe69648f6f915e8e3f44f8875a216f522bcc92472cb7c946b0b`  
		Last Modified: Sat, 13 May 2017 08:00:12 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80dbe6022c18bad640830d0ba08adb9d54974d72ea2419a9053150bf3016df9d`  
		Last Modified: Sat, 13 May 2017 08:00:12 GMT  
		Size: 2.6 KB (2596 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:435678c0961261d150aa0273a1bd3edd7f418ec1490ca23f8e908c13af183050`  
		Last Modified: Sat, 13 May 2017 08:00:13 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:5.5.56`

```console
$ docker pull mysql@sha256:7efeb7c65a2b36ceffa0db77ff74fa9b2dc6b32a8f4ee6d8ef7ae1d0197af3a9
```

-	Platforms:
	-	linux; amd64

### `mysql:5.5.56` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **89.5 MB (89486486 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:33efe4d711c7502f0dcfd2fd8af8ac378b6caa9cd8f14a69dc81a74a743f6369`
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
# Wed, 10 May 2017 03:29:18 GMT
RUN apt-get update && apt-get install -y perl --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 03:29:27 GMT
RUN apt-get update && apt-get install -y libaio1 pwgen && rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 03:29:27 GMT
ENV MYSQL_MAJOR=5.5
# Wed, 10 May 2017 03:29:29 GMT
ENV MYSQL_VERSION=5.5.56
# Wed, 10 May 2017 03:30:26 GMT
RUN apt-get update && apt-get install -y ca-certificates wget --no-install-recommends && rm -rf /var/lib/apt/lists/* 	&& wget "https://cdn.mysql.com/Downloads/MySQL-$MYSQL_MAJOR/mysql-$MYSQL_VERSION-linux-glibc2.5-x86_64.tar.gz" -O mysql.tar.gz 	&& wget "https://cdn.mysql.com/Downloads/MySQL-$MYSQL_MAJOR/mysql-$MYSQL_VERSION-linux-glibc2.5-x86_64.tar.gz.asc" -O mysql.tar.gz.asc 	&& apt-get purge -y --auto-remove ca-certificates wget 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys A4A9406876FCBD3C456770C88C718D3B5072E1F5 	&& gpg --batch --verify mysql.tar.gz.asc mysql.tar.gz 	&& rm -r "$GNUPGHOME" mysql.tar.gz.asc 	&& mkdir /usr/local/mysql 	&& tar -xzf mysql.tar.gz -C /usr/local/mysql --strip-components=1 	&& rm mysql.tar.gz 	&& rm -rf /usr/local/mysql/mysql-test /usr/local/mysql/sql-bench 	&& rm -rf /usr/local/mysql/bin/*-debug /usr/local/mysql/bin/*_embedded 	&& find /usr/local/mysql -type f -name "*.a" -delete 	&& apt-get update && apt-get install -y binutils && rm -rf /var/lib/apt/lists/* 	&& { find /usr/local/mysql -type f -executable -exec strip --strip-all '{}' + || true; } 	&& apt-get purge -y --auto-remove binutils
# Wed, 10 May 2017 03:30:27 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/mysql/bin:/usr/local/mysql/scripts
# Wed, 10 May 2017 03:30:29 GMT
RUN mkdir -p /etc/mysql/conf.d 	&& { 		echo '[mysqld]'; 		echo 'skip-host-cache'; 		echo 'skip-name-resolve'; 		echo 'datadir = /var/lib/mysql'; 		echo '!includedir /etc/mysql/conf.d/'; 	} > /etc/mysql/my.cnf
# Wed, 10 May 2017 03:30:30 GMT
RUN mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Wed, 10 May 2017 03:30:32 GMT
VOLUME [/var/lib/mysql]
# Wed, 10 May 2017 03:30:33 GMT
COPY file:0dfb1be3ff2b71842e1c4ae21d0e9f4b9a103296130d270c5072557604f5ca73 in /usr/local/bin/ 
# Wed, 10 May 2017 03:30:34 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 10 May 2017 03:30:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 10 May 2017 03:30:36 GMT
EXPOSE 3306/tcp
# Wed, 10 May 2017 03:30:37 GMT
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
	-	`sha256:73b1a15c29e935bf1cc29cec4a05cb67eeb62495ca4e807309c99f1bb2db218c`  
		Last Modified: Sat, 13 May 2017 07:59:22 GMT  
		Size: 8.2 MB (8240732 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2e06b72856388d682dc54d20578e81b3ec824d3a750e975f9384ea57ebb9c3a`  
		Last Modified: Sat, 13 May 2017 07:59:15 GMT  
		Size: 101.6 KB (101575 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:758c7b89ac9c9a0ac1233cd17ea6d5b66cff8f5a908b3dee74de81267c5fdcb8`  
		Last Modified: Sat, 13 May 2017 07:59:22 GMT  
		Size: 27.2 MB (27247061 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f64bbcd21342baf4a5ffbe4f42efef8d1979c35b3c3ec4b8cff80fd1b043e309`  
		Last Modified: Sat, 13 May 2017 07:59:15 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41cfeaf06b664ccb500d0da395ff6cfbe0fdbacb4bc22a8fcdfdc4e846de404e`  
		Last Modified: Sat, 13 May 2017 07:59:15 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e92dacd24c017d82b5c2d00c1ba71ad854fd66b4a118c9c4a2273f69f27fffa`  
		Last Modified: Sat, 13 May 2017 07:59:15 GMT  
		Size: 2.6 KB (2625 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18f1191e517974c09f2ea5a5098a79813f0d3ff5e729b0cb13285b7539698660`  
		Last Modified: Sat, 13 May 2017 07:59:15 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:5.5`

```console
$ docker pull mysql@sha256:7efeb7c65a2b36ceffa0db77ff74fa9b2dc6b32a8f4ee6d8ef7ae1d0197af3a9
```

-	Platforms:
	-	linux; amd64

### `mysql:5.5` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **89.5 MB (89486486 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:33efe4d711c7502f0dcfd2fd8af8ac378b6caa9cd8f14a69dc81a74a743f6369`
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
# Wed, 10 May 2017 03:29:18 GMT
RUN apt-get update && apt-get install -y perl --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 03:29:27 GMT
RUN apt-get update && apt-get install -y libaio1 pwgen && rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 03:29:27 GMT
ENV MYSQL_MAJOR=5.5
# Wed, 10 May 2017 03:29:29 GMT
ENV MYSQL_VERSION=5.5.56
# Wed, 10 May 2017 03:30:26 GMT
RUN apt-get update && apt-get install -y ca-certificates wget --no-install-recommends && rm -rf /var/lib/apt/lists/* 	&& wget "https://cdn.mysql.com/Downloads/MySQL-$MYSQL_MAJOR/mysql-$MYSQL_VERSION-linux-glibc2.5-x86_64.tar.gz" -O mysql.tar.gz 	&& wget "https://cdn.mysql.com/Downloads/MySQL-$MYSQL_MAJOR/mysql-$MYSQL_VERSION-linux-glibc2.5-x86_64.tar.gz.asc" -O mysql.tar.gz.asc 	&& apt-get purge -y --auto-remove ca-certificates wget 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys A4A9406876FCBD3C456770C88C718D3B5072E1F5 	&& gpg --batch --verify mysql.tar.gz.asc mysql.tar.gz 	&& rm -r "$GNUPGHOME" mysql.tar.gz.asc 	&& mkdir /usr/local/mysql 	&& tar -xzf mysql.tar.gz -C /usr/local/mysql --strip-components=1 	&& rm mysql.tar.gz 	&& rm -rf /usr/local/mysql/mysql-test /usr/local/mysql/sql-bench 	&& rm -rf /usr/local/mysql/bin/*-debug /usr/local/mysql/bin/*_embedded 	&& find /usr/local/mysql -type f -name "*.a" -delete 	&& apt-get update && apt-get install -y binutils && rm -rf /var/lib/apt/lists/* 	&& { find /usr/local/mysql -type f -executable -exec strip --strip-all '{}' + || true; } 	&& apt-get purge -y --auto-remove binutils
# Wed, 10 May 2017 03:30:27 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/mysql/bin:/usr/local/mysql/scripts
# Wed, 10 May 2017 03:30:29 GMT
RUN mkdir -p /etc/mysql/conf.d 	&& { 		echo '[mysqld]'; 		echo 'skip-host-cache'; 		echo 'skip-name-resolve'; 		echo 'datadir = /var/lib/mysql'; 		echo '!includedir /etc/mysql/conf.d/'; 	} > /etc/mysql/my.cnf
# Wed, 10 May 2017 03:30:30 GMT
RUN mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Wed, 10 May 2017 03:30:32 GMT
VOLUME [/var/lib/mysql]
# Wed, 10 May 2017 03:30:33 GMT
COPY file:0dfb1be3ff2b71842e1c4ae21d0e9f4b9a103296130d270c5072557604f5ca73 in /usr/local/bin/ 
# Wed, 10 May 2017 03:30:34 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 10 May 2017 03:30:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 10 May 2017 03:30:36 GMT
EXPOSE 3306/tcp
# Wed, 10 May 2017 03:30:37 GMT
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
	-	`sha256:73b1a15c29e935bf1cc29cec4a05cb67eeb62495ca4e807309c99f1bb2db218c`  
		Last Modified: Sat, 13 May 2017 07:59:22 GMT  
		Size: 8.2 MB (8240732 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2e06b72856388d682dc54d20578e81b3ec824d3a750e975f9384ea57ebb9c3a`  
		Last Modified: Sat, 13 May 2017 07:59:15 GMT  
		Size: 101.6 KB (101575 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:758c7b89ac9c9a0ac1233cd17ea6d5b66cff8f5a908b3dee74de81267c5fdcb8`  
		Last Modified: Sat, 13 May 2017 07:59:22 GMT  
		Size: 27.2 MB (27247061 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f64bbcd21342baf4a5ffbe4f42efef8d1979c35b3c3ec4b8cff80fd1b043e309`  
		Last Modified: Sat, 13 May 2017 07:59:15 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41cfeaf06b664ccb500d0da395ff6cfbe0fdbacb4bc22a8fcdfdc4e846de404e`  
		Last Modified: Sat, 13 May 2017 07:59:15 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e92dacd24c017d82b5c2d00c1ba71ad854fd66b4a118c9c4a2273f69f27fffa`  
		Last Modified: Sat, 13 May 2017 07:59:15 GMT  
		Size: 2.6 KB (2625 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18f1191e517974c09f2ea5a5098a79813f0d3ff5e729b0cb13285b7539698660`  
		Last Modified: Sat, 13 May 2017 07:59:15 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
