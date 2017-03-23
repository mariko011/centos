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
$ docker pull mysql@sha256:f9a6fb1936b3b117decac74ab6ae1fcbe15ef04258ad6d0a9cda2806c9c2b8f5
```

-	Platforms:
	-	linux; amd64

### `mysql:8.0.0` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.3 MB (132308944 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9f21237828fe7e27c9eef14c3ebf75c291a9f992b27cee4b3b17dc1f1a8336ca`
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
# Tue, 21 Mar 2017 21:53:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		pwgen 		openssl 		perl 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 21:53:08 GMT
RUN set -ex; 	key='A4A9406876FCBD3C456770C88C718D3B5072E1F5'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/mysql.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list > /dev/null
# Tue, 21 Mar 2017 21:55:03 GMT
ENV MYSQL_MAJOR=8.0
# Tue, 21 Mar 2017 21:55:03 GMT
ENV MYSQL_VERSION=8.0.0-dmr-1debian8
# Tue, 21 Mar 2017 21:55:04 GMT
RUN echo "deb http://repo.mysql.com/apt/debian/ jessie mysql-${MYSQL_MAJOR}" > /etc/apt/sources.list.d/mysql.list
# Tue, 21 Mar 2017 21:55:25 GMT
RUN { 		echo mysql-community-server mysql-community-server/data-dir select ''; 		echo mysql-community-server mysql-community-server/root-pass password ''; 		echo mysql-community-server mysql-community-server/re-root-pass password ''; 		echo mysql-community-server mysql-community-server/remove-test-db select false; 	} | debconf-set-selections 	&& apt-get update && apt-get install -y mysql-server="${MYSQL_VERSION}" && rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Tue, 21 Mar 2017 21:55:26 GMT
RUN sed -Ei 's/^(bind-address|log)/#&/' /etc/mysql/mysql.conf.d/mysqld.cnf 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Tue, 21 Mar 2017 21:55:26 GMT
VOLUME [/var/lib/mysql]
# Tue, 21 Mar 2017 21:55:27 GMT
COPY file:867aa59679676139e320e7c028375612a501f970b832ff0910b5fd8df04dd5f1 in /usr/local/bin/ 
# Tue, 21 Mar 2017 21:55:28 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 21 Mar 2017 21:55:28 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 21 Mar 2017 21:55:29 GMT
EXPOSE 3306/tcp
# Tue, 21 Mar 2017 21:55:29 GMT
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
	-	`sha256:7e6cc16d464a9de9a944440708715412dd73598fa01f7681f145e29fe68db2a7`  
		Last Modified: Thu, 23 Mar 2017 22:54:00 GMT  
		Size: 10.6 MB (10648491 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca3d380bc018892804299ac791b2fc7b49f163e77268f2b150520e3d1db3d9d6`  
		Last Modified: Thu, 23 Mar 2017 22:53:55 GMT  
		Size: 19.2 KB (19188 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:809061e6dec35279b7f84392dcd124abc93341e635511a3fc573b0576c6d1030`  
		Last Modified: Thu, 23 Mar 2017 22:55:40 GMT  
		Size: 217.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3b4e9bf814c874befa98292759dc4573b34197c100f7f0d75608afa5b9347fc`  
		Last Modified: Thu, 23 Mar 2017 22:56:02 GMT  
		Size: 68.9 MB (68907855 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:569cd556d913c76bd66796d0bd6b460b08589eb496522a8b1e4c0fb216065a5a`  
		Last Modified: Thu, 23 Mar 2017 22:55:40 GMT  
		Size: 883.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93b68886ea283308e49ec2ab83c8b48f6795ad8abb3a7d274d7bb8a89ebd1719`  
		Last Modified: Thu, 23 Mar 2017 22:55:40 GMT  
		Size: 2.6 KB (2582 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c2f17b3df8a4c83573b6a9c2fc6f35b949acbd1b2e57a417629499005065a8d`  
		Last Modified: Thu, 23 Mar 2017 22:55:40 GMT  
		Size: 117.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:8.0`

```console
$ docker pull mysql@sha256:f9a6fb1936b3b117decac74ab6ae1fcbe15ef04258ad6d0a9cda2806c9c2b8f5
```

-	Platforms:
	-	linux; amd64

### `mysql:8.0` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.3 MB (132308944 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9f21237828fe7e27c9eef14c3ebf75c291a9f992b27cee4b3b17dc1f1a8336ca`
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
# Tue, 21 Mar 2017 21:53:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		pwgen 		openssl 		perl 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 21:53:08 GMT
RUN set -ex; 	key='A4A9406876FCBD3C456770C88C718D3B5072E1F5'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/mysql.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list > /dev/null
# Tue, 21 Mar 2017 21:55:03 GMT
ENV MYSQL_MAJOR=8.0
# Tue, 21 Mar 2017 21:55:03 GMT
ENV MYSQL_VERSION=8.0.0-dmr-1debian8
# Tue, 21 Mar 2017 21:55:04 GMT
RUN echo "deb http://repo.mysql.com/apt/debian/ jessie mysql-${MYSQL_MAJOR}" > /etc/apt/sources.list.d/mysql.list
# Tue, 21 Mar 2017 21:55:25 GMT
RUN { 		echo mysql-community-server mysql-community-server/data-dir select ''; 		echo mysql-community-server mysql-community-server/root-pass password ''; 		echo mysql-community-server mysql-community-server/re-root-pass password ''; 		echo mysql-community-server mysql-community-server/remove-test-db select false; 	} | debconf-set-selections 	&& apt-get update && apt-get install -y mysql-server="${MYSQL_VERSION}" && rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Tue, 21 Mar 2017 21:55:26 GMT
RUN sed -Ei 's/^(bind-address|log)/#&/' /etc/mysql/mysql.conf.d/mysqld.cnf 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Tue, 21 Mar 2017 21:55:26 GMT
VOLUME [/var/lib/mysql]
# Tue, 21 Mar 2017 21:55:27 GMT
COPY file:867aa59679676139e320e7c028375612a501f970b832ff0910b5fd8df04dd5f1 in /usr/local/bin/ 
# Tue, 21 Mar 2017 21:55:28 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 21 Mar 2017 21:55:28 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 21 Mar 2017 21:55:29 GMT
EXPOSE 3306/tcp
# Tue, 21 Mar 2017 21:55:29 GMT
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
	-	`sha256:7e6cc16d464a9de9a944440708715412dd73598fa01f7681f145e29fe68db2a7`  
		Last Modified: Thu, 23 Mar 2017 22:54:00 GMT  
		Size: 10.6 MB (10648491 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca3d380bc018892804299ac791b2fc7b49f163e77268f2b150520e3d1db3d9d6`  
		Last Modified: Thu, 23 Mar 2017 22:53:55 GMT  
		Size: 19.2 KB (19188 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:809061e6dec35279b7f84392dcd124abc93341e635511a3fc573b0576c6d1030`  
		Last Modified: Thu, 23 Mar 2017 22:55:40 GMT  
		Size: 217.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3b4e9bf814c874befa98292759dc4573b34197c100f7f0d75608afa5b9347fc`  
		Last Modified: Thu, 23 Mar 2017 22:56:02 GMT  
		Size: 68.9 MB (68907855 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:569cd556d913c76bd66796d0bd6b460b08589eb496522a8b1e4c0fb216065a5a`  
		Last Modified: Thu, 23 Mar 2017 22:55:40 GMT  
		Size: 883.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93b68886ea283308e49ec2ab83c8b48f6795ad8abb3a7d274d7bb8a89ebd1719`  
		Last Modified: Thu, 23 Mar 2017 22:55:40 GMT  
		Size: 2.6 KB (2582 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c2f17b3df8a4c83573b6a9c2fc6f35b949acbd1b2e57a417629499005065a8d`  
		Last Modified: Thu, 23 Mar 2017 22:55:40 GMT  
		Size: 117.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:8`

```console
$ docker pull mysql@sha256:f9a6fb1936b3b117decac74ab6ae1fcbe15ef04258ad6d0a9cda2806c9c2b8f5
```

-	Platforms:
	-	linux; amd64

### `mysql:8` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.3 MB (132308944 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9f21237828fe7e27c9eef14c3ebf75c291a9f992b27cee4b3b17dc1f1a8336ca`
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
# Tue, 21 Mar 2017 21:53:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		pwgen 		openssl 		perl 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 21:53:08 GMT
RUN set -ex; 	key='A4A9406876FCBD3C456770C88C718D3B5072E1F5'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/mysql.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list > /dev/null
# Tue, 21 Mar 2017 21:55:03 GMT
ENV MYSQL_MAJOR=8.0
# Tue, 21 Mar 2017 21:55:03 GMT
ENV MYSQL_VERSION=8.0.0-dmr-1debian8
# Tue, 21 Mar 2017 21:55:04 GMT
RUN echo "deb http://repo.mysql.com/apt/debian/ jessie mysql-${MYSQL_MAJOR}" > /etc/apt/sources.list.d/mysql.list
# Tue, 21 Mar 2017 21:55:25 GMT
RUN { 		echo mysql-community-server mysql-community-server/data-dir select ''; 		echo mysql-community-server mysql-community-server/root-pass password ''; 		echo mysql-community-server mysql-community-server/re-root-pass password ''; 		echo mysql-community-server mysql-community-server/remove-test-db select false; 	} | debconf-set-selections 	&& apt-get update && apt-get install -y mysql-server="${MYSQL_VERSION}" && rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Tue, 21 Mar 2017 21:55:26 GMT
RUN sed -Ei 's/^(bind-address|log)/#&/' /etc/mysql/mysql.conf.d/mysqld.cnf 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Tue, 21 Mar 2017 21:55:26 GMT
VOLUME [/var/lib/mysql]
# Tue, 21 Mar 2017 21:55:27 GMT
COPY file:867aa59679676139e320e7c028375612a501f970b832ff0910b5fd8df04dd5f1 in /usr/local/bin/ 
# Tue, 21 Mar 2017 21:55:28 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 21 Mar 2017 21:55:28 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 21 Mar 2017 21:55:29 GMT
EXPOSE 3306/tcp
# Tue, 21 Mar 2017 21:55:29 GMT
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
	-	`sha256:7e6cc16d464a9de9a944440708715412dd73598fa01f7681f145e29fe68db2a7`  
		Last Modified: Thu, 23 Mar 2017 22:54:00 GMT  
		Size: 10.6 MB (10648491 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca3d380bc018892804299ac791b2fc7b49f163e77268f2b150520e3d1db3d9d6`  
		Last Modified: Thu, 23 Mar 2017 22:53:55 GMT  
		Size: 19.2 KB (19188 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:809061e6dec35279b7f84392dcd124abc93341e635511a3fc573b0576c6d1030`  
		Last Modified: Thu, 23 Mar 2017 22:55:40 GMT  
		Size: 217.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3b4e9bf814c874befa98292759dc4573b34197c100f7f0d75608afa5b9347fc`  
		Last Modified: Thu, 23 Mar 2017 22:56:02 GMT  
		Size: 68.9 MB (68907855 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:569cd556d913c76bd66796d0bd6b460b08589eb496522a8b1e4c0fb216065a5a`  
		Last Modified: Thu, 23 Mar 2017 22:55:40 GMT  
		Size: 883.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93b68886ea283308e49ec2ab83c8b48f6795ad8abb3a7d274d7bb8a89ebd1719`  
		Last Modified: Thu, 23 Mar 2017 22:55:40 GMT  
		Size: 2.6 KB (2582 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c2f17b3df8a4c83573b6a9c2fc6f35b949acbd1b2e57a417629499005065a8d`  
		Last Modified: Thu, 23 Mar 2017 22:55:40 GMT  
		Size: 117.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:5.7.17`

```console
$ docker pull mysql@sha256:b39e58483853ecd03160f9bfdc8d3ecb0be9071fdbbe5484d6a115677b62c84e
```

-	Platforms:
	-	linux; amd64

### `mysql:5.7.17` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **140.5 MB (140477410 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5faba1a71ec40108975684d095f6bac32d6db87bc55576e09deb559fbafda213`
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
# Tue, 21 Mar 2017 21:53:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		pwgen 		openssl 		perl 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 21:53:08 GMT
RUN set -ex; 	key='A4A9406876FCBD3C456770C88C718D3B5072E1F5'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/mysql.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list > /dev/null
# Tue, 21 Mar 2017 21:53:08 GMT
ENV MYSQL_MAJOR=5.7
# Tue, 21 Mar 2017 21:53:09 GMT
ENV MYSQL_VERSION=5.7.17-1debian8
# Tue, 21 Mar 2017 21:53:10 GMT
RUN echo "deb http://repo.mysql.com/apt/debian/ jessie mysql-${MYSQL_MAJOR}" > /etc/apt/sources.list.d/mysql.list
# Tue, 21 Mar 2017 21:53:28 GMT
RUN { 		echo mysql-community-server mysql-community-server/data-dir select ''; 		echo mysql-community-server mysql-community-server/root-pass password ''; 		echo mysql-community-server mysql-community-server/re-root-pass password ''; 		echo mysql-community-server mysql-community-server/remove-test-db select false; 	} | debconf-set-selections 	&& apt-get update && apt-get install -y mysql-server="${MYSQL_VERSION}" && rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Tue, 21 Mar 2017 21:53:29 GMT
RUN sed -Ei 's/^(bind-address|log)/#&/' /etc/mysql/mysql.conf.d/mysqld.cnf 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Tue, 21 Mar 2017 21:53:30 GMT
VOLUME [/var/lib/mysql]
# Tue, 21 Mar 2017 21:53:30 GMT
COPY file:867aa59679676139e320e7c028375612a501f970b832ff0910b5fd8df04dd5f1 in /usr/local/bin/ 
# Tue, 21 Mar 2017 21:53:31 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 21 Mar 2017 21:53:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 21 Mar 2017 21:53:32 GMT
EXPOSE 3306/tcp
# Tue, 21 Mar 2017 21:53:32 GMT
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
	-	`sha256:7e6cc16d464a9de9a944440708715412dd73598fa01f7681f145e29fe68db2a7`  
		Last Modified: Thu, 23 Mar 2017 22:54:00 GMT  
		Size: 10.6 MB (10648491 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca3d380bc018892804299ac791b2fc7b49f163e77268f2b150520e3d1db3d9d6`  
		Last Modified: Thu, 23 Mar 2017 22:53:55 GMT  
		Size: 19.2 KB (19188 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3fe11378d5c01f921fc10e0b6941fe23a38cc438131c733ca53bc0cb40a959ea`  
		Last Modified: Thu, 23 Mar 2017 22:53:55 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b5dfd3256458721070b7868509fd4654db43aad3f2d5515d0e9d595a82dcea8`  
		Last Modified: Thu, 23 Mar 2017 22:54:17 GMT  
		Size: 77.1 MB (77076268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b54281d17fbe56553a318f70e05402a75bed775bbfa9de4ea554923a6c5cc027`  
		Last Modified: Thu, 23 Mar 2017 22:53:53 GMT  
		Size: 936.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a5cfd2d8db6e88de90aae99b6ab03d88db63f81d218f8f0c0df817fa9415739`  
		Last Modified: Thu, 23 Mar 2017 22:53:53 GMT  
		Size: 2.6 KB (2581 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a371b9bf0e19251f48efdb997761f086e207ddffd2dd0b558e4f8228b3b704ac`  
		Last Modified: Thu, 23 Mar 2017 22:53:53 GMT  
		Size: 119.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:5.7`

```console
$ docker pull mysql@sha256:b39e58483853ecd03160f9bfdc8d3ecb0be9071fdbbe5484d6a115677b62c84e
```

-	Platforms:
	-	linux; amd64

### `mysql:5.7` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **140.5 MB (140477410 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5faba1a71ec40108975684d095f6bac32d6db87bc55576e09deb559fbafda213`
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
# Tue, 21 Mar 2017 21:53:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		pwgen 		openssl 		perl 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 21:53:08 GMT
RUN set -ex; 	key='A4A9406876FCBD3C456770C88C718D3B5072E1F5'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/mysql.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list > /dev/null
# Tue, 21 Mar 2017 21:53:08 GMT
ENV MYSQL_MAJOR=5.7
# Tue, 21 Mar 2017 21:53:09 GMT
ENV MYSQL_VERSION=5.7.17-1debian8
# Tue, 21 Mar 2017 21:53:10 GMT
RUN echo "deb http://repo.mysql.com/apt/debian/ jessie mysql-${MYSQL_MAJOR}" > /etc/apt/sources.list.d/mysql.list
# Tue, 21 Mar 2017 21:53:28 GMT
RUN { 		echo mysql-community-server mysql-community-server/data-dir select ''; 		echo mysql-community-server mysql-community-server/root-pass password ''; 		echo mysql-community-server mysql-community-server/re-root-pass password ''; 		echo mysql-community-server mysql-community-server/remove-test-db select false; 	} | debconf-set-selections 	&& apt-get update && apt-get install -y mysql-server="${MYSQL_VERSION}" && rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Tue, 21 Mar 2017 21:53:29 GMT
RUN sed -Ei 's/^(bind-address|log)/#&/' /etc/mysql/mysql.conf.d/mysqld.cnf 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Tue, 21 Mar 2017 21:53:30 GMT
VOLUME [/var/lib/mysql]
# Tue, 21 Mar 2017 21:53:30 GMT
COPY file:867aa59679676139e320e7c028375612a501f970b832ff0910b5fd8df04dd5f1 in /usr/local/bin/ 
# Tue, 21 Mar 2017 21:53:31 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 21 Mar 2017 21:53:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 21 Mar 2017 21:53:32 GMT
EXPOSE 3306/tcp
# Tue, 21 Mar 2017 21:53:32 GMT
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
	-	`sha256:7e6cc16d464a9de9a944440708715412dd73598fa01f7681f145e29fe68db2a7`  
		Last Modified: Thu, 23 Mar 2017 22:54:00 GMT  
		Size: 10.6 MB (10648491 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca3d380bc018892804299ac791b2fc7b49f163e77268f2b150520e3d1db3d9d6`  
		Last Modified: Thu, 23 Mar 2017 22:53:55 GMT  
		Size: 19.2 KB (19188 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3fe11378d5c01f921fc10e0b6941fe23a38cc438131c733ca53bc0cb40a959ea`  
		Last Modified: Thu, 23 Mar 2017 22:53:55 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b5dfd3256458721070b7868509fd4654db43aad3f2d5515d0e9d595a82dcea8`  
		Last Modified: Thu, 23 Mar 2017 22:54:17 GMT  
		Size: 77.1 MB (77076268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b54281d17fbe56553a318f70e05402a75bed775bbfa9de4ea554923a6c5cc027`  
		Last Modified: Thu, 23 Mar 2017 22:53:53 GMT  
		Size: 936.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a5cfd2d8db6e88de90aae99b6ab03d88db63f81d218f8f0c0df817fa9415739`  
		Last Modified: Thu, 23 Mar 2017 22:53:53 GMT  
		Size: 2.6 KB (2581 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a371b9bf0e19251f48efdb997761f086e207ddffd2dd0b558e4f8228b3b704ac`  
		Last Modified: Thu, 23 Mar 2017 22:53:53 GMT  
		Size: 119.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:5`

```console
$ docker pull mysql@sha256:b39e58483853ecd03160f9bfdc8d3ecb0be9071fdbbe5484d6a115677b62c84e
```

-	Platforms:
	-	linux; amd64

### `mysql:5` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **140.5 MB (140477410 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5faba1a71ec40108975684d095f6bac32d6db87bc55576e09deb559fbafda213`
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
# Tue, 21 Mar 2017 21:53:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		pwgen 		openssl 		perl 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 21:53:08 GMT
RUN set -ex; 	key='A4A9406876FCBD3C456770C88C718D3B5072E1F5'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/mysql.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list > /dev/null
# Tue, 21 Mar 2017 21:53:08 GMT
ENV MYSQL_MAJOR=5.7
# Tue, 21 Mar 2017 21:53:09 GMT
ENV MYSQL_VERSION=5.7.17-1debian8
# Tue, 21 Mar 2017 21:53:10 GMT
RUN echo "deb http://repo.mysql.com/apt/debian/ jessie mysql-${MYSQL_MAJOR}" > /etc/apt/sources.list.d/mysql.list
# Tue, 21 Mar 2017 21:53:28 GMT
RUN { 		echo mysql-community-server mysql-community-server/data-dir select ''; 		echo mysql-community-server mysql-community-server/root-pass password ''; 		echo mysql-community-server mysql-community-server/re-root-pass password ''; 		echo mysql-community-server mysql-community-server/remove-test-db select false; 	} | debconf-set-selections 	&& apt-get update && apt-get install -y mysql-server="${MYSQL_VERSION}" && rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Tue, 21 Mar 2017 21:53:29 GMT
RUN sed -Ei 's/^(bind-address|log)/#&/' /etc/mysql/mysql.conf.d/mysqld.cnf 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Tue, 21 Mar 2017 21:53:30 GMT
VOLUME [/var/lib/mysql]
# Tue, 21 Mar 2017 21:53:30 GMT
COPY file:867aa59679676139e320e7c028375612a501f970b832ff0910b5fd8df04dd5f1 in /usr/local/bin/ 
# Tue, 21 Mar 2017 21:53:31 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 21 Mar 2017 21:53:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 21 Mar 2017 21:53:32 GMT
EXPOSE 3306/tcp
# Tue, 21 Mar 2017 21:53:32 GMT
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
	-	`sha256:7e6cc16d464a9de9a944440708715412dd73598fa01f7681f145e29fe68db2a7`  
		Last Modified: Thu, 23 Mar 2017 22:54:00 GMT  
		Size: 10.6 MB (10648491 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca3d380bc018892804299ac791b2fc7b49f163e77268f2b150520e3d1db3d9d6`  
		Last Modified: Thu, 23 Mar 2017 22:53:55 GMT  
		Size: 19.2 KB (19188 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3fe11378d5c01f921fc10e0b6941fe23a38cc438131c733ca53bc0cb40a959ea`  
		Last Modified: Thu, 23 Mar 2017 22:53:55 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b5dfd3256458721070b7868509fd4654db43aad3f2d5515d0e9d595a82dcea8`  
		Last Modified: Thu, 23 Mar 2017 22:54:17 GMT  
		Size: 77.1 MB (77076268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b54281d17fbe56553a318f70e05402a75bed775bbfa9de4ea554923a6c5cc027`  
		Last Modified: Thu, 23 Mar 2017 22:53:53 GMT  
		Size: 936.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a5cfd2d8db6e88de90aae99b6ab03d88db63f81d218f8f0c0df817fa9415739`  
		Last Modified: Thu, 23 Mar 2017 22:53:53 GMT  
		Size: 2.6 KB (2581 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a371b9bf0e19251f48efdb997761f086e207ddffd2dd0b558e4f8228b3b704ac`  
		Last Modified: Thu, 23 Mar 2017 22:53:53 GMT  
		Size: 119.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:latest`

```console
$ docker pull mysql@sha256:b39e58483853ecd03160f9bfdc8d3ecb0be9071fdbbe5484d6a115677b62c84e
```

-	Platforms:
	-	linux; amd64

### `mysql:latest` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **140.5 MB (140477410 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5faba1a71ec40108975684d095f6bac32d6db87bc55576e09deb559fbafda213`
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
# Tue, 21 Mar 2017 21:53:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		pwgen 		openssl 		perl 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 21:53:08 GMT
RUN set -ex; 	key='A4A9406876FCBD3C456770C88C718D3B5072E1F5'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/mysql.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list > /dev/null
# Tue, 21 Mar 2017 21:53:08 GMT
ENV MYSQL_MAJOR=5.7
# Tue, 21 Mar 2017 21:53:09 GMT
ENV MYSQL_VERSION=5.7.17-1debian8
# Tue, 21 Mar 2017 21:53:10 GMT
RUN echo "deb http://repo.mysql.com/apt/debian/ jessie mysql-${MYSQL_MAJOR}" > /etc/apt/sources.list.d/mysql.list
# Tue, 21 Mar 2017 21:53:28 GMT
RUN { 		echo mysql-community-server mysql-community-server/data-dir select ''; 		echo mysql-community-server mysql-community-server/root-pass password ''; 		echo mysql-community-server mysql-community-server/re-root-pass password ''; 		echo mysql-community-server mysql-community-server/remove-test-db select false; 	} | debconf-set-selections 	&& apt-get update && apt-get install -y mysql-server="${MYSQL_VERSION}" && rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Tue, 21 Mar 2017 21:53:29 GMT
RUN sed -Ei 's/^(bind-address|log)/#&/' /etc/mysql/mysql.conf.d/mysqld.cnf 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Tue, 21 Mar 2017 21:53:30 GMT
VOLUME [/var/lib/mysql]
# Tue, 21 Mar 2017 21:53:30 GMT
COPY file:867aa59679676139e320e7c028375612a501f970b832ff0910b5fd8df04dd5f1 in /usr/local/bin/ 
# Tue, 21 Mar 2017 21:53:31 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 21 Mar 2017 21:53:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 21 Mar 2017 21:53:32 GMT
EXPOSE 3306/tcp
# Tue, 21 Mar 2017 21:53:32 GMT
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
	-	`sha256:7e6cc16d464a9de9a944440708715412dd73598fa01f7681f145e29fe68db2a7`  
		Last Modified: Thu, 23 Mar 2017 22:54:00 GMT  
		Size: 10.6 MB (10648491 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca3d380bc018892804299ac791b2fc7b49f163e77268f2b150520e3d1db3d9d6`  
		Last Modified: Thu, 23 Mar 2017 22:53:55 GMT  
		Size: 19.2 KB (19188 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3fe11378d5c01f921fc10e0b6941fe23a38cc438131c733ca53bc0cb40a959ea`  
		Last Modified: Thu, 23 Mar 2017 22:53:55 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b5dfd3256458721070b7868509fd4654db43aad3f2d5515d0e9d595a82dcea8`  
		Last Modified: Thu, 23 Mar 2017 22:54:17 GMT  
		Size: 77.1 MB (77076268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b54281d17fbe56553a318f70e05402a75bed775bbfa9de4ea554923a6c5cc027`  
		Last Modified: Thu, 23 Mar 2017 22:53:53 GMT  
		Size: 936.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a5cfd2d8db6e88de90aae99b6ab03d88db63f81d218f8f0c0df817fa9415739`  
		Last Modified: Thu, 23 Mar 2017 22:53:53 GMT  
		Size: 2.6 KB (2581 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a371b9bf0e19251f48efdb997761f086e207ddffd2dd0b558e4f8228b3b704ac`  
		Last Modified: Thu, 23 Mar 2017 22:53:53 GMT  
		Size: 119.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:5.6.35`

```console
$ docker pull mysql@sha256:8b32764875c42d1b3ef79f49644ba812cc05a2b2911979727b143a64501defb4
```

-	Platforms:
	-	linux; amd64

### `mysql:5.6.35` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **113.0 MB (113008393 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:68399df75c596686ace0c41106d1506965b15d54dd48f8599ad94ef589e0fc3e`
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
# Tue, 21 Mar 2017 21:54:38 GMT
RUN apt-get update && apt-get install -y perl pwgen --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 21:54:39 GMT
RUN set -ex; 	key='A4A9406876FCBD3C456770C88C718D3B5072E1F5'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/mysql.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list > /dev/null
# Tue, 21 Mar 2017 21:54:39 GMT
ENV MYSQL_MAJOR=5.6
# Tue, 21 Mar 2017 21:54:40 GMT
ENV MYSQL_VERSION=5.6.35-1debian8
# Tue, 21 Mar 2017 21:54:41 GMT
RUN echo "deb http://repo.mysql.com/apt/debian/ jessie mysql-${MYSQL_MAJOR}" > /etc/apt/sources.list.d/mysql.list
# Tue, 21 Mar 2017 21:54:58 GMT
RUN { 		echo mysql-community-server mysql-community-server/data-dir select ''; 		echo mysql-community-server mysql-community-server/root-pass password ''; 		echo mysql-community-server mysql-community-server/re-root-pass password ''; 		echo mysql-community-server mysql-community-server/remove-test-db select false; 	} | debconf-set-selections 	&& apt-get update && apt-get install -y mysql-server="${MYSQL_VERSION}" && rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Tue, 21 Mar 2017 21:54:59 GMT
RUN sed -Ei 's/^(bind-address|log)/#&/' /etc/mysql/my.cnf 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Tue, 21 Mar 2017 21:54:59 GMT
VOLUME [/var/lib/mysql]
# Tue, 21 Mar 2017 21:55:00 GMT
COPY file:4525fb8b249a0bd84126fe09d40e3039307532c4050b0947d5bea89efdd4c1c9 in /usr/local/bin/ 
# Tue, 21 Mar 2017 21:55:01 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 21 Mar 2017 21:55:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 21 Mar 2017 21:55:02 GMT
EXPOSE 3306/tcp
# Tue, 21 Mar 2017 21:55:02 GMT
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
	-	`sha256:ac3f5f870257758d2d5eb817270b8034c9208c296cc6abdf924485abc0180a2b`  
		Last Modified: Thu, 23 Mar 2017 22:53:01 GMT  
		Size: 8.2 MB (8248348 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38a247b5bcdf4f3007b06df997025c1f3b30b0f9d51f6b5dbd9c028f2d7a21b0`  
		Last Modified: Thu, 23 Mar 2017 22:52:55 GMT  
		Size: 19.2 KB (19182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d528ca18a065853a5e9cffcc2d89109c7f0c64555f826a2d5150d26eefb46fa`  
		Last Modified: Thu, 23 Mar 2017 22:52:53 GMT  
		Size: 217.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70601d0f6e97f72e498f3313d408824994ab438d91628cbe91634633c5e21215`  
		Last Modified: Thu, 23 Mar 2017 22:53:10 GMT  
		Size: 52.0 MB (52007242 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d7a793f527d405f11783482b2e6af2e69ff35378d369a10519d9f98fca3f9e6`  
		Last Modified: Thu, 23 Mar 2017 22:52:53 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f41d31cfc041b807e5447a836215c1f4d580cc7e8cd402ba1521fc4062b9fa8d`  
		Last Modified: Thu, 23 Mar 2017 22:52:53 GMT  
		Size: 2.5 KB (2461 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99ed2ca78eac79f282a86a6b52445fdc95afc8202c80e65bec90fe71f2e8e451`  
		Last Modified: Thu, 23 Mar 2017 22:52:53 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:5.6`

```console
$ docker pull mysql@sha256:8b32764875c42d1b3ef79f49644ba812cc05a2b2911979727b143a64501defb4
```

-	Platforms:
	-	linux; amd64

### `mysql:5.6` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **113.0 MB (113008393 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:68399df75c596686ace0c41106d1506965b15d54dd48f8599ad94ef589e0fc3e`
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
# Tue, 21 Mar 2017 21:54:38 GMT
RUN apt-get update && apt-get install -y perl pwgen --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 21:54:39 GMT
RUN set -ex; 	key='A4A9406876FCBD3C456770C88C718D3B5072E1F5'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/mysql.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list > /dev/null
# Tue, 21 Mar 2017 21:54:39 GMT
ENV MYSQL_MAJOR=5.6
# Tue, 21 Mar 2017 21:54:40 GMT
ENV MYSQL_VERSION=5.6.35-1debian8
# Tue, 21 Mar 2017 21:54:41 GMT
RUN echo "deb http://repo.mysql.com/apt/debian/ jessie mysql-${MYSQL_MAJOR}" > /etc/apt/sources.list.d/mysql.list
# Tue, 21 Mar 2017 21:54:58 GMT
RUN { 		echo mysql-community-server mysql-community-server/data-dir select ''; 		echo mysql-community-server mysql-community-server/root-pass password ''; 		echo mysql-community-server mysql-community-server/re-root-pass password ''; 		echo mysql-community-server mysql-community-server/remove-test-db select false; 	} | debconf-set-selections 	&& apt-get update && apt-get install -y mysql-server="${MYSQL_VERSION}" && rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Tue, 21 Mar 2017 21:54:59 GMT
RUN sed -Ei 's/^(bind-address|log)/#&/' /etc/mysql/my.cnf 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Tue, 21 Mar 2017 21:54:59 GMT
VOLUME [/var/lib/mysql]
# Tue, 21 Mar 2017 21:55:00 GMT
COPY file:4525fb8b249a0bd84126fe09d40e3039307532c4050b0947d5bea89efdd4c1c9 in /usr/local/bin/ 
# Tue, 21 Mar 2017 21:55:01 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 21 Mar 2017 21:55:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 21 Mar 2017 21:55:02 GMT
EXPOSE 3306/tcp
# Tue, 21 Mar 2017 21:55:02 GMT
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
	-	`sha256:ac3f5f870257758d2d5eb817270b8034c9208c296cc6abdf924485abc0180a2b`  
		Last Modified: Thu, 23 Mar 2017 22:53:01 GMT  
		Size: 8.2 MB (8248348 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38a247b5bcdf4f3007b06df997025c1f3b30b0f9d51f6b5dbd9c028f2d7a21b0`  
		Last Modified: Thu, 23 Mar 2017 22:52:55 GMT  
		Size: 19.2 KB (19182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d528ca18a065853a5e9cffcc2d89109c7f0c64555f826a2d5150d26eefb46fa`  
		Last Modified: Thu, 23 Mar 2017 22:52:53 GMT  
		Size: 217.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70601d0f6e97f72e498f3313d408824994ab438d91628cbe91634633c5e21215`  
		Last Modified: Thu, 23 Mar 2017 22:53:10 GMT  
		Size: 52.0 MB (52007242 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d7a793f527d405f11783482b2e6af2e69ff35378d369a10519d9f98fca3f9e6`  
		Last Modified: Thu, 23 Mar 2017 22:52:53 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f41d31cfc041b807e5447a836215c1f4d580cc7e8cd402ba1521fc4062b9fa8d`  
		Last Modified: Thu, 23 Mar 2017 22:52:53 GMT  
		Size: 2.5 KB (2461 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99ed2ca78eac79f282a86a6b52445fdc95afc8202c80e65bec90fe71f2e8e451`  
		Last Modified: Thu, 23 Mar 2017 22:52:53 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:5.5.54`

```console
$ docker pull mysql@sha256:7b626097ab1531a012e58705a5676ccbb36a19548f6bcf8d3bad7785b54462ea
```

-	Platforms:
	-	linux; amd64

### `mysql:5.5.54` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **87.6 MB (87633236 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:94689ff4bcb5d6084d8a17ddd20c34fcce6efb693ebaa2588737674607ae40b5`
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
# Tue, 21 Mar 2017 21:53:41 GMT
RUN apt-get update && apt-get install -y perl --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 21:53:46 GMT
RUN apt-get update && apt-get install -y libaio1 pwgen && rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 21:53:47 GMT
ENV MYSQL_MAJOR=5.5
# Tue, 21 Mar 2017 21:53:47 GMT
ENV MYSQL_VERSION=5.5.54
# Tue, 21 Mar 2017 21:54:26 GMT
RUN apt-get update && apt-get install -y ca-certificates wget --no-install-recommends && rm -rf /var/lib/apt/lists/* 	&& wget "https://cdn.mysql.com/Downloads/MySQL-$MYSQL_MAJOR/mysql-$MYSQL_VERSION-linux2.6-x86_64.tar.gz" -O mysql.tar.gz 	&& wget "https://cdn.mysql.com/Downloads/MySQL-$MYSQL_MAJOR/mysql-$MYSQL_VERSION-linux2.6-x86_64.tar.gz.asc" -O mysql.tar.gz.asc 	&& apt-get purge -y --auto-remove ca-certificates wget 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys A4A9406876FCBD3C456770C88C718D3B5072E1F5 	&& gpg --batch --verify mysql.tar.gz.asc mysql.tar.gz 	&& rm -r "$GNUPGHOME" mysql.tar.gz.asc 	&& mkdir /usr/local/mysql 	&& tar -xzf mysql.tar.gz -C /usr/local/mysql --strip-components=1 	&& rm mysql.tar.gz 	&& rm -rf /usr/local/mysql/mysql-test /usr/local/mysql/sql-bench 	&& rm -rf /usr/local/mysql/bin/*-debug /usr/local/mysql/bin/*_embedded 	&& find /usr/local/mysql -type f -name "*.a" -delete 	&& apt-get update && apt-get install -y binutils && rm -rf /var/lib/apt/lists/* 	&& { find /usr/local/mysql -type f -executable -exec strip --strip-all '{}' + || true; } 	&& apt-get purge -y --auto-remove binutils
# Tue, 21 Mar 2017 21:54:26 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/mysql/bin:/usr/local/mysql/scripts
# Tue, 21 Mar 2017 21:54:27 GMT
RUN mkdir -p /etc/mysql/conf.d 	&& { 		echo '[mysqld]'; 		echo 'skip-host-cache'; 		echo 'skip-name-resolve'; 		echo 'datadir = /var/lib/mysql'; 		echo '!includedir /etc/mysql/conf.d/'; 	} > /etc/mysql/my.cnf
# Tue, 21 Mar 2017 21:54:28 GMT
RUN mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Tue, 21 Mar 2017 21:54:29 GMT
VOLUME [/var/lib/mysql]
# Tue, 21 Mar 2017 21:54:29 GMT
COPY file:d16a9566d4b9cf29a984c8b6d111646c8dad7579141c4417ccd654d1335ba3fc in /usr/local/bin/ 
# Tue, 21 Mar 2017 21:54:30 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 21 Mar 2017 21:54:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 21 Mar 2017 21:54:31 GMT
EXPOSE 3306/tcp
# Tue, 21 Mar 2017 21:54:31 GMT
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
	-	`sha256:9c605613dbdb79c5ce7828ace1425e249db03f73b8dc79d8b03fb0007df9ecc4`  
		Last Modified: Thu, 23 Mar 2017 22:52:05 GMT  
		Size: 8.2 MB (8220279 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d3339b5ae3235c44298e47aa2ed004213706385956a4bb4b08614ece8a3abb5`  
		Last Modified: Thu, 23 Mar 2017 22:52:02 GMT  
		Size: 101.2 KB (101173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8282d43a70f3e4fd064f7919f657df8356f3dda66a3dbf964dae119aaac94c1`  
		Last Modified: Thu, 23 Mar 2017 22:52:08 GMT  
		Size: 26.6 MB (26579148 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b04b3871bfa2315b690f9ce4fada93a58b4eeb2ad6ef324adfdde1d6026b0695`  
		Last Modified: Thu, 23 Mar 2017 22:51:59 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69762e61a3406dff932291ab3f75649c96142f137b6efe39147f36944ccb6967`  
		Last Modified: Thu, 23 Mar 2017 22:51:59 GMT  
		Size: 173.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddd492c6225a61a354824093ffc331b0cc98db28501a5edd1a9228c3b4301ee3`  
		Last Modified: Thu, 23 Mar 2017 22:51:59 GMT  
		Size: 2.5 KB (2493 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4f5eb131abbd1360213e0a9510a0f05439b36fd6a72f35a2367b350e91ae997`  
		Last Modified: Thu, 23 Mar 2017 22:51:59 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:5.5`

```console
$ docker pull mysql@sha256:7b626097ab1531a012e58705a5676ccbb36a19548f6bcf8d3bad7785b54462ea
```

-	Platforms:
	-	linux; amd64

### `mysql:5.5` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **87.6 MB (87633236 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:94689ff4bcb5d6084d8a17ddd20c34fcce6efb693ebaa2588737674607ae40b5`
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
# Tue, 21 Mar 2017 21:53:41 GMT
RUN apt-get update && apt-get install -y perl --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 21:53:46 GMT
RUN apt-get update && apt-get install -y libaio1 pwgen && rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 21:53:47 GMT
ENV MYSQL_MAJOR=5.5
# Tue, 21 Mar 2017 21:53:47 GMT
ENV MYSQL_VERSION=5.5.54
# Tue, 21 Mar 2017 21:54:26 GMT
RUN apt-get update && apt-get install -y ca-certificates wget --no-install-recommends && rm -rf /var/lib/apt/lists/* 	&& wget "https://cdn.mysql.com/Downloads/MySQL-$MYSQL_MAJOR/mysql-$MYSQL_VERSION-linux2.6-x86_64.tar.gz" -O mysql.tar.gz 	&& wget "https://cdn.mysql.com/Downloads/MySQL-$MYSQL_MAJOR/mysql-$MYSQL_VERSION-linux2.6-x86_64.tar.gz.asc" -O mysql.tar.gz.asc 	&& apt-get purge -y --auto-remove ca-certificates wget 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys A4A9406876FCBD3C456770C88C718D3B5072E1F5 	&& gpg --batch --verify mysql.tar.gz.asc mysql.tar.gz 	&& rm -r "$GNUPGHOME" mysql.tar.gz.asc 	&& mkdir /usr/local/mysql 	&& tar -xzf mysql.tar.gz -C /usr/local/mysql --strip-components=1 	&& rm mysql.tar.gz 	&& rm -rf /usr/local/mysql/mysql-test /usr/local/mysql/sql-bench 	&& rm -rf /usr/local/mysql/bin/*-debug /usr/local/mysql/bin/*_embedded 	&& find /usr/local/mysql -type f -name "*.a" -delete 	&& apt-get update && apt-get install -y binutils && rm -rf /var/lib/apt/lists/* 	&& { find /usr/local/mysql -type f -executable -exec strip --strip-all '{}' + || true; } 	&& apt-get purge -y --auto-remove binutils
# Tue, 21 Mar 2017 21:54:26 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/mysql/bin:/usr/local/mysql/scripts
# Tue, 21 Mar 2017 21:54:27 GMT
RUN mkdir -p /etc/mysql/conf.d 	&& { 		echo '[mysqld]'; 		echo 'skip-host-cache'; 		echo 'skip-name-resolve'; 		echo 'datadir = /var/lib/mysql'; 		echo '!includedir /etc/mysql/conf.d/'; 	} > /etc/mysql/my.cnf
# Tue, 21 Mar 2017 21:54:28 GMT
RUN mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Tue, 21 Mar 2017 21:54:29 GMT
VOLUME [/var/lib/mysql]
# Tue, 21 Mar 2017 21:54:29 GMT
COPY file:d16a9566d4b9cf29a984c8b6d111646c8dad7579141c4417ccd654d1335ba3fc in /usr/local/bin/ 
# Tue, 21 Mar 2017 21:54:30 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 21 Mar 2017 21:54:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 21 Mar 2017 21:54:31 GMT
EXPOSE 3306/tcp
# Tue, 21 Mar 2017 21:54:31 GMT
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
	-	`sha256:9c605613dbdb79c5ce7828ace1425e249db03f73b8dc79d8b03fb0007df9ecc4`  
		Last Modified: Thu, 23 Mar 2017 22:52:05 GMT  
		Size: 8.2 MB (8220279 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d3339b5ae3235c44298e47aa2ed004213706385956a4bb4b08614ece8a3abb5`  
		Last Modified: Thu, 23 Mar 2017 22:52:02 GMT  
		Size: 101.2 KB (101173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8282d43a70f3e4fd064f7919f657df8356f3dda66a3dbf964dae119aaac94c1`  
		Last Modified: Thu, 23 Mar 2017 22:52:08 GMT  
		Size: 26.6 MB (26579148 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b04b3871bfa2315b690f9ce4fada93a58b4eeb2ad6ef324adfdde1d6026b0695`  
		Last Modified: Thu, 23 Mar 2017 22:51:59 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69762e61a3406dff932291ab3f75649c96142f137b6efe39147f36944ccb6967`  
		Last Modified: Thu, 23 Mar 2017 22:51:59 GMT  
		Size: 173.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddd492c6225a61a354824093ffc331b0cc98db28501a5edd1a9228c3b4301ee3`  
		Last Modified: Thu, 23 Mar 2017 22:51:59 GMT  
		Size: 2.5 KB (2493 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4f5eb131abbd1360213e0a9510a0f05439b36fd6a72f35a2367b350e91ae997`  
		Last Modified: Thu, 23 Mar 2017 22:51:59 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
