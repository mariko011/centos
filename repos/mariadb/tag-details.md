<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `mariadb`

-	[`mariadb:10.3.1`](#mariadb1031)
-	[`mariadb:10.3`](#mariadb103)
-	[`mariadb:10.2.8`](#mariadb1028)
-	[`mariadb:10.2`](#mariadb102)
-	[`mariadb:10`](#mariadb10)
-	[`mariadb:latest`](#mariadblatest)
-	[`mariadb:10.1.26`](#mariadb10126)
-	[`mariadb:10.1`](#mariadb101)
-	[`mariadb:10.0.32`](#mariadb10032)
-	[`mariadb:10.0`](#mariadb100)
-	[`mariadb:5.5.57`](#mariadb5557)
-	[`mariadb:5.5`](#mariadb55)
-	[`mariadb:5`](#mariadb5)

## `mariadb:10.3.1`

```console
$ docker pull mariadb@sha256:97204f32f7f03a90d8e19fa51b62793097934efbc00ab81c1ab67c1f44f78622
```

-	Platforms:
	-	linux; amd64

### `mariadb:10.3.1` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **135.9 MB (135871261 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aa78e25ab156edbf23374d65d33c99ba2c29bd6ecd94d00b114651ab1fce2aa7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 07 Sep 2017 23:04:40 GMT
ADD file:d7333b3e0bc6479d2faed32e06d85f1975e5b23e13e75555aeed0f639770413b in / 
# Thu, 07 Sep 2017 23:04:41 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 07:51:19 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Fri, 08 Sep 2017 07:51:20 GMT
ENV GOSU_VERSION=1.7
# Fri, 08 Sep 2017 07:51:47 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 08 Sep 2017 07:51:48 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 08 Sep 2017 07:52:08 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 07:52:12 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Fri, 08 Sep 2017 07:52:18 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Fri, 08 Sep 2017 07:53:16 GMT
RUN echo "deb https://repo.percona.com/apt jessie main" > /etc/apt/sources.list.d/percona.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona
# Fri, 08 Sep 2017 07:53:16 GMT
ENV MARIADB_MAJOR=10.3
# Fri, 08 Sep 2017 07:53:17 GMT
ENV MARIADB_VERSION=10.3.1+maria~jessie
# Fri, 08 Sep 2017 07:53:17 GMT
RUN echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/debian jessie main" > /etc/apt/sources.list.d/mariadb.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Fri, 08 Sep 2017 07:54:05 GMT
RUN { 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		percona-xtrabackup-24 		socat 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Fri, 08 Sep 2017 07:54:06 GMT
RUN sed -Ei 's/^(bind-address|log)/#&/' /etc/mysql/my.cnf 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Fri, 08 Sep 2017 07:54:06 GMT
VOLUME [/var/lib/mysql]
# Fri, 08 Sep 2017 07:54:07 GMT
COPY file:d559178e6a2929e36791c6a1fa232dc4ac4298ecc446d38972ee1d2a58e30621 in /usr/local/bin/ 
# Fri, 08 Sep 2017 07:54:07 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 08 Sep 2017 07:54:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Sep 2017 07:54:13 GMT
EXPOSE 3306/tcp
# Fri, 08 Sep 2017 07:54:13 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:aa18ad1a0d334d80981104c599fa8cef9264552a265b1197af11274beba767cf`  
		Last Modified: Thu, 07 Sep 2017 23:11:06 GMT  
		Size: 52.6 MB (52595547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5745c3b8bcc400d84a4accaa4b7a4ed3d1d8cadf36c6dd6db1d3fa42426f13a`  
		Last Modified: Fri, 08 Sep 2017 19:50:30 GMT  
		Size: 2.1 KB (2058 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76375fcd129cd0dcbb26e504ebda30b15ff5abd0178cbdf9276256517162481c`  
		Last Modified: Fri, 08 Sep 2017 19:50:30 GMT  
		Size: 1.3 MB (1302828 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f72cfb004cf9b18886c71f8f98cf9a275631104ca55b702b8747ddbe7c57c68`  
		Last Modified: Fri, 08 Sep 2017 19:50:29 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:869d6723f7187ad70788af450df89e59ba39b0628427e8155f64d11f91d2d7cf`  
		Last Modified: Fri, 08 Sep 2017 19:50:31 GMT  
		Size: 6.7 MB (6670363 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e1c350c960e15f0e2147a154bd6317c4725d0f88d09422b2aea262d0a581ffa`  
		Last Modified: Fri, 08 Sep 2017 19:50:29 GMT  
		Size: 20.8 KB (20826 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c63a6d23c48a17d81bc564a0211cc1b95d86ab67991e9c81b70e29c9c581bedf`  
		Last Modified: Fri, 08 Sep 2017 19:50:27 GMT  
		Size: 313.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:676c9146cd8e407f3e32976a7b2c422f5186a76903d44e89ea5fe250e45bbb95`  
		Last Modified: Fri, 08 Sep 2017 19:50:27 GMT  
		Size: 317.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:293fc74c4e5cc7cd4af1b3f8216b0d52b9500442cf2732edc8780d08407f4bc9`  
		Last Modified: Fri, 08 Sep 2017 19:50:46 GMT  
		Size: 75.3 MB (75273552 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d5b21e882d38c41a949a8ccc94a2a603d12a4319f131ab446a4ad623e61b388`  
		Last Modified: Fri, 08 Sep 2017 19:50:27 GMT  
		Size: 2.7 KB (2672 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2030a6111131c718716cd19eaea9a088ba0e35e3b73ab2ea86e07410897b2aa`  
		Last Modified: Fri, 08 Sep 2017 19:50:27 GMT  
		Size: 2.5 KB (2549 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4a43b1eb4536abcf261a903c30ff66025fdf602c73d53c5da8e55a123a3c20e`  
		Last Modified: Fri, 08 Sep 2017 19:50:28 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:10.3`

```console
$ docker pull mariadb@sha256:97204f32f7f03a90d8e19fa51b62793097934efbc00ab81c1ab67c1f44f78622
```

-	Platforms:
	-	linux; amd64

### `mariadb:10.3` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **135.9 MB (135871261 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aa78e25ab156edbf23374d65d33c99ba2c29bd6ecd94d00b114651ab1fce2aa7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 07 Sep 2017 23:04:40 GMT
ADD file:d7333b3e0bc6479d2faed32e06d85f1975e5b23e13e75555aeed0f639770413b in / 
# Thu, 07 Sep 2017 23:04:41 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 07:51:19 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Fri, 08 Sep 2017 07:51:20 GMT
ENV GOSU_VERSION=1.7
# Fri, 08 Sep 2017 07:51:47 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 08 Sep 2017 07:51:48 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 08 Sep 2017 07:52:08 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 07:52:12 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Fri, 08 Sep 2017 07:52:18 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Fri, 08 Sep 2017 07:53:16 GMT
RUN echo "deb https://repo.percona.com/apt jessie main" > /etc/apt/sources.list.d/percona.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona
# Fri, 08 Sep 2017 07:53:16 GMT
ENV MARIADB_MAJOR=10.3
# Fri, 08 Sep 2017 07:53:17 GMT
ENV MARIADB_VERSION=10.3.1+maria~jessie
# Fri, 08 Sep 2017 07:53:17 GMT
RUN echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/debian jessie main" > /etc/apt/sources.list.d/mariadb.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Fri, 08 Sep 2017 07:54:05 GMT
RUN { 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		percona-xtrabackup-24 		socat 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Fri, 08 Sep 2017 07:54:06 GMT
RUN sed -Ei 's/^(bind-address|log)/#&/' /etc/mysql/my.cnf 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Fri, 08 Sep 2017 07:54:06 GMT
VOLUME [/var/lib/mysql]
# Fri, 08 Sep 2017 07:54:07 GMT
COPY file:d559178e6a2929e36791c6a1fa232dc4ac4298ecc446d38972ee1d2a58e30621 in /usr/local/bin/ 
# Fri, 08 Sep 2017 07:54:07 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 08 Sep 2017 07:54:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Sep 2017 07:54:13 GMT
EXPOSE 3306/tcp
# Fri, 08 Sep 2017 07:54:13 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:aa18ad1a0d334d80981104c599fa8cef9264552a265b1197af11274beba767cf`  
		Last Modified: Thu, 07 Sep 2017 23:11:06 GMT  
		Size: 52.6 MB (52595547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5745c3b8bcc400d84a4accaa4b7a4ed3d1d8cadf36c6dd6db1d3fa42426f13a`  
		Last Modified: Fri, 08 Sep 2017 19:50:30 GMT  
		Size: 2.1 KB (2058 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76375fcd129cd0dcbb26e504ebda30b15ff5abd0178cbdf9276256517162481c`  
		Last Modified: Fri, 08 Sep 2017 19:50:30 GMT  
		Size: 1.3 MB (1302828 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f72cfb004cf9b18886c71f8f98cf9a275631104ca55b702b8747ddbe7c57c68`  
		Last Modified: Fri, 08 Sep 2017 19:50:29 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:869d6723f7187ad70788af450df89e59ba39b0628427e8155f64d11f91d2d7cf`  
		Last Modified: Fri, 08 Sep 2017 19:50:31 GMT  
		Size: 6.7 MB (6670363 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e1c350c960e15f0e2147a154bd6317c4725d0f88d09422b2aea262d0a581ffa`  
		Last Modified: Fri, 08 Sep 2017 19:50:29 GMT  
		Size: 20.8 KB (20826 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c63a6d23c48a17d81bc564a0211cc1b95d86ab67991e9c81b70e29c9c581bedf`  
		Last Modified: Fri, 08 Sep 2017 19:50:27 GMT  
		Size: 313.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:676c9146cd8e407f3e32976a7b2c422f5186a76903d44e89ea5fe250e45bbb95`  
		Last Modified: Fri, 08 Sep 2017 19:50:27 GMT  
		Size: 317.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:293fc74c4e5cc7cd4af1b3f8216b0d52b9500442cf2732edc8780d08407f4bc9`  
		Last Modified: Fri, 08 Sep 2017 19:50:46 GMT  
		Size: 75.3 MB (75273552 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d5b21e882d38c41a949a8ccc94a2a603d12a4319f131ab446a4ad623e61b388`  
		Last Modified: Fri, 08 Sep 2017 19:50:27 GMT  
		Size: 2.7 KB (2672 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2030a6111131c718716cd19eaea9a088ba0e35e3b73ab2ea86e07410897b2aa`  
		Last Modified: Fri, 08 Sep 2017 19:50:27 GMT  
		Size: 2.5 KB (2549 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4a43b1eb4536abcf261a903c30ff66025fdf602c73d53c5da8e55a123a3c20e`  
		Last Modified: Fri, 08 Sep 2017 19:50:28 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:10.2.8`

```console
$ docker pull mariadb@sha256:b3121e9fd7f4f88c21f5731218d756ac6b831768ebf7a6959de7c13573b43f38
```

-	Platforms:
	-	linux; amd64

### `mariadb:10.2.8` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **135.6 MB (135571469 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1ce3bc5cdc736793fdd22bd11e3a50d68754fcc988aeb8f3c084c2a9bdd1e95b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 07 Sep 2017 23:04:40 GMT
ADD file:d7333b3e0bc6479d2faed32e06d85f1975e5b23e13e75555aeed0f639770413b in / 
# Thu, 07 Sep 2017 23:04:41 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 07:51:19 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Fri, 08 Sep 2017 07:51:20 GMT
ENV GOSU_VERSION=1.7
# Fri, 08 Sep 2017 07:51:47 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 08 Sep 2017 07:51:48 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 08 Sep 2017 07:52:08 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 07:52:12 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Fri, 08 Sep 2017 07:52:18 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Fri, 08 Sep 2017 07:53:16 GMT
RUN echo "deb https://repo.percona.com/apt jessie main" > /etc/apt/sources.list.d/percona.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona
# Fri, 08 Sep 2017 07:54:24 GMT
ENV MARIADB_MAJOR=10.2
# Fri, 08 Sep 2017 07:54:24 GMT
ENV MARIADB_VERSION=10.2.8+maria~jessie
# Fri, 08 Sep 2017 07:54:25 GMT
RUN echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/debian jessie main" > /etc/apt/sources.list.d/mariadb.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Fri, 08 Sep 2017 07:55:03 GMT
RUN { 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		percona-xtrabackup-24 		socat 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Fri, 08 Sep 2017 07:55:08 GMT
RUN sed -Ei 's/^(bind-address|log)/#&/' /etc/mysql/my.cnf 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Fri, 08 Sep 2017 07:55:08 GMT
VOLUME [/var/lib/mysql]
# Fri, 08 Sep 2017 07:55:09 GMT
COPY file:d559178e6a2929e36791c6a1fa232dc4ac4298ecc446d38972ee1d2a58e30621 in /usr/local/bin/ 
# Fri, 08 Sep 2017 07:55:10 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 08 Sep 2017 07:55:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Sep 2017 07:55:11 GMT
EXPOSE 3306/tcp
# Fri, 08 Sep 2017 07:55:11 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:aa18ad1a0d334d80981104c599fa8cef9264552a265b1197af11274beba767cf`  
		Last Modified: Thu, 07 Sep 2017 23:11:06 GMT  
		Size: 52.6 MB (52595547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5745c3b8bcc400d84a4accaa4b7a4ed3d1d8cadf36c6dd6db1d3fa42426f13a`  
		Last Modified: Fri, 08 Sep 2017 19:50:30 GMT  
		Size: 2.1 KB (2058 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76375fcd129cd0dcbb26e504ebda30b15ff5abd0178cbdf9276256517162481c`  
		Last Modified: Fri, 08 Sep 2017 19:50:30 GMT  
		Size: 1.3 MB (1302828 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f72cfb004cf9b18886c71f8f98cf9a275631104ca55b702b8747ddbe7c57c68`  
		Last Modified: Fri, 08 Sep 2017 19:50:29 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:869d6723f7187ad70788af450df89e59ba39b0628427e8155f64d11f91d2d7cf`  
		Last Modified: Fri, 08 Sep 2017 19:50:31 GMT  
		Size: 6.7 MB (6670363 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e1c350c960e15f0e2147a154bd6317c4725d0f88d09422b2aea262d0a581ffa`  
		Last Modified: Fri, 08 Sep 2017 19:50:29 GMT  
		Size: 20.8 KB (20826 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c63a6d23c48a17d81bc564a0211cc1b95d86ab67991e9c81b70e29c9c581bedf`  
		Last Modified: Fri, 08 Sep 2017 19:50:27 GMT  
		Size: 313.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:806ec9be79991ed6f52d418ea18564614006f8ec046afc7c950dad989a9b2d18`  
		Last Modified: Fri, 08 Sep 2017 19:51:11 GMT  
		Size: 318.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0cd688b50f7f9d142fdbf1be9b8f705757996573a6562b43dc9e847deb7a7521`  
		Last Modified: Fri, 08 Sep 2017 19:51:28 GMT  
		Size: 75.0 MB (74973758 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1443a5ef92a01b4c44ea9ab384ab37b97d5675b09374279d2c42f45822ff8da9`  
		Last Modified: Fri, 08 Sep 2017 19:51:11 GMT  
		Size: 2.7 KB (2674 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:472615bbf2c26a07f62c137eaf464a85e48ff0b9fb784d3b74bd7638ae44b1ea`  
		Last Modified: Fri, 08 Sep 2017 19:51:11 GMT  
		Size: 2.5 KB (2548 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09917de9be7a417d1d232702f19e3a0cb2659ca0f8fa78e9c0dc8e4b4e1a7e47`  
		Last Modified: Fri, 08 Sep 2017 19:51:11 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:10.2`

```console
$ docker pull mariadb@sha256:b3121e9fd7f4f88c21f5731218d756ac6b831768ebf7a6959de7c13573b43f38
```

-	Platforms:
	-	linux; amd64

### `mariadb:10.2` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **135.6 MB (135571469 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1ce3bc5cdc736793fdd22bd11e3a50d68754fcc988aeb8f3c084c2a9bdd1e95b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 07 Sep 2017 23:04:40 GMT
ADD file:d7333b3e0bc6479d2faed32e06d85f1975e5b23e13e75555aeed0f639770413b in / 
# Thu, 07 Sep 2017 23:04:41 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 07:51:19 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Fri, 08 Sep 2017 07:51:20 GMT
ENV GOSU_VERSION=1.7
# Fri, 08 Sep 2017 07:51:47 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 08 Sep 2017 07:51:48 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 08 Sep 2017 07:52:08 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 07:52:12 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Fri, 08 Sep 2017 07:52:18 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Fri, 08 Sep 2017 07:53:16 GMT
RUN echo "deb https://repo.percona.com/apt jessie main" > /etc/apt/sources.list.d/percona.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona
# Fri, 08 Sep 2017 07:54:24 GMT
ENV MARIADB_MAJOR=10.2
# Fri, 08 Sep 2017 07:54:24 GMT
ENV MARIADB_VERSION=10.2.8+maria~jessie
# Fri, 08 Sep 2017 07:54:25 GMT
RUN echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/debian jessie main" > /etc/apt/sources.list.d/mariadb.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Fri, 08 Sep 2017 07:55:03 GMT
RUN { 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		percona-xtrabackup-24 		socat 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Fri, 08 Sep 2017 07:55:08 GMT
RUN sed -Ei 's/^(bind-address|log)/#&/' /etc/mysql/my.cnf 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Fri, 08 Sep 2017 07:55:08 GMT
VOLUME [/var/lib/mysql]
# Fri, 08 Sep 2017 07:55:09 GMT
COPY file:d559178e6a2929e36791c6a1fa232dc4ac4298ecc446d38972ee1d2a58e30621 in /usr/local/bin/ 
# Fri, 08 Sep 2017 07:55:10 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 08 Sep 2017 07:55:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Sep 2017 07:55:11 GMT
EXPOSE 3306/tcp
# Fri, 08 Sep 2017 07:55:11 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:aa18ad1a0d334d80981104c599fa8cef9264552a265b1197af11274beba767cf`  
		Last Modified: Thu, 07 Sep 2017 23:11:06 GMT  
		Size: 52.6 MB (52595547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5745c3b8bcc400d84a4accaa4b7a4ed3d1d8cadf36c6dd6db1d3fa42426f13a`  
		Last Modified: Fri, 08 Sep 2017 19:50:30 GMT  
		Size: 2.1 KB (2058 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76375fcd129cd0dcbb26e504ebda30b15ff5abd0178cbdf9276256517162481c`  
		Last Modified: Fri, 08 Sep 2017 19:50:30 GMT  
		Size: 1.3 MB (1302828 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f72cfb004cf9b18886c71f8f98cf9a275631104ca55b702b8747ddbe7c57c68`  
		Last Modified: Fri, 08 Sep 2017 19:50:29 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:869d6723f7187ad70788af450df89e59ba39b0628427e8155f64d11f91d2d7cf`  
		Last Modified: Fri, 08 Sep 2017 19:50:31 GMT  
		Size: 6.7 MB (6670363 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e1c350c960e15f0e2147a154bd6317c4725d0f88d09422b2aea262d0a581ffa`  
		Last Modified: Fri, 08 Sep 2017 19:50:29 GMT  
		Size: 20.8 KB (20826 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c63a6d23c48a17d81bc564a0211cc1b95d86ab67991e9c81b70e29c9c581bedf`  
		Last Modified: Fri, 08 Sep 2017 19:50:27 GMT  
		Size: 313.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:806ec9be79991ed6f52d418ea18564614006f8ec046afc7c950dad989a9b2d18`  
		Last Modified: Fri, 08 Sep 2017 19:51:11 GMT  
		Size: 318.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0cd688b50f7f9d142fdbf1be9b8f705757996573a6562b43dc9e847deb7a7521`  
		Last Modified: Fri, 08 Sep 2017 19:51:28 GMT  
		Size: 75.0 MB (74973758 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1443a5ef92a01b4c44ea9ab384ab37b97d5675b09374279d2c42f45822ff8da9`  
		Last Modified: Fri, 08 Sep 2017 19:51:11 GMT  
		Size: 2.7 KB (2674 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:472615bbf2c26a07f62c137eaf464a85e48ff0b9fb784d3b74bd7638ae44b1ea`  
		Last Modified: Fri, 08 Sep 2017 19:51:11 GMT  
		Size: 2.5 KB (2548 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09917de9be7a417d1d232702f19e3a0cb2659ca0f8fa78e9c0dc8e4b4e1a7e47`  
		Last Modified: Fri, 08 Sep 2017 19:51:11 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:10`

```console
$ docker pull mariadb@sha256:b3121e9fd7f4f88c21f5731218d756ac6b831768ebf7a6959de7c13573b43f38
```

-	Platforms:
	-	linux; amd64

### `mariadb:10` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **135.6 MB (135571469 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1ce3bc5cdc736793fdd22bd11e3a50d68754fcc988aeb8f3c084c2a9bdd1e95b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 07 Sep 2017 23:04:40 GMT
ADD file:d7333b3e0bc6479d2faed32e06d85f1975e5b23e13e75555aeed0f639770413b in / 
# Thu, 07 Sep 2017 23:04:41 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 07:51:19 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Fri, 08 Sep 2017 07:51:20 GMT
ENV GOSU_VERSION=1.7
# Fri, 08 Sep 2017 07:51:47 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 08 Sep 2017 07:51:48 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 08 Sep 2017 07:52:08 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 07:52:12 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Fri, 08 Sep 2017 07:52:18 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Fri, 08 Sep 2017 07:53:16 GMT
RUN echo "deb https://repo.percona.com/apt jessie main" > /etc/apt/sources.list.d/percona.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona
# Fri, 08 Sep 2017 07:54:24 GMT
ENV MARIADB_MAJOR=10.2
# Fri, 08 Sep 2017 07:54:24 GMT
ENV MARIADB_VERSION=10.2.8+maria~jessie
# Fri, 08 Sep 2017 07:54:25 GMT
RUN echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/debian jessie main" > /etc/apt/sources.list.d/mariadb.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Fri, 08 Sep 2017 07:55:03 GMT
RUN { 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		percona-xtrabackup-24 		socat 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Fri, 08 Sep 2017 07:55:08 GMT
RUN sed -Ei 's/^(bind-address|log)/#&/' /etc/mysql/my.cnf 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Fri, 08 Sep 2017 07:55:08 GMT
VOLUME [/var/lib/mysql]
# Fri, 08 Sep 2017 07:55:09 GMT
COPY file:d559178e6a2929e36791c6a1fa232dc4ac4298ecc446d38972ee1d2a58e30621 in /usr/local/bin/ 
# Fri, 08 Sep 2017 07:55:10 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 08 Sep 2017 07:55:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Sep 2017 07:55:11 GMT
EXPOSE 3306/tcp
# Fri, 08 Sep 2017 07:55:11 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:aa18ad1a0d334d80981104c599fa8cef9264552a265b1197af11274beba767cf`  
		Last Modified: Thu, 07 Sep 2017 23:11:06 GMT  
		Size: 52.6 MB (52595547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5745c3b8bcc400d84a4accaa4b7a4ed3d1d8cadf36c6dd6db1d3fa42426f13a`  
		Last Modified: Fri, 08 Sep 2017 19:50:30 GMT  
		Size: 2.1 KB (2058 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76375fcd129cd0dcbb26e504ebda30b15ff5abd0178cbdf9276256517162481c`  
		Last Modified: Fri, 08 Sep 2017 19:50:30 GMT  
		Size: 1.3 MB (1302828 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f72cfb004cf9b18886c71f8f98cf9a275631104ca55b702b8747ddbe7c57c68`  
		Last Modified: Fri, 08 Sep 2017 19:50:29 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:869d6723f7187ad70788af450df89e59ba39b0628427e8155f64d11f91d2d7cf`  
		Last Modified: Fri, 08 Sep 2017 19:50:31 GMT  
		Size: 6.7 MB (6670363 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e1c350c960e15f0e2147a154bd6317c4725d0f88d09422b2aea262d0a581ffa`  
		Last Modified: Fri, 08 Sep 2017 19:50:29 GMT  
		Size: 20.8 KB (20826 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c63a6d23c48a17d81bc564a0211cc1b95d86ab67991e9c81b70e29c9c581bedf`  
		Last Modified: Fri, 08 Sep 2017 19:50:27 GMT  
		Size: 313.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:806ec9be79991ed6f52d418ea18564614006f8ec046afc7c950dad989a9b2d18`  
		Last Modified: Fri, 08 Sep 2017 19:51:11 GMT  
		Size: 318.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0cd688b50f7f9d142fdbf1be9b8f705757996573a6562b43dc9e847deb7a7521`  
		Last Modified: Fri, 08 Sep 2017 19:51:28 GMT  
		Size: 75.0 MB (74973758 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1443a5ef92a01b4c44ea9ab384ab37b97d5675b09374279d2c42f45822ff8da9`  
		Last Modified: Fri, 08 Sep 2017 19:51:11 GMT  
		Size: 2.7 KB (2674 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:472615bbf2c26a07f62c137eaf464a85e48ff0b9fb784d3b74bd7638ae44b1ea`  
		Last Modified: Fri, 08 Sep 2017 19:51:11 GMT  
		Size: 2.5 KB (2548 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09917de9be7a417d1d232702f19e3a0cb2659ca0f8fa78e9c0dc8e4b4e1a7e47`  
		Last Modified: Fri, 08 Sep 2017 19:51:11 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:latest`

```console
$ docker pull mariadb@sha256:b3121e9fd7f4f88c21f5731218d756ac6b831768ebf7a6959de7c13573b43f38
```

-	Platforms:
	-	linux; amd64

### `mariadb:latest` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **135.6 MB (135571469 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1ce3bc5cdc736793fdd22bd11e3a50d68754fcc988aeb8f3c084c2a9bdd1e95b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 07 Sep 2017 23:04:40 GMT
ADD file:d7333b3e0bc6479d2faed32e06d85f1975e5b23e13e75555aeed0f639770413b in / 
# Thu, 07 Sep 2017 23:04:41 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 07:51:19 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Fri, 08 Sep 2017 07:51:20 GMT
ENV GOSU_VERSION=1.7
# Fri, 08 Sep 2017 07:51:47 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 08 Sep 2017 07:51:48 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 08 Sep 2017 07:52:08 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 07:52:12 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Fri, 08 Sep 2017 07:52:18 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Fri, 08 Sep 2017 07:53:16 GMT
RUN echo "deb https://repo.percona.com/apt jessie main" > /etc/apt/sources.list.d/percona.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona
# Fri, 08 Sep 2017 07:54:24 GMT
ENV MARIADB_MAJOR=10.2
# Fri, 08 Sep 2017 07:54:24 GMT
ENV MARIADB_VERSION=10.2.8+maria~jessie
# Fri, 08 Sep 2017 07:54:25 GMT
RUN echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/debian jessie main" > /etc/apt/sources.list.d/mariadb.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Fri, 08 Sep 2017 07:55:03 GMT
RUN { 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		percona-xtrabackup-24 		socat 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Fri, 08 Sep 2017 07:55:08 GMT
RUN sed -Ei 's/^(bind-address|log)/#&/' /etc/mysql/my.cnf 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Fri, 08 Sep 2017 07:55:08 GMT
VOLUME [/var/lib/mysql]
# Fri, 08 Sep 2017 07:55:09 GMT
COPY file:d559178e6a2929e36791c6a1fa232dc4ac4298ecc446d38972ee1d2a58e30621 in /usr/local/bin/ 
# Fri, 08 Sep 2017 07:55:10 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 08 Sep 2017 07:55:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Sep 2017 07:55:11 GMT
EXPOSE 3306/tcp
# Fri, 08 Sep 2017 07:55:11 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:aa18ad1a0d334d80981104c599fa8cef9264552a265b1197af11274beba767cf`  
		Last Modified: Thu, 07 Sep 2017 23:11:06 GMT  
		Size: 52.6 MB (52595547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5745c3b8bcc400d84a4accaa4b7a4ed3d1d8cadf36c6dd6db1d3fa42426f13a`  
		Last Modified: Fri, 08 Sep 2017 19:50:30 GMT  
		Size: 2.1 KB (2058 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76375fcd129cd0dcbb26e504ebda30b15ff5abd0178cbdf9276256517162481c`  
		Last Modified: Fri, 08 Sep 2017 19:50:30 GMT  
		Size: 1.3 MB (1302828 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f72cfb004cf9b18886c71f8f98cf9a275631104ca55b702b8747ddbe7c57c68`  
		Last Modified: Fri, 08 Sep 2017 19:50:29 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:869d6723f7187ad70788af450df89e59ba39b0628427e8155f64d11f91d2d7cf`  
		Last Modified: Fri, 08 Sep 2017 19:50:31 GMT  
		Size: 6.7 MB (6670363 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e1c350c960e15f0e2147a154bd6317c4725d0f88d09422b2aea262d0a581ffa`  
		Last Modified: Fri, 08 Sep 2017 19:50:29 GMT  
		Size: 20.8 KB (20826 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c63a6d23c48a17d81bc564a0211cc1b95d86ab67991e9c81b70e29c9c581bedf`  
		Last Modified: Fri, 08 Sep 2017 19:50:27 GMT  
		Size: 313.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:806ec9be79991ed6f52d418ea18564614006f8ec046afc7c950dad989a9b2d18`  
		Last Modified: Fri, 08 Sep 2017 19:51:11 GMT  
		Size: 318.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0cd688b50f7f9d142fdbf1be9b8f705757996573a6562b43dc9e847deb7a7521`  
		Last Modified: Fri, 08 Sep 2017 19:51:28 GMT  
		Size: 75.0 MB (74973758 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1443a5ef92a01b4c44ea9ab384ab37b97d5675b09374279d2c42f45822ff8da9`  
		Last Modified: Fri, 08 Sep 2017 19:51:11 GMT  
		Size: 2.7 KB (2674 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:472615bbf2c26a07f62c137eaf464a85e48ff0b9fb784d3b74bd7638ae44b1ea`  
		Last Modified: Fri, 08 Sep 2017 19:51:11 GMT  
		Size: 2.5 KB (2548 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09917de9be7a417d1d232702f19e3a0cb2659ca0f8fa78e9c0dc8e4b4e1a7e47`  
		Last Modified: Fri, 08 Sep 2017 19:51:11 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:10.1.26`

```console
$ docker pull mariadb@sha256:20ba4ece28f3f2c6f0ee67d5c307645e335febd5feccc6681ed656dbf8283ac0
```

-	Platforms:
	-	linux; amd64

### `mariadb:10.1.26` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **134.9 MB (134912538 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f42c5a5751aa41ac7d1813f9ddaba53ae4d39bc9fc6a124dc2ca1c88ecaaaded`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 07 Sep 2017 23:04:40 GMT
ADD file:d7333b3e0bc6479d2faed32e06d85f1975e5b23e13e75555aeed0f639770413b in / 
# Thu, 07 Sep 2017 23:04:41 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 07:51:19 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Fri, 08 Sep 2017 07:51:20 GMT
ENV GOSU_VERSION=1.7
# Fri, 08 Sep 2017 07:51:47 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 08 Sep 2017 07:51:48 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 08 Sep 2017 07:52:08 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 07:52:12 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Fri, 08 Sep 2017 07:52:18 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Fri, 08 Sep 2017 07:53:16 GMT
RUN echo "deb https://repo.percona.com/apt jessie main" > /etc/apt/sources.list.d/percona.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona
# Fri, 08 Sep 2017 07:55:17 GMT
ENV MARIADB_MAJOR=10.1
# Fri, 08 Sep 2017 07:55:17 GMT
ENV MARIADB_VERSION=10.1.26+maria-1~jessie
# Fri, 08 Sep 2017 07:55:18 GMT
RUN echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/debian jessie main" > /etc/apt/sources.list.d/mariadb.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Fri, 08 Sep 2017 07:56:06 GMT
RUN { 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		percona-xtrabackup 		socat 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Fri, 08 Sep 2017 07:56:06 GMT
RUN sed -Ei 's/^(bind-address|log)/#&/' /etc/mysql/my.cnf 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Fri, 08 Sep 2017 07:56:07 GMT
VOLUME [/var/lib/mysql]
# Fri, 08 Sep 2017 07:56:07 GMT
COPY file:d559178e6a2929e36791c6a1fa232dc4ac4298ecc446d38972ee1d2a58e30621 in /usr/local/bin/ 
# Fri, 08 Sep 2017 07:56:08 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 08 Sep 2017 07:56:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Sep 2017 07:56:09 GMT
EXPOSE 3306/tcp
# Fri, 08 Sep 2017 07:56:09 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:aa18ad1a0d334d80981104c599fa8cef9264552a265b1197af11274beba767cf`  
		Last Modified: Thu, 07 Sep 2017 23:11:06 GMT  
		Size: 52.6 MB (52595547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5745c3b8bcc400d84a4accaa4b7a4ed3d1d8cadf36c6dd6db1d3fa42426f13a`  
		Last Modified: Fri, 08 Sep 2017 19:50:30 GMT  
		Size: 2.1 KB (2058 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76375fcd129cd0dcbb26e504ebda30b15ff5abd0178cbdf9276256517162481c`  
		Last Modified: Fri, 08 Sep 2017 19:50:30 GMT  
		Size: 1.3 MB (1302828 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f72cfb004cf9b18886c71f8f98cf9a275631104ca55b702b8747ddbe7c57c68`  
		Last Modified: Fri, 08 Sep 2017 19:50:29 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:869d6723f7187ad70788af450df89e59ba39b0628427e8155f64d11f91d2d7cf`  
		Last Modified: Fri, 08 Sep 2017 19:50:31 GMT  
		Size: 6.7 MB (6670363 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e1c350c960e15f0e2147a154bd6317c4725d0f88d09422b2aea262d0a581ffa`  
		Last Modified: Fri, 08 Sep 2017 19:50:29 GMT  
		Size: 20.8 KB (20826 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c63a6d23c48a17d81bc564a0211cc1b95d86ab67991e9c81b70e29c9c581bedf`  
		Last Modified: Fri, 08 Sep 2017 19:50:27 GMT  
		Size: 313.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a2d8eeb960fc8ee534d286f3867dc534d1ca5e69f7b3e29657dbb0cd885a568`  
		Last Modified: Fri, 08 Sep 2017 19:52:10 GMT  
		Size: 318.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:960b983aeefe0106134a854ed9e23d75859070d7b9d9697eca2a117342cdba6c`  
		Last Modified: Fri, 08 Sep 2017 19:52:28 GMT  
		Size: 74.3 MB (74314829 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c285dfd030179751107013b9a3d1f1ad4f86ca3feedadb6659c1c4d4a04554b0`  
		Last Modified: Fri, 08 Sep 2017 19:52:10 GMT  
		Size: 2.7 KB (2672 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8fe0c9d1ebfef4e5b8e8c4ca702ab6fe7fa2ae0a978721af124f77075923e45`  
		Last Modified: Fri, 08 Sep 2017 19:52:09 GMT  
		Size: 2.5 KB (2548 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea856a91c54766904b3c90a573da1f211281537e55bf23dcee82c2515fa65846`  
		Last Modified: Fri, 08 Sep 2017 19:52:09 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:10.1`

```console
$ docker pull mariadb@sha256:20ba4ece28f3f2c6f0ee67d5c307645e335febd5feccc6681ed656dbf8283ac0
```

-	Platforms:
	-	linux; amd64

### `mariadb:10.1` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **134.9 MB (134912538 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f42c5a5751aa41ac7d1813f9ddaba53ae4d39bc9fc6a124dc2ca1c88ecaaaded`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 07 Sep 2017 23:04:40 GMT
ADD file:d7333b3e0bc6479d2faed32e06d85f1975e5b23e13e75555aeed0f639770413b in / 
# Thu, 07 Sep 2017 23:04:41 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 07:51:19 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Fri, 08 Sep 2017 07:51:20 GMT
ENV GOSU_VERSION=1.7
# Fri, 08 Sep 2017 07:51:47 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 08 Sep 2017 07:51:48 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 08 Sep 2017 07:52:08 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 07:52:12 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Fri, 08 Sep 2017 07:52:18 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Fri, 08 Sep 2017 07:53:16 GMT
RUN echo "deb https://repo.percona.com/apt jessie main" > /etc/apt/sources.list.d/percona.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona
# Fri, 08 Sep 2017 07:55:17 GMT
ENV MARIADB_MAJOR=10.1
# Fri, 08 Sep 2017 07:55:17 GMT
ENV MARIADB_VERSION=10.1.26+maria-1~jessie
# Fri, 08 Sep 2017 07:55:18 GMT
RUN echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/debian jessie main" > /etc/apt/sources.list.d/mariadb.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Fri, 08 Sep 2017 07:56:06 GMT
RUN { 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		percona-xtrabackup 		socat 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Fri, 08 Sep 2017 07:56:06 GMT
RUN sed -Ei 's/^(bind-address|log)/#&/' /etc/mysql/my.cnf 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Fri, 08 Sep 2017 07:56:07 GMT
VOLUME [/var/lib/mysql]
# Fri, 08 Sep 2017 07:56:07 GMT
COPY file:d559178e6a2929e36791c6a1fa232dc4ac4298ecc446d38972ee1d2a58e30621 in /usr/local/bin/ 
# Fri, 08 Sep 2017 07:56:08 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 08 Sep 2017 07:56:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Sep 2017 07:56:09 GMT
EXPOSE 3306/tcp
# Fri, 08 Sep 2017 07:56:09 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:aa18ad1a0d334d80981104c599fa8cef9264552a265b1197af11274beba767cf`  
		Last Modified: Thu, 07 Sep 2017 23:11:06 GMT  
		Size: 52.6 MB (52595547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5745c3b8bcc400d84a4accaa4b7a4ed3d1d8cadf36c6dd6db1d3fa42426f13a`  
		Last Modified: Fri, 08 Sep 2017 19:50:30 GMT  
		Size: 2.1 KB (2058 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76375fcd129cd0dcbb26e504ebda30b15ff5abd0178cbdf9276256517162481c`  
		Last Modified: Fri, 08 Sep 2017 19:50:30 GMT  
		Size: 1.3 MB (1302828 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f72cfb004cf9b18886c71f8f98cf9a275631104ca55b702b8747ddbe7c57c68`  
		Last Modified: Fri, 08 Sep 2017 19:50:29 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:869d6723f7187ad70788af450df89e59ba39b0628427e8155f64d11f91d2d7cf`  
		Last Modified: Fri, 08 Sep 2017 19:50:31 GMT  
		Size: 6.7 MB (6670363 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e1c350c960e15f0e2147a154bd6317c4725d0f88d09422b2aea262d0a581ffa`  
		Last Modified: Fri, 08 Sep 2017 19:50:29 GMT  
		Size: 20.8 KB (20826 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c63a6d23c48a17d81bc564a0211cc1b95d86ab67991e9c81b70e29c9c581bedf`  
		Last Modified: Fri, 08 Sep 2017 19:50:27 GMT  
		Size: 313.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a2d8eeb960fc8ee534d286f3867dc534d1ca5e69f7b3e29657dbb0cd885a568`  
		Last Modified: Fri, 08 Sep 2017 19:52:10 GMT  
		Size: 318.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:960b983aeefe0106134a854ed9e23d75859070d7b9d9697eca2a117342cdba6c`  
		Last Modified: Fri, 08 Sep 2017 19:52:28 GMT  
		Size: 74.3 MB (74314829 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c285dfd030179751107013b9a3d1f1ad4f86ca3feedadb6659c1c4d4a04554b0`  
		Last Modified: Fri, 08 Sep 2017 19:52:10 GMT  
		Size: 2.7 KB (2672 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8fe0c9d1ebfef4e5b8e8c4ca702ab6fe7fa2ae0a978721af124f77075923e45`  
		Last Modified: Fri, 08 Sep 2017 19:52:09 GMT  
		Size: 2.5 KB (2548 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea856a91c54766904b3c90a573da1f211281537e55bf23dcee82c2515fa65846`  
		Last Modified: Fri, 08 Sep 2017 19:52:09 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:10.0.32`

```console
$ docker pull mariadb@sha256:74ab41372eda789c550fde22ff831eb2ef9e7ff0c86e0627f99be94cf8bf8b64
```

-	Platforms:
	-	linux; amd64

### `mariadb:10.0.32` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **119.8 MB (119787878 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9620e72d1d06f53347844a848da23da5100b3f2346154c431ecaeb331b83478a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 07 Sep 2017 23:04:40 GMT
ADD file:d7333b3e0bc6479d2faed32e06d85f1975e5b23e13e75555aeed0f639770413b in / 
# Thu, 07 Sep 2017 23:04:41 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 07:51:19 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Fri, 08 Sep 2017 07:51:20 GMT
ENV GOSU_VERSION=1.7
# Fri, 08 Sep 2017 07:51:47 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 08 Sep 2017 07:51:48 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 08 Sep 2017 07:52:08 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 07:52:12 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Fri, 08 Sep 2017 07:52:18 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Fri, 08 Sep 2017 07:53:16 GMT
RUN echo "deb https://repo.percona.com/apt jessie main" > /etc/apt/sources.list.d/percona.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona
# Fri, 08 Sep 2017 07:56:14 GMT
ENV MARIADB_MAJOR=10.0
# Fri, 08 Sep 2017 07:56:15 GMT
ENV MARIADB_VERSION=10.0.32+maria-1~jessie
# Fri, 08 Sep 2017 07:56:16 GMT
RUN echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/debian jessie main" > /etc/apt/sources.list.d/mariadb.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Fri, 08 Sep 2017 07:57:03 GMT
RUN { 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		percona-xtrabackup 		socat 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Fri, 08 Sep 2017 07:57:04 GMT
RUN sed -Ei 's/^(bind-address|log)/#&/' /etc/mysql/my.cnf 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Fri, 08 Sep 2017 07:57:04 GMT
VOLUME [/var/lib/mysql]
# Fri, 08 Sep 2017 07:57:05 GMT
COPY file:d559178e6a2929e36791c6a1fa232dc4ac4298ecc446d38972ee1d2a58e30621 in /usr/local/bin/ 
# Fri, 08 Sep 2017 07:57:05 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 08 Sep 2017 07:57:06 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Sep 2017 07:57:06 GMT
EXPOSE 3306/tcp
# Fri, 08 Sep 2017 07:57:06 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:aa18ad1a0d334d80981104c599fa8cef9264552a265b1197af11274beba767cf`  
		Last Modified: Thu, 07 Sep 2017 23:11:06 GMT  
		Size: 52.6 MB (52595547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5745c3b8bcc400d84a4accaa4b7a4ed3d1d8cadf36c6dd6db1d3fa42426f13a`  
		Last Modified: Fri, 08 Sep 2017 19:50:30 GMT  
		Size: 2.1 KB (2058 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76375fcd129cd0dcbb26e504ebda30b15ff5abd0178cbdf9276256517162481c`  
		Last Modified: Fri, 08 Sep 2017 19:50:30 GMT  
		Size: 1.3 MB (1302828 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f72cfb004cf9b18886c71f8f98cf9a275631104ca55b702b8747ddbe7c57c68`  
		Last Modified: Fri, 08 Sep 2017 19:50:29 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:869d6723f7187ad70788af450df89e59ba39b0628427e8155f64d11f91d2d7cf`  
		Last Modified: Fri, 08 Sep 2017 19:50:31 GMT  
		Size: 6.7 MB (6670363 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e1c350c960e15f0e2147a154bd6317c4725d0f88d09422b2aea262d0a581ffa`  
		Last Modified: Fri, 08 Sep 2017 19:50:29 GMT  
		Size: 20.8 KB (20826 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c63a6d23c48a17d81bc564a0211cc1b95d86ab67991e9c81b70e29c9c581bedf`  
		Last Modified: Fri, 08 Sep 2017 19:50:27 GMT  
		Size: 313.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afcbae73a1f215d8b7a2247740345414e503cfd1ac5f81ffa50e42453482de14`  
		Last Modified: Fri, 08 Sep 2017 19:52:52 GMT  
		Size: 318.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b7f6bda23a057b516c03dbbc14c3363a7dd8bdcd46ebe4af00315bac32e059c`  
		Last Modified: Fri, 08 Sep 2017 19:53:09 GMT  
		Size: 59.2 MB (59190326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb82e19aeaebf64deb68ecf3078289ac31ccfc7cb38db67f5ed11a5ca6d2d15d`  
		Last Modified: Fri, 08 Sep 2017 19:52:52 GMT  
		Size: 2.5 KB (2515 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46b58b635c890fdc65e51abd02e5e876d3cb1fad96333b38a32cd796a98eba10`  
		Last Modified: Fri, 08 Sep 2017 19:52:52 GMT  
		Size: 2.5 KB (2548 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2359e51b49fafbdb8ba570b959201b455662e814d0bcbf55a3dc9526155c9940`  
		Last Modified: Fri, 08 Sep 2017 19:52:52 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:10.0`

```console
$ docker pull mariadb@sha256:74ab41372eda789c550fde22ff831eb2ef9e7ff0c86e0627f99be94cf8bf8b64
```

-	Platforms:
	-	linux; amd64

### `mariadb:10.0` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **119.8 MB (119787878 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9620e72d1d06f53347844a848da23da5100b3f2346154c431ecaeb331b83478a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 07 Sep 2017 23:04:40 GMT
ADD file:d7333b3e0bc6479d2faed32e06d85f1975e5b23e13e75555aeed0f639770413b in / 
# Thu, 07 Sep 2017 23:04:41 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 07:51:19 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Fri, 08 Sep 2017 07:51:20 GMT
ENV GOSU_VERSION=1.7
# Fri, 08 Sep 2017 07:51:47 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 08 Sep 2017 07:51:48 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 08 Sep 2017 07:52:08 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 07:52:12 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Fri, 08 Sep 2017 07:52:18 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Fri, 08 Sep 2017 07:53:16 GMT
RUN echo "deb https://repo.percona.com/apt jessie main" > /etc/apt/sources.list.d/percona.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona
# Fri, 08 Sep 2017 07:56:14 GMT
ENV MARIADB_MAJOR=10.0
# Fri, 08 Sep 2017 07:56:15 GMT
ENV MARIADB_VERSION=10.0.32+maria-1~jessie
# Fri, 08 Sep 2017 07:56:16 GMT
RUN echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/debian jessie main" > /etc/apt/sources.list.d/mariadb.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Fri, 08 Sep 2017 07:57:03 GMT
RUN { 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		percona-xtrabackup 		socat 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Fri, 08 Sep 2017 07:57:04 GMT
RUN sed -Ei 's/^(bind-address|log)/#&/' /etc/mysql/my.cnf 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Fri, 08 Sep 2017 07:57:04 GMT
VOLUME [/var/lib/mysql]
# Fri, 08 Sep 2017 07:57:05 GMT
COPY file:d559178e6a2929e36791c6a1fa232dc4ac4298ecc446d38972ee1d2a58e30621 in /usr/local/bin/ 
# Fri, 08 Sep 2017 07:57:05 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 08 Sep 2017 07:57:06 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Sep 2017 07:57:06 GMT
EXPOSE 3306/tcp
# Fri, 08 Sep 2017 07:57:06 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:aa18ad1a0d334d80981104c599fa8cef9264552a265b1197af11274beba767cf`  
		Last Modified: Thu, 07 Sep 2017 23:11:06 GMT  
		Size: 52.6 MB (52595547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5745c3b8bcc400d84a4accaa4b7a4ed3d1d8cadf36c6dd6db1d3fa42426f13a`  
		Last Modified: Fri, 08 Sep 2017 19:50:30 GMT  
		Size: 2.1 KB (2058 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76375fcd129cd0dcbb26e504ebda30b15ff5abd0178cbdf9276256517162481c`  
		Last Modified: Fri, 08 Sep 2017 19:50:30 GMT  
		Size: 1.3 MB (1302828 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f72cfb004cf9b18886c71f8f98cf9a275631104ca55b702b8747ddbe7c57c68`  
		Last Modified: Fri, 08 Sep 2017 19:50:29 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:869d6723f7187ad70788af450df89e59ba39b0628427e8155f64d11f91d2d7cf`  
		Last Modified: Fri, 08 Sep 2017 19:50:31 GMT  
		Size: 6.7 MB (6670363 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e1c350c960e15f0e2147a154bd6317c4725d0f88d09422b2aea262d0a581ffa`  
		Last Modified: Fri, 08 Sep 2017 19:50:29 GMT  
		Size: 20.8 KB (20826 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c63a6d23c48a17d81bc564a0211cc1b95d86ab67991e9c81b70e29c9c581bedf`  
		Last Modified: Fri, 08 Sep 2017 19:50:27 GMT  
		Size: 313.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afcbae73a1f215d8b7a2247740345414e503cfd1ac5f81ffa50e42453482de14`  
		Last Modified: Fri, 08 Sep 2017 19:52:52 GMT  
		Size: 318.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b7f6bda23a057b516c03dbbc14c3363a7dd8bdcd46ebe4af00315bac32e059c`  
		Last Modified: Fri, 08 Sep 2017 19:53:09 GMT  
		Size: 59.2 MB (59190326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb82e19aeaebf64deb68ecf3078289ac31ccfc7cb38db67f5ed11a5ca6d2d15d`  
		Last Modified: Fri, 08 Sep 2017 19:52:52 GMT  
		Size: 2.5 KB (2515 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46b58b635c890fdc65e51abd02e5e876d3cb1fad96333b38a32cd796a98eba10`  
		Last Modified: Fri, 08 Sep 2017 19:52:52 GMT  
		Size: 2.5 KB (2548 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2359e51b49fafbdb8ba570b959201b455662e814d0bcbf55a3dc9526155c9940`  
		Last Modified: Fri, 08 Sep 2017 19:52:52 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:5.5.57`

```console
$ docker pull mariadb@sha256:02f5e3562869f02c25254212d89ae09d18cb126fc54815c967d88b09a54c7abc
```

-	Platforms:
	-	linux; amd64

### `mariadb:5.5.57` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **98.5 MB (98455450 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c28f0633154e38fa2ccb488c941a8747bed046dd64991115f7db09d39ff4ea0c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 07 Sep 2017 23:08:56 GMT
ADD file:240ed8d95c0f51cf9dbb7c83f7a0af7e37ee15c7449b864e8770a65f3e771b86 in / 
# Thu, 07 Sep 2017 23:08:56 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 07:57:13 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Fri, 08 Sep 2017 07:57:13 GMT
ENV GOSU_VERSION=1.7
# Fri, 08 Sep 2017 07:57:31 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 08 Sep 2017 07:57:31 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 08 Sep 2017 07:57:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 07:57:41 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Fri, 08 Sep 2017 07:57:41 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Fri, 08 Sep 2017 07:57:42 GMT
RUN echo "deb https://repo.percona.com/apt wheezy main" > /etc/apt/sources.list.d/percona.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona
# Fri, 08 Sep 2017 07:57:42 GMT
ENV MARIADB_MAJOR=5.5
# Fri, 08 Sep 2017 07:57:43 GMT
ENV MARIADB_VERSION=5.5.57+maria-1~wheezy
# Fri, 08 Sep 2017 07:57:44 GMT
RUN echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/debian wheezy main" > /etc/apt/sources.list.d/mariadb.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Fri, 08 Sep 2017 07:58:00 GMT
RUN { 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		percona-xtrabackup 		socat 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Fri, 08 Sep 2017 07:58:01 GMT
RUN sed -Ei 's/^(bind-address|log)/#&/' /etc/mysql/my.cnf 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Fri, 08 Sep 2017 07:58:02 GMT
VOLUME [/var/lib/mysql]
# Fri, 08 Sep 2017 07:58:02 GMT
COPY file:d559178e6a2929e36791c6a1fa232dc4ac4298ecc446d38972ee1d2a58e30621 in /usr/local/bin/ 
# Fri, 08 Sep 2017 07:58:03 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 08 Sep 2017 07:58:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Sep 2017 07:58:03 GMT
EXPOSE 3306/tcp
# Fri, 08 Sep 2017 07:58:04 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:48b042a4691b27483afd6b309d6dd2fc12f2c1d388409709b418094a3a4cdf54`  
		Last Modified: Thu, 07 Sep 2017 23:23:34 GMT  
		Size: 38.1 MB (38103127 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19a553d7e3521bd6aa7ddc0d4b232e9add679f468951f0c2baf3a622251b13a9`  
		Last Modified: Fri, 08 Sep 2017 19:53:36 GMT  
		Size: 1.7 KB (1722 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d11a89a7e8ae4f03c3a31a250a51f48891e47cae4e9e6952db345345e9b25ff1`  
		Last Modified: Fri, 08 Sep 2017 19:53:38 GMT  
		Size: 1.3 MB (1257568 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd2e62e364231d2363b68023be88f81d58105b7f81ac7d4dd3f3055928329cd5`  
		Last Modified: Fri, 08 Sep 2017 19:53:36 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c07a4aea60c2c0ef8b8a444f7d70d50c6e68fb70948805a737183a3c781ef7d3`  
		Last Modified: Fri, 08 Sep 2017 19:53:40 GMT  
		Size: 6.0 MB (5992439 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7cd4d6ef7e6ee26eac095ea8426789019575e9a22bb7fb9e09103a4103e47074`  
		Last Modified: Fri, 08 Sep 2017 19:53:36 GMT  
		Size: 20.9 KB (20859 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:831572dd258ffd85b22097e65f63a5de1f08f921ec9a89625ae4244928ebc599`  
		Last Modified: Fri, 08 Sep 2017 19:53:34 GMT  
		Size: 316.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:334c2998e7faba75298b086700ac138538ab49b6ce13d4a3431219822f1ad74a`  
		Last Modified: Fri, 08 Sep 2017 19:53:34 GMT  
		Size: 321.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1fd59ced25d21fa6598813b68e3c53bdc52dff12d5e2e4db1466392df951add`  
		Last Modified: Fri, 08 Sep 2017 19:53:47 GMT  
		Size: 53.1 MB (53073797 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36e52451d0a5212fb0d0d4c11262943c52b94c52459756b3ab5fd4c4578dfbae`  
		Last Modified: Fri, 08 Sep 2017 19:53:34 GMT  
		Size: 2.5 KB (2517 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8ebbb2dd21867816b703216ddb26adad4e4edfae260974b0305b5d1195380db`  
		Last Modified: Fri, 08 Sep 2017 19:53:34 GMT  
		Size: 2.5 KB (2548 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87ac6965f0a968af7899b3c22e3241fb48a88296e58ff701a80765d7eadd67a1`  
		Last Modified: Fri, 08 Sep 2017 19:53:34 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:5.5`

```console
$ docker pull mariadb@sha256:02f5e3562869f02c25254212d89ae09d18cb126fc54815c967d88b09a54c7abc
```

-	Platforms:
	-	linux; amd64

### `mariadb:5.5` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **98.5 MB (98455450 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c28f0633154e38fa2ccb488c941a8747bed046dd64991115f7db09d39ff4ea0c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 07 Sep 2017 23:08:56 GMT
ADD file:240ed8d95c0f51cf9dbb7c83f7a0af7e37ee15c7449b864e8770a65f3e771b86 in / 
# Thu, 07 Sep 2017 23:08:56 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 07:57:13 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Fri, 08 Sep 2017 07:57:13 GMT
ENV GOSU_VERSION=1.7
# Fri, 08 Sep 2017 07:57:31 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 08 Sep 2017 07:57:31 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 08 Sep 2017 07:57:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 07:57:41 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Fri, 08 Sep 2017 07:57:41 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Fri, 08 Sep 2017 07:57:42 GMT
RUN echo "deb https://repo.percona.com/apt wheezy main" > /etc/apt/sources.list.d/percona.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona
# Fri, 08 Sep 2017 07:57:42 GMT
ENV MARIADB_MAJOR=5.5
# Fri, 08 Sep 2017 07:57:43 GMT
ENV MARIADB_VERSION=5.5.57+maria-1~wheezy
# Fri, 08 Sep 2017 07:57:44 GMT
RUN echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/debian wheezy main" > /etc/apt/sources.list.d/mariadb.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Fri, 08 Sep 2017 07:58:00 GMT
RUN { 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		percona-xtrabackup 		socat 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Fri, 08 Sep 2017 07:58:01 GMT
RUN sed -Ei 's/^(bind-address|log)/#&/' /etc/mysql/my.cnf 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Fri, 08 Sep 2017 07:58:02 GMT
VOLUME [/var/lib/mysql]
# Fri, 08 Sep 2017 07:58:02 GMT
COPY file:d559178e6a2929e36791c6a1fa232dc4ac4298ecc446d38972ee1d2a58e30621 in /usr/local/bin/ 
# Fri, 08 Sep 2017 07:58:03 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 08 Sep 2017 07:58:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Sep 2017 07:58:03 GMT
EXPOSE 3306/tcp
# Fri, 08 Sep 2017 07:58:04 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:48b042a4691b27483afd6b309d6dd2fc12f2c1d388409709b418094a3a4cdf54`  
		Last Modified: Thu, 07 Sep 2017 23:23:34 GMT  
		Size: 38.1 MB (38103127 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19a553d7e3521bd6aa7ddc0d4b232e9add679f468951f0c2baf3a622251b13a9`  
		Last Modified: Fri, 08 Sep 2017 19:53:36 GMT  
		Size: 1.7 KB (1722 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d11a89a7e8ae4f03c3a31a250a51f48891e47cae4e9e6952db345345e9b25ff1`  
		Last Modified: Fri, 08 Sep 2017 19:53:38 GMT  
		Size: 1.3 MB (1257568 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd2e62e364231d2363b68023be88f81d58105b7f81ac7d4dd3f3055928329cd5`  
		Last Modified: Fri, 08 Sep 2017 19:53:36 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c07a4aea60c2c0ef8b8a444f7d70d50c6e68fb70948805a737183a3c781ef7d3`  
		Last Modified: Fri, 08 Sep 2017 19:53:40 GMT  
		Size: 6.0 MB (5992439 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7cd4d6ef7e6ee26eac095ea8426789019575e9a22bb7fb9e09103a4103e47074`  
		Last Modified: Fri, 08 Sep 2017 19:53:36 GMT  
		Size: 20.9 KB (20859 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:831572dd258ffd85b22097e65f63a5de1f08f921ec9a89625ae4244928ebc599`  
		Last Modified: Fri, 08 Sep 2017 19:53:34 GMT  
		Size: 316.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:334c2998e7faba75298b086700ac138538ab49b6ce13d4a3431219822f1ad74a`  
		Last Modified: Fri, 08 Sep 2017 19:53:34 GMT  
		Size: 321.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1fd59ced25d21fa6598813b68e3c53bdc52dff12d5e2e4db1466392df951add`  
		Last Modified: Fri, 08 Sep 2017 19:53:47 GMT  
		Size: 53.1 MB (53073797 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36e52451d0a5212fb0d0d4c11262943c52b94c52459756b3ab5fd4c4578dfbae`  
		Last Modified: Fri, 08 Sep 2017 19:53:34 GMT  
		Size: 2.5 KB (2517 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8ebbb2dd21867816b703216ddb26adad4e4edfae260974b0305b5d1195380db`  
		Last Modified: Fri, 08 Sep 2017 19:53:34 GMT  
		Size: 2.5 KB (2548 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87ac6965f0a968af7899b3c22e3241fb48a88296e58ff701a80765d7eadd67a1`  
		Last Modified: Fri, 08 Sep 2017 19:53:34 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:5`

```console
$ docker pull mariadb@sha256:02f5e3562869f02c25254212d89ae09d18cb126fc54815c967d88b09a54c7abc
```

-	Platforms:
	-	linux; amd64

### `mariadb:5` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **98.5 MB (98455450 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c28f0633154e38fa2ccb488c941a8747bed046dd64991115f7db09d39ff4ea0c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 07 Sep 2017 23:08:56 GMT
ADD file:240ed8d95c0f51cf9dbb7c83f7a0af7e37ee15c7449b864e8770a65f3e771b86 in / 
# Thu, 07 Sep 2017 23:08:56 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 07:57:13 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Fri, 08 Sep 2017 07:57:13 GMT
ENV GOSU_VERSION=1.7
# Fri, 08 Sep 2017 07:57:31 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 08 Sep 2017 07:57:31 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 08 Sep 2017 07:57:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 07:57:41 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Fri, 08 Sep 2017 07:57:41 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Fri, 08 Sep 2017 07:57:42 GMT
RUN echo "deb https://repo.percona.com/apt wheezy main" > /etc/apt/sources.list.d/percona.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona
# Fri, 08 Sep 2017 07:57:42 GMT
ENV MARIADB_MAJOR=5.5
# Fri, 08 Sep 2017 07:57:43 GMT
ENV MARIADB_VERSION=5.5.57+maria-1~wheezy
# Fri, 08 Sep 2017 07:57:44 GMT
RUN echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/debian wheezy main" > /etc/apt/sources.list.d/mariadb.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Fri, 08 Sep 2017 07:58:00 GMT
RUN { 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		percona-xtrabackup 		socat 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Fri, 08 Sep 2017 07:58:01 GMT
RUN sed -Ei 's/^(bind-address|log)/#&/' /etc/mysql/my.cnf 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Fri, 08 Sep 2017 07:58:02 GMT
VOLUME [/var/lib/mysql]
# Fri, 08 Sep 2017 07:58:02 GMT
COPY file:d559178e6a2929e36791c6a1fa232dc4ac4298ecc446d38972ee1d2a58e30621 in /usr/local/bin/ 
# Fri, 08 Sep 2017 07:58:03 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 08 Sep 2017 07:58:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Sep 2017 07:58:03 GMT
EXPOSE 3306/tcp
# Fri, 08 Sep 2017 07:58:04 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:48b042a4691b27483afd6b309d6dd2fc12f2c1d388409709b418094a3a4cdf54`  
		Last Modified: Thu, 07 Sep 2017 23:23:34 GMT  
		Size: 38.1 MB (38103127 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19a553d7e3521bd6aa7ddc0d4b232e9add679f468951f0c2baf3a622251b13a9`  
		Last Modified: Fri, 08 Sep 2017 19:53:36 GMT  
		Size: 1.7 KB (1722 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d11a89a7e8ae4f03c3a31a250a51f48891e47cae4e9e6952db345345e9b25ff1`  
		Last Modified: Fri, 08 Sep 2017 19:53:38 GMT  
		Size: 1.3 MB (1257568 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd2e62e364231d2363b68023be88f81d58105b7f81ac7d4dd3f3055928329cd5`  
		Last Modified: Fri, 08 Sep 2017 19:53:36 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c07a4aea60c2c0ef8b8a444f7d70d50c6e68fb70948805a737183a3c781ef7d3`  
		Last Modified: Fri, 08 Sep 2017 19:53:40 GMT  
		Size: 6.0 MB (5992439 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7cd4d6ef7e6ee26eac095ea8426789019575e9a22bb7fb9e09103a4103e47074`  
		Last Modified: Fri, 08 Sep 2017 19:53:36 GMT  
		Size: 20.9 KB (20859 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:831572dd258ffd85b22097e65f63a5de1f08f921ec9a89625ae4244928ebc599`  
		Last Modified: Fri, 08 Sep 2017 19:53:34 GMT  
		Size: 316.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:334c2998e7faba75298b086700ac138538ab49b6ce13d4a3431219822f1ad74a`  
		Last Modified: Fri, 08 Sep 2017 19:53:34 GMT  
		Size: 321.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1fd59ced25d21fa6598813b68e3c53bdc52dff12d5e2e4db1466392df951add`  
		Last Modified: Fri, 08 Sep 2017 19:53:47 GMT  
		Size: 53.1 MB (53073797 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36e52451d0a5212fb0d0d4c11262943c52b94c52459756b3ab5fd4c4578dfbae`  
		Last Modified: Fri, 08 Sep 2017 19:53:34 GMT  
		Size: 2.5 KB (2517 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8ebbb2dd21867816b703216ddb26adad4e4edfae260974b0305b5d1195380db`  
		Last Modified: Fri, 08 Sep 2017 19:53:34 GMT  
		Size: 2.5 KB (2548 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87ac6965f0a968af7899b3c22e3241fb48a88296e58ff701a80765d7eadd67a1`  
		Last Modified: Fri, 08 Sep 2017 19:53:34 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
