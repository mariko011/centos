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
$ docker pull mysql@sha256:653715f12e4bc3d7fcf1690f0356b96d0e2ede50b2556ec03a610332cc2814a7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mysql:8.0.2` - linux; amd64

```console
$ docker pull mysql@sha256:5371af9509861a2149e32e9a839f93957f57dbc5e19301478b76a5d6fd43df32
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **91.9 MB (91850358 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9e75699f42f4b8f3849790194b052f8524ff7dcfec2bf5c66d8466904b9434a4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 07 Sep 2017 23:04:40 GMT
ADD file:d7333b3e0bc6479d2faed32e06d85f1975e5b23e13e75555aeed0f639770413b in / 
# Thu, 07 Sep 2017 23:04:41 GMT
CMD ["bash"]
# Wed, 13 Sep 2017 08:25:23 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 13 Sep 2017 08:25:24 GMT
ENV GOSU_VERSION=1.7
# Wed, 13 Sep 2017 08:25:55 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 13 Sep 2017 08:25:55 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 13 Sep 2017 08:26:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		pwgen 		openssl 		perl 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 08:26:17 GMT
RUN set -ex; 	key='A4A9406876FCBD3C456770C88C718D3B5072E1F5'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/mysql.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list > /dev/null
# Wed, 13 Sep 2017 08:26:17 GMT
ENV MYSQL_MAJOR=8.0
# Wed, 13 Sep 2017 08:26:17 GMT
ENV MYSQL_VERSION=8.0.2-dmr-1debian8
# Wed, 13 Sep 2017 08:26:18 GMT
RUN echo "deb http://repo.mysql.com/apt/debian/ jessie mysql-${MYSQL_MAJOR}" > /etc/apt/sources.list.d/mysql.list
# Wed, 13 Sep 2017 08:26:37 GMT
RUN { 		echo mysql-community-server mysql-community-server/data-dir select ''; 		echo mysql-community-server mysql-community-server/root-pass password ''; 		echo mysql-community-server mysql-community-server/re-root-pass password ''; 		echo mysql-community-server mysql-community-server/remove-test-db select false; 	} | debconf-set-selections 	&& apt-get update && apt-get install -y mysql-community-client-core="${MYSQL_VERSION}" mysql-community-server-core="${MYSQL_VERSION}" && rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Wed, 13 Sep 2017 08:26:37 GMT
VOLUME [/var/lib/mysql]
# Wed, 13 Sep 2017 08:26:37 GMT
COPY dir:110dcf1221c1f9432c68c32a2465ef0b40994f401d5fae0b0de80025bcf839a5 in /etc/mysql/ 
# Wed, 13 Sep 2017 08:26:38 GMT
COPY file:5453fdbdb142b28e9aa4df64d5e1f42a740f018457cb1c65d113b947858ae314 in /usr/local/bin/ 
# Wed, 13 Sep 2017 08:26:38 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 13 Sep 2017 08:26:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 13 Sep 2017 08:26:39 GMT
EXPOSE 3306/tcp
# Wed, 13 Sep 2017 08:26:39 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:aa18ad1a0d334d80981104c599fa8cef9264552a265b1197af11274beba767cf`  
		Last Modified: Thu, 07 Sep 2017 23:11:06 GMT  
		Size: 52.6 MB (52595547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1324423d52e90de306c5a44c2b99b5a3412b7fe69fa81017d7632f25862ff55b`  
		Last Modified: Wed, 13 Sep 2017 08:29:56 GMT  
		Size: 2.1 KB (2089 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee152a81987c9487171cdceb39c4b004df7c85083d3d9016706688b4dce1a119`  
		Last Modified: Wed, 13 Sep 2017 08:29:54 GMT  
		Size: 1.3 MB (1302939 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b054cf37bcae227c87cda0aa0d08a2c6e1ef8e883561272c4f68201db08f52ea`  
		Last Modified: Wed, 13 Sep 2017 08:29:53 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb0cbad90353b180e9087bb2238fbe09a598c4c1a3f2dd700a1d0d252286ed61`  
		Last Modified: Wed, 13 Sep 2017 08:29:56 GMT  
		Size: 10.7 MB (10710875 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:710fc2dae5715b3d87ce63254c842a12f199a96bca62a1634cb679cf24807a0f`  
		Last Modified: Wed, 13 Sep 2017 08:29:54 GMT  
		Size: 19.2 KB (19205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ee5eababb95a9a82caa0957eed603857220ee4de97ace6b6675748fec4a38e9`  
		Last Modified: Wed, 13 Sep 2017 08:29:51 GMT  
		Size: 217.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01e231482f3302c8ed93e3a59dd03345b0d63d4b9d02526d48cb6922b4ade5c0`  
		Last Modified: Wed, 13 Sep 2017 08:29:56 GMT  
		Size: 27.2 MB (27215621 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2eda74627dc2a6ee35514f60b0c11315757716de7306f05f215464d53bcd0fee`  
		Last Modified: Wed, 13 Sep 2017 08:29:51 GMT  
		Size: 896.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a9ddefcf0e38414a9873f5250676c2bf7e1959772e74275af49b045ece5a5fd`  
		Last Modified: Wed, 13 Sep 2017 08:29:51 GMT  
		Size: 2.7 KB (2733 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a870cc34d4f9cb4971aff514b688742dbfbad0e3b7672a3fb5ba49981f44ba0b`  
		Last Modified: Wed, 13 Sep 2017 08:29:51 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:8.0`

```console
$ docker pull mysql@sha256:653715f12e4bc3d7fcf1690f0356b96d0e2ede50b2556ec03a610332cc2814a7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mysql:8.0` - linux; amd64

```console
$ docker pull mysql@sha256:5371af9509861a2149e32e9a839f93957f57dbc5e19301478b76a5d6fd43df32
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **91.9 MB (91850358 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9e75699f42f4b8f3849790194b052f8524ff7dcfec2bf5c66d8466904b9434a4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 07 Sep 2017 23:04:40 GMT
ADD file:d7333b3e0bc6479d2faed32e06d85f1975e5b23e13e75555aeed0f639770413b in / 
# Thu, 07 Sep 2017 23:04:41 GMT
CMD ["bash"]
# Wed, 13 Sep 2017 08:25:23 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 13 Sep 2017 08:25:24 GMT
ENV GOSU_VERSION=1.7
# Wed, 13 Sep 2017 08:25:55 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 13 Sep 2017 08:25:55 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 13 Sep 2017 08:26:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		pwgen 		openssl 		perl 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 08:26:17 GMT
RUN set -ex; 	key='A4A9406876FCBD3C456770C88C718D3B5072E1F5'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/mysql.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list > /dev/null
# Wed, 13 Sep 2017 08:26:17 GMT
ENV MYSQL_MAJOR=8.0
# Wed, 13 Sep 2017 08:26:17 GMT
ENV MYSQL_VERSION=8.0.2-dmr-1debian8
# Wed, 13 Sep 2017 08:26:18 GMT
RUN echo "deb http://repo.mysql.com/apt/debian/ jessie mysql-${MYSQL_MAJOR}" > /etc/apt/sources.list.d/mysql.list
# Wed, 13 Sep 2017 08:26:37 GMT
RUN { 		echo mysql-community-server mysql-community-server/data-dir select ''; 		echo mysql-community-server mysql-community-server/root-pass password ''; 		echo mysql-community-server mysql-community-server/re-root-pass password ''; 		echo mysql-community-server mysql-community-server/remove-test-db select false; 	} | debconf-set-selections 	&& apt-get update && apt-get install -y mysql-community-client-core="${MYSQL_VERSION}" mysql-community-server-core="${MYSQL_VERSION}" && rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Wed, 13 Sep 2017 08:26:37 GMT
VOLUME [/var/lib/mysql]
# Wed, 13 Sep 2017 08:26:37 GMT
COPY dir:110dcf1221c1f9432c68c32a2465ef0b40994f401d5fae0b0de80025bcf839a5 in /etc/mysql/ 
# Wed, 13 Sep 2017 08:26:38 GMT
COPY file:5453fdbdb142b28e9aa4df64d5e1f42a740f018457cb1c65d113b947858ae314 in /usr/local/bin/ 
# Wed, 13 Sep 2017 08:26:38 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 13 Sep 2017 08:26:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 13 Sep 2017 08:26:39 GMT
EXPOSE 3306/tcp
# Wed, 13 Sep 2017 08:26:39 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:aa18ad1a0d334d80981104c599fa8cef9264552a265b1197af11274beba767cf`  
		Last Modified: Thu, 07 Sep 2017 23:11:06 GMT  
		Size: 52.6 MB (52595547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1324423d52e90de306c5a44c2b99b5a3412b7fe69fa81017d7632f25862ff55b`  
		Last Modified: Wed, 13 Sep 2017 08:29:56 GMT  
		Size: 2.1 KB (2089 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee152a81987c9487171cdceb39c4b004df7c85083d3d9016706688b4dce1a119`  
		Last Modified: Wed, 13 Sep 2017 08:29:54 GMT  
		Size: 1.3 MB (1302939 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b054cf37bcae227c87cda0aa0d08a2c6e1ef8e883561272c4f68201db08f52ea`  
		Last Modified: Wed, 13 Sep 2017 08:29:53 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb0cbad90353b180e9087bb2238fbe09a598c4c1a3f2dd700a1d0d252286ed61`  
		Last Modified: Wed, 13 Sep 2017 08:29:56 GMT  
		Size: 10.7 MB (10710875 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:710fc2dae5715b3d87ce63254c842a12f199a96bca62a1634cb679cf24807a0f`  
		Last Modified: Wed, 13 Sep 2017 08:29:54 GMT  
		Size: 19.2 KB (19205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ee5eababb95a9a82caa0957eed603857220ee4de97ace6b6675748fec4a38e9`  
		Last Modified: Wed, 13 Sep 2017 08:29:51 GMT  
		Size: 217.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01e231482f3302c8ed93e3a59dd03345b0d63d4b9d02526d48cb6922b4ade5c0`  
		Last Modified: Wed, 13 Sep 2017 08:29:56 GMT  
		Size: 27.2 MB (27215621 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2eda74627dc2a6ee35514f60b0c11315757716de7306f05f215464d53bcd0fee`  
		Last Modified: Wed, 13 Sep 2017 08:29:51 GMT  
		Size: 896.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a9ddefcf0e38414a9873f5250676c2bf7e1959772e74275af49b045ece5a5fd`  
		Last Modified: Wed, 13 Sep 2017 08:29:51 GMT  
		Size: 2.7 KB (2733 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a870cc34d4f9cb4971aff514b688742dbfbad0e3b7672a3fb5ba49981f44ba0b`  
		Last Modified: Wed, 13 Sep 2017 08:29:51 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:8`

```console
$ docker pull mysql@sha256:653715f12e4bc3d7fcf1690f0356b96d0e2ede50b2556ec03a610332cc2814a7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mysql:8` - linux; amd64

```console
$ docker pull mysql@sha256:5371af9509861a2149e32e9a839f93957f57dbc5e19301478b76a5d6fd43df32
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **91.9 MB (91850358 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9e75699f42f4b8f3849790194b052f8524ff7dcfec2bf5c66d8466904b9434a4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 07 Sep 2017 23:04:40 GMT
ADD file:d7333b3e0bc6479d2faed32e06d85f1975e5b23e13e75555aeed0f639770413b in / 
# Thu, 07 Sep 2017 23:04:41 GMT
CMD ["bash"]
# Wed, 13 Sep 2017 08:25:23 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 13 Sep 2017 08:25:24 GMT
ENV GOSU_VERSION=1.7
# Wed, 13 Sep 2017 08:25:55 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 13 Sep 2017 08:25:55 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 13 Sep 2017 08:26:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		pwgen 		openssl 		perl 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 08:26:17 GMT
RUN set -ex; 	key='A4A9406876FCBD3C456770C88C718D3B5072E1F5'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/mysql.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list > /dev/null
# Wed, 13 Sep 2017 08:26:17 GMT
ENV MYSQL_MAJOR=8.0
# Wed, 13 Sep 2017 08:26:17 GMT
ENV MYSQL_VERSION=8.0.2-dmr-1debian8
# Wed, 13 Sep 2017 08:26:18 GMT
RUN echo "deb http://repo.mysql.com/apt/debian/ jessie mysql-${MYSQL_MAJOR}" > /etc/apt/sources.list.d/mysql.list
# Wed, 13 Sep 2017 08:26:37 GMT
RUN { 		echo mysql-community-server mysql-community-server/data-dir select ''; 		echo mysql-community-server mysql-community-server/root-pass password ''; 		echo mysql-community-server mysql-community-server/re-root-pass password ''; 		echo mysql-community-server mysql-community-server/remove-test-db select false; 	} | debconf-set-selections 	&& apt-get update && apt-get install -y mysql-community-client-core="${MYSQL_VERSION}" mysql-community-server-core="${MYSQL_VERSION}" && rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Wed, 13 Sep 2017 08:26:37 GMT
VOLUME [/var/lib/mysql]
# Wed, 13 Sep 2017 08:26:37 GMT
COPY dir:110dcf1221c1f9432c68c32a2465ef0b40994f401d5fae0b0de80025bcf839a5 in /etc/mysql/ 
# Wed, 13 Sep 2017 08:26:38 GMT
COPY file:5453fdbdb142b28e9aa4df64d5e1f42a740f018457cb1c65d113b947858ae314 in /usr/local/bin/ 
# Wed, 13 Sep 2017 08:26:38 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 13 Sep 2017 08:26:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 13 Sep 2017 08:26:39 GMT
EXPOSE 3306/tcp
# Wed, 13 Sep 2017 08:26:39 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:aa18ad1a0d334d80981104c599fa8cef9264552a265b1197af11274beba767cf`  
		Last Modified: Thu, 07 Sep 2017 23:11:06 GMT  
		Size: 52.6 MB (52595547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1324423d52e90de306c5a44c2b99b5a3412b7fe69fa81017d7632f25862ff55b`  
		Last Modified: Wed, 13 Sep 2017 08:29:56 GMT  
		Size: 2.1 KB (2089 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee152a81987c9487171cdceb39c4b004df7c85083d3d9016706688b4dce1a119`  
		Last Modified: Wed, 13 Sep 2017 08:29:54 GMT  
		Size: 1.3 MB (1302939 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b054cf37bcae227c87cda0aa0d08a2c6e1ef8e883561272c4f68201db08f52ea`  
		Last Modified: Wed, 13 Sep 2017 08:29:53 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb0cbad90353b180e9087bb2238fbe09a598c4c1a3f2dd700a1d0d252286ed61`  
		Last Modified: Wed, 13 Sep 2017 08:29:56 GMT  
		Size: 10.7 MB (10710875 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:710fc2dae5715b3d87ce63254c842a12f199a96bca62a1634cb679cf24807a0f`  
		Last Modified: Wed, 13 Sep 2017 08:29:54 GMT  
		Size: 19.2 KB (19205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ee5eababb95a9a82caa0957eed603857220ee4de97ace6b6675748fec4a38e9`  
		Last Modified: Wed, 13 Sep 2017 08:29:51 GMT  
		Size: 217.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01e231482f3302c8ed93e3a59dd03345b0d63d4b9d02526d48cb6922b4ade5c0`  
		Last Modified: Wed, 13 Sep 2017 08:29:56 GMT  
		Size: 27.2 MB (27215621 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2eda74627dc2a6ee35514f60b0c11315757716de7306f05f215464d53bcd0fee`  
		Last Modified: Wed, 13 Sep 2017 08:29:51 GMT  
		Size: 896.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a9ddefcf0e38414a9873f5250676c2bf7e1959772e74275af49b045ece5a5fd`  
		Last Modified: Wed, 13 Sep 2017 08:29:51 GMT  
		Size: 2.7 KB (2733 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a870cc34d4f9cb4971aff514b688742dbfbad0e3b7672a3fb5ba49981f44ba0b`  
		Last Modified: Wed, 13 Sep 2017 08:29:51 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:5.7.19`

```console
$ docker pull mysql@sha256:dfaabbd5466dafe04c5af0ccb1a43d8a18a9604ac23a95534bb0626b3321034d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mysql:5.7.19` - linux; amd64

```console
$ docker pull mysql@sha256:4917506191a9fb9e7802eec0a0ab0d22cf39e781e69e5edd5afb07ea94b5b3f9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **144.2 MB (144244642 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aeaed9976244af22dce072c4c34add85ecdc7d79bfcbe32d558eff3c420945ee`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 07 Sep 2017 23:04:40 GMT
ADD file:d7333b3e0bc6479d2faed32e06d85f1975e5b23e13e75555aeed0f639770413b in / 
# Thu, 07 Sep 2017 23:04:41 GMT
CMD ["bash"]
# Wed, 13 Sep 2017 08:25:23 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 13 Sep 2017 08:25:24 GMT
ENV GOSU_VERSION=1.7
# Wed, 13 Sep 2017 08:25:55 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 13 Sep 2017 08:25:55 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 13 Sep 2017 08:26:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		pwgen 		openssl 		perl 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 08:26:17 GMT
RUN set -ex; 	key='A4A9406876FCBD3C456770C88C718D3B5072E1F5'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/mysql.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list > /dev/null
# Wed, 13 Sep 2017 08:26:40 GMT
ENV MYSQL_MAJOR=5.7
# Wed, 13 Sep 2017 08:26:40 GMT
ENV MYSQL_VERSION=5.7.19-1debian8
# Wed, 13 Sep 2017 08:26:41 GMT
RUN echo "deb http://repo.mysql.com/apt/debian/ jessie mysql-${MYSQL_MAJOR}" > /etc/apt/sources.list.d/mysql.list
# Wed, 13 Sep 2017 08:27:08 GMT
RUN { 		echo mysql-community-server mysql-community-server/data-dir select ''; 		echo mysql-community-server mysql-community-server/root-pass password ''; 		echo mysql-community-server mysql-community-server/re-root-pass password ''; 		echo mysql-community-server mysql-community-server/remove-test-db select false; 	} | debconf-set-selections 	&& apt-get update && apt-get install -y mysql-server="${MYSQL_VERSION}" && rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Wed, 13 Sep 2017 08:27:09 GMT
RUN sed -Ei 's/^(bind-address|log)/#&/' /etc/mysql/mysql.conf.d/mysqld.cnf 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 13 Sep 2017 08:27:09 GMT
VOLUME [/var/lib/mysql]
# Wed, 13 Sep 2017 08:27:09 GMT
COPY file:5453fdbdb142b28e9aa4df64d5e1f42a740f018457cb1c65d113b947858ae314 in /usr/local/bin/ 
# Wed, 13 Sep 2017 08:27:10 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 13 Sep 2017 08:27:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 13 Sep 2017 08:27:10 GMT
EXPOSE 3306/tcp
# Wed, 13 Sep 2017 08:27:10 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:aa18ad1a0d334d80981104c599fa8cef9264552a265b1197af11274beba767cf`  
		Last Modified: Thu, 07 Sep 2017 23:11:06 GMT  
		Size: 52.6 MB (52595547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1324423d52e90de306c5a44c2b99b5a3412b7fe69fa81017d7632f25862ff55b`  
		Last Modified: Wed, 13 Sep 2017 08:29:56 GMT  
		Size: 2.1 KB (2089 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee152a81987c9487171cdceb39c4b004df7c85083d3d9016706688b4dce1a119`  
		Last Modified: Wed, 13 Sep 2017 08:29:54 GMT  
		Size: 1.3 MB (1302939 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b054cf37bcae227c87cda0aa0d08a2c6e1ef8e883561272c4f68201db08f52ea`  
		Last Modified: Wed, 13 Sep 2017 08:29:53 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb0cbad90353b180e9087bb2238fbe09a598c4c1a3f2dd700a1d0d252286ed61`  
		Last Modified: Wed, 13 Sep 2017 08:29:56 GMT  
		Size: 10.7 MB (10710875 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:710fc2dae5715b3d87ce63254c842a12f199a96bca62a1634cb679cf24807a0f`  
		Last Modified: Wed, 13 Sep 2017 08:29:54 GMT  
		Size: 19.2 KB (19205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ff098d102857db9faa019ed76e4fc4f47334ce9552a7acddfcdc0536a5724c4`  
		Last Modified: Wed, 13 Sep 2017 08:30:15 GMT  
		Size: 220.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79f9dfa6f98ff9eae9b56c764d88eb1580c84a0d46560fdae73a545f03f289a6`  
		Last Modified: Wed, 13 Sep 2017 08:30:27 GMT  
		Size: 79.6 MB (79609854 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d033d38431ed2b62b411c1a0045fc7ae93f1a98930b7666e895e6dc648672a7`  
		Last Modified: Wed, 13 Sep 2017 08:30:14 GMT  
		Size: 945.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdde10ea566e25aa3e418dd7f4dac69b12ff1546d146b2bf73675d03dc8ea836`  
		Last Modified: Wed, 13 Sep 2017 08:30:15 GMT  
		Size: 2.7 KB (2733 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a36bb8deb0e61cefb8833a83c5bc12b862a51a87171f5457c5ec77b28abfc3a`  
		Last Modified: Wed, 13 Sep 2017 08:30:14 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:5.7`

```console
$ docker pull mysql@sha256:dfaabbd5466dafe04c5af0ccb1a43d8a18a9604ac23a95534bb0626b3321034d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mysql:5.7` - linux; amd64

```console
$ docker pull mysql@sha256:4917506191a9fb9e7802eec0a0ab0d22cf39e781e69e5edd5afb07ea94b5b3f9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **144.2 MB (144244642 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aeaed9976244af22dce072c4c34add85ecdc7d79bfcbe32d558eff3c420945ee`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 07 Sep 2017 23:04:40 GMT
ADD file:d7333b3e0bc6479d2faed32e06d85f1975e5b23e13e75555aeed0f639770413b in / 
# Thu, 07 Sep 2017 23:04:41 GMT
CMD ["bash"]
# Wed, 13 Sep 2017 08:25:23 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 13 Sep 2017 08:25:24 GMT
ENV GOSU_VERSION=1.7
# Wed, 13 Sep 2017 08:25:55 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 13 Sep 2017 08:25:55 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 13 Sep 2017 08:26:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		pwgen 		openssl 		perl 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 08:26:17 GMT
RUN set -ex; 	key='A4A9406876FCBD3C456770C88C718D3B5072E1F5'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/mysql.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list > /dev/null
# Wed, 13 Sep 2017 08:26:40 GMT
ENV MYSQL_MAJOR=5.7
# Wed, 13 Sep 2017 08:26:40 GMT
ENV MYSQL_VERSION=5.7.19-1debian8
# Wed, 13 Sep 2017 08:26:41 GMT
RUN echo "deb http://repo.mysql.com/apt/debian/ jessie mysql-${MYSQL_MAJOR}" > /etc/apt/sources.list.d/mysql.list
# Wed, 13 Sep 2017 08:27:08 GMT
RUN { 		echo mysql-community-server mysql-community-server/data-dir select ''; 		echo mysql-community-server mysql-community-server/root-pass password ''; 		echo mysql-community-server mysql-community-server/re-root-pass password ''; 		echo mysql-community-server mysql-community-server/remove-test-db select false; 	} | debconf-set-selections 	&& apt-get update && apt-get install -y mysql-server="${MYSQL_VERSION}" && rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Wed, 13 Sep 2017 08:27:09 GMT
RUN sed -Ei 's/^(bind-address|log)/#&/' /etc/mysql/mysql.conf.d/mysqld.cnf 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 13 Sep 2017 08:27:09 GMT
VOLUME [/var/lib/mysql]
# Wed, 13 Sep 2017 08:27:09 GMT
COPY file:5453fdbdb142b28e9aa4df64d5e1f42a740f018457cb1c65d113b947858ae314 in /usr/local/bin/ 
# Wed, 13 Sep 2017 08:27:10 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 13 Sep 2017 08:27:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 13 Sep 2017 08:27:10 GMT
EXPOSE 3306/tcp
# Wed, 13 Sep 2017 08:27:10 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:aa18ad1a0d334d80981104c599fa8cef9264552a265b1197af11274beba767cf`  
		Last Modified: Thu, 07 Sep 2017 23:11:06 GMT  
		Size: 52.6 MB (52595547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1324423d52e90de306c5a44c2b99b5a3412b7fe69fa81017d7632f25862ff55b`  
		Last Modified: Wed, 13 Sep 2017 08:29:56 GMT  
		Size: 2.1 KB (2089 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee152a81987c9487171cdceb39c4b004df7c85083d3d9016706688b4dce1a119`  
		Last Modified: Wed, 13 Sep 2017 08:29:54 GMT  
		Size: 1.3 MB (1302939 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b054cf37bcae227c87cda0aa0d08a2c6e1ef8e883561272c4f68201db08f52ea`  
		Last Modified: Wed, 13 Sep 2017 08:29:53 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb0cbad90353b180e9087bb2238fbe09a598c4c1a3f2dd700a1d0d252286ed61`  
		Last Modified: Wed, 13 Sep 2017 08:29:56 GMT  
		Size: 10.7 MB (10710875 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:710fc2dae5715b3d87ce63254c842a12f199a96bca62a1634cb679cf24807a0f`  
		Last Modified: Wed, 13 Sep 2017 08:29:54 GMT  
		Size: 19.2 KB (19205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ff098d102857db9faa019ed76e4fc4f47334ce9552a7acddfcdc0536a5724c4`  
		Last Modified: Wed, 13 Sep 2017 08:30:15 GMT  
		Size: 220.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79f9dfa6f98ff9eae9b56c764d88eb1580c84a0d46560fdae73a545f03f289a6`  
		Last Modified: Wed, 13 Sep 2017 08:30:27 GMT  
		Size: 79.6 MB (79609854 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d033d38431ed2b62b411c1a0045fc7ae93f1a98930b7666e895e6dc648672a7`  
		Last Modified: Wed, 13 Sep 2017 08:30:14 GMT  
		Size: 945.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdde10ea566e25aa3e418dd7f4dac69b12ff1546d146b2bf73675d03dc8ea836`  
		Last Modified: Wed, 13 Sep 2017 08:30:15 GMT  
		Size: 2.7 KB (2733 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a36bb8deb0e61cefb8833a83c5bc12b862a51a87171f5457c5ec77b28abfc3a`  
		Last Modified: Wed, 13 Sep 2017 08:30:14 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:5`

```console
$ docker pull mysql@sha256:dfaabbd5466dafe04c5af0ccb1a43d8a18a9604ac23a95534bb0626b3321034d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mysql:5` - linux; amd64

```console
$ docker pull mysql@sha256:4917506191a9fb9e7802eec0a0ab0d22cf39e781e69e5edd5afb07ea94b5b3f9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **144.2 MB (144244642 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aeaed9976244af22dce072c4c34add85ecdc7d79bfcbe32d558eff3c420945ee`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 07 Sep 2017 23:04:40 GMT
ADD file:d7333b3e0bc6479d2faed32e06d85f1975e5b23e13e75555aeed0f639770413b in / 
# Thu, 07 Sep 2017 23:04:41 GMT
CMD ["bash"]
# Wed, 13 Sep 2017 08:25:23 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 13 Sep 2017 08:25:24 GMT
ENV GOSU_VERSION=1.7
# Wed, 13 Sep 2017 08:25:55 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 13 Sep 2017 08:25:55 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 13 Sep 2017 08:26:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		pwgen 		openssl 		perl 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 08:26:17 GMT
RUN set -ex; 	key='A4A9406876FCBD3C456770C88C718D3B5072E1F5'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/mysql.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list > /dev/null
# Wed, 13 Sep 2017 08:26:40 GMT
ENV MYSQL_MAJOR=5.7
# Wed, 13 Sep 2017 08:26:40 GMT
ENV MYSQL_VERSION=5.7.19-1debian8
# Wed, 13 Sep 2017 08:26:41 GMT
RUN echo "deb http://repo.mysql.com/apt/debian/ jessie mysql-${MYSQL_MAJOR}" > /etc/apt/sources.list.d/mysql.list
# Wed, 13 Sep 2017 08:27:08 GMT
RUN { 		echo mysql-community-server mysql-community-server/data-dir select ''; 		echo mysql-community-server mysql-community-server/root-pass password ''; 		echo mysql-community-server mysql-community-server/re-root-pass password ''; 		echo mysql-community-server mysql-community-server/remove-test-db select false; 	} | debconf-set-selections 	&& apt-get update && apt-get install -y mysql-server="${MYSQL_VERSION}" && rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Wed, 13 Sep 2017 08:27:09 GMT
RUN sed -Ei 's/^(bind-address|log)/#&/' /etc/mysql/mysql.conf.d/mysqld.cnf 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 13 Sep 2017 08:27:09 GMT
VOLUME [/var/lib/mysql]
# Wed, 13 Sep 2017 08:27:09 GMT
COPY file:5453fdbdb142b28e9aa4df64d5e1f42a740f018457cb1c65d113b947858ae314 in /usr/local/bin/ 
# Wed, 13 Sep 2017 08:27:10 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 13 Sep 2017 08:27:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 13 Sep 2017 08:27:10 GMT
EXPOSE 3306/tcp
# Wed, 13 Sep 2017 08:27:10 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:aa18ad1a0d334d80981104c599fa8cef9264552a265b1197af11274beba767cf`  
		Last Modified: Thu, 07 Sep 2017 23:11:06 GMT  
		Size: 52.6 MB (52595547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1324423d52e90de306c5a44c2b99b5a3412b7fe69fa81017d7632f25862ff55b`  
		Last Modified: Wed, 13 Sep 2017 08:29:56 GMT  
		Size: 2.1 KB (2089 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee152a81987c9487171cdceb39c4b004df7c85083d3d9016706688b4dce1a119`  
		Last Modified: Wed, 13 Sep 2017 08:29:54 GMT  
		Size: 1.3 MB (1302939 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b054cf37bcae227c87cda0aa0d08a2c6e1ef8e883561272c4f68201db08f52ea`  
		Last Modified: Wed, 13 Sep 2017 08:29:53 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb0cbad90353b180e9087bb2238fbe09a598c4c1a3f2dd700a1d0d252286ed61`  
		Last Modified: Wed, 13 Sep 2017 08:29:56 GMT  
		Size: 10.7 MB (10710875 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:710fc2dae5715b3d87ce63254c842a12f199a96bca62a1634cb679cf24807a0f`  
		Last Modified: Wed, 13 Sep 2017 08:29:54 GMT  
		Size: 19.2 KB (19205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ff098d102857db9faa019ed76e4fc4f47334ce9552a7acddfcdc0536a5724c4`  
		Last Modified: Wed, 13 Sep 2017 08:30:15 GMT  
		Size: 220.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79f9dfa6f98ff9eae9b56c764d88eb1580c84a0d46560fdae73a545f03f289a6`  
		Last Modified: Wed, 13 Sep 2017 08:30:27 GMT  
		Size: 79.6 MB (79609854 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d033d38431ed2b62b411c1a0045fc7ae93f1a98930b7666e895e6dc648672a7`  
		Last Modified: Wed, 13 Sep 2017 08:30:14 GMT  
		Size: 945.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdde10ea566e25aa3e418dd7f4dac69b12ff1546d146b2bf73675d03dc8ea836`  
		Last Modified: Wed, 13 Sep 2017 08:30:15 GMT  
		Size: 2.7 KB (2733 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a36bb8deb0e61cefb8833a83c5bc12b862a51a87171f5457c5ec77b28abfc3a`  
		Last Modified: Wed, 13 Sep 2017 08:30:14 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:latest`

```console
$ docker pull mysql@sha256:dfaabbd5466dafe04c5af0ccb1a43d8a18a9604ac23a95534bb0626b3321034d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mysql:latest` - linux; amd64

```console
$ docker pull mysql@sha256:4917506191a9fb9e7802eec0a0ab0d22cf39e781e69e5edd5afb07ea94b5b3f9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **144.2 MB (144244642 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aeaed9976244af22dce072c4c34add85ecdc7d79bfcbe32d558eff3c420945ee`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 07 Sep 2017 23:04:40 GMT
ADD file:d7333b3e0bc6479d2faed32e06d85f1975e5b23e13e75555aeed0f639770413b in / 
# Thu, 07 Sep 2017 23:04:41 GMT
CMD ["bash"]
# Wed, 13 Sep 2017 08:25:23 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 13 Sep 2017 08:25:24 GMT
ENV GOSU_VERSION=1.7
# Wed, 13 Sep 2017 08:25:55 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 13 Sep 2017 08:25:55 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 13 Sep 2017 08:26:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		pwgen 		openssl 		perl 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 08:26:17 GMT
RUN set -ex; 	key='A4A9406876FCBD3C456770C88C718D3B5072E1F5'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/mysql.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list > /dev/null
# Wed, 13 Sep 2017 08:26:40 GMT
ENV MYSQL_MAJOR=5.7
# Wed, 13 Sep 2017 08:26:40 GMT
ENV MYSQL_VERSION=5.7.19-1debian8
# Wed, 13 Sep 2017 08:26:41 GMT
RUN echo "deb http://repo.mysql.com/apt/debian/ jessie mysql-${MYSQL_MAJOR}" > /etc/apt/sources.list.d/mysql.list
# Wed, 13 Sep 2017 08:27:08 GMT
RUN { 		echo mysql-community-server mysql-community-server/data-dir select ''; 		echo mysql-community-server mysql-community-server/root-pass password ''; 		echo mysql-community-server mysql-community-server/re-root-pass password ''; 		echo mysql-community-server mysql-community-server/remove-test-db select false; 	} | debconf-set-selections 	&& apt-get update && apt-get install -y mysql-server="${MYSQL_VERSION}" && rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Wed, 13 Sep 2017 08:27:09 GMT
RUN sed -Ei 's/^(bind-address|log)/#&/' /etc/mysql/mysql.conf.d/mysqld.cnf 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 13 Sep 2017 08:27:09 GMT
VOLUME [/var/lib/mysql]
# Wed, 13 Sep 2017 08:27:09 GMT
COPY file:5453fdbdb142b28e9aa4df64d5e1f42a740f018457cb1c65d113b947858ae314 in /usr/local/bin/ 
# Wed, 13 Sep 2017 08:27:10 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 13 Sep 2017 08:27:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 13 Sep 2017 08:27:10 GMT
EXPOSE 3306/tcp
# Wed, 13 Sep 2017 08:27:10 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:aa18ad1a0d334d80981104c599fa8cef9264552a265b1197af11274beba767cf`  
		Last Modified: Thu, 07 Sep 2017 23:11:06 GMT  
		Size: 52.6 MB (52595547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1324423d52e90de306c5a44c2b99b5a3412b7fe69fa81017d7632f25862ff55b`  
		Last Modified: Wed, 13 Sep 2017 08:29:56 GMT  
		Size: 2.1 KB (2089 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee152a81987c9487171cdceb39c4b004df7c85083d3d9016706688b4dce1a119`  
		Last Modified: Wed, 13 Sep 2017 08:29:54 GMT  
		Size: 1.3 MB (1302939 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b054cf37bcae227c87cda0aa0d08a2c6e1ef8e883561272c4f68201db08f52ea`  
		Last Modified: Wed, 13 Sep 2017 08:29:53 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb0cbad90353b180e9087bb2238fbe09a598c4c1a3f2dd700a1d0d252286ed61`  
		Last Modified: Wed, 13 Sep 2017 08:29:56 GMT  
		Size: 10.7 MB (10710875 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:710fc2dae5715b3d87ce63254c842a12f199a96bca62a1634cb679cf24807a0f`  
		Last Modified: Wed, 13 Sep 2017 08:29:54 GMT  
		Size: 19.2 KB (19205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ff098d102857db9faa019ed76e4fc4f47334ce9552a7acddfcdc0536a5724c4`  
		Last Modified: Wed, 13 Sep 2017 08:30:15 GMT  
		Size: 220.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79f9dfa6f98ff9eae9b56c764d88eb1580c84a0d46560fdae73a545f03f289a6`  
		Last Modified: Wed, 13 Sep 2017 08:30:27 GMT  
		Size: 79.6 MB (79609854 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d033d38431ed2b62b411c1a0045fc7ae93f1a98930b7666e895e6dc648672a7`  
		Last Modified: Wed, 13 Sep 2017 08:30:14 GMT  
		Size: 945.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdde10ea566e25aa3e418dd7f4dac69b12ff1546d146b2bf73675d03dc8ea836`  
		Last Modified: Wed, 13 Sep 2017 08:30:15 GMT  
		Size: 2.7 KB (2733 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a36bb8deb0e61cefb8833a83c5bc12b862a51a87171f5457c5ec77b28abfc3a`  
		Last Modified: Wed, 13 Sep 2017 08:30:14 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:5.6.37`

```console
$ docker pull mysql@sha256:fb927f01305ae656993540d3fd82eb5fbdd290c6c1f14540c838f47de8a2cabb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mysql:5.6.37` - linux; amd64

```console
$ docker pull mysql@sha256:881682433ec6ce4a61b6ceccfa3ae401bc46c3ad2c012c7b86e890166fec2816
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **105.0 MB (105046299 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:608daeb4cbf61adf185e53d795a2443dc16e9d84439c8e3c057a8ca5a39dff55`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 07 Sep 2017 23:04:40 GMT
ADD file:d7333b3e0bc6479d2faed32e06d85f1975e5b23e13e75555aeed0f639770413b in / 
# Thu, 07 Sep 2017 23:04:41 GMT
CMD ["bash"]
# Wed, 13 Sep 2017 08:25:23 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 13 Sep 2017 08:25:24 GMT
ENV GOSU_VERSION=1.7
# Wed, 13 Sep 2017 08:25:55 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 13 Sep 2017 08:25:55 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 13 Sep 2017 08:27:28 GMT
RUN apt-get update && apt-get install -y perl pwgen --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 08:27:33 GMT
RUN set -ex; 	key='A4A9406876FCBD3C456770C88C718D3B5072E1F5'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/mysql.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list > /dev/null
# Wed, 13 Sep 2017 08:27:33 GMT
ENV MYSQL_MAJOR=5.6
# Wed, 13 Sep 2017 08:27:33 GMT
ENV MYSQL_VERSION=5.6.37-1debian8
# Wed, 13 Sep 2017 08:27:34 GMT
RUN echo "deb http://repo.mysql.com/apt/debian/ jessie mysql-${MYSQL_MAJOR}" > /etc/apt/sources.list.d/mysql.list
# Wed, 13 Sep 2017 08:28:00 GMT
RUN { 		echo mysql-community-server mysql-community-server/data-dir select ''; 		echo mysql-community-server mysql-community-server/root-pass password ''; 		echo mysql-community-server mysql-community-server/re-root-pass password ''; 		echo mysql-community-server mysql-community-server/remove-test-db select false; 	} | debconf-set-selections 	&& apt-get update && apt-get install -y mysql-server="${MYSQL_VERSION}" && rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Wed, 13 Sep 2017 08:28:01 GMT
RUN sed -Ei 's/^(bind-address|log)/#&/' /etc/mysql/my.cnf 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 13 Sep 2017 08:28:01 GMT
VOLUME [/var/lib/mysql]
# Wed, 13 Sep 2017 08:28:01 GMT
COPY file:b4e423a0d95974d5269d37431aafc0c69cb304dc09ab3f496dbcfdfbc2dbd818 in /usr/local/bin/ 
# Wed, 13 Sep 2017 08:28:02 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 13 Sep 2017 08:28:02 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 13 Sep 2017 08:28:02 GMT
EXPOSE 3306/tcp
# Wed, 13 Sep 2017 08:28:02 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:aa18ad1a0d334d80981104c599fa8cef9264552a265b1197af11274beba767cf`  
		Last Modified: Thu, 07 Sep 2017 23:11:06 GMT  
		Size: 52.6 MB (52595547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1324423d52e90de306c5a44c2b99b5a3412b7fe69fa81017d7632f25862ff55b`  
		Last Modified: Wed, 13 Sep 2017 08:29:56 GMT  
		Size: 2.1 KB (2089 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee152a81987c9487171cdceb39c4b004df7c85083d3d9016706688b4dce1a119`  
		Last Modified: Wed, 13 Sep 2017 08:29:54 GMT  
		Size: 1.3 MB (1302939 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b054cf37bcae227c87cda0aa0d08a2c6e1ef8e883561272c4f68201db08f52ea`  
		Last Modified: Wed, 13 Sep 2017 08:29:53 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2ce53c48f112f67c0394cab312ee2848037efabbcb00bbae3587b9eeddd1701`  
		Last Modified: Wed, 13 Sep 2017 08:30:52 GMT  
		Size: 8.5 MB (8460263 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d0c16739c3a24aca84349e1582e1383aa55c2cde0c9b0cbe10261c862986bfc`  
		Last Modified: Wed, 13 Sep 2017 08:30:50 GMT  
		Size: 19.2 KB (19204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a775860a124478c8ef2f315b8a131e908118f8b9960c3d439c4f06df0faac6e`  
		Last Modified: Wed, 13 Sep 2017 08:30:47 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:751b1d5d2067de1e35ec4b0bb7371b96a9f34d6ee832db477aaadf900d5c7c2c`  
		Last Modified: Wed, 13 Sep 2017 08:30:56 GMT  
		Size: 42.7 MB (42662344 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70db44414ea95f59656f20feed7da04de1a1697646b675ab66330335baca7052`  
		Last Modified: Wed, 13 Sep 2017 08:30:47 GMT  
		Size: 856.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce49b4810f213a46fcedb1543f995320e32ce5334674799c94a4371afed5374d`  
		Last Modified: Wed, 13 Sep 2017 08:30:47 GMT  
		Size: 2.6 KB (2605 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d71b5712e67d54c27f780a524c9108d4caa7b42db34e27a60c38c90bba86e895`  
		Last Modified: Wed, 13 Sep 2017 08:30:48 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:5.6`

```console
$ docker pull mysql@sha256:fb927f01305ae656993540d3fd82eb5fbdd290c6c1f14540c838f47de8a2cabb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mysql:5.6` - linux; amd64

```console
$ docker pull mysql@sha256:881682433ec6ce4a61b6ceccfa3ae401bc46c3ad2c012c7b86e890166fec2816
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **105.0 MB (105046299 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:608daeb4cbf61adf185e53d795a2443dc16e9d84439c8e3c057a8ca5a39dff55`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 07 Sep 2017 23:04:40 GMT
ADD file:d7333b3e0bc6479d2faed32e06d85f1975e5b23e13e75555aeed0f639770413b in / 
# Thu, 07 Sep 2017 23:04:41 GMT
CMD ["bash"]
# Wed, 13 Sep 2017 08:25:23 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 13 Sep 2017 08:25:24 GMT
ENV GOSU_VERSION=1.7
# Wed, 13 Sep 2017 08:25:55 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 13 Sep 2017 08:25:55 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 13 Sep 2017 08:27:28 GMT
RUN apt-get update && apt-get install -y perl pwgen --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 08:27:33 GMT
RUN set -ex; 	key='A4A9406876FCBD3C456770C88C718D3B5072E1F5'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/mysql.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list > /dev/null
# Wed, 13 Sep 2017 08:27:33 GMT
ENV MYSQL_MAJOR=5.6
# Wed, 13 Sep 2017 08:27:33 GMT
ENV MYSQL_VERSION=5.6.37-1debian8
# Wed, 13 Sep 2017 08:27:34 GMT
RUN echo "deb http://repo.mysql.com/apt/debian/ jessie mysql-${MYSQL_MAJOR}" > /etc/apt/sources.list.d/mysql.list
# Wed, 13 Sep 2017 08:28:00 GMT
RUN { 		echo mysql-community-server mysql-community-server/data-dir select ''; 		echo mysql-community-server mysql-community-server/root-pass password ''; 		echo mysql-community-server mysql-community-server/re-root-pass password ''; 		echo mysql-community-server mysql-community-server/remove-test-db select false; 	} | debconf-set-selections 	&& apt-get update && apt-get install -y mysql-server="${MYSQL_VERSION}" && rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Wed, 13 Sep 2017 08:28:01 GMT
RUN sed -Ei 's/^(bind-address|log)/#&/' /etc/mysql/my.cnf 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 13 Sep 2017 08:28:01 GMT
VOLUME [/var/lib/mysql]
# Wed, 13 Sep 2017 08:28:01 GMT
COPY file:b4e423a0d95974d5269d37431aafc0c69cb304dc09ab3f496dbcfdfbc2dbd818 in /usr/local/bin/ 
# Wed, 13 Sep 2017 08:28:02 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 13 Sep 2017 08:28:02 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 13 Sep 2017 08:28:02 GMT
EXPOSE 3306/tcp
# Wed, 13 Sep 2017 08:28:02 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:aa18ad1a0d334d80981104c599fa8cef9264552a265b1197af11274beba767cf`  
		Last Modified: Thu, 07 Sep 2017 23:11:06 GMT  
		Size: 52.6 MB (52595547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1324423d52e90de306c5a44c2b99b5a3412b7fe69fa81017d7632f25862ff55b`  
		Last Modified: Wed, 13 Sep 2017 08:29:56 GMT  
		Size: 2.1 KB (2089 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee152a81987c9487171cdceb39c4b004df7c85083d3d9016706688b4dce1a119`  
		Last Modified: Wed, 13 Sep 2017 08:29:54 GMT  
		Size: 1.3 MB (1302939 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b054cf37bcae227c87cda0aa0d08a2c6e1ef8e883561272c4f68201db08f52ea`  
		Last Modified: Wed, 13 Sep 2017 08:29:53 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2ce53c48f112f67c0394cab312ee2848037efabbcb00bbae3587b9eeddd1701`  
		Last Modified: Wed, 13 Sep 2017 08:30:52 GMT  
		Size: 8.5 MB (8460263 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d0c16739c3a24aca84349e1582e1383aa55c2cde0c9b0cbe10261c862986bfc`  
		Last Modified: Wed, 13 Sep 2017 08:30:50 GMT  
		Size: 19.2 KB (19204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a775860a124478c8ef2f315b8a131e908118f8b9960c3d439c4f06df0faac6e`  
		Last Modified: Wed, 13 Sep 2017 08:30:47 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:751b1d5d2067de1e35ec4b0bb7371b96a9f34d6ee832db477aaadf900d5c7c2c`  
		Last Modified: Wed, 13 Sep 2017 08:30:56 GMT  
		Size: 42.7 MB (42662344 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70db44414ea95f59656f20feed7da04de1a1697646b675ab66330335baca7052`  
		Last Modified: Wed, 13 Sep 2017 08:30:47 GMT  
		Size: 856.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce49b4810f213a46fcedb1543f995320e32ce5334674799c94a4371afed5374d`  
		Last Modified: Wed, 13 Sep 2017 08:30:47 GMT  
		Size: 2.6 KB (2605 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d71b5712e67d54c27f780a524c9108d4caa7b42db34e27a60c38c90bba86e895`  
		Last Modified: Wed, 13 Sep 2017 08:30:48 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:5.5.57`

```console
$ docker pull mysql@sha256:cf995d438862171c8111b0e6fa195d32f1d1d0ba9863ce67cc37f21fce841170
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mysql:5.5.57` - linux; amd64

```console
$ docker pull mysql@sha256:d43eae2e428e6000a7a88aebea3042b3fbaeddd19fac544905155746d5b51758
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **90.2 MB (90171862 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:37ff7055cb137e071c9d5d7b628e250feaf607320855f3f3f1145c1516bc0905`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 07 Sep 2017 23:04:40 GMT
ADD file:d7333b3e0bc6479d2faed32e06d85f1975e5b23e13e75555aeed0f639770413b in / 
# Thu, 07 Sep 2017 23:04:41 GMT
CMD ["bash"]
# Wed, 13 Sep 2017 08:25:23 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 13 Sep 2017 08:25:24 GMT
ENV GOSU_VERSION=1.7
# Wed, 13 Sep 2017 08:25:55 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 13 Sep 2017 08:25:55 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 13 Sep 2017 08:28:20 GMT
RUN apt-get update && apt-get install -y perl --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 08:28:35 GMT
RUN apt-get update && apt-get install -y libaio1 pwgen && rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 08:28:35 GMT
ENV MYSQL_MAJOR=5.5
# Wed, 13 Sep 2017 08:28:35 GMT
ENV MYSQL_VERSION=5.5.57
# Wed, 13 Sep 2017 08:29:28 GMT
RUN apt-get update && apt-get install -y ca-certificates wget --no-install-recommends && rm -rf /var/lib/apt/lists/* 	&& wget "https://cdn.mysql.com/Downloads/MySQL-$MYSQL_MAJOR/mysql-$MYSQL_VERSION-linux-glibc2.12-x86_64.tar.gz" -O mysql.tar.gz 	&& wget "https://cdn.mysql.com/Downloads/MySQL-$MYSQL_MAJOR/mysql-$MYSQL_VERSION-linux-glibc2.12-x86_64.tar.gz.asc" -O mysql.tar.gz.asc 	&& apt-get purge -y --auto-remove ca-certificates wget 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys A4A9406876FCBD3C456770C88C718D3B5072E1F5 	&& gpg --batch --verify mysql.tar.gz.asc mysql.tar.gz 	&& rm -r "$GNUPGHOME" mysql.tar.gz.asc 	&& mkdir /usr/local/mysql 	&& tar -xzf mysql.tar.gz -C /usr/local/mysql --strip-components=1 	&& rm mysql.tar.gz 	&& rm -rf /usr/local/mysql/mysql-test /usr/local/mysql/sql-bench 	&& rm -rf /usr/local/mysql/bin/*-debug /usr/local/mysql/bin/*_embedded 	&& find /usr/local/mysql -type f -name "*.a" -delete 	&& apt-get update && apt-get install -y binutils && rm -rf /var/lib/apt/lists/* 	&& { find /usr/local/mysql -type f -executable -exec strip --strip-all '{}' + || true; } 	&& apt-get purge -y --auto-remove binutils
# Wed, 13 Sep 2017 08:29:28 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/mysql/bin:/usr/local/mysql/scripts
# Wed, 13 Sep 2017 08:29:28 GMT
RUN mkdir -p /etc/mysql/conf.d 	&& { 		echo '[mysqld]'; 		echo 'skip-host-cache'; 		echo 'skip-name-resolve'; 		echo 'datadir = /var/lib/mysql'; 		echo '!includedir /etc/mysql/conf.d/'; 	} > /etc/mysql/my.cnf
# Wed, 13 Sep 2017 08:29:29 GMT
RUN mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Wed, 13 Sep 2017 08:29:29 GMT
VOLUME [/var/lib/mysql]
# Wed, 13 Sep 2017 08:29:29 GMT
COPY file:0dfb1be3ff2b71842e1c4ae21d0e9f4b9a103296130d270c5072557604f5ca73 in /usr/local/bin/ 
# Wed, 13 Sep 2017 08:29:30 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 13 Sep 2017 08:29:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 13 Sep 2017 08:29:30 GMT
EXPOSE 3306/tcp
# Wed, 13 Sep 2017 08:29:30 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:aa18ad1a0d334d80981104c599fa8cef9264552a265b1197af11274beba767cf`  
		Last Modified: Thu, 07 Sep 2017 23:11:06 GMT  
		Size: 52.6 MB (52595547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1324423d52e90de306c5a44c2b99b5a3412b7fe69fa81017d7632f25862ff55b`  
		Last Modified: Wed, 13 Sep 2017 08:29:56 GMT  
		Size: 2.1 KB (2089 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee152a81987c9487171cdceb39c4b004df7c85083d3d9016706688b4dce1a119`  
		Last Modified: Wed, 13 Sep 2017 08:29:54 GMT  
		Size: 1.3 MB (1302939 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b054cf37bcae227c87cda0aa0d08a2c6e1ef8e883561272c4f68201db08f52ea`  
		Last Modified: Wed, 13 Sep 2017 08:29:53 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9567c3755f6f58a759be548b0ca5094a376adf3271cb833922fe42a7240a5b01`  
		Last Modified: Wed, 13 Sep 2017 08:31:13 GMT  
		Size: 8.4 MB (8440757 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a465acd815aaaf9650eb1faf27e400b479a936a40e999ed6252740832a9c687`  
		Last Modified: Wed, 13 Sep 2017 08:31:11 GMT  
		Size: 302.0 KB (301954 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c880cfc64fa1567ff225d41ee40d6b7ed5096191d286511aa4f5889a01942973`  
		Last Modified: Wed, 13 Sep 2017 08:31:14 GMT  
		Size: 27.5 MB (27525291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d8782d07862f7853c33ff7f07d879643ea4f4c36306c1cd068c318da5231b13`  
		Last Modified: Wed, 13 Sep 2017 08:31:08 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2039ce5437219f05ba4d4bcb28697746fb5b7fbe5186181a0136ece6ded241b6`  
		Last Modified: Wed, 13 Sep 2017 08:31:09 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f37c273d663798d474990f67d0e9e08587cc6ddff74380aa69fcf83f4713bdc`  
		Last Modified: Wed, 13 Sep 2017 08:31:08 GMT  
		Size: 2.6 KB (2636 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b2baa60ab7a2ed47891174c63863670c5fb443ab38e3e3da23ea6648990ea6c`  
		Last Modified: Wed, 13 Sep 2017 08:31:08 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:5.5`

```console
$ docker pull mysql@sha256:cf995d438862171c8111b0e6fa195d32f1d1d0ba9863ce67cc37f21fce841170
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mysql:5.5` - linux; amd64

```console
$ docker pull mysql@sha256:d43eae2e428e6000a7a88aebea3042b3fbaeddd19fac544905155746d5b51758
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **90.2 MB (90171862 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:37ff7055cb137e071c9d5d7b628e250feaf607320855f3f3f1145c1516bc0905`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 07 Sep 2017 23:04:40 GMT
ADD file:d7333b3e0bc6479d2faed32e06d85f1975e5b23e13e75555aeed0f639770413b in / 
# Thu, 07 Sep 2017 23:04:41 GMT
CMD ["bash"]
# Wed, 13 Sep 2017 08:25:23 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 13 Sep 2017 08:25:24 GMT
ENV GOSU_VERSION=1.7
# Wed, 13 Sep 2017 08:25:55 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 13 Sep 2017 08:25:55 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 13 Sep 2017 08:28:20 GMT
RUN apt-get update && apt-get install -y perl --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 08:28:35 GMT
RUN apt-get update && apt-get install -y libaio1 pwgen && rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 08:28:35 GMT
ENV MYSQL_MAJOR=5.5
# Wed, 13 Sep 2017 08:28:35 GMT
ENV MYSQL_VERSION=5.5.57
# Wed, 13 Sep 2017 08:29:28 GMT
RUN apt-get update && apt-get install -y ca-certificates wget --no-install-recommends && rm -rf /var/lib/apt/lists/* 	&& wget "https://cdn.mysql.com/Downloads/MySQL-$MYSQL_MAJOR/mysql-$MYSQL_VERSION-linux-glibc2.12-x86_64.tar.gz" -O mysql.tar.gz 	&& wget "https://cdn.mysql.com/Downloads/MySQL-$MYSQL_MAJOR/mysql-$MYSQL_VERSION-linux-glibc2.12-x86_64.tar.gz.asc" -O mysql.tar.gz.asc 	&& apt-get purge -y --auto-remove ca-certificates wget 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys A4A9406876FCBD3C456770C88C718D3B5072E1F5 	&& gpg --batch --verify mysql.tar.gz.asc mysql.tar.gz 	&& rm -r "$GNUPGHOME" mysql.tar.gz.asc 	&& mkdir /usr/local/mysql 	&& tar -xzf mysql.tar.gz -C /usr/local/mysql --strip-components=1 	&& rm mysql.tar.gz 	&& rm -rf /usr/local/mysql/mysql-test /usr/local/mysql/sql-bench 	&& rm -rf /usr/local/mysql/bin/*-debug /usr/local/mysql/bin/*_embedded 	&& find /usr/local/mysql -type f -name "*.a" -delete 	&& apt-get update && apt-get install -y binutils && rm -rf /var/lib/apt/lists/* 	&& { find /usr/local/mysql -type f -executable -exec strip --strip-all '{}' + || true; } 	&& apt-get purge -y --auto-remove binutils
# Wed, 13 Sep 2017 08:29:28 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/mysql/bin:/usr/local/mysql/scripts
# Wed, 13 Sep 2017 08:29:28 GMT
RUN mkdir -p /etc/mysql/conf.d 	&& { 		echo '[mysqld]'; 		echo 'skip-host-cache'; 		echo 'skip-name-resolve'; 		echo 'datadir = /var/lib/mysql'; 		echo '!includedir /etc/mysql/conf.d/'; 	} > /etc/mysql/my.cnf
# Wed, 13 Sep 2017 08:29:29 GMT
RUN mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Wed, 13 Sep 2017 08:29:29 GMT
VOLUME [/var/lib/mysql]
# Wed, 13 Sep 2017 08:29:29 GMT
COPY file:0dfb1be3ff2b71842e1c4ae21d0e9f4b9a103296130d270c5072557604f5ca73 in /usr/local/bin/ 
# Wed, 13 Sep 2017 08:29:30 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 13 Sep 2017 08:29:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 13 Sep 2017 08:29:30 GMT
EXPOSE 3306/tcp
# Wed, 13 Sep 2017 08:29:30 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:aa18ad1a0d334d80981104c599fa8cef9264552a265b1197af11274beba767cf`  
		Last Modified: Thu, 07 Sep 2017 23:11:06 GMT  
		Size: 52.6 MB (52595547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1324423d52e90de306c5a44c2b99b5a3412b7fe69fa81017d7632f25862ff55b`  
		Last Modified: Wed, 13 Sep 2017 08:29:56 GMT  
		Size: 2.1 KB (2089 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee152a81987c9487171cdceb39c4b004df7c85083d3d9016706688b4dce1a119`  
		Last Modified: Wed, 13 Sep 2017 08:29:54 GMT  
		Size: 1.3 MB (1302939 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b054cf37bcae227c87cda0aa0d08a2c6e1ef8e883561272c4f68201db08f52ea`  
		Last Modified: Wed, 13 Sep 2017 08:29:53 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9567c3755f6f58a759be548b0ca5094a376adf3271cb833922fe42a7240a5b01`  
		Last Modified: Wed, 13 Sep 2017 08:31:13 GMT  
		Size: 8.4 MB (8440757 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a465acd815aaaf9650eb1faf27e400b479a936a40e999ed6252740832a9c687`  
		Last Modified: Wed, 13 Sep 2017 08:31:11 GMT  
		Size: 302.0 KB (301954 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c880cfc64fa1567ff225d41ee40d6b7ed5096191d286511aa4f5889a01942973`  
		Last Modified: Wed, 13 Sep 2017 08:31:14 GMT  
		Size: 27.5 MB (27525291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d8782d07862f7853c33ff7f07d879643ea4f4c36306c1cd068c318da5231b13`  
		Last Modified: Wed, 13 Sep 2017 08:31:08 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2039ce5437219f05ba4d4bcb28697746fb5b7fbe5186181a0136ece6ded241b6`  
		Last Modified: Wed, 13 Sep 2017 08:31:09 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f37c273d663798d474990f67d0e9e08587cc6ddff74380aa69fcf83f4713bdc`  
		Last Modified: Wed, 13 Sep 2017 08:31:08 GMT  
		Size: 2.6 KB (2636 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b2baa60ab7a2ed47891174c63863670c5fb443ab38e3e3da23ea6648990ea6c`  
		Last Modified: Wed, 13 Sep 2017 08:31:08 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
