<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `mariadb`

-	[`mariadb:10.1.21`](#mariadb10121)
-	[`mariadb:10.1`](#mariadb101)
-	[`mariadb:10`](#mariadb10)
-	[`mariadb:latest`](#mariadblatest)
-	[`mariadb:10.0.30`](#mariadb10030)
-	[`mariadb:10.0`](#mariadb100)
-	[`mariadb:5.5.54`](#mariadb5554)
-	[`mariadb:5.5`](#mariadb55)
-	[`mariadb:5`](#mariadb5)

## `mariadb:10.1.21`

```console
$ docker pull mariadb@sha256:68b616083f131ac3e7c850242d2725ebdd70899ce29733e69432c27195d87e50
```

-	Platforms:
	-	linux; amd64

### `mariadb:10.1.21` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **131.9 MB (131863602 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:56741a13bbb9887214bf8d8b3e0a088f36cb69102a4290c3db279838bba0bef8`
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
# Tue, 28 Feb 2017 05:54:08 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 05:54:08 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Tue, 28 Feb 2017 05:54:10 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 28 Feb 2017 05:54:11 GMT
RUN echo "deb https://repo.percona.com/apt jessie main" > /etc/apt/sources.list.d/percona.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona
# Tue, 28 Feb 2017 05:54:12 GMT
ENV MARIADB_MAJOR=10.1
# Tue, 28 Feb 2017 05:54:12 GMT
ENV MARIADB_VERSION=10.1.21+maria-1~jessie
# Tue, 28 Feb 2017 05:54:13 GMT
RUN echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/debian jessie main" > /etc/apt/sources.list.d/mariadb.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Tue, 28 Feb 2017 05:56:00 GMT
RUN { 		echo mariadb-server-$MARIADB_MAJOR mysql-server/root_password password 'unused'; 		echo mariadb-server-$MARIADB_MAJOR mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		mariadb-server=$MARIADB_VERSION 		percona-xtrabackup 		socat 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Tue, 28 Feb 2017 05:56:05 GMT
RUN sed -Ei 's/^(bind-address|log)/#&/' /etc/mysql/my.cnf 	&& echo 'skip-host-cache\nskip-name-resolve' | awk '{ print } $1 == "[mysqld]" && c == 0 { c = 1; system("cat") }' /etc/mysql/my.cnf > /tmp/my.cnf 	&& mv /tmp/my.cnf /etc/mysql/my.cnf
# Tue, 28 Feb 2017 05:56:05 GMT
VOLUME [/var/lib/mysql]
# Tue, 28 Feb 2017 05:56:06 GMT
COPY file:4bddc4758e22941cff70200b3c2b9944da22d0dd3b359657e1d240679abc379b in /usr/local/bin/ 
# Tue, 28 Feb 2017 05:56:08 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 28 Feb 2017 05:56:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 28 Feb 2017 05:56:08 GMT
EXPOSE 3306/tcp
# Tue, 28 Feb 2017 05:56:09 GMT
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
	-	`sha256:b73d942a76fdf4c51b05bc96bf5db5eeb27db4b24c7e4ba84bdb35c544624959`  
		Last Modified: Thu, 02 Mar 2017 01:22:35 GMT  
		Size: 6.5 MB (6467841 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b34f02138e1c100f17eed7cd92e6d16233b9e733a16e66c546eba25fa951406`  
		Last Modified: Thu, 02 Mar 2017 01:22:33 GMT  
		Size: 20.8 KB (20821 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b07f47800e4627547f9d1d69ebcd2fab62fdd4ad180f75d6fba0e5a01a756af3`  
		Last Modified: Thu, 02 Mar 2017 01:22:32 GMT  
		Size: 316.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c4084971f0e893b3835c69ee9175457bfb0c3d0788b6e22376b5b7429d68276`  
		Last Modified: Thu, 02 Mar 2017 01:23:28 GMT  
		Size: 318.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb910743fa6e804387618e69c4120a55f5af9a7507a97e7fee30dd2bfba56382`  
		Last Modified: Thu, 02 Mar 2017 01:23:53 GMT  
		Size: 72.8 MB (72786999 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec5dfb55e97a9839155d7182da7603ca8c15297bbdd4170ae44c73f496fb0903`  
		Last Modified: Thu, 02 Mar 2017 01:23:29 GMT  
		Size: 2.6 KB (2645 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c63688dd2883473195f7cc04eaa6ce88b4425e34ada49ac2cf01d8078a35bb0d`  
		Last Modified: Thu, 02 Mar 2017 01:23:28 GMT  
		Size: 2.1 KB (2129 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57829c3a2aa6eb0ea4f08d3a663948499f5db9cdbc26f0dbb801f3bc9fa203ea`  
		Last Modified: Thu, 02 Mar 2017 01:23:29 GMT  
		Size: 119.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:10.1`

```console
$ docker pull mariadb@sha256:68b616083f131ac3e7c850242d2725ebdd70899ce29733e69432c27195d87e50
```

-	Platforms:
	-	linux; amd64

### `mariadb:10.1` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **131.9 MB (131863602 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:56741a13bbb9887214bf8d8b3e0a088f36cb69102a4290c3db279838bba0bef8`
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
# Tue, 28 Feb 2017 05:54:08 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 05:54:08 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Tue, 28 Feb 2017 05:54:10 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 28 Feb 2017 05:54:11 GMT
RUN echo "deb https://repo.percona.com/apt jessie main" > /etc/apt/sources.list.d/percona.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona
# Tue, 28 Feb 2017 05:54:12 GMT
ENV MARIADB_MAJOR=10.1
# Tue, 28 Feb 2017 05:54:12 GMT
ENV MARIADB_VERSION=10.1.21+maria-1~jessie
# Tue, 28 Feb 2017 05:54:13 GMT
RUN echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/debian jessie main" > /etc/apt/sources.list.d/mariadb.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Tue, 28 Feb 2017 05:56:00 GMT
RUN { 		echo mariadb-server-$MARIADB_MAJOR mysql-server/root_password password 'unused'; 		echo mariadb-server-$MARIADB_MAJOR mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		mariadb-server=$MARIADB_VERSION 		percona-xtrabackup 		socat 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Tue, 28 Feb 2017 05:56:05 GMT
RUN sed -Ei 's/^(bind-address|log)/#&/' /etc/mysql/my.cnf 	&& echo 'skip-host-cache\nskip-name-resolve' | awk '{ print } $1 == "[mysqld]" && c == 0 { c = 1; system("cat") }' /etc/mysql/my.cnf > /tmp/my.cnf 	&& mv /tmp/my.cnf /etc/mysql/my.cnf
# Tue, 28 Feb 2017 05:56:05 GMT
VOLUME [/var/lib/mysql]
# Tue, 28 Feb 2017 05:56:06 GMT
COPY file:4bddc4758e22941cff70200b3c2b9944da22d0dd3b359657e1d240679abc379b in /usr/local/bin/ 
# Tue, 28 Feb 2017 05:56:08 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 28 Feb 2017 05:56:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 28 Feb 2017 05:56:08 GMT
EXPOSE 3306/tcp
# Tue, 28 Feb 2017 05:56:09 GMT
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
	-	`sha256:b73d942a76fdf4c51b05bc96bf5db5eeb27db4b24c7e4ba84bdb35c544624959`  
		Last Modified: Thu, 02 Mar 2017 01:22:35 GMT  
		Size: 6.5 MB (6467841 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b34f02138e1c100f17eed7cd92e6d16233b9e733a16e66c546eba25fa951406`  
		Last Modified: Thu, 02 Mar 2017 01:22:33 GMT  
		Size: 20.8 KB (20821 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b07f47800e4627547f9d1d69ebcd2fab62fdd4ad180f75d6fba0e5a01a756af3`  
		Last Modified: Thu, 02 Mar 2017 01:22:32 GMT  
		Size: 316.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c4084971f0e893b3835c69ee9175457bfb0c3d0788b6e22376b5b7429d68276`  
		Last Modified: Thu, 02 Mar 2017 01:23:28 GMT  
		Size: 318.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb910743fa6e804387618e69c4120a55f5af9a7507a97e7fee30dd2bfba56382`  
		Last Modified: Thu, 02 Mar 2017 01:23:53 GMT  
		Size: 72.8 MB (72786999 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec5dfb55e97a9839155d7182da7603ca8c15297bbdd4170ae44c73f496fb0903`  
		Last Modified: Thu, 02 Mar 2017 01:23:29 GMT  
		Size: 2.6 KB (2645 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c63688dd2883473195f7cc04eaa6ce88b4425e34ada49ac2cf01d8078a35bb0d`  
		Last Modified: Thu, 02 Mar 2017 01:23:28 GMT  
		Size: 2.1 KB (2129 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57829c3a2aa6eb0ea4f08d3a663948499f5db9cdbc26f0dbb801f3bc9fa203ea`  
		Last Modified: Thu, 02 Mar 2017 01:23:29 GMT  
		Size: 119.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:10`

```console
$ docker pull mariadb@sha256:68b616083f131ac3e7c850242d2725ebdd70899ce29733e69432c27195d87e50
```

-	Platforms:
	-	linux; amd64

### `mariadb:10` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **131.9 MB (131863602 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:56741a13bbb9887214bf8d8b3e0a088f36cb69102a4290c3db279838bba0bef8`
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
# Tue, 28 Feb 2017 05:54:08 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 05:54:08 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Tue, 28 Feb 2017 05:54:10 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 28 Feb 2017 05:54:11 GMT
RUN echo "deb https://repo.percona.com/apt jessie main" > /etc/apt/sources.list.d/percona.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona
# Tue, 28 Feb 2017 05:54:12 GMT
ENV MARIADB_MAJOR=10.1
# Tue, 28 Feb 2017 05:54:12 GMT
ENV MARIADB_VERSION=10.1.21+maria-1~jessie
# Tue, 28 Feb 2017 05:54:13 GMT
RUN echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/debian jessie main" > /etc/apt/sources.list.d/mariadb.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Tue, 28 Feb 2017 05:56:00 GMT
RUN { 		echo mariadb-server-$MARIADB_MAJOR mysql-server/root_password password 'unused'; 		echo mariadb-server-$MARIADB_MAJOR mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		mariadb-server=$MARIADB_VERSION 		percona-xtrabackup 		socat 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Tue, 28 Feb 2017 05:56:05 GMT
RUN sed -Ei 's/^(bind-address|log)/#&/' /etc/mysql/my.cnf 	&& echo 'skip-host-cache\nskip-name-resolve' | awk '{ print } $1 == "[mysqld]" && c == 0 { c = 1; system("cat") }' /etc/mysql/my.cnf > /tmp/my.cnf 	&& mv /tmp/my.cnf /etc/mysql/my.cnf
# Tue, 28 Feb 2017 05:56:05 GMT
VOLUME [/var/lib/mysql]
# Tue, 28 Feb 2017 05:56:06 GMT
COPY file:4bddc4758e22941cff70200b3c2b9944da22d0dd3b359657e1d240679abc379b in /usr/local/bin/ 
# Tue, 28 Feb 2017 05:56:08 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 28 Feb 2017 05:56:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 28 Feb 2017 05:56:08 GMT
EXPOSE 3306/tcp
# Tue, 28 Feb 2017 05:56:09 GMT
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
	-	`sha256:b73d942a76fdf4c51b05bc96bf5db5eeb27db4b24c7e4ba84bdb35c544624959`  
		Last Modified: Thu, 02 Mar 2017 01:22:35 GMT  
		Size: 6.5 MB (6467841 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b34f02138e1c100f17eed7cd92e6d16233b9e733a16e66c546eba25fa951406`  
		Last Modified: Thu, 02 Mar 2017 01:22:33 GMT  
		Size: 20.8 KB (20821 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b07f47800e4627547f9d1d69ebcd2fab62fdd4ad180f75d6fba0e5a01a756af3`  
		Last Modified: Thu, 02 Mar 2017 01:22:32 GMT  
		Size: 316.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c4084971f0e893b3835c69ee9175457bfb0c3d0788b6e22376b5b7429d68276`  
		Last Modified: Thu, 02 Mar 2017 01:23:28 GMT  
		Size: 318.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb910743fa6e804387618e69c4120a55f5af9a7507a97e7fee30dd2bfba56382`  
		Last Modified: Thu, 02 Mar 2017 01:23:53 GMT  
		Size: 72.8 MB (72786999 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec5dfb55e97a9839155d7182da7603ca8c15297bbdd4170ae44c73f496fb0903`  
		Last Modified: Thu, 02 Mar 2017 01:23:29 GMT  
		Size: 2.6 KB (2645 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c63688dd2883473195f7cc04eaa6ce88b4425e34ada49ac2cf01d8078a35bb0d`  
		Last Modified: Thu, 02 Mar 2017 01:23:28 GMT  
		Size: 2.1 KB (2129 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57829c3a2aa6eb0ea4f08d3a663948499f5db9cdbc26f0dbb801f3bc9fa203ea`  
		Last Modified: Thu, 02 Mar 2017 01:23:29 GMT  
		Size: 119.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:latest`

```console
$ docker pull mariadb@sha256:68b616083f131ac3e7c850242d2725ebdd70899ce29733e69432c27195d87e50
```

-	Platforms:
	-	linux; amd64

### `mariadb:latest` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **131.9 MB (131863602 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:56741a13bbb9887214bf8d8b3e0a088f36cb69102a4290c3db279838bba0bef8`
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
# Tue, 28 Feb 2017 05:54:08 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 05:54:08 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Tue, 28 Feb 2017 05:54:10 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 28 Feb 2017 05:54:11 GMT
RUN echo "deb https://repo.percona.com/apt jessie main" > /etc/apt/sources.list.d/percona.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona
# Tue, 28 Feb 2017 05:54:12 GMT
ENV MARIADB_MAJOR=10.1
# Tue, 28 Feb 2017 05:54:12 GMT
ENV MARIADB_VERSION=10.1.21+maria-1~jessie
# Tue, 28 Feb 2017 05:54:13 GMT
RUN echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/debian jessie main" > /etc/apt/sources.list.d/mariadb.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Tue, 28 Feb 2017 05:56:00 GMT
RUN { 		echo mariadb-server-$MARIADB_MAJOR mysql-server/root_password password 'unused'; 		echo mariadb-server-$MARIADB_MAJOR mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		mariadb-server=$MARIADB_VERSION 		percona-xtrabackup 		socat 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Tue, 28 Feb 2017 05:56:05 GMT
RUN sed -Ei 's/^(bind-address|log)/#&/' /etc/mysql/my.cnf 	&& echo 'skip-host-cache\nskip-name-resolve' | awk '{ print } $1 == "[mysqld]" && c == 0 { c = 1; system("cat") }' /etc/mysql/my.cnf > /tmp/my.cnf 	&& mv /tmp/my.cnf /etc/mysql/my.cnf
# Tue, 28 Feb 2017 05:56:05 GMT
VOLUME [/var/lib/mysql]
# Tue, 28 Feb 2017 05:56:06 GMT
COPY file:4bddc4758e22941cff70200b3c2b9944da22d0dd3b359657e1d240679abc379b in /usr/local/bin/ 
# Tue, 28 Feb 2017 05:56:08 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 28 Feb 2017 05:56:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 28 Feb 2017 05:56:08 GMT
EXPOSE 3306/tcp
# Tue, 28 Feb 2017 05:56:09 GMT
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
	-	`sha256:b73d942a76fdf4c51b05bc96bf5db5eeb27db4b24c7e4ba84bdb35c544624959`  
		Last Modified: Thu, 02 Mar 2017 01:22:35 GMT  
		Size: 6.5 MB (6467841 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b34f02138e1c100f17eed7cd92e6d16233b9e733a16e66c546eba25fa951406`  
		Last Modified: Thu, 02 Mar 2017 01:22:33 GMT  
		Size: 20.8 KB (20821 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b07f47800e4627547f9d1d69ebcd2fab62fdd4ad180f75d6fba0e5a01a756af3`  
		Last Modified: Thu, 02 Mar 2017 01:22:32 GMT  
		Size: 316.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c4084971f0e893b3835c69ee9175457bfb0c3d0788b6e22376b5b7429d68276`  
		Last Modified: Thu, 02 Mar 2017 01:23:28 GMT  
		Size: 318.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb910743fa6e804387618e69c4120a55f5af9a7507a97e7fee30dd2bfba56382`  
		Last Modified: Thu, 02 Mar 2017 01:23:53 GMT  
		Size: 72.8 MB (72786999 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec5dfb55e97a9839155d7182da7603ca8c15297bbdd4170ae44c73f496fb0903`  
		Last Modified: Thu, 02 Mar 2017 01:23:29 GMT  
		Size: 2.6 KB (2645 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c63688dd2883473195f7cc04eaa6ce88b4425e34ada49ac2cf01d8078a35bb0d`  
		Last Modified: Thu, 02 Mar 2017 01:23:28 GMT  
		Size: 2.1 KB (2129 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57829c3a2aa6eb0ea4f08d3a663948499f5db9cdbc26f0dbb801f3bc9fa203ea`  
		Last Modified: Thu, 02 Mar 2017 01:23:29 GMT  
		Size: 119.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:10.0.30`

```console
$ docker pull mariadb@sha256:9753bdd721197d30cf2bcb1be701d2642f05bab57fa72564a16042b657babc2b
```

-	Platforms:
	-	linux; amd64

### `mariadb:10.0.30` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **117.0 MB (117015870 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e2fa1cc27ede2cccd3bae20fdd903de4af1dd12345116d18ebb60f02f33fae04`
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
# Tue, 28 Feb 2017 05:54:08 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 05:54:08 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Tue, 28 Feb 2017 05:54:10 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 28 Feb 2017 05:54:11 GMT
RUN echo "deb https://repo.percona.com/apt jessie main" > /etc/apt/sources.list.d/percona.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona
# Tue, 28 Feb 2017 05:56:10 GMT
ENV MARIADB_MAJOR=10.0
# Thu, 09 Mar 2017 18:42:41 GMT
ENV MARIADB_VERSION=10.0.30+maria-1~jessie
# Thu, 09 Mar 2017 18:42:42 GMT
RUN echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/debian jessie main" > /etc/apt/sources.list.d/mariadb.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Thu, 09 Mar 2017 18:43:24 GMT
RUN { 		echo mariadb-server-$MARIADB_MAJOR mysql-server/root_password password 'unused'; 		echo mariadb-server-$MARIADB_MAJOR mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		mariadb-server=$MARIADB_VERSION 		percona-xtrabackup 		socat 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Thu, 09 Mar 2017 18:43:25 GMT
RUN sed -Ei 's/^(bind-address|log)/#&/' /etc/mysql/my.cnf 	&& echo 'skip-host-cache\nskip-name-resolve' | awk '{ print } $1 == "[mysqld]" && c == 0 { c = 1; system("cat") }' /etc/mysql/my.cnf > /tmp/my.cnf 	&& mv /tmp/my.cnf /etc/mysql/my.cnf
# Thu, 09 Mar 2017 18:43:26 GMT
VOLUME [/var/lib/mysql]
# Thu, 09 Mar 2017 18:43:27 GMT
COPY file:4bddc4758e22941cff70200b3c2b9944da22d0dd3b359657e1d240679abc379b in /usr/local/bin/ 
# Thu, 09 Mar 2017 18:43:28 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 09 Mar 2017 18:43:28 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 09 Mar 2017 18:43:29 GMT
EXPOSE 3306/tcp
# Thu, 09 Mar 2017 18:43:30 GMT
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
	-	`sha256:b73d942a76fdf4c51b05bc96bf5db5eeb27db4b24c7e4ba84bdb35c544624959`  
		Last Modified: Thu, 02 Mar 2017 01:22:35 GMT  
		Size: 6.5 MB (6467841 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b34f02138e1c100f17eed7cd92e6d16233b9e733a16e66c546eba25fa951406`  
		Last Modified: Thu, 02 Mar 2017 01:22:33 GMT  
		Size: 20.8 KB (20821 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b07f47800e4627547f9d1d69ebcd2fab62fdd4ad180f75d6fba0e5a01a756af3`  
		Last Modified: Thu, 02 Mar 2017 01:22:32 GMT  
		Size: 316.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf82e0567b56c24ea7c96ff89b7ec5bda1389a4f7647480df2c917c4daf64109`  
		Last Modified: Thu, 09 Mar 2017 18:45:05 GMT  
		Size: 318.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8eded3533546f5f1bac00daab95633991ae95af9484af6d696de837f84dd042`  
		Last Modified: Thu, 09 Mar 2017 18:45:20 GMT  
		Size: 57.9 MB (57939420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef9832ff340f694be337508d5212c95951625624501143c75b6bab7c124029d2`  
		Last Modified: Thu, 09 Mar 2017 18:45:05 GMT  
		Size: 2.5 KB (2490 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6725ca41dfa10ca0115966b2987f0f93089885af07de685f56b17ba4166810a6`  
		Last Modified: Thu, 09 Mar 2017 18:45:07 GMT  
		Size: 2.1 KB (2131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f5b9f7bdf59cd5891cf776ec4d3841492483f2f14a9910686a0125aeeb7221e`  
		Last Modified: Thu, 09 Mar 2017 18:45:05 GMT  
		Size: 119.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:10.0`

```console
$ docker pull mariadb@sha256:9753bdd721197d30cf2bcb1be701d2642f05bab57fa72564a16042b657babc2b
```

-	Platforms:
	-	linux; amd64

### `mariadb:10.0` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **117.0 MB (117015870 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e2fa1cc27ede2cccd3bae20fdd903de4af1dd12345116d18ebb60f02f33fae04`
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
# Tue, 28 Feb 2017 05:54:08 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 05:54:08 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Tue, 28 Feb 2017 05:54:10 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 28 Feb 2017 05:54:11 GMT
RUN echo "deb https://repo.percona.com/apt jessie main" > /etc/apt/sources.list.d/percona.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona
# Tue, 28 Feb 2017 05:56:10 GMT
ENV MARIADB_MAJOR=10.0
# Thu, 09 Mar 2017 18:42:41 GMT
ENV MARIADB_VERSION=10.0.30+maria-1~jessie
# Thu, 09 Mar 2017 18:42:42 GMT
RUN echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/debian jessie main" > /etc/apt/sources.list.d/mariadb.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Thu, 09 Mar 2017 18:43:24 GMT
RUN { 		echo mariadb-server-$MARIADB_MAJOR mysql-server/root_password password 'unused'; 		echo mariadb-server-$MARIADB_MAJOR mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		mariadb-server=$MARIADB_VERSION 		percona-xtrabackup 		socat 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Thu, 09 Mar 2017 18:43:25 GMT
RUN sed -Ei 's/^(bind-address|log)/#&/' /etc/mysql/my.cnf 	&& echo 'skip-host-cache\nskip-name-resolve' | awk '{ print } $1 == "[mysqld]" && c == 0 { c = 1; system("cat") }' /etc/mysql/my.cnf > /tmp/my.cnf 	&& mv /tmp/my.cnf /etc/mysql/my.cnf
# Thu, 09 Mar 2017 18:43:26 GMT
VOLUME [/var/lib/mysql]
# Thu, 09 Mar 2017 18:43:27 GMT
COPY file:4bddc4758e22941cff70200b3c2b9944da22d0dd3b359657e1d240679abc379b in /usr/local/bin/ 
# Thu, 09 Mar 2017 18:43:28 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 09 Mar 2017 18:43:28 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 09 Mar 2017 18:43:29 GMT
EXPOSE 3306/tcp
# Thu, 09 Mar 2017 18:43:30 GMT
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
	-	`sha256:b73d942a76fdf4c51b05bc96bf5db5eeb27db4b24c7e4ba84bdb35c544624959`  
		Last Modified: Thu, 02 Mar 2017 01:22:35 GMT  
		Size: 6.5 MB (6467841 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b34f02138e1c100f17eed7cd92e6d16233b9e733a16e66c546eba25fa951406`  
		Last Modified: Thu, 02 Mar 2017 01:22:33 GMT  
		Size: 20.8 KB (20821 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b07f47800e4627547f9d1d69ebcd2fab62fdd4ad180f75d6fba0e5a01a756af3`  
		Last Modified: Thu, 02 Mar 2017 01:22:32 GMT  
		Size: 316.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf82e0567b56c24ea7c96ff89b7ec5bda1389a4f7647480df2c917c4daf64109`  
		Last Modified: Thu, 09 Mar 2017 18:45:05 GMT  
		Size: 318.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8eded3533546f5f1bac00daab95633991ae95af9484af6d696de837f84dd042`  
		Last Modified: Thu, 09 Mar 2017 18:45:20 GMT  
		Size: 57.9 MB (57939420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef9832ff340f694be337508d5212c95951625624501143c75b6bab7c124029d2`  
		Last Modified: Thu, 09 Mar 2017 18:45:05 GMT  
		Size: 2.5 KB (2490 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6725ca41dfa10ca0115966b2987f0f93089885af07de685f56b17ba4166810a6`  
		Last Modified: Thu, 09 Mar 2017 18:45:07 GMT  
		Size: 2.1 KB (2131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f5b9f7bdf59cd5891cf776ec4d3841492483f2f14a9910686a0125aeeb7221e`  
		Last Modified: Thu, 09 Mar 2017 18:45:05 GMT  
		Size: 119.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:5.5.54`

```console
$ docker pull mariadb@sha256:f935c67057ae2ee968cca9dcb6fedbaa0596c01d8c7b64bbf2ca5ba6514821a9
```

-	Platforms:
	-	linux; amd64

### `mariadb:5.5.54` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **96.6 MB (96618887 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:348946d94fd9bb3cef90c0fa3fcb32eb8e27f64811b2b0fa077c97c0a1d3ef25`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 27 Feb 2017 20:39:24 GMT
ADD file:ddbcd17149470ca923569d3112a7955f842a00bf8eee92781c6eb13af64b5b82 in / 
# Mon, 27 Feb 2017 20:39:25 GMT
CMD ["/bin/bash"]
# Tue, 28 Feb 2017 05:58:07 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Tue, 28 Feb 2017 05:58:08 GMT
ENV GOSU_VERSION=1.7
# Tue, 28 Feb 2017 05:58:53 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 28 Feb 2017 05:58:54 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 28 Feb 2017 05:59:20 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 05:59:21 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Tue, 28 Feb 2017 05:59:23 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 28 Feb 2017 05:59:24 GMT
RUN echo "deb https://repo.percona.com/apt wheezy main" > /etc/apt/sources.list.d/percona.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona
# Tue, 28 Feb 2017 05:59:24 GMT
ENV MARIADB_MAJOR=5.5
# Tue, 28 Feb 2017 05:59:24 GMT
ENV MARIADB_VERSION=5.5.54+maria-1~wheezy
# Tue, 28 Feb 2017 05:59:37 GMT
RUN echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/debian wheezy main" > /etc/apt/sources.list.d/mariadb.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Tue, 28 Feb 2017 06:00:07 GMT
RUN { 		echo mariadb-server-$MARIADB_MAJOR mysql-server/root_password password 'unused'; 		echo mariadb-server-$MARIADB_MAJOR mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		mariadb-server=$MARIADB_VERSION 		percona-xtrabackup 		socat 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Tue, 28 Feb 2017 06:00:08 GMT
RUN sed -Ei 's/^(bind-address|log)/#&/' /etc/mysql/my.cnf 	&& echo 'skip-host-cache\nskip-name-resolve' | awk '{ print } $1 == "[mysqld]" && c == 0 { c = 1; system("cat") }' /etc/mysql/my.cnf > /tmp/my.cnf 	&& mv /tmp/my.cnf /etc/mysql/my.cnf
# Tue, 28 Feb 2017 06:00:08 GMT
VOLUME [/var/lib/mysql]
# Tue, 28 Feb 2017 06:00:09 GMT
COPY file:4bddc4758e22941cff70200b3c2b9944da22d0dd3b359657e1d240679abc379b in /usr/local/bin/ 
# Tue, 28 Feb 2017 06:00:10 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 28 Feb 2017 06:00:11 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 28 Feb 2017 06:00:11 GMT
EXPOSE 3306/tcp
# Tue, 28 Feb 2017 06:00:12 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:c3e97b7a4c20461eb05807e795f449cc8826084be5e3c4766fa9cc49b4df3551`  
		Last Modified: Mon, 27 Feb 2017 20:50:15 GMT  
		Size: 37.3 MB (37284709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cdb51855e71516b11b43a5b6f90f1fd7da4a261a8163b0bd3409321c34b9f81a`  
		Last Modified: Thu, 02 Mar 2017 01:25:14 GMT  
		Size: 1.7 KB (1695 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:731d7195efb28a56ac595ec4f0706f7ece9ad7f376c7271664aa80f26db3e87a`  
		Last Modified: Thu, 02 Mar 2017 01:25:14 GMT  
		Size: 1.2 MB (1244744 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e69296ec02f66bee4c54d41ebc864049ad41b7c8821e6d9d7ed9c82271571ae`  
		Last Modified: Thu, 02 Mar 2017 01:25:11 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c94d5ff3e35e0f205a86e983d3a60cc33aa6822a785805f3f2b7971f12db3aa4`  
		Last Modified: Thu, 02 Mar 2017 01:25:13 GMT  
		Size: 5.9 MB (5884843 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc3b508b5a25e00c07630be352f4a82b0384f43bd92a77a41d5df25ecb604f64`  
		Last Modified: Thu, 02 Mar 2017 01:25:11 GMT  
		Size: 20.8 KB (20800 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87d428da80fc9b901875e5ef8048d1fc8dbd0dd955f91dcda6d2f4203fbe916a`  
		Last Modified: Thu, 02 Mar 2017 01:25:12 GMT  
		Size: 318.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c772261c2bb50f29637f4d625fc8dda7acdde54471c8483e08a7b64fc76e2662`  
		Last Modified: Thu, 02 Mar 2017 01:25:08 GMT  
		Size: 319.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:034ca0929fcf624bce9205e5046f0b852db841e4522fa5f1e2e492b0953b1c4b`  
		Last Modified: Thu, 02 Mar 2017 01:25:26 GMT  
		Size: 52.2 MB (52176603 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c46bde528cdf263de14c1f7c82914ef44f25f6e58d2695da6cca01260d6fc561`  
		Last Modified: Thu, 02 Mar 2017 01:25:08 GMT  
		Size: 2.5 KB (2489 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df587d1dcae624c76f9ddcb89e886a03056ff9c384889965f69a97ebd72669d2`  
		Last Modified: Thu, 02 Mar 2017 01:25:08 GMT  
		Size: 2.1 KB (2133 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d96967468a4e931fa184a7b5c7ad3b94aad6b2d60e478c0c3f6638f55565c0d2`  
		Last Modified: Thu, 02 Mar 2017 01:25:09 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:5.5`

```console
$ docker pull mariadb@sha256:f935c67057ae2ee968cca9dcb6fedbaa0596c01d8c7b64bbf2ca5ba6514821a9
```

-	Platforms:
	-	linux; amd64

### `mariadb:5.5` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **96.6 MB (96618887 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:348946d94fd9bb3cef90c0fa3fcb32eb8e27f64811b2b0fa077c97c0a1d3ef25`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 27 Feb 2017 20:39:24 GMT
ADD file:ddbcd17149470ca923569d3112a7955f842a00bf8eee92781c6eb13af64b5b82 in / 
# Mon, 27 Feb 2017 20:39:25 GMT
CMD ["/bin/bash"]
# Tue, 28 Feb 2017 05:58:07 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Tue, 28 Feb 2017 05:58:08 GMT
ENV GOSU_VERSION=1.7
# Tue, 28 Feb 2017 05:58:53 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 28 Feb 2017 05:58:54 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 28 Feb 2017 05:59:20 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 05:59:21 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Tue, 28 Feb 2017 05:59:23 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 28 Feb 2017 05:59:24 GMT
RUN echo "deb https://repo.percona.com/apt wheezy main" > /etc/apt/sources.list.d/percona.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona
# Tue, 28 Feb 2017 05:59:24 GMT
ENV MARIADB_MAJOR=5.5
# Tue, 28 Feb 2017 05:59:24 GMT
ENV MARIADB_VERSION=5.5.54+maria-1~wheezy
# Tue, 28 Feb 2017 05:59:37 GMT
RUN echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/debian wheezy main" > /etc/apt/sources.list.d/mariadb.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Tue, 28 Feb 2017 06:00:07 GMT
RUN { 		echo mariadb-server-$MARIADB_MAJOR mysql-server/root_password password 'unused'; 		echo mariadb-server-$MARIADB_MAJOR mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		mariadb-server=$MARIADB_VERSION 		percona-xtrabackup 		socat 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Tue, 28 Feb 2017 06:00:08 GMT
RUN sed -Ei 's/^(bind-address|log)/#&/' /etc/mysql/my.cnf 	&& echo 'skip-host-cache\nskip-name-resolve' | awk '{ print } $1 == "[mysqld]" && c == 0 { c = 1; system("cat") }' /etc/mysql/my.cnf > /tmp/my.cnf 	&& mv /tmp/my.cnf /etc/mysql/my.cnf
# Tue, 28 Feb 2017 06:00:08 GMT
VOLUME [/var/lib/mysql]
# Tue, 28 Feb 2017 06:00:09 GMT
COPY file:4bddc4758e22941cff70200b3c2b9944da22d0dd3b359657e1d240679abc379b in /usr/local/bin/ 
# Tue, 28 Feb 2017 06:00:10 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 28 Feb 2017 06:00:11 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 28 Feb 2017 06:00:11 GMT
EXPOSE 3306/tcp
# Tue, 28 Feb 2017 06:00:12 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:c3e97b7a4c20461eb05807e795f449cc8826084be5e3c4766fa9cc49b4df3551`  
		Last Modified: Mon, 27 Feb 2017 20:50:15 GMT  
		Size: 37.3 MB (37284709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cdb51855e71516b11b43a5b6f90f1fd7da4a261a8163b0bd3409321c34b9f81a`  
		Last Modified: Thu, 02 Mar 2017 01:25:14 GMT  
		Size: 1.7 KB (1695 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:731d7195efb28a56ac595ec4f0706f7ece9ad7f376c7271664aa80f26db3e87a`  
		Last Modified: Thu, 02 Mar 2017 01:25:14 GMT  
		Size: 1.2 MB (1244744 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e69296ec02f66bee4c54d41ebc864049ad41b7c8821e6d9d7ed9c82271571ae`  
		Last Modified: Thu, 02 Mar 2017 01:25:11 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c94d5ff3e35e0f205a86e983d3a60cc33aa6822a785805f3f2b7971f12db3aa4`  
		Last Modified: Thu, 02 Mar 2017 01:25:13 GMT  
		Size: 5.9 MB (5884843 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc3b508b5a25e00c07630be352f4a82b0384f43bd92a77a41d5df25ecb604f64`  
		Last Modified: Thu, 02 Mar 2017 01:25:11 GMT  
		Size: 20.8 KB (20800 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87d428da80fc9b901875e5ef8048d1fc8dbd0dd955f91dcda6d2f4203fbe916a`  
		Last Modified: Thu, 02 Mar 2017 01:25:12 GMT  
		Size: 318.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c772261c2bb50f29637f4d625fc8dda7acdde54471c8483e08a7b64fc76e2662`  
		Last Modified: Thu, 02 Mar 2017 01:25:08 GMT  
		Size: 319.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:034ca0929fcf624bce9205e5046f0b852db841e4522fa5f1e2e492b0953b1c4b`  
		Last Modified: Thu, 02 Mar 2017 01:25:26 GMT  
		Size: 52.2 MB (52176603 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c46bde528cdf263de14c1f7c82914ef44f25f6e58d2695da6cca01260d6fc561`  
		Last Modified: Thu, 02 Mar 2017 01:25:08 GMT  
		Size: 2.5 KB (2489 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df587d1dcae624c76f9ddcb89e886a03056ff9c384889965f69a97ebd72669d2`  
		Last Modified: Thu, 02 Mar 2017 01:25:08 GMT  
		Size: 2.1 KB (2133 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d96967468a4e931fa184a7b5c7ad3b94aad6b2d60e478c0c3f6638f55565c0d2`  
		Last Modified: Thu, 02 Mar 2017 01:25:09 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:5`

```console
$ docker pull mariadb@sha256:f935c67057ae2ee968cca9dcb6fedbaa0596c01d8c7b64bbf2ca5ba6514821a9
```

-	Platforms:
	-	linux; amd64

### `mariadb:5` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **96.6 MB (96618887 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:348946d94fd9bb3cef90c0fa3fcb32eb8e27f64811b2b0fa077c97c0a1d3ef25`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 27 Feb 2017 20:39:24 GMT
ADD file:ddbcd17149470ca923569d3112a7955f842a00bf8eee92781c6eb13af64b5b82 in / 
# Mon, 27 Feb 2017 20:39:25 GMT
CMD ["/bin/bash"]
# Tue, 28 Feb 2017 05:58:07 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Tue, 28 Feb 2017 05:58:08 GMT
ENV GOSU_VERSION=1.7
# Tue, 28 Feb 2017 05:58:53 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 28 Feb 2017 05:58:54 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 28 Feb 2017 05:59:20 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 05:59:21 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Tue, 28 Feb 2017 05:59:23 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 28 Feb 2017 05:59:24 GMT
RUN echo "deb https://repo.percona.com/apt wheezy main" > /etc/apt/sources.list.d/percona.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona
# Tue, 28 Feb 2017 05:59:24 GMT
ENV MARIADB_MAJOR=5.5
# Tue, 28 Feb 2017 05:59:24 GMT
ENV MARIADB_VERSION=5.5.54+maria-1~wheezy
# Tue, 28 Feb 2017 05:59:37 GMT
RUN echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/debian wheezy main" > /etc/apt/sources.list.d/mariadb.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Tue, 28 Feb 2017 06:00:07 GMT
RUN { 		echo mariadb-server-$MARIADB_MAJOR mysql-server/root_password password 'unused'; 		echo mariadb-server-$MARIADB_MAJOR mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		mariadb-server=$MARIADB_VERSION 		percona-xtrabackup 		socat 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Tue, 28 Feb 2017 06:00:08 GMT
RUN sed -Ei 's/^(bind-address|log)/#&/' /etc/mysql/my.cnf 	&& echo 'skip-host-cache\nskip-name-resolve' | awk '{ print } $1 == "[mysqld]" && c == 0 { c = 1; system("cat") }' /etc/mysql/my.cnf > /tmp/my.cnf 	&& mv /tmp/my.cnf /etc/mysql/my.cnf
# Tue, 28 Feb 2017 06:00:08 GMT
VOLUME [/var/lib/mysql]
# Tue, 28 Feb 2017 06:00:09 GMT
COPY file:4bddc4758e22941cff70200b3c2b9944da22d0dd3b359657e1d240679abc379b in /usr/local/bin/ 
# Tue, 28 Feb 2017 06:00:10 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 28 Feb 2017 06:00:11 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 28 Feb 2017 06:00:11 GMT
EXPOSE 3306/tcp
# Tue, 28 Feb 2017 06:00:12 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:c3e97b7a4c20461eb05807e795f449cc8826084be5e3c4766fa9cc49b4df3551`  
		Last Modified: Mon, 27 Feb 2017 20:50:15 GMT  
		Size: 37.3 MB (37284709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cdb51855e71516b11b43a5b6f90f1fd7da4a261a8163b0bd3409321c34b9f81a`  
		Last Modified: Thu, 02 Mar 2017 01:25:14 GMT  
		Size: 1.7 KB (1695 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:731d7195efb28a56ac595ec4f0706f7ece9ad7f376c7271664aa80f26db3e87a`  
		Last Modified: Thu, 02 Mar 2017 01:25:14 GMT  
		Size: 1.2 MB (1244744 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e69296ec02f66bee4c54d41ebc864049ad41b7c8821e6d9d7ed9c82271571ae`  
		Last Modified: Thu, 02 Mar 2017 01:25:11 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c94d5ff3e35e0f205a86e983d3a60cc33aa6822a785805f3f2b7971f12db3aa4`  
		Last Modified: Thu, 02 Mar 2017 01:25:13 GMT  
		Size: 5.9 MB (5884843 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc3b508b5a25e00c07630be352f4a82b0384f43bd92a77a41d5df25ecb604f64`  
		Last Modified: Thu, 02 Mar 2017 01:25:11 GMT  
		Size: 20.8 KB (20800 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87d428da80fc9b901875e5ef8048d1fc8dbd0dd955f91dcda6d2f4203fbe916a`  
		Last Modified: Thu, 02 Mar 2017 01:25:12 GMT  
		Size: 318.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c772261c2bb50f29637f4d625fc8dda7acdde54471c8483e08a7b64fc76e2662`  
		Last Modified: Thu, 02 Mar 2017 01:25:08 GMT  
		Size: 319.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:034ca0929fcf624bce9205e5046f0b852db841e4522fa5f1e2e492b0953b1c4b`  
		Last Modified: Thu, 02 Mar 2017 01:25:26 GMT  
		Size: 52.2 MB (52176603 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c46bde528cdf263de14c1f7c82914ef44f25f6e58d2695da6cca01260d6fc561`  
		Last Modified: Thu, 02 Mar 2017 01:25:08 GMT  
		Size: 2.5 KB (2489 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df587d1dcae624c76f9ddcb89e886a03056ff9c384889965f69a97ebd72669d2`  
		Last Modified: Thu, 02 Mar 2017 01:25:08 GMT  
		Size: 2.1 KB (2133 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d96967468a4e931fa184a7b5c7ad3b94aad6b2d60e478c0c3f6638f55565c0d2`  
		Last Modified: Thu, 02 Mar 2017 01:25:09 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
