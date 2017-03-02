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
$ docker pull mysql@sha256:d8cc35a050fd51880f04cd11f13e4ed47ccec36ade0717ec3fa56ed1e6a22757
```

-	Platforms:
	-	linux; amd64

### `mysql:8.0.0` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.0 MB (132018762 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4ca95ca6339ccb0f59e37ec81d2bfebb07c30917db9d4a8ee82c61fbe14aa04e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 27 Feb 2017 20:34:36 GMT
ADD file:41ac8d85ee35954bf6c8353d9681a045ba260aa9a96dbbded7bcd6e37ee49bea in / 
# Mon, 27 Feb 2017 20:34:37 GMT
CMD ["/bin/bash"]
# Tue, 28 Feb 2017 05:53:04 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Tue, 28 Feb 2017 05:53:05 GMT
ENV GOSU_VERSION=1.7
# Tue, 28 Feb 2017 05:53:30 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 28 Feb 2017 05:53:31 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 28 Feb 2017 06:56:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		pwgen 		openssl 		perl 	&& rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 06:56:35 GMT
RUN set -ex; 	key='A4A9406876FCBD3C456770C88C718D3B5072E1F5'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/mysql.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list > /dev/null
# Tue, 28 Feb 2017 06:58:31 GMT
ENV MYSQL_MAJOR=8.0
# Tue, 28 Feb 2017 06:58:31 GMT
ENV MYSQL_VERSION=8.0.0-dmr-1debian8
# Tue, 28 Feb 2017 06:58:32 GMT
RUN echo "deb http://repo.mysql.com/apt/debian/ jessie mysql-${MYSQL_MAJOR}" > /etc/apt/sources.list.d/mysql.list
# Tue, 28 Feb 2017 06:58:54 GMT
RUN { 		echo mysql-community-server mysql-community-server/data-dir select ''; 		echo mysql-community-server mysql-community-server/root-pass password ''; 		echo mysql-community-server mysql-community-server/re-root-pass password ''; 		echo mysql-community-server mysql-community-server/remove-test-db select false; 	} | debconf-set-selections 	&& apt-get update && apt-get install -y mysql-server="${MYSQL_VERSION}" && rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Tue, 28 Feb 2017 06:58:55 GMT
RUN sed -Ei 's/^(bind-address|log)/#&/' /etc/mysql/mysql.conf.d/mysqld.cnf 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Tue, 28 Feb 2017 06:58:55 GMT
VOLUME [/var/lib/mysql]
# Tue, 28 Feb 2017 06:58:56 GMT
COPY file:867aa59679676139e320e7c028375612a501f970b832ff0910b5fd8df04dd5f1 in /usr/local/bin/ 
# Tue, 28 Feb 2017 06:58:57 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 28 Feb 2017 06:58:57 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 28 Feb 2017 06:58:57 GMT
EXPOSE 3306/tcp
# Tue, 28 Feb 2017 06:58:58 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:693502eb7dfbc6b94964ae66ebc72d3e32facd981c72995b09794f1e87bac184`  
		Last Modified: Mon, 27 Feb 2017 20:40:26 GMT  
		Size: 51.4 MB (51363374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08d0e9d74b1b9abdb93544280f11101fb64983ad806b9fff134ee8e4e5a6d9cf`  
		Last Modified: Thu, 02 Mar 2017 01:22:35 GMT  
		Size: 2.0 KB (2040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e700ebfbe6bc85430bd1e977c74b233c036049dfa3049f361d336329a1d50f6b`  
		Last Modified: Thu, 02 Mar 2017 01:22:36 GMT  
		Size: 1.2 MB (1216886 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f718f1976629e26d27f2912f8b33d77b7e1b2f882ab3eb753ac5b582793d6135`  
		Last Modified: Thu, 02 Mar 2017 01:22:33 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:575a0830e27816ca0a6ad1fc5d0a6fbf2debad4316937fd776fe3abd4ae7d1bd`  
		Last Modified: Thu, 02 Mar 2017 01:57:09 GMT  
		Size: 10.6 MB (10577139 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8461dfcf361d21fe501a48b6f7f6770ed87baa955441c231b7d90edb2c4610b1`  
		Last Modified: Thu, 02 Mar 2017 01:57:03 GMT  
		Size: 19.2 KB (19182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7ad8eb7acc8a8f12245e2153771d6eb2c76c063d6cd49e99e154eb96864f809`  
		Last Modified: Thu, 02 Mar 2017 01:58:40 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:303ebb39f2e261d78ee5e33a169836ecb71dfeb35eafa2db610802341fdbfd78`  
		Last Modified: Thu, 02 Mar 2017 01:59:02 GMT  
		Size: 68.8 MB (68836228 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad691ef974088af89e49978bfa2e44a55c6518c56c1b298d53d0682d7b799628`  
		Last Modified: Thu, 02 Mar 2017 01:58:40 GMT  
		Size: 883.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8ca60873f1cc60cdd665c71d798840dc6218981a8d2c8a210c52cc54a6f9ec2`  
		Last Modified: Thu, 02 Mar 2017 01:58:41 GMT  
		Size: 2.6 KB (2581 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4490cff4444868594ab479bb4f92f62ab5ef5b9889e5486b4c56cf91eaa1e98a`  
		Last Modified: Thu, 02 Mar 2017 01:58:40 GMT  
		Size: 119.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:8.0`

```console
$ docker pull mysql@sha256:d8cc35a050fd51880f04cd11f13e4ed47ccec36ade0717ec3fa56ed1e6a22757
```

-	Platforms:
	-	linux; amd64

### `mysql:8.0` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.0 MB (132018762 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4ca95ca6339ccb0f59e37ec81d2bfebb07c30917db9d4a8ee82c61fbe14aa04e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 27 Feb 2017 20:34:36 GMT
ADD file:41ac8d85ee35954bf6c8353d9681a045ba260aa9a96dbbded7bcd6e37ee49bea in / 
# Mon, 27 Feb 2017 20:34:37 GMT
CMD ["/bin/bash"]
# Tue, 28 Feb 2017 05:53:04 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Tue, 28 Feb 2017 05:53:05 GMT
ENV GOSU_VERSION=1.7
# Tue, 28 Feb 2017 05:53:30 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 28 Feb 2017 05:53:31 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 28 Feb 2017 06:56:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		pwgen 		openssl 		perl 	&& rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 06:56:35 GMT
RUN set -ex; 	key='A4A9406876FCBD3C456770C88C718D3B5072E1F5'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/mysql.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list > /dev/null
# Tue, 28 Feb 2017 06:58:31 GMT
ENV MYSQL_MAJOR=8.0
# Tue, 28 Feb 2017 06:58:31 GMT
ENV MYSQL_VERSION=8.0.0-dmr-1debian8
# Tue, 28 Feb 2017 06:58:32 GMT
RUN echo "deb http://repo.mysql.com/apt/debian/ jessie mysql-${MYSQL_MAJOR}" > /etc/apt/sources.list.d/mysql.list
# Tue, 28 Feb 2017 06:58:54 GMT
RUN { 		echo mysql-community-server mysql-community-server/data-dir select ''; 		echo mysql-community-server mysql-community-server/root-pass password ''; 		echo mysql-community-server mysql-community-server/re-root-pass password ''; 		echo mysql-community-server mysql-community-server/remove-test-db select false; 	} | debconf-set-selections 	&& apt-get update && apt-get install -y mysql-server="${MYSQL_VERSION}" && rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Tue, 28 Feb 2017 06:58:55 GMT
RUN sed -Ei 's/^(bind-address|log)/#&/' /etc/mysql/mysql.conf.d/mysqld.cnf 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Tue, 28 Feb 2017 06:58:55 GMT
VOLUME [/var/lib/mysql]
# Tue, 28 Feb 2017 06:58:56 GMT
COPY file:867aa59679676139e320e7c028375612a501f970b832ff0910b5fd8df04dd5f1 in /usr/local/bin/ 
# Tue, 28 Feb 2017 06:58:57 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 28 Feb 2017 06:58:57 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 28 Feb 2017 06:58:57 GMT
EXPOSE 3306/tcp
# Tue, 28 Feb 2017 06:58:58 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:693502eb7dfbc6b94964ae66ebc72d3e32facd981c72995b09794f1e87bac184`  
		Last Modified: Mon, 27 Feb 2017 20:40:26 GMT  
		Size: 51.4 MB (51363374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08d0e9d74b1b9abdb93544280f11101fb64983ad806b9fff134ee8e4e5a6d9cf`  
		Last Modified: Thu, 02 Mar 2017 01:22:35 GMT  
		Size: 2.0 KB (2040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e700ebfbe6bc85430bd1e977c74b233c036049dfa3049f361d336329a1d50f6b`  
		Last Modified: Thu, 02 Mar 2017 01:22:36 GMT  
		Size: 1.2 MB (1216886 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f718f1976629e26d27f2912f8b33d77b7e1b2f882ab3eb753ac5b582793d6135`  
		Last Modified: Thu, 02 Mar 2017 01:22:33 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:575a0830e27816ca0a6ad1fc5d0a6fbf2debad4316937fd776fe3abd4ae7d1bd`  
		Last Modified: Thu, 02 Mar 2017 01:57:09 GMT  
		Size: 10.6 MB (10577139 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8461dfcf361d21fe501a48b6f7f6770ed87baa955441c231b7d90edb2c4610b1`  
		Last Modified: Thu, 02 Mar 2017 01:57:03 GMT  
		Size: 19.2 KB (19182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7ad8eb7acc8a8f12245e2153771d6eb2c76c063d6cd49e99e154eb96864f809`  
		Last Modified: Thu, 02 Mar 2017 01:58:40 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:303ebb39f2e261d78ee5e33a169836ecb71dfeb35eafa2db610802341fdbfd78`  
		Last Modified: Thu, 02 Mar 2017 01:59:02 GMT  
		Size: 68.8 MB (68836228 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad691ef974088af89e49978bfa2e44a55c6518c56c1b298d53d0682d7b799628`  
		Last Modified: Thu, 02 Mar 2017 01:58:40 GMT  
		Size: 883.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8ca60873f1cc60cdd665c71d798840dc6218981a8d2c8a210c52cc54a6f9ec2`  
		Last Modified: Thu, 02 Mar 2017 01:58:41 GMT  
		Size: 2.6 KB (2581 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4490cff4444868594ab479bb4f92f62ab5ef5b9889e5486b4c56cf91eaa1e98a`  
		Last Modified: Thu, 02 Mar 2017 01:58:40 GMT  
		Size: 119.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:8`

```console
$ docker pull mysql@sha256:d8cc35a050fd51880f04cd11f13e4ed47ccec36ade0717ec3fa56ed1e6a22757
```

-	Platforms:
	-	linux; amd64

### `mysql:8` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.0 MB (132018762 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4ca95ca6339ccb0f59e37ec81d2bfebb07c30917db9d4a8ee82c61fbe14aa04e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 27 Feb 2017 20:34:36 GMT
ADD file:41ac8d85ee35954bf6c8353d9681a045ba260aa9a96dbbded7bcd6e37ee49bea in / 
# Mon, 27 Feb 2017 20:34:37 GMT
CMD ["/bin/bash"]
# Tue, 28 Feb 2017 05:53:04 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Tue, 28 Feb 2017 05:53:05 GMT
ENV GOSU_VERSION=1.7
# Tue, 28 Feb 2017 05:53:30 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 28 Feb 2017 05:53:31 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 28 Feb 2017 06:56:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		pwgen 		openssl 		perl 	&& rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 06:56:35 GMT
RUN set -ex; 	key='A4A9406876FCBD3C456770C88C718D3B5072E1F5'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/mysql.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list > /dev/null
# Tue, 28 Feb 2017 06:58:31 GMT
ENV MYSQL_MAJOR=8.0
# Tue, 28 Feb 2017 06:58:31 GMT
ENV MYSQL_VERSION=8.0.0-dmr-1debian8
# Tue, 28 Feb 2017 06:58:32 GMT
RUN echo "deb http://repo.mysql.com/apt/debian/ jessie mysql-${MYSQL_MAJOR}" > /etc/apt/sources.list.d/mysql.list
# Tue, 28 Feb 2017 06:58:54 GMT
RUN { 		echo mysql-community-server mysql-community-server/data-dir select ''; 		echo mysql-community-server mysql-community-server/root-pass password ''; 		echo mysql-community-server mysql-community-server/re-root-pass password ''; 		echo mysql-community-server mysql-community-server/remove-test-db select false; 	} | debconf-set-selections 	&& apt-get update && apt-get install -y mysql-server="${MYSQL_VERSION}" && rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Tue, 28 Feb 2017 06:58:55 GMT
RUN sed -Ei 's/^(bind-address|log)/#&/' /etc/mysql/mysql.conf.d/mysqld.cnf 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Tue, 28 Feb 2017 06:58:55 GMT
VOLUME [/var/lib/mysql]
# Tue, 28 Feb 2017 06:58:56 GMT
COPY file:867aa59679676139e320e7c028375612a501f970b832ff0910b5fd8df04dd5f1 in /usr/local/bin/ 
# Tue, 28 Feb 2017 06:58:57 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 28 Feb 2017 06:58:57 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 28 Feb 2017 06:58:57 GMT
EXPOSE 3306/tcp
# Tue, 28 Feb 2017 06:58:58 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:693502eb7dfbc6b94964ae66ebc72d3e32facd981c72995b09794f1e87bac184`  
		Last Modified: Mon, 27 Feb 2017 20:40:26 GMT  
		Size: 51.4 MB (51363374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08d0e9d74b1b9abdb93544280f11101fb64983ad806b9fff134ee8e4e5a6d9cf`  
		Last Modified: Thu, 02 Mar 2017 01:22:35 GMT  
		Size: 2.0 KB (2040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e700ebfbe6bc85430bd1e977c74b233c036049dfa3049f361d336329a1d50f6b`  
		Last Modified: Thu, 02 Mar 2017 01:22:36 GMT  
		Size: 1.2 MB (1216886 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f718f1976629e26d27f2912f8b33d77b7e1b2f882ab3eb753ac5b582793d6135`  
		Last Modified: Thu, 02 Mar 2017 01:22:33 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:575a0830e27816ca0a6ad1fc5d0a6fbf2debad4316937fd776fe3abd4ae7d1bd`  
		Last Modified: Thu, 02 Mar 2017 01:57:09 GMT  
		Size: 10.6 MB (10577139 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8461dfcf361d21fe501a48b6f7f6770ed87baa955441c231b7d90edb2c4610b1`  
		Last Modified: Thu, 02 Mar 2017 01:57:03 GMT  
		Size: 19.2 KB (19182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7ad8eb7acc8a8f12245e2153771d6eb2c76c063d6cd49e99e154eb96864f809`  
		Last Modified: Thu, 02 Mar 2017 01:58:40 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:303ebb39f2e261d78ee5e33a169836ecb71dfeb35eafa2db610802341fdbfd78`  
		Last Modified: Thu, 02 Mar 2017 01:59:02 GMT  
		Size: 68.8 MB (68836228 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad691ef974088af89e49978bfa2e44a55c6518c56c1b298d53d0682d7b799628`  
		Last Modified: Thu, 02 Mar 2017 01:58:40 GMT  
		Size: 883.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8ca60873f1cc60cdd665c71d798840dc6218981a8d2c8a210c52cc54a6f9ec2`  
		Last Modified: Thu, 02 Mar 2017 01:58:41 GMT  
		Size: 2.6 KB (2581 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4490cff4444868594ab479bb4f92f62ab5ef5b9889e5486b4c56cf91eaa1e98a`  
		Last Modified: Thu, 02 Mar 2017 01:58:40 GMT  
		Size: 119.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:5.7.17`

```console
$ docker pull mysql@sha256:6d4b33d189d62afe590ee4b35f92aae31ffa79ccc4d4db8bd3d3b893c8019596
```

-	Platforms:
	-	linux; amd64

### `mysql:5.7.17` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **140.2 MB (140186916 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:22be5748ecbeb09909d84e487838af7c64099959d707e5addfbb6177f334923e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 27 Feb 2017 20:34:36 GMT
ADD file:41ac8d85ee35954bf6c8353d9681a045ba260aa9a96dbbded7bcd6e37ee49bea in / 
# Mon, 27 Feb 2017 20:34:37 GMT
CMD ["/bin/bash"]
# Tue, 28 Feb 2017 05:53:04 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Tue, 28 Feb 2017 05:53:05 GMT
ENV GOSU_VERSION=1.7
# Tue, 28 Feb 2017 05:53:30 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 28 Feb 2017 05:53:31 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 28 Feb 2017 06:56:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		pwgen 		openssl 		perl 	&& rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 06:56:35 GMT
RUN set -ex; 	key='A4A9406876FCBD3C456770C88C718D3B5072E1F5'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/mysql.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list > /dev/null
# Tue, 28 Feb 2017 06:56:35 GMT
ENV MYSQL_MAJOR=5.7
# Tue, 28 Feb 2017 06:56:36 GMT
ENV MYSQL_VERSION=5.7.17-1debian8
# Tue, 28 Feb 2017 06:56:37 GMT
RUN echo "deb http://repo.mysql.com/apt/debian/ jessie mysql-${MYSQL_MAJOR}" > /etc/apt/sources.list.d/mysql.list
# Tue, 28 Feb 2017 06:56:59 GMT
RUN { 		echo mysql-community-server mysql-community-server/data-dir select ''; 		echo mysql-community-server mysql-community-server/root-pass password ''; 		echo mysql-community-server mysql-community-server/re-root-pass password ''; 		echo mysql-community-server mysql-community-server/remove-test-db select false; 	} | debconf-set-selections 	&& apt-get update && apt-get install -y mysql-server="${MYSQL_VERSION}" && rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Tue, 28 Feb 2017 06:57:00 GMT
RUN sed -Ei 's/^(bind-address|log)/#&/' /etc/mysql/mysql.conf.d/mysqld.cnf 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Tue, 28 Feb 2017 06:57:00 GMT
VOLUME [/var/lib/mysql]
# Tue, 28 Feb 2017 06:57:01 GMT
COPY file:867aa59679676139e320e7c028375612a501f970b832ff0910b5fd8df04dd5f1 in /usr/local/bin/ 
# Tue, 28 Feb 2017 06:57:02 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 28 Feb 2017 06:57:02 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 28 Feb 2017 06:57:03 GMT
EXPOSE 3306/tcp
# Tue, 28 Feb 2017 06:57:03 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:693502eb7dfbc6b94964ae66ebc72d3e32facd981c72995b09794f1e87bac184`  
		Last Modified: Mon, 27 Feb 2017 20:40:26 GMT  
		Size: 51.4 MB (51363374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08d0e9d74b1b9abdb93544280f11101fb64983ad806b9fff134ee8e4e5a6d9cf`  
		Last Modified: Thu, 02 Mar 2017 01:22:35 GMT  
		Size: 2.0 KB (2040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e700ebfbe6bc85430bd1e977c74b233c036049dfa3049f361d336329a1d50f6b`  
		Last Modified: Thu, 02 Mar 2017 01:22:36 GMT  
		Size: 1.2 MB (1216886 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f718f1976629e26d27f2912f8b33d77b7e1b2f882ab3eb753ac5b582793d6135`  
		Last Modified: Thu, 02 Mar 2017 01:22:33 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:575a0830e27816ca0a6ad1fc5d0a6fbf2debad4316937fd776fe3abd4ae7d1bd`  
		Last Modified: Thu, 02 Mar 2017 01:57:09 GMT  
		Size: 10.6 MB (10577139 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8461dfcf361d21fe501a48b6f7f6770ed87baa955441c231b7d90edb2c4610b1`  
		Last Modified: Thu, 02 Mar 2017 01:57:03 GMT  
		Size: 19.2 KB (19182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:349434898dfbf61be465ad752feb5c059e4e9325d4e173c9622d03905253f56c`  
		Last Modified: Thu, 02 Mar 2017 01:57:01 GMT  
		Size: 218.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78d3515224431f614af43bd5be2d15cffebd51645abc6fd2d7408599096dcbb3`  
		Last Modified: Thu, 02 Mar 2017 01:57:25 GMT  
		Size: 77.0 MB (77004327 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21897ab469526dab51c163271dd6e5b660ca43f152f02f53c40daf3d18819d08`  
		Last Modified: Thu, 02 Mar 2017 01:57:01 GMT  
		Size: 935.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca6ffbbedc106c53ab4889b4b4b52901e333423dd486fb9f0ed02c2f3ba181e0`  
		Last Modified: Thu, 02 Mar 2017 01:57:01 GMT  
		Size: 2.6 KB (2581 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba8ff064032b01bdfdd5bc91f2d9c87370878f95065842023a409db57709e429`  
		Last Modified: Thu, 02 Mar 2017 01:57:01 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:5.7`

```console
$ docker pull mysql@sha256:6d4b33d189d62afe590ee4b35f92aae31ffa79ccc4d4db8bd3d3b893c8019596
```

-	Platforms:
	-	linux; amd64

### `mysql:5.7` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **140.2 MB (140186916 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:22be5748ecbeb09909d84e487838af7c64099959d707e5addfbb6177f334923e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 27 Feb 2017 20:34:36 GMT
ADD file:41ac8d85ee35954bf6c8353d9681a045ba260aa9a96dbbded7bcd6e37ee49bea in / 
# Mon, 27 Feb 2017 20:34:37 GMT
CMD ["/bin/bash"]
# Tue, 28 Feb 2017 05:53:04 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Tue, 28 Feb 2017 05:53:05 GMT
ENV GOSU_VERSION=1.7
# Tue, 28 Feb 2017 05:53:30 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 28 Feb 2017 05:53:31 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 28 Feb 2017 06:56:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		pwgen 		openssl 		perl 	&& rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 06:56:35 GMT
RUN set -ex; 	key='A4A9406876FCBD3C456770C88C718D3B5072E1F5'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/mysql.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list > /dev/null
# Tue, 28 Feb 2017 06:56:35 GMT
ENV MYSQL_MAJOR=5.7
# Tue, 28 Feb 2017 06:56:36 GMT
ENV MYSQL_VERSION=5.7.17-1debian8
# Tue, 28 Feb 2017 06:56:37 GMT
RUN echo "deb http://repo.mysql.com/apt/debian/ jessie mysql-${MYSQL_MAJOR}" > /etc/apt/sources.list.d/mysql.list
# Tue, 28 Feb 2017 06:56:59 GMT
RUN { 		echo mysql-community-server mysql-community-server/data-dir select ''; 		echo mysql-community-server mysql-community-server/root-pass password ''; 		echo mysql-community-server mysql-community-server/re-root-pass password ''; 		echo mysql-community-server mysql-community-server/remove-test-db select false; 	} | debconf-set-selections 	&& apt-get update && apt-get install -y mysql-server="${MYSQL_VERSION}" && rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Tue, 28 Feb 2017 06:57:00 GMT
RUN sed -Ei 's/^(bind-address|log)/#&/' /etc/mysql/mysql.conf.d/mysqld.cnf 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Tue, 28 Feb 2017 06:57:00 GMT
VOLUME [/var/lib/mysql]
# Tue, 28 Feb 2017 06:57:01 GMT
COPY file:867aa59679676139e320e7c028375612a501f970b832ff0910b5fd8df04dd5f1 in /usr/local/bin/ 
# Tue, 28 Feb 2017 06:57:02 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 28 Feb 2017 06:57:02 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 28 Feb 2017 06:57:03 GMT
EXPOSE 3306/tcp
# Tue, 28 Feb 2017 06:57:03 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:693502eb7dfbc6b94964ae66ebc72d3e32facd981c72995b09794f1e87bac184`  
		Last Modified: Mon, 27 Feb 2017 20:40:26 GMT  
		Size: 51.4 MB (51363374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08d0e9d74b1b9abdb93544280f11101fb64983ad806b9fff134ee8e4e5a6d9cf`  
		Last Modified: Thu, 02 Mar 2017 01:22:35 GMT  
		Size: 2.0 KB (2040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e700ebfbe6bc85430bd1e977c74b233c036049dfa3049f361d336329a1d50f6b`  
		Last Modified: Thu, 02 Mar 2017 01:22:36 GMT  
		Size: 1.2 MB (1216886 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f718f1976629e26d27f2912f8b33d77b7e1b2f882ab3eb753ac5b582793d6135`  
		Last Modified: Thu, 02 Mar 2017 01:22:33 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:575a0830e27816ca0a6ad1fc5d0a6fbf2debad4316937fd776fe3abd4ae7d1bd`  
		Last Modified: Thu, 02 Mar 2017 01:57:09 GMT  
		Size: 10.6 MB (10577139 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8461dfcf361d21fe501a48b6f7f6770ed87baa955441c231b7d90edb2c4610b1`  
		Last Modified: Thu, 02 Mar 2017 01:57:03 GMT  
		Size: 19.2 KB (19182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:349434898dfbf61be465ad752feb5c059e4e9325d4e173c9622d03905253f56c`  
		Last Modified: Thu, 02 Mar 2017 01:57:01 GMT  
		Size: 218.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78d3515224431f614af43bd5be2d15cffebd51645abc6fd2d7408599096dcbb3`  
		Last Modified: Thu, 02 Mar 2017 01:57:25 GMT  
		Size: 77.0 MB (77004327 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21897ab469526dab51c163271dd6e5b660ca43f152f02f53c40daf3d18819d08`  
		Last Modified: Thu, 02 Mar 2017 01:57:01 GMT  
		Size: 935.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca6ffbbedc106c53ab4889b4b4b52901e333423dd486fb9f0ed02c2f3ba181e0`  
		Last Modified: Thu, 02 Mar 2017 01:57:01 GMT  
		Size: 2.6 KB (2581 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba8ff064032b01bdfdd5bc91f2d9c87370878f95065842023a409db57709e429`  
		Last Modified: Thu, 02 Mar 2017 01:57:01 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:5`

```console
$ docker pull mysql@sha256:6d4b33d189d62afe590ee4b35f92aae31ffa79ccc4d4db8bd3d3b893c8019596
```

-	Platforms:
	-	linux; amd64

### `mysql:5` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **140.2 MB (140186916 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:22be5748ecbeb09909d84e487838af7c64099959d707e5addfbb6177f334923e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 27 Feb 2017 20:34:36 GMT
ADD file:41ac8d85ee35954bf6c8353d9681a045ba260aa9a96dbbded7bcd6e37ee49bea in / 
# Mon, 27 Feb 2017 20:34:37 GMT
CMD ["/bin/bash"]
# Tue, 28 Feb 2017 05:53:04 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Tue, 28 Feb 2017 05:53:05 GMT
ENV GOSU_VERSION=1.7
# Tue, 28 Feb 2017 05:53:30 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 28 Feb 2017 05:53:31 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 28 Feb 2017 06:56:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		pwgen 		openssl 		perl 	&& rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 06:56:35 GMT
RUN set -ex; 	key='A4A9406876FCBD3C456770C88C718D3B5072E1F5'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/mysql.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list > /dev/null
# Tue, 28 Feb 2017 06:56:35 GMT
ENV MYSQL_MAJOR=5.7
# Tue, 28 Feb 2017 06:56:36 GMT
ENV MYSQL_VERSION=5.7.17-1debian8
# Tue, 28 Feb 2017 06:56:37 GMT
RUN echo "deb http://repo.mysql.com/apt/debian/ jessie mysql-${MYSQL_MAJOR}" > /etc/apt/sources.list.d/mysql.list
# Tue, 28 Feb 2017 06:56:59 GMT
RUN { 		echo mysql-community-server mysql-community-server/data-dir select ''; 		echo mysql-community-server mysql-community-server/root-pass password ''; 		echo mysql-community-server mysql-community-server/re-root-pass password ''; 		echo mysql-community-server mysql-community-server/remove-test-db select false; 	} | debconf-set-selections 	&& apt-get update && apt-get install -y mysql-server="${MYSQL_VERSION}" && rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Tue, 28 Feb 2017 06:57:00 GMT
RUN sed -Ei 's/^(bind-address|log)/#&/' /etc/mysql/mysql.conf.d/mysqld.cnf 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Tue, 28 Feb 2017 06:57:00 GMT
VOLUME [/var/lib/mysql]
# Tue, 28 Feb 2017 06:57:01 GMT
COPY file:867aa59679676139e320e7c028375612a501f970b832ff0910b5fd8df04dd5f1 in /usr/local/bin/ 
# Tue, 28 Feb 2017 06:57:02 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 28 Feb 2017 06:57:02 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 28 Feb 2017 06:57:03 GMT
EXPOSE 3306/tcp
# Tue, 28 Feb 2017 06:57:03 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:693502eb7dfbc6b94964ae66ebc72d3e32facd981c72995b09794f1e87bac184`  
		Last Modified: Mon, 27 Feb 2017 20:40:26 GMT  
		Size: 51.4 MB (51363374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08d0e9d74b1b9abdb93544280f11101fb64983ad806b9fff134ee8e4e5a6d9cf`  
		Last Modified: Thu, 02 Mar 2017 01:22:35 GMT  
		Size: 2.0 KB (2040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e700ebfbe6bc85430bd1e977c74b233c036049dfa3049f361d336329a1d50f6b`  
		Last Modified: Thu, 02 Mar 2017 01:22:36 GMT  
		Size: 1.2 MB (1216886 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f718f1976629e26d27f2912f8b33d77b7e1b2f882ab3eb753ac5b582793d6135`  
		Last Modified: Thu, 02 Mar 2017 01:22:33 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:575a0830e27816ca0a6ad1fc5d0a6fbf2debad4316937fd776fe3abd4ae7d1bd`  
		Last Modified: Thu, 02 Mar 2017 01:57:09 GMT  
		Size: 10.6 MB (10577139 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8461dfcf361d21fe501a48b6f7f6770ed87baa955441c231b7d90edb2c4610b1`  
		Last Modified: Thu, 02 Mar 2017 01:57:03 GMT  
		Size: 19.2 KB (19182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:349434898dfbf61be465ad752feb5c059e4e9325d4e173c9622d03905253f56c`  
		Last Modified: Thu, 02 Mar 2017 01:57:01 GMT  
		Size: 218.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78d3515224431f614af43bd5be2d15cffebd51645abc6fd2d7408599096dcbb3`  
		Last Modified: Thu, 02 Mar 2017 01:57:25 GMT  
		Size: 77.0 MB (77004327 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21897ab469526dab51c163271dd6e5b660ca43f152f02f53c40daf3d18819d08`  
		Last Modified: Thu, 02 Mar 2017 01:57:01 GMT  
		Size: 935.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca6ffbbedc106c53ab4889b4b4b52901e333423dd486fb9f0ed02c2f3ba181e0`  
		Last Modified: Thu, 02 Mar 2017 01:57:01 GMT  
		Size: 2.6 KB (2581 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba8ff064032b01bdfdd5bc91f2d9c87370878f95065842023a409db57709e429`  
		Last Modified: Thu, 02 Mar 2017 01:57:01 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:latest`

```console
$ docker pull mysql@sha256:6d4b33d189d62afe590ee4b35f92aae31ffa79ccc4d4db8bd3d3b893c8019596
```

-	Platforms:
	-	linux; amd64

### `mysql:latest` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **140.2 MB (140186916 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:22be5748ecbeb09909d84e487838af7c64099959d707e5addfbb6177f334923e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 27 Feb 2017 20:34:36 GMT
ADD file:41ac8d85ee35954bf6c8353d9681a045ba260aa9a96dbbded7bcd6e37ee49bea in / 
# Mon, 27 Feb 2017 20:34:37 GMT
CMD ["/bin/bash"]
# Tue, 28 Feb 2017 05:53:04 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Tue, 28 Feb 2017 05:53:05 GMT
ENV GOSU_VERSION=1.7
# Tue, 28 Feb 2017 05:53:30 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 28 Feb 2017 05:53:31 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 28 Feb 2017 06:56:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		pwgen 		openssl 		perl 	&& rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 06:56:35 GMT
RUN set -ex; 	key='A4A9406876FCBD3C456770C88C718D3B5072E1F5'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/mysql.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list > /dev/null
# Tue, 28 Feb 2017 06:56:35 GMT
ENV MYSQL_MAJOR=5.7
# Tue, 28 Feb 2017 06:56:36 GMT
ENV MYSQL_VERSION=5.7.17-1debian8
# Tue, 28 Feb 2017 06:56:37 GMT
RUN echo "deb http://repo.mysql.com/apt/debian/ jessie mysql-${MYSQL_MAJOR}" > /etc/apt/sources.list.d/mysql.list
# Tue, 28 Feb 2017 06:56:59 GMT
RUN { 		echo mysql-community-server mysql-community-server/data-dir select ''; 		echo mysql-community-server mysql-community-server/root-pass password ''; 		echo mysql-community-server mysql-community-server/re-root-pass password ''; 		echo mysql-community-server mysql-community-server/remove-test-db select false; 	} | debconf-set-selections 	&& apt-get update && apt-get install -y mysql-server="${MYSQL_VERSION}" && rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Tue, 28 Feb 2017 06:57:00 GMT
RUN sed -Ei 's/^(bind-address|log)/#&/' /etc/mysql/mysql.conf.d/mysqld.cnf 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Tue, 28 Feb 2017 06:57:00 GMT
VOLUME [/var/lib/mysql]
# Tue, 28 Feb 2017 06:57:01 GMT
COPY file:867aa59679676139e320e7c028375612a501f970b832ff0910b5fd8df04dd5f1 in /usr/local/bin/ 
# Tue, 28 Feb 2017 06:57:02 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 28 Feb 2017 06:57:02 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 28 Feb 2017 06:57:03 GMT
EXPOSE 3306/tcp
# Tue, 28 Feb 2017 06:57:03 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:693502eb7dfbc6b94964ae66ebc72d3e32facd981c72995b09794f1e87bac184`  
		Last Modified: Mon, 27 Feb 2017 20:40:26 GMT  
		Size: 51.4 MB (51363374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08d0e9d74b1b9abdb93544280f11101fb64983ad806b9fff134ee8e4e5a6d9cf`  
		Last Modified: Thu, 02 Mar 2017 01:22:35 GMT  
		Size: 2.0 KB (2040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e700ebfbe6bc85430bd1e977c74b233c036049dfa3049f361d336329a1d50f6b`  
		Last Modified: Thu, 02 Mar 2017 01:22:36 GMT  
		Size: 1.2 MB (1216886 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f718f1976629e26d27f2912f8b33d77b7e1b2f882ab3eb753ac5b582793d6135`  
		Last Modified: Thu, 02 Mar 2017 01:22:33 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:575a0830e27816ca0a6ad1fc5d0a6fbf2debad4316937fd776fe3abd4ae7d1bd`  
		Last Modified: Thu, 02 Mar 2017 01:57:09 GMT  
		Size: 10.6 MB (10577139 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8461dfcf361d21fe501a48b6f7f6770ed87baa955441c231b7d90edb2c4610b1`  
		Last Modified: Thu, 02 Mar 2017 01:57:03 GMT  
		Size: 19.2 KB (19182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:349434898dfbf61be465ad752feb5c059e4e9325d4e173c9622d03905253f56c`  
		Last Modified: Thu, 02 Mar 2017 01:57:01 GMT  
		Size: 218.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78d3515224431f614af43bd5be2d15cffebd51645abc6fd2d7408599096dcbb3`  
		Last Modified: Thu, 02 Mar 2017 01:57:25 GMT  
		Size: 77.0 MB (77004327 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21897ab469526dab51c163271dd6e5b660ca43f152f02f53c40daf3d18819d08`  
		Last Modified: Thu, 02 Mar 2017 01:57:01 GMT  
		Size: 935.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca6ffbbedc106c53ab4889b4b4b52901e333423dd486fb9f0ed02c2f3ba181e0`  
		Last Modified: Thu, 02 Mar 2017 01:57:01 GMT  
		Size: 2.6 KB (2581 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba8ff064032b01bdfdd5bc91f2d9c87370878f95065842023a409db57709e429`  
		Last Modified: Thu, 02 Mar 2017 01:57:01 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:5.6.35`

```console
$ docker pull mysql@sha256:db6fe1e214d1c2511279a59b71777c47f15c99de0f9e2188bd0b672c8f0b6e07
```

-	Platforms:
	-	linux; amd64

### `mysql:5.6.35` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **112.8 MB (112788952 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:673eeb95a1a4396ee326df3b157f213a1a56f3c3ff71b09889fb6581e2a19aad`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 27 Feb 2017 20:34:36 GMT
ADD file:41ac8d85ee35954bf6c8353d9681a045ba260aa9a96dbbded7bcd6e37ee49bea in / 
# Mon, 27 Feb 2017 20:34:37 GMT
CMD ["/bin/bash"]
# Tue, 28 Feb 2017 05:53:04 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Tue, 28 Feb 2017 05:53:05 GMT
ENV GOSU_VERSION=1.7
# Tue, 28 Feb 2017 05:53:30 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 28 Feb 2017 05:53:31 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 28 Feb 2017 06:58:05 GMT
RUN apt-get update && apt-get install -y perl pwgen --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 06:58:06 GMT
RUN set -ex; 	key='A4A9406876FCBD3C456770C88C718D3B5072E1F5'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/mysql.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list > /dev/null
# Tue, 28 Feb 2017 06:58:07 GMT
ENV MYSQL_MAJOR=5.6
# Tue, 28 Feb 2017 06:58:07 GMT
ENV MYSQL_VERSION=5.6.35-1debian8
# Tue, 28 Feb 2017 06:58:08 GMT
RUN echo "deb http://repo.mysql.com/apt/debian/ jessie mysql-${MYSQL_MAJOR}" > /etc/apt/sources.list.d/mysql.list
# Tue, 28 Feb 2017 06:58:26 GMT
RUN { 		echo mysql-community-server mysql-community-server/data-dir select ''; 		echo mysql-community-server mysql-community-server/root-pass password ''; 		echo mysql-community-server mysql-community-server/re-root-pass password ''; 		echo mysql-community-server mysql-community-server/remove-test-db select false; 	} | debconf-set-selections 	&& apt-get update && apt-get install -y mysql-server="${MYSQL_VERSION}" && rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Tue, 28 Feb 2017 06:58:27 GMT
RUN sed -Ei 's/^(bind-address|log)/#&/' /etc/mysql/my.cnf 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Tue, 28 Feb 2017 06:58:28 GMT
VOLUME [/var/lib/mysql]
# Tue, 28 Feb 2017 06:58:28 GMT
COPY file:4525fb8b249a0bd84126fe09d40e3039307532c4050b0947d5bea89efdd4c1c9 in /usr/local/bin/ 
# Tue, 28 Feb 2017 06:58:29 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 28 Feb 2017 06:58:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 28 Feb 2017 06:58:30 GMT
EXPOSE 3306/tcp
# Tue, 28 Feb 2017 06:58:30 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:693502eb7dfbc6b94964ae66ebc72d3e32facd981c72995b09794f1e87bac184`  
		Last Modified: Mon, 27 Feb 2017 20:40:26 GMT  
		Size: 51.4 MB (51363374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08d0e9d74b1b9abdb93544280f11101fb64983ad806b9fff134ee8e4e5a6d9cf`  
		Last Modified: Thu, 02 Mar 2017 01:22:35 GMT  
		Size: 2.0 KB (2040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e700ebfbe6bc85430bd1e977c74b233c036049dfa3049f361d336329a1d50f6b`  
		Last Modified: Thu, 02 Mar 2017 01:22:36 GMT  
		Size: 1.2 MB (1216886 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f718f1976629e26d27f2912f8b33d77b7e1b2f882ab3eb753ac5b582793d6135`  
		Last Modified: Thu, 02 Mar 2017 01:22:33 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f88209669e312683e05802c28803ea7cd241ce0f0ca82b89f7cd2541dedb0e0`  
		Last Modified: Thu, 02 Mar 2017 01:56:12 GMT  
		Size: 8.2 MB (8248097 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9500ddc22fb193e1fa734eae3062f053bec72f92c8adc0d501321ea2e469aa9`  
		Last Modified: Thu, 02 Mar 2017 01:56:07 GMT  
		Size: 19.2 KB (19181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc6ddb5e26682301d99939aec00f7577ed6840b2bddd601d3fb0630bbef77c78`  
		Last Modified: Thu, 02 Mar 2017 01:56:05 GMT  
		Size: 217.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e92aad90f21e43ac1ac45b4addc9d4ce3e752985f0bfac46cb02f6e17227a028`  
		Last Modified: Thu, 02 Mar 2017 01:56:21 GMT  
		Size: 51.9 MB (51935251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5435dcb79af2f1543730a9a636d9d09960c942b0f52fa51b76821851be60d0f9`  
		Last Modified: Thu, 02 Mar 2017 01:56:05 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54d392b54604266798c23bc29d6663ce3d9b20f0c9796fb5f4b5a17783c28141`  
		Last Modified: Thu, 02 Mar 2017 01:56:05 GMT  
		Size: 2.5 KB (2460 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6bda6d752ffda5e7b6a63aab19837024150107b19f94963682e6eca0ce7630ce`  
		Last Modified: Thu, 02 Mar 2017 01:56:05 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:5.6`

```console
$ docker pull mysql@sha256:db6fe1e214d1c2511279a59b71777c47f15c99de0f9e2188bd0b672c8f0b6e07
```

-	Platforms:
	-	linux; amd64

### `mysql:5.6` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **112.8 MB (112788952 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:673eeb95a1a4396ee326df3b157f213a1a56f3c3ff71b09889fb6581e2a19aad`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 27 Feb 2017 20:34:36 GMT
ADD file:41ac8d85ee35954bf6c8353d9681a045ba260aa9a96dbbded7bcd6e37ee49bea in / 
# Mon, 27 Feb 2017 20:34:37 GMT
CMD ["/bin/bash"]
# Tue, 28 Feb 2017 05:53:04 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Tue, 28 Feb 2017 05:53:05 GMT
ENV GOSU_VERSION=1.7
# Tue, 28 Feb 2017 05:53:30 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 28 Feb 2017 05:53:31 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 28 Feb 2017 06:58:05 GMT
RUN apt-get update && apt-get install -y perl pwgen --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 06:58:06 GMT
RUN set -ex; 	key='A4A9406876FCBD3C456770C88C718D3B5072E1F5'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/mysql.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list > /dev/null
# Tue, 28 Feb 2017 06:58:07 GMT
ENV MYSQL_MAJOR=5.6
# Tue, 28 Feb 2017 06:58:07 GMT
ENV MYSQL_VERSION=5.6.35-1debian8
# Tue, 28 Feb 2017 06:58:08 GMT
RUN echo "deb http://repo.mysql.com/apt/debian/ jessie mysql-${MYSQL_MAJOR}" > /etc/apt/sources.list.d/mysql.list
# Tue, 28 Feb 2017 06:58:26 GMT
RUN { 		echo mysql-community-server mysql-community-server/data-dir select ''; 		echo mysql-community-server mysql-community-server/root-pass password ''; 		echo mysql-community-server mysql-community-server/re-root-pass password ''; 		echo mysql-community-server mysql-community-server/remove-test-db select false; 	} | debconf-set-selections 	&& apt-get update && apt-get install -y mysql-server="${MYSQL_VERSION}" && rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Tue, 28 Feb 2017 06:58:27 GMT
RUN sed -Ei 's/^(bind-address|log)/#&/' /etc/mysql/my.cnf 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Tue, 28 Feb 2017 06:58:28 GMT
VOLUME [/var/lib/mysql]
# Tue, 28 Feb 2017 06:58:28 GMT
COPY file:4525fb8b249a0bd84126fe09d40e3039307532c4050b0947d5bea89efdd4c1c9 in /usr/local/bin/ 
# Tue, 28 Feb 2017 06:58:29 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 28 Feb 2017 06:58:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 28 Feb 2017 06:58:30 GMT
EXPOSE 3306/tcp
# Tue, 28 Feb 2017 06:58:30 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:693502eb7dfbc6b94964ae66ebc72d3e32facd981c72995b09794f1e87bac184`  
		Last Modified: Mon, 27 Feb 2017 20:40:26 GMT  
		Size: 51.4 MB (51363374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08d0e9d74b1b9abdb93544280f11101fb64983ad806b9fff134ee8e4e5a6d9cf`  
		Last Modified: Thu, 02 Mar 2017 01:22:35 GMT  
		Size: 2.0 KB (2040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e700ebfbe6bc85430bd1e977c74b233c036049dfa3049f361d336329a1d50f6b`  
		Last Modified: Thu, 02 Mar 2017 01:22:36 GMT  
		Size: 1.2 MB (1216886 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f718f1976629e26d27f2912f8b33d77b7e1b2f882ab3eb753ac5b582793d6135`  
		Last Modified: Thu, 02 Mar 2017 01:22:33 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f88209669e312683e05802c28803ea7cd241ce0f0ca82b89f7cd2541dedb0e0`  
		Last Modified: Thu, 02 Mar 2017 01:56:12 GMT  
		Size: 8.2 MB (8248097 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9500ddc22fb193e1fa734eae3062f053bec72f92c8adc0d501321ea2e469aa9`  
		Last Modified: Thu, 02 Mar 2017 01:56:07 GMT  
		Size: 19.2 KB (19181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc6ddb5e26682301d99939aec00f7577ed6840b2bddd601d3fb0630bbef77c78`  
		Last Modified: Thu, 02 Mar 2017 01:56:05 GMT  
		Size: 217.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e92aad90f21e43ac1ac45b4addc9d4ce3e752985f0bfac46cb02f6e17227a028`  
		Last Modified: Thu, 02 Mar 2017 01:56:21 GMT  
		Size: 51.9 MB (51935251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5435dcb79af2f1543730a9a636d9d09960c942b0f52fa51b76821851be60d0f9`  
		Last Modified: Thu, 02 Mar 2017 01:56:05 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54d392b54604266798c23bc29d6663ce3d9b20f0c9796fb5f4b5a17783c28141`  
		Last Modified: Thu, 02 Mar 2017 01:56:05 GMT  
		Size: 2.5 KB (2460 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6bda6d752ffda5e7b6a63aab19837024150107b19f94963682e6eca0ce7630ce`  
		Last Modified: Thu, 02 Mar 2017 01:56:05 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:5.5.54`

```console
$ docker pull mysql@sha256:7d785c17ed9911d30546f980636e8b5cd5d4e067a8b0f3c089709ae4dfc74940
```

-	Platforms:
	-	linux; amd64

### `mysql:5.5.54` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **87.4 MB (87414663 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0697aa95507c35f5b5f7579622564ee5a8de61231c87ea7a36587fde8da3050f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 27 Feb 2017 20:34:36 GMT
ADD file:41ac8d85ee35954bf6c8353d9681a045ba260aa9a96dbbded7bcd6e37ee49bea in / 
# Mon, 27 Feb 2017 20:34:37 GMT
CMD ["/bin/bash"]
# Tue, 28 Feb 2017 05:53:04 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Tue, 28 Feb 2017 05:53:05 GMT
ENV GOSU_VERSION=1.7
# Tue, 28 Feb 2017 05:53:30 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 28 Feb 2017 05:53:31 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 28 Feb 2017 06:57:10 GMT
RUN apt-get update && apt-get install -y perl --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 06:57:15 GMT
RUN apt-get update && apt-get install -y libaio1 pwgen && rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 06:57:16 GMT
ENV MYSQL_MAJOR=5.5
# Tue, 28 Feb 2017 06:57:16 GMT
ENV MYSQL_VERSION=5.5.54
# Tue, 28 Feb 2017 06:57:52 GMT
RUN apt-get update && apt-get install -y ca-certificates wget --no-install-recommends && rm -rf /var/lib/apt/lists/* 	&& wget "https://cdn.mysql.com/Downloads/MySQL-$MYSQL_MAJOR/mysql-$MYSQL_VERSION-linux2.6-x86_64.tar.gz" -O mysql.tar.gz 	&& wget "https://cdn.mysql.com/Downloads/MySQL-$MYSQL_MAJOR/mysql-$MYSQL_VERSION-linux2.6-x86_64.tar.gz.asc" -O mysql.tar.gz.asc 	&& apt-get purge -y --auto-remove ca-certificates wget 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys A4A9406876FCBD3C456770C88C718D3B5072E1F5 	&& gpg --batch --verify mysql.tar.gz.asc mysql.tar.gz 	&& rm -r "$GNUPGHOME" mysql.tar.gz.asc 	&& mkdir /usr/local/mysql 	&& tar -xzf mysql.tar.gz -C /usr/local/mysql --strip-components=1 	&& rm mysql.tar.gz 	&& rm -rf /usr/local/mysql/mysql-test /usr/local/mysql/sql-bench 	&& rm -rf /usr/local/mysql/bin/*-debug /usr/local/mysql/bin/*_embedded 	&& find /usr/local/mysql -type f -name "*.a" -delete 	&& apt-get update && apt-get install -y binutils && rm -rf /var/lib/apt/lists/* 	&& { find /usr/local/mysql -type f -executable -exec strip --strip-all '{}' + || true; } 	&& apt-get purge -y --auto-remove binutils
# Tue, 28 Feb 2017 06:57:52 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/mysql/bin:/usr/local/mysql/scripts
# Tue, 28 Feb 2017 06:57:53 GMT
RUN mkdir -p /etc/mysql/conf.d 	&& { 		echo '[mysqld]'; 		echo 'skip-host-cache'; 		echo 'skip-name-resolve'; 		echo 'datadir = /var/lib/mysql'; 		echo '!includedir /etc/mysql/conf.d/'; 	} > /etc/mysql/my.cnf
# Tue, 28 Feb 2017 06:57:54 GMT
RUN mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Tue, 28 Feb 2017 06:57:55 GMT
VOLUME [/var/lib/mysql]
# Tue, 28 Feb 2017 06:57:55 GMT
COPY file:d16a9566d4b9cf29a984c8b6d111646c8dad7579141c4417ccd654d1335ba3fc in /usr/local/bin/ 
# Tue, 28 Feb 2017 06:57:56 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 28 Feb 2017 06:57:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 28 Feb 2017 06:57:57 GMT
EXPOSE 3306/tcp
# Tue, 28 Feb 2017 06:57:57 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:693502eb7dfbc6b94964ae66ebc72d3e32facd981c72995b09794f1e87bac184`  
		Last Modified: Mon, 27 Feb 2017 20:40:26 GMT  
		Size: 51.4 MB (51363374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08d0e9d74b1b9abdb93544280f11101fb64983ad806b9fff134ee8e4e5a6d9cf`  
		Last Modified: Thu, 02 Mar 2017 01:22:35 GMT  
		Size: 2.0 KB (2040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e700ebfbe6bc85430bd1e977c74b233c036049dfa3049f361d336329a1d50f6b`  
		Last Modified: Thu, 02 Mar 2017 01:22:36 GMT  
		Size: 1.2 MB (1216886 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f718f1976629e26d27f2912f8b33d77b7e1b2f882ab3eb753ac5b582793d6135`  
		Last Modified: Thu, 02 Mar 2017 01:22:33 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42397050efd9669c0eeb8d0d9f42030aebf14aedc683bbf0a0dfd668ac1f6d6b`  
		Last Modified: Thu, 02 Mar 2017 01:55:24 GMT  
		Size: 8.2 MB (8220127 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d30897af99a72d139dcd48a7bbae4c60e8c47aef3d74cdbe7e2525ff44ff9c8`  
		Last Modified: Thu, 02 Mar 2017 01:55:19 GMT  
		Size: 101.0 KB (101030 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:026bb992255b4c2f446c881b650a5d3dde4899c9e76d53945721e36706d4056e`  
		Last Modified: Thu, 02 Mar 2017 01:55:24 GMT  
		Size: 26.5 MB (26508067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a00536afff6985eaedcf531107bca5679f0c5a192cf2065aa9495aa5562279ab`  
		Last Modified: Thu, 02 Mar 2017 01:55:16 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:197cc22aed36bf37df7ab08d515ea28a2bac750347515aef4af24051ddb8b8d1`  
		Last Modified: Thu, 02 Mar 2017 01:55:16 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16c24f74baba8c38887a76a603ef23f1a4e4f4ee02dee3ef56ff184e67e40546`  
		Last Modified: Thu, 02 Mar 2017 01:55:16 GMT  
		Size: 2.5 KB (2495 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da163b3f9c82b1ea63fcd044942ebfc5fb6b3c6e1d788c62c42d3b24968bba97`  
		Last Modified: Thu, 02 Mar 2017 01:55:16 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:5.5`

```console
$ docker pull mysql@sha256:7d785c17ed9911d30546f980636e8b5cd5d4e067a8b0f3c089709ae4dfc74940
```

-	Platforms:
	-	linux; amd64

### `mysql:5.5` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **87.4 MB (87414663 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0697aa95507c35f5b5f7579622564ee5a8de61231c87ea7a36587fde8da3050f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 27 Feb 2017 20:34:36 GMT
ADD file:41ac8d85ee35954bf6c8353d9681a045ba260aa9a96dbbded7bcd6e37ee49bea in / 
# Mon, 27 Feb 2017 20:34:37 GMT
CMD ["/bin/bash"]
# Tue, 28 Feb 2017 05:53:04 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Tue, 28 Feb 2017 05:53:05 GMT
ENV GOSU_VERSION=1.7
# Tue, 28 Feb 2017 05:53:30 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 28 Feb 2017 05:53:31 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 28 Feb 2017 06:57:10 GMT
RUN apt-get update && apt-get install -y perl --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 06:57:15 GMT
RUN apt-get update && apt-get install -y libaio1 pwgen && rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 06:57:16 GMT
ENV MYSQL_MAJOR=5.5
# Tue, 28 Feb 2017 06:57:16 GMT
ENV MYSQL_VERSION=5.5.54
# Tue, 28 Feb 2017 06:57:52 GMT
RUN apt-get update && apt-get install -y ca-certificates wget --no-install-recommends && rm -rf /var/lib/apt/lists/* 	&& wget "https://cdn.mysql.com/Downloads/MySQL-$MYSQL_MAJOR/mysql-$MYSQL_VERSION-linux2.6-x86_64.tar.gz" -O mysql.tar.gz 	&& wget "https://cdn.mysql.com/Downloads/MySQL-$MYSQL_MAJOR/mysql-$MYSQL_VERSION-linux2.6-x86_64.tar.gz.asc" -O mysql.tar.gz.asc 	&& apt-get purge -y --auto-remove ca-certificates wget 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys A4A9406876FCBD3C456770C88C718D3B5072E1F5 	&& gpg --batch --verify mysql.tar.gz.asc mysql.tar.gz 	&& rm -r "$GNUPGHOME" mysql.tar.gz.asc 	&& mkdir /usr/local/mysql 	&& tar -xzf mysql.tar.gz -C /usr/local/mysql --strip-components=1 	&& rm mysql.tar.gz 	&& rm -rf /usr/local/mysql/mysql-test /usr/local/mysql/sql-bench 	&& rm -rf /usr/local/mysql/bin/*-debug /usr/local/mysql/bin/*_embedded 	&& find /usr/local/mysql -type f -name "*.a" -delete 	&& apt-get update && apt-get install -y binutils && rm -rf /var/lib/apt/lists/* 	&& { find /usr/local/mysql -type f -executable -exec strip --strip-all '{}' + || true; } 	&& apt-get purge -y --auto-remove binutils
# Tue, 28 Feb 2017 06:57:52 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/mysql/bin:/usr/local/mysql/scripts
# Tue, 28 Feb 2017 06:57:53 GMT
RUN mkdir -p /etc/mysql/conf.d 	&& { 		echo '[mysqld]'; 		echo 'skip-host-cache'; 		echo 'skip-name-resolve'; 		echo 'datadir = /var/lib/mysql'; 		echo '!includedir /etc/mysql/conf.d/'; 	} > /etc/mysql/my.cnf
# Tue, 28 Feb 2017 06:57:54 GMT
RUN mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Tue, 28 Feb 2017 06:57:55 GMT
VOLUME [/var/lib/mysql]
# Tue, 28 Feb 2017 06:57:55 GMT
COPY file:d16a9566d4b9cf29a984c8b6d111646c8dad7579141c4417ccd654d1335ba3fc in /usr/local/bin/ 
# Tue, 28 Feb 2017 06:57:56 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 28 Feb 2017 06:57:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 28 Feb 2017 06:57:57 GMT
EXPOSE 3306/tcp
# Tue, 28 Feb 2017 06:57:57 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:693502eb7dfbc6b94964ae66ebc72d3e32facd981c72995b09794f1e87bac184`  
		Last Modified: Mon, 27 Feb 2017 20:40:26 GMT  
		Size: 51.4 MB (51363374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08d0e9d74b1b9abdb93544280f11101fb64983ad806b9fff134ee8e4e5a6d9cf`  
		Last Modified: Thu, 02 Mar 2017 01:22:35 GMT  
		Size: 2.0 KB (2040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e700ebfbe6bc85430bd1e977c74b233c036049dfa3049f361d336329a1d50f6b`  
		Last Modified: Thu, 02 Mar 2017 01:22:36 GMT  
		Size: 1.2 MB (1216886 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f718f1976629e26d27f2912f8b33d77b7e1b2f882ab3eb753ac5b582793d6135`  
		Last Modified: Thu, 02 Mar 2017 01:22:33 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42397050efd9669c0eeb8d0d9f42030aebf14aedc683bbf0a0dfd668ac1f6d6b`  
		Last Modified: Thu, 02 Mar 2017 01:55:24 GMT  
		Size: 8.2 MB (8220127 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d30897af99a72d139dcd48a7bbae4c60e8c47aef3d74cdbe7e2525ff44ff9c8`  
		Last Modified: Thu, 02 Mar 2017 01:55:19 GMT  
		Size: 101.0 KB (101030 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:026bb992255b4c2f446c881b650a5d3dde4899c9e76d53945721e36706d4056e`  
		Last Modified: Thu, 02 Mar 2017 01:55:24 GMT  
		Size: 26.5 MB (26508067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a00536afff6985eaedcf531107bca5679f0c5a192cf2065aa9495aa5562279ab`  
		Last Modified: Thu, 02 Mar 2017 01:55:16 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:197cc22aed36bf37df7ab08d515ea28a2bac750347515aef4af24051ddb8b8d1`  
		Last Modified: Thu, 02 Mar 2017 01:55:16 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16c24f74baba8c38887a76a603ef23f1a4e4f4ee02dee3ef56ff184e67e40546`  
		Last Modified: Thu, 02 Mar 2017 01:55:16 GMT  
		Size: 2.5 KB (2495 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da163b3f9c82b1ea63fcd044942ebfc5fb6b3c6e1d788c62c42d3b24968bba97`  
		Last Modified: Thu, 02 Mar 2017 01:55:16 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
