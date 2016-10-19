<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `mariadb`

-	[`mariadb:10.1.18`](#mariadb10118)
-	[`mariadb:10.1`](#mariadb101)
-	[`mariadb:10`](#mariadb10)
-	[`mariadb:latest`](#mariadblatest)
-	[`mariadb:10.0.27`](#mariadb10027)
-	[`mariadb:10.0`](#mariadb100)
-	[`mariadb:5.5.53`](#mariadb5553)
-	[`mariadb:5.5`](#mariadb55)
-	[`mariadb:5`](#mariadb5)

## `mariadb:10.1.18`

```console
$ docker pull mariadb@sha256:a9f6637792dcba5510425ebdcd8a48d7d3359903b162935f521cfb48a8e8c88b
```

-	Platforms:
	-	linux; amd64

### `mariadb:10.1.18` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **131.0 MB (131002226 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4e1ae09402bfb3d514bd38b7022004a35b9d13e04f87ba4e4b049e76c76d3363`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 19:58:06 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Fri, 23 Sep 2016 19:58:07 GMT
ENV GOSU_VERSION=1.7
# Fri, 23 Sep 2016 19:58:22 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 23 Sep 2016 19:58:23 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 23 Sep 2016 19:58:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Wed, 19 Oct 2016 17:26:15 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	&& apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	&& apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Wed, 19 Oct 2016 17:26:16 GMT
RUN echo "deb https://repo.percona.com/apt jessie main" > /etc/apt/sources.list.d/percona.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona
# Wed, 19 Oct 2016 17:26:16 GMT
ENV MARIADB_MAJOR=10.1
# Wed, 19 Oct 2016 17:26:16 GMT
ENV MARIADB_VERSION=10.1.18+maria-1~jessie
# Wed, 19 Oct 2016 17:26:17 GMT
RUN echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/debian jessie main" > /etc/apt/sources.list.d/mariadb.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Wed, 19 Oct 2016 17:27:01 GMT
RUN { 		echo mariadb-server-$MARIADB_MAJOR mysql-server/root_password password 'unused'; 		echo mariadb-server-$MARIADB_MAJOR mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		mariadb-server=$MARIADB_VERSION 		percona-xtrabackup 		socat 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Wed, 19 Oct 2016 17:27:06 GMT
RUN sed -Ei 's/^(bind-address|log)/#&/' /etc/mysql/my.cnf 	&& echo 'skip-host-cache\nskip-name-resolve' | awk '{ print } $1 == "[mysqld]" && c == 0 { c = 1; system("cat") }' /etc/mysql/my.cnf > /tmp/my.cnf 	&& mv /tmp/my.cnf /etc/mysql/my.cnf
# Wed, 19 Oct 2016 17:27:06 GMT
VOLUME [/var/lib/mysql]
# Wed, 19 Oct 2016 17:27:07 GMT
COPY file:c38424786fef36048757ce9163e6884f3aadef4ecd3505a138402d64aac38c4e in /usr/local/bin/ 
# Wed, 19 Oct 2016 17:27:08 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 19 Oct 2016 17:27:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 19 Oct 2016 17:27:09 GMT
EXPOSE 3306/tcp
# Wed, 19 Oct 2016 17:27:09 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0689904e86f02b2adde70c002ac5b51d8a117c3948d355e37778041ef450a0ba`  
		Last Modified: Fri, 23 Sep 2016 19:59:38 GMT  
		Size: 2.0 KB (2043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:486087a8071d4761231916153009c60798741bbd4f48bfb6fb85ad30b860be3c`  
		Last Modified: Fri, 23 Sep 2016 19:59:37 GMT  
		Size: 1.2 MB (1216317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3eff318f6785276aa87ab4228ac644538ea435beeed2e802bd5673faa4216ff9`  
		Last Modified: Fri, 23 Sep 2016 19:59:35 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c6f9c30cf5d6974ad54c2202d4a7f5d0197c04d1dc088a19ac5134f4098aacc`  
		Last Modified: Fri, 23 Sep 2016 19:59:36 GMT  
		Size: 6.5 MB (6463870 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e976a09d3fd929f2f5c719aa0b7eaf7f094f59c6cbccdbabdc128c74463712f`  
		Last Modified: Wed, 19 Oct 2016 17:28:52 GMT  
		Size: 20.0 KB (20005 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e44f26d2fe4298f632978c3e5a1f7c9ad568feb90a53ce3b0056151504e72b4f`  
		Last Modified: Wed, 19 Oct 2016 17:28:52 GMT  
		Size: 315.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9658fb67f26561a9a4736fb5ca993ae817b48e225d836615d2c313ba3e296cc`  
		Last Modified: Wed, 19 Oct 2016 17:28:49 GMT  
		Size: 320.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e220239693de788b140e27514e37d83a3d307361525441d45011f537fb3c2e7`  
		Last Modified: Wed, 19 Oct 2016 17:29:12 GMT  
		Size: 71.9 MB (71940296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f59c8b57d1a725597cf52083d067216a0d573be313b5d5788de7cddab40c2a5`  
		Last Modified: Wed, 19 Oct 2016 17:28:50 GMT  
		Size: 2.6 KB (2644 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c415c582e3732dae82fea120a37cb322170e8517d33245eb1377e84ac47ed2b6`  
		Last Modified: Wed, 19 Oct 2016 17:28:49 GMT  
		Size: 1.8 KB (1818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33cdef5d0fd5c65aca53e3904e035d56a1d8c3ea76e80a7013fdfe9a14b101d4`  
		Last Modified: Wed, 19 Oct 2016 17:28:50 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:10.1`

```console
$ docker pull mariadb@sha256:a9f6637792dcba5510425ebdcd8a48d7d3359903b162935f521cfb48a8e8c88b
```

-	Platforms:
	-	linux; amd64

### `mariadb:10.1` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **131.0 MB (131002226 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4e1ae09402bfb3d514bd38b7022004a35b9d13e04f87ba4e4b049e76c76d3363`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 19:58:06 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Fri, 23 Sep 2016 19:58:07 GMT
ENV GOSU_VERSION=1.7
# Fri, 23 Sep 2016 19:58:22 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 23 Sep 2016 19:58:23 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 23 Sep 2016 19:58:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Wed, 19 Oct 2016 17:26:15 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	&& apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	&& apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Wed, 19 Oct 2016 17:26:16 GMT
RUN echo "deb https://repo.percona.com/apt jessie main" > /etc/apt/sources.list.d/percona.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona
# Wed, 19 Oct 2016 17:26:16 GMT
ENV MARIADB_MAJOR=10.1
# Wed, 19 Oct 2016 17:26:16 GMT
ENV MARIADB_VERSION=10.1.18+maria-1~jessie
# Wed, 19 Oct 2016 17:26:17 GMT
RUN echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/debian jessie main" > /etc/apt/sources.list.d/mariadb.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Wed, 19 Oct 2016 17:27:01 GMT
RUN { 		echo mariadb-server-$MARIADB_MAJOR mysql-server/root_password password 'unused'; 		echo mariadb-server-$MARIADB_MAJOR mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		mariadb-server=$MARIADB_VERSION 		percona-xtrabackup 		socat 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Wed, 19 Oct 2016 17:27:06 GMT
RUN sed -Ei 's/^(bind-address|log)/#&/' /etc/mysql/my.cnf 	&& echo 'skip-host-cache\nskip-name-resolve' | awk '{ print } $1 == "[mysqld]" && c == 0 { c = 1; system("cat") }' /etc/mysql/my.cnf > /tmp/my.cnf 	&& mv /tmp/my.cnf /etc/mysql/my.cnf
# Wed, 19 Oct 2016 17:27:06 GMT
VOLUME [/var/lib/mysql]
# Wed, 19 Oct 2016 17:27:07 GMT
COPY file:c38424786fef36048757ce9163e6884f3aadef4ecd3505a138402d64aac38c4e in /usr/local/bin/ 
# Wed, 19 Oct 2016 17:27:08 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 19 Oct 2016 17:27:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 19 Oct 2016 17:27:09 GMT
EXPOSE 3306/tcp
# Wed, 19 Oct 2016 17:27:09 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0689904e86f02b2adde70c002ac5b51d8a117c3948d355e37778041ef450a0ba`  
		Last Modified: Fri, 23 Sep 2016 19:59:38 GMT  
		Size: 2.0 KB (2043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:486087a8071d4761231916153009c60798741bbd4f48bfb6fb85ad30b860be3c`  
		Last Modified: Fri, 23 Sep 2016 19:59:37 GMT  
		Size: 1.2 MB (1216317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3eff318f6785276aa87ab4228ac644538ea435beeed2e802bd5673faa4216ff9`  
		Last Modified: Fri, 23 Sep 2016 19:59:35 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c6f9c30cf5d6974ad54c2202d4a7f5d0197c04d1dc088a19ac5134f4098aacc`  
		Last Modified: Fri, 23 Sep 2016 19:59:36 GMT  
		Size: 6.5 MB (6463870 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e976a09d3fd929f2f5c719aa0b7eaf7f094f59c6cbccdbabdc128c74463712f`  
		Last Modified: Wed, 19 Oct 2016 17:28:52 GMT  
		Size: 20.0 KB (20005 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e44f26d2fe4298f632978c3e5a1f7c9ad568feb90a53ce3b0056151504e72b4f`  
		Last Modified: Wed, 19 Oct 2016 17:28:52 GMT  
		Size: 315.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9658fb67f26561a9a4736fb5ca993ae817b48e225d836615d2c313ba3e296cc`  
		Last Modified: Wed, 19 Oct 2016 17:28:49 GMT  
		Size: 320.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e220239693de788b140e27514e37d83a3d307361525441d45011f537fb3c2e7`  
		Last Modified: Wed, 19 Oct 2016 17:29:12 GMT  
		Size: 71.9 MB (71940296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f59c8b57d1a725597cf52083d067216a0d573be313b5d5788de7cddab40c2a5`  
		Last Modified: Wed, 19 Oct 2016 17:28:50 GMT  
		Size: 2.6 KB (2644 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c415c582e3732dae82fea120a37cb322170e8517d33245eb1377e84ac47ed2b6`  
		Last Modified: Wed, 19 Oct 2016 17:28:49 GMT  
		Size: 1.8 KB (1818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33cdef5d0fd5c65aca53e3904e035d56a1d8c3ea76e80a7013fdfe9a14b101d4`  
		Last Modified: Wed, 19 Oct 2016 17:28:50 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:10`

```console
$ docker pull mariadb@sha256:a9f6637792dcba5510425ebdcd8a48d7d3359903b162935f521cfb48a8e8c88b
```

-	Platforms:
	-	linux; amd64

### `mariadb:10` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **131.0 MB (131002226 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4e1ae09402bfb3d514bd38b7022004a35b9d13e04f87ba4e4b049e76c76d3363`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 19:58:06 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Fri, 23 Sep 2016 19:58:07 GMT
ENV GOSU_VERSION=1.7
# Fri, 23 Sep 2016 19:58:22 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 23 Sep 2016 19:58:23 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 23 Sep 2016 19:58:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Wed, 19 Oct 2016 17:26:15 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	&& apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	&& apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Wed, 19 Oct 2016 17:26:16 GMT
RUN echo "deb https://repo.percona.com/apt jessie main" > /etc/apt/sources.list.d/percona.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona
# Wed, 19 Oct 2016 17:26:16 GMT
ENV MARIADB_MAJOR=10.1
# Wed, 19 Oct 2016 17:26:16 GMT
ENV MARIADB_VERSION=10.1.18+maria-1~jessie
# Wed, 19 Oct 2016 17:26:17 GMT
RUN echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/debian jessie main" > /etc/apt/sources.list.d/mariadb.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Wed, 19 Oct 2016 17:27:01 GMT
RUN { 		echo mariadb-server-$MARIADB_MAJOR mysql-server/root_password password 'unused'; 		echo mariadb-server-$MARIADB_MAJOR mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		mariadb-server=$MARIADB_VERSION 		percona-xtrabackup 		socat 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Wed, 19 Oct 2016 17:27:06 GMT
RUN sed -Ei 's/^(bind-address|log)/#&/' /etc/mysql/my.cnf 	&& echo 'skip-host-cache\nskip-name-resolve' | awk '{ print } $1 == "[mysqld]" && c == 0 { c = 1; system("cat") }' /etc/mysql/my.cnf > /tmp/my.cnf 	&& mv /tmp/my.cnf /etc/mysql/my.cnf
# Wed, 19 Oct 2016 17:27:06 GMT
VOLUME [/var/lib/mysql]
# Wed, 19 Oct 2016 17:27:07 GMT
COPY file:c38424786fef36048757ce9163e6884f3aadef4ecd3505a138402d64aac38c4e in /usr/local/bin/ 
# Wed, 19 Oct 2016 17:27:08 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 19 Oct 2016 17:27:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 19 Oct 2016 17:27:09 GMT
EXPOSE 3306/tcp
# Wed, 19 Oct 2016 17:27:09 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0689904e86f02b2adde70c002ac5b51d8a117c3948d355e37778041ef450a0ba`  
		Last Modified: Fri, 23 Sep 2016 19:59:38 GMT  
		Size: 2.0 KB (2043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:486087a8071d4761231916153009c60798741bbd4f48bfb6fb85ad30b860be3c`  
		Last Modified: Fri, 23 Sep 2016 19:59:37 GMT  
		Size: 1.2 MB (1216317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3eff318f6785276aa87ab4228ac644538ea435beeed2e802bd5673faa4216ff9`  
		Last Modified: Fri, 23 Sep 2016 19:59:35 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c6f9c30cf5d6974ad54c2202d4a7f5d0197c04d1dc088a19ac5134f4098aacc`  
		Last Modified: Fri, 23 Sep 2016 19:59:36 GMT  
		Size: 6.5 MB (6463870 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e976a09d3fd929f2f5c719aa0b7eaf7f094f59c6cbccdbabdc128c74463712f`  
		Last Modified: Wed, 19 Oct 2016 17:28:52 GMT  
		Size: 20.0 KB (20005 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e44f26d2fe4298f632978c3e5a1f7c9ad568feb90a53ce3b0056151504e72b4f`  
		Last Modified: Wed, 19 Oct 2016 17:28:52 GMT  
		Size: 315.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9658fb67f26561a9a4736fb5ca993ae817b48e225d836615d2c313ba3e296cc`  
		Last Modified: Wed, 19 Oct 2016 17:28:49 GMT  
		Size: 320.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e220239693de788b140e27514e37d83a3d307361525441d45011f537fb3c2e7`  
		Last Modified: Wed, 19 Oct 2016 17:29:12 GMT  
		Size: 71.9 MB (71940296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f59c8b57d1a725597cf52083d067216a0d573be313b5d5788de7cddab40c2a5`  
		Last Modified: Wed, 19 Oct 2016 17:28:50 GMT  
		Size: 2.6 KB (2644 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c415c582e3732dae82fea120a37cb322170e8517d33245eb1377e84ac47ed2b6`  
		Last Modified: Wed, 19 Oct 2016 17:28:49 GMT  
		Size: 1.8 KB (1818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33cdef5d0fd5c65aca53e3904e035d56a1d8c3ea76e80a7013fdfe9a14b101d4`  
		Last Modified: Wed, 19 Oct 2016 17:28:50 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:latest`

```console
$ docker pull mariadb@sha256:a9f6637792dcba5510425ebdcd8a48d7d3359903b162935f521cfb48a8e8c88b
```

-	Platforms:
	-	linux; amd64

### `mariadb:latest` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **131.0 MB (131002226 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4e1ae09402bfb3d514bd38b7022004a35b9d13e04f87ba4e4b049e76c76d3363`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 19:58:06 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Fri, 23 Sep 2016 19:58:07 GMT
ENV GOSU_VERSION=1.7
# Fri, 23 Sep 2016 19:58:22 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 23 Sep 2016 19:58:23 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 23 Sep 2016 19:58:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Wed, 19 Oct 2016 17:26:15 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	&& apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	&& apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Wed, 19 Oct 2016 17:26:16 GMT
RUN echo "deb https://repo.percona.com/apt jessie main" > /etc/apt/sources.list.d/percona.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona
# Wed, 19 Oct 2016 17:26:16 GMT
ENV MARIADB_MAJOR=10.1
# Wed, 19 Oct 2016 17:26:16 GMT
ENV MARIADB_VERSION=10.1.18+maria-1~jessie
# Wed, 19 Oct 2016 17:26:17 GMT
RUN echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/debian jessie main" > /etc/apt/sources.list.d/mariadb.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Wed, 19 Oct 2016 17:27:01 GMT
RUN { 		echo mariadb-server-$MARIADB_MAJOR mysql-server/root_password password 'unused'; 		echo mariadb-server-$MARIADB_MAJOR mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		mariadb-server=$MARIADB_VERSION 		percona-xtrabackup 		socat 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Wed, 19 Oct 2016 17:27:06 GMT
RUN sed -Ei 's/^(bind-address|log)/#&/' /etc/mysql/my.cnf 	&& echo 'skip-host-cache\nskip-name-resolve' | awk '{ print } $1 == "[mysqld]" && c == 0 { c = 1; system("cat") }' /etc/mysql/my.cnf > /tmp/my.cnf 	&& mv /tmp/my.cnf /etc/mysql/my.cnf
# Wed, 19 Oct 2016 17:27:06 GMT
VOLUME [/var/lib/mysql]
# Wed, 19 Oct 2016 17:27:07 GMT
COPY file:c38424786fef36048757ce9163e6884f3aadef4ecd3505a138402d64aac38c4e in /usr/local/bin/ 
# Wed, 19 Oct 2016 17:27:08 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 19 Oct 2016 17:27:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 19 Oct 2016 17:27:09 GMT
EXPOSE 3306/tcp
# Wed, 19 Oct 2016 17:27:09 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0689904e86f02b2adde70c002ac5b51d8a117c3948d355e37778041ef450a0ba`  
		Last Modified: Fri, 23 Sep 2016 19:59:38 GMT  
		Size: 2.0 KB (2043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:486087a8071d4761231916153009c60798741bbd4f48bfb6fb85ad30b860be3c`  
		Last Modified: Fri, 23 Sep 2016 19:59:37 GMT  
		Size: 1.2 MB (1216317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3eff318f6785276aa87ab4228ac644538ea435beeed2e802bd5673faa4216ff9`  
		Last Modified: Fri, 23 Sep 2016 19:59:35 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c6f9c30cf5d6974ad54c2202d4a7f5d0197c04d1dc088a19ac5134f4098aacc`  
		Last Modified: Fri, 23 Sep 2016 19:59:36 GMT  
		Size: 6.5 MB (6463870 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e976a09d3fd929f2f5c719aa0b7eaf7f094f59c6cbccdbabdc128c74463712f`  
		Last Modified: Wed, 19 Oct 2016 17:28:52 GMT  
		Size: 20.0 KB (20005 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e44f26d2fe4298f632978c3e5a1f7c9ad568feb90a53ce3b0056151504e72b4f`  
		Last Modified: Wed, 19 Oct 2016 17:28:52 GMT  
		Size: 315.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9658fb67f26561a9a4736fb5ca993ae817b48e225d836615d2c313ba3e296cc`  
		Last Modified: Wed, 19 Oct 2016 17:28:49 GMT  
		Size: 320.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e220239693de788b140e27514e37d83a3d307361525441d45011f537fb3c2e7`  
		Last Modified: Wed, 19 Oct 2016 17:29:12 GMT  
		Size: 71.9 MB (71940296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f59c8b57d1a725597cf52083d067216a0d573be313b5d5788de7cddab40c2a5`  
		Last Modified: Wed, 19 Oct 2016 17:28:50 GMT  
		Size: 2.6 KB (2644 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c415c582e3732dae82fea120a37cb322170e8517d33245eb1377e84ac47ed2b6`  
		Last Modified: Wed, 19 Oct 2016 17:28:49 GMT  
		Size: 1.8 KB (1818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33cdef5d0fd5c65aca53e3904e035d56a1d8c3ea76e80a7013fdfe9a14b101d4`  
		Last Modified: Wed, 19 Oct 2016 17:28:50 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:10.0.27`

```console
$ docker pull mariadb@sha256:ddecfd5bb038d8d1264e62680c2bcdeb6754238ceac7d02a387f480359705f7b
```

-	Platforms:
	-	linux; amd64

### `mariadb:10.0.27` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **117.7 MB (117744894 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e1d72e915b914ef2446fc5e793a06bb378e1c0130b369732486417257d54d80d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 19:58:06 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Fri, 23 Sep 2016 19:58:07 GMT
ENV GOSU_VERSION=1.7
# Fri, 23 Sep 2016 19:58:22 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 23 Sep 2016 19:58:23 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 23 Sep 2016 19:58:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Wed, 19 Oct 2016 17:26:15 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	&& apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	&& apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Wed, 19 Oct 2016 17:26:16 GMT
RUN echo "deb https://repo.percona.com/apt jessie main" > /etc/apt/sources.list.d/percona.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona
# Wed, 19 Oct 2016 17:27:10 GMT
ENV MARIADB_MAJOR=10.0
# Wed, 19 Oct 2016 17:27:10 GMT
ENV MARIADB_VERSION=10.0.27+maria-1~jessie
# Wed, 19 Oct 2016 17:27:11 GMT
RUN echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/debian jessie main" > /etc/apt/sources.list.d/mariadb.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Wed, 19 Oct 2016 17:27:52 GMT
RUN { 		echo mariadb-server-$MARIADB_MAJOR mysql-server/root_password password 'unused'; 		echo mariadb-server-$MARIADB_MAJOR mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		mariadb-server=$MARIADB_VERSION 		percona-xtrabackup 		socat 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Wed, 19 Oct 2016 17:27:53 GMT
RUN sed -Ei 's/^(bind-address|log)/#&/' /etc/mysql/my.cnf 	&& echo 'skip-host-cache\nskip-name-resolve' | awk '{ print } $1 == "[mysqld]" && c == 0 { c = 1; system("cat") }' /etc/mysql/my.cnf > /tmp/my.cnf 	&& mv /tmp/my.cnf /etc/mysql/my.cnf
# Wed, 19 Oct 2016 17:27:54 GMT
VOLUME [/var/lib/mysql]
# Wed, 19 Oct 2016 17:27:54 GMT
COPY file:c38424786fef36048757ce9163e6884f3aadef4ecd3505a138402d64aac38c4e in /usr/local/bin/ 
# Wed, 19 Oct 2016 17:27:55 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 19 Oct 2016 17:27:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 19 Oct 2016 17:27:56 GMT
EXPOSE 3306/tcp
# Wed, 19 Oct 2016 17:27:57 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0689904e86f02b2adde70c002ac5b51d8a117c3948d355e37778041ef450a0ba`  
		Last Modified: Fri, 23 Sep 2016 19:59:38 GMT  
		Size: 2.0 KB (2043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:486087a8071d4761231916153009c60798741bbd4f48bfb6fb85ad30b860be3c`  
		Last Modified: Fri, 23 Sep 2016 19:59:37 GMT  
		Size: 1.2 MB (1216317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3eff318f6785276aa87ab4228ac644538ea435beeed2e802bd5673faa4216ff9`  
		Last Modified: Fri, 23 Sep 2016 19:59:35 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c6f9c30cf5d6974ad54c2202d4a7f5d0197c04d1dc088a19ac5134f4098aacc`  
		Last Modified: Fri, 23 Sep 2016 19:59:36 GMT  
		Size: 6.5 MB (6463870 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e976a09d3fd929f2f5c719aa0b7eaf7f094f59c6cbccdbabdc128c74463712f`  
		Last Modified: Wed, 19 Oct 2016 17:28:52 GMT  
		Size: 20.0 KB (20005 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e44f26d2fe4298f632978c3e5a1f7c9ad568feb90a53ce3b0056151504e72b4f`  
		Last Modified: Wed, 19 Oct 2016 17:28:52 GMT  
		Size: 315.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b66444622fb354ccbf76001cf21b3f626c2f0d4bc1fcfde1edb6c838da87e48`  
		Last Modified: Wed, 19 Oct 2016 17:30:03 GMT  
		Size: 320.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c35ee8c103d5b44890aa9379365eb6431a187aabb605ff768297b2a9da4beb16`  
		Last Modified: Wed, 19 Oct 2016 17:30:20 GMT  
		Size: 58.7 MB (58683114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18cfe2af8aeb731a5665a1e3f3e9ab773cb25a8dd09618397968eabf15bf40e8`  
		Last Modified: Wed, 19 Oct 2016 17:30:03 GMT  
		Size: 2.5 KB (2492 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:065184238072a135cc9552e32a6815984bc308e0bdca1baa84c53a0662004200`  
		Last Modified: Wed, 19 Oct 2016 17:30:02 GMT  
		Size: 1.8 KB (1820 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47949fdb26f6a5b2134e53e69829919e003d5c275f3b8176860f935d75e296f5`  
		Last Modified: Wed, 19 Oct 2016 17:30:03 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:10.0`

```console
$ docker pull mariadb@sha256:ddecfd5bb038d8d1264e62680c2bcdeb6754238ceac7d02a387f480359705f7b
```

-	Platforms:
	-	linux; amd64

### `mariadb:10.0` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **117.7 MB (117744894 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e1d72e915b914ef2446fc5e793a06bb378e1c0130b369732486417257d54d80d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 19:58:06 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Fri, 23 Sep 2016 19:58:07 GMT
ENV GOSU_VERSION=1.7
# Fri, 23 Sep 2016 19:58:22 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 23 Sep 2016 19:58:23 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 23 Sep 2016 19:58:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Wed, 19 Oct 2016 17:26:15 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	&& apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	&& apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Wed, 19 Oct 2016 17:26:16 GMT
RUN echo "deb https://repo.percona.com/apt jessie main" > /etc/apt/sources.list.d/percona.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona
# Wed, 19 Oct 2016 17:27:10 GMT
ENV MARIADB_MAJOR=10.0
# Wed, 19 Oct 2016 17:27:10 GMT
ENV MARIADB_VERSION=10.0.27+maria-1~jessie
# Wed, 19 Oct 2016 17:27:11 GMT
RUN echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/debian jessie main" > /etc/apt/sources.list.d/mariadb.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Wed, 19 Oct 2016 17:27:52 GMT
RUN { 		echo mariadb-server-$MARIADB_MAJOR mysql-server/root_password password 'unused'; 		echo mariadb-server-$MARIADB_MAJOR mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		mariadb-server=$MARIADB_VERSION 		percona-xtrabackup 		socat 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Wed, 19 Oct 2016 17:27:53 GMT
RUN sed -Ei 's/^(bind-address|log)/#&/' /etc/mysql/my.cnf 	&& echo 'skip-host-cache\nskip-name-resolve' | awk '{ print } $1 == "[mysqld]" && c == 0 { c = 1; system("cat") }' /etc/mysql/my.cnf > /tmp/my.cnf 	&& mv /tmp/my.cnf /etc/mysql/my.cnf
# Wed, 19 Oct 2016 17:27:54 GMT
VOLUME [/var/lib/mysql]
# Wed, 19 Oct 2016 17:27:54 GMT
COPY file:c38424786fef36048757ce9163e6884f3aadef4ecd3505a138402d64aac38c4e in /usr/local/bin/ 
# Wed, 19 Oct 2016 17:27:55 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 19 Oct 2016 17:27:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 19 Oct 2016 17:27:56 GMT
EXPOSE 3306/tcp
# Wed, 19 Oct 2016 17:27:57 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0689904e86f02b2adde70c002ac5b51d8a117c3948d355e37778041ef450a0ba`  
		Last Modified: Fri, 23 Sep 2016 19:59:38 GMT  
		Size: 2.0 KB (2043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:486087a8071d4761231916153009c60798741bbd4f48bfb6fb85ad30b860be3c`  
		Last Modified: Fri, 23 Sep 2016 19:59:37 GMT  
		Size: 1.2 MB (1216317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3eff318f6785276aa87ab4228ac644538ea435beeed2e802bd5673faa4216ff9`  
		Last Modified: Fri, 23 Sep 2016 19:59:35 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c6f9c30cf5d6974ad54c2202d4a7f5d0197c04d1dc088a19ac5134f4098aacc`  
		Last Modified: Fri, 23 Sep 2016 19:59:36 GMT  
		Size: 6.5 MB (6463870 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e976a09d3fd929f2f5c719aa0b7eaf7f094f59c6cbccdbabdc128c74463712f`  
		Last Modified: Wed, 19 Oct 2016 17:28:52 GMT  
		Size: 20.0 KB (20005 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e44f26d2fe4298f632978c3e5a1f7c9ad568feb90a53ce3b0056151504e72b4f`  
		Last Modified: Wed, 19 Oct 2016 17:28:52 GMT  
		Size: 315.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b66444622fb354ccbf76001cf21b3f626c2f0d4bc1fcfde1edb6c838da87e48`  
		Last Modified: Wed, 19 Oct 2016 17:30:03 GMT  
		Size: 320.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c35ee8c103d5b44890aa9379365eb6431a187aabb605ff768297b2a9da4beb16`  
		Last Modified: Wed, 19 Oct 2016 17:30:20 GMT  
		Size: 58.7 MB (58683114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18cfe2af8aeb731a5665a1e3f3e9ab773cb25a8dd09618397968eabf15bf40e8`  
		Last Modified: Wed, 19 Oct 2016 17:30:03 GMT  
		Size: 2.5 KB (2492 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:065184238072a135cc9552e32a6815984bc308e0bdca1baa84c53a0662004200`  
		Last Modified: Wed, 19 Oct 2016 17:30:02 GMT  
		Size: 1.8 KB (1820 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47949fdb26f6a5b2134e53e69829919e003d5c275f3b8176860f935d75e296f5`  
		Last Modified: Wed, 19 Oct 2016 17:30:03 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:5.5.53`

```console
$ docker pull mariadb@sha256:872f3efb2d8aabc67b0afd8ac65c0d3cb150d64e94f83b2a1e99f0f95801b740
```

-	Platforms:
	-	linux; amd64

### `mariadb:5.5.53` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **95.8 MB (95845053 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eeeb71017de63b4f6f39754b041f28ca29e793e8218831de4e5c9b9409b29992`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 19 Sep 2016 17:43:34 GMT
ADD file:b06eab13504d045bfba673dde1c6f5831a875e95146504a385baa101124f58f5 in / 
# Mon, 19 Sep 2016 17:43:35 GMT
CMD ["/bin/bash"]
# Mon, 19 Sep 2016 20:08:08 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Mon, 19 Sep 2016 20:08:08 GMT
ENV GOSU_VERSION=1.7
# Mon, 19 Sep 2016 20:08:25 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Mon, 19 Sep 2016 20:08:26 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Mon, 19 Sep 2016 20:08:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Wed, 19 Oct 2016 17:28:06 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	&& apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	&& apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Wed, 19 Oct 2016 17:28:07 GMT
RUN echo "deb https://repo.percona.com/apt wheezy main" > /etc/apt/sources.list.d/percona.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona
# Wed, 19 Oct 2016 17:28:08 GMT
ENV MARIADB_MAJOR=5.5
# Wed, 19 Oct 2016 17:28:13 GMT
ENV MARIADB_VERSION=5.5.53+maria-1~wheezy
# Wed, 19 Oct 2016 17:28:14 GMT
RUN echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/debian wheezy main" > /etc/apt/sources.list.d/mariadb.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Wed, 19 Oct 2016 17:28:31 GMT
RUN { 		echo mariadb-server-$MARIADB_MAJOR mysql-server/root_password password 'unused'; 		echo mariadb-server-$MARIADB_MAJOR mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		mariadb-server=$MARIADB_VERSION 		percona-xtrabackup 		socat 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Wed, 19 Oct 2016 17:28:32 GMT
RUN sed -Ei 's/^(bind-address|log)/#&/' /etc/mysql/my.cnf 	&& echo 'skip-host-cache\nskip-name-resolve' | awk '{ print } $1 == "[mysqld]" && c == 0 { c = 1; system("cat") }' /etc/mysql/my.cnf > /tmp/my.cnf 	&& mv /tmp/my.cnf /etc/mysql/my.cnf
# Wed, 19 Oct 2016 17:28:32 GMT
VOLUME [/var/lib/mysql]
# Wed, 19 Oct 2016 17:28:38 GMT
COPY file:c38424786fef36048757ce9163e6884f3aadef4ecd3505a138402d64aac38c4e in /usr/local/bin/ 
# Wed, 19 Oct 2016 17:28:39 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 19 Oct 2016 17:28:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 19 Oct 2016 17:28:40 GMT
EXPOSE 3306/tcp
# Wed, 19 Oct 2016 17:28:40 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:0fbab137f56aaa195d66eae971694eb98df3e4ff6a91eb4fa9905994ef40e5a1`  
		Last Modified: Mon, 19 Sep 2016 17:48:55 GMT  
		Size: 37.2 MB (37214522 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b505b09d3dad9f6285fcf532cf4aa164a9a6531ab3acd6cfe4f62ab4067df982`  
		Last Modified: Fri, 23 Sep 2016 20:02:45 GMT  
		Size: 1.7 KB (1686 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10eac0c017fbf709413bef65d4da1fa3549e0f2ee97a8cf80f3acf0535546b20`  
		Last Modified: Fri, 23 Sep 2016 20:02:46 GMT  
		Size: 1.2 MB (1171856 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6d4ed9702158c1bf08d7a6d399a8be10280e56fc2f1200b6fa08e6505b15c86`  
		Last Modified: Fri, 23 Sep 2016 20:02:39 GMT  
		Size: 113.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b48f1ac8b97b99441d56f3c35fef8c2859c9793f1db976c9fba348571c53426`  
		Last Modified: Fri, 23 Sep 2016 20:02:42 GMT  
		Size: 5.8 MB (5790461 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6cb77bc1a83ec7c8022e06cb3d3fc621acb7324b1742bc8e4bb820e247e74dae`  
		Last Modified: Wed, 19 Oct 2016 17:30:53 GMT  
		Size: 63.2 KB (63211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e61b7bb1dae35e0212318c6d92aa4bc7648b1cf095f0dba786c0edbb44d9b53`  
		Last Modified: Wed, 19 Oct 2016 17:30:52 GMT  
		Size: 317.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04218fbc04780f93ef242e1d6a16d6e25f748aaf39e407fb0557eb9294735034`  
		Last Modified: Wed, 19 Oct 2016 17:30:50 GMT  
		Size: 320.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7f4d65764f0e64bebc965ad52466810733fcaaa533189cae6ab2ebd8f5fd33a`  
		Last Modified: Wed, 19 Oct 2016 17:31:07 GMT  
		Size: 51.6 MB (51598137 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f677da4ecbfec65376d78fda212f72d7610ec1a79803ce57d7a9de5581ccddae`  
		Last Modified: Wed, 19 Oct 2016 17:30:50 GMT  
		Size: 2.5 KB (2492 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea4f0dab407458bb33df7d5fd13f538a02dffa2d302357d0f689013dd882fea1`  
		Last Modified: Wed, 19 Oct 2016 17:30:49 GMT  
		Size: 1.8 KB (1819 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b015666a17a3bbba17d22c0628a10a56765251cb690b0c57c4a011e4e06ff6f6`  
		Last Modified: Wed, 19 Oct 2016 17:30:49 GMT  
		Size: 119.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:5.5`

```console
$ docker pull mariadb@sha256:872f3efb2d8aabc67b0afd8ac65c0d3cb150d64e94f83b2a1e99f0f95801b740
```

-	Platforms:
	-	linux; amd64

### `mariadb:5.5` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **95.8 MB (95845053 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eeeb71017de63b4f6f39754b041f28ca29e793e8218831de4e5c9b9409b29992`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 19 Sep 2016 17:43:34 GMT
ADD file:b06eab13504d045bfba673dde1c6f5831a875e95146504a385baa101124f58f5 in / 
# Mon, 19 Sep 2016 17:43:35 GMT
CMD ["/bin/bash"]
# Mon, 19 Sep 2016 20:08:08 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Mon, 19 Sep 2016 20:08:08 GMT
ENV GOSU_VERSION=1.7
# Mon, 19 Sep 2016 20:08:25 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Mon, 19 Sep 2016 20:08:26 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Mon, 19 Sep 2016 20:08:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Wed, 19 Oct 2016 17:28:06 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	&& apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	&& apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Wed, 19 Oct 2016 17:28:07 GMT
RUN echo "deb https://repo.percona.com/apt wheezy main" > /etc/apt/sources.list.d/percona.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona
# Wed, 19 Oct 2016 17:28:08 GMT
ENV MARIADB_MAJOR=5.5
# Wed, 19 Oct 2016 17:28:13 GMT
ENV MARIADB_VERSION=5.5.53+maria-1~wheezy
# Wed, 19 Oct 2016 17:28:14 GMT
RUN echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/debian wheezy main" > /etc/apt/sources.list.d/mariadb.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Wed, 19 Oct 2016 17:28:31 GMT
RUN { 		echo mariadb-server-$MARIADB_MAJOR mysql-server/root_password password 'unused'; 		echo mariadb-server-$MARIADB_MAJOR mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		mariadb-server=$MARIADB_VERSION 		percona-xtrabackup 		socat 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Wed, 19 Oct 2016 17:28:32 GMT
RUN sed -Ei 's/^(bind-address|log)/#&/' /etc/mysql/my.cnf 	&& echo 'skip-host-cache\nskip-name-resolve' | awk '{ print } $1 == "[mysqld]" && c == 0 { c = 1; system("cat") }' /etc/mysql/my.cnf > /tmp/my.cnf 	&& mv /tmp/my.cnf /etc/mysql/my.cnf
# Wed, 19 Oct 2016 17:28:32 GMT
VOLUME [/var/lib/mysql]
# Wed, 19 Oct 2016 17:28:38 GMT
COPY file:c38424786fef36048757ce9163e6884f3aadef4ecd3505a138402d64aac38c4e in /usr/local/bin/ 
# Wed, 19 Oct 2016 17:28:39 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 19 Oct 2016 17:28:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 19 Oct 2016 17:28:40 GMT
EXPOSE 3306/tcp
# Wed, 19 Oct 2016 17:28:40 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:0fbab137f56aaa195d66eae971694eb98df3e4ff6a91eb4fa9905994ef40e5a1`  
		Last Modified: Mon, 19 Sep 2016 17:48:55 GMT  
		Size: 37.2 MB (37214522 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b505b09d3dad9f6285fcf532cf4aa164a9a6531ab3acd6cfe4f62ab4067df982`  
		Last Modified: Fri, 23 Sep 2016 20:02:45 GMT  
		Size: 1.7 KB (1686 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10eac0c017fbf709413bef65d4da1fa3549e0f2ee97a8cf80f3acf0535546b20`  
		Last Modified: Fri, 23 Sep 2016 20:02:46 GMT  
		Size: 1.2 MB (1171856 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6d4ed9702158c1bf08d7a6d399a8be10280e56fc2f1200b6fa08e6505b15c86`  
		Last Modified: Fri, 23 Sep 2016 20:02:39 GMT  
		Size: 113.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b48f1ac8b97b99441d56f3c35fef8c2859c9793f1db976c9fba348571c53426`  
		Last Modified: Fri, 23 Sep 2016 20:02:42 GMT  
		Size: 5.8 MB (5790461 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6cb77bc1a83ec7c8022e06cb3d3fc621acb7324b1742bc8e4bb820e247e74dae`  
		Last Modified: Wed, 19 Oct 2016 17:30:53 GMT  
		Size: 63.2 KB (63211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e61b7bb1dae35e0212318c6d92aa4bc7648b1cf095f0dba786c0edbb44d9b53`  
		Last Modified: Wed, 19 Oct 2016 17:30:52 GMT  
		Size: 317.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04218fbc04780f93ef242e1d6a16d6e25f748aaf39e407fb0557eb9294735034`  
		Last Modified: Wed, 19 Oct 2016 17:30:50 GMT  
		Size: 320.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7f4d65764f0e64bebc965ad52466810733fcaaa533189cae6ab2ebd8f5fd33a`  
		Last Modified: Wed, 19 Oct 2016 17:31:07 GMT  
		Size: 51.6 MB (51598137 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f677da4ecbfec65376d78fda212f72d7610ec1a79803ce57d7a9de5581ccddae`  
		Last Modified: Wed, 19 Oct 2016 17:30:50 GMT  
		Size: 2.5 KB (2492 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea4f0dab407458bb33df7d5fd13f538a02dffa2d302357d0f689013dd882fea1`  
		Last Modified: Wed, 19 Oct 2016 17:30:49 GMT  
		Size: 1.8 KB (1819 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b015666a17a3bbba17d22c0628a10a56765251cb690b0c57c4a011e4e06ff6f6`  
		Last Modified: Wed, 19 Oct 2016 17:30:49 GMT  
		Size: 119.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:5`

```console
$ docker pull mariadb@sha256:872f3efb2d8aabc67b0afd8ac65c0d3cb150d64e94f83b2a1e99f0f95801b740
```

-	Platforms:
	-	linux; amd64

### `mariadb:5` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **95.8 MB (95845053 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eeeb71017de63b4f6f39754b041f28ca29e793e8218831de4e5c9b9409b29992`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 19 Sep 2016 17:43:34 GMT
ADD file:b06eab13504d045bfba673dde1c6f5831a875e95146504a385baa101124f58f5 in / 
# Mon, 19 Sep 2016 17:43:35 GMT
CMD ["/bin/bash"]
# Mon, 19 Sep 2016 20:08:08 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Mon, 19 Sep 2016 20:08:08 GMT
ENV GOSU_VERSION=1.7
# Mon, 19 Sep 2016 20:08:25 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Mon, 19 Sep 2016 20:08:26 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Mon, 19 Sep 2016 20:08:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Wed, 19 Oct 2016 17:28:06 GMT
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	&& apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	&& apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Wed, 19 Oct 2016 17:28:07 GMT
RUN echo "deb https://repo.percona.com/apt wheezy main" > /etc/apt/sources.list.d/percona.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona
# Wed, 19 Oct 2016 17:28:08 GMT
ENV MARIADB_MAJOR=5.5
# Wed, 19 Oct 2016 17:28:13 GMT
ENV MARIADB_VERSION=5.5.53+maria-1~wheezy
# Wed, 19 Oct 2016 17:28:14 GMT
RUN echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/debian wheezy main" > /etc/apt/sources.list.d/mariadb.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Wed, 19 Oct 2016 17:28:31 GMT
RUN { 		echo mariadb-server-$MARIADB_MAJOR mysql-server/root_password password 'unused'; 		echo mariadb-server-$MARIADB_MAJOR mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		mariadb-server=$MARIADB_VERSION 		percona-xtrabackup 		socat 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Wed, 19 Oct 2016 17:28:32 GMT
RUN sed -Ei 's/^(bind-address|log)/#&/' /etc/mysql/my.cnf 	&& echo 'skip-host-cache\nskip-name-resolve' | awk '{ print } $1 == "[mysqld]" && c == 0 { c = 1; system("cat") }' /etc/mysql/my.cnf > /tmp/my.cnf 	&& mv /tmp/my.cnf /etc/mysql/my.cnf
# Wed, 19 Oct 2016 17:28:32 GMT
VOLUME [/var/lib/mysql]
# Wed, 19 Oct 2016 17:28:38 GMT
COPY file:c38424786fef36048757ce9163e6884f3aadef4ecd3505a138402d64aac38c4e in /usr/local/bin/ 
# Wed, 19 Oct 2016 17:28:39 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 19 Oct 2016 17:28:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 19 Oct 2016 17:28:40 GMT
EXPOSE 3306/tcp
# Wed, 19 Oct 2016 17:28:40 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:0fbab137f56aaa195d66eae971694eb98df3e4ff6a91eb4fa9905994ef40e5a1`  
		Last Modified: Mon, 19 Sep 2016 17:48:55 GMT  
		Size: 37.2 MB (37214522 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b505b09d3dad9f6285fcf532cf4aa164a9a6531ab3acd6cfe4f62ab4067df982`  
		Last Modified: Fri, 23 Sep 2016 20:02:45 GMT  
		Size: 1.7 KB (1686 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10eac0c017fbf709413bef65d4da1fa3549e0f2ee97a8cf80f3acf0535546b20`  
		Last Modified: Fri, 23 Sep 2016 20:02:46 GMT  
		Size: 1.2 MB (1171856 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6d4ed9702158c1bf08d7a6d399a8be10280e56fc2f1200b6fa08e6505b15c86`  
		Last Modified: Fri, 23 Sep 2016 20:02:39 GMT  
		Size: 113.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b48f1ac8b97b99441d56f3c35fef8c2859c9793f1db976c9fba348571c53426`  
		Last Modified: Fri, 23 Sep 2016 20:02:42 GMT  
		Size: 5.8 MB (5790461 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6cb77bc1a83ec7c8022e06cb3d3fc621acb7324b1742bc8e4bb820e247e74dae`  
		Last Modified: Wed, 19 Oct 2016 17:30:53 GMT  
		Size: 63.2 KB (63211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e61b7bb1dae35e0212318c6d92aa4bc7648b1cf095f0dba786c0edbb44d9b53`  
		Last Modified: Wed, 19 Oct 2016 17:30:52 GMT  
		Size: 317.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04218fbc04780f93ef242e1d6a16d6e25f748aaf39e407fb0557eb9294735034`  
		Last Modified: Wed, 19 Oct 2016 17:30:50 GMT  
		Size: 320.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7f4d65764f0e64bebc965ad52466810733fcaaa533189cae6ab2ebd8f5fd33a`  
		Last Modified: Wed, 19 Oct 2016 17:31:07 GMT  
		Size: 51.6 MB (51598137 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f677da4ecbfec65376d78fda212f72d7610ec1a79803ce57d7a9de5581ccddae`  
		Last Modified: Wed, 19 Oct 2016 17:30:50 GMT  
		Size: 2.5 KB (2492 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea4f0dab407458bb33df7d5fd13f538a02dffa2d302357d0f689013dd882fea1`  
		Last Modified: Wed, 19 Oct 2016 17:30:49 GMT  
		Size: 1.8 KB (1819 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b015666a17a3bbba17d22c0628a10a56765251cb690b0c57c4a011e4e06ff6f6`  
		Last Modified: Wed, 19 Oct 2016 17:30:49 GMT  
		Size: 119.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
