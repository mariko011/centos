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
$ docker pull mysql@sha256:afd6d4d8182d7541f64ce2e5b7407a1c79996b1142bf9405e9d1d82922e42a31
```

-	Platforms:
	-	linux; amd64

### `mysql:8.0.1` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **90.4 MB (90449082 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7896f04175280351855a4d6b04dd918a2acab800777b9e9620cc52db0cd011cf`
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
# Fri, 23 Jun 2017 00:44:09 GMT
ENV MYSQL_VERSION=8.0.1-dmr-1debian8
# Fri, 23 Jun 2017 00:44:11 GMT
RUN echo "deb http://repo.mysql.com/apt/debian/ jessie mysql-${MYSQL_MAJOR}" > /etc/apt/sources.list.d/mysql.list
# Fri, 23 Jun 2017 00:44:22 GMT
RUN { 		echo mysql-community-server mysql-community-server/data-dir select ''; 		echo mysql-community-server mysql-community-server/root-pass password ''; 		echo mysql-community-server mysql-community-server/re-root-pass password ''; 		echo mysql-community-server mysql-community-server/remove-test-db select false; 	} | debconf-set-selections 	&& apt-get update && apt-get install -y mysql-community-client-core="${MYSQL_VERSION}" mysql-community-server-core="${MYSQL_VERSION}" && rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Fri, 23 Jun 2017 00:44:23 GMT
VOLUME [/var/lib/mysql]
# Fri, 23 Jun 2017 00:44:24 GMT
COPY dir:110dcf1221c1f9432c68c32a2465ef0b40994f401d5fae0b0de80025bcf839a5 in /etc/mysql/ 
# Fri, 23 Jun 2017 00:44:25 GMT
COPY file:5453fdbdb142b28e9aa4df64d5e1f42a740f018457cb1c65d113b947858ae314 in /usr/local/bin/ 
# Fri, 23 Jun 2017 00:44:27 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 23 Jun 2017 00:44:28 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 23 Jun 2017 00:44:28 GMT
EXPOSE 3306/tcp
# Fri, 23 Jun 2017 00:44:29 GMT
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
	-	`sha256:944b75db8d03940bbb81436acbc17d43853afab92378063c10b02817b4d3e52c`  
		Last Modified: Sat, 24 Jun 2017 13:30:10 GMT  
		Size: 215.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f487620dc272f12162176afca4690f07d7833e71257eb84ed280f65e78424c6b`  
		Last Modified: Sat, 24 Jun 2017 13:30:17 GMT  
		Size: 25.8 MB (25792805 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3634e34a6590f6f06a822b8e940caf8d87a30565479a679eec59bdd692b434c`  
		Last Modified: Sat, 24 Jun 2017 13:30:10 GMT  
		Size: 899.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64579c8234d0c56ef83790183d5a9273aecebc03f82faa1bb67c3523c8e87016`  
		Last Modified: Sat, 24 Jun 2017 13:30:11 GMT  
		Size: 2.7 KB (2730 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1969b07cc6e2980da84ee769d31f41f204d585a5b3224b14dae4521800fb05c`  
		Last Modified: Sat, 24 Jun 2017 13:30:10 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:8.0`

```console
$ docker pull mysql@sha256:afd6d4d8182d7541f64ce2e5b7407a1c79996b1142bf9405e9d1d82922e42a31
```

-	Platforms:
	-	linux; amd64

### `mysql:8.0` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **90.4 MB (90449082 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7896f04175280351855a4d6b04dd918a2acab800777b9e9620cc52db0cd011cf`
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
# Fri, 23 Jun 2017 00:44:09 GMT
ENV MYSQL_VERSION=8.0.1-dmr-1debian8
# Fri, 23 Jun 2017 00:44:11 GMT
RUN echo "deb http://repo.mysql.com/apt/debian/ jessie mysql-${MYSQL_MAJOR}" > /etc/apt/sources.list.d/mysql.list
# Fri, 23 Jun 2017 00:44:22 GMT
RUN { 		echo mysql-community-server mysql-community-server/data-dir select ''; 		echo mysql-community-server mysql-community-server/root-pass password ''; 		echo mysql-community-server mysql-community-server/re-root-pass password ''; 		echo mysql-community-server mysql-community-server/remove-test-db select false; 	} | debconf-set-selections 	&& apt-get update && apt-get install -y mysql-community-client-core="${MYSQL_VERSION}" mysql-community-server-core="${MYSQL_VERSION}" && rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Fri, 23 Jun 2017 00:44:23 GMT
VOLUME [/var/lib/mysql]
# Fri, 23 Jun 2017 00:44:24 GMT
COPY dir:110dcf1221c1f9432c68c32a2465ef0b40994f401d5fae0b0de80025bcf839a5 in /etc/mysql/ 
# Fri, 23 Jun 2017 00:44:25 GMT
COPY file:5453fdbdb142b28e9aa4df64d5e1f42a740f018457cb1c65d113b947858ae314 in /usr/local/bin/ 
# Fri, 23 Jun 2017 00:44:27 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 23 Jun 2017 00:44:28 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 23 Jun 2017 00:44:28 GMT
EXPOSE 3306/tcp
# Fri, 23 Jun 2017 00:44:29 GMT
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
	-	`sha256:944b75db8d03940bbb81436acbc17d43853afab92378063c10b02817b4d3e52c`  
		Last Modified: Sat, 24 Jun 2017 13:30:10 GMT  
		Size: 215.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f487620dc272f12162176afca4690f07d7833e71257eb84ed280f65e78424c6b`  
		Last Modified: Sat, 24 Jun 2017 13:30:17 GMT  
		Size: 25.8 MB (25792805 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3634e34a6590f6f06a822b8e940caf8d87a30565479a679eec59bdd692b434c`  
		Last Modified: Sat, 24 Jun 2017 13:30:10 GMT  
		Size: 899.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64579c8234d0c56ef83790183d5a9273aecebc03f82faa1bb67c3523c8e87016`  
		Last Modified: Sat, 24 Jun 2017 13:30:11 GMT  
		Size: 2.7 KB (2730 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1969b07cc6e2980da84ee769d31f41f204d585a5b3224b14dae4521800fb05c`  
		Last Modified: Sat, 24 Jun 2017 13:30:10 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:8`

```console
$ docker pull mysql@sha256:afd6d4d8182d7541f64ce2e5b7407a1c79996b1142bf9405e9d1d82922e42a31
```

-	Platforms:
	-	linux; amd64

### `mysql:8` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **90.4 MB (90449082 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7896f04175280351855a4d6b04dd918a2acab800777b9e9620cc52db0cd011cf`
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
# Fri, 23 Jun 2017 00:44:09 GMT
ENV MYSQL_VERSION=8.0.1-dmr-1debian8
# Fri, 23 Jun 2017 00:44:11 GMT
RUN echo "deb http://repo.mysql.com/apt/debian/ jessie mysql-${MYSQL_MAJOR}" > /etc/apt/sources.list.d/mysql.list
# Fri, 23 Jun 2017 00:44:22 GMT
RUN { 		echo mysql-community-server mysql-community-server/data-dir select ''; 		echo mysql-community-server mysql-community-server/root-pass password ''; 		echo mysql-community-server mysql-community-server/re-root-pass password ''; 		echo mysql-community-server mysql-community-server/remove-test-db select false; 	} | debconf-set-selections 	&& apt-get update && apt-get install -y mysql-community-client-core="${MYSQL_VERSION}" mysql-community-server-core="${MYSQL_VERSION}" && rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Fri, 23 Jun 2017 00:44:23 GMT
VOLUME [/var/lib/mysql]
# Fri, 23 Jun 2017 00:44:24 GMT
COPY dir:110dcf1221c1f9432c68c32a2465ef0b40994f401d5fae0b0de80025bcf839a5 in /etc/mysql/ 
# Fri, 23 Jun 2017 00:44:25 GMT
COPY file:5453fdbdb142b28e9aa4df64d5e1f42a740f018457cb1c65d113b947858ae314 in /usr/local/bin/ 
# Fri, 23 Jun 2017 00:44:27 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 23 Jun 2017 00:44:28 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 23 Jun 2017 00:44:28 GMT
EXPOSE 3306/tcp
# Fri, 23 Jun 2017 00:44:29 GMT
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
	-	`sha256:944b75db8d03940bbb81436acbc17d43853afab92378063c10b02817b4d3e52c`  
		Last Modified: Sat, 24 Jun 2017 13:30:10 GMT  
		Size: 215.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f487620dc272f12162176afca4690f07d7833e71257eb84ed280f65e78424c6b`  
		Last Modified: Sat, 24 Jun 2017 13:30:17 GMT  
		Size: 25.8 MB (25792805 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3634e34a6590f6f06a822b8e940caf8d87a30565479a679eec59bdd692b434c`  
		Last Modified: Sat, 24 Jun 2017 13:30:10 GMT  
		Size: 899.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64579c8234d0c56ef83790183d5a9273aecebc03f82faa1bb67c3523c8e87016`  
		Last Modified: Sat, 24 Jun 2017 13:30:11 GMT  
		Size: 2.7 KB (2730 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1969b07cc6e2980da84ee769d31f41f204d585a5b3224b14dae4521800fb05c`  
		Last Modified: Sat, 24 Jun 2017 13:30:10 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:5.7.18`

```console
$ docker pull mysql@sha256:d178dffba8d81afedc251498e227607934636e06228ac63d58b72f9e9ec271a6
```

-	Platforms:
	-	linux; amd64

### `mysql:5.7.18` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **143.6 MB (143613551 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:44a8e1a5c0b27650237907f4e9ee7fccdba0120291d27075e2cb8c8e8a8ec66b`
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
# Fri, 23 Jun 2017 00:44:56 GMT
ENV MYSQL_VERSION=5.7.18-1debian8
# Fri, 23 Jun 2017 00:44:57 GMT
RUN echo "deb http://repo.mysql.com/apt/debian/ jessie mysql-${MYSQL_MAJOR}" > /etc/apt/sources.list.d/mysql.list
# Fri, 23 Jun 2017 00:45:21 GMT
RUN { 		echo mysql-community-server mysql-community-server/data-dir select ''; 		echo mysql-community-server mysql-community-server/root-pass password ''; 		echo mysql-community-server mysql-community-server/re-root-pass password ''; 		echo mysql-community-server mysql-community-server/remove-test-db select false; 	} | debconf-set-selections 	&& apt-get update && apt-get install -y mysql-server="${MYSQL_VERSION}" && rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Fri, 23 Jun 2017 00:45:23 GMT
RUN sed -Ei 's/^(bind-address|log)/#&/' /etc/mysql/mysql.conf.d/mysqld.cnf 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Fri, 23 Jun 2017 00:45:24 GMT
VOLUME [/var/lib/mysql]
# Fri, 23 Jun 2017 00:45:25 GMT
COPY file:5453fdbdb142b28e9aa4df64d5e1f42a740f018457cb1c65d113b947858ae314 in /usr/local/bin/ 
# Fri, 23 Jun 2017 00:45:26 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 23 Jun 2017 00:45:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 23 Jun 2017 00:45:28 GMT
EXPOSE 3306/tcp
# Fri, 23 Jun 2017 00:45:29 GMT
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
	-	`sha256:c0a5ce64f2b0993d643d3f35eb35e8f7e04e9baf4fad34153df18f60d6935c16`  
		Last Modified: Sat, 24 Jun 2017 13:31:42 GMT  
		Size: 217.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4595eab8e90df4db7aa0e0cf4952d6d942a38abc960b5e6ba9838af7f3c5708`  
		Last Modified: Sat, 24 Jun 2017 13:32:00 GMT  
		Size: 79.0 MB (78957233 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:098988cead356595657a939eebbaf589c6ec137da0a30b9ddeb818f3158f90d3`  
		Last Modified: Sat, 24 Jun 2017 13:31:42 GMT  
		Size: 937.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:300ca5fa5eeae8bb07b0a2acc7367892c8f8764301688a0fdf870c8bc7264a07`  
		Last Modified: Sat, 24 Jun 2017 13:31:42 GMT  
		Size: 2.7 KB (2731 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43fdc4e3e6903e4fff57ddefe175868d35b0ba6ef59ab55dec6e5f933a9dd988`  
		Last Modified: Sat, 24 Jun 2017 13:31:42 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:5.7`

```console
$ docker pull mysql@sha256:d178dffba8d81afedc251498e227607934636e06228ac63d58b72f9e9ec271a6
```

-	Platforms:
	-	linux; amd64

### `mysql:5.7` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **143.6 MB (143613551 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:44a8e1a5c0b27650237907f4e9ee7fccdba0120291d27075e2cb8c8e8a8ec66b`
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
# Fri, 23 Jun 2017 00:44:56 GMT
ENV MYSQL_VERSION=5.7.18-1debian8
# Fri, 23 Jun 2017 00:44:57 GMT
RUN echo "deb http://repo.mysql.com/apt/debian/ jessie mysql-${MYSQL_MAJOR}" > /etc/apt/sources.list.d/mysql.list
# Fri, 23 Jun 2017 00:45:21 GMT
RUN { 		echo mysql-community-server mysql-community-server/data-dir select ''; 		echo mysql-community-server mysql-community-server/root-pass password ''; 		echo mysql-community-server mysql-community-server/re-root-pass password ''; 		echo mysql-community-server mysql-community-server/remove-test-db select false; 	} | debconf-set-selections 	&& apt-get update && apt-get install -y mysql-server="${MYSQL_VERSION}" && rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Fri, 23 Jun 2017 00:45:23 GMT
RUN sed -Ei 's/^(bind-address|log)/#&/' /etc/mysql/mysql.conf.d/mysqld.cnf 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Fri, 23 Jun 2017 00:45:24 GMT
VOLUME [/var/lib/mysql]
# Fri, 23 Jun 2017 00:45:25 GMT
COPY file:5453fdbdb142b28e9aa4df64d5e1f42a740f018457cb1c65d113b947858ae314 in /usr/local/bin/ 
# Fri, 23 Jun 2017 00:45:26 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 23 Jun 2017 00:45:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 23 Jun 2017 00:45:28 GMT
EXPOSE 3306/tcp
# Fri, 23 Jun 2017 00:45:29 GMT
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
	-	`sha256:c0a5ce64f2b0993d643d3f35eb35e8f7e04e9baf4fad34153df18f60d6935c16`  
		Last Modified: Sat, 24 Jun 2017 13:31:42 GMT  
		Size: 217.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4595eab8e90df4db7aa0e0cf4952d6d942a38abc960b5e6ba9838af7f3c5708`  
		Last Modified: Sat, 24 Jun 2017 13:32:00 GMT  
		Size: 79.0 MB (78957233 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:098988cead356595657a939eebbaf589c6ec137da0a30b9ddeb818f3158f90d3`  
		Last Modified: Sat, 24 Jun 2017 13:31:42 GMT  
		Size: 937.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:300ca5fa5eeae8bb07b0a2acc7367892c8f8764301688a0fdf870c8bc7264a07`  
		Last Modified: Sat, 24 Jun 2017 13:31:42 GMT  
		Size: 2.7 KB (2731 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43fdc4e3e6903e4fff57ddefe175868d35b0ba6ef59ab55dec6e5f933a9dd988`  
		Last Modified: Sat, 24 Jun 2017 13:31:42 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:5`

```console
$ docker pull mysql@sha256:d178dffba8d81afedc251498e227607934636e06228ac63d58b72f9e9ec271a6
```

-	Platforms:
	-	linux; amd64

### `mysql:5` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **143.6 MB (143613551 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:44a8e1a5c0b27650237907f4e9ee7fccdba0120291d27075e2cb8c8e8a8ec66b`
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
# Fri, 23 Jun 2017 00:44:56 GMT
ENV MYSQL_VERSION=5.7.18-1debian8
# Fri, 23 Jun 2017 00:44:57 GMT
RUN echo "deb http://repo.mysql.com/apt/debian/ jessie mysql-${MYSQL_MAJOR}" > /etc/apt/sources.list.d/mysql.list
# Fri, 23 Jun 2017 00:45:21 GMT
RUN { 		echo mysql-community-server mysql-community-server/data-dir select ''; 		echo mysql-community-server mysql-community-server/root-pass password ''; 		echo mysql-community-server mysql-community-server/re-root-pass password ''; 		echo mysql-community-server mysql-community-server/remove-test-db select false; 	} | debconf-set-selections 	&& apt-get update && apt-get install -y mysql-server="${MYSQL_VERSION}" && rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Fri, 23 Jun 2017 00:45:23 GMT
RUN sed -Ei 's/^(bind-address|log)/#&/' /etc/mysql/mysql.conf.d/mysqld.cnf 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Fri, 23 Jun 2017 00:45:24 GMT
VOLUME [/var/lib/mysql]
# Fri, 23 Jun 2017 00:45:25 GMT
COPY file:5453fdbdb142b28e9aa4df64d5e1f42a740f018457cb1c65d113b947858ae314 in /usr/local/bin/ 
# Fri, 23 Jun 2017 00:45:26 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 23 Jun 2017 00:45:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 23 Jun 2017 00:45:28 GMT
EXPOSE 3306/tcp
# Fri, 23 Jun 2017 00:45:29 GMT
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
	-	`sha256:c0a5ce64f2b0993d643d3f35eb35e8f7e04e9baf4fad34153df18f60d6935c16`  
		Last Modified: Sat, 24 Jun 2017 13:31:42 GMT  
		Size: 217.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4595eab8e90df4db7aa0e0cf4952d6d942a38abc960b5e6ba9838af7f3c5708`  
		Last Modified: Sat, 24 Jun 2017 13:32:00 GMT  
		Size: 79.0 MB (78957233 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:098988cead356595657a939eebbaf589c6ec137da0a30b9ddeb818f3158f90d3`  
		Last Modified: Sat, 24 Jun 2017 13:31:42 GMT  
		Size: 937.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:300ca5fa5eeae8bb07b0a2acc7367892c8f8764301688a0fdf870c8bc7264a07`  
		Last Modified: Sat, 24 Jun 2017 13:31:42 GMT  
		Size: 2.7 KB (2731 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43fdc4e3e6903e4fff57ddefe175868d35b0ba6ef59ab55dec6e5f933a9dd988`  
		Last Modified: Sat, 24 Jun 2017 13:31:42 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:latest`

```console
$ docker pull mysql@sha256:d178dffba8d81afedc251498e227607934636e06228ac63d58b72f9e9ec271a6
```

-	Platforms:
	-	linux; amd64

### `mysql:latest` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **143.6 MB (143613551 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:44a8e1a5c0b27650237907f4e9ee7fccdba0120291d27075e2cb8c8e8a8ec66b`
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
# Fri, 23 Jun 2017 00:44:56 GMT
ENV MYSQL_VERSION=5.7.18-1debian8
# Fri, 23 Jun 2017 00:44:57 GMT
RUN echo "deb http://repo.mysql.com/apt/debian/ jessie mysql-${MYSQL_MAJOR}" > /etc/apt/sources.list.d/mysql.list
# Fri, 23 Jun 2017 00:45:21 GMT
RUN { 		echo mysql-community-server mysql-community-server/data-dir select ''; 		echo mysql-community-server mysql-community-server/root-pass password ''; 		echo mysql-community-server mysql-community-server/re-root-pass password ''; 		echo mysql-community-server mysql-community-server/remove-test-db select false; 	} | debconf-set-selections 	&& apt-get update && apt-get install -y mysql-server="${MYSQL_VERSION}" && rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Fri, 23 Jun 2017 00:45:23 GMT
RUN sed -Ei 's/^(bind-address|log)/#&/' /etc/mysql/mysql.conf.d/mysqld.cnf 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Fri, 23 Jun 2017 00:45:24 GMT
VOLUME [/var/lib/mysql]
# Fri, 23 Jun 2017 00:45:25 GMT
COPY file:5453fdbdb142b28e9aa4df64d5e1f42a740f018457cb1c65d113b947858ae314 in /usr/local/bin/ 
# Fri, 23 Jun 2017 00:45:26 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 23 Jun 2017 00:45:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 23 Jun 2017 00:45:28 GMT
EXPOSE 3306/tcp
# Fri, 23 Jun 2017 00:45:29 GMT
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
	-	`sha256:c0a5ce64f2b0993d643d3f35eb35e8f7e04e9baf4fad34153df18f60d6935c16`  
		Last Modified: Sat, 24 Jun 2017 13:31:42 GMT  
		Size: 217.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4595eab8e90df4db7aa0e0cf4952d6d942a38abc960b5e6ba9838af7f3c5708`  
		Last Modified: Sat, 24 Jun 2017 13:32:00 GMT  
		Size: 79.0 MB (78957233 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:098988cead356595657a939eebbaf589c6ec137da0a30b9ddeb818f3158f90d3`  
		Last Modified: Sat, 24 Jun 2017 13:31:42 GMT  
		Size: 937.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:300ca5fa5eeae8bb07b0a2acc7367892c8f8764301688a0fdf870c8bc7264a07`  
		Last Modified: Sat, 24 Jun 2017 13:31:42 GMT  
		Size: 2.7 KB (2731 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43fdc4e3e6903e4fff57ddefe175868d35b0ba6ef59ab55dec6e5f933a9dd988`  
		Last Modified: Sat, 24 Jun 2017 13:31:42 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:5.6.36`

```console
$ docker pull mysql@sha256:55cbc591a7ebc1c47458c97b8edbd2693c9e4ec5666f1ad8202a86a2e639e326
```

-	Platforms:
	-	linux; amd64

### `mysql:5.6.36` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.8 MB (104844143 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d9ad3d6d1a44adc7f34e3bf05308ba2b7b9a6f1f664e0b340e8439c4324eb2c4`
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
# Fri, 23 Jun 2017 00:46:08 GMT
ENV MYSQL_VERSION=5.6.36-1debian8
# Fri, 23 Jun 2017 00:46:10 GMT
RUN echo "deb http://repo.mysql.com/apt/debian/ jessie mysql-${MYSQL_MAJOR}" > /etc/apt/sources.list.d/mysql.list
# Fri, 23 Jun 2017 00:46:30 GMT
RUN { 		echo mysql-community-server mysql-community-server/data-dir select ''; 		echo mysql-community-server mysql-community-server/root-pass password ''; 		echo mysql-community-server mysql-community-server/re-root-pass password ''; 		echo mysql-community-server mysql-community-server/remove-test-db select false; 	} | debconf-set-selections 	&& apt-get update && apt-get install -y mysql-server="${MYSQL_VERSION}" && rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Fri, 23 Jun 2017 00:46:32 GMT
RUN sed -Ei 's/^(bind-address|log)/#&/' /etc/mysql/my.cnf 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Fri, 23 Jun 2017 00:46:32 GMT
VOLUME [/var/lib/mysql]
# Fri, 23 Jun 2017 00:46:34 GMT
COPY file:b4e423a0d95974d5269d37431aafc0c69cb304dc09ab3f496dbcfdfbc2dbd818 in /usr/local/bin/ 
# Fri, 23 Jun 2017 00:46:35 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 23 Jun 2017 00:46:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 23 Jun 2017 00:46:37 GMT
EXPOSE 3306/tcp
# Fri, 23 Jun 2017 00:46:38 GMT
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
	-	`sha256:332ddcfaeff45660ffd7666ee148b56b4ca804aa8891dae929a2df8e1774703d`  
		Last Modified: Sat, 24 Jun 2017 13:33:52 GMT  
		Size: 217.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43e9a87d0a54af42f9bffaceaca66341a5a5dfa6132f4373b678cd172d0cb5d4`  
		Last Modified: Sat, 24 Jun 2017 13:34:03 GMT  
		Size: 42.6 MB (42644497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27dcfa818ff78e8c1af530fa1c82f97b491b3cff18666ee7bdc89f01ac566596`  
		Last Modified: Sat, 24 Jun 2017 13:33:52 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:067b6cd0ea1c6a0bdeebe205bf7ce062e2fe66a3eac5da75bf8ddf3faf583539`  
		Last Modified: Sat, 24 Jun 2017 13:33:52 GMT  
		Size: 2.6 KB (2590 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62f66393bcf1943ace4f16bdf34f165dc9c8ce14d56c0cde087e2cf1af274f24`  
		Last Modified: Sat, 24 Jun 2017 13:33:52 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:5.6`

```console
$ docker pull mysql@sha256:55cbc591a7ebc1c47458c97b8edbd2693c9e4ec5666f1ad8202a86a2e639e326
```

-	Platforms:
	-	linux; amd64

### `mysql:5.6` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.8 MB (104844143 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d9ad3d6d1a44adc7f34e3bf05308ba2b7b9a6f1f664e0b340e8439c4324eb2c4`
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
# Fri, 23 Jun 2017 00:46:08 GMT
ENV MYSQL_VERSION=5.6.36-1debian8
# Fri, 23 Jun 2017 00:46:10 GMT
RUN echo "deb http://repo.mysql.com/apt/debian/ jessie mysql-${MYSQL_MAJOR}" > /etc/apt/sources.list.d/mysql.list
# Fri, 23 Jun 2017 00:46:30 GMT
RUN { 		echo mysql-community-server mysql-community-server/data-dir select ''; 		echo mysql-community-server mysql-community-server/root-pass password ''; 		echo mysql-community-server mysql-community-server/re-root-pass password ''; 		echo mysql-community-server mysql-community-server/remove-test-db select false; 	} | debconf-set-selections 	&& apt-get update && apt-get install -y mysql-server="${MYSQL_VERSION}" && rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Fri, 23 Jun 2017 00:46:32 GMT
RUN sed -Ei 's/^(bind-address|log)/#&/' /etc/mysql/my.cnf 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Fri, 23 Jun 2017 00:46:32 GMT
VOLUME [/var/lib/mysql]
# Fri, 23 Jun 2017 00:46:34 GMT
COPY file:b4e423a0d95974d5269d37431aafc0c69cb304dc09ab3f496dbcfdfbc2dbd818 in /usr/local/bin/ 
# Fri, 23 Jun 2017 00:46:35 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 23 Jun 2017 00:46:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 23 Jun 2017 00:46:37 GMT
EXPOSE 3306/tcp
# Fri, 23 Jun 2017 00:46:38 GMT
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
	-	`sha256:332ddcfaeff45660ffd7666ee148b56b4ca804aa8891dae929a2df8e1774703d`  
		Last Modified: Sat, 24 Jun 2017 13:33:52 GMT  
		Size: 217.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43e9a87d0a54af42f9bffaceaca66341a5a5dfa6132f4373b678cd172d0cb5d4`  
		Last Modified: Sat, 24 Jun 2017 13:34:03 GMT  
		Size: 42.6 MB (42644497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27dcfa818ff78e8c1af530fa1c82f97b491b3cff18666ee7bdc89f01ac566596`  
		Last Modified: Sat, 24 Jun 2017 13:33:52 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:067b6cd0ea1c6a0bdeebe205bf7ce062e2fe66a3eac5da75bf8ddf3faf583539`  
		Last Modified: Sat, 24 Jun 2017 13:33:52 GMT  
		Size: 2.6 KB (2590 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62f66393bcf1943ace4f16bdf34f165dc9c8ce14d56c0cde087e2cf1af274f24`  
		Last Modified: Sat, 24 Jun 2017 13:33:52 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:5.5.56`

```console
$ docker pull mysql@sha256:838e1456941ff8c907a2f05ec5c450b89a2fad570b691dfcb9492d3876fc3280
```

-	Platforms:
	-	linux; amd64

### `mysql:5.5.56` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **89.5 MB (89500671 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:17e9a1fe381e12b489ce2a60d29b3bacea7092635609b40fc86177c87842ca0d`
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
# Fri, 23 Jun 2017 00:47:23 GMT
ENV MYSQL_VERSION=5.5.56
# Fri, 23 Jun 2017 00:48:23 GMT
RUN apt-get update && apt-get install -y ca-certificates wget --no-install-recommends && rm -rf /var/lib/apt/lists/* 	&& wget "https://cdn.mysql.com/Downloads/MySQL-$MYSQL_MAJOR/mysql-$MYSQL_VERSION-linux-glibc2.5-x86_64.tar.gz" -O mysql.tar.gz 	&& wget "https://cdn.mysql.com/Downloads/MySQL-$MYSQL_MAJOR/mysql-$MYSQL_VERSION-linux-glibc2.5-x86_64.tar.gz.asc" -O mysql.tar.gz.asc 	&& apt-get purge -y --auto-remove ca-certificates wget 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys A4A9406876FCBD3C456770C88C718D3B5072E1F5 	&& gpg --batch --verify mysql.tar.gz.asc mysql.tar.gz 	&& rm -r "$GNUPGHOME" mysql.tar.gz.asc 	&& mkdir /usr/local/mysql 	&& tar -xzf mysql.tar.gz -C /usr/local/mysql --strip-components=1 	&& rm mysql.tar.gz 	&& rm -rf /usr/local/mysql/mysql-test /usr/local/mysql/sql-bench 	&& rm -rf /usr/local/mysql/bin/*-debug /usr/local/mysql/bin/*_embedded 	&& find /usr/local/mysql -type f -name "*.a" -delete 	&& apt-get update && apt-get install -y binutils && rm -rf /var/lib/apt/lists/* 	&& { find /usr/local/mysql -type f -executable -exec strip --strip-all '{}' + || true; } 	&& apt-get purge -y --auto-remove binutils
# Fri, 23 Jun 2017 00:48:24 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/mysql/bin:/usr/local/mysql/scripts
# Fri, 23 Jun 2017 00:48:25 GMT
RUN mkdir -p /etc/mysql/conf.d 	&& { 		echo '[mysqld]'; 		echo 'skip-host-cache'; 		echo 'skip-name-resolve'; 		echo 'datadir = /var/lib/mysql'; 		echo '!includedir /etc/mysql/conf.d/'; 	} > /etc/mysql/my.cnf
# Fri, 23 Jun 2017 00:48:27 GMT
RUN mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Fri, 23 Jun 2017 00:48:28 GMT
VOLUME [/var/lib/mysql]
# Fri, 23 Jun 2017 00:48:29 GMT
COPY file:0dfb1be3ff2b71842e1c4ae21d0e9f4b9a103296130d270c5072557604f5ca73 in /usr/local/bin/ 
# Fri, 23 Jun 2017 00:48:30 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 23 Jun 2017 00:48:31 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 23 Jun 2017 00:48:32 GMT
EXPOSE 3306/tcp
# Fri, 23 Jun 2017 00:48:33 GMT
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
	-	`sha256:8490b2973547bf66b5d5c4854e0db5e18803bd791a31b8506d44a5ab29589fe9`  
		Last Modified: Sat, 24 Jun 2017 13:35:08 GMT  
		Size: 27.2 MB (27244077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42ab1922cac8593e93457063788e962ae413818d0f7472b61598515007e6d584`  
		Last Modified: Sat, 24 Jun 2017 13:35:02 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b077fef06ec7df309e0f0e09eb09835ce232de319ff06dae1bdd20e081f1bcf4`  
		Last Modified: Sat, 24 Jun 2017 13:35:03 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84ccfdb95f2112992a8128cd03f66c76ce11a389c46496c407708e07c2b62b29`  
		Last Modified: Sat, 24 Jun 2017 13:35:02 GMT  
		Size: 2.6 KB (2626 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:273a9dad419ac5cf9c3071a9f1a89cbc474baaaadaea6d896f211c3a93c78cbc`  
		Last Modified: Sat, 24 Jun 2017 13:35:03 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:5.5`

```console
$ docker pull mysql@sha256:838e1456941ff8c907a2f05ec5c450b89a2fad570b691dfcb9492d3876fc3280
```

-	Platforms:
	-	linux; amd64

### `mysql:5.5` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **89.5 MB (89500671 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:17e9a1fe381e12b489ce2a60d29b3bacea7092635609b40fc86177c87842ca0d`
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
# Fri, 23 Jun 2017 00:47:23 GMT
ENV MYSQL_VERSION=5.5.56
# Fri, 23 Jun 2017 00:48:23 GMT
RUN apt-get update && apt-get install -y ca-certificates wget --no-install-recommends && rm -rf /var/lib/apt/lists/* 	&& wget "https://cdn.mysql.com/Downloads/MySQL-$MYSQL_MAJOR/mysql-$MYSQL_VERSION-linux-glibc2.5-x86_64.tar.gz" -O mysql.tar.gz 	&& wget "https://cdn.mysql.com/Downloads/MySQL-$MYSQL_MAJOR/mysql-$MYSQL_VERSION-linux-glibc2.5-x86_64.tar.gz.asc" -O mysql.tar.gz.asc 	&& apt-get purge -y --auto-remove ca-certificates wget 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys A4A9406876FCBD3C456770C88C718D3B5072E1F5 	&& gpg --batch --verify mysql.tar.gz.asc mysql.tar.gz 	&& rm -r "$GNUPGHOME" mysql.tar.gz.asc 	&& mkdir /usr/local/mysql 	&& tar -xzf mysql.tar.gz -C /usr/local/mysql --strip-components=1 	&& rm mysql.tar.gz 	&& rm -rf /usr/local/mysql/mysql-test /usr/local/mysql/sql-bench 	&& rm -rf /usr/local/mysql/bin/*-debug /usr/local/mysql/bin/*_embedded 	&& find /usr/local/mysql -type f -name "*.a" -delete 	&& apt-get update && apt-get install -y binutils && rm -rf /var/lib/apt/lists/* 	&& { find /usr/local/mysql -type f -executable -exec strip --strip-all '{}' + || true; } 	&& apt-get purge -y --auto-remove binutils
# Fri, 23 Jun 2017 00:48:24 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/mysql/bin:/usr/local/mysql/scripts
# Fri, 23 Jun 2017 00:48:25 GMT
RUN mkdir -p /etc/mysql/conf.d 	&& { 		echo '[mysqld]'; 		echo 'skip-host-cache'; 		echo 'skip-name-resolve'; 		echo 'datadir = /var/lib/mysql'; 		echo '!includedir /etc/mysql/conf.d/'; 	} > /etc/mysql/my.cnf
# Fri, 23 Jun 2017 00:48:27 GMT
RUN mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Fri, 23 Jun 2017 00:48:28 GMT
VOLUME [/var/lib/mysql]
# Fri, 23 Jun 2017 00:48:29 GMT
COPY file:0dfb1be3ff2b71842e1c4ae21d0e9f4b9a103296130d270c5072557604f5ca73 in /usr/local/bin/ 
# Fri, 23 Jun 2017 00:48:30 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 23 Jun 2017 00:48:31 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 23 Jun 2017 00:48:32 GMT
EXPOSE 3306/tcp
# Fri, 23 Jun 2017 00:48:33 GMT
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
	-	`sha256:8490b2973547bf66b5d5c4854e0db5e18803bd791a31b8506d44a5ab29589fe9`  
		Last Modified: Sat, 24 Jun 2017 13:35:08 GMT  
		Size: 27.2 MB (27244077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42ab1922cac8593e93457063788e962ae413818d0f7472b61598515007e6d584`  
		Last Modified: Sat, 24 Jun 2017 13:35:02 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b077fef06ec7df309e0f0e09eb09835ce232de319ff06dae1bdd20e081f1bcf4`  
		Last Modified: Sat, 24 Jun 2017 13:35:03 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84ccfdb95f2112992a8128cd03f66c76ce11a389c46496c407708e07c2b62b29`  
		Last Modified: Sat, 24 Jun 2017 13:35:02 GMT  
		Size: 2.6 KB (2626 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:273a9dad419ac5cf9c3071a9f1a89cbc474baaaadaea6d896f211c3a93c78cbc`  
		Last Modified: Sat, 24 Jun 2017 13:35:03 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
