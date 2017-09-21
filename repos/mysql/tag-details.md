<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `mysql`

-	[`mysql:5`](#mysql5)
-	[`mysql:5.5`](#mysql55)
-	[`mysql:5.5.57`](#mysql5557)
-	[`mysql:5.6`](#mysql56)
-	[`mysql:5.6.37`](#mysql5637)
-	[`mysql:5.7`](#mysql57)
-	[`mysql:5.7.19`](#mysql5719)
-	[`mysql:8`](#mysql8)
-	[`mysql:8.0`](#mysql80)
-	[`mysql:8.0.3`](#mysql803)
-	[`mysql:latest`](#mysqllatest)

## `mysql:5`

```console
$ docker pull mysql@sha256:0dc3dacb751ef46a6647234abdec2d47400f0dfbe77ab490b02bffdae57846ed
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mysql:5` - linux; amd64

```console
$ docker pull mysql@sha256:f6900d8ee65a802f6461a04c5e9f44e2fabbf6f09b2827260c643988bcdba16e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **144.2 MB (144244594 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b4e78b89bcf31a38eab47da1b2b36235462e83beebacb7479d725367e76572cf`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Wed, 13 Sep 2017 08:40:43 GMT
ADD file:d7333b3e0bc6479d2faed32e06d85f1975e5b23e13e75555aeed0f639770413b in / 
# Wed, 13 Sep 2017 08:40:43 GMT
CMD ["bash"]
# Wed, 13 Sep 2017 09:40:16 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 13 Sep 2017 09:40:16 GMT
ENV GOSU_VERSION=1.7
# Wed, 13 Sep 2017 09:40:45 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 13 Sep 2017 09:40:46 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 19 Sep 2017 08:12:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		pwgen 		openssl 		perl 	&& rm -rf /var/lib/apt/lists/*
# Tue, 19 Sep 2017 08:12:46 GMT
RUN set -ex; 	key='A4A9406876FCBD3C456770C88C718D3B5072E1F5'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/mysql.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list > /dev/null
# Tue, 19 Sep 2017 08:13:14 GMT
ENV MYSQL_MAJOR=5.7
# Tue, 19 Sep 2017 08:13:14 GMT
ENV MYSQL_VERSION=5.7.19-1debian8
# Tue, 19 Sep 2017 08:13:15 GMT
RUN echo "deb http://repo.mysql.com/apt/debian/ jessie mysql-${MYSQL_MAJOR}" > /etc/apt/sources.list.d/mysql.list
# Tue, 19 Sep 2017 08:13:44 GMT
RUN { 		echo mysql-community-server mysql-community-server/data-dir select ''; 		echo mysql-community-server mysql-community-server/root-pass password ''; 		echo mysql-community-server mysql-community-server/re-root-pass password ''; 		echo mysql-community-server mysql-community-server/remove-test-db select false; 	} | debconf-set-selections 	&& apt-get update && apt-get install -y mysql-server="${MYSQL_VERSION}" && rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Tue, 19 Sep 2017 08:13:44 GMT
RUN sed -Ei 's/^(bind-address|log)/#&/' /etc/mysql/mysql.conf.d/mysqld.cnf 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Tue, 19 Sep 2017 08:13:44 GMT
VOLUME [/var/lib/mysql]
# Tue, 19 Sep 2017 08:13:45 GMT
COPY file:5453fdbdb142b28e9aa4df64d5e1f42a740f018457cb1c65d113b947858ae314 in /usr/local/bin/ 
# Tue, 19 Sep 2017 08:13:45 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 19 Sep 2017 08:13:46 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 19 Sep 2017 08:13:46 GMT
EXPOSE 3306/tcp
# Tue, 19 Sep 2017 08:13:46 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:aa18ad1a0d334d80981104c599fa8cef9264552a265b1197af11274beba767cf`  
		Last Modified: Thu, 07 Sep 2017 23:11:06 GMT  
		Size: 52.6 MB (52595547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdb8d83dece30495d3d9b7c752c4cc36780c9f1aa03571b6a7b9a8850c7d9979`  
		Last Modified: Wed, 13 Sep 2017 09:45:57 GMT  
		Size: 2.1 KB (2087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75b6ce7b50d3eb246f2ef5fbdd083199d828807abee54d47e3297c866b3d0d2e`  
		Last Modified: Wed, 13 Sep 2017 09:45:56 GMT  
		Size: 1.3 MB (1302934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed1d0a3a64e4720c1352929f9133f7beafb5d0ce74c631e7528b4465b1d908fc`  
		Last Modified: Wed, 13 Sep 2017 09:45:55 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8eb36a82c85bb5004b82c26641a1bd91b967c7affa21a57757d96a417adf5f46`  
		Last Modified: Tue, 19 Sep 2017 08:16:57 GMT  
		Size: 10.7 MB (10710855 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41be6f1a1c40b9db55befda93e917e098ace489d5074759e1561e86cd3aada1c`  
		Last Modified: Tue, 19 Sep 2017 08:16:53 GMT  
		Size: 19.2 KB (19205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e1b414eac71108b6dfba820b6cb42850e1971ff9f1f60dccba735fa1e070f4b`  
		Last Modified: Tue, 19 Sep 2017 08:17:22 GMT  
		Size: 220.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:914c28654a91d595cbcab9999a0f3835a42838f4099e71861a780da9c997b6db`  
		Last Modified: Tue, 19 Sep 2017 08:17:32 GMT  
		Size: 79.6 MB (79609833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:587693eb988c945dbfed6f9bcdda7e5e9ca2ef777981d62d0d54d7a8da1f77a7`  
		Last Modified: Tue, 19 Sep 2017 08:17:20 GMT  
		Size: 941.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b183c358572958d010355a2817310d9537be538cf961a5b44587cd9398500e35`  
		Last Modified: Tue, 19 Sep 2017 08:17:20 GMT  
		Size: 2.7 KB (2736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:315e21657aa49c300184e5fa5f7777e7ae34a6c1b625ec530362bd0f48f8e780`  
		Last Modified: Tue, 19 Sep 2017 08:17:21 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:5.5`

```console
$ docker pull mysql@sha256:0e438b43ace3e8087d38e20c9e4d4d928a3b0ffcaffafc49bdcd5650b3992068
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mysql:5.5` - linux; amd64

```console
$ docker pull mysql@sha256:5d06bd0a345bca72a8784a21c3f16781d089a8c949e878846cbae4c112f92bbb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **90.2 MB (90171707 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b5c2178101be004a6b3e028e26840ad660f30fdbade8aff9c3229ab21fad3c58`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Wed, 13 Sep 2017 08:40:43 GMT
ADD file:d7333b3e0bc6479d2faed32e06d85f1975e5b23e13e75555aeed0f639770413b in / 
# Wed, 13 Sep 2017 08:40:43 GMT
CMD ["bash"]
# Wed, 13 Sep 2017 09:40:16 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 13 Sep 2017 09:40:16 GMT
ENV GOSU_VERSION=1.7
# Wed, 13 Sep 2017 09:40:45 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 13 Sep 2017 09:40:46 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 19 Sep 2017 08:15:07 GMT
RUN apt-get update && apt-get install -y perl --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 19 Sep 2017 08:15:21 GMT
RUN apt-get update && apt-get install -y libaio1 pwgen && rm -rf /var/lib/apt/lists/*
# Tue, 19 Sep 2017 08:15:21 GMT
ENV MYSQL_MAJOR=5.5
# Tue, 19 Sep 2017 08:15:21 GMT
ENV MYSQL_VERSION=5.5.57
# Tue, 19 Sep 2017 08:16:33 GMT
RUN apt-get update && apt-get install -y ca-certificates wget --no-install-recommends && rm -rf /var/lib/apt/lists/* 	&& wget "https://cdn.mysql.com/Downloads/MySQL-$MYSQL_MAJOR/mysql-$MYSQL_VERSION-linux-glibc2.12-x86_64.tar.gz" -O mysql.tar.gz 	&& wget "https://cdn.mysql.com/Downloads/MySQL-$MYSQL_MAJOR/mysql-$MYSQL_VERSION-linux-glibc2.12-x86_64.tar.gz.asc" -O mysql.tar.gz.asc 	&& apt-get purge -y --auto-remove ca-certificates wget 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys A4A9406876FCBD3C456770C88C718D3B5072E1F5 	&& gpg --batch --verify mysql.tar.gz.asc mysql.tar.gz 	&& rm -r "$GNUPGHOME" mysql.tar.gz.asc 	&& mkdir /usr/local/mysql 	&& tar -xzf mysql.tar.gz -C /usr/local/mysql --strip-components=1 	&& rm mysql.tar.gz 	&& rm -rf /usr/local/mysql/mysql-test /usr/local/mysql/sql-bench 	&& rm -rf /usr/local/mysql/bin/*-debug /usr/local/mysql/bin/*_embedded 	&& find /usr/local/mysql -type f -name "*.a" -delete 	&& apt-get update && apt-get install -y binutils && rm -rf /var/lib/apt/lists/* 	&& { find /usr/local/mysql -type f -executable -exec strip --strip-all '{}' + || true; } 	&& apt-get purge -y --auto-remove binutils
# Tue, 19 Sep 2017 08:16:33 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/mysql/bin:/usr/local/mysql/scripts
# Tue, 19 Sep 2017 08:16:33 GMT
RUN mkdir -p /etc/mysql/conf.d 	&& { 		echo '[mysqld]'; 		echo 'skip-host-cache'; 		echo 'skip-name-resolve'; 		echo 'datadir = /var/lib/mysql'; 		echo '!includedir /etc/mysql/conf.d/'; 	} > /etc/mysql/my.cnf
# Tue, 19 Sep 2017 08:16:34 GMT
RUN mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Tue, 19 Sep 2017 08:16:34 GMT
VOLUME [/var/lib/mysql]
# Tue, 19 Sep 2017 08:16:34 GMT
COPY file:0dfb1be3ff2b71842e1c4ae21d0e9f4b9a103296130d270c5072557604f5ca73 in /usr/local/bin/ 
# Tue, 19 Sep 2017 08:16:35 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 19 Sep 2017 08:16:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 19 Sep 2017 08:16:35 GMT
EXPOSE 3306/tcp
# Tue, 19 Sep 2017 08:16:36 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:aa18ad1a0d334d80981104c599fa8cef9264552a265b1197af11274beba767cf`  
		Last Modified: Thu, 07 Sep 2017 23:11:06 GMT  
		Size: 52.6 MB (52595547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdb8d83dece30495d3d9b7c752c4cc36780c9f1aa03571b6a7b9a8850c7d9979`  
		Last Modified: Wed, 13 Sep 2017 09:45:57 GMT  
		Size: 2.1 KB (2087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75b6ce7b50d3eb246f2ef5fbdd083199d828807abee54d47e3297c866b3d0d2e`  
		Last Modified: Wed, 13 Sep 2017 09:45:56 GMT  
		Size: 1.3 MB (1302934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed1d0a3a64e4720c1352929f9133f7beafb5d0ce74c631e7528b4465b1d908fc`  
		Last Modified: Wed, 13 Sep 2017 09:45:55 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67532014efc34ea4ba4a8a245c8c87b4bb4307fff7ce70ae0d09562b58326aa3`  
		Last Modified: Tue, 19 Sep 2017 08:18:30 GMT  
		Size: 8.4 MB (8440619 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f389492b9a5426a662356e9308fc6e8b90ff0f1169cfbb2a88e88bbc33ce7547`  
		Last Modified: Tue, 19 Sep 2017 08:18:28 GMT  
		Size: 302.0 KB (301978 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e34db421137cbb1881283b2a06b0fbdec8e27d802a621768ee4c4b495b922efb`  
		Last Modified: Tue, 19 Sep 2017 08:18:31 GMT  
		Size: 27.5 MB (27525256 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:489d6ffa47440c0234863e66dcf5918d3ae53f06ec111f77e1c07ebddce10ded`  
		Last Modified: Tue, 19 Sep 2017 08:18:25 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26dfc79450af87ad2410c7646d499345f255c988f4e00bfbf067e3fca91c730f`  
		Last Modified: Tue, 19 Sep 2017 08:18:25 GMT  
		Size: 177.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4e28f53e1a11146e0e4c3a4490886cff74f87bbb14b93e76a47cf14cc927a85`  
		Last Modified: Tue, 19 Sep 2017 08:18:25 GMT  
		Size: 2.6 KB (2636 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a2dcf610faadedadb30f05f656334a1aab114a5de0a53262724d1708a305727`  
		Last Modified: Tue, 19 Sep 2017 08:18:25 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:5.5.57`

```console
$ docker pull mysql@sha256:0e438b43ace3e8087d38e20c9e4d4d928a3b0ffcaffafc49bdcd5650b3992068
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mysql:5.5.57` - linux; amd64

```console
$ docker pull mysql@sha256:5d06bd0a345bca72a8784a21c3f16781d089a8c949e878846cbae4c112f92bbb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **90.2 MB (90171707 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b5c2178101be004a6b3e028e26840ad660f30fdbade8aff9c3229ab21fad3c58`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Wed, 13 Sep 2017 08:40:43 GMT
ADD file:d7333b3e0bc6479d2faed32e06d85f1975e5b23e13e75555aeed0f639770413b in / 
# Wed, 13 Sep 2017 08:40:43 GMT
CMD ["bash"]
# Wed, 13 Sep 2017 09:40:16 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 13 Sep 2017 09:40:16 GMT
ENV GOSU_VERSION=1.7
# Wed, 13 Sep 2017 09:40:45 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 13 Sep 2017 09:40:46 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 19 Sep 2017 08:15:07 GMT
RUN apt-get update && apt-get install -y perl --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 19 Sep 2017 08:15:21 GMT
RUN apt-get update && apt-get install -y libaio1 pwgen && rm -rf /var/lib/apt/lists/*
# Tue, 19 Sep 2017 08:15:21 GMT
ENV MYSQL_MAJOR=5.5
# Tue, 19 Sep 2017 08:15:21 GMT
ENV MYSQL_VERSION=5.5.57
# Tue, 19 Sep 2017 08:16:33 GMT
RUN apt-get update && apt-get install -y ca-certificates wget --no-install-recommends && rm -rf /var/lib/apt/lists/* 	&& wget "https://cdn.mysql.com/Downloads/MySQL-$MYSQL_MAJOR/mysql-$MYSQL_VERSION-linux-glibc2.12-x86_64.tar.gz" -O mysql.tar.gz 	&& wget "https://cdn.mysql.com/Downloads/MySQL-$MYSQL_MAJOR/mysql-$MYSQL_VERSION-linux-glibc2.12-x86_64.tar.gz.asc" -O mysql.tar.gz.asc 	&& apt-get purge -y --auto-remove ca-certificates wget 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys A4A9406876FCBD3C456770C88C718D3B5072E1F5 	&& gpg --batch --verify mysql.tar.gz.asc mysql.tar.gz 	&& rm -r "$GNUPGHOME" mysql.tar.gz.asc 	&& mkdir /usr/local/mysql 	&& tar -xzf mysql.tar.gz -C /usr/local/mysql --strip-components=1 	&& rm mysql.tar.gz 	&& rm -rf /usr/local/mysql/mysql-test /usr/local/mysql/sql-bench 	&& rm -rf /usr/local/mysql/bin/*-debug /usr/local/mysql/bin/*_embedded 	&& find /usr/local/mysql -type f -name "*.a" -delete 	&& apt-get update && apt-get install -y binutils && rm -rf /var/lib/apt/lists/* 	&& { find /usr/local/mysql -type f -executable -exec strip --strip-all '{}' + || true; } 	&& apt-get purge -y --auto-remove binutils
# Tue, 19 Sep 2017 08:16:33 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/mysql/bin:/usr/local/mysql/scripts
# Tue, 19 Sep 2017 08:16:33 GMT
RUN mkdir -p /etc/mysql/conf.d 	&& { 		echo '[mysqld]'; 		echo 'skip-host-cache'; 		echo 'skip-name-resolve'; 		echo 'datadir = /var/lib/mysql'; 		echo '!includedir /etc/mysql/conf.d/'; 	} > /etc/mysql/my.cnf
# Tue, 19 Sep 2017 08:16:34 GMT
RUN mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Tue, 19 Sep 2017 08:16:34 GMT
VOLUME [/var/lib/mysql]
# Tue, 19 Sep 2017 08:16:34 GMT
COPY file:0dfb1be3ff2b71842e1c4ae21d0e9f4b9a103296130d270c5072557604f5ca73 in /usr/local/bin/ 
# Tue, 19 Sep 2017 08:16:35 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 19 Sep 2017 08:16:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 19 Sep 2017 08:16:35 GMT
EXPOSE 3306/tcp
# Tue, 19 Sep 2017 08:16:36 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:aa18ad1a0d334d80981104c599fa8cef9264552a265b1197af11274beba767cf`  
		Last Modified: Thu, 07 Sep 2017 23:11:06 GMT  
		Size: 52.6 MB (52595547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdb8d83dece30495d3d9b7c752c4cc36780c9f1aa03571b6a7b9a8850c7d9979`  
		Last Modified: Wed, 13 Sep 2017 09:45:57 GMT  
		Size: 2.1 KB (2087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75b6ce7b50d3eb246f2ef5fbdd083199d828807abee54d47e3297c866b3d0d2e`  
		Last Modified: Wed, 13 Sep 2017 09:45:56 GMT  
		Size: 1.3 MB (1302934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed1d0a3a64e4720c1352929f9133f7beafb5d0ce74c631e7528b4465b1d908fc`  
		Last Modified: Wed, 13 Sep 2017 09:45:55 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67532014efc34ea4ba4a8a245c8c87b4bb4307fff7ce70ae0d09562b58326aa3`  
		Last Modified: Tue, 19 Sep 2017 08:18:30 GMT  
		Size: 8.4 MB (8440619 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f389492b9a5426a662356e9308fc6e8b90ff0f1169cfbb2a88e88bbc33ce7547`  
		Last Modified: Tue, 19 Sep 2017 08:18:28 GMT  
		Size: 302.0 KB (301978 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e34db421137cbb1881283b2a06b0fbdec8e27d802a621768ee4c4b495b922efb`  
		Last Modified: Tue, 19 Sep 2017 08:18:31 GMT  
		Size: 27.5 MB (27525256 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:489d6ffa47440c0234863e66dcf5918d3ae53f06ec111f77e1c07ebddce10ded`  
		Last Modified: Tue, 19 Sep 2017 08:18:25 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26dfc79450af87ad2410c7646d499345f255c988f4e00bfbf067e3fca91c730f`  
		Last Modified: Tue, 19 Sep 2017 08:18:25 GMT  
		Size: 177.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4e28f53e1a11146e0e4c3a4490886cff74f87bbb14b93e76a47cf14cc927a85`  
		Last Modified: Tue, 19 Sep 2017 08:18:25 GMT  
		Size: 2.6 KB (2636 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a2dcf610faadedadb30f05f656334a1aab114a5de0a53262724d1708a305727`  
		Last Modified: Tue, 19 Sep 2017 08:18:25 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:5.6`

```console
$ docker pull mysql@sha256:4520321978cf1ddce0827aa406f934bb8a7aa766260b1d530ff36de0f7ca484a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mysql:5.6` - linux; amd64

```console
$ docker pull mysql@sha256:80efa2e28c78995d504dbda93c83cb279d0b1b0eecf77bcf3cb24c028e9ecc71
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **105.0 MB (105046412 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cea0d0c97c4fd901dc879edf62df86f5f56710472ed068cae0ccd63406ae8763`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Wed, 13 Sep 2017 08:40:43 GMT
ADD file:d7333b3e0bc6479d2faed32e06d85f1975e5b23e13e75555aeed0f639770413b in / 
# Wed, 13 Sep 2017 08:40:43 GMT
CMD ["bash"]
# Wed, 13 Sep 2017 09:40:16 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 13 Sep 2017 09:40:16 GMT
ENV GOSU_VERSION=1.7
# Wed, 13 Sep 2017 09:40:45 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 13 Sep 2017 09:40:46 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 19 Sep 2017 08:14:06 GMT
RUN apt-get update && apt-get install -y perl pwgen --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 19 Sep 2017 08:14:11 GMT
RUN set -ex; 	key='A4A9406876FCBD3C456770C88C718D3B5072E1F5'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/mysql.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list > /dev/null
# Tue, 19 Sep 2017 08:14:11 GMT
ENV MYSQL_MAJOR=5.6
# Tue, 19 Sep 2017 08:14:11 GMT
ENV MYSQL_VERSION=5.6.37-1debian8
# Tue, 19 Sep 2017 08:14:12 GMT
RUN echo "deb http://repo.mysql.com/apt/debian/ jessie mysql-${MYSQL_MAJOR}" > /etc/apt/sources.list.d/mysql.list
# Tue, 19 Sep 2017 08:14:37 GMT
RUN { 		echo mysql-community-server mysql-community-server/data-dir select ''; 		echo mysql-community-server mysql-community-server/root-pass password ''; 		echo mysql-community-server mysql-community-server/re-root-pass password ''; 		echo mysql-community-server mysql-community-server/remove-test-db select false; 	} | debconf-set-selections 	&& apt-get update && apt-get install -y mysql-server="${MYSQL_VERSION}" && rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Tue, 19 Sep 2017 08:14:38 GMT
RUN sed -Ei 's/^(bind-address|log)/#&/' /etc/mysql/my.cnf 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Tue, 19 Sep 2017 08:14:38 GMT
VOLUME [/var/lib/mysql]
# Tue, 19 Sep 2017 08:14:39 GMT
COPY file:b4e423a0d95974d5269d37431aafc0c69cb304dc09ab3f496dbcfdfbc2dbd818 in /usr/local/bin/ 
# Tue, 19 Sep 2017 08:14:39 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 19 Sep 2017 08:14:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 19 Sep 2017 08:14:40 GMT
EXPOSE 3306/tcp
# Tue, 19 Sep 2017 08:14:40 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:aa18ad1a0d334d80981104c599fa8cef9264552a265b1197af11274beba767cf`  
		Last Modified: Thu, 07 Sep 2017 23:11:06 GMT  
		Size: 52.6 MB (52595547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdb8d83dece30495d3d9b7c752c4cc36780c9f1aa03571b6a7b9a8850c7d9979`  
		Last Modified: Wed, 13 Sep 2017 09:45:57 GMT  
		Size: 2.1 KB (2087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75b6ce7b50d3eb246f2ef5fbdd083199d828807abee54d47e3297c866b3d0d2e`  
		Last Modified: Wed, 13 Sep 2017 09:45:56 GMT  
		Size: 1.3 MB (1302934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed1d0a3a64e4720c1352929f9133f7beafb5d0ce74c631e7528b4465b1d908fc`  
		Last Modified: Wed, 13 Sep 2017 09:45:55 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:075d7470da69436c4cc41f4633e888ebeea92ee27676e03a0d226e8378d0f310`  
		Last Modified: Tue, 19 Sep 2017 08:18:05 GMT  
		Size: 8.5 MB (8460399 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2867133a7ef76b099fb716786fff73efc1367bf2b2694ceea395171d234705a`  
		Last Modified: Tue, 19 Sep 2017 08:18:03 GMT  
		Size: 19.2 KB (19206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4266e3240200863f40e38c5dbe177fdd079398eb4f022c0e9a37f09aee6e3581`  
		Last Modified: Tue, 19 Sep 2017 08:18:01 GMT  
		Size: 218.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d164a4aa4a9c70f44919959dfb9a1803fddf6d2bde9e4251f4aefc1b37439426`  
		Last Modified: Tue, 19 Sep 2017 08:18:09 GMT  
		Size: 42.7 MB (42662329 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3dbb905df4981bdd85740496c150159ad493199c7e1099c35c0e7435c415df46`  
		Last Modified: Tue, 19 Sep 2017 08:18:01 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0d47e3f91e011d659d24c3742e45a74633bd72eb68e1ceb82e303687aee2871`  
		Last Modified: Tue, 19 Sep 2017 08:18:01 GMT  
		Size: 2.6 KB (2604 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78e8a12328ba35e6918f53b65ff256b40f9c340f6acd783ba2520031f489aa74`  
		Last Modified: Tue, 19 Sep 2017 08:18:01 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:5.6.37`

```console
$ docker pull mysql@sha256:4520321978cf1ddce0827aa406f934bb8a7aa766260b1d530ff36de0f7ca484a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mysql:5.6.37` - linux; amd64

```console
$ docker pull mysql@sha256:80efa2e28c78995d504dbda93c83cb279d0b1b0eecf77bcf3cb24c028e9ecc71
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **105.0 MB (105046412 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cea0d0c97c4fd901dc879edf62df86f5f56710472ed068cae0ccd63406ae8763`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Wed, 13 Sep 2017 08:40:43 GMT
ADD file:d7333b3e0bc6479d2faed32e06d85f1975e5b23e13e75555aeed0f639770413b in / 
# Wed, 13 Sep 2017 08:40:43 GMT
CMD ["bash"]
# Wed, 13 Sep 2017 09:40:16 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 13 Sep 2017 09:40:16 GMT
ENV GOSU_VERSION=1.7
# Wed, 13 Sep 2017 09:40:45 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 13 Sep 2017 09:40:46 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 19 Sep 2017 08:14:06 GMT
RUN apt-get update && apt-get install -y perl pwgen --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 19 Sep 2017 08:14:11 GMT
RUN set -ex; 	key='A4A9406876FCBD3C456770C88C718D3B5072E1F5'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/mysql.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list > /dev/null
# Tue, 19 Sep 2017 08:14:11 GMT
ENV MYSQL_MAJOR=5.6
# Tue, 19 Sep 2017 08:14:11 GMT
ENV MYSQL_VERSION=5.6.37-1debian8
# Tue, 19 Sep 2017 08:14:12 GMT
RUN echo "deb http://repo.mysql.com/apt/debian/ jessie mysql-${MYSQL_MAJOR}" > /etc/apt/sources.list.d/mysql.list
# Tue, 19 Sep 2017 08:14:37 GMT
RUN { 		echo mysql-community-server mysql-community-server/data-dir select ''; 		echo mysql-community-server mysql-community-server/root-pass password ''; 		echo mysql-community-server mysql-community-server/re-root-pass password ''; 		echo mysql-community-server mysql-community-server/remove-test-db select false; 	} | debconf-set-selections 	&& apt-get update && apt-get install -y mysql-server="${MYSQL_VERSION}" && rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Tue, 19 Sep 2017 08:14:38 GMT
RUN sed -Ei 's/^(bind-address|log)/#&/' /etc/mysql/my.cnf 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Tue, 19 Sep 2017 08:14:38 GMT
VOLUME [/var/lib/mysql]
# Tue, 19 Sep 2017 08:14:39 GMT
COPY file:b4e423a0d95974d5269d37431aafc0c69cb304dc09ab3f496dbcfdfbc2dbd818 in /usr/local/bin/ 
# Tue, 19 Sep 2017 08:14:39 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 19 Sep 2017 08:14:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 19 Sep 2017 08:14:40 GMT
EXPOSE 3306/tcp
# Tue, 19 Sep 2017 08:14:40 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:aa18ad1a0d334d80981104c599fa8cef9264552a265b1197af11274beba767cf`  
		Last Modified: Thu, 07 Sep 2017 23:11:06 GMT  
		Size: 52.6 MB (52595547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdb8d83dece30495d3d9b7c752c4cc36780c9f1aa03571b6a7b9a8850c7d9979`  
		Last Modified: Wed, 13 Sep 2017 09:45:57 GMT  
		Size: 2.1 KB (2087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75b6ce7b50d3eb246f2ef5fbdd083199d828807abee54d47e3297c866b3d0d2e`  
		Last Modified: Wed, 13 Sep 2017 09:45:56 GMT  
		Size: 1.3 MB (1302934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed1d0a3a64e4720c1352929f9133f7beafb5d0ce74c631e7528b4465b1d908fc`  
		Last Modified: Wed, 13 Sep 2017 09:45:55 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:075d7470da69436c4cc41f4633e888ebeea92ee27676e03a0d226e8378d0f310`  
		Last Modified: Tue, 19 Sep 2017 08:18:05 GMT  
		Size: 8.5 MB (8460399 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2867133a7ef76b099fb716786fff73efc1367bf2b2694ceea395171d234705a`  
		Last Modified: Tue, 19 Sep 2017 08:18:03 GMT  
		Size: 19.2 KB (19206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4266e3240200863f40e38c5dbe177fdd079398eb4f022c0e9a37f09aee6e3581`  
		Last Modified: Tue, 19 Sep 2017 08:18:01 GMT  
		Size: 218.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d164a4aa4a9c70f44919959dfb9a1803fddf6d2bde9e4251f4aefc1b37439426`  
		Last Modified: Tue, 19 Sep 2017 08:18:09 GMT  
		Size: 42.7 MB (42662329 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3dbb905df4981bdd85740496c150159ad493199c7e1099c35c0e7435c415df46`  
		Last Modified: Tue, 19 Sep 2017 08:18:01 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0d47e3f91e011d659d24c3742e45a74633bd72eb68e1ceb82e303687aee2871`  
		Last Modified: Tue, 19 Sep 2017 08:18:01 GMT  
		Size: 2.6 KB (2604 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78e8a12328ba35e6918f53b65ff256b40f9c340f6acd783ba2520031f489aa74`  
		Last Modified: Tue, 19 Sep 2017 08:18:01 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:5.7`

```console
$ docker pull mysql@sha256:0dc3dacb751ef46a6647234abdec2d47400f0dfbe77ab490b02bffdae57846ed
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mysql:5.7` - linux; amd64

```console
$ docker pull mysql@sha256:f6900d8ee65a802f6461a04c5e9f44e2fabbf6f09b2827260c643988bcdba16e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **144.2 MB (144244594 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b4e78b89bcf31a38eab47da1b2b36235462e83beebacb7479d725367e76572cf`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Wed, 13 Sep 2017 08:40:43 GMT
ADD file:d7333b3e0bc6479d2faed32e06d85f1975e5b23e13e75555aeed0f639770413b in / 
# Wed, 13 Sep 2017 08:40:43 GMT
CMD ["bash"]
# Wed, 13 Sep 2017 09:40:16 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 13 Sep 2017 09:40:16 GMT
ENV GOSU_VERSION=1.7
# Wed, 13 Sep 2017 09:40:45 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 13 Sep 2017 09:40:46 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 19 Sep 2017 08:12:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		pwgen 		openssl 		perl 	&& rm -rf /var/lib/apt/lists/*
# Tue, 19 Sep 2017 08:12:46 GMT
RUN set -ex; 	key='A4A9406876FCBD3C456770C88C718D3B5072E1F5'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/mysql.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list > /dev/null
# Tue, 19 Sep 2017 08:13:14 GMT
ENV MYSQL_MAJOR=5.7
# Tue, 19 Sep 2017 08:13:14 GMT
ENV MYSQL_VERSION=5.7.19-1debian8
# Tue, 19 Sep 2017 08:13:15 GMT
RUN echo "deb http://repo.mysql.com/apt/debian/ jessie mysql-${MYSQL_MAJOR}" > /etc/apt/sources.list.d/mysql.list
# Tue, 19 Sep 2017 08:13:44 GMT
RUN { 		echo mysql-community-server mysql-community-server/data-dir select ''; 		echo mysql-community-server mysql-community-server/root-pass password ''; 		echo mysql-community-server mysql-community-server/re-root-pass password ''; 		echo mysql-community-server mysql-community-server/remove-test-db select false; 	} | debconf-set-selections 	&& apt-get update && apt-get install -y mysql-server="${MYSQL_VERSION}" && rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Tue, 19 Sep 2017 08:13:44 GMT
RUN sed -Ei 's/^(bind-address|log)/#&/' /etc/mysql/mysql.conf.d/mysqld.cnf 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Tue, 19 Sep 2017 08:13:44 GMT
VOLUME [/var/lib/mysql]
# Tue, 19 Sep 2017 08:13:45 GMT
COPY file:5453fdbdb142b28e9aa4df64d5e1f42a740f018457cb1c65d113b947858ae314 in /usr/local/bin/ 
# Tue, 19 Sep 2017 08:13:45 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 19 Sep 2017 08:13:46 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 19 Sep 2017 08:13:46 GMT
EXPOSE 3306/tcp
# Tue, 19 Sep 2017 08:13:46 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:aa18ad1a0d334d80981104c599fa8cef9264552a265b1197af11274beba767cf`  
		Last Modified: Thu, 07 Sep 2017 23:11:06 GMT  
		Size: 52.6 MB (52595547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdb8d83dece30495d3d9b7c752c4cc36780c9f1aa03571b6a7b9a8850c7d9979`  
		Last Modified: Wed, 13 Sep 2017 09:45:57 GMT  
		Size: 2.1 KB (2087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75b6ce7b50d3eb246f2ef5fbdd083199d828807abee54d47e3297c866b3d0d2e`  
		Last Modified: Wed, 13 Sep 2017 09:45:56 GMT  
		Size: 1.3 MB (1302934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed1d0a3a64e4720c1352929f9133f7beafb5d0ce74c631e7528b4465b1d908fc`  
		Last Modified: Wed, 13 Sep 2017 09:45:55 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8eb36a82c85bb5004b82c26641a1bd91b967c7affa21a57757d96a417adf5f46`  
		Last Modified: Tue, 19 Sep 2017 08:16:57 GMT  
		Size: 10.7 MB (10710855 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41be6f1a1c40b9db55befda93e917e098ace489d5074759e1561e86cd3aada1c`  
		Last Modified: Tue, 19 Sep 2017 08:16:53 GMT  
		Size: 19.2 KB (19205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e1b414eac71108b6dfba820b6cb42850e1971ff9f1f60dccba735fa1e070f4b`  
		Last Modified: Tue, 19 Sep 2017 08:17:22 GMT  
		Size: 220.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:914c28654a91d595cbcab9999a0f3835a42838f4099e71861a780da9c997b6db`  
		Last Modified: Tue, 19 Sep 2017 08:17:32 GMT  
		Size: 79.6 MB (79609833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:587693eb988c945dbfed6f9bcdda7e5e9ca2ef777981d62d0d54d7a8da1f77a7`  
		Last Modified: Tue, 19 Sep 2017 08:17:20 GMT  
		Size: 941.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b183c358572958d010355a2817310d9537be538cf961a5b44587cd9398500e35`  
		Last Modified: Tue, 19 Sep 2017 08:17:20 GMT  
		Size: 2.7 KB (2736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:315e21657aa49c300184e5fa5f7777e7ae34a6c1b625ec530362bd0f48f8e780`  
		Last Modified: Tue, 19 Sep 2017 08:17:21 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:5.7.19`

```console
$ docker pull mysql@sha256:0dc3dacb751ef46a6647234abdec2d47400f0dfbe77ab490b02bffdae57846ed
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mysql:5.7.19` - linux; amd64

```console
$ docker pull mysql@sha256:f6900d8ee65a802f6461a04c5e9f44e2fabbf6f09b2827260c643988bcdba16e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **144.2 MB (144244594 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b4e78b89bcf31a38eab47da1b2b36235462e83beebacb7479d725367e76572cf`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Wed, 13 Sep 2017 08:40:43 GMT
ADD file:d7333b3e0bc6479d2faed32e06d85f1975e5b23e13e75555aeed0f639770413b in / 
# Wed, 13 Sep 2017 08:40:43 GMT
CMD ["bash"]
# Wed, 13 Sep 2017 09:40:16 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 13 Sep 2017 09:40:16 GMT
ENV GOSU_VERSION=1.7
# Wed, 13 Sep 2017 09:40:45 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 13 Sep 2017 09:40:46 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 19 Sep 2017 08:12:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		pwgen 		openssl 		perl 	&& rm -rf /var/lib/apt/lists/*
# Tue, 19 Sep 2017 08:12:46 GMT
RUN set -ex; 	key='A4A9406876FCBD3C456770C88C718D3B5072E1F5'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/mysql.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list > /dev/null
# Tue, 19 Sep 2017 08:13:14 GMT
ENV MYSQL_MAJOR=5.7
# Tue, 19 Sep 2017 08:13:14 GMT
ENV MYSQL_VERSION=5.7.19-1debian8
# Tue, 19 Sep 2017 08:13:15 GMT
RUN echo "deb http://repo.mysql.com/apt/debian/ jessie mysql-${MYSQL_MAJOR}" > /etc/apt/sources.list.d/mysql.list
# Tue, 19 Sep 2017 08:13:44 GMT
RUN { 		echo mysql-community-server mysql-community-server/data-dir select ''; 		echo mysql-community-server mysql-community-server/root-pass password ''; 		echo mysql-community-server mysql-community-server/re-root-pass password ''; 		echo mysql-community-server mysql-community-server/remove-test-db select false; 	} | debconf-set-selections 	&& apt-get update && apt-get install -y mysql-server="${MYSQL_VERSION}" && rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Tue, 19 Sep 2017 08:13:44 GMT
RUN sed -Ei 's/^(bind-address|log)/#&/' /etc/mysql/mysql.conf.d/mysqld.cnf 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Tue, 19 Sep 2017 08:13:44 GMT
VOLUME [/var/lib/mysql]
# Tue, 19 Sep 2017 08:13:45 GMT
COPY file:5453fdbdb142b28e9aa4df64d5e1f42a740f018457cb1c65d113b947858ae314 in /usr/local/bin/ 
# Tue, 19 Sep 2017 08:13:45 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 19 Sep 2017 08:13:46 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 19 Sep 2017 08:13:46 GMT
EXPOSE 3306/tcp
# Tue, 19 Sep 2017 08:13:46 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:aa18ad1a0d334d80981104c599fa8cef9264552a265b1197af11274beba767cf`  
		Last Modified: Thu, 07 Sep 2017 23:11:06 GMT  
		Size: 52.6 MB (52595547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdb8d83dece30495d3d9b7c752c4cc36780c9f1aa03571b6a7b9a8850c7d9979`  
		Last Modified: Wed, 13 Sep 2017 09:45:57 GMT  
		Size: 2.1 KB (2087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75b6ce7b50d3eb246f2ef5fbdd083199d828807abee54d47e3297c866b3d0d2e`  
		Last Modified: Wed, 13 Sep 2017 09:45:56 GMT  
		Size: 1.3 MB (1302934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed1d0a3a64e4720c1352929f9133f7beafb5d0ce74c631e7528b4465b1d908fc`  
		Last Modified: Wed, 13 Sep 2017 09:45:55 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8eb36a82c85bb5004b82c26641a1bd91b967c7affa21a57757d96a417adf5f46`  
		Last Modified: Tue, 19 Sep 2017 08:16:57 GMT  
		Size: 10.7 MB (10710855 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41be6f1a1c40b9db55befda93e917e098ace489d5074759e1561e86cd3aada1c`  
		Last Modified: Tue, 19 Sep 2017 08:16:53 GMT  
		Size: 19.2 KB (19205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e1b414eac71108b6dfba820b6cb42850e1971ff9f1f60dccba735fa1e070f4b`  
		Last Modified: Tue, 19 Sep 2017 08:17:22 GMT  
		Size: 220.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:914c28654a91d595cbcab9999a0f3835a42838f4099e71861a780da9c997b6db`  
		Last Modified: Tue, 19 Sep 2017 08:17:32 GMT  
		Size: 79.6 MB (79609833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:587693eb988c945dbfed6f9bcdda7e5e9ca2ef777981d62d0d54d7a8da1f77a7`  
		Last Modified: Tue, 19 Sep 2017 08:17:20 GMT  
		Size: 941.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b183c358572958d010355a2817310d9537be538cf961a5b44587cd9398500e35`  
		Last Modified: Tue, 19 Sep 2017 08:17:20 GMT  
		Size: 2.7 KB (2736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:315e21657aa49c300184e5fa5f7777e7ae34a6c1b625ec530362bd0f48f8e780`  
		Last Modified: Tue, 19 Sep 2017 08:17:21 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:8`

```console
$ docker pull mysql@sha256:9d3c051f7c9e7473a4d1c5bfa856ed13997e976f7535429d9c031f135bd6302e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mysql:8` - linux; amd64

```console
$ docker pull mysql@sha256:714aeefe5c3153ad7e17fc35851f1c92c517722e947913c748fa5814c4a90673
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **91.9 MB (91850328 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f693302d97a2cfd9fc8882e3601dd8133e6b8e69c3f05aabdbff6136390e816f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Wed, 13 Sep 2017 08:40:43 GMT
ADD file:d7333b3e0bc6479d2faed32e06d85f1975e5b23e13e75555aeed0f639770413b in / 
# Wed, 13 Sep 2017 08:40:43 GMT
CMD ["bash"]
# Wed, 13 Sep 2017 09:40:16 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 13 Sep 2017 09:40:16 GMT
ENV GOSU_VERSION=1.7
# Wed, 13 Sep 2017 09:40:45 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 13 Sep 2017 09:40:46 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 19 Sep 2017 08:12:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		pwgen 		openssl 		perl 	&& rm -rf /var/lib/apt/lists/*
# Tue, 19 Sep 2017 08:12:46 GMT
RUN set -ex; 	key='A4A9406876FCBD3C456770C88C718D3B5072E1F5'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/mysql.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list > /dev/null
# Tue, 19 Sep 2017 08:12:46 GMT
ENV MYSQL_MAJOR=8.0
# Tue, 19 Sep 2017 08:12:47 GMT
ENV MYSQL_VERSION=8.0.2-dmr-1debian8
# Tue, 19 Sep 2017 08:12:47 GMT
RUN echo "deb http://repo.mysql.com/apt/debian/ jessie mysql-${MYSQL_MAJOR}" > /etc/apt/sources.list.d/mysql.list
# Tue, 19 Sep 2017 08:13:06 GMT
RUN { 		echo mysql-community-server mysql-community-server/data-dir select ''; 		echo mysql-community-server mysql-community-server/root-pass password ''; 		echo mysql-community-server mysql-community-server/re-root-pass password ''; 		echo mysql-community-server mysql-community-server/remove-test-db select false; 	} | debconf-set-selections 	&& apt-get update && apt-get install -y mysql-community-client-core="${MYSQL_VERSION}" mysql-community-server-core="${MYSQL_VERSION}" && rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Tue, 19 Sep 2017 08:13:06 GMT
VOLUME [/var/lib/mysql]
# Tue, 19 Sep 2017 08:13:07 GMT
COPY dir:110dcf1221c1f9432c68c32a2465ef0b40994f401d5fae0b0de80025bcf839a5 in /etc/mysql/ 
# Tue, 19 Sep 2017 08:13:07 GMT
COPY file:5453fdbdb142b28e9aa4df64d5e1f42a740f018457cb1c65d113b947858ae314 in /usr/local/bin/ 
# Tue, 19 Sep 2017 08:13:07 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 19 Sep 2017 08:13:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 19 Sep 2017 08:13:08 GMT
EXPOSE 3306/tcp
# Tue, 19 Sep 2017 08:13:08 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:aa18ad1a0d334d80981104c599fa8cef9264552a265b1197af11274beba767cf`  
		Last Modified: Thu, 07 Sep 2017 23:11:06 GMT  
		Size: 52.6 MB (52595547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdb8d83dece30495d3d9b7c752c4cc36780c9f1aa03571b6a7b9a8850c7d9979`  
		Last Modified: Wed, 13 Sep 2017 09:45:57 GMT  
		Size: 2.1 KB (2087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75b6ce7b50d3eb246f2ef5fbdd083199d828807abee54d47e3297c866b3d0d2e`  
		Last Modified: Wed, 13 Sep 2017 09:45:56 GMT  
		Size: 1.3 MB (1302934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed1d0a3a64e4720c1352929f9133f7beafb5d0ce74c631e7528b4465b1d908fc`  
		Last Modified: Wed, 13 Sep 2017 09:45:55 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8eb36a82c85bb5004b82c26641a1bd91b967c7affa21a57757d96a417adf5f46`  
		Last Modified: Tue, 19 Sep 2017 08:16:57 GMT  
		Size: 10.7 MB (10710855 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41be6f1a1c40b9db55befda93e917e098ace489d5074759e1561e86cd3aada1c`  
		Last Modified: Tue, 19 Sep 2017 08:16:53 GMT  
		Size: 19.2 KB (19205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8683a88e3f8fa9c7c20e17e17248cec54a9e543fae53f93a6652fe1324f56dce`  
		Last Modified: Tue, 19 Sep 2017 08:16:51 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9af8f069679130c34bb8a49b8d8b8e60fe817c30f59938784b93d259b4eff1e`  
		Last Modified: Tue, 19 Sep 2017 08:16:55 GMT  
		Size: 27.2 MB (27215613 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96a0f25fab410861bd255dd864917449879390bdf7a063ad21bbf96d1ccce98d`  
		Last Modified: Tue, 19 Sep 2017 08:16:51 GMT  
		Size: 898.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5829504b5aea3313f228aff86963ce71ab85aaee61ceaba8f0276221694525cb`  
		Last Modified: Tue, 19 Sep 2017 08:16:51 GMT  
		Size: 2.7 KB (2737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13b958c5855471146306bb0091ec793b4b769bf874e352394a7cb4dac6e57ab4`  
		Last Modified: Tue, 19 Sep 2017 08:16:51 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:8.0`

```console
$ docker pull mysql@sha256:9d3c051f7c9e7473a4d1c5bfa856ed13997e976f7535429d9c031f135bd6302e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mysql:8.0` - linux; amd64

```console
$ docker pull mysql@sha256:714aeefe5c3153ad7e17fc35851f1c92c517722e947913c748fa5814c4a90673
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **91.9 MB (91850328 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f693302d97a2cfd9fc8882e3601dd8133e6b8e69c3f05aabdbff6136390e816f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Wed, 13 Sep 2017 08:40:43 GMT
ADD file:d7333b3e0bc6479d2faed32e06d85f1975e5b23e13e75555aeed0f639770413b in / 
# Wed, 13 Sep 2017 08:40:43 GMT
CMD ["bash"]
# Wed, 13 Sep 2017 09:40:16 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 13 Sep 2017 09:40:16 GMT
ENV GOSU_VERSION=1.7
# Wed, 13 Sep 2017 09:40:45 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 13 Sep 2017 09:40:46 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 19 Sep 2017 08:12:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		pwgen 		openssl 		perl 	&& rm -rf /var/lib/apt/lists/*
# Tue, 19 Sep 2017 08:12:46 GMT
RUN set -ex; 	key='A4A9406876FCBD3C456770C88C718D3B5072E1F5'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/mysql.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list > /dev/null
# Tue, 19 Sep 2017 08:12:46 GMT
ENV MYSQL_MAJOR=8.0
# Tue, 19 Sep 2017 08:12:47 GMT
ENV MYSQL_VERSION=8.0.2-dmr-1debian8
# Tue, 19 Sep 2017 08:12:47 GMT
RUN echo "deb http://repo.mysql.com/apt/debian/ jessie mysql-${MYSQL_MAJOR}" > /etc/apt/sources.list.d/mysql.list
# Tue, 19 Sep 2017 08:13:06 GMT
RUN { 		echo mysql-community-server mysql-community-server/data-dir select ''; 		echo mysql-community-server mysql-community-server/root-pass password ''; 		echo mysql-community-server mysql-community-server/re-root-pass password ''; 		echo mysql-community-server mysql-community-server/remove-test-db select false; 	} | debconf-set-selections 	&& apt-get update && apt-get install -y mysql-community-client-core="${MYSQL_VERSION}" mysql-community-server-core="${MYSQL_VERSION}" && rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Tue, 19 Sep 2017 08:13:06 GMT
VOLUME [/var/lib/mysql]
# Tue, 19 Sep 2017 08:13:07 GMT
COPY dir:110dcf1221c1f9432c68c32a2465ef0b40994f401d5fae0b0de80025bcf839a5 in /etc/mysql/ 
# Tue, 19 Sep 2017 08:13:07 GMT
COPY file:5453fdbdb142b28e9aa4df64d5e1f42a740f018457cb1c65d113b947858ae314 in /usr/local/bin/ 
# Tue, 19 Sep 2017 08:13:07 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 19 Sep 2017 08:13:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 19 Sep 2017 08:13:08 GMT
EXPOSE 3306/tcp
# Tue, 19 Sep 2017 08:13:08 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:aa18ad1a0d334d80981104c599fa8cef9264552a265b1197af11274beba767cf`  
		Last Modified: Thu, 07 Sep 2017 23:11:06 GMT  
		Size: 52.6 MB (52595547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdb8d83dece30495d3d9b7c752c4cc36780c9f1aa03571b6a7b9a8850c7d9979`  
		Last Modified: Wed, 13 Sep 2017 09:45:57 GMT  
		Size: 2.1 KB (2087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75b6ce7b50d3eb246f2ef5fbdd083199d828807abee54d47e3297c866b3d0d2e`  
		Last Modified: Wed, 13 Sep 2017 09:45:56 GMT  
		Size: 1.3 MB (1302934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed1d0a3a64e4720c1352929f9133f7beafb5d0ce74c631e7528b4465b1d908fc`  
		Last Modified: Wed, 13 Sep 2017 09:45:55 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8eb36a82c85bb5004b82c26641a1bd91b967c7affa21a57757d96a417adf5f46`  
		Last Modified: Tue, 19 Sep 2017 08:16:57 GMT  
		Size: 10.7 MB (10710855 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41be6f1a1c40b9db55befda93e917e098ace489d5074759e1561e86cd3aada1c`  
		Last Modified: Tue, 19 Sep 2017 08:16:53 GMT  
		Size: 19.2 KB (19205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8683a88e3f8fa9c7c20e17e17248cec54a9e543fae53f93a6652fe1324f56dce`  
		Last Modified: Tue, 19 Sep 2017 08:16:51 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9af8f069679130c34bb8a49b8d8b8e60fe817c30f59938784b93d259b4eff1e`  
		Last Modified: Tue, 19 Sep 2017 08:16:55 GMT  
		Size: 27.2 MB (27215613 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96a0f25fab410861bd255dd864917449879390bdf7a063ad21bbf96d1ccce98d`  
		Last Modified: Tue, 19 Sep 2017 08:16:51 GMT  
		Size: 898.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5829504b5aea3313f228aff86963ce71ab85aaee61ceaba8f0276221694525cb`  
		Last Modified: Tue, 19 Sep 2017 08:16:51 GMT  
		Size: 2.7 KB (2737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13b958c5855471146306bb0091ec793b4b769bf874e352394a7cb4dac6e57ab4`  
		Last Modified: Tue, 19 Sep 2017 08:16:51 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:8.0.3`

**does not exist** (yet?)

## `mysql:latest`

```console
$ docker pull mysql@sha256:0dc3dacb751ef46a6647234abdec2d47400f0dfbe77ab490b02bffdae57846ed
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mysql:latest` - linux; amd64

```console
$ docker pull mysql@sha256:f6900d8ee65a802f6461a04c5e9f44e2fabbf6f09b2827260c643988bcdba16e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **144.2 MB (144244594 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b4e78b89bcf31a38eab47da1b2b36235462e83beebacb7479d725367e76572cf`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Wed, 13 Sep 2017 08:40:43 GMT
ADD file:d7333b3e0bc6479d2faed32e06d85f1975e5b23e13e75555aeed0f639770413b in / 
# Wed, 13 Sep 2017 08:40:43 GMT
CMD ["bash"]
# Wed, 13 Sep 2017 09:40:16 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 13 Sep 2017 09:40:16 GMT
ENV GOSU_VERSION=1.7
# Wed, 13 Sep 2017 09:40:45 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 13 Sep 2017 09:40:46 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 19 Sep 2017 08:12:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		pwgen 		openssl 		perl 	&& rm -rf /var/lib/apt/lists/*
# Tue, 19 Sep 2017 08:12:46 GMT
RUN set -ex; 	key='A4A9406876FCBD3C456770C88C718D3B5072E1F5'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/mysql.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list > /dev/null
# Tue, 19 Sep 2017 08:13:14 GMT
ENV MYSQL_MAJOR=5.7
# Tue, 19 Sep 2017 08:13:14 GMT
ENV MYSQL_VERSION=5.7.19-1debian8
# Tue, 19 Sep 2017 08:13:15 GMT
RUN echo "deb http://repo.mysql.com/apt/debian/ jessie mysql-${MYSQL_MAJOR}" > /etc/apt/sources.list.d/mysql.list
# Tue, 19 Sep 2017 08:13:44 GMT
RUN { 		echo mysql-community-server mysql-community-server/data-dir select ''; 		echo mysql-community-server mysql-community-server/root-pass password ''; 		echo mysql-community-server mysql-community-server/re-root-pass password ''; 		echo mysql-community-server mysql-community-server/remove-test-db select false; 	} | debconf-set-selections 	&& apt-get update && apt-get install -y mysql-server="${MYSQL_VERSION}" && rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Tue, 19 Sep 2017 08:13:44 GMT
RUN sed -Ei 's/^(bind-address|log)/#&/' /etc/mysql/mysql.conf.d/mysqld.cnf 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Tue, 19 Sep 2017 08:13:44 GMT
VOLUME [/var/lib/mysql]
# Tue, 19 Sep 2017 08:13:45 GMT
COPY file:5453fdbdb142b28e9aa4df64d5e1f42a740f018457cb1c65d113b947858ae314 in /usr/local/bin/ 
# Tue, 19 Sep 2017 08:13:45 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 19 Sep 2017 08:13:46 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 19 Sep 2017 08:13:46 GMT
EXPOSE 3306/tcp
# Tue, 19 Sep 2017 08:13:46 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:aa18ad1a0d334d80981104c599fa8cef9264552a265b1197af11274beba767cf`  
		Last Modified: Thu, 07 Sep 2017 23:11:06 GMT  
		Size: 52.6 MB (52595547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdb8d83dece30495d3d9b7c752c4cc36780c9f1aa03571b6a7b9a8850c7d9979`  
		Last Modified: Wed, 13 Sep 2017 09:45:57 GMT  
		Size: 2.1 KB (2087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75b6ce7b50d3eb246f2ef5fbdd083199d828807abee54d47e3297c866b3d0d2e`  
		Last Modified: Wed, 13 Sep 2017 09:45:56 GMT  
		Size: 1.3 MB (1302934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed1d0a3a64e4720c1352929f9133f7beafb5d0ce74c631e7528b4465b1d908fc`  
		Last Modified: Wed, 13 Sep 2017 09:45:55 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8eb36a82c85bb5004b82c26641a1bd91b967c7affa21a57757d96a417adf5f46`  
		Last Modified: Tue, 19 Sep 2017 08:16:57 GMT  
		Size: 10.7 MB (10710855 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41be6f1a1c40b9db55befda93e917e098ace489d5074759e1561e86cd3aada1c`  
		Last Modified: Tue, 19 Sep 2017 08:16:53 GMT  
		Size: 19.2 KB (19205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e1b414eac71108b6dfba820b6cb42850e1971ff9f1f60dccba735fa1e070f4b`  
		Last Modified: Tue, 19 Sep 2017 08:17:22 GMT  
		Size: 220.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:914c28654a91d595cbcab9999a0f3835a42838f4099e71861a780da9c997b6db`  
		Last Modified: Tue, 19 Sep 2017 08:17:32 GMT  
		Size: 79.6 MB (79609833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:587693eb988c945dbfed6f9bcdda7e5e9ca2ef777981d62d0d54d7a8da1f77a7`  
		Last Modified: Tue, 19 Sep 2017 08:17:20 GMT  
		Size: 941.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b183c358572958d010355a2817310d9537be538cf961a5b44587cd9398500e35`  
		Last Modified: Tue, 19 Sep 2017 08:17:20 GMT  
		Size: 2.7 KB (2736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:315e21657aa49c300184e5fa5f7777e7ae34a6c1b625ec530362bd0f48f8e780`  
		Last Modified: Tue, 19 Sep 2017 08:17:21 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
