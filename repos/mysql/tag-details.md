<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `mysql`

-	[`mysql:8.0.2`](#mysql802)
-	[`mysql:8.0`](#mysql80)
-	[`mysql:8`](#mysql8)
-	[`mysql:5.7.19`](#mysql5719)
-	[`mysql:5.7`](#mysql57)
-	[`mysql:5`](#mysql5)
-	[`mysql:latest`](#mysqllatest)
-	[`mysql:5.6.37`](#mysql5637)
-	[`mysql:5.6`](#mysql56)
-	[`mysql:5.5.57`](#mysql5557)
-	[`mysql:5.5`](#mysql55)

## `mysql:8.0.2`

```console
$ docker pull mysql@sha256:1b892d326c711c1b9d834dbd9daba7bc53e527a613f50c75cf2b6056db1662b0
```

-	Platforms:
	-	linux; amd64

### `mysql:8.0.2` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **91.9 MB (91873172 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:240cb827d45a68a3d64ae77b75f4f18722934a74ca44798bcc22b4fc9b0c26bc`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 20 Jun 2017 20:13:32 GMT
ADD file:9c48682ff75c756544d4491472081a078edf5dd0bb5038d1cb850a1f9c480e3e in / 
# Tue, 20 Jun 2017 20:13:34 GMT
CMD ["bash"]
# Fri, 23 Jun 2017 00:26:49 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Fri, 23 Jun 2017 00:26:50 GMT
ENV GOSU_VERSION=1.7
# Fri, 23 Jun 2017 00:27:08 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 23 Jun 2017 00:27:10 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 23 Jun 2017 00:44:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		pwgen 		openssl 		perl 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 00:44:08 GMT
RUN set -ex; 	key='A4A9406876FCBD3C456770C88C718D3B5072E1F5'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/mysql.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list > /dev/null
# Fri, 23 Jun 2017 00:44:09 GMT
ENV MYSQL_MAJOR=8.0
# Tue, 18 Jul 2017 23:13:32 GMT
ENV MYSQL_VERSION=8.0.2-dmr-1debian8
# Tue, 18 Jul 2017 23:13:33 GMT
RUN echo "deb http://repo.mysql.com/apt/debian/ jessie mysql-${MYSQL_MAJOR}" > /etc/apt/sources.list.d/mysql.list
# Tue, 18 Jul 2017 23:13:45 GMT
RUN { 		echo mysql-community-server mysql-community-server/data-dir select ''; 		echo mysql-community-server mysql-community-server/root-pass password ''; 		echo mysql-community-server mysql-community-server/re-root-pass password ''; 		echo mysql-community-server mysql-community-server/remove-test-db select false; 	} | debconf-set-selections 	&& apt-get update && apt-get install -y mysql-community-client-core="${MYSQL_VERSION}" mysql-community-server-core="${MYSQL_VERSION}" && rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Tue, 18 Jul 2017 23:13:45 GMT
VOLUME [/var/lib/mysql]
# Tue, 18 Jul 2017 23:13:46 GMT
COPY dir:110dcf1221c1f9432c68c32a2465ef0b40994f401d5fae0b0de80025bcf839a5 in /etc/mysql/ 
# Tue, 18 Jul 2017 23:13:47 GMT
COPY file:5453fdbdb142b28e9aa4df64d5e1f42a740f018457cb1c65d113b947858ae314 in /usr/local/bin/ 
# Tue, 18 Jul 2017 23:13:48 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 18 Jul 2017 23:13:49 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 18 Jul 2017 23:13:49 GMT
EXPOSE 3306/tcp
# Tue, 18 Jul 2017 23:13:50 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:9f0706ba7422412cd468804fee456786f88bed94bf9aea6dde2a47f770d19d27`  
		Last Modified: Tue, 20 Jun 2017 20:35:47 GMT  
		Size: 52.6 MB (52614808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2290e155d2d0e9a4665a3a3fe112e227034275f6e6ea237122a695dbea5a8861`  
		Last Modified: Sat, 24 Jun 2017 12:34:28 GMT  
		Size: 2.1 KB (2066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:547981b8269f9a3f6be6941c644aa592f59a77e764e0962cacae67e0c6159586`  
		Last Modified: Sat, 24 Jun 2017 12:34:28 GMT  
		Size: 1.3 MB (1304107 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c9d42ed2f48a29a67c7ce9a017f1b14fabb57f9b7193dd51d39675132b7acc3`  
		Last Modified: Sat, 24 Jun 2017 12:34:27 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55e3122f129719805a834134bf980541d450ef8832bff19d2239eaaaa4ea9882`  
		Last Modified: Sat, 24 Jun 2017 13:30:17 GMT  
		Size: 10.7 MB (10712014 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abc10bd8406064510a88b0461a4f2bccdea8e901bc355d1a89f52cf58d9635d3`  
		Last Modified: Sat, 24 Jun 2017 13:30:10 GMT  
		Size: 19.2 KB (19202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fecc6dd25c74418fc20bc0c6d5b6a3662e8c86db6249286550cab4f7cc7ae910`  
		Last Modified: Tue, 18 Jul 2017 23:16:28 GMT  
		Size: 217.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d30061b21a9dcbe3e05a4e1e3f121b44d54f18e6cb150614c8e56c60c3b36113`  
		Last Modified: Tue, 18 Jul 2017 23:16:35 GMT  
		Size: 27.2 MB (27216899 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8336ad6520417bd8dea232f3af6cde750a13dbe6c392049003d28daba67b5936`  
		Last Modified: Tue, 18 Jul 2017 23:16:28 GMT  
		Size: 894.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f266318d04a136b42a1c67bc33768d310a443e3cf1ff566b63d8685f0fd2ca58`  
		Last Modified: Tue, 18 Jul 2017 23:16:28 GMT  
		Size: 2.7 KB (2729 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15bd39b67f5df3fb166543a5aea345e2baf6021257d2baeb44cdf254845424a6`  
		Last Modified: Tue, 18 Jul 2017 23:16:28 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:8.0`

```console
$ docker pull mysql@sha256:1b892d326c711c1b9d834dbd9daba7bc53e527a613f50c75cf2b6056db1662b0
```

-	Platforms:
	-	linux; amd64

### `mysql:8.0` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **91.9 MB (91873172 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:240cb827d45a68a3d64ae77b75f4f18722934a74ca44798bcc22b4fc9b0c26bc`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 20 Jun 2017 20:13:32 GMT
ADD file:9c48682ff75c756544d4491472081a078edf5dd0bb5038d1cb850a1f9c480e3e in / 
# Tue, 20 Jun 2017 20:13:34 GMT
CMD ["bash"]
# Fri, 23 Jun 2017 00:26:49 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Fri, 23 Jun 2017 00:26:50 GMT
ENV GOSU_VERSION=1.7
# Fri, 23 Jun 2017 00:27:08 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 23 Jun 2017 00:27:10 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 23 Jun 2017 00:44:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		pwgen 		openssl 		perl 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 00:44:08 GMT
RUN set -ex; 	key='A4A9406876FCBD3C456770C88C718D3B5072E1F5'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/mysql.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list > /dev/null
# Fri, 23 Jun 2017 00:44:09 GMT
ENV MYSQL_MAJOR=8.0
# Tue, 18 Jul 2017 23:13:32 GMT
ENV MYSQL_VERSION=8.0.2-dmr-1debian8
# Tue, 18 Jul 2017 23:13:33 GMT
RUN echo "deb http://repo.mysql.com/apt/debian/ jessie mysql-${MYSQL_MAJOR}" > /etc/apt/sources.list.d/mysql.list
# Tue, 18 Jul 2017 23:13:45 GMT
RUN { 		echo mysql-community-server mysql-community-server/data-dir select ''; 		echo mysql-community-server mysql-community-server/root-pass password ''; 		echo mysql-community-server mysql-community-server/re-root-pass password ''; 		echo mysql-community-server mysql-community-server/remove-test-db select false; 	} | debconf-set-selections 	&& apt-get update && apt-get install -y mysql-community-client-core="${MYSQL_VERSION}" mysql-community-server-core="${MYSQL_VERSION}" && rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Tue, 18 Jul 2017 23:13:45 GMT
VOLUME [/var/lib/mysql]
# Tue, 18 Jul 2017 23:13:46 GMT
COPY dir:110dcf1221c1f9432c68c32a2465ef0b40994f401d5fae0b0de80025bcf839a5 in /etc/mysql/ 
# Tue, 18 Jul 2017 23:13:47 GMT
COPY file:5453fdbdb142b28e9aa4df64d5e1f42a740f018457cb1c65d113b947858ae314 in /usr/local/bin/ 
# Tue, 18 Jul 2017 23:13:48 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 18 Jul 2017 23:13:49 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 18 Jul 2017 23:13:49 GMT
EXPOSE 3306/tcp
# Tue, 18 Jul 2017 23:13:50 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:9f0706ba7422412cd468804fee456786f88bed94bf9aea6dde2a47f770d19d27`  
		Last Modified: Tue, 20 Jun 2017 20:35:47 GMT  
		Size: 52.6 MB (52614808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2290e155d2d0e9a4665a3a3fe112e227034275f6e6ea237122a695dbea5a8861`  
		Last Modified: Sat, 24 Jun 2017 12:34:28 GMT  
		Size: 2.1 KB (2066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:547981b8269f9a3f6be6941c644aa592f59a77e764e0962cacae67e0c6159586`  
		Last Modified: Sat, 24 Jun 2017 12:34:28 GMT  
		Size: 1.3 MB (1304107 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c9d42ed2f48a29a67c7ce9a017f1b14fabb57f9b7193dd51d39675132b7acc3`  
		Last Modified: Sat, 24 Jun 2017 12:34:27 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55e3122f129719805a834134bf980541d450ef8832bff19d2239eaaaa4ea9882`  
		Last Modified: Sat, 24 Jun 2017 13:30:17 GMT  
		Size: 10.7 MB (10712014 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abc10bd8406064510a88b0461a4f2bccdea8e901bc355d1a89f52cf58d9635d3`  
		Last Modified: Sat, 24 Jun 2017 13:30:10 GMT  
		Size: 19.2 KB (19202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fecc6dd25c74418fc20bc0c6d5b6a3662e8c86db6249286550cab4f7cc7ae910`  
		Last Modified: Tue, 18 Jul 2017 23:16:28 GMT  
		Size: 217.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d30061b21a9dcbe3e05a4e1e3f121b44d54f18e6cb150614c8e56c60c3b36113`  
		Last Modified: Tue, 18 Jul 2017 23:16:35 GMT  
		Size: 27.2 MB (27216899 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8336ad6520417bd8dea232f3af6cde750a13dbe6c392049003d28daba67b5936`  
		Last Modified: Tue, 18 Jul 2017 23:16:28 GMT  
		Size: 894.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f266318d04a136b42a1c67bc33768d310a443e3cf1ff566b63d8685f0fd2ca58`  
		Last Modified: Tue, 18 Jul 2017 23:16:28 GMT  
		Size: 2.7 KB (2729 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15bd39b67f5df3fb166543a5aea345e2baf6021257d2baeb44cdf254845424a6`  
		Last Modified: Tue, 18 Jul 2017 23:16:28 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:8`

```console
$ docker pull mysql@sha256:1b892d326c711c1b9d834dbd9daba7bc53e527a613f50c75cf2b6056db1662b0
```

-	Platforms:
	-	linux; amd64

### `mysql:8` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **91.9 MB (91873172 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:240cb827d45a68a3d64ae77b75f4f18722934a74ca44798bcc22b4fc9b0c26bc`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 20 Jun 2017 20:13:32 GMT
ADD file:9c48682ff75c756544d4491472081a078edf5dd0bb5038d1cb850a1f9c480e3e in / 
# Tue, 20 Jun 2017 20:13:34 GMT
CMD ["bash"]
# Fri, 23 Jun 2017 00:26:49 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Fri, 23 Jun 2017 00:26:50 GMT
ENV GOSU_VERSION=1.7
# Fri, 23 Jun 2017 00:27:08 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 23 Jun 2017 00:27:10 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 23 Jun 2017 00:44:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		pwgen 		openssl 		perl 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 00:44:08 GMT
RUN set -ex; 	key='A4A9406876FCBD3C456770C88C718D3B5072E1F5'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/mysql.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list > /dev/null
# Fri, 23 Jun 2017 00:44:09 GMT
ENV MYSQL_MAJOR=8.0
# Tue, 18 Jul 2017 23:13:32 GMT
ENV MYSQL_VERSION=8.0.2-dmr-1debian8
# Tue, 18 Jul 2017 23:13:33 GMT
RUN echo "deb http://repo.mysql.com/apt/debian/ jessie mysql-${MYSQL_MAJOR}" > /etc/apt/sources.list.d/mysql.list
# Tue, 18 Jul 2017 23:13:45 GMT
RUN { 		echo mysql-community-server mysql-community-server/data-dir select ''; 		echo mysql-community-server mysql-community-server/root-pass password ''; 		echo mysql-community-server mysql-community-server/re-root-pass password ''; 		echo mysql-community-server mysql-community-server/remove-test-db select false; 	} | debconf-set-selections 	&& apt-get update && apt-get install -y mysql-community-client-core="${MYSQL_VERSION}" mysql-community-server-core="${MYSQL_VERSION}" && rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Tue, 18 Jul 2017 23:13:45 GMT
VOLUME [/var/lib/mysql]
# Tue, 18 Jul 2017 23:13:46 GMT
COPY dir:110dcf1221c1f9432c68c32a2465ef0b40994f401d5fae0b0de80025bcf839a5 in /etc/mysql/ 
# Tue, 18 Jul 2017 23:13:47 GMT
COPY file:5453fdbdb142b28e9aa4df64d5e1f42a740f018457cb1c65d113b947858ae314 in /usr/local/bin/ 
# Tue, 18 Jul 2017 23:13:48 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 18 Jul 2017 23:13:49 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 18 Jul 2017 23:13:49 GMT
EXPOSE 3306/tcp
# Tue, 18 Jul 2017 23:13:50 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:9f0706ba7422412cd468804fee456786f88bed94bf9aea6dde2a47f770d19d27`  
		Last Modified: Tue, 20 Jun 2017 20:35:47 GMT  
		Size: 52.6 MB (52614808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2290e155d2d0e9a4665a3a3fe112e227034275f6e6ea237122a695dbea5a8861`  
		Last Modified: Sat, 24 Jun 2017 12:34:28 GMT  
		Size: 2.1 KB (2066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:547981b8269f9a3f6be6941c644aa592f59a77e764e0962cacae67e0c6159586`  
		Last Modified: Sat, 24 Jun 2017 12:34:28 GMT  
		Size: 1.3 MB (1304107 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c9d42ed2f48a29a67c7ce9a017f1b14fabb57f9b7193dd51d39675132b7acc3`  
		Last Modified: Sat, 24 Jun 2017 12:34:27 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55e3122f129719805a834134bf980541d450ef8832bff19d2239eaaaa4ea9882`  
		Last Modified: Sat, 24 Jun 2017 13:30:17 GMT  
		Size: 10.7 MB (10712014 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abc10bd8406064510a88b0461a4f2bccdea8e901bc355d1a89f52cf58d9635d3`  
		Last Modified: Sat, 24 Jun 2017 13:30:10 GMT  
		Size: 19.2 KB (19202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fecc6dd25c74418fc20bc0c6d5b6a3662e8c86db6249286550cab4f7cc7ae910`  
		Last Modified: Tue, 18 Jul 2017 23:16:28 GMT  
		Size: 217.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d30061b21a9dcbe3e05a4e1e3f121b44d54f18e6cb150614c8e56c60c3b36113`  
		Last Modified: Tue, 18 Jul 2017 23:16:35 GMT  
		Size: 27.2 MB (27216899 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8336ad6520417bd8dea232f3af6cde750a13dbe6c392049003d28daba67b5936`  
		Last Modified: Tue, 18 Jul 2017 23:16:28 GMT  
		Size: 894.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f266318d04a136b42a1c67bc33768d310a443e3cf1ff566b63d8685f0fd2ca58`  
		Last Modified: Tue, 18 Jul 2017 23:16:28 GMT  
		Size: 2.7 KB (2729 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15bd39b67f5df3fb166543a5aea345e2baf6021257d2baeb44cdf254845424a6`  
		Last Modified: Tue, 18 Jul 2017 23:16:28 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:5.7.19`

```console
$ docker pull mysql@sha256:75c563c474f1adc149978011fedfe2e6670483d133b22b07ee32789b626f8de3
```

-	Platforms:
	-	linux; amd64

### `mysql:5.7.19` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **144.3 MB (144267668 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ec161391b8c32a70b45c4eb505fb94b674a41e7de920a20d37887252e7385d61`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 20 Jun 2017 20:13:32 GMT
ADD file:9c48682ff75c756544d4491472081a078edf5dd0bb5038d1cb850a1f9c480e3e in / 
# Tue, 20 Jun 2017 20:13:34 GMT
CMD ["bash"]
# Fri, 23 Jun 2017 00:26:49 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Fri, 23 Jun 2017 00:26:50 GMT
ENV GOSU_VERSION=1.7
# Fri, 23 Jun 2017 00:27:08 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 23 Jun 2017 00:27:10 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 23 Jun 2017 00:44:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		pwgen 		openssl 		perl 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 00:44:08 GMT
RUN set -ex; 	key='A4A9406876FCBD3C456770C88C718D3B5072E1F5'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/mysql.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list > /dev/null
# Fri, 23 Jun 2017 00:44:55 GMT
ENV MYSQL_MAJOR=5.7
# Tue, 18 Jul 2017 23:14:02 GMT
ENV MYSQL_VERSION=5.7.19-1debian8
# Tue, 18 Jul 2017 23:14:04 GMT
RUN echo "deb http://repo.mysql.com/apt/debian/ jessie mysql-${MYSQL_MAJOR}" > /etc/apt/sources.list.d/mysql.list
# Tue, 18 Jul 2017 23:14:34 GMT
RUN { 		echo mysql-community-server mysql-community-server/data-dir select ''; 		echo mysql-community-server mysql-community-server/root-pass password ''; 		echo mysql-community-server mysql-community-server/re-root-pass password ''; 		echo mysql-community-server mysql-community-server/remove-test-db select false; 	} | debconf-set-selections 	&& apt-get update && apt-get install -y mysql-server="${MYSQL_VERSION}" && rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Tue, 18 Jul 2017 23:14:36 GMT
RUN sed -Ei 's/^(bind-address|log)/#&/' /etc/mysql/mysql.conf.d/mysqld.cnf 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Tue, 18 Jul 2017 23:14:37 GMT
VOLUME [/var/lib/mysql]
# Tue, 18 Jul 2017 23:14:38 GMT
COPY file:5453fdbdb142b28e9aa4df64d5e1f42a740f018457cb1c65d113b947858ae314 in /usr/local/bin/ 
# Tue, 18 Jul 2017 23:14:39 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 18 Jul 2017 23:14:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 18 Jul 2017 23:14:40 GMT
EXPOSE 3306/tcp
# Tue, 18 Jul 2017 23:14:41 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:9f0706ba7422412cd468804fee456786f88bed94bf9aea6dde2a47f770d19d27`  
		Last Modified: Tue, 20 Jun 2017 20:35:47 GMT  
		Size: 52.6 MB (52614808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2290e155d2d0e9a4665a3a3fe112e227034275f6e6ea237122a695dbea5a8861`  
		Last Modified: Sat, 24 Jun 2017 12:34:28 GMT  
		Size: 2.1 KB (2066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:547981b8269f9a3f6be6941c644aa592f59a77e764e0962cacae67e0c6159586`  
		Last Modified: Sat, 24 Jun 2017 12:34:28 GMT  
		Size: 1.3 MB (1304107 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c9d42ed2f48a29a67c7ce9a017f1b14fabb57f9b7193dd51d39675132b7acc3`  
		Last Modified: Sat, 24 Jun 2017 12:34:27 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55e3122f129719805a834134bf980541d450ef8832bff19d2239eaaaa4ea9882`  
		Last Modified: Sat, 24 Jun 2017 13:30:17 GMT  
		Size: 10.7 MB (10712014 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abc10bd8406064510a88b0461a4f2bccdea8e901bc355d1a89f52cf58d9635d3`  
		Last Modified: Sat, 24 Jun 2017 13:30:10 GMT  
		Size: 19.2 KB (19202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa37081010bb694ed5f656563621aadf09a0b65396700cf5332c208ec05b1071`  
		Last Modified: Tue, 18 Jul 2017 23:17:13 GMT  
		Size: 217.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aadaa7b95bc68930e83dd3dd66a41c5eeb167b99b8d2b21af07cfe865a84ecd8`  
		Last Modified: Tue, 18 Jul 2017 23:17:25 GMT  
		Size: 79.6 MB (79611357 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8781ef2786a74f72ed2baf6ac87c7a2144641a6a0d866e5e922d588b8bfad4e9`  
		Last Modified: Tue, 18 Jul 2017 23:17:12 GMT  
		Size: 935.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5c96613e09e78bb8f0c8dbbea4101ecde5ce6b1e1590f0a59a56548cae09fb9`  
		Last Modified: Tue, 18 Jul 2017 23:17:13 GMT  
		Size: 2.7 KB (2729 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3eac97813dda1d687d068b7cddd4557a9193366cfe75723206a37ad002c3d93a`  
		Last Modified: Tue, 18 Jul 2017 23:17:13 GMT  
		Size: 118.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:5.7`

```console
$ docker pull mysql@sha256:75c563c474f1adc149978011fedfe2e6670483d133b22b07ee32789b626f8de3
```

-	Platforms:
	-	linux; amd64

### `mysql:5.7` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **144.3 MB (144267668 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ec161391b8c32a70b45c4eb505fb94b674a41e7de920a20d37887252e7385d61`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 20 Jun 2017 20:13:32 GMT
ADD file:9c48682ff75c756544d4491472081a078edf5dd0bb5038d1cb850a1f9c480e3e in / 
# Tue, 20 Jun 2017 20:13:34 GMT
CMD ["bash"]
# Fri, 23 Jun 2017 00:26:49 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Fri, 23 Jun 2017 00:26:50 GMT
ENV GOSU_VERSION=1.7
# Fri, 23 Jun 2017 00:27:08 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 23 Jun 2017 00:27:10 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 23 Jun 2017 00:44:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		pwgen 		openssl 		perl 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 00:44:08 GMT
RUN set -ex; 	key='A4A9406876FCBD3C456770C88C718D3B5072E1F5'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/mysql.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list > /dev/null
# Fri, 23 Jun 2017 00:44:55 GMT
ENV MYSQL_MAJOR=5.7
# Tue, 18 Jul 2017 23:14:02 GMT
ENV MYSQL_VERSION=5.7.19-1debian8
# Tue, 18 Jul 2017 23:14:04 GMT
RUN echo "deb http://repo.mysql.com/apt/debian/ jessie mysql-${MYSQL_MAJOR}" > /etc/apt/sources.list.d/mysql.list
# Tue, 18 Jul 2017 23:14:34 GMT
RUN { 		echo mysql-community-server mysql-community-server/data-dir select ''; 		echo mysql-community-server mysql-community-server/root-pass password ''; 		echo mysql-community-server mysql-community-server/re-root-pass password ''; 		echo mysql-community-server mysql-community-server/remove-test-db select false; 	} | debconf-set-selections 	&& apt-get update && apt-get install -y mysql-server="${MYSQL_VERSION}" && rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Tue, 18 Jul 2017 23:14:36 GMT
RUN sed -Ei 's/^(bind-address|log)/#&/' /etc/mysql/mysql.conf.d/mysqld.cnf 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Tue, 18 Jul 2017 23:14:37 GMT
VOLUME [/var/lib/mysql]
# Tue, 18 Jul 2017 23:14:38 GMT
COPY file:5453fdbdb142b28e9aa4df64d5e1f42a740f018457cb1c65d113b947858ae314 in /usr/local/bin/ 
# Tue, 18 Jul 2017 23:14:39 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 18 Jul 2017 23:14:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 18 Jul 2017 23:14:40 GMT
EXPOSE 3306/tcp
# Tue, 18 Jul 2017 23:14:41 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:9f0706ba7422412cd468804fee456786f88bed94bf9aea6dde2a47f770d19d27`  
		Last Modified: Tue, 20 Jun 2017 20:35:47 GMT  
		Size: 52.6 MB (52614808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2290e155d2d0e9a4665a3a3fe112e227034275f6e6ea237122a695dbea5a8861`  
		Last Modified: Sat, 24 Jun 2017 12:34:28 GMT  
		Size: 2.1 KB (2066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:547981b8269f9a3f6be6941c644aa592f59a77e764e0962cacae67e0c6159586`  
		Last Modified: Sat, 24 Jun 2017 12:34:28 GMT  
		Size: 1.3 MB (1304107 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c9d42ed2f48a29a67c7ce9a017f1b14fabb57f9b7193dd51d39675132b7acc3`  
		Last Modified: Sat, 24 Jun 2017 12:34:27 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55e3122f129719805a834134bf980541d450ef8832bff19d2239eaaaa4ea9882`  
		Last Modified: Sat, 24 Jun 2017 13:30:17 GMT  
		Size: 10.7 MB (10712014 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abc10bd8406064510a88b0461a4f2bccdea8e901bc355d1a89f52cf58d9635d3`  
		Last Modified: Sat, 24 Jun 2017 13:30:10 GMT  
		Size: 19.2 KB (19202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa37081010bb694ed5f656563621aadf09a0b65396700cf5332c208ec05b1071`  
		Last Modified: Tue, 18 Jul 2017 23:17:13 GMT  
		Size: 217.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aadaa7b95bc68930e83dd3dd66a41c5eeb167b99b8d2b21af07cfe865a84ecd8`  
		Last Modified: Tue, 18 Jul 2017 23:17:25 GMT  
		Size: 79.6 MB (79611357 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8781ef2786a74f72ed2baf6ac87c7a2144641a6a0d866e5e922d588b8bfad4e9`  
		Last Modified: Tue, 18 Jul 2017 23:17:12 GMT  
		Size: 935.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5c96613e09e78bb8f0c8dbbea4101ecde5ce6b1e1590f0a59a56548cae09fb9`  
		Last Modified: Tue, 18 Jul 2017 23:17:13 GMT  
		Size: 2.7 KB (2729 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3eac97813dda1d687d068b7cddd4557a9193366cfe75723206a37ad002c3d93a`  
		Last Modified: Tue, 18 Jul 2017 23:17:13 GMT  
		Size: 118.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:5`

```console
$ docker pull mysql@sha256:75c563c474f1adc149978011fedfe2e6670483d133b22b07ee32789b626f8de3
```

-	Platforms:
	-	linux; amd64

### `mysql:5` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **144.3 MB (144267668 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ec161391b8c32a70b45c4eb505fb94b674a41e7de920a20d37887252e7385d61`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 20 Jun 2017 20:13:32 GMT
ADD file:9c48682ff75c756544d4491472081a078edf5dd0bb5038d1cb850a1f9c480e3e in / 
# Tue, 20 Jun 2017 20:13:34 GMT
CMD ["bash"]
# Fri, 23 Jun 2017 00:26:49 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Fri, 23 Jun 2017 00:26:50 GMT
ENV GOSU_VERSION=1.7
# Fri, 23 Jun 2017 00:27:08 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 23 Jun 2017 00:27:10 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 23 Jun 2017 00:44:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		pwgen 		openssl 		perl 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 00:44:08 GMT
RUN set -ex; 	key='A4A9406876FCBD3C456770C88C718D3B5072E1F5'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/mysql.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list > /dev/null
# Fri, 23 Jun 2017 00:44:55 GMT
ENV MYSQL_MAJOR=5.7
# Tue, 18 Jul 2017 23:14:02 GMT
ENV MYSQL_VERSION=5.7.19-1debian8
# Tue, 18 Jul 2017 23:14:04 GMT
RUN echo "deb http://repo.mysql.com/apt/debian/ jessie mysql-${MYSQL_MAJOR}" > /etc/apt/sources.list.d/mysql.list
# Tue, 18 Jul 2017 23:14:34 GMT
RUN { 		echo mysql-community-server mysql-community-server/data-dir select ''; 		echo mysql-community-server mysql-community-server/root-pass password ''; 		echo mysql-community-server mysql-community-server/re-root-pass password ''; 		echo mysql-community-server mysql-community-server/remove-test-db select false; 	} | debconf-set-selections 	&& apt-get update && apt-get install -y mysql-server="${MYSQL_VERSION}" && rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Tue, 18 Jul 2017 23:14:36 GMT
RUN sed -Ei 's/^(bind-address|log)/#&/' /etc/mysql/mysql.conf.d/mysqld.cnf 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Tue, 18 Jul 2017 23:14:37 GMT
VOLUME [/var/lib/mysql]
# Tue, 18 Jul 2017 23:14:38 GMT
COPY file:5453fdbdb142b28e9aa4df64d5e1f42a740f018457cb1c65d113b947858ae314 in /usr/local/bin/ 
# Tue, 18 Jul 2017 23:14:39 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 18 Jul 2017 23:14:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 18 Jul 2017 23:14:40 GMT
EXPOSE 3306/tcp
# Tue, 18 Jul 2017 23:14:41 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:9f0706ba7422412cd468804fee456786f88bed94bf9aea6dde2a47f770d19d27`  
		Last Modified: Tue, 20 Jun 2017 20:35:47 GMT  
		Size: 52.6 MB (52614808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2290e155d2d0e9a4665a3a3fe112e227034275f6e6ea237122a695dbea5a8861`  
		Last Modified: Sat, 24 Jun 2017 12:34:28 GMT  
		Size: 2.1 KB (2066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:547981b8269f9a3f6be6941c644aa592f59a77e764e0962cacae67e0c6159586`  
		Last Modified: Sat, 24 Jun 2017 12:34:28 GMT  
		Size: 1.3 MB (1304107 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c9d42ed2f48a29a67c7ce9a017f1b14fabb57f9b7193dd51d39675132b7acc3`  
		Last Modified: Sat, 24 Jun 2017 12:34:27 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55e3122f129719805a834134bf980541d450ef8832bff19d2239eaaaa4ea9882`  
		Last Modified: Sat, 24 Jun 2017 13:30:17 GMT  
		Size: 10.7 MB (10712014 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abc10bd8406064510a88b0461a4f2bccdea8e901bc355d1a89f52cf58d9635d3`  
		Last Modified: Sat, 24 Jun 2017 13:30:10 GMT  
		Size: 19.2 KB (19202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa37081010bb694ed5f656563621aadf09a0b65396700cf5332c208ec05b1071`  
		Last Modified: Tue, 18 Jul 2017 23:17:13 GMT  
		Size: 217.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aadaa7b95bc68930e83dd3dd66a41c5eeb167b99b8d2b21af07cfe865a84ecd8`  
		Last Modified: Tue, 18 Jul 2017 23:17:25 GMT  
		Size: 79.6 MB (79611357 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8781ef2786a74f72ed2baf6ac87c7a2144641a6a0d866e5e922d588b8bfad4e9`  
		Last Modified: Tue, 18 Jul 2017 23:17:12 GMT  
		Size: 935.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5c96613e09e78bb8f0c8dbbea4101ecde5ce6b1e1590f0a59a56548cae09fb9`  
		Last Modified: Tue, 18 Jul 2017 23:17:13 GMT  
		Size: 2.7 KB (2729 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3eac97813dda1d687d068b7cddd4557a9193366cfe75723206a37ad002c3d93a`  
		Last Modified: Tue, 18 Jul 2017 23:17:13 GMT  
		Size: 118.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:latest`

```console
$ docker pull mysql@sha256:75c563c474f1adc149978011fedfe2e6670483d133b22b07ee32789b626f8de3
```

-	Platforms:
	-	linux; amd64

### `mysql:latest` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **144.3 MB (144267668 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ec161391b8c32a70b45c4eb505fb94b674a41e7de920a20d37887252e7385d61`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 20 Jun 2017 20:13:32 GMT
ADD file:9c48682ff75c756544d4491472081a078edf5dd0bb5038d1cb850a1f9c480e3e in / 
# Tue, 20 Jun 2017 20:13:34 GMT
CMD ["bash"]
# Fri, 23 Jun 2017 00:26:49 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Fri, 23 Jun 2017 00:26:50 GMT
ENV GOSU_VERSION=1.7
# Fri, 23 Jun 2017 00:27:08 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 23 Jun 2017 00:27:10 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 23 Jun 2017 00:44:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		pwgen 		openssl 		perl 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 00:44:08 GMT
RUN set -ex; 	key='A4A9406876FCBD3C456770C88C718D3B5072E1F5'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/mysql.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list > /dev/null
# Fri, 23 Jun 2017 00:44:55 GMT
ENV MYSQL_MAJOR=5.7
# Tue, 18 Jul 2017 23:14:02 GMT
ENV MYSQL_VERSION=5.7.19-1debian8
# Tue, 18 Jul 2017 23:14:04 GMT
RUN echo "deb http://repo.mysql.com/apt/debian/ jessie mysql-${MYSQL_MAJOR}" > /etc/apt/sources.list.d/mysql.list
# Tue, 18 Jul 2017 23:14:34 GMT
RUN { 		echo mysql-community-server mysql-community-server/data-dir select ''; 		echo mysql-community-server mysql-community-server/root-pass password ''; 		echo mysql-community-server mysql-community-server/re-root-pass password ''; 		echo mysql-community-server mysql-community-server/remove-test-db select false; 	} | debconf-set-selections 	&& apt-get update && apt-get install -y mysql-server="${MYSQL_VERSION}" && rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Tue, 18 Jul 2017 23:14:36 GMT
RUN sed -Ei 's/^(bind-address|log)/#&/' /etc/mysql/mysql.conf.d/mysqld.cnf 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Tue, 18 Jul 2017 23:14:37 GMT
VOLUME [/var/lib/mysql]
# Tue, 18 Jul 2017 23:14:38 GMT
COPY file:5453fdbdb142b28e9aa4df64d5e1f42a740f018457cb1c65d113b947858ae314 in /usr/local/bin/ 
# Tue, 18 Jul 2017 23:14:39 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 18 Jul 2017 23:14:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 18 Jul 2017 23:14:40 GMT
EXPOSE 3306/tcp
# Tue, 18 Jul 2017 23:14:41 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:9f0706ba7422412cd468804fee456786f88bed94bf9aea6dde2a47f770d19d27`  
		Last Modified: Tue, 20 Jun 2017 20:35:47 GMT  
		Size: 52.6 MB (52614808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2290e155d2d0e9a4665a3a3fe112e227034275f6e6ea237122a695dbea5a8861`  
		Last Modified: Sat, 24 Jun 2017 12:34:28 GMT  
		Size: 2.1 KB (2066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:547981b8269f9a3f6be6941c644aa592f59a77e764e0962cacae67e0c6159586`  
		Last Modified: Sat, 24 Jun 2017 12:34:28 GMT  
		Size: 1.3 MB (1304107 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c9d42ed2f48a29a67c7ce9a017f1b14fabb57f9b7193dd51d39675132b7acc3`  
		Last Modified: Sat, 24 Jun 2017 12:34:27 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55e3122f129719805a834134bf980541d450ef8832bff19d2239eaaaa4ea9882`  
		Last Modified: Sat, 24 Jun 2017 13:30:17 GMT  
		Size: 10.7 MB (10712014 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abc10bd8406064510a88b0461a4f2bccdea8e901bc355d1a89f52cf58d9635d3`  
		Last Modified: Sat, 24 Jun 2017 13:30:10 GMT  
		Size: 19.2 KB (19202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa37081010bb694ed5f656563621aadf09a0b65396700cf5332c208ec05b1071`  
		Last Modified: Tue, 18 Jul 2017 23:17:13 GMT  
		Size: 217.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aadaa7b95bc68930e83dd3dd66a41c5eeb167b99b8d2b21af07cfe865a84ecd8`  
		Last Modified: Tue, 18 Jul 2017 23:17:25 GMT  
		Size: 79.6 MB (79611357 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8781ef2786a74f72ed2baf6ac87c7a2144641a6a0d866e5e922d588b8bfad4e9`  
		Last Modified: Tue, 18 Jul 2017 23:17:12 GMT  
		Size: 935.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5c96613e09e78bb8f0c8dbbea4101ecde5ce6b1e1590f0a59a56548cae09fb9`  
		Last Modified: Tue, 18 Jul 2017 23:17:13 GMT  
		Size: 2.7 KB (2729 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3eac97813dda1d687d068b7cddd4557a9193366cfe75723206a37ad002c3d93a`  
		Last Modified: Tue, 18 Jul 2017 23:17:13 GMT  
		Size: 118.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:5.6.37`

```console
$ docker pull mysql@sha256:6ad5bd392c9190fa92e65fd21f6debc8b2a76fc54f13949f9b5bc6a0096a5285
```

-	Platforms:
	-	linux; amd64

### `mysql:5.6.37` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.9 MB (104863414 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f8fe303bcac2c9849638e404a2efee6ff3435f7290074a3ea8a976253f542376`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 20 Jun 2017 20:13:32 GMT
ADD file:9c48682ff75c756544d4491472081a078edf5dd0bb5038d1cb850a1f9c480e3e in / 
# Tue, 20 Jun 2017 20:13:34 GMT
CMD ["bash"]
# Fri, 23 Jun 2017 00:26:49 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Fri, 23 Jun 2017 00:26:50 GMT
ENV GOSU_VERSION=1.7
# Fri, 23 Jun 2017 00:27:08 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 23 Jun 2017 00:27:10 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 23 Jun 2017 00:46:03 GMT
RUN apt-get update && apt-get install -y perl pwgen --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 00:46:07 GMT
RUN set -ex; 	key='A4A9406876FCBD3C456770C88C718D3B5072E1F5'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/mysql.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list > /dev/null
# Fri, 23 Jun 2017 00:46:07 GMT
ENV MYSQL_MAJOR=5.6
# Tue, 18 Jul 2017 23:14:55 GMT
ENV MYSQL_VERSION=5.6.37-1debian8
# Tue, 18 Jul 2017 23:14:56 GMT
RUN echo "deb http://repo.mysql.com/apt/debian/ jessie mysql-${MYSQL_MAJOR}" > /etc/apt/sources.list.d/mysql.list
# Tue, 18 Jul 2017 23:15:17 GMT
RUN { 		echo mysql-community-server mysql-community-server/data-dir select ''; 		echo mysql-community-server mysql-community-server/root-pass password ''; 		echo mysql-community-server mysql-community-server/re-root-pass password ''; 		echo mysql-community-server mysql-community-server/remove-test-db select false; 	} | debconf-set-selections 	&& apt-get update && apt-get install -y mysql-server="${MYSQL_VERSION}" && rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Tue, 18 Jul 2017 23:15:18 GMT
RUN sed -Ei 's/^(bind-address|log)/#&/' /etc/mysql/my.cnf 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Tue, 18 Jul 2017 23:15:19 GMT
VOLUME [/var/lib/mysql]
# Tue, 18 Jul 2017 23:15:19 GMT
COPY file:b4e423a0d95974d5269d37431aafc0c69cb304dc09ab3f496dbcfdfbc2dbd818 in /usr/local/bin/ 
# Tue, 18 Jul 2017 23:15:20 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 18 Jul 2017 23:15:21 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 18 Jul 2017 23:15:21 GMT
EXPOSE 3306/tcp
# Tue, 18 Jul 2017 23:15:22 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:9f0706ba7422412cd468804fee456786f88bed94bf9aea6dde2a47f770d19d27`  
		Last Modified: Tue, 20 Jun 2017 20:35:47 GMT  
		Size: 52.6 MB (52614808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2290e155d2d0e9a4665a3a3fe112e227034275f6e6ea237122a695dbea5a8861`  
		Last Modified: Sat, 24 Jun 2017 12:34:28 GMT  
		Size: 2.1 KB (2066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:547981b8269f9a3f6be6941c644aa592f59a77e764e0962cacae67e0c6159586`  
		Last Modified: Sat, 24 Jun 2017 12:34:28 GMT  
		Size: 1.3 MB (1304107 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c9d42ed2f48a29a67c7ce9a017f1b14fabb57f9b7193dd51d39675132b7acc3`  
		Last Modified: Sat, 24 Jun 2017 12:34:27 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a50168a1b927e4724cd8fd9805938d8b16e61ccf6f87cf1266e85934c5128b6a`  
		Last Modified: Sat, 24 Jun 2017 13:33:58 GMT  
		Size: 8.3 MB (8255567 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:414da6fabf18cf1cb8c83d70e746abe6b504186ec2cfa39cbef3d7f32ffc40c1`  
		Last Modified: Sat, 24 Jun 2017 13:33:52 GMT  
		Size: 19.2 KB (19202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59712aef26ce94b8dc09ce344a47d88cebd078867c1d615483ac60f5e81b66dd`  
		Last Modified: Tue, 18 Jul 2017 23:18:36 GMT  
		Size: 217.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57ae52f98217f181c4add79109b4ed8551c69cac2a09c25c2aa748fd5fd5a840`  
		Last Modified: Tue, 18 Jul 2017 23:18:46 GMT  
		Size: 42.7 MB (42663766 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:530090688557ba9ccbbc3ae3b772731ba8c6efc23b733a8bbe705d6704996c1f`  
		Last Modified: Tue, 18 Jul 2017 23:18:36 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0e2d183aba1f23de4bf2dbd2fe3b6e73aa46ed93664644f1c7d96bc421db079`  
		Last Modified: Tue, 18 Jul 2017 23:18:37 GMT  
		Size: 2.6 KB (2593 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba38b81ed3c127e1613fe69d7498844f90c188f1c45acb461f97ba1589fa643b`  
		Last Modified: Tue, 18 Jul 2017 23:18:36 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:5.6`

```console
$ docker pull mysql@sha256:6ad5bd392c9190fa92e65fd21f6debc8b2a76fc54f13949f9b5bc6a0096a5285
```

-	Platforms:
	-	linux; amd64

### `mysql:5.6` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.9 MB (104863414 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f8fe303bcac2c9849638e404a2efee6ff3435f7290074a3ea8a976253f542376`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 20 Jun 2017 20:13:32 GMT
ADD file:9c48682ff75c756544d4491472081a078edf5dd0bb5038d1cb850a1f9c480e3e in / 
# Tue, 20 Jun 2017 20:13:34 GMT
CMD ["bash"]
# Fri, 23 Jun 2017 00:26:49 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Fri, 23 Jun 2017 00:26:50 GMT
ENV GOSU_VERSION=1.7
# Fri, 23 Jun 2017 00:27:08 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 23 Jun 2017 00:27:10 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 23 Jun 2017 00:46:03 GMT
RUN apt-get update && apt-get install -y perl pwgen --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 00:46:07 GMT
RUN set -ex; 	key='A4A9406876FCBD3C456770C88C718D3B5072E1F5'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/mysql.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list > /dev/null
# Fri, 23 Jun 2017 00:46:07 GMT
ENV MYSQL_MAJOR=5.6
# Tue, 18 Jul 2017 23:14:55 GMT
ENV MYSQL_VERSION=5.6.37-1debian8
# Tue, 18 Jul 2017 23:14:56 GMT
RUN echo "deb http://repo.mysql.com/apt/debian/ jessie mysql-${MYSQL_MAJOR}" > /etc/apt/sources.list.d/mysql.list
# Tue, 18 Jul 2017 23:15:17 GMT
RUN { 		echo mysql-community-server mysql-community-server/data-dir select ''; 		echo mysql-community-server mysql-community-server/root-pass password ''; 		echo mysql-community-server mysql-community-server/re-root-pass password ''; 		echo mysql-community-server mysql-community-server/remove-test-db select false; 	} | debconf-set-selections 	&& apt-get update && apt-get install -y mysql-server="${MYSQL_VERSION}" && rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Tue, 18 Jul 2017 23:15:18 GMT
RUN sed -Ei 's/^(bind-address|log)/#&/' /etc/mysql/my.cnf 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Tue, 18 Jul 2017 23:15:19 GMT
VOLUME [/var/lib/mysql]
# Tue, 18 Jul 2017 23:15:19 GMT
COPY file:b4e423a0d95974d5269d37431aafc0c69cb304dc09ab3f496dbcfdfbc2dbd818 in /usr/local/bin/ 
# Tue, 18 Jul 2017 23:15:20 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 18 Jul 2017 23:15:21 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 18 Jul 2017 23:15:21 GMT
EXPOSE 3306/tcp
# Tue, 18 Jul 2017 23:15:22 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:9f0706ba7422412cd468804fee456786f88bed94bf9aea6dde2a47f770d19d27`  
		Last Modified: Tue, 20 Jun 2017 20:35:47 GMT  
		Size: 52.6 MB (52614808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2290e155d2d0e9a4665a3a3fe112e227034275f6e6ea237122a695dbea5a8861`  
		Last Modified: Sat, 24 Jun 2017 12:34:28 GMT  
		Size: 2.1 KB (2066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:547981b8269f9a3f6be6941c644aa592f59a77e764e0962cacae67e0c6159586`  
		Last Modified: Sat, 24 Jun 2017 12:34:28 GMT  
		Size: 1.3 MB (1304107 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c9d42ed2f48a29a67c7ce9a017f1b14fabb57f9b7193dd51d39675132b7acc3`  
		Last Modified: Sat, 24 Jun 2017 12:34:27 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a50168a1b927e4724cd8fd9805938d8b16e61ccf6f87cf1266e85934c5128b6a`  
		Last Modified: Sat, 24 Jun 2017 13:33:58 GMT  
		Size: 8.3 MB (8255567 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:414da6fabf18cf1cb8c83d70e746abe6b504186ec2cfa39cbef3d7f32ffc40c1`  
		Last Modified: Sat, 24 Jun 2017 13:33:52 GMT  
		Size: 19.2 KB (19202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59712aef26ce94b8dc09ce344a47d88cebd078867c1d615483ac60f5e81b66dd`  
		Last Modified: Tue, 18 Jul 2017 23:18:36 GMT  
		Size: 217.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57ae52f98217f181c4add79109b4ed8551c69cac2a09c25c2aa748fd5fd5a840`  
		Last Modified: Tue, 18 Jul 2017 23:18:46 GMT  
		Size: 42.7 MB (42663766 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:530090688557ba9ccbbc3ae3b772731ba8c6efc23b733a8bbe705d6704996c1f`  
		Last Modified: Tue, 18 Jul 2017 23:18:36 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0e2d183aba1f23de4bf2dbd2fe3b6e73aa46ed93664644f1c7d96bc421db079`  
		Last Modified: Tue, 18 Jul 2017 23:18:37 GMT  
		Size: 2.6 KB (2593 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba38b81ed3c127e1613fe69d7498844f90c188f1c45acb461f97ba1589fa643b`  
		Last Modified: Tue, 18 Jul 2017 23:18:36 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:5.5.57`

```console
$ docker pull mysql@sha256:347ea5cb69f162abfce6fceba2c92dc628b9b5972867d2959da2e84e182e6418
```

-	Platforms:
	-	linux; amd64

### `mysql:5.5.57` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **89.8 MB (89783331 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:950ebae6f76dbf9f680b06f2b37b0d91fc2ee8adc7444505f94193df0b5ab2d3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 20 Jun 2017 20:13:32 GMT
ADD file:9c48682ff75c756544d4491472081a078edf5dd0bb5038d1cb850a1f9c480e3e in / 
# Tue, 20 Jun 2017 20:13:34 GMT
CMD ["bash"]
# Fri, 23 Jun 2017 00:26:49 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Fri, 23 Jun 2017 00:26:50 GMT
ENV GOSU_VERSION=1.7
# Fri, 23 Jun 2017 00:27:08 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 23 Jun 2017 00:27:10 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 23 Jun 2017 00:47:13 GMT
RUN apt-get update && apt-get install -y perl --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 00:47:21 GMT
RUN apt-get update && apt-get install -y libaio1 pwgen && rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 00:47:22 GMT
ENV MYSQL_MAJOR=5.5
# Tue, 18 Jul 2017 23:15:31 GMT
ENV MYSQL_VERSION=5.5.57
# Tue, 18 Jul 2017 23:16:08 GMT
RUN apt-get update && apt-get install -y ca-certificates wget --no-install-recommends && rm -rf /var/lib/apt/lists/* 	&& wget "https://cdn.mysql.com/Downloads/MySQL-$MYSQL_MAJOR/mysql-$MYSQL_VERSION-linux-glibc2.12-x86_64.tar.gz" -O mysql.tar.gz 	&& wget "https://cdn.mysql.com/Downloads/MySQL-$MYSQL_MAJOR/mysql-$MYSQL_VERSION-linux-glibc2.12-x86_64.tar.gz.asc" -O mysql.tar.gz.asc 	&& apt-get purge -y --auto-remove ca-certificates wget 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys A4A9406876FCBD3C456770C88C718D3B5072E1F5 	&& gpg --batch --verify mysql.tar.gz.asc mysql.tar.gz 	&& rm -r "$GNUPGHOME" mysql.tar.gz.asc 	&& mkdir /usr/local/mysql 	&& tar -xzf mysql.tar.gz -C /usr/local/mysql --strip-components=1 	&& rm mysql.tar.gz 	&& rm -rf /usr/local/mysql/mysql-test /usr/local/mysql/sql-bench 	&& rm -rf /usr/local/mysql/bin/*-debug /usr/local/mysql/bin/*_embedded 	&& find /usr/local/mysql -type f -name "*.a" -delete 	&& apt-get update && apt-get install -y binutils && rm -rf /var/lib/apt/lists/* 	&& { find /usr/local/mysql -type f -executable -exec strip --strip-all '{}' + || true; } 	&& apt-get purge -y --auto-remove binutils
# Tue, 18 Jul 2017 23:16:08 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/mysql/bin:/usr/local/mysql/scripts
# Tue, 18 Jul 2017 23:16:09 GMT
RUN mkdir -p /etc/mysql/conf.d 	&& { 		echo '[mysqld]'; 		echo 'skip-host-cache'; 		echo 'skip-name-resolve'; 		echo 'datadir = /var/lib/mysql'; 		echo '!includedir /etc/mysql/conf.d/'; 	} > /etc/mysql/my.cnf
# Tue, 18 Jul 2017 23:16:10 GMT
RUN mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Tue, 18 Jul 2017 23:16:11 GMT
VOLUME [/var/lib/mysql]
# Tue, 18 Jul 2017 23:16:12 GMT
COPY file:0dfb1be3ff2b71842e1c4ae21d0e9f4b9a103296130d270c5072557604f5ca73 in /usr/local/bin/ 
# Tue, 18 Jul 2017 23:16:13 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 18 Jul 2017 23:16:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 18 Jul 2017 23:16:14 GMT
EXPOSE 3306/tcp
# Tue, 18 Jul 2017 23:16:14 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:9f0706ba7422412cd468804fee456786f88bed94bf9aea6dde2a47f770d19d27`  
		Last Modified: Tue, 20 Jun 2017 20:35:47 GMT  
		Size: 52.6 MB (52614808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2290e155d2d0e9a4665a3a3fe112e227034275f6e6ea237122a695dbea5a8861`  
		Last Modified: Sat, 24 Jun 2017 12:34:28 GMT  
		Size: 2.1 KB (2066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:547981b8269f9a3f6be6941c644aa592f59a77e764e0962cacae67e0c6159586`  
		Last Modified: Sat, 24 Jun 2017 12:34:28 GMT  
		Size: 1.3 MB (1304107 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c9d42ed2f48a29a67c7ce9a017f1b14fabb57f9b7193dd51d39675132b7acc3`  
		Last Modified: Sat, 24 Jun 2017 12:34:27 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf0fea6837dcbbfed1e2923b46e95b499691e550cec001fe34f231bc32e3c7dc`  
		Last Modified: Sat, 24 Jun 2017 13:35:08 GMT  
		Size: 8.2 MB (8235739 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2112b583df9741f6e155e2fec1d928defe6dbb6e11c88216dfab0aa9aa55940b`  
		Last Modified: Sat, 24 Jun 2017 13:35:03 GMT  
		Size: 96.6 KB (96603 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2dccc51d40c640bf434504efa698753f031e18af9e169c09fe91bf70f3d932f0`  
		Last Modified: Tue, 18 Jul 2017 23:19:23 GMT  
		Size: 27.5 MB (27526738 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:145dd66e8f90db1736517adef300036ac2039d7728b8567807d7f05552b9652e`  
		Last Modified: Tue, 18 Jul 2017 23:19:16 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23d1faddea2c6508019b1cbeae044671e14030c050e4e472d8cdaa9b6b4e94a4`  
		Last Modified: Tue, 18 Jul 2017 23:19:17 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf07ce55240ebc6c847ad4b3165d0ccb091c02c8e8544bc0ade7dae79957c298`  
		Last Modified: Tue, 18 Jul 2017 23:19:17 GMT  
		Size: 2.6 KB (2625 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30bda26da511ce55d329a3358b440c801fd1a2b7658e9bed56c38276dd6ef1ea`  
		Last Modified: Tue, 18 Jul 2017 23:19:16 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:5.5`

```console
$ docker pull mysql@sha256:347ea5cb69f162abfce6fceba2c92dc628b9b5972867d2959da2e84e182e6418
```

-	Platforms:
	-	linux; amd64

### `mysql:5.5` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **89.8 MB (89783331 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:950ebae6f76dbf9f680b06f2b37b0d91fc2ee8adc7444505f94193df0b5ab2d3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 20 Jun 2017 20:13:32 GMT
ADD file:9c48682ff75c756544d4491472081a078edf5dd0bb5038d1cb850a1f9c480e3e in / 
# Tue, 20 Jun 2017 20:13:34 GMT
CMD ["bash"]
# Fri, 23 Jun 2017 00:26:49 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Fri, 23 Jun 2017 00:26:50 GMT
ENV GOSU_VERSION=1.7
# Fri, 23 Jun 2017 00:27:08 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 23 Jun 2017 00:27:10 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 23 Jun 2017 00:47:13 GMT
RUN apt-get update && apt-get install -y perl --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 00:47:21 GMT
RUN apt-get update && apt-get install -y libaio1 pwgen && rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 00:47:22 GMT
ENV MYSQL_MAJOR=5.5
# Tue, 18 Jul 2017 23:15:31 GMT
ENV MYSQL_VERSION=5.5.57
# Tue, 18 Jul 2017 23:16:08 GMT
RUN apt-get update && apt-get install -y ca-certificates wget --no-install-recommends && rm -rf /var/lib/apt/lists/* 	&& wget "https://cdn.mysql.com/Downloads/MySQL-$MYSQL_MAJOR/mysql-$MYSQL_VERSION-linux-glibc2.12-x86_64.tar.gz" -O mysql.tar.gz 	&& wget "https://cdn.mysql.com/Downloads/MySQL-$MYSQL_MAJOR/mysql-$MYSQL_VERSION-linux-glibc2.12-x86_64.tar.gz.asc" -O mysql.tar.gz.asc 	&& apt-get purge -y --auto-remove ca-certificates wget 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys A4A9406876FCBD3C456770C88C718D3B5072E1F5 	&& gpg --batch --verify mysql.tar.gz.asc mysql.tar.gz 	&& rm -r "$GNUPGHOME" mysql.tar.gz.asc 	&& mkdir /usr/local/mysql 	&& tar -xzf mysql.tar.gz -C /usr/local/mysql --strip-components=1 	&& rm mysql.tar.gz 	&& rm -rf /usr/local/mysql/mysql-test /usr/local/mysql/sql-bench 	&& rm -rf /usr/local/mysql/bin/*-debug /usr/local/mysql/bin/*_embedded 	&& find /usr/local/mysql -type f -name "*.a" -delete 	&& apt-get update && apt-get install -y binutils && rm -rf /var/lib/apt/lists/* 	&& { find /usr/local/mysql -type f -executable -exec strip --strip-all '{}' + || true; } 	&& apt-get purge -y --auto-remove binutils
# Tue, 18 Jul 2017 23:16:08 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/mysql/bin:/usr/local/mysql/scripts
# Tue, 18 Jul 2017 23:16:09 GMT
RUN mkdir -p /etc/mysql/conf.d 	&& { 		echo '[mysqld]'; 		echo 'skip-host-cache'; 		echo 'skip-name-resolve'; 		echo 'datadir = /var/lib/mysql'; 		echo '!includedir /etc/mysql/conf.d/'; 	} > /etc/mysql/my.cnf
# Tue, 18 Jul 2017 23:16:10 GMT
RUN mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Tue, 18 Jul 2017 23:16:11 GMT
VOLUME [/var/lib/mysql]
# Tue, 18 Jul 2017 23:16:12 GMT
COPY file:0dfb1be3ff2b71842e1c4ae21d0e9f4b9a103296130d270c5072557604f5ca73 in /usr/local/bin/ 
# Tue, 18 Jul 2017 23:16:13 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 18 Jul 2017 23:16:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 18 Jul 2017 23:16:14 GMT
EXPOSE 3306/tcp
# Tue, 18 Jul 2017 23:16:14 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:9f0706ba7422412cd468804fee456786f88bed94bf9aea6dde2a47f770d19d27`  
		Last Modified: Tue, 20 Jun 2017 20:35:47 GMT  
		Size: 52.6 MB (52614808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2290e155d2d0e9a4665a3a3fe112e227034275f6e6ea237122a695dbea5a8861`  
		Last Modified: Sat, 24 Jun 2017 12:34:28 GMT  
		Size: 2.1 KB (2066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:547981b8269f9a3f6be6941c644aa592f59a77e764e0962cacae67e0c6159586`  
		Last Modified: Sat, 24 Jun 2017 12:34:28 GMT  
		Size: 1.3 MB (1304107 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c9d42ed2f48a29a67c7ce9a017f1b14fabb57f9b7193dd51d39675132b7acc3`  
		Last Modified: Sat, 24 Jun 2017 12:34:27 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf0fea6837dcbbfed1e2923b46e95b499691e550cec001fe34f231bc32e3c7dc`  
		Last Modified: Sat, 24 Jun 2017 13:35:08 GMT  
		Size: 8.2 MB (8235739 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2112b583df9741f6e155e2fec1d928defe6dbb6e11c88216dfab0aa9aa55940b`  
		Last Modified: Sat, 24 Jun 2017 13:35:03 GMT  
		Size: 96.6 KB (96603 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2dccc51d40c640bf434504efa698753f031e18af9e169c09fe91bf70f3d932f0`  
		Last Modified: Tue, 18 Jul 2017 23:19:23 GMT  
		Size: 27.5 MB (27526738 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:145dd66e8f90db1736517adef300036ac2039d7728b8567807d7f05552b9652e`  
		Last Modified: Tue, 18 Jul 2017 23:19:16 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23d1faddea2c6508019b1cbeae044671e14030c050e4e472d8cdaa9b6b4e94a4`  
		Last Modified: Tue, 18 Jul 2017 23:19:17 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf07ce55240ebc6c847ad4b3165d0ccb091c02c8e8544bc0ade7dae79957c298`  
		Last Modified: Tue, 18 Jul 2017 23:19:17 GMT  
		Size: 2.6 KB (2625 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30bda26da511ce55d329a3358b440c801fd1a2b7658e9bed56c38276dd6ef1ea`  
		Last Modified: Tue, 18 Jul 2017 23:19:16 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
